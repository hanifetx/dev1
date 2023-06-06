public class String_Assignment {
    public void stringAssignment() {
        string localString='Thanks for the session on the string';
        system.debug(localString);
        
        integer lcsLenght=localString.length();
        system.debug(lcsLenght);
        
        string uplcs=localString.toUpperCase();
        system.debug(uplcs);
        
        boolean checklcs=localString.contains('session');
        system.debug(checklcs);

        boolean checklcs2=localString.contains('sessions');
        system.debug(checklcs2);

        boolean checklcs3=localString.contains('SESSION');
        system.debug(checklcs3);
    
    }
}