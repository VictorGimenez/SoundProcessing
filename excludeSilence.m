function S = excludeSilence(S)
    i = 1;
    metade = 0;
    
    while(i!=length(S)+1);
        if(S(i,:) == 0 && metade == 0)
            S(i,:) = [];
        elseif(S(i,:) != 0)
            i+=1;
            metade=1;
        elseif(S(i,:) == 0 && metade > 0)
            S(i,:) = []; 
        endif  
    endwhile
endfunction

##function S = excludeSilenceRecursive(S,i)
##    metade = 0;
##  
##    if(i == length(S))
##        S = S;
##    else
##        if(S(i,:) == 0 && metade == 0)
##            S(i,:) = [];
##            S = excludeSilenceRecursive(S,i+1);
##        elseif(S(i,:) != 0)
##            i-=1;
##            metade=1;
##            S = excludeSilenceRecursive(S,i);
##        elseif(S(i,:) == 0 && metade == 0)
##            S(i,:) = [];
##            S = excludeSilenceRecursive(S,i+1);
##        endif
##    endif 
##endfunction   
