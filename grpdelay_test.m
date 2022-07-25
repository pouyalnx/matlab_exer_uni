b=[1 -1 0 1 -1];
a=[1 0 1 0 1];

[g,w]=grpdelay(b,a);
plot(w,g);