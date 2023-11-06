`timescale 1ns / 1ns  // ��λ/����
module tb_8bitCounter();

  reg clk;        // ʱ���ź�
  reg rst_n;      // ��λ�ź�
  wire [7:0] count; // ���������

  // ʱ��������
  always begin
    #5 clk <= ~clk;
  end

  // ��ʼ�������ź�
  initial begin
    $monitor("%t CLK = %b, rst_n = %b, Count = %h", $time, clk, rst_n, count);
    clk <= 0;
    rst_n <= 0;

    // �ȴ�ʱ���ȶ�
    #10 rst_n <= 1;

    // ģ���������
    #20 rst_n <= 0;
    #10;
    #25 rst_n <= 1;
    #10 rst_n <= 0;
    #10;
    
    // ��������
    $finish;
  end

   initial begin
    $dumpfile("t_counter.vcd");
    $dumpvars(0, tb_8bitCounter);
  end

  // ʵ���������Եļ�����ģ��
  counter dut (
    .clk(clk),
    .rst_n(rst_n),
    .count(count)
  );

endmodule
