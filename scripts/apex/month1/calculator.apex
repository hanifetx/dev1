Calculator calc = new Calculator();
date dt=date.today();
boolean leapCheck=calc.leapYearCheck(dt);
system.debug(leapCheck);










//calc.add(10,15);//add(integer a, integer b) --> it will automatically recognize from datatype

//calc.add(10.10,15.15);//add(decimal a, decimal b)

integer x = calc.add(10,15,55);
system.debug('x is ' + x);

