function onCreate()
    makeLuaSprite("SB", "SideHealth", 0, 0);
    setObjectCamera("SB", "HUD")
    scaleObject("SB", 0.43, 0.43)
    addLuaSprite("SB", true)
end

function onUpdate()
    setProperty("healthBar.x", 5000)
    if getProperty("iconP2.visible", true) then
        setProperty("iconP2.visible", false)
    end
    doTweenY("hhgregg", "iconP1", (getProperty("health")*300)-50, 0.1)
end

function onUpdatePost()
    setProperty('iconP1.x', 1)
end