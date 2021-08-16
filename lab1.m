clc, close all
tvec1= linspace(0,20,1000);
u1(1:1)=0;
u1(2:1000)=1;
output='height' ;
[t1,y1] = ode45(@tank_control,tvec1,[0],[],u1,tvec1,output);
subplot(3,1,1)
plot(t1,y1)
title('Step Response')
hold on
tvec2=linspace(0,2,1000);
u2=exp(-tvec2.^2).*cos(3*tvec2);
[t2,y2] = ode45(@tank_control,tvec2,[0],[],u2,tvec2,output);
subplot(3,1,2);
plot(t2,y2);
title('exp(-t^2)*cos(3*t) response');
subplot(3,1,3);
plot(t2,u2);
title('Input exp(-t^2)*cos(3*t)') 