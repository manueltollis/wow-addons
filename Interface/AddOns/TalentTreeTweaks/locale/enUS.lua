-- Please use the Localization App on CurseForge to Update this
-- https://legacy.curseforge.com/wow/addons/talent-tree-tweaks/localization
local name, _ = ...

local debug = false
--[==[@debug@
debug = true
--@end-debug@]==]

local L = LibStub("AceLocale-3.0"):NewLocale(name, "enUS", true, debug)

-- TalentTreeTweaks
L[ [=[%d points spent past the gate.
%d extra points above the gate are free to be moved away.]=] ] = [=[%d points spent past the gate.
%d extra points above the gate are free to be moved away.]=]
L["%s Switch to %s"] = "%s Switch to %s"
L["(was %s)"] = "(was %s)"
L["A workaround for one of the ways that Talent Tree taint can block action buttons from working."] = "A workaround for one of the ways that Talent Tree taint can block action buttons from working."
L["Add the button to NodeInfo table when dumped"] = "Add the button to NodeInfo table when dumped"
L["Adds a _button property to the nodeInfo table, which is a reference to the talent button."] = "Adds a _button property to the nodeInfo table, which is a reference to the talent button."
L["Adds a button to link the currently shown build in chat."] = "Adds a button to link the currently shown build in chat."
L["Adds a few fixes for minor issues."] = "Adds a few fixes for minor issues."
L["Adds a mini tree in various tooltips for Talent Tree Builds"] = "Adds a mini tree in various tooltips for Talent Tree Builds"
L["Adds a more obvious highlight when you can relearn talents in bulk by shift-clicking them."] = "Adds a more obvious highlight when you can relearn talents in bulk by shift-clicking them."
L["Adds a right-click option to the loadout dropdown to export your build."] = "Adds a right-click option to the loadout dropdown to export your build."
L["Adds options to adjust the background of the talent tree UI."] = "Adds options to adjust the background of the talent tree UI."
L["Adds respec buttons to the talent tree UI."] = "Adds respec buttons to the talent tree UI."
L["Adds spell id and more to the various talent tree tooltips."] = "Adds spell id and more to the various talent tree tooltips."
L["Allows you to import talent loadouts into the currently selected loadout."] = "Allows you to import talent loadouts into the currently selected loadout."
L["Allows you to press CTRL-C to copy the spellID of a talent, while hovering over it."] = "Allows you to press CTRL-C to copy the spellID of a talent, while hovering over it."
L["Allows you to right-click the Hero Talent button to quickly switch hero specs."] = "Allows you to right-click the Hero Talent button to quickly switch hero specs."
L["Allows you to scale the talent tree with CTRL+Scrolling with the mousewheel."] = "Allows you to scale the talent tree with CTRL+Scrolling with the mousewheel."
L["Allows you to search for talents by their spellID, nodeID, entryID, and definitionID."] = "Allows you to search for talents by their spellID, nodeID, entryID, and definitionID."
L["ALT + Click:"] = "ALT + Click:"
L["Always Replace Share Button"] = "Always Replace Share Button"
L["Always Show Gates"] = "Always Show Gates"
L["Always show the \"x more points required\" gates. Gates that are passed will be semi-transparent."] = "Always show the \"x more points required\" gates. Gates that are passed will be semi-transparent."
L["Auto Ride Along"] = "Auto Ride Along"
L["Auto Surge Choice"] = "Auto Surge Choice"
L["Automatically enable/disable Ride Along the first time you log in on a character."] = "Automatically enable/disable Ride Along the first time you log in on a character."
L["Automatically pick Whirling Surge/Lightning Surge the first time you log in on a character."] = "Automatically pick Whirling Surge/Lightning Surge the first time you log in on a character."
L["Automatically purchases the Skyriding talent when you have enough currency."] = "Automatically purchases the Skyriding talent when you have enough currency."
L["Automatically set"] = "Automatically set"
L["Background Transparency"] = "Background Transparency"
L["blocked in combat"] = "blocked in combat"
L["Change Background"] = "Change Background"
L["Change Scale"] = "Change Scale"
L["Choose how the mini tree is displayed. 'with diff' means that the mini tree will show the difference between your current build and the build in the tooltip."] = "Choose how the mini tree is displayed. 'with diff' means that the mini tree will show the difference between your current build and the build in the tooltip."
L["Click to respec to this specialization."] = "Click to respec to this specialization."
L["Click:"] = "Click:"
L["Color of the highlight"] = "Color of the highlight"
L["Copy Loadout"] = "Copy Loadout"
L["Copy SpellID on hover"] = "Copy SpellID on hover"
L["CTRL + Click:"] = "CTRL + Click:"
L["CTRL-C to copy %s"] = "CTRL-C to copy %s"
L["CTRL-C to copy spellID"] = "CTRL-C to copy spellID"
L["CTRL-clicking a talent will open a table inspector of your choice, with the nodeInfo associated with the node."] = "CTRL-clicking a talent will open a table inspector of your choice, with the nodeInfo associated with the node."
L["Debug Talent.nodeInfo"] = "Debug Talent.nodeInfo"
L["Disable detection for loadout strings in chat"] = "Disable detection for loadout strings in chat"
L["Disable MultiActionBar_ShowAllGrids on Show"] = "Disable MultiActionBar_ShowAllGrids on Show"
L["Disable Ride Along"] = "Disable Ride Along"
L["Disables the module from scanning your chat for any loadout string that was sent as normal regular text. This can potentially reduce performance issues, especially on bussier realms."] = "Disables the module from scanning your chat for any loadout string that was sent as normal regular text. This can potentially reduce performance issues, especially on bussier realms."
L["Disables the MultiActionBar_ShowAllGrids function, which can cause action buttons to break."] = "Disables the MultiActionBar_ShowAllGrids function, which can cause action buttons to break."
L["Display Style"] = "Display Style"
L["Do Nothing"] = "Do Nothing"
L["Dump the nodeInfo table to chat."] = "Dump the nodeInfo table to chat."
L["Enable Ride Along"] = "Enable Ride Along"
L["Enable Talent Tree Viewer Diff"] = "Enable Talent Tree Viewer Diff"
L["Enable this module"] = "Enable this module"
L["Enabled"] = "Enabled"
L["Error opening in TalentTreeViewer. Showing default Blizzard inspect UI instead."] = "Error opening in TalentTreeViewer. Showing default Blizzard inspect UI instead."
L["Example of a loadout link"] = "Example of a loadout link"
L["Example of a regular string"] = "Example of a regular string"
L["Export Loadouts"] = "Export Loadouts"
L["Export on Right-Click"] = "Export on Right-Click"
L["Fade Inactive Hero Trees"] = "Fade Inactive Hero Trees"
L["Fade Inactive Hero Trees, to more easily see which one is active."] = "Fade Inactive Hero Trees, to more easily see which one is active."
L["Fix issue that prevents linking choice talents in chat, when inspecting a build"] = "Fix issue that prevents linking choice talents in chat, when inspecting a build"
L["Fix issue with the loadout dropdown not updating"] = "Fix issue with the loadout dropdown not updating"
L["Grey out inactive spec buttons, rather than the active spec button."] = "Grey out inactive spec buttons, rather than the active spec button."
L["Hero Talents"] = "Hero Talents"
L["Highlight Cascade Repurchable"] = "Highlight Cascade Repurchable"
L["If checked, the imported build will be imported into the currently selected loadout."] = "If checked, the imported build will be imported into the currently selected loadout."
L["Implements various workarounds around taint."] = "Implements various workarounds around taint."
L["Import into current loadout"] = "Import into current loadout"
L["Import into current loadout (click \"%s\" afterwards)"] = "Import into current loadout (click \"%s\" afterwards)"
L["Import into current loadout by default"] = "Import into current loadout by default"
L["Import Loadout"] = "Import Loadout"
L["Import string is corrupt, node type mismatch at nodeID %d. First option will be selected."] = "Import string is corrupt, node type mismatch at nodeID %d. First option will be selected."
L["Improved Loadout Links"] = "Improved Loadout Links"
L["Inspect Diff"] = "Inspect Diff"
L["Inspected Build"] = "Inspected Build"
L["Invert highlight"] = "Invert highlight"
L["Link in chat"] = "Link in chat"
L["Macros and certain addons that change loadouts, cause the dropdown to not update properly in some situations. This fixes that."] = "Macros and certain addons that change loadouts, cause the dropdown to not update properly in some situations. This fixes that."
L["Mini Tree in Tooltips"] = "Mini Tree in Tooltips"
L["Misc Fixes"] = "Misc Fixes"
L["Modules"] = "Modules"
L["Mute chat spam while switching loadouts or specs."] = "Mute chat spam while switching loadouts or specs."
L["Open in Talent Tree Viewer"] = "Open in Talent Tree Viewer"
L["Open loadout in default Inspect UI"] = "Open loadout in default Inspect UI"
L["Opens Blizzard's table inspect window."] = "Opens Blizzard's table inspect window."
L["Path NodeId"] = "Path NodeId"
L["Perk NodeId"] = "Perk NodeId"
L["Post in Chat"] = "Post in Chat"
L["Print in chat whenever a new talent is purchased."] = "Print in chat whenever a new talent is purchased."
L["Professions Tooltip"] = "Professions Tooltip"
L["Purchased %d new talents."] = "Purchased %d new talents."
L["Reduce spam"] = "Reduce spam"
L["Reduce Taint"] = "Reduce Taint"
L["Replace the Share Loadout button, to open a copy/paste popup instead of automatically copying to clipboard when needed."] = "Replace the Share Loadout button, to open a copy/paste popup instead of automatically copying to clipboard when needed."
L["Replace the Share Loadout button, to open a copy/paste popup instead of automatically copying to clipboard when possible."] = "Replace the Share Loadout button, to open a copy/paste popup instead of automatically copying to clipboard when possible."
L["Report Purchases"] = "Report Purchases"
L["Reset Ride Along Cache"] = "Reset Ride Along Cache"
L["Reset Surge Cache"] = "Reset Surge Cache"
L["Reset the color to default"] = "Reset the color to default"
L["Reset the colors to default"] = "Reset the colors to default"
L["Reset the Ride Along cache, so all characters will match the current setting on login."] = "Reset the Ride Along cache, so all characters will match the current setting on login."
L["Reset the Surge cache, so all characters will match the current setting on login."] = "Reset the Surge cache, so all characters will match the current setting on login."
L["Respec Buttons"] = "Respec Buttons"
L["Right-click to share"] = "Right-click to share"
L["Row/Col"] = "Row/Col"
L["Row/Col Info"] = "Row/Col Info"
L["Scale"] = "Scale"
L["Scale of the mini tree."] = "Scale of the mini tree."
L["Scale Talent Frame"] = "Scale Talent Frame"
L["Search by ID"] = "Search by ID"
L["Shift + Left-Click:"] = "Shift + Left-Click:"
L["Shift + Right-Click:"] = "Shift + Right-Click:"
L["Shift Hero Talent Trees"] = "Shift Hero Talent Trees"
L["Shifts the Hero Talent Trees to the left to avoid overlapping with the gate text."] = "Shifts the Hero Talent Trees to the left to avoid overlapping with the gate text."
L["Show %s Button"] = "Show %s Button"
L["Show a slider in Talent Tree Viewer UI"] = "Show a slider in Talent Tree Viewer UI"
L["Show a slider in the spellbook UI"] = "Show a slider in the spellbook UI"
L["Show a slider in the talent UI"] = "Show a slider in the talent UI"
L["Show an example of the mini tree for your current spec."] = "Show an example of the mini tree for your current spec."
L["Show Diff"] = "Show Diff"
L["Show Example"] = "Show Example"
L["Show Example link in chat"] = "Show Example link in chat"
L["Show the difference between your talent choices, and the talent build in Talent Tree Viewer."] = "Show the difference between your talent choices, and the talent build in Talent Tree Viewer."
L["Shows an example of a clickable link in chat."] = "Shows an example of a clickable link in chat."
L["Shows the difference between your talent choices, and the inspected player's talent choices."] = "Shows the difference between your talent choices, and the inspected player's talent choices."
L["Simple dots"] = "Simple dots"
L["Simple dots with custom diff colors"] = "Simple dots with custom diff colors"
L["Simple dots with default diff colors"] = "Simple dots with default diff colors"
L["Skyriding Auto Purchaser"] = "Skyriding Auto Purchaser"
L["Spell Icon"] = "Spell Icon"
L["Spell ID"] = "Spell ID"
L["Spellbook Background Transparency"] = "Spellbook Background Transparency"
L["SpellID"] = "SpellID"
L[ [=[Talent Loadout links are improved, to allow you to use modifiers, to copy the link, import it as a loadout, open it in Talent Tree Viewer (if installed) etc.
Optionally, it can also scan your chat for any loadout string that was sent as normal regular text.]=] ] = [=[Talent Loadout links are improved, to allow you to use modifiers, to copy the link, import it as a loadout, open it in Talent Tree Viewer (if installed) etc.
Optionally, it can also scan your chat for any loadout string that was sent as normal regular text.]=]
L["Talent Loadout String"] = "Talent Loadout String"
L["Talent Tooltip"] = "Talent Tooltip"
L["TalentTreeTweaks Diff Viewer"] = "TalentTreeTweaks Diff Viewer"
L["Temporarily |cffff0000disabled|r until next reload, because you refunded a talent."] = "Temporarily |cffff0000disabled|r until next reload, because you refunded a talent."
L["They have a talent you don't"] = "They have a talent you don't"
L["This addon consists of a number of modules, each of which can be enabled or disabled, to fine-tune your experience."] = "This addon consists of a number of modules, each of which can be enabled or disabled, to fine-tune your experience."
L["This loadout includes leveling information."] = "This loadout includes leveling information."
L["This module is incompatible with BlizzMove, and has been disabled."] = "This module is incompatible with BlizzMove, and has been disabled."
L["Toggle Skyriding UI"] = "Toggle Skyriding UI"
L["Toggle the Skyriding UI to view and adjust talents."] = "Toggle the Skyriding UI to view and adjust talents."
L["Toggles for the Professions Tooltips."] = "Toggles for the Professions Tooltips."
L["Toggles for the Talent Tooltips."] = "Toggles for the Talent Tooltips."
L["Tooltip IDs"] = "Tooltip IDs"
L["Transparency"] = "Transparency"
L["Unlock In Combat Spending"] = "Unlock In Combat Spending"
L["Unlock Restrictions"] = "Unlock Restrictions"
L["Unlock Share Button"] = "Unlock Share Button"
L["Unlocks several restrictions on the talent tree UI, such as being able to spend points while in combat, and being able to share your build without spending all points."] = "Unlocks several restrictions on the talent tree UI, such as being able to spend points while in combat, and being able to share your build without spending all points."
L["Unlocks the import button, even if at max loadouts"] = "Unlocks the import button, even if at max loadouts"
L["Unlocks the share button, so you can share your build without spending all points."] = "Unlocks the share button, so you can share your build without spending all points."
L["Unlocks the talent buttons, so you can reallocate points while in combat."] = "Unlocks the talent buttons, so you can reallocate points while in combat."
L["Use (Virag-)DevTool to inspect the nodeInfo table."] = "Use (Virag-)DevTool to inspect the nodeInfo table."
L["Use LuaBrowser to inspect the nodeInfo table."] = "Use LuaBrowser to inspect the nodeInfo table."
L["Various tweaks and improvements to the talent tree UI"] = "Various tweaks and improvements to the talent tree UI"
L["Version: %s"] = "Version: %s"
L["Warning: Custom colors may look weird, this cannot be fixed."] = "Warning: Custom colors may look weird, this cannot be fixed."
L["When enabled, the \"Import into current loadout\" checkbox will be checked by default."] = "When enabled, the \"Import into current loadout\" checkbox will be checked by default."
L["When enabled, the import button will be unlocked even if you have reached the maximum number of loadouts. Since you can still import into your current loadout"] = "When enabled, the import button will be unlocked even if you have reached the maximum number of loadouts. Since you can still import into your current loadout"
L["You can toggle any of the following on/off to enable/disable the integration with that debug tool."] = "You can toggle any of the following on/off to enable/disable the integration with that debug tool."
L["You have a talent they don't"] = "You have a talent they don't"
L["You have selected a different choice, or different number of points in a talent"] = "You have selected a different choice, or different number of points in a talent"
L["You have the same talents"] = "You have the same talents"
L["You have to reload your UI after disabling this module, for some of the change to take effect."] = "You have to reload your UI after disabling this module, for some of the change to take effect."
