trigger LeadTrigger on lead (before insert,before update) {
    list<lead> ld=trigger.new;
   if (trigger.isBefore) {
    if (trigger.isInsert) {
        
        for (lead eachl : ld) {
            System.debug(eachl);
            
        }
        
    }
    if (trigger.isUpdate) {
        for (lead eachld : ld) {
            System.debug(' id= '+eachld.id+'  name= '+eachld.name+'  description  =  '+eachld.description);
            
        }
        
    }
    
   }


}