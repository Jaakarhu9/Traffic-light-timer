Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        -- Asetetaan liikennevalojen kesto
        SetTrafficLightState(0) -- green light
        Citizen.Wait(35000) -- 35 seconds green light

        SetTrafficLightState(1) -- Yellow light
        Citizen.Wait(2000) -- 2 seconds yellow light
        SetTrafficLightState(2) -- red light
        Citizen.Wait(30000) -- 30 seconds red light
    end
end)

-- Asetetaan liikennevalon tila
-- 0 =  Green light
-- 1 = yellow light
-- 2 = red light
function SetTrafficLightState(state)
    for i = 0, 3 do
        EnableTrafficLight(i, state)
    end
end

-- Mahdollistaa liikennevalon tilan
function EnableTrafficLight(intersection, state)
    -- Huom: Tässä käytetään oletusarvoista liikennevalon toimintaa, joka saattaa edellyttää lisämuutoksia
    -- liikennevalojen konfigurointiin. Tämä on yksinkertaistettu esimerkki. Dont touch! U dont need to understand this ^^
    if state == 0 then
        -- green light
        SetTrafficLightsState(0)
    elseif state == 1 then
        -- yellow light
        SetTrafficLightsState(1)
    elseif state == 2 then
        -- red light
        SetTrafficLightsState(2)
    end
end
