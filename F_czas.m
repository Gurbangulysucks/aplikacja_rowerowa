function [czas_jazdy, HardLvl] = F_czas(d,h)
%czas przejazdu rowerem w zależności od kąta nachylenia 
%d - długość odcinka w metrach
%h różnica wysokości w metrach
% czas_jazdy w sekundach
v_sr = 15 * (1000/3600); %przeciętna prędkość jazdy rowerem 15 km/h
kat = atan2(h,d);
if (kat >=0 && kat < 0.01)
    WspV = 1;
    HardLvl = 1;
elseif (kat >= 0.010 && kat < 0.025)
    WspV = 0.8;
    HardLvl = 1.3;
elseif (kat >= 0.025 && kat < 0.045)
    WspV = 0.5;
    HardLvl = 1.8;
elseif (kat >= 0.045)
    WspV = 0.3;
    HardLvl = 2.5;
elseif (kat < 0 && kat >= -0.012)
    WspV = 1.2;
    HardLvl = 0.8;
elseif (kat < -0.012 && kat >= -0.025)
    WspV = 1.5;
    HardLvl = 0.5;
elseif (kat < -0.025 && kat >= -0.045)
    WspV = 1.8;
    HardLvl = 0.3;
elseif (kat < -0.045)
    WspV = 2.0;
    HardLvl = 0.2;
end
v_jazdy = v_sr * WspV;
czas_jazdy = d/v_jazdy;

end
