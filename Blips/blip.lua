local blips = {
  
     {title="Example", colour=1, id=1, x = 0.0, y = 0.0, z = 0.0} -- Add "," At The End Of Every line Exept The Last One!
     -- Colors & Blips At "https://docs.fivem.net/docs/game-references/blips/"
}
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.2) -- Size Of The Blip
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)
