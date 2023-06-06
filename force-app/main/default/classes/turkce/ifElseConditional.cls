public class ifElseConditional {
    public string positiveOrNegative(integer a) {
 string sayiDurumu;
        if(a>0){
     sayiDurumu='Positive';
 }else if(a<0){
    sayiDurumu='Negative';
 }else{
    sayiDurumu='zero'; 
 }
return sayiDurumu;
    }

public string notOrtalamasi(integer not1 ,integer not2,integer not3){
string gecerNot;
decimal ortalama=(not1+not2+not3)/3;
if(ortalama>=0 && ortalama<=100){
if(ortalama <25){
   gecerNot='F';
}else if (ortalama<45){
    gecerNot='E';
}else if (ortalama<55){
    gecerNot='D';
}else if (ortalama<70){
    gecerNot='C';
}else if (ortalama<85){
    gecerNot='B';
}else{
    gecerNot='A';
}

}else{
    gecerNot='hatali not';
}
return gecerNot;
}
public string  tasKagitMakas(string player1,string player2){
string kazanan;
    if((player1=='tas'&& player2=='makas')||(player1=='kagit'&& player2=='tas')||(player1=='makas ' && player2=='kagit')){
kazanan='player1';

}else if((player1=='tas'&& player2=='kagit')||(player1=='kagit'&& player2=='makas')||(player1=='makas ' && player2=='tas')){
    kazanan='player2';

}else if((player1=='tas'&& player2=='tas')||(player1=='kagit'&& player2=='kagit')||(player1=='makas ' && player2=='makas')){
    kazanan='beraberlik';
}else{
    kazanan='hatali parametre girdiniz';
}
    return kazanan;
}
public string switchMethod(string meyve){
    string result;
    switch on meyve {
   when 'orange' {
        result='orange  0.59';
    }
    when 'Apple' {
        result='apple  0.32';
    }
    when 'banana' {
        result='banana  0.48';
    }
    when 'cherry' {
        result='cherry  3.00';
    }
    when 'mango' {
        result='mango 3.00';
    }
    when 'watermelon' {
        result='watermelon  3.00';
    }
    when else {
        result='sorry we out of'+meyve;
        
    }
}
    return result;


}





}