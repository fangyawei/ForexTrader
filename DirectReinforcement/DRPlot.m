% -- Direct Reinforcement Plotter --------------------------------------
% h = DRPlot(T)
% produces 4 plots according to a strucrt generated by DRTrader().
% ----------------------------------------------------------------------
function h = DRPlot(T)

scrsz = get(0,'ScreenSize');
h = figure('Position',[scrsz(3)/16 2*scrsz(4)/16 14*scrsz(3)/16 12*scrsz(4)/16]);

ywid = 0.16; xwid = 0.92;
yloc = (0.15-ywid/2):0.25:(0.9-ywid/2);

subplot(4,1,1)
plot(T.Inputs.Time,T.Inputs.Price(:,1),'k');
set(gca,'Position',[0.05 yloc(4) xwid ywid])
ylabel('\bf\itPrice');
grid on

subplot(4,1,2)
plot(T.Inputs.Time,T.Outputs.F_ut,'b',T.Inputs.Time,T.Outputs.F,'k');
set(gca,'Position',[0.05 yloc(3) xwid ywid])
%axis([min(T.Inputs.Time) max(T.Inputs.Time) -1.2 1.2])
ylabel('\bf\itSignal');
grid on

subplot(4,1,3)
plot(T.Inputs.Time,100*T.Outputs.Profit,'b')
set(gca,'Position',[0.05 yloc(2) xwid ywid])
ylabel('\bf\itProfit, %')
grid on;

subplot(4,1,4)
plot(T.Inputs.Time,T.Outputs.Sharpe,'b')
set(gca,'Position',[0.05 yloc(1) xwid ywid])
ylabel('\bf\itSharp R.')
grid on;

end