JediManager = require("managers.jedi.jedi_manager")
local ObjectManager = require("managers.object.object_manager")

jediManagerName = "HologrindJediManager"

NUMBEROFPROFESSIONSTOMASTER = 4
MAXIMUMNUMBEROFPROFESSIONSTOSHOWWITHHOLOCRON = NUMBEROFPROFESSIONSTOMASTER - 1

HologrindJediManager = JediManager:new {
	screenplayName = jediManagerName,
	jediManagerName = jediManagerName,
	jediProgressionType = HOLOGRINDJEDIPROGRESSION,
	startingEvent = nil,
}

-- Return a list of all professions and their badge number that are available for the hologrind
-- @return a list of professions and their badge numbers.
function HologrindJediManager:getGrindableProfessionList()
	local grindableProfessions = {
		-- String Id, badge number, profession name
		{ "outdoors_creaturehandler_master", 	OUTDOORS_CREATUREHANDLER_MASTER  },
		{ "outdoors_squadleader_master", 	OUTDOORS_SQUADLEADER_MASTER  },
		{ "outdoors_bio_engineer_master", 	OUTDOORS_BIO_ENGINEER_MASTER  },
		{ "crafting_architect_master", 		CRAFTING_ARCHITECT_MASTER  },
		{ "crafting_armorsmith_master", 	CRAFTING_ARMORSMITH_MASTER  },
		{ "crafting_tailor_master", 		CRAFTING_TAILOR_MASTER  },
		{ "crafting_weaponsmith_master", 	CRAFTING_WEAPONSMITH_MASTER  },
		{ "crafting_droidengineer_master", 	CRAFTING_DROIDENGINEER_MASTER  },
		{ "crafting_chef_master", 		CRAFTING_CHEF_MASTER  },
		{ "combat_1hsword_master", 		COMBAT_1HSWORD_MASTER  },
		{ "combat_marksman_master", 		COMBAT_MARKSMAN_MASTER  },
		{ "combat_bountyhunter_master", 	COMBAT_BOUNTYHUNTER_MASTER  },
		{ "combat_brawler_master", 		COMBAT_BRAWLER_MASTER  },
		{ "combat_smuggler_master", 		COMBAT_SMUGGLER_MASTER  },
		{ "combat_carbine_master", 		COMBAT_CARBINE_MASTER  },
		{ "combat_commando_master", 		COMBAT_COMMANDO_MASTER  },
		{ "combat_polearm_master", 		COMBAT_POLEARM_MASTER  },
		{ "combat_pistol_master", 		COMBAT_PISTOL_MASTER  },
		{ "combat_rifleman_master", 		COMBAT_RIFLEMAN_MASTER  },
		{ "combat_2hsword_master", 		COMBAT_2HSWORD_MASTER  },
		{ "combat_unarmed_master", 		COMBAT_UNARMED_MASTER  },
		{ "outdoors_ranger_master", 		OUTDOORS_RANGER_MASTER  },
		{ "outdoors_scout_master", 		OUTDOORS_SCOUT_MASTER  },
		{ "outdoors_squadleader_master", 	OUTDOORS_SQUADLEADER_MASTER  },
		{ "science_medic_master", 		SCIENCE_MEDIC_MASTER  },
		{ "science_combatmedic_master", 	SCIENCE_COMBATMEDIC_MASTER  },
		{ "science_doctor_master", 		SCIENCE_DOCTOR_MASTER  },
		{ "social_musician_master", 		SOCIAL_MUSICIAN_MASTER  },
		{ "social_imagedesigner_master", 	SOCIAL_IMAGEDESIGNER_MASTER  },
		{ "social_entertainer_master", 		SOCIAL_ENTERTAINER_MASTER  },
		{ "social_dancer_master", 		SOCIAL_DANCER_MASTER  },
	}
	return grindableProfessions
end

