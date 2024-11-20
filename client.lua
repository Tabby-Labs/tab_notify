RegisterNetEvent('tabby.sendNotify', function (msg, type, duration)
    local message = {
        action = 'sendNotification',
        type = type or 'default',
        msg = tostring(msg),
        duration = duration or 5000;
    }
    SendNUIMessage(message)
end)

RegisterCommand('tNotify', function (source, args)
    TriggerEvent('tabby.sendNotify', ('Hello World! This is %s notify'):format(args[1]), args[1] or 'default', 3000)
    TriggerEvent('tabby.sendNotify', 'Lorem ipsum odor amet, consectetuer adipiscing elit. Gravida sociosqu senectus suspendisse class purus fames maecenas', args[1], 3000)
end, false)