`timescale  1ns/1ns   // ��λ/����

module testbench_led();

  reg    key;
  wire   led;
  
  initial begin
     $monitor("%t key=%b led=%b",$time, key, led);
    key <= 1'b1;
    # 20           // �ӳ����
    key <= 1'b0;
    # 500           // �ӳ����
    key <= 1'b1;
    # 1000
    key <= 1'b0;
    # 1000
    key <= 1'b1;

  end

initial begin
    $dumpfile("testbench_led.vcd");
    $dumpvars(0, testbench_led);
  end

led u_led(
  .key (key),
  .led (led)
);
  
endmodule






