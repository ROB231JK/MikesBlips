local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},

     {title="PawnShop", colour=0, id=605, x = 198.77, y = -1067.58, z = 29.31},
     {title="kfc", colour=64, id=273, x = 243.67, y = -1068.69, z = 29.29}
  }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)