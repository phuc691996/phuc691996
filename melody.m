x1=audioread('orig_input.wav');
[x2,fs]=audioread('melodies.wav');% luu 2 file audio vao x1 va x2
x2=x2(1:length(x1),:);%dong bo chieu dai 
x=(x1+x2);  %gop am thanh
audiowrite('melody.wav',x,fs);  %ghi ket qua