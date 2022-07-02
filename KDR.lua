local KDR = {}
function KDR.calculateKDR(plr,Kills,Deaths)
	local WO =plr.leaderstats:FindFirstChild(Deaths).Value
	local KO = plr.leaderstats:FindFirstChild(Kills).Value
	local mat = math.floor((KO/WO)*1000)
	local result = mat/1000
	return result
end

function KDR.addkdr(plr,K,D)
	local kdr = Instance.new("StringValue",plr.leaderstats)
	local r = KDR.calculateKDR(plr,K,D)
	kdr.Value =r
end
return KDR
