%how to replace elements in top third, middle third, and bottom third of matix
function T = trio (n, m) 
T = randi (10, (3 * n) , m);
T (1:n,:) = 1;
T ((n+(1:n)),:) = 2;
T (n+(n+(1:n)):end,:) = 3;
end