-- Handling of the onPlayerCreated event.
-- Hologrind professions will be generated for the player.
-- @param pCreatureObject pointer to the creature object of the created player.
function HologrindJediManager:onPlayerCreated(pCreatureObject)
	local skillList = self:getGrindableProfessionList()

	return ObjectManager.withCreaturePlayerObject(pCreatureObject, function(playerObject)
		local pGhost = CreatureObject(pCreatureObject):getPlayerObject()

		if (pGhost == nil) then
			return
		end

		for i = 1, NUMBEROFPROFESSIONSTOMASTER, 1 do
			local numberOfSkillsInList = #skillList
			local skillNumber = getRandomNumber(1, numberOfSkillsInList)
			PlayerObject(pGhost):addHologrindProfession(skillList[skillNumber][2])
			table.remove(skillList, skillNumber)
		end
	end)
end

-- Check and count the number of mastered hologrind professions.
-- @param pCreatureObject pointer to the creature object of the player which should get its number of mastered professions counted.
-- @return the number of mastered hologrind professions.
function HologrindJediManager:getNumberOfMasteredProfessions(pCreatureObject)

	return ObjectManager.withCreaturePlayerObject(pCreatureObject, function(playerObject)
		local pGhost = CreatureObject(pCreatureObject):getPlayerObject()

		if (pGhost == nil) then
			return 0
		end

		local professions = playerObject:getHologrindProfessions()
		local masteredNumberOfProfessions = 0
		for i = 1, #professions, 1 do
			if PlayerObject(pGhost):hasBadge(professions[i]) then
				masteredNumberOfProfessions = masteredNumberOfProfessions + 1
			end
		end
		return masteredNumberOfProfessions
	end)
end

-- Check if the player is jedi.
-- @param pCreatureObject pointer to the creature object of the player to check if he is jedi.
-- @return returns if the player is jedi or not.
function HologrindJediManager:isJedi(pCreatureObject)
	return ObjectManager.withCreaturePlayerObject(pCreatureObject, function(playerObject)
		local pGhost = CreatureObject(pCreatureObject):getPlayerObject()

		if (pGhost == nil) then
			return false
		end

		return PlayerObject(pGhost):isJedi()
	end)
end

-- Sui window ok pressed callback function.
function HologrindJediManager:notifyOkPressed()
-- Do nothing.
end

-- Send a sui window to the player about unlocking jedi and award jedi status and force sensitive skill.
-- @param pCreatureObject pointer to the creature object of the player who unlocked jedi.
function HologrindJediManager:sendSuiWindow(pCreatureObject)
	local suiManager = LuaSuiManager()
	suiManager:sendMessageBox(pCreatureObject, pCreatureObject, "@quest/force_sensitive/intro:force_sensitive", "The Force is strong with you find a holocron to finish your path", "@ok", "HologrindJediManager", "notifyOkPressed")
end

-- Award skill and jedi status to the player.
-- @param pCreatureObject pointer to the creature object of the player who unlocked jedi.
function HologrindJediManager:awardJediStatusAndSkill(pCreatureObject)
	ObjectManager.withCreaturePlayerObject(pCreatureObject, function(playerObject)
		local pGhost = CreatureObject(pCreatureObject):getPlayerObject()
		local firstName = CreatureObject(pCreatureObject):getFirstName()
		local player = LuaCreatureObject(pCreatureObject)

		if (pGhost == nil) then
			return
		end

		PlayerObject(pGhost):setJediState(2)

		CreatureObject(pCreatureObject):broadcastToServer("\\#00ff00IMPERIAL COMMUNICATION FROM THE REGIONAL GOVERNOR: Lord Vader has detected a vergence in the Force. Be on the lookout for any suspicious persons displaying unique or odd abilities. Lord Vader authorizes all citizens to use deadly force to eliminate this threat from the Empire.")
		CreatureObject(pCreatureObject):broadcastToDiscordUnlock("IMPERIAL COMMUNICATION FROM THE REGIONAL GOVERNOR: Lord Vader has detected a vergence in the Force. Be on the lookout for any suspicious persons displaying unique or odd abilities. Lord Vader authorizes all citizens to use deadly force to eliminate this threat from the Empire.")
		print(firstName, "has become a jedi")
	end)
end

-- Check if the player has mastered all hologrind professions and send sui window and award skills.
-- @param pCreatureObject pointer to the creature object of the player to check the jedi progression on.
function HologrindJediManager:checkIfProgressedToJedi(pCreatureObject)
	if self:getNumberOfMasteredProfessions(pCreatureObject) >= NUMBEROFPROFESSIONSTOMASTER and not self:isJedi(pCreatureObject) then
		self:sendSuiWindow(pCreatureObject)
		self:awardJediStatusAndSkill(pCreatureObject)
	end
