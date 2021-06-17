clc;
clf;
clear all;
xz=poly([0.75 -0.4 1],"z","c")
yz=poly([2.2403 2.4908 2.2403],"z","c")
hz=syslin('d',yz/xz)
im_rep=flts(eye(1,40),tf2ss(hz))
plot(im_rep)
