%Fourier Transform of Sound File

%Load File
file = 'C:\Users\April\OneDrive\MATLAB\badday.wav';
[y,Fs,bits] = wavread(file);

Nsamps = length(y);
t = (1/Fs)*(1:Nsamps);          %Prepare time data for plot

%Plot Sound File in Time Domain
figure
plot(t, y)
xlabel('Time (s)')
ylabel('Amplitude')
title('Sound File in Time Domain, With Noise')

%Do Fourier Transform
y_fft_all = fft(y);            %Retain Magnitude
y_fft = y_fft_all;
y_fft_all(1) = 0;
y_fft = y_fft(1:Nsamps/2);      %Discard Half of Points
freq = Fs*(0:Nsamps/2-1)/Nsamps;   %Prepare freq data for plot

%Plot Sound File in Frequency Domain
figure
plot(freq, abs(y_fft))
xlim([0 1000]);
xlabel('Frequency (Hz)')
ylabel('Amplitude')
title('Frequency Response of Sound File, With Noise')

%Find the first peak of the fft and remove
wzap = [-40:40];
[maxY, xindex] = max(y_fft);
%maxX = freq(xindex);
fprintf('first peak is at %d. ', xindex);
y_fft(xindex + wzap) = 0;
y_fft_all(xindex + wzap) = 0;

%Find the second peak of the fft and remove
[maxY, xindex] = max(y_fft);
%maxX = freq(xindex);
fprintf('second peak is at %d', xindex);
y_fft(xindex + wzap) = 0;
y_fft_all(xindex + wzap) = 0;

%Remove the third remaining peak in the complex part
[maxY, xindex] = max(y_fft_all);
%maxX = freq(xindex);
fprintf('third peak is at %d', xindex);
y_fft_all(xindex + wzap) = 0;

%Remove the fourth remaining peak in the complex part
[maxY, xindex] = max(y_fft_all);
%maxX = freq(xindex);
fprintf('fourth peak is at %d', xindex);
y_fft_all(xindex + wzap) = 0;

%Plot Sound File in Frequency Domain
figure
plot(freq, abs(y_fft))
xlim([0 1000]);
xlabel('Frequency (Hz)')
ylabel('Amplitude')
title('Frequency Response of Sound File, Without Noise')

%Do Inverse Fourier Transform
ynew = ifft(y_fft_all);
%ynew = abs(ynew);
maxlvl = max(ynew);
ynew = ynew/maxlvl;

%Make a new sound file
wavwrite(ynew,Fs,bits,'newsoundfile.wav')
file = 'C:\Users\April\OneDrive\MATLAB\newsoundfile.wav';
[ynewest,Fs,bits] = wavread(file);

Nsamps = length(y);
t = (1/Fs)*(1:Nsamps);          %Prepare time data for plot

%Plot Sound File in Time Domain
figure
plot(t, ynewest)
xlabel('Time (s)')
ylabel('Amplitude')
title('Sound File in Time Domain, Without Noise')

