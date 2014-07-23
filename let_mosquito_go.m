function [] = let_mosquito_go( )
% let_mosquito_go  -  驱蚊程序
%　 默认播放20khz声波，能驱鼠，驱蚊
%   Author: heLoman

% 　以下为同方知网参考论文得到的参数，为防止人耳听到带来干扰,高频18~20khz左右比较合适,
% 　如果能听到可以调高频率.
% 　20khz 驱鼠
% 　15~20khz引起气流变化使蚊子无法飞翔
% 　21~23khz发出雄蚊声音吸引雌蚊，雄性不吸血
% 　4~20khz可能也能驱蚊
% 　300~500hz可以吸引雄蚊的雌性翅膀振动声
% 　30~70khz为蝙蝠超声波驱蚊

fs=48000;           %取样频率
f = 18000;
duration=5;         %录音时间

audio = sin(2 * pi * (1:duration * fs) * f / fs);

[audio,setting] = mapminmax(audio); %normalization signal amptitude

while(1)
        sound(audio,fs);
    end

