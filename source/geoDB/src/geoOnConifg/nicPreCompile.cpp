//一些实时历史库的公共配置信息
//所有的配置在系统内部只是一个uint型的ID
//应用程序，如HMI，报表，历史库等具体的应用解析需要利用此库来完成
//因为要被多种应用语言加载，此库需要多个语言版本，C++版，java版，QT版，C#版
//这个在run_const_config.xml文件中，而此文件又由组态软件来生成

//1. 单位  256种
//2. 报警级别  256
//3. 工艺系统   256
//4. IO数据类型  8
//5. 值类型         8
//6. 控制器编号  256
//7. 卡件类型      64
//8. 工艺设备类型   256
//9. 实时数据库节点 8
//10.安全区域
//11.声音序号
//12.控制器类型
//13.IO卡件类型
//14.工艺域

