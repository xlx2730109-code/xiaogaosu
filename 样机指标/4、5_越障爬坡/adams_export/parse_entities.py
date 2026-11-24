import re,collections
L=open('m_out.adm',encoding='utf-8',errors='ignore').read().splitlines()
# join into blocks; keep active/inactive flag
blocks=[];cur=None
for ln in L:
    s=ln.strip()
    act=not s.startswith('!')
    t=s.lstrip('!').strip() if not act else s
    m=re.match(r'^(!?)\s*([A-Z_]+)/(\S+)',s)
    if m and not s.startswith('!-') :
        cur={'type':m.group(2),'id':m.group(3).rstrip(','),'active':not m.group(1),'lines':[s]};blocks.append(cur)
    elif cur and s.startswith('!') and 'adams_view_name' in s:
        cur=None
    elif cur and s not in('!',''):
        cur['lines'].append(s.lstrip('!').strip() if not cur['active'] else s)
    elif s=='' : cur=None
import json
def name_of(i):
    pass
c=collections.Counter((b['type'],b['active']) for b in blocks)
print(c)
for typ in ['PART','JOINT','MOTION','CONTACT','VARIABLE','ACCGRAV','RESULTS','OUTPUT','JPRIM']:
    print('=====',typ)
    for b in blocks:
        if b['type']==typ and b['active']:
            if typ=='JOINT' : 
                txt=' '.join(x.lstrip('!').strip() for x in b['lines'][1:])
                print(b['id'],txt[:90]);
            else:
                print(b['id'],' | '.join(x for x in b['lines'][1:])[:400])
