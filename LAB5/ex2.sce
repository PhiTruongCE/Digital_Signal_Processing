clc;
clf;
clear all;
wave = "E:\BKUdocument\Digital_Signal_Processing\myrec";
wavread(wave, "size")
wavread(wave, "info")
y = wavread(wave, 5)    
y = wavread(wave, [4 7]) 
[y, Fs, bits] = wavread(wave);
plot2d(y(1,:));
