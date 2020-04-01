import pandas as pd
import networkx as nx
import matplotlib.pyplot as plt

# read the csv file
df = pd.read_csv('SFlow_Data_lab4.csv', index_col = False, names = ['type', 'agent_addr', 'inputPort', 'outputPort', 'src_MAC', 'dst_MAC', 'ethernet_type', 'in_vlan', 'out_vlan', 'src_IP', 'dst_IP', 'IP_Protocol', 'ip_tos', 'ip_ttl', 'src_port', 'dst_port', 'tcp_flags', 'packet_size', 'IP_size', 'sampling_rate'])

# choose the top 5 src_IP for top5_talkers_ip
# choose the top 5 dst_IP for top5_listeners_ip
top5_talkers_ip = df['src_IP'].value_counts()[:5]
top5_listeners_ip = df['dst_IP'].value_counts()[:5]

# Decimal 6 for TCP Protocol
# Decimal 17 for UDP Protocol
# Calculate TCP and UDP Protocol Proportions
tcp_count = df['IP_Protocol'].value_counts().get(6)
udp_count = df['IP_Protocol'].value_counts().get(17)
tcp_percentage = tcp_count / df['IP_Protocol'].count()
udp_percentage = udp_count / df['IP_Protocol'].count()

# choose the top 3 IP_Protocol for top3_IP_Protocols
top3_IP_Protocols = df['IP_Protocol'].value_counts()[:3]

# choose the top 5 dst_port for top5_apps_protocol
top5_apps_protocol = df['dst_port'].value_counts()[:5]

# calculate the total traffic by summing IP_size
total_traffic = df['IP_size'].sum()

print('Top 5 Talkers:')
print(top5_talkers_ip)
print('\n')
print('Top 5 Listeners:')
print(top5_listeners_ip)
print('\n')
print('Top 3 IP Protocols:')
print(top3_IP_Protocols)
print('\n')
print('Total tcp_count:')
print(tcp_count)
print('tcp_percentage:')
print(str(tcp_percentage*100) + '%')
print('\n')
print('Total udp_count:')
print(udp_count)
print('udp_percentage:')
print(str(udp_percentage*100) + '%')
print('\n')
print('Top 5 Application Protocols:')
print(top5_apps_protocol)
print('\n')
print('Total traffic: {} bytes\n'.format(total_traffic))

# pair the src_IP and dst_IP
# and count the top 5 communication pairs
pairs={}
for index, row in df.iterrows():
    word1 = row['src_IP']+'/'+row['dst_IP']
    word2 = row['dst_IP']+'/'+row['src_IP']
    if word1 in pairs.keys():
        pairs[word1]+=1
    elif word2 in pairs.keys():
        pairs[word2]+=1
    else:
        pairs[word1]=1

pairs_sorted = sorted([(k,v) for k,v in pairs.items()], key= lambda x: x[1], reverse=True)

print('Top 5 communication pairs:\n{}\n'.format(pairs_sorted[:5]))

G = nx.Graph()
nodes = list(set(df['src_IP'].tolist() + df['dst_IP'].tolist()))
G.add_nodes_from(nodes)
for (p,n) in pairs_sorted:
    G.add_edge(p.split('/')[0], p.split('/')[1], weight=n)
size = []
for node in nodes:
    if G.degree(node, weight='weight')<25:
        #color.append('g')
        size.append(5)
    elif G.degree(node, weight='weight')<50:
        #color.append('b')
        size.append(10)
    elif G.degree(node, weight='weight')<75:
        #color.append('c')
        size.append(15)
    elif G.degree(node, weight='weight')<100:
        #color.append('y')
        size.append(20)
    elif G.degree(node, weight='weight')<125:
        #color.append('m')
        size.append(25)
    else:
        #color.append('r')
        size.append(30)
edges = G.edges()
weights = [G[u][v]['weight']/500 for u,v in edges]

# draw the graph
print('Visualise Network Communications:\n')
nx.draw_spring(G, node_size=size, node_color=range(len(nodes)), width=weights, cmap= plt.cm.bwr)
#nx.draw_random(G, node_size=size, node_color=range(len(nodes)), width=weights, cmap= plt.cm.bwr)
plt.show()
print('Draw completed')