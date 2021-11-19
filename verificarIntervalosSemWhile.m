function [metades,i,j] = verificarIntervalosSemWhile(y_o)
    metades = 0;
        
    for i=1:length(y_o)
        if(y_o(i,:) != 0)
            break;                
        else
            if(y_o(i,:) == 0 && i < length(y_o))
               continue;
            endif
        endif
    endfor
        
    for j=i:length(y_o)
        if(y_o(j,:) == 0)
            break;                
        else
            if(y_o(j,:) == 0 && j < length(y_o))
                continue;
            endif
        endif
    endfor
        
    if(y_o(1:(i-1),:) == 0 || y_o(1:(i-1),:) != 0)
        metades+=1;
    endif
    
    if(y_o(i:(j-1),:) == 0 || y_o(i:(j-1),:) != 0)
        metades+=1;
    endif
    
    if(y_o((j:(length(y_o))),:) == 0)
        metades+=1;
    endif
        
endfunction


##function [metades,i,j] = verificarIntervalosComWhile(y_o)
##    metades = 0;
##    i = 1;
##    fim = 0;
##    
##    %while(fim!=length(y_o))
##        
##        while(y_o(i,:) == 0 && i < length(y_o))
##            if(y_o(i,:) == 0 && i < length(y_o))
##                i+=1;
##            endif
##        endwhile
##        
##        
##        j = i;
##        while(y_o(j,:) != 0 && j < length(y_o))
##            if(y_o(j,:) != 0 && j < length(y_o))
##                j+=1;
##            endif
##        endwhile
##        
##        if(y_o(1:(i-1),:) == 0 || y_o(1:(i-1),:) != 0)
##            metades+=1;
##        endif
##        if(y_o(i:(j-1),:) == 0 || y_o(i:(j-1),:) != 0)
##            metades+=1;
##        endif
##        if(y_o((j:(length(y_o))),:) == 0)
##            metades+=1;
##        endif
##        
##        fim = length(y_o);
##    %endwhile
##    
##endfunction