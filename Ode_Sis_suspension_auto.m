x0 = [0; 0; 0; 0];


t_span = [0 10]; 


disp('simulamndo  para z1(t)...');
z1_func = @(t) 0.05 * sin(0.5 * pi * t);


[t1, x1] = ode45(@(t, x) sis_suspension_auto(t, x, z1_func), t_span, x0);


figure;
subplot(2, 1, 1);
plot(t1, x1(:, 1), 'b', 'LineWidth', 1.5);
hold on;
plot(t1, x1(:, 2), 'r', 'LineWidth', 1.5);
title('Respuesta para z1(t)')
grid on;




disp('Simulando para z2(t)...');
z2_func = @(t) 0.05 * sin(20 * pi * t);

[t2, x2] = ode45(@(t, x) sis_suspension_auto(t, x, z2_func), t_span, x0);



subplot(2, 1, 2);
plot(t2, x2(:, 1), 'b', 'LineWidth', 1.5);
hold on;
plot(t2, x2(:, 2), 'r', 'LineWidth', 1.5);
title('Respuesta para z2(t)')
grid on;






