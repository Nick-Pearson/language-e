
test.e
Sample e file to test syntax highlighting
<'

extend sys {
   clk_p : inout simple_port of bit is instance;
   keep clk_p.hdl_path() == "~/clk";

   event clk is fall(clk_p$)@sim;

   setup() is also {
      set_check("...", ERROR);  --  quit the simulation on error
      set_check("...", ERROR_CONTINUE);   // don't quit the simulation on error
   };

   run() is also {

     simulator_command("probe -create -shm -all -depth all");
     
   };



}; // extend sys

cover covergroup is {
  item mycoveritem using ignore=(mycoveritem==0);
  item othercoveritem using when=(othercoveritem==1);
};

'>



'>
Footer Comments
