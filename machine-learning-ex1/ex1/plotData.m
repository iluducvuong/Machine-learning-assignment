function plotData(x, y)
%PLOTDATA Plots the data points x and y into a new figure 
%   PLOTDATA(x,y) plots the data points and gives the figure axes labels of
%   population and profit.

figure; % open a new figure window

% ====================== YOUR CODE HERE ======================
% Hint: You can use the 'rx' option with plot to have the markers
%       appear as red crosses. Furthermore, you can make the
%       markers larger by using plot(..., 'rx', 'MarkerSize', 10);
data=load('ex1data1.txt');
X=data(:, 1);
y=data(:, 2);
plot(X,y,'rx','MarkerSize', 10);
xlabel=('population');
ylabel=('profit');




% ============================================================

end
