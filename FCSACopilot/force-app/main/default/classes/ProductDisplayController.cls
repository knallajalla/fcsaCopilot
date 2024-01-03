public with sharing class ProductDisplayController {
    private static Set<String> hasProductSet = new Set<String>();
    private static Set<String> hadProductSet = new Set<String>();

    //Get all ProductOwned__mdt records and return as string
    public static String getAllProductOwned() {
        List<ProductOwned__mdt> products = [SELECT Id,
        Id__c,
        SalesforceName__c,
        Order__c,
        Owned__c,
        Owned_History__c,
        Product_Owned_Category__c,
        Product_Owned_Category__r.Category_Name__c,
        Product_Owned_Category__r.Category_Order__c FROM ProductOwned__mdt
        WHERE Order__c != NULL
		ORDER BY Order__c ASC NULLS LAST];
        return JSON.serialize(products);
    }

    //Get Product by AccountId then populate hasProductSet and hadProductSet based products assigned to an account
    private static populateOwnedProductSet(String AccountId){
        getProduct

    }

  
}