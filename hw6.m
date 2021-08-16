clc; close all;
gs=tf([4],[.1 1.1 1 0])
figure
margin(gs)
%title('Bode of Gs')
gc=tf(2*[1 1.433],[1 4.3301])
gcp=series(gs,gc)
gcl=feedback(gcp,1)
figure
step(gcl)
title('Step of Closed Loop')
t=0:.01:5;
figure
margin(gcp)
%title('Bode of Gc*Gs')
figure
lsim(gcl,t,t)
title('Ramp of G Closed Loop')
