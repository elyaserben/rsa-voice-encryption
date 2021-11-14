clc
clear
close all

%% 0. Variable
% common sampling freq. for voice
fs = 8000; 

% two prime numbers (you can modify it)
p = 13;     
q = 23;

%% I. Recording
rec = audiorecorder;
msg1 = msgbox('recording for 5 second');
recordblocking(rec,5);
delete(msg1);
msg2 = msgbox('recording done');

%% II. Get data from recorded voice
y = getaudiodata(rec,'uint8');
yp = getaudiodata(rec);
original = double(y);
figure(1);
plot(y); title('original voice');

% write original voice data to xlsx
xlswrite('RSA_original_voice.xlsx',original);

%% III. Playing original voice
% if you want to play the original voice
% type this code below in command window
% >> sound(yp,fs)

%% IV. Generating Key
[eval,nval,dval] = generateKey(p,q);
fprintf('public exponent,   e = %d \n',eval);
fprintf('modulus,           n = %d \n',nval);
fprintf('private exponent,  d = %d \n\n',dval);
fprintf('public key (e,n),  (%d,%d)\n',eval,nval);
fprintf('private key (d,n), (%d,%d)\n\n',dval,nval);

%% V. Encrypting
% voice encrypted using public key (e,n)
encrypted = encrypt(original,eval,nval);
figure(2);
plot(encrypted); title('encrypted voice');
% write encrypted voice data to xlsx
xlswrite('RSA_encrypted_voice.xlsx',encrypted);

%% VI. Playing encrypted voice
enc = uint8(encrypted);
encp = audioplayer(enc,8000);
% if you want to play the encrypted voice
% type this code below in command window
% >> play(encp)