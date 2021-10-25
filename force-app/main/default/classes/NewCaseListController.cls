public with sharing class NewCaseListController {
    List<Case> newList = new List<Case>();
    public List<Case> getNewCases(){
        String newKwd = 'new';
        newList = Database.query('SELECT Id, CaseNumber FROM Case WHERE Status=:newKwd');
        return newList;
    }
}
