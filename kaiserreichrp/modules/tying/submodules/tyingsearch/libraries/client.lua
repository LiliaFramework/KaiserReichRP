﻿function MODULE:CanPlayerViewInventory()
    if IsBeingSearched(LocalPlayer()) then return false end
end

function MODULE:DrawCharInfo(client, _, info)
    if not IsHandcuffed(client) then return end
    if IsBeingSearched(client) then info[#info + 1] = {"Being Searched", Color(245, 215, 110)} end
end
