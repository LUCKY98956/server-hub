local isVisible = false

RegisterCommand('toggleui', function()
    isVisible = not isVisible
    SetNuiFocus(isVisible, isVisible)
    SendNUIMessage({
        type = "ui",
        status = isVisible
    })
end, false)

RegisterNUICallback('exit', function(data, cb)
    isVisible = false
    SetNuiFocus(false, false)
    SendNUIMessage({
        type = "ui",
        status = false
    })
    cb('ok')
end)
