`timescale 1ns / 1ps
 /// /////////polymorphism whwre overriding base class by child class ////////////////////////
class base ;
int data ;
int id ;
virtual function void disp();
  $display("base : data = %0d, id = %0d", data , id  );
endfunction 
endclass 

class child extends base ;
//int id ;
//int data;
 function void disp();
  $display("child : data = %0d , id = %0d",data, id );
endfunction 
endclass 

module polymorphism_1;
child c ;
base b ;
initial 
  begin
  c= new();
  b = c ;
  b.data =30 ;
  b.id = 20 ;
  $display("--------------------------");
  b.disp();
  c.disp();
  $display("--------------------------");
  end 
endmodule

/////////////////////////  overriding child class by base class /////////////////////////

//class base ;
//int data ;
//int id ;
//virtual function void disp();
//  $display("base : data = %0d, id = %0d", data , id  );
//endfunction 
//endclass 

//class child extends base ;
////int id ;
////int data;
// function void disp();
//  super.disp();
//  $display("child : data = %0d , id = %0d",data, id );
//endfunction 
//endclass 

//module polymorphism;
//child c ;
//base b ;
//initial 
//  begin
//  c= new();
//  b = c ;
//  c.data =30 ;
//  c.id = 20 ;
//  $display("--------------------------");
////  b.disp();
//  c.disp();
//  $display("--------------------------");
//  end 
//endmodule

////////////////////////// how to make atomatic virtual extended class method //////////////
`timescale 1ns / 1ps
 /// /////////polymorphism whwre overriding base class by child class ////////////////////////
//class base ;
//int data ;
//int id ;
//virtual function void disp();
//  $display("base : data = %0d, id = %0d", data , id  );
//endfunction 
//endclass 

//class child extends base ;
//int id ;
//int data;
// function void disp();
//  $display("child : data = %0d , id = %0d",data, id );
//endfunction 
//endclass 

//module polymorphism;
//child c ;
//base b ;
//initial 
//  begin
//  c= new();
//  b = c ;
//  b.data =30 ;
//  b.id = 20 ;
//  $display("--------------------------");
//  b.disp();
//  c.disp();
//  $display("--------------------------");
//  end 
//endmodule

