function [godz, minuty, sek] = F_s2hms(sekundy)
godz = floor(sekundy/3600);
sek = sekundy - godz*3600;
minuty = floor(sek/60);
sek = sek - minuty*60;
end