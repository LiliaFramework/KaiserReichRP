ITEM.name = "Apple"
ITEM.model = "models/foodnhouseholditems/apple.mdl"
ITEM.desc = "A red apple. Delicious."
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Consumables"
ITEM.price = 3
ITEM.functions.Eat = {
    onRun = function(itemTable)
        local client = itemTable.player
        client:SetHealth(math.min(client:Health() + 10, 100))
        return true
    end,
}