﻿local MODULE = MODULE
PIM:AddOption("Request Search", {
    runServer = true,
    shouldShow = function(client, target) return not target.SearchRequested and not client.SearchRequested and not IsBeingSearched(target) end,
    onRun = function(client, target)
        if not SERVER then return end
        net.Start("RequestSearch")
        net.Send(target)
        client:notifyLocalized("requestSearchSent")
        target.SearchRequested = client
        client.SearchRequested = target
    end
})

PIM:AddOption("Search", {
    runServer = true,
    shouldShow = function(_, target) return IsHandcuffed(target) and not IsBeingSearched(target) end,
    onRun = function(client, target)
        if not SERVER then return end
        MODULE:searchPlayer(client, target)
    end
})
