function Lu=calcind(dmm,pmm)
%Representa la inductancia en uHenrios para un tornillo de 
%diametro d en mm y paso p en mm
%Lu=calcind(5,1)
dcm=dmm/10;
pcm=pmm/10;
N=0.5:0.5:20;
Lu=dcm^2*N.^2./(45.72*dcm + 101.6*pcm*N);

Lmin=dmm*.2;
NVmin=Lmin/pmm;
y=[0:length(Lu)-1]/length(Lu)*Lu(end);
x=[NVmin*ones(1,length(Lu))];
plot(N,Lu);
hold on
plot(x,y,'r');
hold off
grid
title('Bobina en microhenrios');
ylabel('L(uH)');
xlabel('N vueltas');
shg

