function  func (r, y, k)
    a1 = y
    a2 = y
    a3 = y
    a4 = y
    for b = 1:4
        switch b
               case 1
                   a1(end+1) = r(b)*y*(1-y)
                case 2
                    a2(end+1) = r(b)*y*(1-y)
                case 3
                    a3(end+1) = r(b)*y*(1-y)
                case 4 
                    a4(end+1) = r(b)*y*(1-y)
        end
        for i = 2:k-1
            switch b
               case 1
                   a1(end+1) = r(b)*a1(i)*(1-a1(i))
                case 2
                    a2(end+1) = r(b)*a2(i)*(1-a2(i))
                case 3
                    a3(end+1) = r(b)*a3(i)*(1-a3(i))
                case 4 
                    a4(end+1) = r(b)*a4(i)*(1-a4(i))
            end 
        end
    end
    x = linspace(0,k,k)
    c(:,1) = a1
    c(:,2) = a2
    c(:,3) = a3
    c(:,4) = a4
    plot(x,c)
    legend('a1' , 'a2' , 'a3' , 'a4')
end
       
