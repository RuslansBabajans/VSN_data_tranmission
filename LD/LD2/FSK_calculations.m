%% Clear variables and close figures
format long, clear variables, close all
%==============================================%
%% FSK calculations
DEVIATION=25e3; % Hz
H=1; % modulation index
F0=868300000; % Hz central frequency
PPM=2; % ppm

DATA_RATE=(2*DEVIATION)/(H); % bps
TX_BW=2*DEVIATION+DATA_RATE; % Hz
RX_BW=TX_BW+F0*2*(PPM/1e6);  % Hz
%==============================================%
%% LAB. 5
bit_time=1/DATA_RATE; % DATA_RATE = 50000 bps

Max_packet_length = 512; % bits or 64B
CRC_16= 16; % bits
Preamble = 20; % bits
Sync_word = 16; % bits

Total_max_length = Max_packet_length+CRC_16+Preamble+Sync_word;

t_max=Total_max_length*bit_time; % 11.28 ms
%==============================================%