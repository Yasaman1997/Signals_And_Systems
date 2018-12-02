


fs = 100;
t = 0:1/fs:1-1/fs;
x = pi;


a=fft(x);
%andaze
R=abs(a);
%phase
Theta=angle(a);


ly = length(a);
f = (-ly/2:ly/2-1)/ly*fs;

figure
stem(f,abs(fftshift(x)))
xlabel 'Frequency (Hz)'
ylabel '|y|'

figure
stem(f,angle(fftshift(x)))
xlabel 'Frequency (Hz)'
ylabel '|y|'



