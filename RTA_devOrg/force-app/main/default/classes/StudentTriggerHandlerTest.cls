
@isTest
private class StudentTriggerHandlerTest {

    @isTest
    static void myUnitTest() {
        List<Student__c> students = new List<Student__c>();

        for(Integer i = 0; i < 100; i++){
            Student__c student = new Student__c();
            student.Name = 'Test' + i;
            student.Mark__c = i;
            students.add(student);
        }

        insert students;

        for(Student__c student : [SELECT Id, Name, Comment__c FROM Student__c]){
            System.assertEquals('Done', student.Comment__c);
        }
    }
}