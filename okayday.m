[W Fs nbits] = wavread('badday.wav');
N = size(W,1)
T = N/Fs
w = 2*pi/T
wHz = 1/T
plot(W)
f = fft(W);
f(1) = 0;
figure
plot(abs(f))
w1 = n1*wHz
w2 = n2*wHz
plot(abs(f))
xpeak1 = 9386;
n2 = xpeak2 - 1;
xpeak1 = 9386;
xpeak2 = 11730;
n1 = xpeak1 - 1;
n2 = xpeak2 - 1;
w1 = n1*wHz
I = find(f>100000)
xpeak1 = I(1);
xpeak2 = I(2);
xpeak_1 = I(4)
xpeak_2 = I(3)
n2 = xpeak2 - 1
n1 = xpeak1 - 1
w1 = n1*wHz
w2 = n2*wHz
wzap = [-10:10];
F = f;
F(n1+1 + wzap) = 0;
plot(F)
J = find(F>100000)
F(n2+1 + wzap) = 0;
F(N - n1+1 + wzap) = 0;
F(N - n2+1 + wzap) = 0;
J = find(F>100000)
fixed = ifft(F);
fixed = abs(fixed);
maxF = max(abs(F))
F = F/max(F);
maxlvl = max(fixed)
fixed = fixed/maxlvl;
max(abs(fixed))
wavwrite(fixed,Fs,nbits,'okayday.wav')