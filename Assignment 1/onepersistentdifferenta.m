G = 0:0.01:8;

a = 0;
S_1Persistent = ((G.*(1+G+a*(G.*(1+G+a*G/2)))).*exp(-G*(1+2*a))) ./ (G*(1+2*a) - (1-exp(-a*G)) + (1+a*G).*exp(-G*(1+a)));
plot(G, S_1Persistent);
hold on;

a = 0.001;
S_1Persistent = ((G.*(1+G+a*(G.*(1+G+a*G/2)))).*exp(-G*(1+2*a))) ./ (G*(1+2*a) - (1-exp(-a*G)) + (1+a*G).*exp(-G*(1+a)));
plot(G, S_1Persistent);
hold on;

a = 0.01;
S_1Persistent = ((G.*(1+G+a*(G.*(1+G+a*G/2)))).*exp(-G*(1+2*a))) ./ (G*(1+2*a) - (1-exp(-a*G)) + (1+a*G).*exp(-G*(1+a)));
plot(G, S_1Persistent);
hold on;

a = 0.05;
S_1Persistent = ((G.*(1+G+a*(G.*(1+G+a*G/2)))).*exp(-G*(1+2*a))) ./ (G*(1+2*a) - (1-exp(-a*G)) + (1+a*G).*exp(-G*(1+a)));
plot(G, S_1Persistent);
hold on;

a = 0.1;
S_1Persistent = ((G.*(1+G+a*(G.*(1+G+a*G/2)))).*exp(-G*(1+2*a))) ./ (G*(1+2*a) - (1-exp(-a*G)) + (1+a*G).*exp(-G*(1+a)));
plot(G, S_1Persistent);
hold on;

a = 0.2;
S_1Persistent = ((G.*(1+G+a*(G.*(1+G+a*G/2)))).*exp(-G*(1+2*a))) ./ (G*(1+2*a) - (1-exp(-a*G)) + (1+a*G).*exp(-G*(1+a)));
plot(G, S_1Persistent);
hold on;

a = 0.3;
S_1Persistent = ((G.*(1+G+a*(G.*(1+G+a*G/2)))).*exp(-G*(1+2*a))) ./ (G*(1+2*a) - (1-exp(-a*G)) + (1+a*G).*exp(-G*(1+a)));
plot(G, S_1Persistent);
hold on;

a = 0.4;
S_1Persistent = ((G.*(1+G+a*(G.*(1+G+a*G/2)))).*exp(-G*(1+2*a))) ./ (G*(1+2*a) - (1-exp(-a*G)) + (1+a*G).*exp(-G*(1+a)));
plot(G, S_1Persistent);
hold on;

a = 0.6;
S_1Persistent = ((G.*(1+G+a*(G.*(1+G+a*G/2)))).*exp(-G*(1+2*a))) ./ (G*(1+2*a) - (1-exp(-a*G)) + (1+a*G).*exp(-G*(1+a)));
plot(G, S_1Persistent);
hold on;

a = 0.8;
S_1Persistent = ((G.*(1+G+a*(G.*(1+G+a*G/2)))).*exp(-G*(1+2*a))) ./ (G*(1+2*a) - (1-exp(-a*G)) + (1+a*G).*exp(-G*(1+a)));
plot(G, S_1Persistent);
hold on;

a = 1.0;
S_1Persistent = ((G.*(1+G+a*(G.*(1+G+a*G/2)))).*exp(-G*(1+2*a))) ./ (G*(1+2*a) - (1-exp(-a*G)) + (1+a*G).*exp(-G*(1+a)));
plot(G, S_1Persistent);

a = 2.0;
S_1Persistent = ((G.*(1+G+a*(G.*(1+G+a*G/2)))).*exp(-G*(1+2*a))) ./ (G*(1+2*a) - (1-exp(-a*G)) + (1+a*G).*exp(-G*(1+a)));
plot(G, S_1Persistent);

title('Compare Different Normalised Propagation Delay a for 1-Persistent CSMA');
xlabel('Offered Traffic G');
ylabel('Throughput S');
legend('a = 0', 'a = 0.001', 'a = 0.01', 'a = 0.05', 'a = 0.1', 'a = 0.2', 'a = 0.3', 'a = 0.4', 'a = 0.6', 'a = 0.8', 'a = 1.0', 'a = 2.0', 'Location','NorthEast');

