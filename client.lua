RegisterNetEvent('notify.sendNotification', function(data)
    if type(data) ~= 'table' then return end  -- ✅ Fixed condition

    local notification = {
        action = 'sendNotification',
        type = data.type or 'default',
        msg = data.msg and tostring(data.msg) or 'Placeholder',  -- ✅ Ensures msg is a string
        duration = tonumber(data.duration) or 5000,  -- ✅ Ensures duration is a number
    }
    SendNUIMessage(notification)
end)

RegisterCommand('tab_notify', function()
    TriggerEvent('notify.sendNotification', {
        type = 'success',
        msg = 'This is a normal (success) notification message',
        duration = 5000,
    })
end, false)
