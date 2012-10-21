%% INPUT: a sequence of rx data
%% Type: 1 short, 2 long, 3 cp+long
%% OUTPUT: number of users
function [result, type] = Correlate(rxdata, type)
  
  short = [
   0.0460 + 0.0460i;
  -0.1324 + 0.0023i;
  -0.0135 - 0.0785i;
   0.1428 - 0.0127i;
   0.0920          ;
   0.1428 - 0.0127i;
  -0.0135 - 0.0785i;
  -0.1324 + 0.0023i;
   0.0460 + 0.0460i;
   0.0023 - 0.1324i;
  -0.0785 - 0.0135i;
  -0.0127 + 0.1428i;
        0 + 0.0920i;
  -0.0127 + 0.1428i;
  -0.0785 - 0.0135i;
   0.0023 - 0.1324i
   ];

cp = [
   -0.1562          ;
   0.0123 - 0.0976i;
   0.0917 - 0.1059i;
  -0.0919 - 0.1151i;
  -0.0028 - 0.0538i;
   0.0751 + 0.0740i;
  -0.1273 + 0.0205i;
  -0.1219 + 0.0166i;
  -0.0350 + 0.1509i;
  -0.0565 + 0.0218i;
  -0.0603 - 0.0813i;
   0.0696 - 0.0141i;
   0.0822 - 0.0924i;
  -0.1313 - 0.0652i;
  -0.0572 - 0.0393i;
   0.0369 - 0.0983i;
   0.0625 + 0.0625i;
   0.1192 + 0.0041i;
  -0.0225 - 0.1607i;
   0.0587 + 0.0149i;
   0.0245 + 0.0585i;
  -0.1368 + 0.0474i;
   0.0010 + 0.1150i;
   0.0533 - 0.0041i;
   0.0975 + 0.0259i;
  -0.0383 + 0.1062i;
  -0.1151 + 0.0552i;
   0.0598 + 0.0877i;
   0.0211 - 0.0279i;
   0.0968 - 0.0828i;
   0.0397 + 0.1112i;
  -0.0051 + 0.1203i
  ];

  long = [
    0.1562         ;
  -0.0051 - 0.1203i;
   0.0397 - 0.1112i;
   0.0968 + 0.0828i;
   0.0211 + 0.0279i;
   0.0598 - 0.0877i;
  -0.1151 - 0.0552i;
  -0.0383 - 0.1062i;
   0.0975 - 0.0259i;
   0.0533 + 0.0041i;
   0.0010 - 0.1150i;
  -0.1368 - 0.0474i;
   0.0245 - 0.0585i;
   0.0587 - 0.0149i;
  -0.0225 + 0.1607i;
   0.1192 - 0.0041i;
   0.0625 - 0.0625i;
   0.0369 + 0.0983i;
  -0.0572 + 0.0393i;
  -0.1313 + 0.0652i;
   0.0822 + 0.0924i;
   0.0696 + 0.0141i;
  -0.0603 + 0.0813i;
  -0.0565 - 0.0218i;
  -0.0350 - 0.1509i;
  -0.1219 - 0.0166i;
  -0.1273 - 0.0205i;
   0.0751 - 0.0740i;
  -0.0028 + 0.0538i;
  -0.0919 + 0.1151i;
   0.0917 + 0.1059i;
   0.0123 + 0.0976i;
  -0.1562          ;
   0.0123 - 0.0976i;
   0.0917 - 0.1059i;
  -0.0919 - 0.1151i;
  -0.0028 - 0.0538i;
   0.0751 + 0.0740i;
  -0.1273 + 0.0205i;
  -0.1219 + 0.0166i;
  -0.0350 + 0.1509i;
  -0.0565 + 0.0218i;
  -0.0603 - 0.0813i;
   0.0696 - 0.0141i;
   0.0822 - 0.0924i;
  -0.1313 - 0.0652i;
  -0.0572 - 0.0393i;
   0.0369 - 0.0983i;
   0.0625 + 0.0625i;
   0.1192 + 0.0041i;
  -0.0225 - 0.1607i;
   0.0587 + 0.0149i;
   0.0245 + 0.0585i;
  -0.1368 + 0.0474i;
   0.0010 + 0.1150i;
   0.0533 - 0.0041i;
   0.0975 + 0.0259i;
  -0.0383 + 0.1062i;
  -0.1151 + 0.0552i;
   0.0598 + 0.0877i;
   0.0211 - 0.0279i;
   0.0968 - 0.0828i;
   0.0397 + 0.1112i;
  -0.0051 + 0.1203i
  ];

benchmark_sts_64_56 = [
   4.0000          ;
  -3.9430 + 1.2876i;
  -3.7344 - 3.0241i;
   1.9615 - 1.1212i;
  -1.0000 + 0.4142i;
   5.4473 + 6.6813i;
   4.2037 + 5.7538i;
   6.3565 - 1.2161i;
   6.0000 - 2.0000i;
  -5.3371 + 6.5812i;
   2.0389 + 3.1680i;
   0.1465 - 5.0563i;
  -1.0000 + 2.4142i;
   2.1016 + 0.7980i;
   1.4918 + 2.3901i;
   1.2668 + 6.7417i;
  -4.0000          ;
   1.2668 - 6.7417i;
   1.4918 - 2.3901i;
   2.1016 - 0.7980i;
  -1.0000 - 2.4142i;
   0.1465 + 5.0563i;
   2.0389 - 3.1680i;
  -5.3371 - 6.5812i;
   6.0000 + 2.0000i;
   6.3565 + 1.2161i;
   4.2037 - 5.7538i;
   5.4473 - 6.6813i;
  -1.0000 - 0.4142i;
   1.9615 + 1.1212i;
  -3.7344 + 3.0241i;
  -3.9430 - 1.2876i
  ];

