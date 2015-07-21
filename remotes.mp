outputformat := "png";
outputtemplate := "%j.%o";
prologues := 3;
hppp := 0.25;
vppp := 0.25;
input boxes

beginfig(1);
pair c,t,v,b[],e;
numeric w;
path fullsquare;
fullsquare := makepath pensquare;
w := 8;
c := (0,0);
t := (0,60);
draw c--t;
v := ((0,40) rotated 60);
draw fullcircle scaled w shifted v;
b0 := (-10,20);
draw fullsquare scaled w shifted b0;
b1 := (10,20);
draw fullsquare scaled w shifted b1;
draw (b0 + (w/2,0))--(b1 - (w/2,0)) dashed (evenly scaled 0.5);
drawarrow (v + (w/2,0))--(b0 - (w/2,0));
e := (b1 - (0,w/2)) rotated 120;
drawarrow (b0 - (0,w/2))--e;
picture mypicture;
mypicture := currentpicture;
currentpicture := nullpicture;
for i = 0 upto 3:
  draw mypicture rotated (120*i);
endfor;
draw fullcircle scaled w shifted (60,20);
label.rt(btex mesh vertex etex, (60+w/2,20));
draw fullsquare scaled w shifted (60,10);
label.rt(btex remote etex, (60+w/2,10));
drawarrow (60,0)--(70,0);
label.rt(btex pointer etex, (70,0));
draw (60,-10)--(70,-10) dashed (evenly scaled 0.5);
label.rt(btex parallel pointer etex, (70,-10));
endfig;

end.


