%write a function called tri_area returns the area of a triangle with base b and height h
function area= tri_area(b,h)
  TA = @(b,h) (0.5)*(b)*(h);
  area = TA(b,h);
end 