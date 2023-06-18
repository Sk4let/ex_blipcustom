CreateThread(function()
  for _, v in pairs(Config.blips) do
    if v.radius and v.radiusColor then
      local radiusBlip = AddBlipForRadius(v.x, v.y, v.z, v.radius or 0) -- you can use a higher number for a bigger zone
      SetBlipHighDetail(radiusBlip, true)
      SetBlipColour(radiusBlip, v.radiusColor or 15)
      SetBlipAlpha(radiusBlip, 128)
    end
    local blip = AddBlipForCoord(v.x, v.y, v.z)
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
