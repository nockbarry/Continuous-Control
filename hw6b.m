clear; clc; close all;
gs=tf([50],[1 1 0])
margin(gs)
figure
gc=tf([1 3.8],[1 27.45])
sys=series(gs,gc)
margin(sys)
t=0:.01:5;
syscl=feedback(sys,1)
%title('Bode of Gc*Gs')
figure
lsim(syscl,t,t)
hold on
lsim(feedback(gs,1),t,t)
legend('Compensated','Uncompensated')
figure
step(syscl)
hold on
step(feedback(gs,1))
legend('Compensated','Uncompensated')