%Input file
[W Fs nbits] = wavread('goodday4.wav');
figure
plot(W);
xlabel('Time (s)')
ylabel('Amplitude')
title('Sound File in Time Domain, Without Noise')