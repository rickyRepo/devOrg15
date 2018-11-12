/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an organization are executed whenever Apex code is deployed
 * to a production organization to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production organization. In addition, all triggers must have some code coverage.
 * 
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the organization size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */
@isTest
private class DiscountOnBookTestClass {

    static testMethod void validateDiscountOnBook() {
        
        Book__c book = new Book__c(Name='India of My Dream', Price__c=100);
        
        System.debug('Price befor inserting new book: '+book.Price__c);
        
        insert book;
        
        book= [SELECT price__c FROM BOOK__C WHERE id=:book.Id];
        
        System.debug('Price after trigger fired: '+book.Price__c);
        
        //data type is case-insensitive
        System.assertEquals(90,book.Price__c);
        
        Integer i;
        INTEGER k;
        integer l;
        intEger m;
        
        long num = 2346783453L;
                
    }
}