a = 3:0.25:3.75;
b = 5.5:0.5:7;
g = 3;
e = 1;
c = 15:1:18; 
P1 = 60;
P2 = 45;
d1 = 3.5:0.5:5;
d2 = (.6*d1); 
z = 2:1:5;
l = 6;
q=1;
for nn = 1:length(c);
    for vv = 1:length(z);
        for m=1:length(d1);
            for s=1:length(d2);
                for r=1:length(b);
                    for t=1:length(a);
                        [ ang1(q), ang2(q), ang3(q), H(q)]=Grip4( a(t),b(r),c(nn),g,e,z(vv),l,P1,P2,d1(m),d2(s));
                        [ F(q), ang1(q), ang2(q), ang3(q), H(q), X1(q), L1(q), W(q) ]=Grip4( a(t),b(r),c(nn),g,e,z(vv),l,d1(m),d2(s),P1,P2);
                        q=q+1;
                     end
              end
        end
    end
  end
end
plot (W);