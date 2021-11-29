function Gabby_Dropdwon_Callback(dd, event, ax)
val = dd.Value;

Amp   = 1;
Sigma = 5;
Mu    = 25;
Tau   = 10;
xx    = 0:0.1:100;
switch val
    case 'lognormal'
        Curve = Amp*Sigma/Tau*sqrt(pi/2)*exp(-0.5*(log(xx/Mu)/Sigma*Tau).^2);
    case 'EMG'
        z     = 1/sqrt(2)*(Sigma/Tau - (xx-Mu)/Sigma);
        Curve = Amp*Sigma/Tau*sqrt(pi/2)*exp(z.^2).*erfc(z).*exp(-1/2*(xx-Mu).^2/Sigma^2);
    case 'Gaussian'
        Curve = Amp*exp(-(xx-Mu).^2/2/Sigma^2);
    otherwise
end

plot(ax,xx,Curve,'Color', 'g');