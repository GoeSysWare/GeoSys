infos {
  edit_type: SET
  proj {
    proj_name: "rotbot-engine-project"
    proj_uuid: "{2b18e010-babb-4466-bdcf-a449b792943c}"
  }
}
infos {
  cmd_id: 1
  element: EV
  edit_type: ADD
  ev {
    ev_id: 1
    ev_name: "VAR_D_1"
    ev_type: 7
    ev_desc: "Desc"
    init_val {
      v {
        t: T_FLOAT64
        d: 0
      }
      tm: 1681390059182250282
    }
  }
}
infos {
  cmd_id: 2
  element: EV
  edit_type: ADD
  ev {
    ev_id: 2
    ev_name: "VAR_D_2"
    ev_type: 7
    ev_desc: "Desc"
    init_val {
      v {
        t: T_FLOAT64
        d: 0
      }
      tm: 1681390217274104541
    }
  }
}
infos {
  cmd_id: 3
  element: EV
  edit_type: ADD
  ev {
    ev_id: 3
    ev_name: "SPEED"
    ev_type: 3
    ev_desc: "\345\275\223\345\211\215\350\275\246\351\200\237"
    init_val {
      v {
        t: T_UINT32
        ui: 0
      }
      tm: 1681391756514041211
    }
  }
}
infos {
  cmd_id: 4
  element: EV
  edit_type: ADD
  ev {
    ev_id: 4
    ev_name: "UI_1"
    ev_type: 3
    ev_desc: "ceshi"
    init_val {
      v {
        t: T_UINT32
        ui: 0
      }
      tm: 1681391940976818792
    }
  }
}
infos {
  cmd_id: 5
  element: EV
  edit_type: ADD
  ev {
    ev_id: 5
    ev_name: "Bool_1"
    ev_type: 1
    ev_desc: "ceshi"
    init_val {
      v {
        t: T_BOOL
        b: false
      }
      tm: 1681392151285941025
    }
  }
}
infos {
  cmd_id: 6
  element: EV
  edit_type: ADD
  ev {
    ev_id: 6
    ev_name: "Bool_2"
    ev_type: 1
    ev_desc: "ceshi"
    init_val {
      v {
        t: T_BOOL
        b: true
      }
      tm: 1681392250886556508
    }
  }
}
infos {
  cmd_id: 7
  element: EV
  edit_type: ADD
  ev {
    ev_id: 7
    ev_name: "FSM_State"
    ev_type: 2
    ev_desc: "Desc"
    init_val {
      v {
        t: T_INT32
        i: 0
      }
      tm: 1681392704066944665
    }
  }
}
infos {
  cmd_id: 8
  element: EV
  edit_type: ADD
  ev {
    ev_id: 8
    ev_name: "AUTO"
    ev_type: 1
    ev_desc: "Desc"
    init_val {
      v {
        t: T_BOOL
        b: false
      }
      tm: 1681438468239537302
    }
  }
}
infos {
  cmd_id: 9
  element: EV
  edit_type: ADD
  ev {
    ev_id: 9
    ev_name: "T_INT_1"
    ev_type: 2
    ev_desc: "Desc"
    init_val {
      v {
        t: T_INT32
        i: 0
      }
      tm: 1681461667230464344
    }
  }
}
infos {
  cmd_id: 10
  element: EV
  edit_type: ADD
  ev {
    ev_id: 10
    ev_name: "T_INT_2"
    ev_type: 2
    ev_desc: "Desc"
    init_val {
      v {
        t: T_INT32
        i: 0
      }
      tm: 1681461921877235658
    }
  }
}
infos {
  cmd_id: 11
  element: MOD
  edit_type: ADD
  mod {
    mod_id: 11
    mod_name: "Module 1"
  }
}
infos {
  cmd_id: 12
  element: TASK
  edit_type: ADD
  task {
    mod_id: 11
    task_id: 12
    task_name: "BASE"
    interval: 1000
  }
}
infos {
  cmd_id: 13
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 12
    fb_id: 13
    flib_name: "Arithmetic"
    fc_name: "ADD_INT"
    fb_name: "\345\212\240\346\263\225"
  }
  pos {
    x: 117
    y: 28
  }
}
infos {
  cmd_id: 14
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 12
    fb_id: 14
    flib_name: "System"
    fc_name: "SYSSTATE"
    fb_name: "\347\263\273\347\273\237\347\233\221\346\265\213"
  }
  pos {
    x: 15
    y: 3
  }
}
infos {
  cmd_id: 15
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 12
    fb_id: 15
    flib_name: "Devices"
    fc_name: "SIM_READ"
    fb_name: "\346\250\241\346\213\237\344\277\241\345\217\267"
  }
  pos {
    x: 21
    y: 28
  }
}
infos {
  cmd_id: 16
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 12
    fb_id: 16
    flib_name: "Converter"
    fc_name: "D2I"
    fb_name: "Double\347\261\273\345\236\213\350\275\254\346\215\242Int"
  }
  pos {
    x: 63
    y: 28
  }
}
infos {
  cmd_id: 17
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 12
    fb_id: 17
    flib_name: "Arithmetic"
    fc_name: "DIV_INT"
    fb_name: "\351\231\244\346\263\225"
  }
  pos {
    x: 174
    y: 28
  }
}
infos {
  cmd_id: 18
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 12
    fb_id: 18
    flib_name: "Arithmetic"
    fc_name: "MUL_INT"
    fb_name: "\344\271\230\346\263\225"
  }
  pos {
    x: 174
    y: 42
  }
}
infos {
  cmd_id: 19
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 12
    fb_id: 19
    flib_name: "Arithmetic"
    fc_name: "MUL_DOUBLE"
    fb_name: "Double \344\271\230\346\263\225"
  }
  pos {
    x: 72
    y: 64
  }
}
infos {
  cmd_id: 20
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 12
    fb_id: 20
    flib_name: "Arithmetic"
    fc_name: "SUB_DOUBLE"
    fb_name: "Ddouble \345\207\217\346\263\225"
  }
  pos {
    x: 125
    y: 64
  }
}
infos {
  cmd_id: 21
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 12
    fb_id: 21
    flib_name: "Converter"
    fc_name: "D2STR"
    fb_name: "DOUBLE \350\275\254\346\215\242STRING"
  }
  pos {
    x: 126
    y: 84
  }
}
infos {
  cmd_id: 22
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 12
    fb_id: 22
    flib_name: "Converter"
    fc_name: "D2UI"
    fb_name: "\350\275\254\346\215\242\346\272\242\345\207\272"
  }
  pos {
    x: 72
    y: 83
  }
}
infos {
  cmd_id: 23
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 12
    fb_id: 23
    flib_name: "Converter"
    fc_name: "D2UI"
  }
  pos {
    x: 64
    y: 42
  }
}
infos {
  cmd_id: 24
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 12
    fb_id: 24
    flib_name: "Comparison"
    fc_name: "GE_UINT"
    fb_name: "Uint \345\244\247\344\272\216\346\257\224\350\276\203"
  }
  pos {
    x: 72
    y: 106
  }
}
infos {
  cmd_id: 25
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 12
    fb_id: 25
    flib_name: "Comparison"
    fc_name: "NE_UINT"
    fb_name: "Uint \344\270\215\347\255\211\344\272\216\346\257\224\350\276\203"
  }
  pos {
    x: 72
    y: 123
  }
}
infos {
  cmd_id: 26
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 12
    fb_id: 26
    flib_name: "Logic"
    fc_name: "AND4"
    fb_name: "\344\270\216"
  }
  pos {
    x: 124
    y: 106
  }
}
infos {
  cmd_id: 27
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 12
    fb_id: 27
    flib_name: "Logic"
    fc_name: "OR"
    fb_name: "\346\210\226"
  }
  pos {
    x: 124
    y: 129
  }
}
infos {
  cmd_id: 28
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 12
    fb_id: 28
    flib_name: "Logic"
    fc_name: "NOT"
    fb_name: "\351\235\236"
  }
  pos {
    x: 125
    y: 148
  }
}
infos {
  cmd_id: 29
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 12
    fb_id: 29
    flib_name: "Task"
    fc_name: "SLEEP"
  }
  pos {
    x: 9
    y: 62
  }
}
infos {
  cmd_id: 30
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 12
    lk_id: 30
    src_fb_id: 15
    src_pin_index: 1
    target_fb_id: 16
    target_pin_index: 1
  }
  pos {
    x: 41
    y: 35
  }
  pos {
    x: 63
    y: 35
  }
}
infos {
  cmd_id: 31
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 12
    lk_id: 31
    src_fb_id: 16
    src_pin_index: 1
    target_fb_id: 13
    target_pin_index: 1
  }
  pos {
    x: 81
    y: 35
  }
  pos {
    x: 117
    y: 35
  }
}
infos {
  cmd_id: 32
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 12
    lk_id: 32
    src_fb_id: 13
    src_pin_index: 1
    target_fb_id: 17
    target_pin_index: 1
  }
  pos {
    x: 136
    y: 35
  }
  pos {
    x: 174
    y: 35
  }
}
infos {
  cmd_id: 33
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 12
    lk_id: 33
    src_fb_id: 13
    src_pin_index: 1
    target_fb_id: 18
    target_pin_index: 1
  }
  pos {
    x: 133
    y: 35
  }
  pos {
    x: 97
    y: 35
  }
  pos {
    x: 97
    y: 49
  }
  pos {
    x: 174
    y: 49
  }
}
infos {
  cmd_id: 34
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 12
    lk_id: 34
    src_fb_id: 19
    src_pin_index: 1
    target_fb_id: 20
    target_pin_index: 1
  }
  pos {
    x: 91
    y: 71
  }
  pos {
    x: 125
    y: 71
  }
}
infos {
  cmd_id: 35
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 12
    lk_id: 35
    src_fb_id: 19
    src_pin_index: 1
    target_fb_id: 21
    target_pin_index: 1
  }
  pos {
    x: 91
    y: 71
  }
  pos {
    x: 108
    y: 71
  }
  pos {
    x: 108
    y: 91
  }
  pos {
    x: 126
    y: 91
  }
}
infos {
  cmd_id: 36
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 12
    lk_id: 36
    src_fb_id: 15
    src_pin_index: 8
    target_fb_id: 23
    target_pin_index: 1
  }
  pos {
    x: 41
    y: 49
  }
  pos {
    x: 64
    y: 49
  }
}
infos {
  cmd_id: 37
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 12
    lk_id: 37
    src_fb_id: 24
    src_pin_index: 1
    target_fb_id: 26
    target_pin_index: 1
  }
  pos {
    x: 91
    y: 113
  }
  pos {
    x: 124
    y: 113
  }
}
infos {
  cmd_id: 38
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 12
    lk_id: 38
    src_fb_id: 25
    src_pin_index: 1
    target_fb_id: 26
    target_pin_index: 2
  }
  pos {
    x: 91
    y: 130
  }
  pos {
    x: 107
    y: 130
  }
  pos {
    x: 107
    y: 115
  }
  pos {
    x: 124
    y: 115
  }
}
infos {
  cmd_id: 39
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 12
    lk_id: 39
    src_fb_id: 25
    src_pin_index: 1
    target_fb_id: 27
    target_pin_index: 1
  }
  pos {
    x: 91
    y: 130
  }
  pos {
    x: 107
    y: 130
  }
  pos {
    x: 107
    y: 136
  }
  pos {
    x: 124
    y: 136
  }
}
infos {
  cmd_id: 40
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 12
    lk_id: 40
    src_fb_id: 25
    src_pin_index: 1
    target_fb_id: 28
    target_pin_index: 1
  }
  pos {
    x: 91
    y: 130
  }
  pos {
    x: 107
    y: 130
  }
  pos {
    x: 107
    y: 155
  }
  pos {
    x: 125
    y: 155
  }
}
infos {
  cmd_id: 41
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 12
    lk_id: 41
    src_fb_id: 29
    src_pin_index: 1
    target_fb_id: 19
  }
  pos {
    x: 34
    y: 69
  }
  pos {
    x: 72
    y: 69
  }
}
infos {
  cmd_id: 42
  element: VI
  edit_type: ADD
  vi {
    mod_id: 11
    task_id: 12
    fb_id: 19
    pin_index: 1
    ev_id: 1
    vi_id: 42
  }
}
infos {
  cmd_id: 43
  element: VI
  edit_type: ADD
  vi {
    mod_id: 11
    task_id: 12
    fb_id: 24
    pin_index: 1
    ev_id: 4
    vi_id: 43
  }
}
infos {
  cmd_id: 44
  element: VI
  edit_type: ADD
  vi {
    mod_id: 11
    task_id: 12
    fb_id: 25
    pin_index: 1
    ev_id: 4
    vi_id: 44
  }
}
infos {
  cmd_id: 45
  element: VO
  edit_type: ADD
  vo {
    mod_id: 11
    task_id: 12
    fb_id: 15
    pin_index: 5
    ev_id: 1
    vo_id: 45
  }
}
infos {
  cmd_id: 46
  element: VO
  edit_type: ADD
  vo {
    mod_id: 11
    task_id: 12
    fb_id: 20
    pin_index: 1
    ev_id: 2
    vo_id: 46
  }
}
infos {
  cmd_id: 47
  element: VO
  edit_type: ADD
  vo {
    mod_id: 11
    task_id: 12
    fb_id: 23
    pin_index: 1
    ev_id: 4
    vo_id: 47
  }
}
infos {
  cmd_id: 48
  element: VO
  edit_type: ADD
  vo {
    mod_id: 11
    task_id: 12
    fb_id: 26
    pin_index: 1
    ev_id: 5
    vo_id: 48
  }
}
infos {
  cmd_id: 49
  element: VO
  edit_type: ADD
  vo {
    mod_id: 11
    task_id: 12
    fb_id: 28
    pin_index: 1
    ev_id: 6
    vo_id: 49
  }
}
infos {
  cmd_id: 50
  element: TASK
  edit_type: ADD
  task {
    mod_id: 11
    task_id: 50
    task_name: "FSM"
    interval: 1000
  }
}
infos {
  cmd_id: 51
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 50
    fb_id: 51
    flib_name: "Fsm"
    fc_name: "FSM"
    fb_name: "\347\212\266\346\200\201==1"
  }
  pos {
    x: 60
    y: 107
  }
}
infos {
  cmd_id: 52
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 50
    fb_id: 52
    flib_name: "Fsm"
    fc_name: "FSM"
    fb_name: "\347\212\266\346\200\201==2"
  }
  pos {
    x: 128
    y: 105
  }
}
infos {
  cmd_id: 53
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 50
    fb_id: 53
    flib_name: "Fsm"
    fc_name: "FSM"
    fb_name: "\347\212\266\346\200\201==3"
  }
  pos {
    x: 173
    y: 103
  }
}
infos {
  cmd_id: 54
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 50
    fb_id: 54
    flib_name: "Fsm"
    fc_name: "FSM"
    fb_name: "\347\212\266\346\200\201==4"
  }
  pos {
    x: 226
    y: 101
  }
}
infos {
  cmd_id: 55
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 50
    fb_id: 55
    flib_name: "Fsm"
    fc_name: "FSM"
    fb_name: "\347\212\266\346\200\201==1"
  }
  pos {
    x: 273
    y: 99
  }
}
infos {
  cmd_id: 56
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 50
    fb_id: 56
    flib_name: "Devices"
    fc_name: "SIM_READ"
  }
  pos {
    x: 43
    y: 14
  }
}
infos {
  cmd_id: 57
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 50
    fb_id: 57
    flib_name: "Converter"
    fc_name: "D2UI"
  }
  pos {
    x: 86
    y: 20
  }
}
infos {
  cmd_id: 58
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 50
    fb_id: 58
    flib_name: "Comparison"
    fc_name: "EQ_UINT"
    fb_name: "SPEED==0"
  }
  pos {
    x: 16
    y: 107
  }
}
infos {
  cmd_id: 59
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 50
    fb_id: 59
    flib_name: "Comparison"
    fc_name: "LE_UINT"
    fb_name: "SPEED<10"
  }
  pos {
    x: 21
    y: 62
  }
}
infos {
  cmd_id: 60
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 50
    fb_id: 60
    flib_name: "Comparison"
    fc_name: "LE_UINT"
    fb_name: "SPEED<30"
  }
  pos {
    x: 111
    y: 39
  }
}
infos {
  cmd_id: 61
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 50
    fb_id: 61
    flib_name: "Logic"
    fc_name: "AND"
    fb_name: "SPEED>10 && SPEED<30"
  }
  pos {
    x: 140
    y: 61
  }
}
infos {
  cmd_id: 62
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 50
    fb_id: 62
    flib_name: "Fsm"
    fc_name: "FSM"
    fb_name: "\347\212\266\346\200\201==5"
  }
  pos {
    x: 129
    y: 133
  }
}
infos {
  cmd_id: 63
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 50
    fb_id: 63
    flib_name: "Fsm"
    fc_name: "FSM"
    fb_name: "\347\212\266\346\200\201==4"
  }
  pos {
    x: 227
    y: 131
  }
}
infos {
  cmd_id: 64
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 50
    fb_id: 64
    flib_name: "Comparison"
    fc_name: "GT_UINT"
    fb_name: "SPEED>10"
  }
  pos {
    x: 106
    y: 63
  }
}
infos {
  cmd_id: 65
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 50
    fb_id: 65
    flib_name: "Logic"
    fc_name: "AND"
    fb_name: "ATUO==1 && SPEED <10"
  }
  pos {
    x: 54
    y: 62
  }
}
infos {
  cmd_id: 66
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 50
    fb_id: 66
    flib_name: "Logic"
    fc_name: "NOT"
    fb_name: "!(ATUO==1 && SPEED <10)"
  }
  pos {
    x: 91
    y: 82
  }
}
infos {
  cmd_id: 67
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 50
    fb_id: 67
    flib_name: "Arithmetic"
    fc_name: "MOVE_BOOL"
  }
  pos {
    x: 22
    y: 145
  }
}
infos {
  cmd_id: 68
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 50
    fb_id: 68
    flib_name: "Comparison"
    fc_name: "GT_UINT"
    fb_name: "SPEED>40"
  }
  pos {
    x: 192
    y: 75
  }
}
infos {
  cmd_id: 69
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 50
    fb_id: 69
    flib_name: "Comparison"
    fc_name: "GT_UINT"
    fb_name: "SPEED>50"
  }
  pos {
    x: 242
    y: 75
  }
}
infos {
  cmd_id: 70
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 50
    fb_id: 70
    flib_name: "Task"
    fc_name: "EVENT"
  }
  pos {
    x: 86
    y: 192
  }
}
infos {
  cmd_id: 71
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 50
    fb_id: 71
    flib_name: "Task"
    fc_name: "TASK"
    fb_name: "\345\274\202\346\255\245\344\273\273\345\212\2411"
  }
  pos {
    x: 131
    y: 192
  }
}
infos {
  cmd_id: 72
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 50
    fb_id: 72
    flib_name: "Task"
    fc_name: "EVENT"
  }
  pos {
    x: 187
    y: 192
  }
}
infos {
  cmd_id: 73
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 50
    fb_id: 73
    flib_name: "Task"
    fc_name: "TASK"
    fb_name: "\345\274\202\346\255\245\344\273\273\345\212\2412"
  }
  pos {
    x: 242
    y: 192
  }
}
infos {
  cmd_id: 74
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 50
    fb_id: 74
    flib_name: "System"
    fc_name: "SYSSTATE"
  }
  pos {
    x: 12
    y: 187
  }
}
infos {
  cmd_id: 75
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 50
    fb_id: 75
    flib_name: "Counter"
    fc_name: "CTUD_INT"
  }
  pos {
    x: 132
    y: 226
  }
}
infos {
  cmd_id: 76
  element: FB
  edit_type: ADD
  fb {
    mod_id: 11
    task_id: 50
    fb_id: 76
    flib_name: "Counter"
    fc_name: "CTUD_INT"
  }
  pos {
    x: 235
    y: 229
  }
}
infos {
  cmd_id: 77
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 50
    lk_id: 77
    src_fb_id: 51
    src_pin_index: 1
    target_fb_id: 52
    target_pin_index: 2
  }
  pos {
    x: 81
    y: 114
  }
  pos {
    x: 128
    y: 114
  }
}
infos {
  cmd_id: 78
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 50
    lk_id: 78
    src_fb_id: 52
    src_pin_index: 1
    target_fb_id: 53
    target_pin_index: 2
  }
  pos {
    x: 149
    y: 112
  }
  pos {
    x: 173
    y: 112
  }
}
infos {
  cmd_id: 79
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 50
    lk_id: 79
    src_fb_id: 53
    src_pin_index: 1
    target_fb_id: 54
    target_pin_index: 2
  }
  pos {
    x: 194
    y: 110
  }
  pos {
    x: 226
    y: 110
  }
}
infos {
  cmd_id: 80
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 50
    lk_id: 80
    src_fb_id: 54
    src_pin_index: 1
    target_fb_id: 55
    target_pin_index: 2
  }
  pos {
    x: 247
    y: 108
  }
  pos {
    x: 273
    y: 108
  }
}
infos {
  cmd_id: 81
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 50
    lk_id: 81
    src_fb_id: 56
    src_pin_index: 4
    target_fb_id: 57
    target_pin_index: 1
  }
  pos {
    x: 63
    y: 27
  }
  pos {
    x: 86
    y: 27
  }
}
infos {
  cmd_id: 82
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 50
    lk_id: 82
    src_fb_id: 58
    src_pin_index: 1
    target_fb_id: 51
    target_pin_index: 1
  }
  pos {
    x: 35
    y: 114
  }
  pos {
    x: 60
    y: 114
  }
}
infos {
  cmd_id: 83
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 50
    lk_id: 83
    src_fb_id: 60
    src_pin_index: 1
    target_fb_id: 61
    target_pin_index: 1
  }
  pos {
    x: 130
    y: 46
  }
  pos {
    x: 132
    y: 46
  }
  pos {
    x: 132
    y: 68
  }
  pos {
    x: 140
    y: 68
  }
}
infos {
  cmd_id: 84
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 50
    lk_id: 84
    src_fb_id: 61
    src_pin_index: 1
    target_fb_id: 53
    target_pin_index: 1
  }
  pos {
    x: 159
    y: 68
  }
  pos {
    x: 163
    y: 68
  }
  pos {
    x: 163
    y: 110
  }
  pos {
    x: 173
    y: 110
  }
}
infos {
  cmd_id: 85
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 50
    lk_id: 85
    src_fb_id: 51
    src_pin_index: 1
    target_fb_id: 62
    target_pin_index: 2
  }
  pos {
    x: 81
    y: 114
  }
  pos {
    x: 89
    y: 114
  }
  pos {
    x: 89
    y: 142
  }
  pos {
    x: 129
    y: 142
  }
}
infos {
  cmd_id: 86
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 50
    lk_id: 86
    src_fb_id: 62
    src_pin_index: 1
    target_fb_id: 63
    target_pin_index: 2
  }
  pos {
    x: 150
    y: 140
  }
  pos {
    x: 227
    y: 140
  }
}
infos {
  cmd_id: 87
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 50
    lk_id: 87
    src_fb_id: 64
    src_pin_index: 1
    target_fb_id: 61
    target_pin_index: 2
  }
  pos {
    x: 125
    y: 70
  }
  pos {
    x: 140
    y: 70
  }
}
infos {
  cmd_id: 88
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 50
    lk_id: 88
    src_fb_id: 59
    src_pin_index: 1
    target_fb_id: 65
    target_pin_index: 1
  }
  pos {
    x: 40
    y: 69
  }
  pos {
    x: 54
    y: 69
  }
}
infos {
  cmd_id: 89
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 50
    lk_id: 89
    src_fb_id: 65
    src_pin_index: 1
    target_fb_id: 62
    target_pin_index: 1
  }
  pos {
    x: 73
    y: 69
  }
  pos {
    x: 86
    y: 69
  }
  pos {
    x: 86
    y: 140
  }
  pos {
    x: 129
    y: 140
  }
}
infos {
  cmd_id: 90
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 50
    lk_id: 90
    src_fb_id: 65
    src_pin_index: 1
    target_fb_id: 66
    target_pin_index: 1
  }
  pos {
    x: 73
    y: 69
  }
  pos {
    x: 86
    y: 69
  }
  pos {
    x: 86
    y: 89
  }
  pos {
    x: 91
    y: 89
  }
}
infos {
  cmd_id: 91
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 50
    lk_id: 91
    src_fb_id: 66
    src_pin_index: 1
    target_fb_id: 52
    target_pin_index: 1
  }
  pos {
    x: 109
    y: 89
  }
  pos {
    x: 111
    y: 89
  }
  pos {
    x: 111
    y: 112
  }
  pos {
    x: 128
    y: 112
  }
}
infos {
  cmd_id: 92
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 50
    lk_id: 92
    src_fb_id: 61
    src_pin_index: 1
    target_fb_id: 63
    target_pin_index: 1
  }
  pos {
    x: 159
    y: 68
  }
  pos {
    x: 163
    y: 68
  }
  pos {
    x: 163
    y: 138
  }
  pos {
    x: 227
    y: 138
  }
}
infos {
  cmd_id: 93
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 50
    lk_id: 93
    src_fb_id: 68
    src_pin_index: 1
    target_fb_id: 54
    target_pin_index: 1
  }
  pos {
    x: 211
    y: 82
  }
  pos {
    x: 218
    y: 82
  }
  pos {
    x: 218
    y: 108
  }
  pos {
    x: 226
    y: 108
  }
}
infos {
  cmd_id: 94
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 50
    lk_id: 94
    src_fb_id: 69
    src_pin_index: 1
    target_fb_id: 55
    target_pin_index: 1
  }
  pos {
    x: 261
    y: 82
  }
  pos {
    x: 267
    y: 82
  }
  pos {
    x: 267
    y: 106
  }
  pos {
    x: 273
    y: 106
  }
}
infos {
  cmd_id: 95
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 50
    lk_id: 95
    src_fb_id: 51
    src_pin_index: 2
    target_fb_id: 70
    target_pin_index: 1
  }
  pos {
    x: 81
    y: 116
  }
  pos {
    x: 81
    y: 199
  }
  pos {
    x: 86
    y: 199
  }
}
infos {
  cmd_id: 96
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 50
    lk_id: 96
    src_fb_id: 70
    src_pin_index: 1
    target_fb_id: 71
    target_pin_index: 1
  }
  pos {
    x: 108
    y: 199
  }
  pos {
    x: 131
    y: 199
  }
}
infos {
  cmd_id: 97
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 50
    lk_id: 97
    src_fb_id: 71
    src_pin_index: 1
    target_fb_id: 72
    target_pin_index: 1
  }
  pos {
    x: 158
    y: 199
  }
  pos {
    x: 187
    y: 199
  }
}
infos {
  cmd_id: 98
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 50
    lk_id: 98
    src_fb_id: 72
    src_pin_index: 1
    target_fb_id: 73
    target_pin_index: 1
  }
  pos {
    x: 209
    y: 199
  }
  pos {
    x: 242
    y: 199
  }
}
infos {
  cmd_id: 99
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 50
    lk_id: 99
    src_fb_id: 70
    src_pin_index: 1
    target_fb_id: 75
    target_pin_index: 1
  }
  pos {
    x: 108
    y: 199
  }
  pos {
    x: 111
    y: 199
  }
  pos {
    x: 111
    y: 233
  }
  pos {
    x: 132
    y: 233
  }
}
infos {
  cmd_id: 100
  element: LK
  edit_type: ADD
  lk {
    mod_id: 11
    task_id: 50
    lk_id: 100
    src_fb_id: 72
    src_pin_index: 1
    target_fb_id: 76
    target_pin_index: 1
  }
  pos {
    x: 209
    y: 199
  }
  pos {
    x: 222
    y: 199
  }
  pos {
    x: 222
    y: 236
  }
  pos {
    x: 235
    y: 236
  }
}
infos {
  cmd_id: 101
  element: VI
  edit_type: ADD
  vi {
    mod_id: 11
    task_id: 50
    fb_id: 58
    pin_index: 2
    ev_id: 3
    vi_id: 101
  }
}
infos {
  cmd_id: 102
  element: VI
  edit_type: ADD
  vi {
    mod_id: 11
    task_id: 50
    fb_id: 59
    pin_index: 1
    ev_id: 3
    vi_id: 102
  }
}
infos {
  cmd_id: 103
  element: VI
  edit_type: ADD
  vi {
    mod_id: 11
    task_id: 50
    fb_id: 51
    pin_index: 3
    ev_id: 7
    vi_id: 103
  }
}
infos {
  cmd_id: 104
  element: VI
  edit_type: ADD
  vi {
    mod_id: 11
    task_id: 50
    fb_id: 52
    pin_index: 3
    ev_id: 7
    vi_id: 104
  }
}
infos {
  cmd_id: 105
  element: VI
  edit_type: ADD
  vi {
    mod_id: 11
    task_id: 50
    fb_id: 53
    pin_index: 3
    ev_id: 7
    vi_id: 105
  }
}
infos {
  cmd_id: 106
  element: VI
  edit_type: ADD
  vi {
    mod_id: 11
    task_id: 50
    fb_id: 54
    pin_index: 3
    ev_id: 7
    vi_id: 106
  }
}
infos {
  cmd_id: 107
  element: VI
  edit_type: ADD
  vi {
    mod_id: 11
    task_id: 50
    fb_id: 55
    pin_index: 3
    ev_id: 7
    vi_id: 107
  }
}
infos {
  cmd_id: 108
  element: VI
  edit_type: ADD
  vi {
    mod_id: 11
    task_id: 50
    fb_id: 60
    pin_index: 1
    ev_id: 3
    vi_id: 108
  }
}
infos {
  cmd_id: 109
  element: VI
  edit_type: ADD
  vi {
    mod_id: 11
    task_id: 50
    fb_id: 64
    pin_index: 1
    ev_id: 3
    vi_id: 109
  }
}
infos {
  cmd_id: 110
  element: VI
  edit_type: ADD
  vi {
    mod_id: 11
    task_id: 50
    fb_id: 68
    pin_index: 1
    ev_id: 3
    vi_id: 110
  }
}
infos {
  cmd_id: 111
  element: VI
  edit_type: ADD
  vi {
    mod_id: 11
    task_id: 50
    fb_id: 69
    pin_index: 1
    ev_id: 3
    vi_id: 111
  }
}
infos {
  cmd_id: 112
  element: VI
  edit_type: ADD
  vi {
    mod_id: 11
    task_id: 50
    fb_id: 62
    pin_index: 3
    ev_id: 7
    vi_id: 112
  }
}
infos {
  cmd_id: 113
  element: VI
  edit_type: ADD
  vi {
    mod_id: 11
    task_id: 50
    fb_id: 63
    pin_index: 3
    ev_id: 7
    vi_id: 113
  }
}
infos {
  cmd_id: 114
  element: VI
  edit_type: ADD
  vi {
    mod_id: 11
    task_id: 50
    fb_id: 65
    pin_index: 2
    ev_id: 8
    vi_id: 114
  }
}
infos {
  cmd_id: 115
  element: VO
  edit_type: ADD
  vo {
    mod_id: 11
    task_id: 50
    fb_id: 57
    pin_index: 1
    ev_id: 3
    vo_id: 115
  }
}
infos {
  cmd_id: 116
  element: VO
  edit_type: ADD
  vo {
    mod_id: 11
    task_id: 50
    fb_id: 67
    pin_index: 1
    ev_id: 8
    vo_id: 116
  }
}
infos {
  cmd_id: 117
  element: MOD
  edit_type: ADD
  mod {
    mod_id: 117
    mod_name: "Module 2"
  }
}
infos {
  cmd_id: 118
  element: TASK
  edit_type: ADD
  task {
    mod_id: 117
    task_id: 118
    task_name: "PID"
    interval: 50
  }
}
infos {
  cmd_id: 119
  element: FB
  edit_type: ADD
  fb {
    mod_id: 117
    task_id: 118
    fb_id: 119
    flib_name: "Control"
    fc_name: "PID"
    fb_name: "PID\344\275\215\347\275\256\345\274\217\350\260\203\350\212\202"
  }
  pos {
    x: 127
    y: 55
  }
}
infos {
  cmd_id: 120
  element: FB
  edit_type: ADD
  fb {
    mod_id: 117
    task_id: 118
    fb_id: 120
    flib_name: "Devices"
    fc_name: "SIM_READ"
    fb_name: "\351\232\217\346\234\272\346\225\260(95~105)"
  }
  pos {
    x: 27
    y: 51
  }
}
infos {
  cmd_id: 121
  element: FB
  edit_type: ADD
  fb {
    mod_id: 117
    task_id: 118
    fb_id: 121
    flib_name: "System"
    fc_name: "SYSSTATE"
  }
  pos {
    x: 19
    y: 11
  }
}
infos {
  cmd_id: 122
  element: LK
  edit_type: ADD
  lk {
    mod_id: 117
    task_id: 118
    lk_id: 122
    src_fb_id: 120
    src_pin_index: 6
    target_fb_id: 119
    target_pin_index: 4
  }
  pos {
    x: 47
    y: 68
  }
  pos {
    x: 127
    y: 68
  }
}
infos {
  cmd_id: 123
  element: MOD
  edit_type: ADD
  mod {
    mod_id: 123
    mod_name: "SUBTASK"
  }
}
infos {
  cmd_id: 124
  element: TASK
  edit_type: ADD
  task {
    task_type: ASYNC
    mod_id: 123
    task_id: 124
    task_name: "Task_1"
    interval: 1000
  }
}
infos {
  cmd_id: 125
  element: FB
  edit_type: ADD
  fb {
    mod_id: 123
    task_id: 124
    fb_id: 125
    flib_name: "System"
    fc_name: "SYSSTATE"
    fb_name: "Task\347\212\266\346\200\201\347\233\221\350\247\206"
  }
  pos {
    x: 25
    y: 17
  }
}
infos {
  cmd_id: 126
  element: FB
  edit_type: ADD
  fb {
    mod_id: 123
    task_id: 124
    fb_id: 126
    flib_name: "Arithmetic"
    fc_name: "ADD_INT"
  }
  pos {
    x: 113
    y: 62
  }
}
infos {
  cmd_id: 127
  element: FB
  edit_type: ADD
  fb {
    mod_id: 123
    task_id: 124
    fb_id: 127
    flib_name: "Arithmetic"
    fc_name: "MUL_INT"
  }
  pos {
    x: 198
    y: 62
  }
}
infos {
  cmd_id: 128
  element: LK
  edit_type: ADD
  lk {
    mod_id: 123
    task_id: 124
    lk_id: 128
    src_fb_id: 126
    src_pin_index: 1
    target_fb_id: 127
    target_pin_index: 1
  }
  pos {
    x: 132
    y: 69
  }
  pos {
    x: 198
    y: 69
  }
}
infos {
  cmd_id: 129
  element: VI
  edit_type: ADD
  vi {
    mod_id: 123
    task_id: 124
    fb_id: 126
    pin_index: 1
    ev_id: 9
    vi_id: 129
  }
}
infos {
  cmd_id: 130
  element: VO
  edit_type: ADD
  vo {
    mod_id: 123
    task_id: 124
    fb_id: 126
    pin_index: 1
    ev_id: 9
    vo_id: 130
  }
}
infos {
  cmd_id: 131
  element: TASK
  edit_type: ADD
  task {
    task_type: ASYNC
    mod_id: 123
    task_id: 131
    task_name: "Task_2"
    interval: 1000
  }
}
infos {
  cmd_id: 132
  element: FB
  edit_type: ADD
  fb {
    mod_id: 123
    task_id: 131
    fb_id: 132
    flib_name: "System"
    fc_name: "SYSSTATE"
    fb_name: "Task\347\212\266\346\200\201\347\233\221\350\247\206"
  }
  pos {
    x: 29
    y: 17
  }
}
infos {
  cmd_id: 133
  element: FB
  edit_type: ADD
  fb {
    mod_id: 123
    task_id: 131
    fb_id: 133
    flib_name: "Task"
    fc_name: "TASK"
    fb_name: "\345\274\202\346\255\245\344\273\273\345\212\2414"
  }
  pos {
    x: 29
    y: 56
  }
}
infos {
  cmd_id: 134
  element: FB
  edit_type: ADD
  fb {
    mod_id: 123
    task_id: 131
    fb_id: 134
    flib_name: "Task"
    fc_name: "TASK"
    fb_name: "\345\274\202\346\255\245\344\273\273\345\212\2415"
  }
  pos {
    x: 101
    y: 56
  }
}
infos {
  cmd_id: 135
  element: FB
  edit_type: ADD
  fb {
    mod_id: 123
    task_id: 131
    fb_id: 135
    flib_name: "Task"
    fc_name: "TASK"
    fb_name: "\345\274\202\346\255\245\344\273\273\345\212\2413"
  }
  pos {
    x: 172
    y: 56
  }
}
infos {
  cmd_id: 136
  element: FB
  edit_type: ADD
  fb {
    mod_id: 123
    task_id: 131
    fb_id: 136
    flib_name: "Task"
    fc_name: "TASK"
    fb_name: "\345\274\202\346\255\245\344\273\273\345\212\2417"
  }
  pos {
    x: 246
    y: 56
  }
}
infos {
  cmd_id: 137
  element: LK
  edit_type: ADD
  lk {
    mod_id: 123
    task_id: 131
    lk_id: 137
    src_fb_id: 133
    src_pin_index: 1
    target_fb_id: 134
    target_pin_index: 1
  }
  pos {
    x: 56
    y: 63
  }
  pos {
    x: 101
    y: 63
  }
}
infos {
  cmd_id: 138
  element: LK
  edit_type: ADD
  lk {
    mod_id: 123
    task_id: 131
    lk_id: 138
    src_fb_id: 134
    src_pin_index: 1
    target_fb_id: 135
    target_pin_index: 1
  }
  pos {
    x: 128
    y: 63
  }
  pos {
    x: 172
    y: 63
  }
}
infos {
  cmd_id: 139
  element: LK
  edit_type: ADD
  lk {
    mod_id: 123
    task_id: 131
    lk_id: 139
    src_fb_id: 135
    src_pin_index: 1
    target_fb_id: 136
    target_pin_index: 1
  }
  pos {
    x: 199
    y: 63
  }
  pos {
    x: 246
    y: 63
  }
}
infos {
  cmd_id: 140
  element: TASK
  edit_type: ADD
  task {
    task_type: ASYNC
    mod_id: 123
    task_id: 140
    task_name: "Task_3"
    interval: 1000
  }
}
infos {
  cmd_id: 141
  element: FB
  edit_type: ADD
  fb {
    mod_id: 123
    task_id: 140
    fb_id: 141
    flib_name: "System"
    fc_name: "SYSSTATE"
  }
  pos {
    x: 23
    y: 16
  }
}
infos {
  cmd_id: 142
  element: TASK
  edit_type: ADD
  task {
    task_type: ASYNC
    mod_id: 123
    task_id: 142
    task_name: "Task_4"
    interval: 1000
  }
}
infos {
  cmd_id: 143
  element: FB
  edit_type: ADD
  fb {
    mod_id: 123
    task_id: 142
    fb_id: 143
    flib_name: "System"
    fc_name: "SYSSTATE"
  }
  pos {
    x: 28
    y: 6
  }
}
infos {
  cmd_id: 144
  element: FB
  edit_type: ADD
  fb {
    mod_id: 123
    task_id: 142
    fb_id: 144
    flib_name: "Arithmetic"
    fc_name: "ADD_INT"
  }
  pos {
    x: 39
    y: 49
  }
}
infos {
  cmd_id: 145
  element: VI
  edit_type: ADD
  vi {
    mod_id: 123
    task_id: 142
    fb_id: 144
    pin_index: 1
    ev_id: 10
    vi_id: 145
  }
}
infos {
  cmd_id: 146
  element: VO
  edit_type: ADD
  vo {
    mod_id: 123
    task_id: 142
    fb_id: 144
    pin_index: 1
    ev_id: 10
    vo_id: 146
  }
}
infos {
  cmd_id: 147
  element: TASK
  edit_type: ADD
  task {
    task_type: ASYNC
    mod_id: 123
    task_id: 147
    task_name: "Task_5"
    interval: 1000
  }
}
infos {
  cmd_id: 148
  element: FB
  edit_type: ADD
  fb {
    mod_id: 123
    task_id: 147
    fb_id: 148
    flib_name: "System"
    fc_name: "SYSSTATE"
  }
  pos {
    x: 24
    y: 11
  }
}
infos {
  cmd_id: 149
  element: FB
  edit_type: ADD
  fb {
    mod_id: 123
    task_id: 147
    fb_id: 149
    flib_name: "Task"
    fc_name: "TASK"
    fb_name: "\345\274\202\346\255\245\344\273\273\345\212\2416"
  }
  pos {
    x: 40
    y: 56
  }
}
infos {
  cmd_id: 150
  element: TASK
  edit_type: ADD
  task {
    task_type: ASYNC
    mod_id: 123
    task_id: 150
    task_name: "Task_6"
  }
}
infos {
  cmd_id: 151
  element: FB
  edit_type: ADD
  fb {
    mod_id: 123
    task_id: 150
    fb_id: 151
    flib_name: "System"
    fc_name: "SYSSTATE"
  }
  pos {
    x: 18
    y: 8
  }
}
infos {
  cmd_id: 152
  element: FB
  edit_type: ADD
  fb {
    mod_id: 123
    task_id: 150
    fb_id: 152
    flib_name: "Task"
    fc_name: "SLEEP"
    fb_name: "Sleep\344\270\200\346\256\265\346\227\266\351\227\264(ms)"
  }
  pos {
    x: 49
    y: 67
  }
}
infos {
  cmd_id: 153
  element: TASK
  edit_type: ADD
  task {
    task_type: ASYNC
    mod_id: 123
    task_id: 153
    task_name: "Task_7"
    interval: 1000
  }
}
infos {
  cmd_id: 154
  element: FB
  edit_type: ADD
  fb {
    mod_id: 123
    task_id: 153
    fb_id: 154
    flib_name: "System"
    fc_name: "SYSSTATE"
  }
  pos {
    x: 29
    y: 17
  }
}
infos {
  cmd_id: 155
  element: FB
  edit_type: ADD
  fb {
    mod_id: 123
    task_id: 153
    fb_id: 155
    flib_name: "Arithmetic"
    fc_name: "ADD_INT"
  }
  pos {
    x: 193
    y: 62
  }
}
infos {
  cmd_id: 156
  element: FB
  edit_type: ADD
  fb {
    mod_id: 123
    task_id: 153
    fb_id: 156
    flib_name: "Devices"
    fc_name: "SIM_READ"
    fb_name: "\351\232\217\346\234\272\346\225\260(10~20)"
  }
  pos {
    x: 33
    y: 54
  }
}
infos {
  cmd_id: 157
  element: FB
  edit_type: ADD
  fb {
    mod_id: 123
    task_id: 153
    fb_id: 157
    flib_name: "Converter"
    fc_name: "D2I"
    fb_name: "Double\350\275\254int"
  }
  pos {
    x: 115
    y: 62
  }
}
infos {
  cmd_id: 158
  element: LK
  edit_type: ADD
  lk {
    mod_id: 123
    task_id: 153
    lk_id: 158
    src_fb_id: 156
    src_pin_index: 5
    target_fb_id: 157
    target_pin_index: 1
  }
  pos {
    x: 53
    y: 69
  }
  pos {
    x: 115
    y: 69
  }
}
infos {
  cmd_id: 159
  element: LK
  edit_type: ADD
  lk {
    mod_id: 123
    task_id: 153
    lk_id: 159
    src_fb_id: 157
    src_pin_index: 1
    target_fb_id: 155
    target_pin_index: 1
  }
  pos {
    x: 133
    y: 69
  }
  pos {
    x: 193
    y: 69
  }
}
infos {
  cmd_id: 160
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 12
    fb_id: 15
    pin_index: 1
    pin_val {
      v {
        t: T_STRING
        str: "SIM"
      }
      tm: 1681389273012321844
    }
  }
}
infos {
  cmd_id: 161
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 12
    fb_id: 13
    pin_index: 2
    pin_val {
      v {
        t: T_INT32
        i: 100
      }
      tm: 1681389348653948686
    }
  }
}
infos {
  cmd_id: 162
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 12
    fb_id: 17
    pin_index: 2
    pin_val {
      v {
        t: T_INT32
        i: 10
      }
      tm: 1681389379553786801
    }
  }
}
infos {
  cmd_id: 163
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 12
    fb_id: 18
    pin_index: 2
    pin_val {
      v {
        t: T_INT32
        i: 5
      }
      tm: 1681389410669280526
    }
  }
}
infos {
  cmd_id: 164
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 12
    fb_id: 15
    pin_index: 2
    pin_val {
      v {
        t: T_STRING
        str: "$SECOND"
      }
      tm: 1681389913251943706
    }
  }
}
infos {
  cmd_id: 165
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 12
    fb_id: 15
    pin_index: 6
    pin_val {
      v {
        t: T_STRING
        str: "RANDOM(10,30)"
      }
      tm: 1681390081110505874
    }
  }
}
infos {
  cmd_id: 166
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 12
    fb_id: 19
    pin_index: 2
    pin_val {
      v {
        t: T_FLOAT64
        d: 4
      }
      tm: 1681390122567857142
    }
  }
}
infos {
  cmd_id: 167
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 12
    fb_id: 22
    pin_index: 1
    pin_val {
      v {
        t: T_FLOAT64
        d: -1.5670000314712524
      }
      tm: 1681390525958231642
    }
  }
}
infos {
  cmd_id: 168
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 12
    fb_id: 15
    pin_index: 9
    pin_val {
      v {
        t: T_STRING
        str: "\357\277\245SECOND"
      }
      tm: 1681391838813644311
    }
  }
}
infos {
  cmd_id: 169
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 12
    fb_id: 15
    pin_index: 9
    pin_val {
      v {
        t: T_STRING
        str: "$SECOND"
      }
      tm: 1681391855396405663
    }
  }
}
infos {
  cmd_id: 170
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 12
    fb_id: 24
    pin_index: 2
    pin_val {
      v {
        t: T_UINT32
        ui: 30
      }
      tm: 1681391985968155815
    }
  }
}
infos {
  cmd_id: 171
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 12
    fb_id: 25
    pin_index: 2
    pin_val {
      v {
        t: T_UINT32
        ui: 20
      }
      tm: 1681392098535057673
    }
  }
}
infos {
  cmd_id: 172
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 12
    fb_id: 26
    pin_index: 3
    pin_val {
      v {
        t: T_BOOL
        b: true
      }
      tm: 1681392126501870835
    }
  }
}
infos {
  cmd_id: 173
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 12
    fb_id: 26
    pin_index: 4
    pin_val {
      v {
        t: T_BOOL
        b: true
      }
      tm: 1681392129150109025
    }
  }
}
infos {
  cmd_id: 174
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 12
    fb_id: 27
    pin_index: 2
    pin_val {
      v {
        t: T_BOOL
        b: true
      }
      tm: 1681392205670493028
    }
  }
}
infos {
  cmd_id: 175
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 51
    pin_index: 4
    pin_val {
      v {
        t: T_INT32
        i: 1
      }
      tm: 1681393707260383526
    }
  }
}
infos {
  cmd_id: 176
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 52
    pin_index: 4
    pin_val {
      v {
        t: T_INT32
        i: 2
      }
      tm: 1681393710948686277
    }
  }
}
infos {
  cmd_id: 177
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 53
    pin_index: 4
    pin_val {
      v {
        t: T_INT32
        i: 3
      }
      tm: 1681393714188719332
    }
  }
}
infos {
  cmd_id: 178
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 54
    pin_index: 4
    pin_val {
      v {
        t: T_INT32
        i: 4
      }
      tm: 1681393717228645616
    }
  }
}
infos {
  cmd_id: 179
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 55
    pin_index: 4
    pin_val {
      v {
        t: T_INT32
        i: 1
      }
      tm: 1681393721228594723
    }
  }
}
infos {
  cmd_id: 180
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 56
    pin_index: 1
    pin_val {
      v {
        t: T_STRING
        str: "SIM"
      }
      tm: 1681393788453108669
    }
  }
}
infos {
  cmd_id: 181
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 56
    pin_index: 5
    pin_val {
      v {
        t: T_STRING
        str: "$SECOND"
      }
      tm: 1681393806069276312
    }
  }
}
infos {
  cmd_id: 182
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 51
    pin_index: 1
    pin_val {
      v {
        t: T_BOOL
        b: true
      }
      tm: 1681393863909547899
    }
  }
}
infos {
  cmd_id: 183
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 51
    pin_index: 2
    pin_val {
      v {
        t: T_BOOL
        b: true
      }
      tm: 1681393867853697168
    }
  }
}
infos {
  cmd_id: 184
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 58
    pin_index: 1
    pin_val {
      v {
        t: T_UINT32
        ui: 0
      }
      tm: 1681393928855174418
    }
  }
}
infos {
  cmd_id: 185
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 59
    pin_index: 2
    pin_val {
      v {
        t: T_UINT32
        ui: 10
      }
      tm: 1681394047775741897
    }
  }
}
infos {
  cmd_id: 186
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 60
    pin_index: 2
    pin_val {
      v {
        t: T_UINT32
        ui: 30
      }
      tm: 1681394188496796381
    }
  }
}
infos {
  cmd_id: 187
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 64
    pin_index: 2
    pin_val {
      v {
        t: T_UINT32
        ui: 10
      }
      tm: 1681437647745303500
    }
  }
}
infos {
  cmd_id: 188
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 65
    pin_index: 2
    pin_val {
      v {
        t: T_BOOL
        b: true
      }
      tm: 1681438207742837028
    }
  }
}
infos {
  cmd_id: 189
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 65
    pin_index: 2
    pin_val {
      v {
        t: T_BOOL
        b: false
      }
      tm: 1681438214604689424
    }
  }
}
infos {
  cmd_id: 190
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 67
    pin_index: 1
    pin_val {
      v {
        t: T_BOOL
        b: true
      }
      tm: 1681438498540371972
    }
  }
}
infos {
  cmd_id: 191
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 68
    pin_index: 2
    pin_val {
      v {
        t: T_UINT32
        ui: 40
      }
      tm: 1681438674968002811
    }
  }
}
infos {
  cmd_id: 192
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 69
    pin_index: 2
    pin_val {
      v {
        t: T_UINT32
        ui: 55
      }
      tm: 1681438713754148278
    }
  }
}
infos {
  cmd_id: 193
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 62
    pin_index: 4
    pin_val {
      v {
        t: T_INT32
        i: 5
      }
      tm: 1681438974157492659
    }
  }
}
infos {
  cmd_id: 194
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 63
    pin_index: 4
    pin_val {
      v {
        t: T_INT32
        i: 4
      }
      tm: 1681438977918042531
    }
  }
}
infos {
  cmd_id: 195
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 71
    pin_index: 2
    pin_val {
      v {
        t: T_STRING
        str: "MOD1"
      }
      tm: 1681457900307994766
    }
  }
}
infos {
  cmd_id: 196
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 71
    pin_index: 3
    pin_val {
      v {
        t: T_STRING
        str: "P1"
      }
      tm: 1681457908452281043
    }
  }
}
infos {
  cmd_id: 197
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 71
    pin_index: 4
    pin_val {
      v {
        t: T_TIME
        tm: 3000
      }
      tm: 1681457920186104840
    }
  }
}
infos {
  cmd_id: 198
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 71
    pin_index: 2
    pin_val {
      v {
        t: T_STRING
        str: "SUBTASK"
      }
      tm: 1681459259174030695
    }
  }
}
infos {
  cmd_id: 199
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 71
    pin_index: 3
    pin_val {
      v {
        t: T_STRING
        str: "TASK_1"
      }
      tm: 1681459270749673850
    }
  }
}
infos {
  cmd_id: 200
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 73
    pin_index: 2
    pin_val {
      v {
        t: T_STRING
        str: "SUBTASK"
      }
      tm: 1681459341165580334
    }
  }
}
infos {
  cmd_id: 201
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 73
    pin_index: 3
    pin_val {
      v {
        t: T_STRING
        str: "Task_2"
      }
      tm: 1681459361284969917
    }
  }
}
infos {
  cmd_id: 202
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 71
    pin_index: 3
    pin_val {
      v {
        t: T_STRING
        str: "Task_2"
      }
      tm: 1681459370261742789
    }
  }
}
infos {
  cmd_id: 203
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 73
    pin_index: 4
    pin_val {
      v {
        t: T_TIME
        tm: 1000
      }
      tm: 1681459378022089384
    }
  }
}
infos {
  cmd_id: 204
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 73
    pin_index: 5
    pin_val {
      v {
        t: T_BOOL
        b: true
      }
      tm: 1681459381965500669
    }
  }
}
infos {
  cmd_id: 205
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 71
    pin_index: 5
    pin_val {
      v {
        t: T_BOOL
        b: false
      }
      tm: 1681459385237447710
    }
  }
}
infos {
  cmd_id: 206
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 50
    fb_id: 71
    pin_index: 3
    pin_val {
      v {
        t: T_STRING
        str: "Task_1"
      }
      tm: 1681459725996581085
    }
  }
}
infos {
  cmd_id: 207
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 124
    fb_id: 126
    pin_index: 2
    pin_val {
      v {
        t: T_INT32
        i: 1
      }
      tm: 1681461676558953246
    }
  }
}
infos {
  cmd_id: 208
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 131
    fb_id: 133
    pin_index: 1
    pin_val {
      v {
        t: T_BOOL
        b: true
      }
      tm: 1681461777734632515
    }
  }
}
infos {
  cmd_id: 209
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 131
    fb_id: 133
    pin_index: 2
    pin_val {
      v {
        t: T_STRING
        str: "SUBTASK"
      }
      tm: 1681461793343256511
    }
  }
}
infos {
  cmd_id: 210
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 131
    fb_id: 133
    pin_index: 3
    pin_val {
      v {
        t: T_STRING
        str: "Task_4"
      }
      tm: 1681461800542901419
    }
  }
}
infos {
  cmd_id: 211
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 131
    fb_id: 133
    pin_index: 4
    pin_val {
      v {
        t: T_TIME
        tm: 3000
      }
      tm: 1681461808702853656
    }
  }
}
infos {
  cmd_id: 212
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 131
    fb_id: 133
    pin_index: 5
    pin_val {
      v {
        t: T_BOOL
        b: false
      }
      tm: 1681461813103258319
    }
  }
}
infos {
  cmd_id: 213
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 131
    fb_id: 134
    pin_index: 2
    pin_val {
      v {
        t: T_STRING
        str: "SUBTASK"
      }
      tm: 1681461840734779625
    }
  }
}
infos {
  cmd_id: 214
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 131
    fb_id: 134
    pin_index: 3
    pin_val {
      v {
        t: T_STRING
        str: "Task_5"
      }
      tm: 1681461848661264429
    }
  }
}
infos {
  cmd_id: 215
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 131
    fb_id: 134
    pin_index: 4
    pin_val {
      v {
        t: T_TIME
        tm: 2000
      }
      tm: 1681461862712496476
    }
  }
}
infos {
  cmd_id: 216
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 131
    fb_id: 134
    pin_index: 5
    pin_val {
      v {
        t: T_BOOL
        b: false
      }
      tm: 1681461867048733795
    }
  }
}
infos {
  cmd_id: 217
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 142
    fb_id: 144
    pin_index: 2
    pin_val {
      v {
        t: T_INT32
        i: 2
      }
      tm: 1681461934909480525
    }
  }
}
infos {
  cmd_id: 218
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 131
    fb_id: 135
    pin_index: 5
    pin_val {
      v {
        t: T_BOOL
        b: false
      }
      tm: 1681462637030798117
    }
  }
}
infos {
  cmd_id: 219
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 131
    fb_id: 135
    pin_index: 2
    pin_val {
      v {
        t: T_STRING
        str: "SUBTASK"
      }
      tm: 1681462645167425757
    }
  }
}
infos {
  cmd_id: 220
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 131
    fb_id: 135
    pin_index: 3
    pin_val {
      v {
        t: T_STRING
        str: "Task_3"
      }
      tm: 1681462654711414668
    }
  }
}
infos {
  cmd_id: 221
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 147
    fb_id: 149
    pin_index: 2
    pin_val {
      v {
        t: T_STRING
        str: "SUBTASK"
      }
      tm: 1681462707504407676
    }
  }
}
infos {
  cmd_id: 222
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 147
    fb_id: 149
    pin_index: 3
    pin_val {
      v {
        t: T_STRING
        str: "Task_6"
      }
      tm: 1681462714472249183
    }
  }
}
infos {
  cmd_id: 223
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 147
    fb_id: 149
    pin_index: 4
    pin_val {
      v {
        t: T_TIME
        tm: 1000
      }
      tm: 1681462720800377823
    }
  }
}
infos {
  cmd_id: 224
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 147
    fb_id: 149
    pin_index: 5
    pin_val {
      v {
        t: T_BOOL
        b: false
      }
      tm: 1681462725761100538
    }
  }
}
infos {
  cmd_id: 225
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 150
    fb_id: 152
    pin_index: 2
    pin_val {
      v {
        t: T_TIME
        tm: 5000
      }
      tm: 1681462744169052378
    }
  }
}
infos {
  cmd_id: 226
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 147
    fb_id: 149
    pin_index: 1
    pin_val {
      v {
        t: T_BOOL
        b: true
      }
      tm: 1681462860635700260
    }
  }
}
infos {
  cmd_id: 227
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 131
    fb_id: 133
    pin_index: 5
    pin_val {
      v {
        t: T_BOOL
        b: true
      }
      tm: 1681464343654313345
    }
  }
}
infos {
  cmd_id: 228
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 131
    fb_id: 134
    pin_index: 5
    pin_val {
      v {
        t: T_BOOL
        b: true
      }
      tm: 1681464347534268252
    }
  }
}
infos {
  cmd_id: 229
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 131
    fb_id: 135
    pin_index: 5
    pin_val {
      v {
        t: T_BOOL
        b: true
      }
      tm: 1681464350550442107
    }
  }
}
infos {
  cmd_id: 230
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 147
    fb_id: 149
    pin_index: 5
    pin_val {
      v {
        t: T_BOOL
        b: true
      }
      tm: 1681464356654517059
    }
  }
}
infos {
  cmd_id: 231
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 124
    fb_id: 127
    pin_index: 2
    pin_val {
      v {
        t: T_INT32
        i: 5
      }
      tm: 1681571290289475773
    }
  }
}
infos {
  cmd_id: 232
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 153
    fb_id: 156
    pin_index: 1
    pin_val {
      v {
        t: T_STRING
        str: "SIM"
      }
      tm: 1681661859661370485
    }
  }
}
infos {
  cmd_id: 233
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 153
    fb_id: 156
    pin_index: 6
    pin_val {
      v {
        t: T_STRING
        str: "RANDOM(10,20)"
      }
      tm: 1681661872311180155
    }
  }
}
infos {
  cmd_id: 234
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 153
    fb_id: 155
    pin_index: 2
    pin_val {
      v {
        t: T_INT32
        i: 5
      }
      tm: 1681661900178199578
    }
  }
}
infos {
  cmd_id: 235
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 131
    fb_id: 136
    pin_index: 2
    pin_val {
      v {
        t: T_STRING
        str: "SUBTASK"
      }
      tm: 1681661939628326986
    }
  }
}
infos {
  cmd_id: 236
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 131
    fb_id: 136
    pin_index: 3
    pin_val {
      v {
        t: T_STRING
        str: "Task_7"
      }
      tm: 1681661948294361904
    }
  }
}
infos {
  cmd_id: 237
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 131
    fb_id: 136
    pin_index: 4
    pin_val {
      v {
        t: T_TIME
        tm: 5000
      }
      tm: 1681661956011417861
    }
  }
}
infos {
  cmd_id: 238
  element: PIN
  edit_type: SET
  pin {
    mod_id: 123
    task_id: 131
    fb_id: 136
    pin_index: 5
    pin_val {
      v {
        t: T_BOOL
        b: true
      }
      tm: 1681661961394800770
    }
  }
}
infos {
  cmd_id: 239
  element: PIN
  edit_type: SET
  pin {
    mod_id: 11
    task_id: 12
    fb_id: 29
    pin_index: 1
    pin_val {
      v {
        t: T_BOOL
        b: true
      }
      tm: 1681712039698874580
    }
  }
}
infos {
  cmd_id: 240
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 118
    fb_id: 120
    pin_index: 1
    pin_val {
      v {
        t: T_STRING
        str: "SIM"
      }
      tm: 1681712333227796179
    }
  }
}
infos {
  cmd_id: 241
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 118
    fb_id: 120
    pin_index: 7
    pin_val {
      v {
        t: T_STRING
        str: "RANDOM(95,105)"
      }
      tm: 1681712364076251057
    }
  }
}
infos {
  cmd_id: 242
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 118
    fb_id: 119
    pin_index: 3
    pin_val {
      v {
        t: T_FLOAT64
        d: 100
      }
      tm: 1681712378291623872
    }
  }
}
infos {
  cmd_id: 243
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 118
    fb_id: 119
    pin_index: 1
    pin_val {
      v {
        t: T_BOOL
        b: false
      }
      tm: 1681712381123919158
    }
  }
}
infos {
  cmd_id: 244
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 118
    fb_id: 119
    pin_index: 2
    pin_val {
      v {
        t: T_BOOL
        b: false
      }
      tm: 1681712383643871410
    }
  }
}
infos {
  cmd_id: 245
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 118
    fb_id: 119
    pin_index: 5
    pin_val {
      v {
        t: T_FLOAT64
        d: 0
      }
      tm: 1681712387051262673
    }
  }
}
infos {
  cmd_id: 246
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 118
    fb_id: 119
    pin_index: 6
    pin_val {
      v {
        t: T_BOOL
        b: true
      }
      tm: 1681712390035455692
    }
  }
}
infos {
  cmd_id: 247
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 118
    fb_id: 119
    pin_index: 7
    pin_val {
      v {
        t: T_BOOL
        b: true
      }
      tm: 1681712392475950470
    }
  }
}
infos {
  cmd_id: 248
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 118
    fb_id: 119
    pin_index: 8
    pin_val {
      v {
        t: T_BOOL
        b: true
      }
      tm: 1681712394787441993
    }
  }
}
infos {
  cmd_id: 249
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 118
    fb_id: 119
    pin_index: 9
    pin_val {
      v {
        t: T_BOOL
        b: false
      }
      tm: 1681712400443879936
    }
  }
}
infos {
  cmd_id: 250
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 118
    fb_id: 119
    pin_index: 10
    pin_val {
      v {
        t: T_FLOAT64
        d: 0.5
      }
      tm: 1681712411508177553
    }
  }
}
infos {
  cmd_id: 251
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 118
    fb_id: 119
    pin_index: 11
    pin_val {
      v {
        t: T_FLOAT64
        d: 100
      }
      tm: 1681712419179938528
    }
  }
}
infos {
  cmd_id: 252
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 118
    fb_id: 119
    pin_index: 12
    pin_val {
      v {
        t: T_FLOAT64
        d: 50
      }
      tm: 1681712423371808218
    }
  }
}
infos {
  cmd_id: 253
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 118
    fb_id: 119
    pin_index: 13
    pin_val {
      v {
        t: T_FLOAT64
        d: 0
      }
      tm: 1681712426635853521
    }
  }
}
infos {
  cmd_id: 254
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 118
    fb_id: 119
    pin_index: 14
    pin_val {
      v {
        t: T_FLOAT64
        d: 10
      }
      tm: 1681712434884673759
    }
  }
}
infos {
  cmd_id: 255
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 118
    fb_id: 119
    pin_index: 15
    pin_val {
      v {
        t: T_FLOAT64
        d: -10
      }
      tm: 1681712439995807827
    }
  }
}
infos {
  cmd_id: 256
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 118
    fb_id: 119
    pin_index: 16
    pin_val {
      v {
        t: T_FLOAT64
        d: 5
      }
      tm: 1681712444964485191
    }
  }
}
infos {
  cmd_id: 257
  element: TASK
  edit_type: ADD
  task {
    mod_id: 117
    task_id: 160
    task_name: "IMG"
    interval: 1000
  }
}
infos {
  cmd_id: 258
  element: FB
  edit_type: ADD
  fb {
    mod_id: 117
    task_id: 160
    fb_id: 161
    flib_name: "Devices"
    fc_name: "CAMERA"
  }
  pos {
    x: 19
    y: 28
  }
}
infos {
  cmd_id: 259
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 160
    fb_id: 161
    pin_index: 1
    pin_val {
      v {
        t: T_STRING
        str: "front camera"
      }
      tm: 1681716939937562998
    }
  }
}
infos {
  cmd_id: 260
  element: FB
  edit_type: ADD
  fb {
    mod_id: 117
    task_id: 160
    fb_id: 162
    flib_name: "AI"
    fc_name: "DLIB_FACE_DETECT"
  }
  pos {
    x: 73
    y: 36
  }
}
infos {
  cmd_id: 261
  element: FB
  edit_type: ADD
  fb {
    mod_id: 117
    task_id: 160
    fb_id: 163
    flib_name: "System"
    fc_name: "FILE_OPEN_ONCE"
  }
  pos {
    x: 27
    y: 70
  }
}
infos {
  cmd_id: 266
  element: FB
  edit_type: ADD
  fb {
    mod_id: 117
    task_id: 160
    fb_id: 164
    flib_name: "System"
    fc_name: "FILE_OPEN_ONCE"
  }
  pos {
    x: 47
    y: 63
  }
}
infos {
  cmd_id: 267
  element: FB
  edit_type: MV
  fb {
    mod_id: 117
    task_id: 160
    fb_id: 164
  }
  pos {
    x: 47
    y: 84
  }
}
infos {
  cmd_id: 268
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 160
    fb_id: 163
    pin_index: 3
    pin_val {
      v {
        t: T_BOOL
        b: true
      }
      tm: 1681716978313293382
    }
  }
}
infos {
  cmd_id: 269
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 160
    fb_id: 164
    pin_index: 3
    pin_val {
      v {
        t: T_BOOL
        b: true
      }
      tm: 1681716981249166123
    }
  }
}
infos {
  cmd_id: 270
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 160
    fb_id: 163
    pin_index: 2
    pin_val {
      v {
        t: T_UINT32
        ui: 0
      }
      tm: 1681716984305125902
    }
  }
}
infos {
  cmd_id: 271
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 160
    fb_id: 164
    pin_index: 2
    pin_val {
      v {
        t: T_UINT32
        ui: 0
      }
      tm: 1681716986713035837
    }
  }
}
infos {
  cmd_id: 272
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 160
    fb_id: 163
    pin_index: 1
    pin_val {
      v {
        t: T_STRING
        str: "/home/shuimujie/Works/GeoSys/sha"
      }
      tm: 1681717010177476086
    }
  }
}
infos {
  cmd_id: 273
  element: FB
  edit_type: MV
  fb {
    mod_id: 117
    task_id: 160
    fb_id: 163
  }
  pos {
    x: 53
    y: 64
  }
}
infos {
  cmd_id: 274
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 160
    fb_id: 163
    pin_index: 1
    pin_val {
      v {
        t: T_STRING
        str: "/home/shuimujie/Works/GeoSys/shape_predictor_5_face_landmarks.dat"
      }
      tm: 1681717118929853791
    }
  }
}
infos {
  cmd_id: 275
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 160
    fb_id: 164
    pin_index: 1
    pin_val {
      v {
        t: T_STRING
        str: "/home/shuimujie/Works/GeoSys/dlib_face_recognition_resnet_model_v1.dat"
      }
      tm: 1681717134954366049
    }
  }
}
infos {
  cmd_id: 276
  element: LK
  edit_type: ADD
  lk {
    mod_id: 117
    task_id: 160
    lk_id: 165
    src_fb_id: 163
    src_pin_index: 1
    target_fb_id: 162
    target_pin_index: 4
  }
  pos {
    x: 75
    y: 71
  }
  pos {
    x: 90
    y: 71
  }
  pos {
    x: 90
    y: 50
  }
  pos {
    x: 106
    y: 50
  }
}
infos {
  cmd_id: 277
  element: LK
  edit_type: ADD
  lk {
    mod_id: 117
    task_id: 160
    lk_id: 166
    src_fb_id: 164
    src_pin_index: 1
    target_fb_id: 162
    target_pin_index: 5
  }
  pos {
    x: 69
    y: 91
  }
  pos {
    x: 87
    y: 91
  }
  pos {
    x: 87
    y: 52
  }
  pos {
    x: 106
    y: 52
  }
}
infos {
  cmd_id: 279
  element: LK
  edit_type: ADD
  lk {
    mod_id: 117
    task_id: 160
    lk_id: 167
    src_fb_id: 161
    src_pin_index: 1
    target_fb_id: 162
    target_pin_index: 1
  }
  pos {
    x: 39
    y: 35
  }
  pos {
    x: 72
    y: 35
  }
  pos {
    x: 72
    y: 44
  }
  pos {
    x: 106
    y: 44
  }
}
infos {
  cmd_id: 280
  element: LK
  edit_type: ADD
  lk {
    mod_id: 117
    task_id: 160
    lk_id: 168
    src_fb_id: 161
    src_pin_index: 2
    target_fb_id: 162
    target_pin_index: 2
  }
  pos {
    x: 39
    y: 37
  }
  pos {
    x: 72
    y: 37
  }
  pos {
    x: 72
    y: 46
  }
  pos {
    x: 106
    y: 46
  }
}
infos {
  cmd_id: 282
  element: LK
  edit_type: ADD
  lk {
    mod_id: 117
    task_id: 160
    lk_id: 169
    src_fb_id: 161
    src_pin_index: 3
    target_fb_id: 162
    target_pin_index: 3
  }
  pos {
    x: 39
    y: 39
  }
  pos {
    x: 72
    y: 39
  }
  pos {
    x: 72
    y: 48
  }
  pos {
    x: 106
    y: 48
  }
}
infos {
  cmd_id: 302
  element: FB
  edit_type: MV
  fb {
    mod_id: 117
    task_id: 160
    fb_id: 162
  }
  pos {
    x: 106
    y: 28
  }
}
infos {
  cmd_id: 303
  element: LK
  edit_type: MV
  lk {
    mod_id: 117
    task_id: 160
    lk_id: 165
  }
  pos {
    x: 75
    y: 71
  }
  pos {
    x: 90
    y: 71
  }
  pos {
    x: 90
    y: 41
  }
  pos {
    x: 106
    y: 41
  }
}
infos {
  cmd_id: 304
  element: LK
  edit_type: MV
  lk {
    mod_id: 117
    task_id: 160
    lk_id: 166
  }
  pos {
    x: 69
    y: 91
  }
  pos {
    x: 97
    y: 91
  }
  pos {
    x: 97
    y: 43
  }
  pos {
    x: 106
    y: 43
  }
}
infos {
  cmd_id: 305
  element: LK
  edit_type: MV
  lk {
    mod_id: 117
    task_id: 160
    lk_id: 167
  }
  pos {
    x: 39
    y: 35
  }
  pos {
    x: 106
    y: 35
  }
}
infos {
  cmd_id: 306
  element: LK
  edit_type: MV
  lk {
    mod_id: 117
    task_id: 160
    lk_id: 168
  }
  pos {
    x: 39
    y: 37
  }
  pos {
    x: 106
    y: 37
  }
}
infos {
  cmd_id: 307
  element: LK
  edit_type: MV
  lk {
    mod_id: 117
    task_id: 160
    lk_id: 169
  }
  pos {
    x: 39
    y: 39
  }
  pos {
    x: 106
    y: 39
  }
}
infos {
  cmd_id: 308
  element: FB
  edit_type: ADD
  fb {
    mod_id: 117
    task_id: 160
    fb_id: 170
    flib_name: "System"
    fc_name: "SYSSTATE"
  }
  pos {
    x: 18
    y: 9
  }
}
infos {
  cmd_id: 309
  element: FB
  edit_type: MV
  fb {
    mod_id: 117
    task_id: 160
    fb_id: 170
  }
  pos {
    x: 7
  }
}
infos {
  cmd_id: 310
  element: EV
  edit_type: ADD
  ev {
    ev_id: 171
    ev_name: "IMG_ORIGIN"
    ev_type: 2
    ev_desc: "\347\233\270\346\234\272\345\216\237\345\247\213\345\233\276\347\211\207"
    init_val {
      v {
        t: T_IMAGE
        img: "0"
      }
      tm: 1681722043392883066
    }
  }
}
infos {
  cmd_id: 311
  element: VO
  edit_type: ADD
  vo {
    mod_id: 117
    task_id: 160
    fb_id: 161
    pin_index: 1
    ev_id: 171
    vo_id: 172
  }
}
infos {
  cmd_id: 312
  element: TASK
  edit_type: ADD
  task {
    task_type: ASYNC
    mod_id: 117
    task_id: 173
    task_name: "IMAGES"
    interval: 1000
  }
}
infos {
  cmd_id: 313
  element: FB
  edit_type: ADD
  fb {
    mod_id: 117
    task_id: 173
    fb_id: 174
    flib_name: "AI"
    fc_name: "DLIB_FACE_DETECT"
  }
  pos {
    x: 106
    y: 28
  }
}
infos {
  cmd_id: 314
  element: FB
  edit_type: ADD
  fb {
    mod_id: 117
    task_id: 173
    fb_id: 175
    flib_name: "System"
    fc_name: "FILE_OPEN_ONCE"
  }
  pos {
    x: 53
    y: 64
  }
}
infos {
  cmd_id: 315
  element: FB
  edit_type: ADD
  fb {
    mod_id: 117
    task_id: 173
    fb_id: 176
    flib_name: "System"
    fc_name: "FILE_OPEN_ONCE"
  }
  pos {
    x: 47
    y: 84
  }
}
infos {
  cmd_id: 316
  element: LK
  edit_type: ADD
  lk {
    mod_id: 117
    task_id: 173
    lk_id: 177
    src_fb_id: 175
    src_pin_index: 1
    target_fb_id: 174
    target_pin_index: 4
  }
  pos {
    x: 75
    y: 71
  }
  pos {
    x: 90
    y: 71
  }
  pos {
    x: 90
    y: 41
  }
  pos {
    x: 106
    y: 41
  }
}
infos {
  cmd_id: 317
  element: LK
  edit_type: ADD
  lk {
    mod_id: 117
    task_id: 173
    lk_id: 178
    src_fb_id: 176
    src_pin_index: 1
    target_fb_id: 174
    target_pin_index: 5
  }
  pos {
    x: 69
    y: 91
  }
  pos {
    x: 87
    y: 91
  }
  pos {
    x: 87
    y: 43
  }
  pos {
    x: 106
    y: 43
  }
}
infos {
  cmd_id: 318
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 173
    fb_id: 175
    pin_index: 1
    pin_val {
      v {
        t: T_STRING
        str: "/home/shuimujie/Works/GeoSys/shape_predictor_5_face_landmarks.dat"
      }
      tm: 1681733762809181517
    }
  }
}
infos {
  cmd_id: 319
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 173
    fb_id: 175
    pin_index: 2
    pin_val {
      v {
        t: T_UINT32
        ui: 0
      }
      tm: 1681733767828190697
    }
  }
}
infos {
  cmd_id: 320
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 173
    fb_id: 175
    pin_index: 3
    pin_val {
      v {
        t: T_BOOL
        b: true
      }
      tm: 1681733770453641353
    }
  }
}
infos {
  cmd_id: 321
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 173
    fb_id: 176
    pin_index: 1
    pin_val {
      v {
        t: T_STRING
        str: "/home/shuimujie/Works/GeoSys/dlib_face_recognition_resnet_model_v1.dat"
      }
      tm: 1681733779348215186
    }
  }
}
infos {
  cmd_id: 322
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 173
    fb_id: 176
    pin_index: 2
    pin_val {
      v {
        t: T_UINT32
        ui: 0
      }
      tm: 1681733784036508585
    }
  }
}
infos {
  cmd_id: 323
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 173
    fb_id: 176
    pin_index: 3
    pin_val {
      v {
        t: T_BOOL
        b: true
      }
      tm: 1681733786404628079
    }
  }
}
infos {
  cmd_id: 324
  element: VI
  edit_type: ADD
  vi {
    mod_id: 117
    task_id: 173
    fb_id: 174
    pin_index: 1
    ev_id: 171
    vi_id: 179
  }
}
infos {
  cmd_id: 325
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 173
    fb_id: 174
    pin_index: 2
    pin_val {
      v {
        t: T_UINT32
        ui: 640
      }
      tm: 1681733801652524576
    }
  }
}
infos {
  cmd_id: 326
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 173
    fb_id: 174
    pin_index: 3
    pin_val {
      v {
        t: T_UINT32
        ui: 480
      }
      tm: 1681733805508581760
    }
  }
}
infos {
  cmd_id: 327
  element: LK
  edit_type: RM
  lk {
    mod_id: 117
    task_id: 160
    lk_id: 169
  }
}
infos {
  cmd_id: 328
  element: LK
  edit_type: RM
  lk {
    mod_id: 117
    task_id: 160
    lk_id: 168
  }
}
infos {
  cmd_id: 329
  element: LK
  edit_type: RM
  lk {
    mod_id: 117
    task_id: 160
    lk_id: 167
  }
}
infos {
  cmd_id: 330
  element: LK
  edit_type: RM
  lk {
    mod_id: 117
    task_id: 160
    lk_id: 166
  }
}
infos {
  cmd_id: 331
  element: LK
  edit_type: RM
  lk {
    mod_id: 117
    task_id: 160
    lk_id: 165
  }
}
infos {
  cmd_id: 332
  element: FB
  edit_type: RM
  fb {
    mod_id: 117
    task_id: 160
    fb_id: 162
  }
}
infos {
  cmd_id: 333
  element: FB
  edit_type: RM
  fb {
    mod_id: 117
    task_id: 160
    fb_id: 163
  }
}
infos {
  cmd_id: 334
  element: FB
  edit_type: RM
  fb {
    mod_id: 117
    task_id: 160
    fb_id: 164
  }
}
infos {
  cmd_id: 335
  element: FB
  edit_type: ADD
  fb {
    mod_id: 117
    task_id: 160
    fb_id: 180
    flib_name: "Task"
    fc_name: "EVENT"
  }
  pos {
    x: 60
    y: 42
  }
}
infos {
  cmd_id: 336
  element: LK
  edit_type: ADD
  lk {
    mod_id: 117
    task_id: 160
    lk_id: 181
    src_fb_id: 161
    src_pin_index: 4
    target_fb_id: 180
    target_pin_index: 1
  }
  pos {
    x: 39
    y: 41
  }
  pos {
    x: 49
    y: 41
  }
  pos {
    x: 49
    y: 49
  }
  pos {
    x: 60
    y: 49
  }
}
infos {
  cmd_id: 337
  element: FB
  edit_type: ADD
  fb {
    mod_id: 117
    task_id: 160
    fb_id: 182
    flib_name: "Task"
    fc_name: "TASK"
  }
  pos {
    x: 103
    y: 49
  }
}
infos {
  cmd_id: 338
  element: LK
  edit_type: ADD
  lk {
    mod_id: 117
    task_id: 160
    lk_id: 183
    src_fb_id: 180
    src_pin_index: 1
    target_fb_id: 182
    target_pin_index: 1
  }
  pos {
    x: 82
    y: 49
  }
  pos {
    x: 92
    y: 49
  }
  pos {
    x: 92
    y: 56
  }
  pos {
    x: 103
    y: 56
  }
}
infos {
  cmd_id: 339
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 160
    fb_id: 182
    pin_index: 2
    pin_val {
      v {
        t: T_STRING
        str: "M1"
      }
      tm: 1681733877141907373
    }
  }
}
infos {
  cmd_id: 340
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 160
    fb_id: 182
    pin_index: 2
    pin_val {
      v {
        t: T_STRING
        str: "Module 2"
      }
      tm: 1681733889351316286
    }
  }
}
infos {
  cmd_id: 341
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 160
    fb_id: 182
    pin_index: 3
    pin_val {
      v {
        t: T_STRING
        str: "IMAGES"
      }
      tm: 1681733898542799039
    }
  }
}
infos {
  cmd_id: 342
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 160
    fb_id: 182
    pin_index: 4
    pin_val {
      v {
        t: T_TIME
        tm: 4000
      }
      tm: 1681733904518837637
    }
  }
}
infos {
  cmd_id: 343
  element: PIN
  edit_type: SET
  pin {
    mod_id: 117
    task_id: 160
    fb_id: 182
    pin_index: 5
    pin_val {
      v {
        t: T_BOOL
        b: true
      }
      tm: 1681733907414977214
    }
  }
}
infos {
  cmd_id: 344
  element: FB
  edit_type: ADD
  fb {
    mod_id: 117
    task_id: 173
    fb_id: 184
    flib_name: "System"
    fc_name: "SYSSTATE"
  }
  pos {
    x: 20
    y: 18
  }
}