$title Optimization of profits by the mine development (task 5)
$ontext
09.2014 Akhrameev Pavel
group 513 CMC MSU
Practicum
Task 5
Optimization of profits by the mine development

y = f0(u1,P,Q), y(0) = y_0,      0 <= u1 <= 1
P = u2, P(0) = P_0,              0 <= u2 <= 1
Q = u2+u3, Q(0) = Q_0,           0 <= u3 <= 1
J = int(-exp(-nu*t)*(-m*f0 - u2 - u3 - pp*P + s(t)*P*(2 - P/f0))) + g0 -> max
#warning: f0 from task id not my f0. My f0 is y!
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
pp /5/
nu /0.1/
nu_1 /0.05/
nu_2 /0.04/
c_1 /1/
c_2 /1/
gama_1 /0.8/
gama_2 /0.8/

variables
y(h)
P(h)
Q(h)
u(i,h)
f0(h)
J
equations
eq_y(h)
eq_P(h)
eq_Q(h)
eq_f0(h)
eq_J;

eq_f0(h).. f0(h) =e= u('1',h)*P(h) + (1-u('1',h))*Q(h);
* it is an equation for regular y. But I need to solve NLP task.

eq_y(h-1).. y(h) =e= y(h-1) +  f0(h-1);
eq_P(h-1).. P(h) =e= P(h-1) +  u('2',h-1);
eq_Q(h-1).. Q(h) =e= Q(h-1) + (u('2',h-1) + u('3',h-1));

*edges for this system
y.fx(h)$(ord(h)=1) = y_0;
P.fx(h)$(ord(h)=1) = P_0;
Q.fx(h)$(ord(h)=1) = Q_0;

* all u form 0 to 1
u.lo(i,h) = 0;
u.up(i,h) = 1;

eq_J..J =e= sum(h,-exp(-nu*(ord(h)-1))*(-m*f0(h)-u('2',h)-u('3',h)-
                 pp*P(h)+s(h)*P(h)*(2-P(h)/f0(h))));
* try without g0











