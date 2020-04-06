G = 0:0.01:20;
a = 0.04;

title('ALOHA and CSMA Throughput S vs Offered Traffic G');
xlabel('Offered Traffic G');
ylabel('Throughput S');


% Slotted Aloha
S_slottedALOHA = G.*exp(-G);
plot(G, S_slottedALOHA);
text(0.8, .2, 'Slotted ALOHA')
hold on;


% Pure Aloha
S_pureALOHA = G.*exp(-2*G);
plot(G, S_pureALOHA);
text(1.24,.1,'Pure ALOHA');
hold on;


% Non-Persistent CSMA
S_NonPersistent = (G.*exp(-a*G))./(G*(1+2*a) + exp(-a*G));
plot(G, S_NonPersistent);
text(6.5,.6,'Non-Persistent CSMA');
hold on;


% 1-Persistent CSMA
S_1Persistent = ((G.*(1+G+a*(G.*(1+G+a*G/2)))).*exp(-G*(1+2*a))) ./ (G*(1+2*a) - (1-exp(-a*G)) + (1+a*G).*exp(-G*(1+a)));
plot(G, S_1Persistent);
text(0.7,.4,'1-Persistent CSMA');
hold on;


% p-Persistent CSMA
% p = 0.8
p = 0.8;
S_pPersistent = (((a+p)*G.*exp(-G.*(a+p))) - p*G.*exp(-G.*(2*a+p))) ./ ((1+a)*(1-exp(-a*G)) + a*exp(-G*(a+p)));
plot(G, S_pPersistent);
text(3.6,0.2,'0.8-Persistent CSMA');
hold on;

% p = 0.4
p = 0.4;
S_pPersistent = (((a+p)*G.*exp(-G.*(a+p))) - p*G.*exp(-G.*(2*a+p))) ./ ((1+a)*(1-exp(-a*G)) + a*exp(-G*(a+p)));
plot(G, S_pPersistent);
text(6.7,0.2,'0.4-Persistent CSMA');
hold on;

% p = 0.06
p = 0.06;
S_pPersistent = (((a+p)*G.*exp(-G.*(a+p))) - p*G.*exp(-G.*(2*a+p))) ./ ((1+a)*(1-exp(-a*G)) + a*exp(-G*(a+p)));
plot(G, S_pPersistent);
text(7.9,0.7,'0.06-Persistent CSMA');


legend('Slotted ALOHA', 'Pure ALOHA', "Non-Persistent CSMA", "1-Persistent CSMA", "0.8-Persistent CSMA", "0.4-Persistent CSMA", "0.06-Persistent CSMA", 'Location','NorthEast');


