RegisterNetEvent('notify.sendNotification', function(data)
    if type(data) ~= 'table' then return end

    local notification = {
        action = 'sendNotification',
        title = data.title or nil,
        type = data.type or 'default',
        msg = tostring(data.msg) or 'Placeholder',
        color = (data.type == 'custom' and data.color) or nil,
        position = data.position or 'top-right',
        duration = data.duration or 3000
    }

    SendNUIMessage(notification)
end)

RegisterCommand('tab_notify', function(args)
    local arg = args[1]

    if arg == 'normal' then
        TriggerEvent('notify.sendNotification', { title = 'Notification Title', type = 'success', 'This is normal (success) notification Message', position = 'top-right', duration = '5000'})
    elseif arg == 'custom' then
        TriggerEvent('notify.sendNotification', { title = 'Notification Title', type = 'custom', 'This is custom notification Message', color = '#e7dfa9', position = 'center-right', duration = '5000'})
    end
end, false)