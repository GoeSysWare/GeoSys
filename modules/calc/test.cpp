#include "modules/calc/include/k_functionblock.h"
#include "modules/calc/include/k_lib.h"
#include "modules/calc/include/k_program.h"
#include "modules/calc/include/k_evdata.h"


#include <stdlib.h>
#include <stdio.h>
#include <memory>
#include <iostream>



int main(int argc, char *argv[])
{
	int size = sizeof(EVNode);
	lib_init();
	value_tm vtm;

	value_t *vt = vtm.mutable_v();
	vt->set_t(v_type::T_INT32);
	vt->set_i(1);
	vtm.set_tm(111);
	std::string str = vtm.SerializeAsString();
	int len = str.length();
	value_tm vtm2;
	vtm2.ParseFromString(str);

	ev_add(1,vtm.SerializeAsString(),"T1");
	vt->set_i(2);
	ev_add(2,vtm.SerializeAsString(),"T2");
	vt->set_i(3);
	ev_add(3,vtm.SerializeAsString(),"T3");
	vt->set_i(4);
	ev_add(4,vtm.SerializeAsString(),"T4");

	ev_dump();

	std::string lib_name = "Arithmetic";
	std::string fc_name = "ADD_INT";
	std::string fc_name_1 = "add_1";
	std::string fc_name_2 = "add_2";

	prog_t *prg = prg_new();

	prg_fbadd(prg,1,lib_name,fc_name,fc_name_1);
	prg_fbadd(prg,2,lib_name,fc_name,fc_name_2);

	prg_dump(prg);

	prg_viadd(prg,1,1,1,0);
	prg_viadd(prg,2,3,2,1);

	prg_voadd(prg,1,4,2,0);

	prg_lkadd(prg,1,1,0,2,0);

	fb_t * p_fb = prg_fbfind(prg, 1);

	vt->set_i(1);
	
    fb_setpin(p_fb, PININPUT, 1, vtm);


	prg_dump(prg);

	prg_exec(prg);
	ev_dump();

	prg_dump(prg);


	return 0;
	//prj_main_loop();
}