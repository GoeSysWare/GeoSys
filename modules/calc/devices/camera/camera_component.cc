/******************************************************************************
 * Copyright 2017 The Apollo Authors. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *****************************************************************************/

#include "modules/calc/devices/camera/camera_component.h"
#include "opencv2/opencv.hpp"

bool CameraComponent::Init(std::string config) {
  camera_config_ = std::make_shared<Config>();

  if (!apollo::cyber::common::GetProtoFromFile(config,
                                               camera_config_.get())) {
    return false;
  }
  AINFO << "UsbCam config: " << camera_config_->DebugString();

  camera_device_.reset(new UsbCam());
  camera_device_->init(camera_config_);
  raw_image_.reset(new CameraImage);

  raw_image_->width = camera_config_->width();
  raw_image_->height = camera_config_->height();
  raw_image_->bytes_per_pixel = camera_config_->bytes_per_pixel();

  device_wait_ = camera_config_->device_wait_ms();
  spin_rate_ = static_cast<uint32_t>((1.0 / camera_config_->spin_rate()) * 1e6);

  if (camera_config_->output_type() == YUYV) {
    raw_image_->image_size = raw_image_->width * raw_image_->height * 2;
  } else if (camera_config_->output_type() == RGB) {
    raw_image_->image_size = raw_image_->width * raw_image_->height * 3;
  }
  if (raw_image_->image_size > MAX_IMAGE_SIZE) {
    AERROR << "image size is too big ,must less than " << MAX_IMAGE_SIZE
           << " bytes.";
    return false;
  }
  raw_image_->is_new = 0;
  // free memory in this struct desturctor
  raw_image_->image =
      reinterpret_cast<char*>(calloc(raw_image_->image_size, sizeof(char)));
  if (raw_image_->image == nullptr) {
    AERROR << "system calloc memory error, size:" << raw_image_->image_size;
    return false;
  }

  for (int i = 0; i < buffer_size_; ++i) {
    auto cam_image = std::make_shared<CameraImage>();

    cam_image->width = raw_image_->width;
    cam_image->height = raw_image_->height;
    cam_image->bytes_per_pixel = raw_image_->bytes_per_pixel;
    cam_image->image_size = raw_image_->image_size;
    cam_image->image =
      reinterpret_cast<char*>(calloc(raw_image_->image_size, sizeof(char)));

    raw_image_buffer_.push_back(cam_image);
  }

  async_result_ = apollo::cyber::Async(&CameraComponent::run, this);
  return true;
}

void CameraComponent::run() {
  running_.exchange(true);
  while (!apollo::cyber::IsShutdown()) {
    if (!camera_device_->wait_for_device()) {
      // sleep for next check
      apollo::cyber::SleepFor(std::chrono::milliseconds(device_wait_));
      continue;
    }

    if (!camera_device_->poll(raw_image_)) {
      AERROR << "camera device poll failed";
      continue;
    }
      AERROR << "camera device poll succ spin_rate_" << spin_rate_;

    if (index_ >= buffer_size_) {
      index_ = 0;
    }
    auto cam_image = raw_image_buffer_.at(index_++);
    memcpy(cam_image->image, raw_image_->image, raw_image_->image_size);
    // raw_image_->image 里是RGB
    // cv::Mat 是BGR
    cv::Mat v(raw_image_->height,raw_image_->width,CV_8UC3,raw_image_->image);
    cv::imwrite("/home/shuimujie/Works/GeoSys/go.jpg",v);

    apollo::cyber::SleepFor(std::chrono::microseconds(spin_rate_));
  }
}

CameraComponent::~CameraComponent() {
  if (running_.load()) {
    running_.exchange(false);
    async_result_.wait();
  }
}

