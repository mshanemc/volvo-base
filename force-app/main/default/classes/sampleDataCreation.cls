public with sharing class sampleDataCreation {

    public static void createData() {
        account a = new account();
        a.Name= 'Volvo Cars of The Woodlands';
        a.Phone= '888-728-7147';
        a.Website= 'http://www.volvocarswoodlands.com/';
        a.BillingStreet= '16785A Interstate 45 South';
        a.BillingPostalCode= '77385';
        a.BillingCity= 'The Woodlands';
        a.BillingState= 'TX';
        a.BillingCountry= 'USA';
        a.ShippingStreet= '16785A Interstate 45 South';
        a.ShippingCity= 'The Woodlands';
        a.ShippingState= 'TX';
        a.ShippingCountry= 'USA';
        a.ShippingPostalCode= '77385';

        insert a;


        contact c = new contact();
        c.FirstName = 'Jodi';
        c.LastName = 'Innerfield';
        c.Email = 'jinnerfield@salesforce.com';
        c.MobilePhone = '415-622-8174';

        insert c;

        Vehicle__c v = new Vehicle__c();
        v.Convenience_Package__c = true;
        v.Engine__c = 'T5 FWD';
        v.Dealer__c = a.Id;
        v.Owner__c = c.Id;
        v.Hybrid__c = false;
        v.Interior__c = 'Blond Leather in Blond/Charcoal Interior';
        v.Model__c = 'XC90';
        v.Momentum_Plus_Package__c = false;
        v.Paint__c = '0';
        v.Protection_Package_Premier__c = false;
        v.Status__c = 'Evaluation';
        v.Wheels__c = '20\" 5-Double Spoke Matte Tech Black Alloy Wheels';
        v.Year__c = '2018';

        insert v;

        Event e = new Event();
        e.WhatId = v.Id;
        e.WhoId = c.Id;
        e.StartDateTime = system.now().addDays(5).addMinutes(System.now().minute() * -1);
        e.Subject = 'Test Drive for Jodi';
        e.EndDateTime = e.StartDateTime.addHours(1);

        insert e;


    }


}
