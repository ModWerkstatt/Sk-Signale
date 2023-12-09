function data()
return {
	info = {
		minorVersion = 0,
		severityAdd = "NONE",
		severityRemove = "WARNING",
		name = _("Sk-Signale"),
		description = _("mod_desc"),
		params = {			
			{
				key = "endless_mode",
				name = _("Endlosmodus"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },				
				defaultIndex = 0,	
			},
			{
				key = "sk_signal_mg",
				name = _("große Mastschilder"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },				
				defaultIndex = 0,
			},
			{
				key = "sk_signal_mk",
				name = _("kleine Mastschilder"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },				
				defaultIndex = 1,
			},
			{
				key = "sk_signal_mo",
				name = _("Mastschilder mit weißem Rand"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },				
				defaultIndex = 0,
			},
			{
				key = "sk_signal_hp69",
				name = _("Hauptsignale mit H/V 69 Schirmen"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },				
				defaultIndex = 1,
			},
			{
				key = "sk_signal_hp59",
				name = _("Ausfahrsignale mit H/V 59 Schirmen"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },				
				defaultIndex = 0,
			},
			{
				key = "sk_signal_hpkp",
				name = _("Ausfahrsignale mit Kompaktschirmen"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },				
				defaultIndex = 0,
			},
			{
				key = "sk_signal_vsig69",
				name = _("Vorsignale mit H/V 69 Schirmen"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },				
				defaultIndex = 1,
			},
			{
				key = "sk_signal_vsigrund",
				name = _("Vorsignale mit runden Schirmen"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },				
				defaultIndex = 1,
			},
			{
				key = "sk_signal_side",
				name = _("linksseitige Signale"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },				
				defaultIndex = 0,
			},
			{
				key = "sk_signal_zs3_v",
				name = _("Zs3/Zs3v"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },				
				defaultIndex = 0,
			},
			{
				key = "sk_signal_zs6",
				name = _("Zs 6"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },				
				defaultIndex = 0,
			},
			{
				key = "sk_signal_wie",
				name = _("Vorsignalwiederholer"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },				
				defaultIndex = 0,
			},
			{
				key = "sk_signal_kl",
				name = _("Kennlicht"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },				
				defaultIndex = 0,
			},
			{
				key = "sk_signal_shl",
				name = _("Sh 1"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },				
				defaultIndex = 0,
			},
			{
				key = "sk_signal_zsOne",
				name = _("Zs 1"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },				
				defaultIndex = 0,
			},
			{
				key = "sk_signal_waypoint",
				name = _("Wegpunkte"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },				
				defaultIndex = 0,	
			},
		},
		modid = "modwerkstatt_sk_signale_1",
		authors = {
			{
				name = "ModWerkstatt",
				role = "CREATOR",	
			}, 
		},
		url = "",		
		steamId = 0, 
		tags = { "Signal", "Sk", "Germany", "Bundesbahn" },  		
		dependencies = { "modwerkstatt_signalkomponenten_1", },
	},

	runFn = function (settings, modParams)
		
		local function mgFilter(fileName, data)		
			if data.metadata.signal and data.metadata.SkSignale and data.metadata.SkSignale.mg == true then			
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2
			end
			return data
		end	
		local function mkFilter(fileName, data)		
			if data.metadata.signal and data.metadata.SkSignale and data.metadata.SkSignale.mk == true then			
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2
			end
			return data
		end	
		local function moFilter(fileName, data)		
			if data.metadata.signal and data.metadata.SkSignale and data.metadata.SkSignale.mo == true then			
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2
			end
			return data
		end	
		local function hp69Filter(fileName, data)		
			if data.metadata.signal and data.metadata.SkSignale and data.metadata.SkSignale.hp69 == true then			
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2
			end
			return data
		end	
		local function hp59Filter(fileName, data)		
			if data.metadata.signal and data.metadata.SkSignale and data.metadata.SkSignale.hp59 == true then			
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2
			end
			return data
		end	
		local function hpkpFilter(fileName, data)		
			if data.metadata.signal and data.metadata.SkSignale and data.metadata.SkSignale.hpkp == true then			
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2
			end
			return data
		end	
		local function vsig69Filter(fileName, data)		
			if data.metadata.signal and data.metadata.SkSignale and data.metadata.SkSignale.vsig69 == true then			
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2
			end
			return data
		end	
		local function vsigrundFilter(fileName, data)		
			if data.metadata.signal and data.metadata.SkSignale and data.metadata.SkSignale.vsigrund == true then			
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2
			end
			return data
		end	
		local function sideFilter(fileName, data)		
			if data.metadata.signal and data.metadata.SkSignale and data.metadata.SkSignale.side == "left" then	
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2				
			end				
			return data
		end
		local function zs3vFilter(fileName, data)		
			if data.metadata.signal and data.metadata.SkSignale and data.metadata.SkSignale.zs3Zs3v == true then	
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2				
			end				
			return data
		end 
		local function wieFilter(fileName, data)		
			if data.metadata.signal and data.metadata.SkSignale and data.metadata.SkSignale.wied == true then	
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2				
			end				
			return data
		end 
		local function klFilter(fileName, data)		
			if data.metadata.signal and data.metadata.SkSignale and data.metadata.SkSignale.Kl == true then	
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2				
			end				
			return data
		end 
		local function sh1Filter(fileName, data)		
			if data.metadata.signal and data.metadata.SkSignale and data.metadata.SkSignale.Sh1 == true then	
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2				
			end				
			return data
		end 
		local function zs1Filter(fileName, data)		
			if data.metadata.signal and data.metadata.SkSignale and data.metadata.SkSignale.Zs1 == true then	
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2				
			end				
			return data
		end 
		local function zs6Filter(fileName, data)		
			if data.metadata.signal and data.metadata.SkSignale and data.metadata.SkSignale.Zs6 == true then	
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2				
			end				
			return data
		end 
		local function waypointFilter(fileName, data)		
			if data.metadata.signal and data.metadata.SkSignale and data.metadata.SkSignale.waypoint == true then	
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2				
			end					
			return data	
		end 
		local function endlessFilter(fileName, data)	
			if data.metadata.signal and data.metadata.SkSignale then
                data.metadata.availability.yearTo = 0					
            end
			return data	
		end 

		if modParams[getCurrentModId()] ~= nil then
			local params = modParams[getCurrentModId()]				
			if params["sk_signal_side"] == 0 then				
				addModifier("loadModel", sideFilter)
			end
			if params["sk_signal_mg"] == 0 then				
				addModifier("loadModel", mgFilter)
			end
			if params["sk_signal_mk"] == 0 then				
				addModifier("loadModel", mkFilter)
			end
			if params["sk_signal_mo"] == 0 then				
				addModifier("loadModel", moFilter)
			end
			if params["sk_signal_hp69"] == 0 then				
				addModifier("loadModel", hp69Filter)
			end
			if params["sk_signal_hp59"] == 0 then				
				addModifier("loadModel", hp59Filter)
			end
			if params["sk_signal_hpkp"] == 0 then				
				addModifier("loadModel", hpkpFilter)
			end
			if params["sk_signal_vsig69"] == 0 then				
				addModifier("loadModel", vsig69Filter)
			end
			if params["sk_signal_vsigrund"] == 0 then				
				addModifier("loadModel", vsigrundFilter)
			end
			if params["sk_signal_zs3_v"] == 0 then				
				addModifier("loadModel", zs3vFilter)
			end
			if params["sk_signal_wie"] == 0 then				
				addModifier("loadModel", wieFilter)
			end
			if params["sk_signal_kl"] == 0 then				
				addModifier("loadModel", klFilter)
			end
			if params["sk_signal_shl"] == 0 then				
				addModifier("loadModel", sh1Filter)
			end
			if params["sk_signal_zsOne"] == 0 then				
				addModifier("loadModel", zs1Filter)
			end
			if params["sk_signal_zs6"] == 0 then				
				addModifier("loadModel", zs6Filter)
			end
			if params["sk_signal_waypoint"] == 0 then
				addModifier("loadModel", waypointFilter)
			end
            if params["endless_mode"] == 1 then
                addModifier("loadModel", endlessFilter)
            end
			
		else
			--addFileFilter("model/signal", sideFilter)
			addModifier("loadModel", mgFilter)
			addModifier("loadModel", mkFilter)
			addModifier("loadModel", moFilter)
			addModifier("loadModel", hp69Filter)
			addModifier("loadModel", hp59Filter)
			addModifier("loadModel", hpkpFilter)
			addModifier("loadModel", vsig69Filter)
			addModifier("loadModel", vsigrundFilter)
			addModifier("loadModel", zs3vFilter)
			addModifier("loadModel", wieFilter)
			addModifier("loadModel", klFilter)
			addModifier("loadModel", sh1Filter)
			addModifier("loadModel", zs1Filter)
			addModifier("loadModel", zs6Filter)
			addModifier("loadModel", waypointFilter)
			addModifier("loadModel", endlessFilter)
		end 

	end
}
end
