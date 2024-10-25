-- Create a frame to handle events
local frame = CreateFrame("Frame")
local suppressing = false -- Track if suppression is active
local notificationsEnabled = false -- Notifications are disabled by default
local suppressionTimeout = 5 -- Seconds to wait after the last achievement to re-enable popups
local suppressTimer = nil -- Timer to re-enable after a delay

-- Correct Sound ID for Guild Achievement Earned
local ACHIEVEMENT_SOUND_ID = 569143

-- List of guild achievements to be blocked (Horde and Alliance versions)
local hiddenAchievements = {
    [5126] = true, [5128] = true, [5129] = true, [5130] = true, [5131] = true, [5145] = true,
    [5812] = true, [5892] = true, [6644] = true, [6664] = true, [7843] = true, [7844] = true,
    [5151] = true, [5152] = true, [5153] = true, [5154] = true, [5155] = true, [5156] = true, 
    [5157] = true, [5158] = true, [5160] = true, [5161] = true, [5162] = true, [5163] = true, 
    [5164] = true, [5165] = true, [6624] = true, [6625] = true,
    [5031] = true, [5167] = true, [5168] = true, [5169] = true, [5170] = true, [5171] = true, 
    [5172] = true, [5173] = true, [5174] = true, [5175] = true, [5176] = true, [5177] = true, 
    [5178] = true, [5179] = true, [6533] = true,
    [4912] = true, [5014] = true, [5111] = true, [5195] = true, [5432] = true, [5434] = true, 
    [5436] = true, [5438] = true, [5441] = true, [6532] = true, [7448] = true, [13320] = true, 
    [5110] = true, [5124] = true, [5194] = true, [5433] = true, [5435] = true, [5437] = true, 
    [5439] = true, [5440] = true, [5492] = true, [7449] = true, [13319] = true,
}

-- Function to manage achievement sounds (mute/unmute)
local function ManageAchievementSounds(unmute)
    if unmute then
        UnmuteSoundFile(ACHIEVEMENT_SOUND_ID)
        print("Unmuted Guild Achievement sound.")
    else
        MuteSoundFile(ACHIEVEMENT_SOUND_ID)
        print("Muted Guild Achievement sound.")
    end
end

-- Function to suppress achievement toasts and sounds
local function SuppressAchievementToasts(achievementID)
    local _, achievementName, _, _, _, _, _, _, isGuild = GetAchievementInfo(achievementID)

    if isGuild and hiddenAchievements[achievementID] then
        print("Suppressing Guild Achievement Toast for ID: " .. achievementID .. " (" .. achievementName .. ").")

        -- Clear active toasts and hide achievement alert frames
        C_EventToastManager.ClearActiveToasts()
        if AchievementAlertFrame1 then AchievementAlertFrame1:Hide() end
        if AchievementAlertFrame2 then AchievementAlertFrame2:Hide() end

        -- Mute achievement sound
        ManageAchievementSounds(false)

        suppressing = true
    else
        print("Personal Achievement Earned: " .. achievementID .. " (" .. achievementName .. "). Achievement unlocked!")
    end
end

-- Function to handle achievement earned events
local function HandleAchievements(self, event, achievementID)
    local _, achievementName, _, _, _, _, _, _, isGuild = GetAchievementInfo(achievementID)

    if not isGuild then
        -- Handle personal achievements as normal
        print("Personal Achievement Earned: " .. achievementID .. " (" .. achievementName .. ").")
        return
    end

    -- Check if notifications are enabled and suppress guild achievements
    if notificationsEnabled then
        if hiddenAchievements[achievementID] then
            SuppressAchievementToasts(achievementID)
        else
            print("Guild Achievement Earned: " .. achievementID .. " (" .. achievementName .. "). Showing Toast.")
        end
    else
        print("Notifications Disabled. Silence is golden!")
    end
end

-- Register event handler
frame:RegisterEvent("ACHIEVEMENT_EARNED")
frame:SetScript("OnEvent", HandleAchievements)

-- Add a slash command to toggle notifications
SLASH_DGA1 = "/dga"
local function ToggleNotifications()
    notificationsEnabled = not notificationsEnabled
    local status = notificationsEnabled and "|cFFFF0000OFF|r - Guild Achievements will now annoy you!" or "|cFF00FF00ON|r - Silence is golden, suppression is ON!"
    print("Guild Achievement Notifications: " .. status)

    -- Manage sound based on the suppression state
    if notificationsEnabled then
        ManageAchievementSounds(true) -- Unmute sounds
    else
        ManageAchievementSounds(false) -- Mute sounds
    end
end
SlashCmdList["DGA"] = ToggleNotifications

-- Custom message when the addon is loaded
print("|cFF99CC33Disable Guild Achievements Loaded|r - Shhh... Suppression is ON by default. Use /dga to toggle notifications.")
