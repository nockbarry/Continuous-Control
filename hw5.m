g1= tf([1],[conv([conv([1 2],[1 4])], [1 0])])
bode(g1)
figure
g2=tf([1 5],[conv([1 2],[1 4])])
bode(g2)
figure
g3=tf([conv([1 3],[1 5])],[conv([conv([1 2],[1 4])], [1 0])])
bode(g3)
figure
g4=tf([90],[1 5 0])
bode(g4)
figure
g5=tf(63.8*[1 1],[conv([1 8],[1 8])])
bode(g5)