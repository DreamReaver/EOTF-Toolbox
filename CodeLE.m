function  CodeLE(bitDepth,gamma,RefL,minL,maxL)
% Program for computing the number of code values according to 
% given max luminance(maxL) and min luminance(minL) 
% Plot two curves (PQ and gamma) in the [minL, maxL]  
% Input:
% bitDepth: the dit depth of code values 

% gamma: gamma values in gamma OETF
% RefL: the luminance factor in gamma OETF
% maxL/minL: max/min luminance
% Output: 
% PQLE = codePQ(maxL)-codePQ(minL)+1
% GamLE= codegamma(maxL)-codegamma(minL)+1
% PercPQ/PercGam: Percent of Code values according to [minL,maxL] 
% in the total code values
%

Cval =[minL,maxL];
%*********************** PQ OETF ******************************
PQV = PQ_OETF(Cval, bitDepth); % 亮度反推的PQ码值（左右区间端点）
PQLE = PQV(2) - PQV(1) + 1; % PQ码值区间长度
PercPQ = PQLE / 2 ^ bitDepth * 100; % 百分比

%********************** Gamma **********************
% Normalization in [0,1]
NormL = Cval / RefL; % 亮度值除以参考亮度，标准化
midre = NormL .^ (1/gamma);
N = (2 ^ bitDepth - 1) .* midre;
GAMV = floor(N); % Gamma码值
GamLE = GAMV(2)-GAMV(1)+1; % Gamma区间长度
PercGam = GamLE/2^bitDepth*100; % 百分比

% Output the result
sprintf('PQ:the min and max code values: %d, %d\n',PQV(1),PQV(2))
sprintf('Gamma:the min and max code values: %d, %d\n',GAMV(1),GAMV(2))
sprintf('PQ:the total number of code values: %d\n',PQLE)
sprintf('Gamma:the total number of code values: %d\n',GamLE)
sprintf('PQ:Percent of Code values in total: %2.2f%%\n',PercPQ)
sprintf('Gamma:Percent of Code values in total:%2.2f%%\n',PercGam)

%********************Plot figure***************** 
% 反推区间内PQ全部亮度
CoPQ = PQV(1):PQV(2);
LValue = PQ_EOTF(CoPQ, bitDepth);
plot(CoPQ,LValue,'g-');

hold on

% 反推区间内Gamma全部亮度
Cogam = GAMV(1):GAMV(2);
midre = Cogam ./ (2 ^ bitDepth - 1);
midre2 = midre .^ gamma;
LValue = RefL * midre2;

plot(Cogam,LValue,'r-');
legend('PQ','Gamma');

end