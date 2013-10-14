function [] = graphFb(step)
        y=[];
        x= -5:step:5;
        for i = x;
                y = [y fb(i)];
        end
        plot(x,y)
