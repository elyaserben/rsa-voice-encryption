function myanswer = powermods(base,exponent,m)
base = mod(base,m);
myanswer = 1;
for k = 1:exponent
    myanswer = myanswer.*base;
    myanswer = mod(myanswer,m);
end