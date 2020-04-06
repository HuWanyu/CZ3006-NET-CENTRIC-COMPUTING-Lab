G = 0:0.01:20;
a = 0.2;
p = 0.001;

S_pPersistent = (((a+p)*G.*exp(-G.*(a+p))) - p*G.*exp(-G.*(2*a+p))) ./ ((1+a)*(1-exp(-a*G)) + a*exp(-G*(a+p)));
plot(G, S_pPersistent);
p = 0.01;
hold on;

S_pPersistent = (((a+p)*G.*exp(-G.*(a+p))) - p*G.*exp(-G.*(2*a+p))) ./ ((1+a)*(1-exp(-a*G)) + a*exp(-G*(a+p)));
plot(G, S_pPersistent);
p = 0.1;
hold on;

S_pPersistent = (((a+p)*G.*exp(-G.*(a+p))) - p*G.*exp(-G.*(2*a+p))) ./ ((1+a)*(1-exp(-a*G)) + a*exp(-G*(a+p)));
plot(G, S_pPersistent);
p = 0.2;
hold on;

S_pPersistent = (((a+p)*G.*exp(-G.*(a+p))) - p*G.*exp(-G.*(2*a+p))) ./ ((1+a)*(1-exp(-a*G)) + a*exp(-G*(a+p)));
plot(G, S_pPersistent);
p = 0.4;
hold on;

S_pPersistent = (((a+p)*G.*exp(-G.*(a+p))) - p*G.*exp(-G.*(2*a+p))) ./ ((1+a)*(1-exp(-a*G)) + a*exp(-G*(a+p)));
plot(G, S_pPersistent);
p = 0.6;
hold on;

S_pPersistent = (((a+p)*G.*exp(-G.*(a+p))) - p*G.*exp(-G.*(2*a+p))) ./ ((1+a)*(1-exp(-a*G)) + a*exp(-G*(a+p)));
plot(G, S_pPersistent');
p = 0.7;
hold on;

S_pPersistent = (((a+p)*G.*exp(-G.*(a+p))) - p*G.*exp(-G.*(2*a+p))) ./ ((1+a)*(1-exp(-a*G)) + a*exp(-G*(a+p)));
plot(G, S_pPersistent);
p = 0.8;
hold on;

S_pPersistent = (((a+p)*G.*exp(-G.*(a+p))) - p*G.*exp(-G.*(2*a+p))) ./ ((1+a)*(1-exp(-a*G)) + a*exp(-G*(a+p)));
plot(G, S_pPersistent);
p = 0.9;
hold on;

S_pPersistent = (((a+p)*G.*exp(-G.*(a+p))) - p*G.*exp(-G.*(2*a+p))) ./ ((1+a)*(1-exp(-a*G)) + a*exp(-G*(a+p)));
plot(G, S_pPersistent);
p = 1.0;
hold on;

S_pPersistent = (((a+p)*G.*exp(-G.*(a+p))) - p*G.*exp(-G.*(2*a+p))) ./ ((1+a)*(1-exp(-a*G)) + a*exp(-G*(a+p)));
plot(G, S_pPersistent);

title('Compare Different p-values');
xlabel('Offered Traffic G');
ylabel('Throughput S');
legend('p-value = 0.001', 'p-value = 0.01', 'p-value = 0.1', 'p-value = 0.2', 'p-value = 0.4', 'p-value = 0.6', 'p-value = 0.7', 'p-value = 0.8', 'p-value = 0.9', 'p-value = 1.0','Location','NorthEast');

