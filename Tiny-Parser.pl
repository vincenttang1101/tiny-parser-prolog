:- use_rendering(svgtree).

s(s(X,Y)) --> np(X), vp(Y).

np(np(X)) --> n(X).
np(np(X)) --> propn(X).
%np(np(X)) --> un(X).
np(np(X,Y)) --> q(X), np(Y).
np(np(X,Y)) --> un(X), n(Y).
np(np(X,Y)) --> un(X), np(Y).
np(np(X,Y)) --> n(X), adjp(Y).
np(np(X,Y)) --> q(X), un(Y).
np(np(X,Y)) --> un(X), adjp(Y).
np(np(X,Y)) --> cd(X), np(Y).
np(np(X,Y)) --> n(X), pp(Y).
np(np(X,Y)) --> n(X), n(Y).
np(np(X,Y)) --> n(X), propn(Y).
np(np(X,Y)) --> pp(X), n(Y).
np(np(X,Y)) --> adjp(X), n(Y).
np(np(X,Y,Z)) --> q(X), np(Y), adjp(Z).
np(np(X,Y,Z)) --> n(X), adjp(Y), n(Z).

vp(vp(X)) --> v(X).

vp(vp(X,Y)) --> v(X), pp(Y).
vp(vp(X,Y)) --> v(X), np(Y).
vp(vp(X,Y)) --> v(X), vp(Y).
vp(vp(X,Y)) --> v(X), v(Y).
vp(vp(X,Y)) --> advp(X), v(Y).

vp(vp(X,Y,Z,E)) --> v(X), np(Y), np(Z), v(E). /*chú ý*/

vp(vp(X,Y,Z)) --> advp(X), v(Y), np(Z).
vp(vp(X,Y,Z)) --> v(X), np(Y), vp(Z).
vp(vp(X,Y,Z)) --> v(X), np(Y), np(Z).
vp(vp(X,Y,Z)) --> v(X), np(Y), pp(Z).

vp(vp(X,Y,Z,E)) --> v(X), np(Y), v(Z), np(E).
vp(vp(X,Y,Z,E)) --> advp(X), v(Y), np(Z), vp(E).
vp(vp(X,Y,Z,E)) --> advp(X), v(Y), np(Z), pp(E).
vp(vp(X,Y,Z,E)) --> advp(X), v(Y), np(Z), np(E).
vp(vp(X,Y,Z,E)) --> advp(X), v(Y), np(Z), adjp(E).
vp(vp(X,Y,Z,E)) --> v(X), np(Y), np(Z), vp(E).
vp(vp(X,Y,Z,E)) --> v(X), np(Y), np(Z), pp(E).

vp(vp(X,Y,Z,E,K)) --> v(X), np(Y), np(Z), np(E), v(K).
vp(vp(X,Y,Z,E,K)) --> v(X), np(Y), np(Z), v(E), pp(K).
vp(vp(X,Y,Z,E,K)) --> advp(X), v(Y), np(Z), np(E), pp(K).
vp(vp(X,Y,Z,E,K)) --> advp(X), v(Y), np(Z), np(E), vp(K).
vp(vp(X,Y,Z,E,K)) --> advp(X), v(Y), np(Z), np(E), adjp(K).
vp(vp(X,Y,Z,E,K)) --> v(X), np(Y), np(Z), np(E), vp(K).

vp(vp(X,Y,Z,E,K,L)) --> v(X), np(Y), np(Z), np(E), v(K), pp(L).
vp(vp(X,Y,Z,E,K,L)) --> advp(X), v(Y), np(Z), np(E), np(K), vp(L).

vp(vp(X,Y,Z,E,K,L,M,N)) --> v(X), np(Y), adjp(Z), v(E), np(K), v(L), pp(M), pp(N).
vp(vp(X,Y,Z,E,K,L,M)) --> advp(X), v(Y), np(Z), np(E), np(K), adjp(L),v(M).


advp(advp(X)) --> adv(X).
advp(advp(X,Y))-->adv(X),vp(Y).

adjp(adjp(X)) --> adj(X).
adjp(adjp(X,Y)) --> adv(X), adj(Y).

pp(pp(X,Y)) --> p(X), np(Y).
pp(pp(X)) --> p(X).

/*--------------------------------------------------------------*/

propn(propn(nam)) --> [nam].
propn(propn(lan)) --> [lan].

n(n(thu,vien)) --> [thu,vien].
n(n(sach)) --> [sach].
n(n(nha)) --> [nha].
n(n(truong)) --> [truong].

un(un(cuon)) --> [cuon].

v(v(mua)) --> [mua].
v(v(co)) --> [co].
v(v(tang)) --> [tang].
v(v(thich)) --> [thich].
v(v(doc)) --> [doc].
v(v(o)) --> [o].
v(v(gan)) --> [gan].
v(v(dinh)) --> [dinh].

q(q(may)) --> [may].
q(q(nhieu)) --> [nhieu].

adv(adv(rat)) --> [rat].
adv(adv(moi)) --> [moi].

adj(adj(hay)) --> [hay].
adj(adj(moi)) --> [moi].
adj(adj(gan)) --> [gan].

cd(cd(mot)) --> [mot].

p(p(o)) --> [o].
%p(p(gan)) --> [gan].
