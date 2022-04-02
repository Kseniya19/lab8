model lab08_2

parameter Real p_cr = 40;
parameter Real tau1 = 30;
parameter Real p1 = 11.5;
parameter Real tau2 = 27;
parameter Real p2 = 9.5;
parameter Real N = 95;
parameter Real q = 1;

parameter Real a1 = p_cr/(tau1*tau1*p1*p1*N*q);
parameter Real a2 = p_cr/(tau2*tau2*p2*p2*N*q);
parameter Real b = p_cr/(tau1*tau1*tau2*tau2*p1*p1*p2*p2*N*q);
parameter Real c1 = (p_cr-p1)/(tau1*p1);
parameter Real c2 = (p_cr-p2)/(tau2*p2);

parameter Real M0_1 = 7.5;
parameter Real M0_2 = 8.5;
Real M1(start=M0_1);
Real M2(start=M0_2);

equation

der(M1) = M1 - (b/c1+0.00016)*M1*M2 - (a1/c1)*M1*M1;
der(M2) = (c2/c1)*M2 - (b/c1)*M1*M2 - (a2/c1)*M2*M2;

end lab08_2;

