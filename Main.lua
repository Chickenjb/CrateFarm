local d=string.byte;local r=string.char;local c=string.sub;local s=table.concat;local F=math.ldexp;local b=getfenv or function()return _ENV end;local l=setmetatable;local h=select;local f=unpack;local u=tonumber;local function B(d)local e,o,t="","",{}local a=256;local n={}for l=0,a-1 do n[l]=r(l)end;local l=1;local function i()local e=u(c(d,l,l),36)l=l+1;local o=u(c(d,l,l+e-1),36)l=l+e;return o end;e=r(i())t[1]=e;while l<#d do local l=i()if n[l]then o=n[l]else o=e..c(e,1,1)end;n[a]=e..c(o,1,1)t[#t+1],e,a=o,o,a+1 end;return table.concat(t)end;local a=B('26H26J27526G26927526J23R23O23U23Z24824F24923M23P23W26G25527927B27D27F27H27J25F23W23U23Q23Y25T24J24F24F24B24S23Y24F25F25O23N28024B24825T25G25G24823S27H24B24F24825H23R24E23U24C23R25H23S23O23Q25G23N23O27F23Y23Z25G26726726026425G26226429226525G25B23Y27F28L28N25O25E25E25F25E26M27926126B1R1K21I26B27526526Z29Q21H26Z27526026Z25N26J29Y2A026B29Z21H29T26J2602AA2A92792AF');local n=bit and bit.bxor or function(l,e)local o,n=1,0 while l>0 and e>0 do local a,c=l%2,e%2 if a~=c then n=n+o end l,e,o=(l-a)/2,(e-c)/2,o*2 end if l<e then l=e end while l>0 do local e=l%2 if e>0 then n=n+o end l,o=(l-e)/2,o*2 end return n end local function e(e,l,o)if o then local l=(e/2^(l-1))%2^((o-1)-(l-1)+1);return l-l%1;else local l=2^(l-1);return(e%(l+l)>=l)and 1 or 0;end;end;local l=1;local function o()local o,e,c,a=d(a,l,l+3);o=n(o,235)e=n(e,235)c=n(c,235)a=n(a,235)l=l+4;return(a*16777216)+(c*65536)+(e*256)+o;end;local function t()local e=n(d(a,l,l),235);l=l+1;return e;end;local function B()local l=o();local n=o();local c=1;local o=(e(n,1,20)*(2^32))+l;local l=e(n,21,31);local e=((-1)^e(n,32));if(l==0)then if(o==0)then return e*0;else l=1;c=0;end;elseif(l==2047)then return(o==0)and(e*(1/0))or(e*(0/0));end;return F(e,l-1023)*(c+(o/(2^52)));end;local u=o;local function i(e)local o;if(not e)then e=u();if(e==0)then return'';end;end;o=c(a,l,l+e-1);l=l+e;local e={}for l=1,#o do e[l]=r(n(d(c(o,l,l)),235))end return s(e);end;local l=o;local function u(...)return{...},h('#',...)end local function s()local d={0,0,0,0,0};local r={};local l={};local a={d,nil,r,nil,l};local l=o()local c={0,0};for o=1,l do local e=t();local l;if(e==1)then l=(t()~=0);elseif(e==2)then l=B();elseif(e==3)then l=i();end;c[o]=l;end;a[2]=c for a=1,o()do local c=n(o(),51);local o=n(o(),222);local n=e(c,1,2);local l=e(o,1,11);local l={l,e(c,3,11),nil,nil,o};if(n==0)then l[3]=e(c,12,20);l[5]=e(c,21,29);elseif(n==1)then l[3]=e(o,12,33);elseif(n==2)then l[3]=e(o,12,32)-1048575;elseif(n==3)then l[3]=e(o,12,32)-1048575;l[5]=e(c,21,29);end;d[a]=l;end;for l=1,o()do r[l-1]=s();end;a[4]=t();return a;end;local function F(l,e,i)local n=l[1];local e=l[2];local o=l[3];local l=l[4];return function(...)local r=n;local d=e;local e=o;local n=l;local l=u local o=1;local a=-1;local u={};local c={...};local t=h('#',...)-1;local l={};local e={};for l=0,t do if(l>=n)then u[l-n]=c[l+1];else e[l]=c[l+1];end;end;local l=t-n+1 local l;local n;while true do l=r[o];n=l[1];if n<=4 then if n<=1 then if n==0 then e[l[2]]=d[l[3]];else local n=l[2];local t={};local o=0;local c=n+l[3]-1;for l=n+1,c do o=o+1;t[o]=e[l];end;local c={e[n](f(t,1,c-n))};local l=n+l[5]-2;o=0;for l=n,l do o=o+1;e[l]=c[o];end;a=l;end;elseif n<=2 then e[l[2]]=i[d[l[3]]];elseif n>3 then do return end;else local h;local t;local c;local u;local n;e[l[2]]=i[d[l[3]]];o=o+1;l=r[o];e[l[2]]=d[l[3]];o=o+1;l=r[o];n=l[2];u={};c=0;t=n+l[3]-1;for l=n+1,t do c=c+1;u[c]=e[l];end;h={e[n](f(u,1,t-n))};t=n+l[5]-2;c=0;for l=n,t do c=c+1;e[l]=h[c];end;a=t;o=o+1;l=r[o];e[l[2]]();a=n;o=o+1;l=r[o];do return end;end;elseif n<=7 then if n<=5 then e[l[2]]=i[d[l[3]]];elseif n>6 then e[l[2]]();a=A;else e[l[2]]=d[l[3]];end;elseif n<=8 then local n=l[2];local c={};local o=0;local t=n+l[3]-1;for l=n+1,t do o=o+1;c[o]=e[l];end;local c={e[n](f(c,1,t-n))};local l=n+l[5]-2;o=0;for l=n,l do o=o+1;e[l]=c[o];end;a=l;elseif n>9 then e[l[2]]();a=A;else do return end;end;o=o+1;end;end;end;return F(s(),{},b())();
