public with sharing class StudentTriggerHandler {
    public void run(){
        if (Trigger.isBefore && Trigger.isInsert){
            handleCommentFill((List<Student__c>) Trigger.new);
        }

    }

    private static void handleCommentFill(List<Student__c> students){
        for (Student__c student : students){
            student.Comment__c = 'Done';
        }
    }
}