--Copyright (C) 2007 <SWGEmu>

--This File is part of Core3.

--This program is free software; you can redistribute
--it and/or modify it under the terms of the GNU Lesser
--General Public License as published by the Free Software
--Foundation; either version 2 of the License,
--or (at your option) any later version.

--This program is distributed in the hope that it will be useful,
--but WITHOUT ANY WARRANTY; without even the implied warranty of
--MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
--See the GNU Lesser General Public License for
--more details.

--You should have received a copy of the GNU Lesser General
--Public License along with this program; if not, write to
--the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

--Linking Engine3 statically or dynamically with other modules
--is making a combined work based on Engine3.
--Thus, the terms and conditions of the GNU Lesser General Public License
--cover the whole combination.

--In addition, as a special exception, the copyright holders of Engine3
--give you permission to combine Engine3 program with free software
--programs or libraries that are released under the GNU LGPL and with
--code included in the standard release of Core3 under the GNU LGPL
--license (or modified versions of such code, with unchanged license).
--You may copy and distribute such a system following the terms of the
--GNU LGPL for Engine3 and the licenses of the other code concerned,
--provided that you include the source code of that other code when
--and as the GNU LGPL requires distribution of source code.

--Note that people who make modified versions of Engine3 are not obligated
--to grant this special exception for their modified versions;
--it is their choice whether to do so. The GNU Lesser General Public License
--gives permission to release a modified version without this exception;
--this exception also makes it possible to release a modified version
--which carries forward this exception.

-----------------------------------
--GENERAL PLAYER SETTINGS
-----------------------------------

onlineCharactersPerAccount = 2 --How many characters are allowed online from a single account.
allowSameAccountPvpRatingCredit = 0

--Blue frog / GM buff values
performanceBuff = 1000
medicalBuff = 1900
performanceDuration = 7200 -- in seconds
medicalDuration = 7200 -- in seconds

--Sets the experience multiplier while grouped
groupExpMultiplier = 1.2

--Sets a global experience multiplier
globalExpMultiplier = 1.0

--Sets the base number of control devices of each type that a player can have in their datapad at once
--For creature pets, A Creature Handler will have the base number + their stored pets skill mod as limit
baseStoredCreaturePets = 2
baseStoredFactionPets = 3
baseStoredDroids = 5
baseStoredVehicles = 5
baseStoredShips = 5

-----------------------------------
--VETERAN REWARDS CONFIG
-----------------------------------
veteranRewardMilestones = {5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100, 120, 150, 180, 210, 240, 270, 300, 330, 360, 365} --days, must be sorted low to high

veteranRewardAdditionalMilestones = 365 --frequency, in days, of additional milestones (beyond the established ones)

