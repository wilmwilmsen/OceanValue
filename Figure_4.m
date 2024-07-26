clear all

g = [0.4660, 0.6740, 0.1880];
b = [0, 0.4470, 0.7410];
r = [0.6350, 0.0780, 0.1840];
k = 'k'; 

set(gcf, 'Position',  [100, 100, 800, 800])
set(gca,'FontSize',15)

%% DATA for subgraph a

% AVE MAX: NO REDUCTION NO TRADE  
Cost_wo_trade_CHN=0.019681186;
Cost_wo_trade_USA=0.135531606;
Cost_wo_trade_EU=0.224931972;
Cost_wo_trade_IND=0.002338266;
Cost_wo_trade_RUS=0.002940618;
Cost_wo_trade_JPN=0.536362808;
Cost_wo_trade_KOR=0.354235247;
Cost_wo_trade_CAN=0.74552721;
Cost_wo_trade_BRA=1.299686347;
Cost_wo_trade_AUS=0.18262058;

% AVE MAX: 5% REDUCTION NO TRADE
Cost_wo_trade_CHN_red5=0.019797361;
Cost_wo_trade_USA_red5=0.148165563;
Cost_wo_trade_EU_red5=0.269223938;
Cost_wo_trade_IND_red5=0.002449909;
Cost_wo_trade_RUS_red5=0.005035082;
Cost_wo_trade_JPN_red5=0.58036238;
Cost_wo_trade_KOR_red5=0.359104502;
Cost_wo_trade_CAN_red5=0.934749747;
Cost_wo_trade_BRA_red5=1.462740615;
Cost_wo_trade_AUS_red5=0.29881354;

% AVE MAX: 10% REDUCTION NO TRADE
Cost_wo_trade_CHN_red=0.019914038;
Cost_wo_trade_USA_red=0.161614831;
Cost_wo_trade_EU_red=0.319332736;
Cost_wo_trade_IND_red=0.00256553;
Cost_wo_trade_RUS_red=0.008299301;
Cost_wo_trade_JPN_red=0.626872246;
Cost_wo_trade_KOR_red=0.364026779;
Cost_wo_trade_CAN_red=1.154772337;
Cost_wo_trade_BRA_red=1.639602579;
Cost_wo_trade_AUS_red=0.45893174;

% Std dev: NO REDUCTION NO TRADE AVE MAX
Std_Cost_wo_trade_CHN=0.019517202;
Std_Cost_wo_trade_USA=0.087173691;
Std_Cost_wo_trade_EU=0.132969081;
Std_Cost_wo_trade_IND=0.005728136;
Std_Cost_wo_trade_RUS=0.005642328;
Std_Cost_wo_trade_JPN=0.315991971;
Std_Cost_wo_trade_KOR=0.372029875;
Std_Cost_wo_trade_CAN=0.343301999;
Std_Cost_wo_trade_BRA=0.656156982;
Std_Cost_wo_trade_AUS=0.11229127;

% Std dev: 5% REDUCTION NO TRADE AVE MAX 
Std_Cost_wo_trade_CHN_red5=0.019593801;
Std_Cost_wo_trade_USA_red5=0.09214394;
Std_Cost_wo_trade_EU_red5=0.14781127;
Std_Cost_wo_trade_IND_red5=0.006001395;
Std_Cost_wo_trade_RUS_red5=0.00840542;
Std_Cost_wo_trade_JPN_red5=0.328875523;
Std_Cost_wo_trade_KOR_red5=0.374486078;
Std_Cost_wo_trade_CAN_red5=0.3894519;
Std_Cost_wo_trade_BRA_red5=0.704785544;
Std_Cost_wo_trade_AUS_red5=0.14815421;

% Std dev: 10% REDUCTION NO TRADE AVE MAX 
Std_Cost_wo_trade_CHN_red=0.019670552;
Std_Cost_wo_trade_USA_red=0.097206322;
Std_Cost_wo_trade_EU_red=0.163024839;
Std_Cost_wo_trade_IND_red=0.006282974;
Std_Cost_wo_trade_RUS_red=0.011820249;
Std_Cost_wo_trade_JPN_red=0.341785641;
Std_Cost_wo_trade_KOR_red=0.376944498;
Std_Cost_wo_trade_CAN_red=0.436369187;
Std_Cost_wo_trade_BRA_red=0.754286064;
Std_Cost_wo_trade_AUS_red=0.18533668;


