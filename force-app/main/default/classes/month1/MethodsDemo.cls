public class MethodsDemo {
    public void welcomeMessage() {
System.debug('hi there,welcome yo the jungle!');
    }
public void samplePrintMessage(string message){
    System.debug(message);
}
public void newMessage(string name){
  System.debug('hi '+name+' welcome to the world of apex!');  
}
public string returnMessage(string name){
    System.debug('inside returnMessage method');
    string returnStr= 'hey '+ name +', nice to meet you';
    return returnStr;

}

}