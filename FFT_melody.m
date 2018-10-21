x1=audioread('orig_input.wav');
[x2,fs]=audioread('melodies.wav');% luu 2 file audio vao x1 va x2
x2=x2(1:length(x1),:);%dong bo chieu dai 
x=(x1+x2);  %gop am thanh
audiowrite('melody.wav',x,fs);  %ghi ket qua
X=fft(x);%FFT
subplot(1,2,1);
plot(abs(X));title('Figure 1');
N=fs;
transform = fft(x,N)/N;
magTransform = abs(transform);
faxis = linspace(-fs/2,fs/2,N);
subplot(1,2,2);
plot(faxis,fftshift(magTransform));title('Figure 2');
xlabel('Frequency (Hz)');
