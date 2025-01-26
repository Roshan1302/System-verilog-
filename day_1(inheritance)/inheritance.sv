`timescale 1ns / 1ps
// ////////////single inheritance  ////////////////
//class base ;
// int data ;
// function void b_disp();
// $display("base data  = %0d",data );
// endfunction 
//endclass 

//class child extends base ;
// int id ;
// function void c_disp();
// $display("child data  = %0d",id );
// endfunction 
//endclass 
//module inheritance;
//child c ;
//initial 
//  begin 
//    c= new();
//    c.data = 20 ;
//    c.id = 30;
//    c.b_disp();
//    c.c_disp();
//  end 
//endmodule

// ////////////multilevel inheritance  ////////////////

class base ;
  int data;
  function void b_disp();
    $display("base data  = %0d", data);
  endfunction
endclass

class child_1 extends base;
  int id;
  function void c1_disp();
    $display("child_1 id  = %0d", id);
  endfunction
endclass

class child_2 extends child_1;
  int id_2;
  function void c2_disp();
    $display("child_2 id_2 = %0d", id_2);
  endfunction
endclass

module inheritance;
  child_2 c; // Create an instance of child_2
  initial begin
    c = new();
    c.data = 20;
    c.id = 10;
    c.id_2 = 30;
    c.b_disp();
    c.c1_disp();
    c.c2_disp();
  end
endmodule
