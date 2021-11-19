function soundCreator(metades, S, fs, i, y_o)
  
    if(metades == 2)
        newArr = [S;zeros(length(y_o)-length(S),2)];
    elseif(metades == 1)
        newArr = [S;:];
    elseif(metades == 3)
        newArr = [zeros(length(1:i-1),2);S(:,:);zeros(length(y_o)-(length(1:i-1)+length(S)),2)];
    endif

##    if(length(y_o) == 47232)
##        newArr1((1:47232),:) = newArr(:,:);
##    elseif(length(y_o) == 91008)
##        newArr1((1:91008),:) = newArr(:,:); 
##    else
##        newArr1((1:134784),:) = newArr(:,:);
##    endif

    audiowrite('testetestando4.ogg',newArr1,fs);

endfunction