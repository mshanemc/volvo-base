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


        contact c2 = new contact();
        c2.FirstName = 'Shane';
        c2.LastName = 'McLaughlin';
        c2.Email = 'shane.mclaughlin@salesforce.com';
        c2.MobilePhone = '832-472-8021';

        insert c2;


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


        Vehicle__c vs = new Vehicle__c();
        vs.Convenience_Package__c = false;
        vs.Engine__c = 'T8 eAWD Plug-in Hybrid';
        vs.Delivery_Date__c = Date.newInstance(2015, 11, 29);
        vs.Dealer__c = a.Id;
        vs.Owner__c = c2.Id;
        vs.Hybrid__c = true;
        vs.Interior__c = 'Amber Leather in Charcoal';
        vs.Model__c = 'V60';
        vs.Momentum_Plus_Package__c = false;
        vs.Paint__c = '5';
        vs.Protection_Package_Premier__c = false;
        vs.Status__c = 'Ownership';
        vs.Wheels__c = '19" 10-Spoke Turbine Silver Bright Alloy Wheels';
        vs.Year__c = '2016';
        vs.Manufacturing_Status__c = 'Delivered';
        vs.Price__c = 48625;
        vs.VIN__c = 'YV1DZ8256C2271234';
        insert vs;

        Loan__c l = new Loan__c();
        l.Customer__c = c2.Id;
        l.Interest__c = 3.25;
        l.Price__c = 48625;
        l.SSN__c = '489583885';
        l.Terms__c = 36;
        l.Status__c = 'Approved';
        l.Vehicle__c = vs.Id;
        l.Employer__c = 'Salesforce.com, Inc';
        l.DownPayment__c = 5000;

        insert l;

        Delivery__c d = new Delivery__c();
        d.Customer__c = c2.Id;
        d.Vehicle__c = vs.Id;
        insert d;

        Event e = new Event();
        e.WhatId = v.Id;
        e.WhoId = c.Id;
        e.StartDateTime = system.now().addDays(5).addMinutes(System.now().minute() * -1);
        e.Subject = 'Test Drive for Jodi';
        e.EndDateTime = e.StartDateTime.addHours(1);

        insert e;


    }


}
