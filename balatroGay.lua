--- STEAMODDED HEADER
--- MOD_NAME: GayPenis
--- MOD_ID: GayPenis
--- MOD_AUTHOR: [FosterBarnes]
--- MOD_DESCRIPTION: Turns Straights -> Gay and Venus -> Penis

----------------------------------------------
------------MOD CODE -------------------------

-- Function to recursively print tables
function printTable(tbl, indent)
    indent = indent or 0
    local indentStr = string.rep("  ", indent)

    for key, value in pairs(tbl) do
        if type(value) == "table" then
            sendDebugMessage(indentStr .. tostring(key) .. " (table):")
            printTable(value, indent + 1)
        else
            sendDebugMessage(indentStr .. tostring(key) .. ": " .. tostring(value))
        end
    end
end

function SMODS.INIT.GayPenis()
    sendDebugMessage("Gay Penis is ready to FUCK")

    -- Print all contents of G.localization.misc
    if G and G.localization and G.localization.misc then
        sendDebugMessage("Iterating over G.localization.misc:")
        printTable(G.localization.misc)
    else
        sendDebugMessage("G.localization.misc is not available")
    end

    -- Modify localization for poker hands
    if G and G.localization and G.localization.misc and G.localization.misc.poker_hands then
        G.localization.misc.poker_hands['Straight Flush'] = "Gay Flush"
        G.localization.misc.poker_hands['Straight'] = "Gay"
        -- G.localization.descriptions.Planet.c_venus.name = "Penis"
        sendDebugMessage("Homosexuality complete.")
    else
        sendDebugMessage("Homophobia has blocked this Gay Penis... smh")
    end

    -- Prints contents of table bc its prob important
    -- if G and G.localization and G.localization.descriptions and G.localization.descriptions.Joker then
        -- sendDebugMessage("Iterating over G.localization.descriptions.Joker:")
      --  printTable(G.localization.descriptions.Joker)
   -- else
       -- sendDebugMessage("G.localization.descriptions.Joker is not available")
   -- end
    
    G.localization.descriptions.Joker.j_four_fingers.text = {
                    "All {C:attention}Flushes{} and",
                    "{C:attention}Gays{} can be",
                    "made with {C:attention}4{} cards",}
    G.localization.descriptions.Joker.j_runner.text = {
                    "Gains {C:chips}+#2#{} Chips",
                    "if played hand",
                    "contains a {C:attention}Gay{}",
                    "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",}
    G.localization.descriptions.Joker.j_shortcut.text = {
                    "Allows {C:attention}Gays{} to be",
                    "made with gaps of {C:attention}1 rank",
                    "{C:inactive}(ex: {C:attention}10 8 6 5 3{C:inactive})",}
    G.localization.descriptions.Joker.j_superposition.text = {
                    "Create a {C:tarot}Tarot{} card if",
                    "poker hand contains an",
                    "{C:attention}Ace{} and a {C:attention}Gay{}",
                    "{C:inactive}(Must have room)",}

end

----------------------------------------------
------------MOD CODE END----------------------
