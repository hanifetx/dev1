public  class LeadsBatchSchedule implements Schedulable {
    public void execute(SchedulableContext sc){
      LeadsBatch ld=new LeadsBatch();
      database.executeBatch(ld,50);
    }
}