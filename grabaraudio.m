%% grabar audio
Fs=44100;
t=2;
v = audiorecorder(Fs, 24, 1)
v.StartFcn = 'disp(''   iniciando grabación'')';
v.StopFcn = 'disp(''   terminando grabación'')';
recordblocking(v, t)
y = v.getaudiodata()
file = 'C:\Users\mi compu\Desktop\Proyecto_Integrador_ADS'; %Ubicación de base de datos de sonidos%

%filename='grabacion.wav';
audiowrite('grabacion_navidad.wav', y,Fs); %guarda el sonido en formato wav%
which 'grabacion_navidad.wav'
sound(y,Fs)

%%
sonido=audioread('grabacion_navidad.wav')
maximo = max(abs(sonido))
n = length(sonido)
snd_norm = zeros(n,1);
for i = 1:n
    snd_norm(i) = sonido(i)/maximo;
end

%%
%r = audiorecorder(22050, 16, 1);
%      record(r);     % speak into microphone...
%      pause(r);
%      p = play(r);   % listen
%      resume(r);     % speak again
%      stop(r);
%      p = play(r);   % listen to complete recording
%      mySpeech = getaudiodata(r, 'int16'); % get data as int16 array