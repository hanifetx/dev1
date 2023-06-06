// MapDemo.mapStringInteger();

 Map<string, string> mapCC= new Map<string, string>();
 mapCC.put('USA', 'Dollar'); 
 mapCC.put('France', 'Euro');
mapCC.put('Portugal', 'Euro');
mapCC.put('India', 'Rupees');
mapCC.put('India', 'Rupee');
 mapCC.put('Turkiye', 'Lira');
  mapCC.put('ElSalvador', 'Bitcoin');
   mapCC.put('usa', 'usd');
   system.debug(mapCC);
    mapCC.put('ElSalvador', 'BTC'); 
    
    
    string currUSA=mapCC.get('USA');
    system.debug(currUSA);
     string curIndia=mapCC.get('India');
     system.debug(curIndia);
     string country='Turkiye';
     string curr=mapcc.get(country);
     system.debug(country+' currency '+curr);
     

set<string> allCountry = mapCC.keySet();
system.debug('all countries ' + allCountry);
List<string>  allCurrencies =mapCC.values();
system.debug('all curriencies'+allCurrencies);


set<string> allCountries = mapCC.keySet();
for (string eachCountry :allCountries){
system.debug('country is ' + eachCountry);
 string eachCurrency=mapcc.get(eachcountry);
 
 system.debug(' country is  ' + eachCountry +'  currency  is ' + eachCurrency);
 system.debug('-----');
}