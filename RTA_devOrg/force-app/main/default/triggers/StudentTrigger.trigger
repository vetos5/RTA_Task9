trigger StudentTrigger on Student__c (before insert) {
    new StudentTriggerHandler().run();
}