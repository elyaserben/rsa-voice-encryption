clc
clear
close all

%% 0. Variable
% common sampling freq. for voice
fs = 8000; 

% private key (d,n), 
% use (d,n) generated at sender program,
% if you use different key,
% then the voice can't be decrypted
d = 53;     
n = 299;

%% I. Upload encrypted voice data
% select 'RSA_encrypted_voice.xlsx'
en = uigetfile('*.xlsx');
encrypted = xlsread(en);
z = uint8(encrypted);
figure(1);
plot(encrypted); 
title('encrypted voice');

%% II. Playing encrypted voice
k = audioplayer(z,fs);
% if you want to play the encrypted voice
% type this code below in command window
% >> play(k)

%% III. Decrypting 
decrypted = decrypt(encrypted,d,n);
figure(2);
plot(decrypted);
title('decrypted voice');
dec = uint8(decrypted);
xlswrite('RSA_decrypted_voice.xlsx',dec);

%% IV. Playing decrypted voice
decp = audioplayer(dec,fs);
% if you want to play the decrypted voice
% type this code below in command window
% >> play(decp)
