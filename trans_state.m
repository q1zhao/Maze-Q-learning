function ss = trans_state(s,a,ix,iy)
        ss=[];s1=[];
    for i = 1:numel(s)
        if a==1
            if floor(s(i)/iy)~=0&s(i)~=iy
                s1 = s(i)-iy;
            end
        elseif a==2
            if floor(s(i)/iy)~=ix&s(i)~=ix*iy
                s1 = s(i)+iy; 
            end
        elseif a==3
            if mod(s(i),iy)~=1;
                s1 = s(i)-1;
            end
        elseif a==4
            if mod(s(i),iy)~=0;
              s1 = s(i)+1;
            end 
        end
    ss = [ss,s1];
    end
end