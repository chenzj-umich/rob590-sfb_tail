function [theta1, theta2] = spherical_link_eq(a, b)
c1 = pi/2 + a;
c2 = pi/2 - a;
gamma1 = acos((cos(pi/3) - cos(pi/3) .* cos(c1) )./ (sin(pi/3) .* sin(c1)));
gamma2 = acos((cos(pi/3) - cos(pi/3) .* cos(c2) )./ (sin(pi/3) .* sin(c2)));

theta1 = gamma1 + b;
theta2 = gamma2 + b;


end