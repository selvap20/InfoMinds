package com.infominds.item

class Item {
	
	String itemName
	String itemDesc
	String itemComments
	
	static belongsTo = [itemType: ItemType]

    static constraints = {
    }
}
