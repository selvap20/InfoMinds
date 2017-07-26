package com.infominds.stock

import java.util.Date;
import com.infominds.item.Item

class StockInput {
	
	String batchNo
	String expiryMonth
	Item item
	Integer quantity
	BigDecimal rate
	BigDecimal billAmount
	boolean taxApplicable
	Integer taxPercentrage
	BigDecimal totalBill
	
	boolean offerApplicable
	boolean taxOnOffer
	
	Date dateCreated
	Date dateUpdated
	String userId
	
	
	

    static constraints = {
		taxPercentrage inList: [5, 12 , 18 , 28]
    }
}
