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
J = int(exp(-nu*t)*(-m*f0 - u2 - u3 - cp*P + s(t)*P*(2 - P/f0))) -> max
$offtext

sets
h /0 * 114/
* 114 - is number of values in csv-file
i /1 * 3/
* for indexing u1, u2, u3

parameter
s(h)
/
$ondelim
$include data_r-1.csv
$offdelim
/;


