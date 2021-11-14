# rsa-voice-encryption
**Implementing RSA algorithm for voice encryption using MATLAB**

There is 2 main program, one for sender, and one for receiver. 

The sender part, you will assign two prime number (which is p and q), and then record your voice for 5 second. After that, it will generate key which is e, d, and n (remember your private key (d,n)), and then the voice will be encrypted.

In the receiver part, input your private key and then upload the encrypted voice data, and then it will decrypt it so you can hear the original voice.

Acknowledgement: this code was adapted from https://youtu.be/1tdE9CMGk-E. My contribution is adapting it for voice encryption.

[![View Implementation of RSA Encryption for Voice Encryption on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/101989-implementation-of-rsa-encryption-for-voice-encryption)
