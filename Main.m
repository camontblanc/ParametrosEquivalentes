%% (Din�mica de Sistemas Mec�nicos)
%   Departamento de Ingenier�a Mec�nica - Universidad de los Andes

% Representaci�n en variables de estado 
% Tomaremos como caso de estudio el ejemplo 5.4 del libro Mechanical
% Vibrations - Rao (5th ed)


close all; clear all; clc

t=[0 5];                    % Tiempo final e inicial de simulaci�n

% x1=th1, x2=dth1
% x3=th2, x4=dth2
x0=[0,.1,0,.5];               % Condiciones iniciales (una por cada variable de estado):
                            % en este caso, s�lo vamos a dar una velocidad
                            % inicial al primer grado de libertad

options = odeset('MaxStep',1e-3);
[t,x]=ode45('eqns',t,x0,options);               % Integraci�n num�rica (ode45) del sistema 

%% Realizamos las gr�ficas necesarias

% Es una buena oportunidad para revisar las condiciones iniciales

% Cada �ngulo en funci�n del tiempo
plot(t, rad2deg(x(:,1)), t, rad2deg(x(:,3)))
grid on
xlabel('Tiempo [s]')
ylabel('�ngulo [deg]')
legend('\theta_1','\theta_2')
grid on; grid minor;

% Cada velocidad angular en funci�n del tiempo
figure
plot(t, x(:,2), t, x(:,4))
grid on
xlabel('Tiempo [s]')
ylabel('Velocidad angular [rad/s]')
legend('\omega_1','\omega_2')
grid on; grid minor;