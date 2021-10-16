clear all;
close all;
tx=xlsread('NullErregung.xlsx');
time=tx(:,1);
MRAS=tx(:,2);
RLS=tx(:,3);
EKF=tx(:,4);
LO=tx(:,9);
Referenz=tx(:,5);
MRAS_Ab=tx(:,6);
RLS_Ab=tx(:,7);
EKF_Ab=tx(:,8);
LO_Ab=tx(:,10);
subplot(2,1,1);
p1=plot(time,Referenz,'g','LineWidth',1.5);
% ylim([0.58 0.61]);

hold on;
p2=plot(time,MRAS,'b','LineWidth',1.5);

% ylim([0.58 0.61]);
hold on;
p3=plot(time,RLS,'c','LineWidth',1.5);
% ylim([0.59 0.61]);
hold on;

p4=plot(time,EKF,'r','LineWidth',1.5);
% ylim([0.58 0.61]);

p5=plot(time,LO,'m','LineWidth',1.5);
% ylim([0.59 0.63]);
grid on ;
xlabel('Zeit in [s]'); % label x-axis
ylabel('Flussverkettung in [Wb]'); % label y-axis
legend('Referenzwert von Flussverkettung','Flussverkettung aus MRAS','Flussverkettung aus RLS','Flussverkettung aus EKF','Flussverkettung aus Luenberger Beobachter','Location','southeast');
ylim([0.575 0.608]);
sgtitle('Abschätzung von Flussverkettung ohne Verschiebung');


subplot(2,1,2);
p6=plot(time,MRAS_Ab,'b','LineWidth',1.5);
ylim([-0.0025 0.0025]);
hold on;


p7=plot(time,RLS_Ab,'c','LineWidth',1.5);
ylim([-0.1 0.1]);
hold on;
p8=plot(time,EKF_Ab,'r','LineWidth',1.5);
ylim([-0.1 0.1]);
hold on;
p9=plot(time,LO_Ab,'m','LineWidth',1.5);
ylim([-0.05 0.05]);
grid on ;
legend('Abweichung von MRAS','Abweichung von RLS ','Abweichung von EKF','Abweichung von Luenberger Beobachter');
% title('Vergleich Rollwinkel aus die Referenz und Rollwinkel aus dem Beschleunigungssensor');
xlabel('Zeit in [s]'); % label x-axis
ylabel('Absoluter Fehler in [Wb]'); % label y-axis
 
