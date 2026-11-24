import re,collections
txt=open('m_out.adm',encoding='utf-8',errors='ignore').read()
# strip comment markers for inactive? keep only active lines
lines=[l for l in txt.splitlines() if not l.strip().startswith('!')]
t='\n'.join(lines)
blocks=re.split(r'\n(?=[A-Z_]+/)',t)
marker_part={};marker_pos={};part_cm={};part_mass={}
for b in blocks:
    m=re.match(r'MARKER/(\d+)',b)
    if m:
        p=re.search(r'PART\s*=\s*(\d+)',b);q=re.search(r'QP\s*=\s*([-\d.E+]+),\s*([-\d.E+]+),\s*([-\d.E+]+)',b)
        marker_part[int(m[1])]=int(p[1]) if p else None
        marker_pos[int(m[1])]=tuple(map(float,q.groups())) if q else None
    m=re.match(r'PART/(\d+)',b)
    if m:
        ms=re.search(r'MASS\s*=\s*([-\d.E+]+)',b);cm=re.search(r'CM\s*=\s*(\d+)',b)
        part_mass[int(m[1])]=float(ms[1]) if ms else None
        part_cm[int(m[1])]=int(cm[1]) if cm else None
joints=[]
for b in blocks:
    m=re.match(r'JOINT/(\d+)\s*,\s*(\w+)\s*,\s*I\s*=\s*(\d+)\s*,\s*J\s*=\s*(\d+)',b.replace('\n',' '))
    if m: joints.append((int(m[1]),m[2],int(m[3]),int(m[4])))
motions=[]
for b in blocks:
    m=re.match(r'MOTION/(\d+)',b)
    if m: motions.append((int(m[1]),int(re.search(r'JOINT\s*=\s*(\d+)',b)[1])))
mj={j:m for m,j in motions}
def P(i): return marker_part.get(i)
print('part  mass  cm_pos(parent-frame; may be local)')
adj=collections.defaultdict(list)
for jid,typ,i,j in joints:
    a,b=P(i),P(j);adj[a].append((b,jid,typ));adj[b].append((a,jid,typ))
print('joints',len(joints))
for p in sorted(adj): 
    nb=sorted(set(x[0] for x in adj[p]))
    print(p,part_mass.get(p),'deg',len(adj[p]),'nbrs',nb)
print('motion joints (parts):',[(jid,P([x for x in joints if x[0]==jid][0][2]),P([x for x in joints if x[0]==jid][0][3])) for _,jid in motions])
