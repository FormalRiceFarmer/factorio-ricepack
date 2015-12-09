



----Lets start calling some stuff in.....
--remote.call("MoMining","RegisterOre","ore-entity-name","result-item-name",minimum-amount,normal-amount,mining-yield)
--												string			string			 number		     number		  number

--Example
--remote.call("MoMining","RegisterOre","coal","coal",0,1,1) -- None Infinite resource
--remote.call("MoMining","RegisterOre","coal","coal",150,250,1) -- Infinite resource


remote.call("MoMining","RegisterOre","y-res1","y-res1",175,350,1)
remote.call("MoMining","RegisterOre","y-res2","y-res2",175,350,1)
remote.call("MoMining","RegisterOre","iron-ore","iron-ore",175,350,1)
remote.call("MoMining","RegisterOre","copper-ore","copper-ore",175,350,1)
remote.call("MoMining","RegisterOre","coal","coal",175,350,1)
remote.call("MoMining","RegisterOre","stone","stone",175,350,1)
remote.call("MoMining","RegisterOre","uranium-ore","uranium-ore",175,350,1)

--Ripped this out of mofarm...
--remote.call("MoSurvival", "RegisterFoodItem", "item-name", hunger-filled-amount)
--

--Example
--local MaxHunger = remote.call("MoSurvival", "GetMaxHunger") --Grabs the maximum hunger settings.
--remote.call("MoSurvival", "RegisterFoodItem", "salad", MaxHunger/15) --Sets based on a percentage of the max hunger.