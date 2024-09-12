-- spare script for later, not using it rn cause adding dots to the version is kinda useless anyway
local function GetVersionFromBuildID(ID)
	ID = tostring(ID)

	local IDSplit = ID:split("")
	
	local VersionString = ""

	if #IDSplit > 3 then
		for i = 1, #IDSplit - 3, 1 do
			VersionString = VersionString..IDSplit[1]
			table.remove(IDSplit, 1)
		end
	elseif #IDSplit < 3 then
		for i = 1, 3 - #IDSplit, 1 do
			VersionString = VersionString.."0."
		end
	end

	for i = 1, #IDSplit, 1 do
		VersionString = VersionString..IDSplit[i]
		
		if i ~= #IDSplit then
			VersionString = VersionString.."."
		end
	end
	
	return VersionString
end