benchmark_sts_64_40 = [
        0          ;
   0.0505 - 2.6652i;
   0.1764 - 2.3009i;
   0.7270 + 0.8380i;
   1.0000 - 0.4142i;
   0.9498 - 6.5422i;
   3.9884 - 7.3833i;
   7.3145 - 3.0650i;
   2.0000 - 2.0000i;
  -6.0799 - 0.8581i;
  -3.4026 + 3.6878i;
   2.8980 + 3.2163i;
   1.0000 - 2.4142i;
  -0.5748 - 3.0603i;
   3.2378 + 0.7702i;
   2.7148 + 1.8849i;
        0          ;
   2.7148 - 1.8849i;
   3.2378 - 0.7702i;
  -0.5748 + 3.0603i;
   1.0000 + 2.4142i;
   2.8980 - 3.2163i;
  -3.4026 - 3.6878i;
  -6.0799 + 0.8581i;
   2.0000 + 2.0000i;
   7.3145 + 3.0650i;
   3.9884 + 7.3833i;
   0.9498 + 6.5422i;
   1.0000 + 0.4142i;
   0.7270 - 0.8380i;
   0.1764 + 2.3009i;
   0.0505 + 2.6652i
  ];

% half-sync first symbol
rawofdm =  [
   1.2984 - 0.8548i;
  -1.0196 + 0.3308i;
  -0.1185 + 0.3173i;
   0.5303 + 0.8118i;
  -0.1019 + 0.7091i;
   0.2147 - 0.4824i;
  -0.6892 + 0.3757i;
   0.4383 + 0.0783i;
   0.4786 - 1.1558i;
  -0.1643 - 0.4001i;
   0.3664 + 0.6463i;
  -0.3522 + 0.4780i;
   0.2358 + 0.0465i;
   0.4488 + 0.5154i;
   0.0414 + 1.0010i;
   0.1826 + 1.5399i;
  -0.1926 + 0.9062i;
  -0.1387 - 0.8931i;
  -0.1599 - 0.6938i;
   0.1183 - 0.2761i;
   0.0605 - 0.3776i;
   0.3285 + 0.2880i;
   0.5988 - 0.1381i;
  -0.5900 - 1.3076i;
  -0.7603 - 1.0833i;
  -0.7019 + 0.0782i;
  -0.4639 - 0.0143i;
  -0.3260 - 0.3310i;
   0.5487 - 0.2704i;
   1.6965 - 0.3181i;
  -1.1422 + 0.5860i;
  -0.6653 - 0.1119i
  ];

rawofdm_b = [
  -0.0955 - 0.3007i;
  -0.1855 - 0.6288i;
   1.1356 - 0.8130i;
   0.3318 + 0.4781i;
   0.4197 + 0.9976i;
  -0.0615 + 1.0900i;
   0.1207 - 0.3830i;
   0.1634 - 1.9137i;
  -0.3654 - 0.8331i;
   0.1112 - 0.1565i;
  -0.1539 - 0.0619i;
   0.4770 + 0.0120i;
   0.0366 - 0.1959i;
  -0.2356 + 0.3106i;
   0.8173 + 0.0049i;
  -0.2850 - 0.3586i;
  -0.1587 + 0.7925i;
   0.2394 + 1.3440i;
  -0.0570 + 0.5129i;
   0.2102 - 0.4811i;
  -0.5292 - 0.2505i;
  -0.7338 + 0.6176i;
  -0.5061 - 0.4964i;
  -0.0327 - 0.9466i;
  -0.7542 + 0.6659i;
  -1.0774 - 0.3393i;
   0.2655 - 0.3771i;
  -0.4061 + 1.9070i;
   0.0960 + 0.2242i;
   0.2153 - 0.8307i;
  -0.2711 + 0.5138i;
   1.2693 - 0.1039i
  ];

%  cp_long = [cp; long];
  if type == 1
      cp_long = short;
  elseif type == 2
      cp_long = long;
  elseif type == 3
      cp_long = [cp; long];
  elseif type == 4
      cp_long = [short; short; short; short];
  elseif type == 11
      %pre_640 = read_complex_binary('~/Gnuradio/git/ofdm/my_benchmark_ofdm/data/benchmark_256preamble.dat');
      % FFT: 64 | Occupied: 56 | benchmark
      cp_long = benchmark_sts_64_56; %pre_640(129:384);
      % cp_long = benchmark_sts_64_40; 
  elseif type == 21
      cp_long = rawofdm;
  elseif type == 22
      cp_long = conj(rawofdm2);
  elseif type == 23
      cp_long = conj(rawofdm3);
  elseif type == 31
      cp_long = [rawofdm; rawofdm];
  end
  
  conv_res = conv(rxdata, conj(cp_long(end:-1:1)));
  conv_res = abs(conv_res);
  figure;
  plot(conv_res,'b.-');

end
