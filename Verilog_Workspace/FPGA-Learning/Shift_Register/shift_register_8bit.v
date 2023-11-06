module shift_register_8bit(
    input  clk,           // ʱ������
    input  reset,         // ��λ����
    input  shift_left,    // ��������
    input  shift_right,   // ��������
    input  data_in,       // ��������
    output reg [7:0] data // 8λ��λ�Ĵ������
);


always @(posedge clk or negedge reset) begin
    if (!reset) 
        data <= 8'b0; // ��λʱ�����Ĵ�������
     else  if (shift_left) 
            // ���Ʋ���
            data <= {data[6:0], data_in};
     else if (shift_right) 
            // ���Ʋ���
            data <= {data_in, data[7:1]};
        else
            // ����λ����������������
            data <= data_in;
        end

endmodule
