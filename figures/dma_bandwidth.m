clc;clear;close all

%dsize_label = [1 2 4 8 16 32 64 128];
get1cpe = [0.331054688 0.644335938 1.29 2.22 3.67 5.61 7.27 8.72 9.34 9.6 9.97];
get8cpe = [1.4 2.76 5.69 9.3 11.65 12.72 12.56 13.21 14.43 13.79 13.52];
get16cpe = [1.62 3.18 6.25 11.06 12.21 12.8 13.33 13.63 13.98 13.95 14.05];
get32cpe = [1.78 3.3 6.28 13.93 15.98 16.21 15.57 15.5 15.81 15.96 16];
get64cpe = [1.85 3.41 6.44 14.5 24.71 25.67 26.18 26.37 26.38 26.35 26.63];

put1cpe = [0.340595703 0.644375 1.22 2.12 3.67 5.53 7.34 8.62 9.34 9.6 9.97];
put8cpe = [1.36 2.72 5.53 9.19 11.47 12.36 12.38 12.97 13.77 13.97 13.37];
put16cpe = [1.63 3.23 6.47 10.98 12.46 13.27 13.27 14.28 14.23 14.9 14.57];
put32cpe = [1.73 3.42 6.2 13.75 15.85 15.83 15.56 15.69 15.95 15.79 15.46];
put64cpe = [1.87 3.32 6.53 14.64 25.01 25.89 26.28 26.41 26.41 26.59 26.63];
x = [1:size(get1cpe)];

fg = figure('Unit','centimeters','Position',[1 1 25 16]);
orient(fg, 'landscape');

%subplot(2,2,1)
width=0.45;
height=0.42;

posx=[ 0.07 0.535 0.07 0.535 ];
posy=[ 0.56 0.56 0.12 0.12 ];

dsize = [1:size(get1cpe, 2)];

subplot(1,2,1)
im2 = plot(dsize, get1cpe, '-s', ...
    dsize, get8cpe, '-*',  ...
    dsize, get16cpe, '-s', ...
    dsize, get32cpe, '->', ...
    dsize, get64cpe, '-o', ...
    'MarkerSize', 7, 'Linewidth', 2);

set(gca, 'XTick', [1:8]);
set(gca, 'XTickLabel', {'128', '256', '512', '1K', '2K', '4K', '8K', '16K', '24K', '32K', '48K'})
axis([1 8.1 0 30]) 
grid minor
h_legend = legend('1CPE', '8CPE',  '16CPE',  '32CPE', '64CPE', 'Location', 'northwest');
ylabel('Bandwidth (GB/s)');
text(3.7, 6,'DMA\_get', 'FontSize', 16, 'FontName', 'TimesNewRoman', 'FontAngle','italic')
set(gca, 'FontAngle','italic');
set(gca, 'FontSize', 13);
set(findall( 0, 'FontName', 'Helvetica' ), 'FontName', 'TimesNewRoman' )

subplot(1,2,2)
im3 = plot(dsize, put1cpe, '-s', ...
    dsize, put8cpe, '-*',  ...
    dsize, put16cpe, '-s', ...
    dsize, put32cpe, '->', ...
    dsize, put64cpe, '-o', ...
    'MarkerSize', 7, 'Linewidth', 2);

set(gca, 'XTick', [1:8]);
set(gca, 'XTickLabel', {'128', '256', '512', '1K', '2K', '4K', '8K', '16K', '24K', '32K', '48K'})
axis([1 8.1 0 30]) 
grid minor
h_legend = legend('1CPE', '8CPE',  '16CPE',  '32CPE', '64CPE', 'Location', 'northwest');
ylabel('Bandwidth (GB/s)');
text(3.7, 6,'DMA\_put', 'FontSize', 16, 'FontName', 'TimesNewRoman', 'FontAngle','italic')
set(gca, 'FontAngle','italic');
set(gca, 'FontSize', 13);
set(findall( 0, 'FontName', 'Helvetica' ), 'FontName', 'TimesNewRoman' )
