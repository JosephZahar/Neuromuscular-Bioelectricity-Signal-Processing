%%Raw EMG data
allSensorData = xlsread('321.xlsx');
sensor1 = allSensorData(:,2);
sensor2 = allSensorData(:,3);
Time = allSensorData(:,1);
Fs = 2000;
T = 1/Fs;
L = length(sensor1);  
figure;
subplot (5,1,1), plot(Time, sensor1);
title('Raw EMG');
xlabel('Time');
ylabel('Amplitute (mV)');   

%Filtered RawEMG data
[y2]= NotchFilter(sensor1,50,Fs);
[y]= PassFilter(y2,[10 400],Fs);
subplot (5,1,2), plot(Time, y,'b');
title('Filtered EMG');
xlabel('Time');
ylabel('Amplitute (mV)'); 

%%Rectified EMG data to mean of polarisation
bsl = mean(y,1);
rectEMG = abs (y - repmat(bsl,length(y), 1) );
subplot(5,1,3), plot(Time,rectEMG,'b')
title('Rectified EMG data to mean of polarisation')
xlabel('Time')
ylabel('Amplitute (mV)')

%Smoothing rectified EMG data
smEMG = smooth(rectEMG, 10);
subplot(5,1,4), plot(Time,smEMG,'b')
title('Smoothed Rectified EMG data')
xlabel('Time')
ylabel('Amplitute (mV)')


% Plot single-sided amplitude spectrum.
NFFT = 2^nextpow2(L);         % Next power of 2 from length of y
Y = fft(y,NFFT)/L;
f = Fs/2*linspace(0,1,NFFT/2);
% Get Mean Power frequency
s = 2*abs(Y(1:NFFT/2));
MF =  f*s/sum(s);
fprintf('MPF =%5.2f\n',MF); % display result in command window
subplot(5,1,5), plot(f,2*abs(Y(1:NFFT/2)),'b') 
title('Single-Sided Amplitude Spectrum of y(t)')
xlabel('Frequency (Hz)')
ylabel('|Y(f)|');

%chunk
[x1,~] = ginput(1);
[x2,~] = ginput(1);
chunk1 = x1/(5e-4);
chunk2 = x2/(5e-4);
chunkedEMG = y(chunk1:chunk2);
xx = length(chunkedEMG);
tFINAL = (1:xx).*5e-4;
figure;
plot(tFINAL,chunkedEMG)

