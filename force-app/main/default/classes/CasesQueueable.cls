public class CasesQueueable implements Queueable {
    public Id defaultAccId;
    public List<case> cases;
    public CasesQueueable() {

    }
    public CasesQueueable(Id defaultAccId,List<case> cases) {
 this.cases=cases;
 this.defaultAccId=defaultAccId;
}
public void execute(QueueableContext qc){
    for(case eachCase :cases){
        eachCase.AccountId=defaultAccId;
    }
    update cases;
}
}
