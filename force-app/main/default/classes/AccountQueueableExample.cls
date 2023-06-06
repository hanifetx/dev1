public class AccountQueueableExample implements Queueable {
    List<Account> acclist;
    public AccountQueueableExample(List<Account> accList) {
      this.acclist=accList;
    }
    public void execute(QueueableContext qc){
        for (account eachAcc : accList) {
            eachAcc.name += '--SI';

        }
        update acclist;
    }
}