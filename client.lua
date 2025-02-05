RegisterNetEvent('notify.sendNotification', function(data)
    if not type(data) ~= 'table' then return end

    local notification = {
        action = 'sendNotification',
        type = data.type or 'default',
        msg = tostring(data.msg) or 'Placeholder',
        duration = data.duration or 5000,
    }
    SendNUIMessage(notification)
end)