G = 0:0.01:20;

a = 0;
S_NonPersistent = (G.*exp(-a*G))./(G*(1+2*a) + exp(-a*G));
plot(G, S_NonPersistent);
hold on;

a = 0.001;
S_NonPersistent = (G.*exp(-a*G))./(G*(1+2*a) + exp(-a*G));
plot(G, S_NonPersistent);
hold on;

a = 0.01;
S_NonPersistent = (G.*exp(-a*G))./(G*(1+2*a) + exp(-a*G));
plot(G, S_NonPersistent);
hold on;

a = 0.05;
S_NonPersistent = (G.*exp(-a*G))./(G*(1+2*a) + exp(-a*G));
plot(G, S_NonPersistent);
hold on;

a = 0.1;
S_NonPersistent = (G.*exp(-a*G))./(G*(1+2*a) + exp(-a*G));
plot(G, S_NonPersistent);
hold on;

a = 0.2;
S_NonPersistent = (G.*exp(-a*G))./(G*(1+2*a) + exp(-a*G));
plot(G, S_NonPersistent);
hold on;

a = 0.3;
S_NonPersistent = (G.*exp(-a*G))./(G*(1+2*a) + exp(-a*G));
plot(G, S_NonPersistent);
hold on;

a = 0.4;
S_NonPersistent = (G.*exp(-a*G))./(G*(1+2*a) + exp(-a*G));
plot(G, S_NonPersistent);
hold on;

a = 0.6;
S_NonPersistent = (G.*exp(-a*G))./(G*(1+2*a) + exp(-a*G));
plot(G, S_NonPersistent);
hold on;

a = 0.8;
S_NonPersistent = (G.*exp(-a*G))./(G*(1+2*a) + exp(-a*G));
plot(G, S_NonPersistent);
hold on;

a = 1.0;
S_NonPersistent = (G.*exp(-a*G))./(G*(1+2*a) + exp(-a*G));
plot(G, S_NonPersistent);

a = 2.0;
S_NonPersistent = (G.*exp(-a*G))./(G*(1+2*a) + exp(-a*G));
plot(G, S_NonPersistent);

title('Compare Different Normalised Propagation Delay a for Non-Persistent CSMA');
xlabel('Offered Traffic G');
ylabel('Throughput S');
legend('a = 0', 'a = 0.001', 'a = 0.01', 'a = 0.05', 'a = 0.1', 'a = 0.2', 'a = 0.3', 'a = 0.4', 'a = 0.6', 'a = 0.8', 'a = 1.0', 'a = 2.0', 'Location','NorthEast');

