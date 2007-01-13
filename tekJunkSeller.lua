

local function SellItem(bag, slot)
	if not bag or not slot then return end
	ShowMerchantSellCursor(1)
	UseContainerItem(bag, slot)
end

local function OnEvent()
	for bag=0,4 do
		for slot=0,GetContainerNumSlots(bag) do
			if select(3, GetItemInfo(GetContainerItemLink(bag, slot))) == 0 then SellItem(bag, slot) end
		end
	end
end


local f = CreateFrame("Frame")
f:RegisterEvent("MERCHANT_SHOW")
f:SetScript("OnEvent", OnEvent)



