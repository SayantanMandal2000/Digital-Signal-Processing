clc;
clear all;
close all;
syms z;
H=tf([1,5],[1,3,2])
[r,p]=residue([1,5],[1,3,2])
h=0;
for i=0:(length(r)-1)
    h=h+(r(i+1)/(z-p(i+1)));
end
sum(h)
h1=iztrans(h)
