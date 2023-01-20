CreateThread(function()

  for k, v in ipairs(Config.blips) do

    if v.radius and v.radiusColor then
      local radiusBlip = AddBlipForRadius(v.coords.x, v.coords.y, v.coords.z, v.radius or 0) -- you can use a higher number for a bigger zone
      SetBlipHighDetail(radiusBlip, true)
      SetBlipColour(radiusBlip, v.radiusColor or 15)
      SetBlipAlpha(radiusBlip, 128)
    end
    local blip = AddBlipForCoord(v.coords.x, v.coords.y, v.coords.z)
    SetBlipSprite(blip, v.id)
    SetBlipDisplay(blip, v.display)
    SetBlipScale(blip, v.scale)
    SetBlipColour(blip, v.color)
    SetBlipAsShortRange(blip, true)
    SetBlipHighDetail(blip, true)
    local blipName = 'extend_blipcustom'
    AddTextEntry(blipName, v.text)
    BeginTextCommandSetBlipName(blipName)
    EndTextCommandSetBlipName(blip)
  end

end)
