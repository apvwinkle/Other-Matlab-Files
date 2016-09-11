%Input file
[W Fs nbits] = wavread('badday.wav');

%Set up for calculations
N = size(W,1);
T = N/Fs;
w = 2*pi/T;
wHz = 1/T;
wzap = [-40:40];

%Take Fourier Transform
plot(W)
f = fft(W);
f(1) = 0;        %gets rid of constants
plot(abs(f))

%Remove first peak and its complex conjugate
[maxY, xpeak1] = max(F);
n1 = xpeak1 - 1
w1 = n1*wHz;
F(n1+1 + wzap) = 0;
F(N - n1+1 + wzap) = 0;

%Remove the second peak and its complex conjugate
[maxY, xpeak2] = max(F);
n2 = xpeak2 - 1
w2 = n2*wHz;
F(n2+1 + wzap) = 0;
F(N - n2+1 + wzap) = 0;

%Take the Inverse Fourier Transform
fixed = ifft(F);
fixed = abs(fixed);
maxlvl = max(fixed);
fixed = fixed/maxlvl;
max(abs(fixed))

%Rewrite and graph the Audio File
wavwrite(fixed,Fs,nbits,'newaudio.wav');
[Wnew Fs nbits] = wavread('newaudio.wav');
figure
plot(Wnew);
