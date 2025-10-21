function draw_character_to_surface() {
	if surface_exists(playerparent.surf) 
	{
	    surface_set_target(playerparent.surf);    
	    draw_clear_alpha(c_blue,0);
	    //draw_sprite_ext(sprite_index,image_index,101,103,dir,image_yscale,image_angle,image_blend,image_alpha);
    
	    if draw_jet=1
	    {
	    if dir=1 {draw_sprite(s_tank_propul,spr_animt,94,90)}
	    if dir=-1 {draw_sprite(s_tank_propul,spr_animt,105,90)}
	    }

	    if draw_run=1
	    {
	    if dir=1 {draw_sprite(s_tank_propul,spr_animt,110,32)}
	    if dir=-1 {draw_sprite(s_tank_propul,spr_animt,110,32)}
	    }
	    pal_swap_set(my_pal_sprite,current_pal,false);
    
	    if instance_exists(Axl)
	    {
	        if shoting=1 or shoting=2
	        {
	        if sprite_index=zagarre 
	        {draw_sprite_ext(zagarres,index_agarre,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zagarreu
	        {draw_sprite_ext(zagarres,index_agarre,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zagarred
	        {draw_sprite_ext(zagarres,index_agarre,101,103,dir,1,0,c_white,image_alpha)}
	        }
	        if shoting=0
	        {
	        if sprite_index=zagarre
	        {draw_sprite_ext(zagarres,0,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zagarreu
	        {draw_sprite_ext(zagarres,0,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zagarred
	        {draw_sprite_ext(zagarres,0,101,103,dir,1,0,c_white,image_alpha)}
	        }
	    }
	    if instance_exists(MegamanX)
	    {
	    ///Draw With Unlimited Palette Swap     
        
	        /// ACA DIBUJAMOS A X
	        draw_sprite_ext(sprite_index,image_index,101,103,dir,image_yscale,image_angle,image_blend,image_alpha);
        
	        if global.ghead=1
	        {
	        if sprite_index=zstep or sprite_index=zstepS {draw_sprite_ext(step_ghead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstand {draw_sprite_ext(stand_ghead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstandS {draw_sprite_ext(stands_ghead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstandS2 {draw_sprite_ext(stands_c_ghead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zrun or sprite_index=zrunS {draw_sprite_ext(run_ghead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zjump or sprite_index=zjumpS {draw_sprite_ext(jump_ghead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zsit or sprite_index=zsitS {draw_sprite_ext(sit_ghead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zsitup or sprite_index=zsitupS {draw_sprite_ext(situp_ghead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zdash or sprite_index=zdashS {draw_sprite_ext(dash_ghead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwall or sprite_index=zwallS {draw_sprite_ext(wall_ghead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwall2 or sprite_index=zwall2S {draw_sprite_ext(wall2_ghead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zhurt {draw_sprite_ext(hurt_ghead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimb {draw_sprite_ext(climb_ghead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimb2 {draw_sprite_ext(climb2_ghead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimb3 {draw_sprite_ext(climb3_ghead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimbS {draw_sprite_ext(climbs_ghead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zdashup {draw_sprite_ext(dashup_ghead,-1,101,103,dir,1,0,c_white,image_alpha)}
        
	        if sprite_index=zfinta {draw_sprite_ext(fint_ghead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        //if sprite_index=ztele {draw_sprite_ext(out_ghead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zintro {draw_sprite_ext(intro_ghead,-1,101,103,dir,1,0,c_white,image_alpha)}
        
	        if sprite_index=zagarre {draw_sprite_ext(rappel_ghead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zagarres {draw_sprite_ext(rappel_ghead,-1,101,103,dir,1,0,c_white,image_alpha)}
			
	        }
			/*
	        if global.thead=1
	        {
	        if sprite_index=zstep or sprite_index=zstepS {draw_sprite_ext(step_thead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstand {draw_sprite_ext(stand_thead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstandS {draw_sprite_ext(stands_thead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstandS2 {draw_sprite_ext(stands_thead_c,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zrun or sprite_index=zrunS {draw_sprite_ext(run_thead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zjump or sprite_index=zjumpS {draw_sprite_ext(jump_thead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zsit or sprite_index=zsitS {draw_sprite_ext(sit_thead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zsitup or sprite_index=zsitupS {draw_sprite_ext(situp_thead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zdash or sprite_index=zdashS {draw_sprite_ext(dash_thead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwall or sprite_index=zwallS {draw_sprite_ext(wall_thead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwall2 or sprite_index=zwall2S {draw_sprite_ext(wall2_thead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zhurt {draw_sprite_ext(hurt_thead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimb {draw_sprite_ext(climb_thead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimb2 {draw_sprite_ext(climb2_thead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimb3 {draw_sprite_ext(climb3_thead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimbS {draw_sprite_ext(climbs_thead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zdashup {draw_sprite_ext(dashup_thead,-1,101,103,dir,1,0,c_white,image_alpha)}
        
	        if sprite_index=zfinta {draw_sprite_ext(fint_thead,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=ztele {draw_sprite_ext(out_thead,-1,101,103,dir,1,0,c_white,image_alpha)} 
	        if sprite_index=zintro {draw_sprite_ext(intro_thead,-1,101,103,dir,1,0,c_white,image_alpha)} 
	        }
        */
	        if global.gboots=1
	        {
	        if sprite_index=zstep or sprite_index=zstepS {draw_sprite_ext(step_gboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstand {draw_sprite_ext(stand_gboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstandS {draw_sprite_ext(stands_gboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstandS2 {draw_sprite_ext(stands_c_gboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zrun or sprite_index=zrunS {draw_sprite_ext(run_gboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zjump or sprite_index=zjumpS {draw_sprite_ext(jump_gboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zsit or sprite_index=zsitS {draw_sprite_ext(sit_gboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zsitup or sprite_index=zsitupS {draw_sprite_ext(situp_gboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zdash or sprite_index=zdashS {draw_sprite_ext(dash_gboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwall {draw_sprite_ext(wall_gboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwallS {draw_sprite_ext(wall_gboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwall2 {draw_sprite_ext(wall2_gboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwall2S {draw_sprite_ext(wall2_gboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zhurt {draw_sprite_ext(hurt_gboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimb {draw_sprite_ext(climb_gboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimb2 {draw_sprite_ext(climb2_gboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimb3 {draw_sprite_ext(climb3_gboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimbS {draw_sprite_ext(climbs_gboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zdashup {draw_sprite_ext(dashup_gboots,-1,101,103,dir,1,0,c_white,image_alpha)}

	        if sprite_index=zfinta {draw_sprite_ext(fint_gboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        //if sprite_index=ztele {draw_sprite_ext(out_gboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zintro {draw_sprite_ext(intro_gboots,-1,101,103,dir,1,0,c_white,image_alpha)}
			
	        if sprite_index=zagarres {draw_sprite_ext(rappel_gboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zagarre {draw_sprite_ext(rappel_gboots,-1,101,103,dir,1,0,c_white,image_alpha)}

	        }
	        if global.tboots=1
	        {
	        if sprite_index=zstep or sprite_index=zstepS {draw_sprite_ext(step_tboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstand {draw_sprite_ext(stand_tboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstandS {draw_sprite_ext(standS_tboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstandS2 {draw_sprite_ext(standS_tboots_c,-1,101,103,dir,1,0,c_white,image_alpha)}
	        //if sprite_index=zrun or sprite_index=zrunS {draw_sprite_ext(run_tboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zjump or sprite_index=zjumpS {draw_sprite_ext(jump_tboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zsit or sprite_index=zsitS {draw_sprite_ext(sit_tboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zsitup or sprite_index=zsitupS {draw_sprite_ext(situp_tboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        //if sprite_index=zdash or sprite_index=zdashS {draw_sprite_ext(dash_tboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwall {draw_sprite_ext(wall_tboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwallS {draw_sprite_ext(walls_tboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwall2 {draw_sprite_ext(wall2_tboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwall2S {draw_sprite_ext(wall2s_tboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zhurt {draw_sprite_ext(hurt_tboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimb {draw_sprite_ext(climb_tboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimb2 {draw_sprite_ext(climb2_tboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimb3 {draw_sprite_ext(climb3_tboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimbS {draw_sprite_ext(climbs_tboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zdashup {draw_sprite_ext(dashup_tboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        }
			/*
	        if global.garmor=1
	        {
	        if sprite_index=zstep {draw_sprite_ext(step_garmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstepS {draw_sprite_ext(steps_garmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstand {draw_sprite_ext(stand_garmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstandS {draw_sprite_ext(stands_garmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstandS2 {draw_sprite_ext(stands_garmor_c,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zrun {draw_sprite_ext(run_garmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zrunS {draw_sprite_ext(runs_garmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zjump {draw_sprite_ext(jump_garmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zjumpS {draw_sprite_ext(jumps_garmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zsit {draw_sprite_ext(sit_garmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zsitS {draw_sprite_ext(sits_garmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zsitup {draw_sprite_ext(situp_garmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zsitupS {draw_sprite_ext(situps_garmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zdash  {draw_sprite_ext(dash_garmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zdashS {draw_sprite_ext(dashs_garmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwall {draw_sprite_ext(wall_garmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwallS {draw_sprite_ext(walls_garmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwall2 {draw_sprite_ext(wall2_garmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwall2S {draw_sprite_ext(wall2s_garmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zhurt {draw_sprite_ext(hit_garmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimb {draw_sprite_ext(climb_garmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimb2 {draw_sprite_ext(climb2_garmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimb3 {draw_sprite_ext(climb3_garmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimbS {draw_sprite_ext(climbs_garmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zdashup {draw_sprite_ext(dashup_garmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        }
	        if global.tarmor=1
	        {
	        if sprite_index=zstep {draw_sprite_ext(step_tarmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstepS {draw_sprite_ext(steps_tarmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstand {draw_sprite_ext(stand_tarmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstandS {draw_sprite_ext(stands_tarmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstandS2 {draw_sprite_ext(stands_tarmor_c,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zrun {draw_sprite_ext(run_tarmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zrunS {draw_sprite_ext(runs_tarmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zjump {draw_sprite_ext(jump_tarmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zjumpS {draw_sprite_ext(jumps_tarmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zsit {draw_sprite_ext(sit_tarmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zsitS {draw_sprite_ext(sits_tarmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zsitup {draw_sprite_ext(situp_tarmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zsitupS {draw_sprite_ext(situps_tarmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zdash  {draw_sprite_ext(dash_tarmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zdashS {draw_sprite_ext(dashs_tarmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwall {draw_sprite_ext(wall_tarmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwallS {draw_sprite_ext(walls_tarmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwall2 {draw_sprite_ext(wall2_tarmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwall2S {draw_sprite_ext(wall2s_tarmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zhurt {draw_sprite_ext(hit_tarmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimb {draw_sprite_ext(climb_tarmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimb2 {draw_sprite_ext(climb2_tarmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimb3 {draw_sprite_ext(climb3_tarmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimbS {draw_sprite_ext(climbs_tarmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zdashup {draw_sprite_ext(dashup_tarmor,-1,101,103,dir,1,0,c_white,image_alpha)}
	        }
			*/
	        if global.gbuster=1
	        {
	        if sprite_index=zstep {draw_sprite_ext(step_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstepS {draw_sprite_ext(steps_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstand {draw_sprite_ext(stand_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstandS {draw_sprite_ext(stands_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstandS2 {draw_sprite_ext(stands_c_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zrun {draw_sprite_ext(run_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zrunS {draw_sprite_ext(runs_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zjump {draw_sprite_ext(jump_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zjumpS {draw_sprite_ext(jumps_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zsit {draw_sprite_ext(sit_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zsitS {draw_sprite_ext(sits_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zsitup  {draw_sprite_ext(situp_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zsitupS {draw_sprite_ext(situps_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zdash  {draw_sprite_ext(dash_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zdashS {draw_sprite_ext(dashs_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwall {draw_sprite_ext(wall_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwallS {draw_sprite_ext(walls_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwall2 {draw_sprite_ext(wall2_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwall2S {draw_sprite_ext(wall2s_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zhurt {draw_sprite_ext(hurt_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimb {draw_sprite_ext(climb_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimb2 {draw_sprite_ext(climb2_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimb3 {draw_sprite_ext(climb3_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimbS {draw_sprite_ext(climbs_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zdashup {draw_sprite_ext(dashup_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
        
			if sprite_index=zfinta {draw_sprite_ext(fint_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        //if sprite_index=ztele {draw_sprite_ext(out_gboots,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zintro {draw_sprite_ext(intro_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
		
	        if sprite_index=zagarres {draw_sprite_ext(rappels_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zagarre {draw_sprite_ext(rappel_gbuster,-1,101,103,dir,1,0,c_white,image_alpha)}

	        }
	        if global.tbuster=1
	        {
	        if sprite_index=zstep {draw_sprite_ext(step_tbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstepS {draw_sprite_ext(steps_tbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstand {draw_sprite_ext(stand_tbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstandS {draw_sprite_ext(stands_tbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zstandS2 {draw_sprite_ext(stands_tbuster_c,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zrun {draw_sprite_ext(run_tbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zrunS {draw_sprite_ext(runs_tbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zjump {draw_sprite_ext(jump_tbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zjumpS {draw_sprite_ext(jumps_tbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zsit {draw_sprite_ext(sit_tbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zsitS {draw_sprite_ext(sits_tbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zsitup  {draw_sprite_ext(situp_tbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zsitupS {draw_sprite_ext(situps_tbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zdash  {draw_sprite_ext(dash_tbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zdashS {draw_sprite_ext(dashs_tbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwall {draw_sprite_ext(wall_tbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwallS {draw_sprite_ext(walls_tbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwall2 {draw_sprite_ext(wall2_tbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zwall2S {draw_sprite_ext(wall2s_tbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zhurt {draw_sprite_ext(hurt_tbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimb {draw_sprite_ext(climb_tbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimb2 {draw_sprite_ext(climb2_tbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimb3 {draw_sprite_ext(climb3_tbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zclimbS {draw_sprite_ext(climbs_tbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        if sprite_index=zdashup {draw_sprite_ext(dashup_tbuster,-1,101,103,dir,1,0,c_white,image_alpha)}
	        }
	    }
	    else 
	    {draw_sprite_ext(sprite_index,image_index,101,103,dir,image_yscale,image_angle,image_blend,image_alpha);}
	    pal_swap_reset();

	 surface_reset_target();
	}



}
