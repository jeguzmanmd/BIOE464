function dFdt = sat1(t, wd)



fo = wd(1);   % Concentration of O2
fc = wd(2);   % Concentration of CO2
PA = wd(3);   
po = wd(4);   
Pc = wd(5);
Pc = wd(6);  

Pm = 14;
Pl = 15;
E = 16;
Do = 2;
po = 3;
pao = 4;
fo = 6;
Dc = 8;
pc = 9;
pac = 10;
Vt= 11;
fqr = 16/60; %%%%% resp per sec
w = 1/fqr;
t = 13; %%%%%%%%%%%%% integration range [0 to 120s]
VA = (Pm - Pl)/E;
fo = 19;
VD = 17;
fom = 18;
fci = 0.05;  %%%%% from another experiment
fc = 19;
PA = 20;
q = 21;
dPldt = -1; %%%%%%%% Pending equation
sigma = 22;
Vc = 23;
Th = 24;
Pw = 25;
L = 26;
Kt = 27;
Kr = 28;
sigmac = 29;
delta = 30;
l2 = 31;
h = 32;
z = 33;
r2 = 34;
       

if Vt>=VD
    foi=fo*VD+fom*(Vt-VD);
else
    foi=fo;
end
if 0<t || t<= pi/w
    qi=Vt*w*sin(w*t);
else qi = 0;
end
% QA   
% dPldt

dfodt = (1/VA)*(Do*(po-pao)+(foi-fo)*qi-(fo*(Dc*(pc-pac)+Do*(po-pao))))
dfcdt = (1/VA)*(Dc*(pc-pac)+(fci-fc)*qi-(fo*(Do*(po-pao)+Dc*(pc-pac))))
dPAdt = (Pm*E/PA)*1+1
dpodt = (Do/(sigma*Vc))*((1+(4*Th*dFpodpo/(sigma))).^(-1))*(fo*(PA-Pw)-po)
dPcdt = (Dc/(sigmac*Vc))*(pac-pc)+((delta*l2)/sigmac)*h*z-delta*r2*pc
dzdt = delta*r2*sigmac*pc - delta*l2*h*z
dFdt = [dfodt; dfcdt; dPAdt; dpodt; dPcdt];