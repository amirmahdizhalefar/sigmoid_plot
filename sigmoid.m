
clc; clear all; close all;
colors=['r','g','b'] ;
m = 0;
x = -5:0.05:5;
f=zeros(1,length(x));
for ii = 1:length(x)
f(ii) = 1/(1+exp(-(x(ii))))
 
end

subplot(2,1,1);

plot(x,f)
hold on
xlabel('x'); 
ylabel('sigmaoid'); 
title('sigmid plot')
axis([-5 5 0 2]);
grid on 


subplot(2,1,2);

m = 0;
s = [0.25 0.6 1];
x = -5:0.05:5;
f=zeros(1,length(x));
for w = 1:length(s)
for ii = 1:length(x)
f(ii) = 1/(s(w)*sqrt(2*pi)) .* exp(-((x(ii)-m)^2 / (2*(s(w))^2)));
 
end


plot(x,f,colors(w))
hold on
end
xlabel('x'); 
ylabel('gausian'); 
title('gausian function')
hleg1 = legend('sigma=0.25','sigma=0.6','sigma=1');
set(hleg1,'Location','NorthEast')
axis([-5 5 0 2]);
grid on 

