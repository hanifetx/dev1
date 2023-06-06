
@isTest
public class AssetTriggerHandlerTest {
    @isTest
    public static void testassetHandlerUpdate() {
      account acc =new account();
      acc.name='test acc';
      insert acc;
        List<Asset> listas = new List<Asset>();
        Asset ass = new Asset();
        ass.accountId=acc.Id;
        ass.Name = 'test';
        ass.Status = 'Shipped';
        listas.add(ass);
        Asset ass2 = new Asset();
        ass2.Name = 'test2';
        ass2.Status = 'Installed';
        ass2.accountId=acc.Id;
        listas.add(ass2);
        Asset ass3 = new Asset();
        ass3.Name = 'test3';
        ass3.Status = 'Registered';
        ass3.accountId=acc.Id;
       listas.add(ass3);
         insert listas;
        Asset assetl = [select Id, Name, Status, Description from Asset where name='test' limit 1];
        assert.areEqual('Asset is shipped', assetl.Description);
        assetl.status='Installed';
        update assetl;
        Asset assetl2 = [select Id, Name, Status, Description from Asset where name='test' limit 1];
        assert.areEqual('Asset is Installed', assetl2.Description);
            
        Asset assetl3 = [select Id, Name, Status, Description from Asset where name='test3' limit 1];
        assetl3.status='Shipped';
        update assetl3;
       
        Asset assetl4 = [select Id, Name, Status, Description from Asset where name='test3' limit 1];
        assert.areEqual('Asset is shipped', assetl4.description);
        

    }
}











// // @istest
// // public  class AssetTriggerHandlerTest {
// //     @istest
// //     public static void testassetHandlerUpdate() {
// //         list<asset> listas=new  list<asset> ();
// //         asset ass= new asset();
// //         ass.Name='test';
// //         ass.Status='Shipped';
// //         listas.add(ass);
// //         asset ass2= new asset();
// //         ass2.Name='test2';
// //         ass2.Status='Shipped';
// //         listas.add(ass2);
// //       insert listas;
// //       list<asset> assetl=[select id, name,status,description from asset];
// //        assert.areEqual('Asset is Shipped',assetl[1].description);
     
// //    assetl[1].status='Installed';
// //    update assetl;
// //    assert.areEqual('Asset is Installed',assetl[1].description);

      
      


// //     }
