clear all;
close all;
tx=xlsread('Filter0.5Hz.xlsx');
time=tx(:,1);
MRAS_Ohnefilter=tx(:,2);
MRAS_Mitfilter=tx(:,3);
RLS_Ohnefilter=tx(:,4);
RLS_Mitfilter=tx(:,5);
EKF_Ohnefilter=tx(:,6);
EKF_Mitfilter=tx(:,7);
subplot(2,1,1);
p1=plot(time,MRAS_Ohnefilter,'b');
ylim([0.585 0.605]);
xlabel('Zeit(s)'); % label x-axis
ylabel('Flussverkettung(Wb)'); % label y-axis
legend('MRAS ohne Hochpassfilter');
subplot(2,1,2);
p2=plot(time,MRAS_Mitfilter,'r');
legend('MRAS mit Hochpassfilter');
ylim([-0.002 0.002]);
xlabel('Zeit(s)'); % label x-axis
ylabel('Flussverkettung(Wb)'); % label y-axis
sgtitle('Anregung mit 0.5Hz beim MRAS');

figure(2);
subplot(2,1,1);
p3=plot(time,RLS_Ohnefilter,'b');
ylim([0.45 1.3]);
xlabel('Zeit(s)'); % label x-axis
ylabel('Flussverkettung(Wb)'); % label y-axis
legend('RLS ohne Hochpassfilter');
subplot(2,1,2);
p4=plot(time,RLS_Mitfilter,'r');
ylim([-0.1 0.3]);
xlabel('Zeit(s)'); % label x-axis
ylabel('Flussverkettung(Wb)'); % label y-axis
legend('RLS mit Hochpassfilter');
sgtitle('Anregung mit 0.5Hz beim RLS');

figure(3);
subplot(2,1,1);
p5=plot(time,EKF_Ohnefilter,'b');
ylim([0.580 0.608]);
xlabel('Zeit(s)'); % label x-axis
ylabel('Flussverkettung(Wb)'); % label y-axis
legend('EKF ohne Hochpassfilter');
subplot(2,1,2);
p6=plot(time,EKF_Mitfilter,'r');
legend('EKF mit Hochpassfilter');
ylim([-0.002 0.002]);
xlabel('Zeit(s)'); % label x-axis
ylabel('Flussverkettung(Wb)'); % label y-axis
sgtitle('Anregung mit 0.5Hz beim EKF');

 
