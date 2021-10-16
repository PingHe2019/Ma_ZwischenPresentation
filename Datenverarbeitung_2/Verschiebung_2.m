clear all;
close all;
tx=xlsread('Filter2Hz.xlsx');
time=tx(:,1);
MRAS_Ohnefilter=tx(:,2);
MRAS_Mitfilter=tx(:,3);
RLS_Ohnefilter=tx(:,4);
RLS_Mitfilter=tx(:,5);
EKF_Ohnefilter=tx(:,6);
EKF_Mitfilter=tx(:,7);
LO_Ohnefilter=tx(:,8);
LO_Mitfilter=tx(:,9);

subplot(2,1,1);
p1=plot(time,MRAS_Ohnefilter,'b','LineWidth',1.5);
ylim([0.582 0.605]);
grid on;
xlabel('Zeit in [s]'); % label x-axis
ylabel('Flussverkettung in [Wb]'); % label y-axis
legend('MRAS ohne Hochpassfilter','Location','southeast');
subplot(2,1,2);
p2=plot(time,MRAS_Mitfilter,'r','LineWidth',1.5);
legend('MRAS mit Hochpassfilter','Location','southeast');
grid on;
ylim([-0.003 0.003]);
xlabel('Zeit in [s]'); % label x-axis
ylabel('Flussverkettung in [Wb]'); % label y-axis
sgtitle('Anregung mit 2Hz beim MRAS');

figure(2);
subplot(2,1,1);
p3=plot(time,RLS_Ohnefilter,'b','LineWidth',1.5);
grid on;
ylim([0.45 1.3]);
xlabel('Zeit in [s]'); % label x-axis
ylabel('Flussverkettung in [Wb]'); % label y-axis
legend('RLS ohne Hochpassfilter','Location','southeast');
subplot(2,1,2);
p4=plot(time,RLS_Mitfilter,'r','LineWidth',1.5);
grid on;
ylim([-0.15 0.4]);
xlabel('Zeit in [s]'); % label x-axis
ylabel('Flussverkettung in [Wb]'); % label y-axis
legend('RLS mit Hochpassfilter','Location','southeast');
sgtitle('Anregung mit 2Hz beim RLS');

figure(3);
subplot(2,1,1);
p5=plot(time,EKF_Ohnefilter,'b','LineWidth',1.5);
grid on;
ylim([0.585 0.608]);
xlabel('Zeit in [s]'); % label x-axis
ylabel('Flussverkettung in [Wb]'); % label y-axis
legend('EKF ohne Hochpassfilter','Location','southeast');
subplot(2,1,2);
p6=plot(time,EKF_Mitfilter,'r','LineWidth',1.5);
grid on;
legend('EKF mit Hochpassfilter','Location','southeast');
ylim([-0.003 0.003]);
xlabel('Zeit in [s]'); % label x-axis
ylabel('Flussverkettung in [Wb]'); % label y-axis
sgtitle('Anregung mit 2Hz beim EKF');

figure(4);
subplot(2,1,1);
p7=plot(time,LO_Ohnefilter,'b','LineWidth',1.5);
grid on;
ylim([0.570 0.608]);
xlabel('Zeit in [s]'); % label x-axis
ylabel('Flussverkettung in [Wb]'); % label y-axis
legend('LB ohne Hochpassfilter','Location','southeast');
subplot(2,1,2);
p8=plot(time,LO_Mitfilter,'r','LineWidth',1.5);
grid on;
legend('LB mit Hochpassfilter');
ylim([-0.0020 0.0025]);
xlabel('Zeit in [s]'); % label x-axis
ylabel('Flussverkettung in [Wb]'); % label y-axis
sgtitle('Anregung mit 2Hz beim LB');

 
