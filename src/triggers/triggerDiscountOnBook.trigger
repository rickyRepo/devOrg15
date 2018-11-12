trigger triggerDiscountOnBook on Book__c (before insert) {
	
	Book__c[] books = Trigger.new;
	
	DiscountOnBook.applyDiscount(books); 
    
}