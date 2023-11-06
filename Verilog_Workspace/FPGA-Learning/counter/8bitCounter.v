module counter (
    input clk,  // ʱ������
    input rst_n, // ��λ����
    output reg [7:0] count // 8λ�������
);

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) // ��λ�ź�Ϊ�͵�ƽʱ��������������
        count <= 8'b0;
    else
        count <= count + 1; // ÿ�������ؼ�����1
end

endmodule