veteranRewards = {

		-- 5 Day Rewards
		{templateFile = "object/tangible/tcg/series1/consumable_hans_hydrospanner.iff", milestone=5, oneTime=false, description="hans hydrospanner"},
		{templateFile = "object/tangible/tcg/series1/consumable_keelkana_tooth.iff", milestone=5, oneTime=false, description="keelkana tooth"},
		{templateFile = "object/tangible/tcg/series1/consumable_lepese_dictionary.iff", milestone=5, oneTime=false, description="lepese dictionary"},
		{templateFile = "object/tangible/tcg/series1/consumable_mandalorian_strongbox.iff", milestone=5, oneTime=false, description="mandalorian strongbox"},
		{templateFile = "object/tangible/tcg/series1/consumable_nuna_ball_advertisement.iff", milestone=5, oneTime=false, description=""},

		-- 10 Day Rewards
		{templateFile = "object/tangible/tcg/series1/consumable_radtrooper_badge.iff", milestone=10, oneTime=false, description="radtrooper badge"},
		{templateFile = "object/tangible/tcg/series1/consumable_versafunction88_datapad.iff", milestone=10, oneTime=false, description="versafunction88 datpad"},
		{templateFile = "object/tangible/tcg/series1/decorative_bas_relief.iff", milestone=10, oneTime=false, description="bas relief"},
		{templateFile = "object/tangible/tcg/series1/decorative_chon_bust.iff", milestone=10, oneTime=false, description="chon bust"},
		{templateFile = "object/tangible/tcg/series1/decorative_computer_console_01.iff", milestone=10, oneTime=false, description="computer console 01"},
		
		-- 15 Day Rewards
		{templateFile = "object/tangible/tcg/series1/decorative_computer_console_02.iff", milestone=15, oneTime=false, description="computer console 02"},
		{templateFile = "object/tangible/tcg/series1/decorative_display_case_01.iff", milestone=15, oneTime=false, description="display case 01"},
		{templateFile = "object/tangible/tcg/series1/decorative_display_case_02.iff", milestone=15, oneTime=false, description="display case 02"},
		{templateFile = "object/tangible/tcg/series1/decorative_dooku_bust.iff", milestone=15, oneTime=false, description="dooku bust"},
		{templateFile = "object/tangible/tcg/series1/decorative_drink_dispenser.iff", milestone=15, oneTime=false, description="drink dispenser"},
		
		-- 20 Day Rewards
		{templateFile = "object/tangible/tcg/series1/decorative_fish_tank.iff", milestone=20, oneTime=false, description="fish tank"},
		{templateFile = "object/tangible/tcg/series1/decorative_indoor_fountain_01.iff", milestone=20, oneTime=false, description="indoor fountain 01"},
		{templateFile = "object/tangible/tcg/series1/decorative_indoor_fountain_02.iff", milestone=20, oneTime=false, description="indoor fountain 02"},
		{templateFile = "object/tangible/tcg/series1/decorative_indoor_garden_01.iff", milestone=20, oneTime=false, description="indoor garden 01"},
		{templateFile = "object/tangible/tcg/series1/decorative_indoor_garden_02.iff", milestone=20, oneTime=false, description="indoor garden 02"},
		
		-- 25 Day Rewards
		{templateFile = "object/tangible/tcg/series1/decorative_jedi_library_bookshelf.iff", milestone=25, oneTime=false, description="jedi library bookshelf"},
		{templateFile = "object/tangible/tcg/series1/decorative_painting_alliance_propaganda.iff", milestone=25, oneTime=false, description="painting allaince propaganda"},
		{templateFile = "object/tangible/tcg/series1/decorative_painting_darth_vader.iff", milestone=25, oneTime=false, description="painting darth vader"},
		{templateFile = "object/tangible/tcg/series1/decorative_painting_imperial_propaganda.iff", milestone=25, oneTime=false, description="painting imperial propaganda"},
		{templateFile = "object/tangible/tcg/series1/decorative_painting_jedi_crest.iff", milestone=25, oneTime=false, description="painting jedi crest"},
		
		-- 30 Day Rewards
		{templateFile = "object/tangible/tcg/series1/decorative_painting_trooper.iff", milestone=30, oneTime=false, description="painitng trooper"},
		{templateFile = "object/tangible/tcg/series1/decorative_statuette_darth_vader.iff", milestone=30, oneTime=false, description="statuette darth vader"},
		{templateFile = "object/tangible/tcg/series1/decorative_statuette_princess_leia.iff", milestone=30, oneTime=false, description="statuette princess leia"},
		{templateFile = "object/tangible/tcg/series1/greeter_deed_bomarr_monk.iff", milestone=30, oneTime=false, description="greeter deed bomarr monk"},
		{templateFile = "object/tangible/tcg/series1/greeter_deed_ewok.iff", milestone=30, oneTime=false, description="greeter deed ewok"},
		{templateFile = "object/tangible/veteran_reward/harvester.iff", milestone=30, oneTime=true, description="@veteran_new:poweredharvester"},
		{templateFile = "object/tangible/veteran_reward/data_terminal_s1.iff", milestone=30, oneTime=false, description="@veteran_new:dataterminal1"},
		{templateFile = "object/tangible/veteran_reward/data_terminal_s2.iff", milestone=30, oneTime=false, description="@veteran_new:dataterminal2"},
		{templateFile = "object/tangible/veteran_reward/data_terminal_s3.iff", milestone=30, oneTime=false, description="@veteran_new:dataterminal3"},
		{templateFile = "object/tangible/veteran_reward/data_terminal_s4.iff", milestone=30, oneTime=false, description="@veteran_new:dataterminal4"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_protocol_droid_toy.iff", milestone=30, oneTime=false, description="@veteran_new:mini_protocoldroid"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_r2_toy.iff", milestone=30, oneTime=false, description="@veteran_new:mini_r2"},
		
		-- 35 Day Rewards
		{templateFile = "object/tangible/tcg/series1/greeter_deed_gungan.iff", milestone=35, oneTime=false, description="greeter deed gugan"},
		{templateFile = "object/tangible/tcg/series1/greeter_deed_jawa.iff", milestone=35, oneTime=false, description="greeter deed jawa"},
		{templateFile = "object/tangible/tcg/series1/greeter_deed_meatlump.iff", milestone=35, oneTime=false, description="greeter deed meatlump"},
		{templateFile = "object/tangible/tcg/series1/greeter_deed_serving_droid.iff", milestone=35, oneTime=false, description="greeter deed serving droid"},
		{templateFile = "object/tangible/tcg/series1/house_capacity_beru_whitesuns_cookbook.iff", milestone=35, oneTime=false, description="house capacity beru whitesuns cookbook"},
		
		-- 40 Day Rewards
		{templateFile = "object/tangible/tcg/series1/house_capacity_housecleaning_kit.iff", milestone=40, oneTime=false, description="house capacity housecleaning kit"},
		{templateFile = "object/tangible/tcg/series1/house_capacity_organizational_datapad.iff", milestone=40, oneTime=false, description="house capacity organizational datapad"},
		{templateFile = "object/tangible/tcg/series1/reuseable_buff_item_gorax_ear.iff", milestone=40, oneTime=false, description="buff item gorax ear"},
		{templateFile = "object/tangible/tcg/series1/reuseable_buff_item_morgukai_shadow_scroll.iff", milestone=40, oneTime=false, description="buff item morgukai shadow scroll"},
		{templateFile = "object/tangible/tcg/series1/reuseable_buff_item_sanyassan_skull.iff", milestone=40, oneTime=false, description="buff item sanyassan skull"},
		
		-- 45 Day Rewards
		{templateFile = "object/tangible/tcg/series1/reuseable_buff_item_tusken_talisman.iff", milestone=45, oneTime=false, description="buff item tusken talisman"},
		{templateFile = "object/tangible/tcg/series1/target_creature_acklay_display.iff", milestone=45, oneTime=false, description="acklay display"},
		{templateFile = "object/tangible/tcg/series1/target_creature_deed.iff", milestone=45, oneTime=false, description="creature deed"},
		{templateFile = "object/tangible/tcg/series1/target_dummy_deed.iff", milestone=45, oneTime=false, description="target dummy deed"},
		{templateFile = "object/tangible/tcg/series1/vendor_deed_ewok.iff", milestone=45, oneTime=false, description="vendor ewok deed"},
		
		-- 50 Day Rewards
		{templateFile = "object/tangible/tcg/series1/vendor_deed_gungan.iff", milestone=50, oneTime=false, description="vendor deed gungan"},
		{templateFile = "object/tangible/tcg/series1/vendor_deed_jawa.iff", milestone=50, oneTime=false, description="vendor deed jawa"},
		{templateFile = "object/tangible/tcg/series1/vendor_deed_meatlump.iff", milestone=50, oneTime=false, description="vendor deed meatlump"},
		{templateFile = "object/tangible/tcg/series1/video_game_table.iff", milestone=50, oneTime=false, description="video game table"},
		{templateFile = "object/tangible/tcg/series1/wearable_arc170_flightsuit.iff", milestone=50, oneTime=false, description="arc170 flightsuit"},
		
		-- 55 Day Rewards
		{templateFile = "object/tangible/tcg/series1/wearable_black_corset_dress.iff", milestone=55, oneTime=false, description="black corset dress"},
		{templateFile = "object/tangible/tcg/series1/wearable_glowing_blue_eyes.iff", milestone=55, oneTime=false, description="glowing blue eyes"},
		{templateFile = "object/tangible/tcg/series1/wearable_glowing_red_eyes.iff", milestone=55, oneTime=false, description="glowing red eyes"},
		{templateFile = "object/tangible/tcg/series1/wearable_imperial_flightsuit.iff", milestone=55, oneTime=false, description="imperial flightsuit"},
		{templateFile = "object/tangible/tcg/series1/wearable_naboo_jacket.iff", milestone=55, oneTime=false, description="naboo jacket"},
		
		-- 60 Day Rewards
		{templateFile = "object/tangible/tcg/series1/wearable_orange_flightsuit.iff", milestone=60, oneTime=false, description="orange flightsuit"},
		{templateFile = "object/tangible/tcg/series1/wearable_orange_flightsuit.iff", milestone=60, oneTime=false, description="orange flightsuit"},
		{templateFile = "object/tangible/tcg/series3/combine_object_boba_fett_statue.iff", milestone=60, oneTime=false, description="boba fett statue"},
		{templateFile = "object/tangible/tcg/series3/combine_object_jango_fett_memorial_statue.iff", milestone=60, oneTime=false, description="jango fett memorial statue"},
		{templateFile = "object/tangible/tcg/series3/combine_object_mandalorian_skull_banner.iff", milestone=60, oneTime=false, description="mandalorian skull banner"},
		{templateFile = "object/tangible/veteran_reward/frn_couch_falcon_corner_s01.iff", milestone=60, oneTime=false, description="@veteran_new:falconcouch"},
		{templateFile = "object/tangible/veteran_reward/frn_couch_falcon_section_s01.iff", milestone=60, oneTime=false, description="@veteran_new:falconchair"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_tie_fighter_toy.iff", milestone=60, oneTime=false, description="@veteran_new:mini_tiefighter"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_x_wing_toy.iff", milestone=60, oneTime=false, description="@veteran_new:mini_xwing"},
		
		-- 65 Day Rewards
		{templateFile = "object/tangible/tcg/series3/combine_object_merr_sonn_jt12_jetpack_blueprints.iff", milestone=65, oneTime=false, description="merr sonn jt12 jetpack blueprints"},
		{templateFile = "object/tangible/tcg/series3/consumable_general_grievous_gutsack.iff", milestone=65, oneTime=false, description="general grievous gutsack"},
		{templateFile = "object/tangible/tcg/series3/consumable_hh_15_torpedo_warhead.iff", milestone=65, oneTime=false, description="hh 15 torpedo warhead"},
		{templateFile = "object/tangible/tcg/series3/consumable_wookiee_ceremonial_pipe.iff", milestone=65, oneTime=false, description="wookie ceremonial pipe"},
		{templateFile = "object/tangible/tcg/series3/decorative_boba_fett_statue.iff", milestone=65, oneTime=false, description="boba fett statue"},
		
		-- 70 Day Rewards
		{templateFile = "object/tangible/tcg/series3/decorative_darth_vader_obi_wan_diorama.iff", milestone=75, oneTime=false, description="darth vader obi wan diorama"},
		{templateFile = "object/tangible/tcg/series3/decorative_empal_surecon_center_medical_table.iff", milestone=75, oneTime=false, description="surecon center medical table"},
		{templateFile = "object/tangible/tcg/series3/decorative_emperor_palpatine_statuette.iff", milestone=75, oneTime=false, description="emperor palpatine statuette"},
		{templateFile = "object/tangible/tcg/series3/decorative_hoth_travel_advertisement.iff", milestone=75, oneTime=false, description="hot trvel adertisement"},
		{templateFile = "object/tangible/tcg/series3/decorative_jango_fett_memorial_statue.iff", milestone=75, oneTime=false, description="jango fett memorial statue"},
		
		-- 75 Day Rewards
		{templateFile = "object/tangible/tcg/series3/decorative_mandalorian_skull_banner.iff", milestone=75, oneTime=false, description="mandalorian skull banner"},
		{templateFile = "object/tangible/tcg/series3/decorative_merr_sonn_jt12_jetpack_blueprints.iff", milestone=75, oneTime=false, description="merr sonn jt12 jetpack blueprint"},
		{templateFile = "object/tangible/tcg/series3/decorative_mustafar_travel_advertisement.iff", milestone=75, oneTime=false, description="mustafar travel advertisement"},
		{templateFile = "object/tangible/tcg/series3/decorative_swg_tcg_painting.iff", milestone=75, oneTime=false, description="swg tcg painting"},
		{templateFile = "object/tangible/tcg/series3/decorative_wompa_skin_rug.iff", milestone=75, oneTime=false, description="wompa skin rug"},
		
		-- 80 Day Rewards
		{templateFile = "object/tangible/tcg/series3/reuseable_buff_gargans_hands_of_seduction.iff", milestone=85, oneTime=false, description="buff gargans hands of seduction"},
		{templateFile = "object/tangible/tcg/series3/wearable_guise_of_the_master.iff", milestone=85, oneTime=false, description="guise of the master"},
		{templateFile = "object/tangible/tcg/series4/consumable_ball_of_peace.iff", milestone=85, oneTime=false, description="ball of peace"},
		{templateFile = "object/tangible/tcg/series4/consumable_falleens_fist.iff", milestone=85, oneTime=false, description="falleens fist"},
		{templateFile = "object/tangible/tcg/series4/consumable_t16_toy.iff", milestone=85, oneTime=false, description="t16 toy"},
		
		-- 85 Day Rewards
		{templateFile = "object/tangible/tcg/series4/decorative_chewbacca_statuette.iff", milestone=85, oneTime=false, description="chewbacca statuette"},
		{templateFile = "object/tangible/tcg/series4/decorative_child_bed_01.iff", milestone=85, oneTime=false, description="child bed 01"},
		{templateFile = "object/tangible/tcg/series4/decorative_droid_oil_bath.iff", milestone=85, oneTime=false, description="droid oil bath"},
		{templateFile = "object/tangible/tcg/series4/decorative_han_solo_statuette.iff", milestone=85, oneTime=false, description="han solo statuette"},
		{templateFile = "object/tangible/tcg/series4/decorative_kashyyyk_travel_advertisement.iff", milestone=85, oneTime=false, description="kashyyyk travel advertisment"},
		
		-- 90 Day Rewards
		{templateFile = "object/tangible/tcg/series4/decorative_leia_r2_diorama.iff", milestone=95, oneTime=false, description="leia r2 diorama"},
		{templateFile = "object/tangible/tcg/series4/decorative_medical_table_01.iff", milestone=95, oneTime=false, description="medical table 01"},
		{templateFile = "object/tangible/tcg/series4/decorative_stuffed_tauntaun.iff", milestone=95, oneTime=false, description="stuffed tauntaun"},
		{templateFile = "object/tangible/tcg/series4/decorative_stuffed_wampa.iff", milestone=95, oneTime=false, description="stuffed wampa"},
		{templateFile = "object/tangible/tcg/series4/decorative_tatooine_travel_advertisement.iff", milestone=95, oneTime=false, description="tatooine travel advertisement"},
		{templateFile = "object/tangible/deed/vehicle_deed/speederbike_flash_deed.iff", milestone=90, oneTime=true},
		{templateFile = "object/tangible/wearables/goggles/goggles_s01.iff", milestone=90, oneTime=false, description="Special Edition Goggles Style 1"},
		{templateFile = "object/tangible/wearables/goggles/goggles_s02.iff", milestone=90, oneTime=false, description="Special Edition Goggles Style 2"},
		{templateFile = "object/tangible/wearables/goggles/goggles_s03.iff", milestone=90, oneTime=false, description="Special Edition Goggles Style 3"},
		{templateFile = "object/tangible/wearables/goggles/goggles_s04.iff", milestone=90, oneTime=false, description="Special Edition Goggles Style 4"},
		{templateFile = "object/tangible/wearables/goggles/goggles_s05.iff", milestone=90, oneTime=false, description="Special Edition Goggles Style 5"},
		{templateFile = "object/tangible/wearables/goggles/goggles_s06.iff", milestone=90, oneTime=false, description="Special Edition Goggles Style 6"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_darth_vader_toy.iff", milestone=90, oneTime=false, description="@veteran_new:mini_darthvader"},
		
		-- 95 Day Rewards
		{templateFile = "object/tangible/tcg/series4/decorative_tauntaun_ride.iff", milestone=95, oneTime=false, description="tauntaun ride"},
		{templateFile = "object/tangible/tcg/series4/decorative_tcg_rug_01.iff", milestone=95, oneTime=false, description="tcg rug 01"},
		{templateFile = "object/tangible/tcg/series4/video_game_table.iff", milestone=95, oneTime=false, description="video game table"},
		{templateFile = "object/tangible/tcg/series4/wearable_chandrilan_dress.iff", milestone=95, oneTime=false, description="chandrilan dress"},
		{templateFile = "object/tangible/tcg/series4/wearable_guise_of_vapaad.iff", milestone=95, oneTime=false, description="guise of vapaad"},
		
		-- 100 Day Rewards
		{templateFile = "object/tangible/tcg/series5/wearable_ceremonial_travel_headdress.iffc", milestone=100, oneTime=false, description="ceremonial travel deaddress"},
		{templateFile = "object/tangible/tcg/series5/varactyl_armor_statue.iff", milestone=100, oneTime=false, description="varactyl armor statue"},
		{templateFile = "object/tangible/tcg/series5/nightsister_backpack.iff", milestone=100, oneTime=false, description="nightsister backpack"},
		{templateFile = "object/tangible/tcg/series5/in_home_rain_storm.iff", milestone=100, oneTime=false, description="in home rain storm"},
		{templateFile = "object/tangible/tcg/series5/food_station_jabbas_roasting_spit.iff", milestone=100, oneTime=false, description="food station jabbas roasting spit"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/awing.iff", milestone=100, oneTime=false, description=""},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/black_sun_fighter_heavy_01.iff", milestone=100, oneTime=false, description="black sun heavy 01"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/black_sun_fighter_heavy_02.iff", milestone=100, oneTime=false, description="black sun heavy 02"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/black_sun_fighter_light_01.iff", milestone=100, oneTime=false, description="black sun light 01"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/black_sun_fighter_light_02.iff", milestone=100, oneTime=false, description="black sun light 02"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/black_sun_fighter_medium_01.iff", milestone=100, oneTime=false, description="black sun medium 01"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/black_sun_fighter_medium_02.iff", milestone=100, oneTime=false, description="black sun medium 02"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/black_sun_transport.iff", milestone=100, oneTime=false, description="black sun transport"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/bwing.iff", milestone=100, oneTime=false, description="bwing"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/grievous_starship.iff", milestone=100, oneTime=false, description="grevious starship"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/hutt_fighter_heavy_01.iff", milestone=100, oneTime=false, description="hutt fighter heavy 01"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/hutt_fighter_heavy_02.iff", milestone=100, oneTime=false, description="hutt fighter heavy 02"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/hutt_fighter_heavy_03.iff", milestone=100, oneTime=false, description="hutt fighter heavy 03"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/hutt_fighter_light_02.iff", milestone=100, oneTime=false, description="hutt fighter light 01"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/hutt_fighter_medium_01.iff", milestone=100, oneTime=false, description="hutt fighter medium 01"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/hutt_fighter_medium_02.iff", milestone=100, oneTime=false, description="hutt fighter medium 02"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/imperial_gunboat.iff", milestone=100, oneTime=false, description="imperial gunboat"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/jedi_fighter.iff", milestone=100, oneTime=false, description="jedi fighter"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/kse_firespray.iff", milestone=100, oneTime=false, description="kse firespray "},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/naboo_n1.iff", milestone=100, oneTime=false, description="naboo n1"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/rebel_gunboat.iff", milestone=100, oneTime=false, description="rebel gunboat"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/sorosuub.iff", milestone=100, oneTime=false, description="sorosuub"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/tie_advanced.iff", milestone=100, oneTime=false, description="tie advanced"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/tie_aggressor.iff", milestone=100, oneTime=false, description="tie aggresor"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/tie_bomber.iff", milestone=100, oneTime=false, description="tie bomber"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/tie_fighter.iff", milestone=100, oneTime=false, description="tie fighter"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/tie_fighter_in.iff", milestone=100, oneTime=false, description="tie fighter in"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/tie_fighter_modified.iff", milestone=100, oneTime=false, description="tie fighter modified"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/tie_interceptor.iff", milestone=100, oneTime=false, description="tie interceptor"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/tie_interceptor_imperial_guard.iff", milestone=100, oneTime=false, description="tie interceptor imperial guard"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/tie_oppressor.iff", milestone=100, oneTime=false, description="tie oppressor"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/vt49_decimator.iff", milestone=100, oneTime=false, description="vt49 decimator"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/vwing.iff", milestone=100, oneTime=false, description="vwing"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/xwing.iff", milestone=100, oneTime=false, description="xwing"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/y8.iff", milestone=100, oneTime=false, description="y8"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/ykl37r.iff", milestone=100, oneTime=false, description="yk137"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/yt1300.iff", milestone=100, oneTime=false, description="yt1300"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/yt2400.iff", milestone=100, oneTime=false, description="yt2400"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/ywing.iff", milestone=100, oneTime=false, description="ywing"},
		{templateFile = "object/tangible/tcg/series5/hangar_ships/z95.iff", milestone=100, oneTime=false, description="z95"},
		
		-- 120 Day Rewards
		{templateFile = "object/tangible/veteran_reward/frn_tech_console_sectional_a.iff", milestone=120, oneTime=false, description="@veteran_new:techconsole_a"},
		{templateFile = "object/tangible/veteran_reward/frn_tech_console_sectional_b.iff", milestone=120, oneTime=false, description="@veteran_new:techconsole_b"},
		{templateFile = "object/tangible/veteran_reward/frn_tech_console_sectional_c.iff", milestone=120, oneTime=false, description="@veteran_new:techconsole_c"},
		{templateFile = "object/tangible/veteran_reward/frn_tech_console_sectional_d.iff", milestone=120, oneTime=false, description="@veteran_new:techconsole_d"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_jabba_toy.iff", milestone=120, oneTime=false, description="@veteran_new:mini_jabba"},
		{templateFile = "object/tangible/veteran_reward/frn_vet_stormtrooper_toy.iff", milestone=120, oneTime=false, description="@veteran_new:mini_stormtrooper"},
		-- 150 Day Rewards
		{templateFile = "object/tangible/camp/camp_spit_s2.iff", milestone=150, oneTime=false, description="Camp Center (Small)"},
		{templateFile = "object/tangible/camp/camp_spit_s3.iff", milestone=150, oneTime=false, description="Camp Center (Large)"},
		{templateFile = "object/tangible/furniture/tatooine/frn_tato_vase_style_01.iff", milestone=150, oneTime=false, description="Gold Ornamental Vase (Style 1)"},
		{templateFile = "object/tangible/furniture/tatooine/frn_tato_vase_style_02.iff", milestone=150, oneTime=false, description="Gold Ornamental Vase (Style 2)"},
		{templateFile = "object/tangible/furniture/decorative/foodcart.iff", milestone=150, oneTime=false, description="Foodcart"},
		{templateFile = "object/tangible/furniture/all/frn_bench_generic.iff", milestone=150, oneTime=false, description="Park Bench"},
		-- 180 Day Rewards
		{templateFile = "object/tangible/furniture/decorative/professor_desk.iff", milestone=180, oneTime=false, description="Professor Desk"},
		{templateFile = "object/tangible/furniture/decorative/diagnostic_screen.iff", milestone=180, oneTime=false, description="@frn_n:diagnostic_screen"},
		{templateFile = "object/tangible/furniture/all/frn_all_plant_potted_lg_s2.iff", milestone=180, oneTime=false, description="Large Potted Plant (Style 2)"},
		{templateFile = "object/tangible/furniture/all/frn_all_plant_potted_lg_s3.iff", milestone=180, oneTime=false, description="Large Potted Plant (Style 3)"},
		{templateFile = "object/tangible/furniture/all/frn_all_plant_potted_lg_s4.iff", milestone=180, oneTime=false, description="Large Potted Plant (Style 4)"},
		-- 210 Day Rewards
		{templateFile = "object/tangible/furniture/modern/bar_counter_s1.iff", milestone=210, oneTime=false, description="Bar Countertop"},
		{templateFile = "object/tangible/furniture/modern/bar_piece_curve_s1.iff", milestone=210, oneTime=false, description="Bar Countertop (Curved, Style 1)"},
		{templateFile = "object/tangible/furniture/modern/bar_piece_curve_s2.iff", milestone=210, oneTime=false, description="Bar Countertop (Curved, Style 2)"},
		{templateFile = "object/tangible/furniture/modern/bar_piece_straight_s1.iff", milestone=210, oneTime=false, description="Bar Countertop (Straight, Style 1)"},
		{templateFile = "object/tangible/furniture/modern/bar_piece_straight_s2.iff", milestone=210, oneTime=false, description="Bar Countertop (Straight, Style 2)"},
		-- 240 Day Rewards
		{templateFile = "object/tangible/furniture/all/frn_all_table_s01.iff", milestone=240, oneTime=false, description="Round Cantina Table (Style 1)"},
		{templateFile = "object/tangible/furniture/all/frn_all_table_s02.iff", milestone=240, oneTime=false, description="Round Cantina Table (Style 2)"},
		{templateFile = "object/tangible/furniture/all/frn_all_table_s03.iff", milestone=240, oneTime=false, description="Round Cantina Table (Style 3)"},
		{templateFile = "object/tangible/furniture/tatooine/frn_tatt_chair_cantina_seat_2.iff", milestone=240, oneTime=false, description="Large Cantina Sofa"},
		{templateFile = "object/tangible/furniture/tatooine/frn_tato_cafe_parasol.iff", milestone=240, oneTime=false, description="@frn_n:frn_tato_cafe_parasol"},
		-- 270 Day Rewards
		{templateFile = "object/tangible/furniture/modern/rug_oval_m_s02.iff", milestone=270, oneTime=false, description="Medium Oval Rug"},
		{templateFile = "object/tangible/furniture/modern/rug_oval_sml_s01.iff", milestone=270, oneTime=false, description="Small Oval Rug"},
		{templateFile = "object/tangible/furniture/modern/rug_rect_m_s01.iff", milestone=270, oneTime=false, description="Medium Rectangular Rug"},
		{templateFile = "object/tangible/furniture/modern/rug_rect_sml_s01.iff", milestone=270, oneTime=false, description="Small Rectangular Rug"},
		{templateFile = "object/tangible/furniture/modern/rug_rnd_m_s01.iff", milestone=270, oneTime=false, description="Medium Round Rug"},
		{templateFile = "object/tangible/furniture/modern/rug_rnd_sml_s01.iff", milestone=270, oneTime=false, description="Small Round Rug"},
		-- 300 Day Rewards
		{templateFile = "object/tangible/loot/misc/loot_skull_bith.iff", milestone=300, oneTime=false, description="A Bith Skull"},
		{templateFile = "object/tangible/loot/misc/loot_skull_human.iff", milestone=300, oneTime=false, description="A Human Skull"},
		{templateFile = "object/tangible/loot/misc/loot_skull_ithorian.iff", milestone=300, oneTime=false, description="A Ithorian Skull"},
		{templateFile = "object/tangible/loot/misc/loot_skull_thune.iff", milestone=300, oneTime=false, description="A Thune Skull"},
		{templateFile = "object/tangible/loot/misc/loot_skull_voritor.iff", milestone=300, oneTime=false, description="A Voritor Lizard Skull"},
		{templateFile = "object/tangible/wearables/helmet/helmet_s06.iff", milestone=300, oneTime=true, description="Rebel Endor Helmet"},
		-- 330 Day Rewards
		{templateFile = "object/tangible/furniture/modern/rug_rect_lg_s01.iff", milestone=330, oneTime=false, description="Large Rectangular Rug (Style 1)"},
		{templateFile = "object/tangible/furniture/modern/rug_rect_lg_s02.iff", milestone=330, oneTime=false, description="Large Rectangular Rug (Style 2)"},
		{templateFile = "object/tangible/furniture/modern/rug_oval_lg_s01.iff", milestone=330, oneTime=false, description="Large Oval Rug"},
		{templateFile = "object/tangible/furniture/modern/rug_rnd_lg_s01.iff", milestone=330, oneTime=false, description="Large Round Rug"},
		{templateFile = "object/tangible/furniture/all/frn_all_desk_map_table.iff", milestone=330, oneTime=false, description="Round Data Terminal"},
		-- 360 Day Rewards
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_01.iff", milestone=360, oneTime=false, description="Painting: Cast Wing in Flight"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_02.iff", milestone=360, oneTime=false, description="Painting: Decimator"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_03.iff", milestone=360, oneTime=false, description="Painting: Tatooine Dune Speeder"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_04.iff", milestone=360, oneTime=false, description="Painting: Weapon of War"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_05.iff", milestone=360, oneTime=false, description="Painting: Fighter Study"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_06.iff", milestone=360, oneTime=false, description="Painting: Hutt Greed"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_07.iff", milestone=360, oneTime=false, description="Painting: Smuggler's Run"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_08.iff", milestone=360, oneTime=false, description="Painting: Imperial Oppression (TIE Oppressor)"},
		{templateFile = "object/tangible/veteran_reward/one_year_anniversary/painting_09.iff", milestone=360, oneTime=false, description="Painting: Emperor's Eyes (TIE Sentinel)"},
		{templateFile = "object/tangible/wearables/armor/nightsister/armor_nightsister_bicep_r_s01.iff", milestone=360, oneTime=true, description="Nightsister Melee Armguard"},
		{templateFile = "object/tangible/veteran_reward/resource.iff", milestone=360, oneTime=true, description="@veteran_new:resourcecrate"},
		-- 365 Day Rewards
		{templateFile = "object/tangible/furniture/modern/rug_rect_lg_s01.iff", milestone=365, oneTime=false, description="Large Rectangular Rug (Style 1)"},
		{templateFile = "object/tangible/furniture/modern/rug_rect_lg_s02.iff", milestone=365, oneTime=false, description="Large Rectangular Rug (Style 2)"},
}

-- { "stringId", "songFilePath" }
jukeboxSongs = {
	{ "@event_perk_jukebox_songs:emperors_theme", "sound/music_emperor_theme_loop.snd" },
	{ "@event_perk_jukebox_songs:chamber_music", "sound/music_starport_a_loop.snd" },
	{ "@event_perk_jukebox_songs:hard_rock", "sound/music_starport_b_loop.snd" },
	{ "@event_perk_jukebox_songs:theed_palace", "sound/music_theed_palace_loop.snd" },
	{ "@event_perk_jukebox_songs:medley", "sound/music_autorun_loop.snd" },
	{ "@event_perk_jukebox_songs:otoh_gunga", "sound/music_otoh_gunga_loop.snd" },
	{ "@event_perk_jukebox_songs:star_wars_intro", "sound/music_intro_loop.snd" },
	{ "@event_perk_jukebox_songs:celeb_phantom_menace", "sound/music_celebration_a_loop.snd" },
	{ "@event_perk_jukebox_songs:celeb_rotj", "sound/music_celebration_b_loop.snd" },
	{ "@event_perk_jukebox_songs:pod_race", "sound/music_combat_bfield_loop.snd" },
	{ "@event_perk_jukebox_songs:figrin_dan_1", "sound/music_figrin_dan_1_loop.snd" },
	{ "@event_perk_jukebox_songs:figrin_dan_2", "sound/music_figrin_dan_2_loop.snd" },
	{ "@event_perk_jukebox_songs:soothing_corellia", "sound/music_id_tent_corellia_loop.snd" },
	{ "@event_perk_jukebox_songs:soothing_naboo", "sound/music_id_tent_naboo_loop.snd" },
	{ "@event_perk_jukebox_songs:soothing_tatooine", "sound/music_id_tent_tatooine_loop.snd" },
	{ "@event_perk_jukebox_songs:max_rebo_1", "sound/music_max_rebo_1_loop.snd" },
	{ "@event_perk_jukebox_songs:max_rebo_2", "sound/music_max_rebo_2_loop.snd" },
	{ "@event_perk_jukebox_songs:romance_1", "sound/music_romance_a_loop.snd" },
	{ "@event_perk_jukebox_songs:romance_2", "sound/music_romance_b_loop.snd" },
	{ "@event_perk_jukebox_songs:romance_3", "sound/music_romance_c_loop.snd" },
	{ "@event_perk_jukebox_songs:satisfaction_1", "sound/music_satisfaction_a_loop.snd" },
	{ "@event_perk_jukebox_songs:satisfaction_2", "sound/music_satisfaction_b_loop.snd" },
	{ "@event_perk_jukebox_songs:exar_theme", "sound/music_exar_theme_loop.snd" },
	{ "@event_perk_jukebox_songs:exploration", "sound/music_explore_a_loop.snd" },
	{ "@event_perk_jukebox_songs:humor_1", "sound/music_humor_a_loop.snd" },
	{ "@event_perk_jukebox_songs:humor_2", "sound/music_humor_b_loop.snd" },
	{ "@event_perk_jukebox_songs:leia_theme", "sound/music_leia_theme_loop.snd" },
	{ "@event_perk_jukebox_songs:evil_ambiance", "sound/music_underground_loop.snd" },
	{ "@event_perk_jukebox_songs:eerie_ambiance", "sound/music_underwater_loop.snd" },
	{ "@event_perk_jukebox_songs:lok_theme", "sound/music_gloom_a_loop.snd" }
}
