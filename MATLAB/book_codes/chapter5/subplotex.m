function subplotex
    for loop = 1:2
        x = linspace(0, 2 *pi, 20 * pi);
        y = sin(x);
        subplot(1,2,loop)
        plot(x, y, 'ko')
        xlabel('x')
        ylabel('sin(x)')
        title('sin plot')
    end % for
end % function