Std=[Std_Cost_wo_trade_CHN Std_Cost_wo_trade_CHN_red5 Std_Cost_wo_trade_CHN_red; Std_Cost_wo_trade_USA Std_Cost_wo_trade_USA_red5 Std_Cost_wo_trade_USA_red; Std_Cost_wo_trade_EU Std_Cost_wo_trade_EU_red5 Std_Cost_wo_trade_EU_red; Std_Cost_wo_trade_IND Std_Cost_wo_trade_IND_red5 Std_Cost_wo_trade_IND_red; Std_Cost_wo_trade_RUS Std_Cost_wo_trade_RUS_red5 Std_Cost_wo_trade_RUS_red; Std_Cost_wo_trade_JPN Std_Cost_wo_trade_JPN_red5 Std_Cost_wo_trade_JPN_red; Std_Cost_wo_trade_KOR Cost_wo_trade_KOR_red5 Cost_wo_trade_KOR_red; Std_Cost_wo_trade_CAN Cost_wo_trade_CAN_red5 Cost_wo_trade_CAN_red; Std_Cost_wo_trade_BRA Cost_wo_trade_BRA_red5 Cost_wo_trade_BRA_red; Std_Cost_wo_trade_AUS Cost_wo_trade_AUS_red5 Cost_wo_trade_AUS_red];
Cost=[Cost_wo_trade_CHN Cost_wo_trade_CHN_red5 Cost_wo_trade_CHN_red; Cost_wo_trade_USA Cost_wo_trade_USA_red5 Cost_wo_trade_USA_red; Cost_wo_trade_EU Cost_wo_trade_EU_red5 Cost_wo_trade_EU_red; Cost_wo_trade_IND Cost_wo_trade_IND_red5 Cost_wo_trade_IND_red; Cost_wo_trade_RUS Cost_wo_trade_RUS_red5 Cost_wo_trade_RUS_red; Cost_wo_trade_JPN Cost_wo_trade_JPN_red5 Cost_wo_trade_JPN_red; Cost_wo_trade_KOR Cost_wo_trade_KOR_red5 Cost_wo_trade_KOR_red; Cost_wo_trade_CAN Cost_wo_trade_CAN_red5 Cost_wo_trade_CAN_red; Cost_wo_trade_BRA Cost_wo_trade_BRA_red5 Cost_wo_trade_BRA_red; Cost_wo_trade_AUS Cost_wo_trade_AUS_red5 Cost_wo_trade_AUS_red];

%% Subgraph a

    subplot(2,1,1)

    hold on
    text(11.4, 1.7, 'costs', 'rotation', 90, 'FontSize', 15, 'Color', 'k');
    text(11.05, 0, '$\underbrace{\hspace{3.4cm}}_{}$', 'rotation', 90, 'FontSize', 24, 'Color', 'k','interpreter', 'latex');
    a=bar(Cost);
    ngroups = size(Cost, 1);
    nbars = size(Cost, 2);
    groupwidth = min(0.8, nbars/(nbars + 1.5));
    for i = 1:nbars
    x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
    errorbar(x, Cost(:,i), Std(:,i), '.', 'Color', 'k');
    end
    hold off

    a(1).FaceColor = b;
    a(2).FaceColor = g;
    a(3).FaceColor = r;

    axis([0 11 0 4])
    yticks([0 1 2 3 4])
    xticks([1 2 3 4 5 6 7 8 9 10])
    title('(a) No emissions reductions trading','FontSize',28)
    ylabel(['Country-level aggregated',newline,'cost/gain (%GDP)'],'FontSize',20,'Units', 'Normalized', 'Position', [-0.06, 0.5, 0]);
    set(gca,'XTickLabel', {'CHN','USA','EU29','IND','RUS','JPN','KOR','CAN','BRA','AUS'},'FontSize',15);
    legend({'Baseline','  5% attenuation of ocean carbon sink','10% attenuation of ocean carbon sink'},'FontSize',18,'Units', 'Normalized', 'Position', [0.34,0.84,0.05,0.05],'NumColumns',1)
    legend('boxoff')

%% DATA for subgraph b

