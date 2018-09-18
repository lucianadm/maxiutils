%Pruebo los cuantis

%% Reseteo Matlab

close all
clear
clc

%% Parámetros generales

Nvec = 1E6; %Longitud de los vectores de datos

%Parámetros para BP
Dvec = 1:3:7;
tauVec = 1:10:30;

%% Genero vectores de prueba

rampa = 1/Nvec*1:Nvec;

%% Calculo PDF_BP

for D = Dvec
    for tau = tauVec
        pdfRampa = PDF_BP(rampa, D, tau);
        figure()
        plot(pdfRampa,'.-')
        title(['PDF-BP, rampa, D' num2str(D) ', tau' num2str(tau)])
    end
end