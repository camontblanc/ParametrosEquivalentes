function xdot=eqns(t,x)

% Supongamos los siguientes valores para los parámetros del modelo.
kt = 5; Jo = 10;

% Escribimos aquí la representación en espacio de estados.
xdot=zeros(4,1);
xdot(1) = x(2);
xdot(2) = kt/Jo*x(3) - 2*kt/Jo*x(1);
xdot(3) = x(4);
xdot(4) = kt/(2*Jo)*x(1) - kt/(2*Jo)*x(3);