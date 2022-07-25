clc
clear all
close all

r=4;

n=[3:2^r];


dft_mult=n.^2
dft_sums=n.^2-n
dft_ops=dft_mult+dft_sums

fft_mult=0.5*n.*log2(n)
fft_sums=n.*log2(n)
fft_ops=fft_mult+fft_sums


dft_fft=dft_ops./fft_ops
