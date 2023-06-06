public class AccountsSchedulable implements Schedulable {
    public void execute(SchedulableContext sc){
       
        AccountsBatch ab = new accountsBatch();
        database.executeBatch(ab, 50);

        DepartmentsBatch db = new DepartmentsBatch();
        Id JobId = Database.executeBatch(db, 5);
        system.debug('JOB ID is ' + JobId);
    }
}