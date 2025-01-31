//write a constraint to genearate pattern 0102030405

class pattern ;
    rand int a[];
    int i ;
    constraint c1 {a.size()==10;}
    constraint c2 {foreach(a[i]){
    if(i%2==0)
        a[i]==0;
    else 
        a[i]== (i+1)/2 ;    }}
endclass 
module constraint_pattern;
    pattern ch ;
    initial 
        begin 
            ch = new();
            ch.randomize();
            foreach(ch.a[i])
                $display("%0d",ch.a[i]);
        end 
endmodule
