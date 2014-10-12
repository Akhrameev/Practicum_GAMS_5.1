$title Optimization of profits by the mine development(task 5)
$ontext
09.2014 Akhrameev Pavel
group 513 CMC MSU
Practicum
Task 5
Optimization of profits by the mine development

y = f0(u1,P,Q), y(0) = y_0,      0 <= u1 <= 1
P = u2, P(0) = P_0,              0 <= u2 <= 1
Q = u2+u3, Q(0) = Q_0,           0 <= u3 <= 1
J = int(exp(-nu*t)*(-m*f0 - u2 - u3 - p*P + s(t)*P*(2 - P/f0))) + g0 -> max
$offtext

sets
h /0 * 114/
* 114 - is number of values in csv-file
i /1 * 3/
* for indexing u1, u2, u3

parameters
s(h)
/
$ondelim
$include data_r-1.csv
$offdelim
/

scalars
y_0 /0/
y_1 /200000000/
P_0 /20000000/
* P_0 >= 0; ok
Q_0 /60000000/
* Q_0 >= P_0; ok
m /1/
p /5/
nu /0.1/
nu_1 /0.05/
nu_2 /0.04/
c_1 /1/
c_2 /1/
gama_1 /0.8/
gama_2 /0.8/








