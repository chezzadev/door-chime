 -- Door Chime --
-- Made By Chezza --

local volume = 0.1

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        local ped = GetPlayerPed(-1)
        local veh = GetVehiclePedIsUsing(ped) or GetLastDrivenVehicle()
        if DoesEntityExist(ped) and not IsEntityDead(ped) then 
            if IsPedInAnyVehicle(ped, false) and GetEntityModel(veh) then
                if GetIsTaskActive(ped, 160) then
                    TriggerServerEvent('InteractSound_SV:PlayOnSource', 'chime', volume)
                    Citizen.Wait(900)
                elseif GetIsTaskActive(ped, 2) then 
                    TriggerServerEvent('InteractSound_SV:PlayOnSource', 'chime', volume)
                    Citizen.Wait(900)
                end
            end
        end
    end
end)