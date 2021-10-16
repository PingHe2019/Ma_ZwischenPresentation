clear all;
close all;
tx=xlsread('NullErregung.xlsx');
time=tx(:,1);
MRAS=tx(:,2);
RLS=tx(:,3);
EKF=tx(:,4);
Referenz=tx(:,5);
MRAS_Ab=tx(:,6);
RLS_Ab=tx(:,7);
EKF_Ab=tx(:,8);
subplot(2,1,1);
p1=plot(time,Referenz,'g');
ylim([0.58 0.61]);

hold on;
p2=plot(time,MRAS,'b');

ylim([0.58 0.61]);
hold on;
p3=plot(time,RLS,'c');

ylim([0.58 0.61]);
hold on;
p4=plot(time,EKF,'r');
xlabel('Zeit(s)'); % label x-axis
ylabel('Flussverkettung(Wb)'); % label y-axis
legend('Referenzwert von Flussverkettung','Flussverkettung aus MRAS','Flussverkettung aus RLS','Flussverkettung aus EKF');
ylim([0.58 0.61]);
sgtitle('Abschätzung von Flussverkettung ohne Verschiebung');
hold on;

subplot(2,1,2);
p5=plot(time,MRAS_Ab,'b');
ylim([-0.0025 0.0025]);
hold on;


p6=plot(time,RLS_Ab,'c');
ylim([-0.1 0.1]);
hold on;
p7=plot(time,EKF_Ab,'r');
ylim([-0.1 0.1]);
hold on;

ylim([-0.05 0.05]);

legend('Abweichung von MRAS','Abweichung von RLS ','Abweichung von EKF');
% title('Vergleich Rollwinkel aus die Referenz und Rollwinkel aus dem Beschleunigungssensor');
xlabel('Zeit(s)'); % label x-axis
ylabel('Absoluter Fehler(Wb)'); % label y-axis
 
