function [e,n,d] = generateKey(p,q)

n = p*q;
phi = (p-1)*(q-1);

for e = 2:phi-1
    if gcd(phi,e) == 1
        break
    end
end

for d = 2:phi-1
    if mod(e*d,phi) == 1
        break
    end
end