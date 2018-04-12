q100 = [204 100 90 120 130 150 180 190] ./ 4;
q150 = [200 90 85 110 120 140 160 170] ./ 4;
q200 = [201 85 77 107 110 115 130 135] ./ 4;
q250 = [202 80 70 90 100 106 114 120] ./ 4;
X = [1:8];

figure(1);

plot(X, q100, '-o', X, q150, '-+', X, q200, '-*', X, q250, '-d','LineWidth',2);
xlabel('Time (s)');
ylabel('Speedup');
title('Speedup of different Q value');
legend('q=100', 'q=150', 'q=200', 'q=250', 'Location', 'Best');
grid minor
set(gca, 'FontSize', 14);

