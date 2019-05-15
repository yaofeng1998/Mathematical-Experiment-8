%%
clear
data=[
   172    75   169    55   169    64   171    65   167    47
   171    62   168    67   165    52   169    62   168    65
   166    62   168    65   164    59   170    58   165    64
   160    55   175    67   173    74   172    64   168    57
   155    57   176    64   172    69   169    58   176    57
   173    58   168    50   169    52   167    72   170    57
   166    55   161    49   173    57   175    76   158    51
   170    63   169    63   173    61   164    59   165    62
   167    53   171    61   166    70   166    63   172    53
   173    60   178    64   163    57   169    54   169    66
   178    60   177    66   170    56   167    54   169    58
   173    73   170    58   160    65   179    62   172    50
   163    47   173    67   165    58   176    63   162    52
   165    66   172    59   177    66   182    69   175    75
   170    60   170    62   169    63   186    77   174    66
   163    50   172    59   176    60   166    76   167    63
   172    57   177    58   177    67   169    72   166    50
   182    63   176    68   172    56   173    59   174    64
   171    59   175    68   165    56   169    65   168    62
   177    64   184    70   166    49   171    71   170    59
   ];
height=[data(:,1);data(:,3);data(:,5);data(:,7);data(:,9)];
weight=[data(:,2);data(:,4);data(:,6);data(:,8);data(:,10)];
hist(height);
%title('身高直方图')
set(gca,'FontSize',28)
set(gcf,'Position',get(0,'ScreenSize'))
saveas(gcf,'hist1.png')
close
hist(weight);
%title('体重直方图')
set(gca,'FontSize',28)
set(gcf,'Position',get(0,'ScreenSize'))
saveas(gcf,'hist2.png')
close
emp_plot(height,111,0.05);
emp_plot(weight,112,0.05);
h_height1=jbtest(height);
h_weight1=jbtest(weight);
h_height2=lillietest(height);
h_weight2=lillietest(weight);
%%
[mu_h,muci_h,sigma_h,sigmaci_h]= normfit(height);
[mu_w,muci_w,sigma_w,sigmaci_w]= normfit(weight);
%%
[h_height3,p_height,ci_height]=ttest(height,167.5);
[h_weight3,p_weight,ci_weight]=ttest(weight,60.2);