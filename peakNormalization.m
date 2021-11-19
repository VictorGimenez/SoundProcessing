function [S, fs, y_o] = peakNormalization
    clc; clear;

    [y,fs] = audioread('/home/victorbg/Audio/2021-11-17-23:35:29.ogg'); %Audio em português
    [y_o] = audioread('/media/victorbg/VICTORHD/2021-03-09/Users/Victor/Documents/##Projeto2_IraAlcoolismoSuelen/VEP/Final-task-981203_versao12/Final-task-981203/Task-981203/Stim/Word-1/v-1.ogg'); %Audio original (persa)
    y = y(:,:);
    y_o = y_o(:,:);


    %S = zeros(length(y),1);
    S = (max(abs(y_o))/max(abs(y)))*y;
    %S((1:length(y)),1) = S;
    %S((1:length(y)),2) = S;
endfunction
