



----Lets start calling some stuff in.....
--remote.call("MoIndustry","RegisterOre","ore-entity-name","result-item-name",minimum-amount,normal-amount,mining-yield)
--												string			string			 number		     number		  number

--Example
--remote.call("MoIndustry","RegisterOre","coal","coal",0,1,1) -- None Infinite resource
--remote.call("MoIndustry","RegisterOre","coal","coal",150,250,1) -- Infinite resource


remote.call("MoIndustry","RegisterOre","y-res1","y-res1",2,500,1)
remote.call("MoIndustry","RegisterOre","y-res2","y-res2",2,500,1)
remote.call("MoIndustry","RegisterOre","iron-ore","iron-ore",1,1000,1)
remote.call("MoIndustry","RegisterOre","copper-ore","copper-ore",2,500,1)
remote.call("MoIndustry","RegisterOre","coal","coal",2,500,1)
remote.call("MoIndustry","RegisterOre","stone","stone",2,500,1)