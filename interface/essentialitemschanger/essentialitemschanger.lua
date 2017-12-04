function init()
  for guiName, guiElement in pairs(config.getParameter("gui")) do 
    if guiElement.type == "itemslot" then
    	widget.setItemSlotItem(guiName, player.essentialItem(guiName) or guiName)
    end --this should make the mod self-updating from the GUI config
  end --if there's ever some additionnal essentialItems slots in the future
end --it'd break for inspetionmode but players have it from the start so probably not a problem

function leftClick(widgetName, widgetData)
	widget.setItemSlotItem(widgetName, player.primaryHandItem())
	player.giveEssentialItem(widgetName, player.primaryHandItem())
end

function rightClick(widgetName, widgetData)
	player.giveEssentialItem(widgetName, widgetData or widgetName)
	widget.setItemSlotItem(widgetName, widgetData or widgetName)
end