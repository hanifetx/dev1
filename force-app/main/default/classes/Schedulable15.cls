public class Schedulable15 implements Schedulable {

    public void execute(SchedulableContext SC) {
        BatchApex15 b15 = new BatchApex15();
        Database.executeBatch(b15, 5);
    }

}