% AVE MAX: NO REDUCTION WITH TRADE 
Cost_wt_trade_CHN=-0.032840795;
Cost_wt_trade_USA=0.080751264;
Cost_wt_trade_EU=0.087332097;
Cost_wt_trade_IND=-0.267008604;
Cost_wt_trade_RUS=-0.178734162;
Cost_wt_trade_JPN=0.149916536;
Cost_wt_trade_KOR=0.169695624;
Cost_wt_trade_CAN=0.20146067;
Cost_wt_trade_BRA=0.229414411;
Cost_wt_trade_AUS=0.1161108;

% AVE MAX: 5% REDUCTION WITH TRADE
Cost_wt_trade_CHN_red5=-0.044972351;
Cost_wt_trade_USA_red5=0.089728512;
Cost_wt_trade_EU_red5=0.101785391;
Cost_wt_trade_IND_red5=-0.302706244;
Cost_wt_trade_RUS_red5=-0.176403558;
Cost_wt_trade_JPN_red5=0.166841077;
Cost_wt_trade_KOR_red5=0.181313661;
Cost_wt_trade_CAN_red5=0.238978448;
Cost_wt_trade_BRA_red5=0.261047126;
Cost_wt_trade_AUS_red5=0.16225647;

% AVE MAX: 10% REDUCTION WITH TRADE
Cost_wt_trade_CHN_red=-0.057905805;
Cost_wt_trade_USA_red=0.09903493;
Cost_wt_trade_EU_red=0.117310557;
Cost_wt_trade_IND_red=-0.338752056;
Cost_wt_trade_RUS_red=-0.169809724;
Cost_wt_trade_JPN_red=0.184207151;
Cost_wt_trade_KOR_red=0.192349705;
Cost_wt_trade_CAN_red=0.279561313;
Cost_wt_trade_BRA_red=0.294142097;
Cost_wt_trade_AUS_red=0.2145062;

% Std dev: NO REDUCTION WITH TRADE AVE MAX
Std_Cost_wt_trade_CHN=0.036358246;
Std_Cost_wt_trade_USA=0.054836541;
Std_Cost_wt_trade_EU=0.054175532;
Std_Cost_wt_trade_IND=0.162356758;
Std_Cost_wt_trade_RUS=0.099111619;
Std_Cost_wt_trade_JPN=0.087866943;
Std_Cost_wt_trade_KOR=0.133013178;
Std_Cost_wt_trade_CAN=0.113168262;
Std_Cost_wt_trade_BRA=0.139412042;
Std_Cost_wt_trade_AUS=0.07482969;

% Std dev: 5% REDUCTION WITH TRADE AVE MAX 
Std_Cost_wt_trade_CHN_red5=0.039077057;
Std_Cost_wt_trade_USA_red5=0.059065536;
Std_Cost_wt_trade_EU_red5=0.059751769;
Std_Cost_wt_trade_IND_red5=0.175377216;
Std_Cost_wt_trade_RUS_red5=0.101842662;
Std_Cost_wt_trade_JPN_red5=0.094239428;
Std_Cost_wt_trade_KOR_red5=0.141471948;
Std_Cost_wt_trade_CAN_red5=0.126239854;
Std_Cost_wt_trade_BRA_red5=0.150504339;
Std_Cost_wt_trade_AUS_red5=0.09123605;

% Std dev: 10% REDUCTION WITH TRADE AVE MAX 
Std_Cost_wt_trade_CHN_red=0.041850825;
Std_Cost_wt_trade_USA_red=0.063264596;
Std_Cost_wt_trade_EU_red=0.065358461;
Std_Cost_wt_trade_IND_red=0.187994155;
Std_Cost_wt_trade_RUS_red=0.104697086;
Std_Cost_wt_trade_JPN_red=0.100484184;
Std_Cost_wt_trade_KOR_red=0.149644673;
Std_Cost_wt_trade_CAN_red=0.139469185;
Std_Cost_wt_trade_BRA_red=0.161495839;
Std_Cost_wt_trade_AUS_red=0.10834701;

