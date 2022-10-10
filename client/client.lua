

Citizen.CreateThread(function()

  for k,v in ipairs(Config.Blip) do 

      local blip = AddBlipForRadius(v.x, v.y, v.z , v.radius or 0) -- you can use a higher number for a bigger zone

	    SetBlipHighDetail(blip, true)
	    SetBlipColour(blip, v.radiusColor or 15)
	    SetBlipAlpha (blip, 128)

      local blip = AddBlipForCoord(v.x, v.y, v.z)
      SetBlipSprite (blip, v.id)
      SetBlipDisplay(blip, v.display)
      SetBlipScale(blip, v.size) 
      SetBlipColour(blip, v.color)
      SetBlipAsShortRange(blip, true)
      SetBlipBright(blip, true)
      SetBlipHighDetail(blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(v.text)
      EndTextCommandSetBlipName(blip)
  end

end)