end

-- Event handler for the BADGEAWARDED event.
-- @param pCreatureObject pointer to the creature object of the player who was awarded with a badge.
-- @param pCreatureObject2 pointer to the creature object of the player who was awarded with a badge.
-- @param badgeNumber the badge number that was awarded.
-- @return 0 to keep the observer active.
function HologrindJediManager:badgeAwardedEventHandler(pCreatureObject, pCreatureObject2, badgeNumber)
	if (pCreatureObject == nil) then
		return 0
	end

	self:checkIfProgressedToJedi(pCreatureObject)

	return 0
end

-- Register observer on the player for observing badge awards.
-- @param pCreatureObject pointer to the creature object of the player to register observers on.
function HologrindJediManager:registerObservers(pCreatureObject)
	createObserver(BADGEAWARDED, "HologrindJediManager", "badgeAwardedEventHandler", pCreatureObject)
end

-- Handling of the onPlayerLoggedIn event. The progression of the player will be checked and observers will be registered.
-- @param pCreatureObject pointer to the creature object of the player who logged in.
function HologrindJediManager:onPlayerLoggedIn(pCreatureObject)
	if (pCreatureObject == nil) then
		return
	end

	self:checkIfProgressedToJedi(pCreatureObject)
	self:registerObservers(pCreatureObject)
end

-- Get the profession name from the badge number.
-- @param badgeNumber the badge number to find the profession name for.
-- @return the profession name associated with the badge number, Unknown profession returned if the badge number isn't found.
function HologrindJediManager:getProfessionStringIdFromBadgeNumber(badgeNumber)
	local skillList = self:getGrindableProfessionList()
	for i = 1, #skillList, 1 do
		if skillList[i][2] == badgeNumber then
			return skillList[i][1]
		end
	end
	return "Unknown profession"
end

-- Find out and send the response from the holocron to the player
-- @param pCreatureObject pointer to the creature object of the player who used the holocron.
function HologrindJediManager:sendHolocronMessage(pCreatureObject)
	if self:getNumberOfMasteredProfessions(pCreatureObject) >= MAXIMUMNUMBEROFPROFESSIONSTOSHOWWITHHOLOCRON then
		-- The Holocron is quiet. The ancients' knowledge of the Force will no longer assist you on your journey. You must continue seeking on your own.
		CreatureObject(pCreatureObject):sendSystemMessage("@jedi_spam:holocron_quiet")
		return true
	else
		ObjectManager.withCreatureAndPlayerObject(pCreatureObject, function(creatureObject, playerObject)

			local pGhost = CreatureObject(pCreatureObject):getPlayerObject()

			if (pGhost == nil) then
				return false
			end

			local professions = PlayerObject(pGhost):getHologrindProfessions()
			for i = 1, #professions, 1 do
				if not PlayerObject(pGhost):hasBadge(professions[i]) then
					local professionText = self:getProfessionStringIdFromBadgeNumber(professions[i])
					CreatureObject(pCreatureObject):sendSystemMessageWithTO("@jedi_spam:holocron_light_information", "@skl_n:" .. professionText)
				break
				end
			end
		end)

		return false
	end
end

-- Handling of the useItem event.
-- @param pSceneObject pointer to the item object.
-- @param itemType the type of item that is used.
-- @param pCreatureObject pointer to the creature object that used the item.
function HologrindJediManager:useItem(pSceneObject, itemType, pCreatureObject)
	if (pCreatureObject == nil or pSceneObject == nil) then
		return
	end

	if itemType == ITEMHOLOCRON then
		local isSilent = self:sendHolocronMessage(pCreatureObject)
		if isSilent then
			return
		else
			SceneObject(pSceneObject):destroyObjectFromWorld()
			SceneObject(pSceneObject):destroyObjectFromDatabase()
		end
	end
end

function HologrindJediManager:canLearnSkill(pPlayer, skillName)
	return true
end

registerScreenPlay("HologrindJediManager", true)

return HologrindJediManager