Std=[Std_Cost_wt_trade_CHN Std_Cost_wt_trade_CHN_red5 Std_Cost_wt_trade_CHN_red; Std_Cost_wt_trade_USA Std_Cost_wt_trade_USA_red5 Std_Cost_wt_trade_USA_red; Std_Cost_wt_trade_EU Std_Cost_wt_trade_EU_red5 Std_Cost_wt_trade_EU_red; Std_Cost_wt_trade_IND Std_Cost_wt_trade_IND_red5 Std_Cost_wt_trade_IND_red; Std_Cost_wt_trade_RUS Std_Cost_wt_trade_RUS_red5 Std_Cost_wt_trade_RUS_red; Std_Cost_wt_trade_JPN Std_Cost_wt_trade_JPN_red5 Std_Cost_wt_trade_JPN_red; Std_Cost_wt_trade_KOR Cost_wt_trade_KOR_red5 Cost_wt_trade_KOR_red; Std_Cost_wt_trade_CAN Cost_wt_trade_CAN_red5 Cost_wt_trade_CAN_red; Std_Cost_wt_trade_BRA Cost_wt_trade_BRA_red5 Cost_wt_trade_BRA_red; Std_Cost_wt_trade_AUS Cost_wt_trade_AUS_red5 Cost_wt_trade_AUS_red];
Cost=[Cost_wt_trade_CHN Cost_wt_trade_CHN_red5 Cost_wt_trade_CHN_red; Cost_wt_trade_USA Cost_wt_trade_USA_red5 Cost_wt_trade_USA_red; Cost_wt_trade_EU Cost_wt_trade_EU_red5 Cost_wt_trade_EU_red; Cost_wt_trade_IND Cost_wt_trade_IND_red5 Cost_wt_trade_IND_red; Cost_wt_trade_RUS Cost_wt_trade_RUS_red5 Cost_wt_trade_RUS_red; Cost_wt_trade_JPN Cost_wt_trade_JPN_red5 Cost_wt_trade_JPN_red; Cost_wt_trade_KOR Cost_wt_trade_KOR_red5 Cost_wt_trade_KOR_red; Cost_wt_trade_CAN Cost_wt_trade_CAN_red5 Cost_wt_trade_CAN_red; Cost_wt_trade_BRA Cost_wt_trade_BRA_red5 Cost_wt_trade_BRA_red; Cost_wt_trade_AUS Cost_wt_trade_AUS_red5 Cost_wt_trade_AUS_red];

%% Subgraph b

    subplot(2,1,2)

    hold on
    text(11.4, 0.36, 'costs', 'rotation', 90, 'FontSize', 15, 'Color', 'k');
    text(11.05, 0, '$\underbrace{\hspace{1.7cm}}_{}$', 'rotation', 90, 'FontSize', 24, 'Color', 'k','interpreter', 'latex');
    text(11.05, -0.985, '$\underbrace{\hspace{1.7cm}}_{}$', 'rotation', 90, 'FontSize', 24, 'Color', 'k','interpreter', 'latex');
    text(11.4, -0.64, 'gains', 'rotation', 90, 'FontSize', 15, 'Color', 'k');
    a=bar(Cost);
    ngroups = size(Cost, 1);
    nbars = size(Cost, 2);
    groupwidth = min(0.8, nbars/(nbars + 1.5));
    for i = 1:nbars
    x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
    errorbar(x, Cost(:,i), Std(:,i), '.', 'Color', 'k');
    end
    hold off
    
    a(1).FaceColor = b;
    a(2).FaceColor = g;
    a(3).FaceColor = r;

    axis([0 11 -1 1])
    yticks([-0.5 0 0.5 1])
    xticks([1 2 3 4 5 6 7 8 9 10])
    title('(b) Full emissions reductions trading','FontSize',28)
    ylabel(['Country-level aggregated',newline,'cost/gain (%GDP)'],'FontSize',20,'Units', 'Normalized', 'Position', [-0.06, 0.5, 0]);
    set(gca,'XTickLabel', {'CHN','USA','EU29','IND','RUS','JPN','KOR','CAN','BRA','AUS'},'FontSize',15);
    legend({'Baseline','  5% attenuation of ocean carbon sink','10% attenuation of ocean carbon sink'},'FontSize',18,'Units', 'Normalized', 'Position', [0.34,0.365,0.05,0.05],'NumColumns',1)
    legend('boxoff')
    
    saveas(gcf,'Figure_4.pdf')
    