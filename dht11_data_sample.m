clc
clear all
close all

a(1)=4;
a(2)=48;
a(3)=22;
a(4)=22;
a(5)=22;
a(6)=35;
a(7)=21;
a(8)=35;
a(9)=22;
a(10)=22;
a(11)=22;
a(12)=22;
a(13)=22;
a(14)=21;
a(15)=22;
a(16)=22;
a(17)=22;
a(18)=22;
a(19)=22;
a(20)=22;
a(21)=21;
a(22)=35;
a(23)=35;
a(24)=22;
a(25)=35;
a(26)=22;
a(27)=22;
a(28)=22;
a(29)=22;
a(30)=22;
a(31)=22;
a(32)=35;
a(33)=22;
a(34)=36;
a(35)=22;
a(36)=22;
a(37)=35;
a(38)=35;
a(39)=21;
a(40)=21;
a(41)=35;
a(42)=35;
a(43)=0;
a(44)=0;
a(45)=0;
a(46)=0;
a(47)=0;
a(48)=0;
a(49)=0;
a(50)=0;
a(51)=0;
a(52)=0;
a(53)=0;
a(54)=0;
a(55)=0;
a(56)=0;
a(57)=0;
a(58)=0;
a(59)=0;
a(60)=0;
a(61)=0;
a(62)=0;
a(63)=0;
a(64)=0;



b(1)=4;
b(2)=48;
b(3)=22;
b(4)=21;
b(5)=21;
b(6)=35;
b(7)=22;
b(8)=35;
b(9)=22;
b(10)=22;
b(11)=22;
b(12)=22;
b(13)=22;
b(14)=22;
b(15)=22;
b(16)=22;
b(17)=22;
b(18)=22;
b(19)=22;
b(20)=22;
b(21)=22;
b(22)=35;
b(23)=35;
b(24)=22;
b(25)=34;
b(26)=22;
b(27)=22;
b(28)=22;
b(29)=22;
b(30)=22;
b(31)=22;
b(32)=35;
b(33)=22;
b(34)=35;
b(35)=22;
b(36)=22;
b(37)=34;
b(38)=35;
b(39)=22;
b(40)=22;
b(41)=35;
b(42)=35;
b(43)=0;
b(44)=0;
b(45)=0;
b(46)=0;
b(47)=0;
b(48)=0;
b(49)=0;
b(50)=0;
b(51)=0;
b(52)=0;
b(53)=0;
b(54)=0;
b(55)=0;
b(56)=0;
b(57)=0;
b(58)=0;
b(59)=0;
b(60)=0;
b(61)=0;
b(62)=0;
b(63)=0;
b(64)=0;



c(1)=4;
c(2)=48;
c(3)=22;
c(4)=22;
c(5)=21;
c(6)=35;
c(7)=22;
c(8)=35;
c(9)=22;
c(10)=22;
c(11)=22;
c(12)=22;
c(13)=22;
c(14)=22;
c(15)=22;
c(16)=22;
c(17)=22;
c(18)=22;
c(19)=22;
c(20)=22;
c(21)=22;
c(22)=35;
c(23)=35;
c(24)=22;
c(25)=35;
c(26)=22;
c(27)=22;
c(28)=22;
c(29)=22;
c(30)=22;
c(31)=22;
c(32)=35;
c(33)=22;
c(34)=22;
c(35)=22;
c(36)=22;
c(37)=35;
c(38)=34;
c(39)=22;
c(40)=22;
c(41)=35;
c(42)=22;
c(43)=0;
c(44)=0;
c(45)=0;
c(46)=0;
c(47)=0;
c(48)=0;
c(49)=0;
c(50)=0;
c(51)=0;
c(52)=0;
c(53)=0;
c(54)=0;
c(55)=0;
c(56)=0;
c(57)=0;
c(58)=0;
c(59)=0;
c(60)=0;
c(61)=0;
c(62)=0;
c(63)=0;
c(64)=0;



d(1)=4;
d(2)=48;
d(3)=22;
d(4)=21;
d(5)=21;
d(6)=35;
d(7)=22;
d(8)=35;
d(9)=22;
d(10)=22;
d(11)=22;
d(12)=22;
d(13)=22;
d(14)=22;
d(15)=22;
d(16)=22;
d(17)=22;
d(18)=22;
d(19)=22;
d(20)=22;
d(21)=22;
d(22)=35;
d(23)=35;
d(24)=22;
d(25)=35;
d(26)=22;
d(27)=22;
d(28)=22;
d(29)=22;
d(30)=22;
d(31)=22;
d(32)=34;
d(33)=22;
d(34)=22;
d(35)=22;
d(36)=22;
d(37)=35;
d(38)=35;
d(39)=22;
d(40)=22;
d(41)=35;
d(42)=22;
d(43)=0;
d(44)=0;
d(45)=0;
d(46)=0;
d(47)=0;
d(48)=0;
d(49)=0;
d(50)=0;
d(51)=0;
d(52)=0;
d(53)=0;
d(54)=0;
d(55)=0;
d(56)=0;
d(57)=0;
d(58)=0;
d(59)=0;
d(60)=0;
d(61)=0;
d(62)=0;
d(63)=0;
d(64)=0;



e(1)=4;
e(2)=48;
e(3)=22;
e(4)=22;
e(5)=21;
e(6)=35;
e(7)=22;
e(8)=22;
e(9)=35;
e(10)=35;
e(11)=22;
e(12)=22;
e(13)=22;
e(14)=22;
e(15)=22;
e(16)=22;
e(17)=22;
e(18)=23;
e(19)=22;
e(20)=22;
e(21)=22;
e(22)=35;
e(23)=35;
e(24)=22;
e(25)=34;
e(26)=22;
e(27)=22;
e(28)=22;
e(29)=22;
e(30)=22;
e(31)=22;
e(32)=35;
e(33)=22;
e(34)=35;
e(35)=22;
e(36)=22;
e(37)=35;
e(38)=35;
e(39)=22;
e(40)=22;
e(41)=35;
e(42)=22;
e(43)=0;
e(44)=0;
e(45)=0;
e(46)=0;
e(47)=0;
e(48)=0;
e(49)=0;
e(50)=0;
e(51)=0;
e(52)=0;
e(53)=0;
e(54)=0;
e(55)=0;
e(56)=0;
e(57)=0;
e(58)=0;
e(59)=0;
e(60)=0;
e(61)=0;
e(62)=0;
e(63)=0;
e(64)=0;



f(1)=4;
f(2)=48;
f(3)=22;
f(4)=21;
f(5)=21;
f(6)=35;
f(7)=22;
f(8)=22;
f(9)=35;
f(10)=35;
f(11)=22;
f(12)=22;
f(13)=22;
f(14)=22;
f(15)=22;
f(16)=22;
f(17)=22;
f(18)=22;
f(19)=22;
f(20)=22;
f(21)=22;
f(22)=35;
f(23)=35;
f(24)=22;
f(25)=35;
f(26)=22;
f(27)=22;
f(28)=22;
f(29)=22;
f(30)=22;
f(31)=22;
f(32)=34;
f(33)=22;
f(34)=35;
f(35)=22;
f(36)=22;
f(37)=35;
f(38)=35;
f(39)=22;
f(40)=22;
f(41)=35;
f(42)=22;
f(43)=0;
f(44)=0;
f(45)=0;
f(46)=0;
f(47)=0;
f(48)=0;
f(49)=0;
f(50)=0;
f(51)=0;
f(52)=0;
f(53)=0;
f(54)=0;
f(55)=0;
f(56)=0;
f(57)=0;
f(58)=0;
f(59)=0;
f(60)=0;
f(61)=0;
f(62)=0;
f(63)=0;
f(64)=0;



g(1)=4;
g(2)=48;
g(3)=22;
g(4)=21;
g(5)=21;
g(6)=35;
g(7)=22;
g(8)=22;
g(9)=35;
g(10)=36;
g(11)=22;
g(12)=22;
g(13)=22;
g(14)=22;
g(15)=22;
g(16)=22;
g(17)=22;
g(18)=23;
g(19)=22;
g(20)=22;
g(21)=22;
g(22)=35;
g(23)=35;
g(24)=21;
g(25)=35;
g(26)=22;
g(27)=22;
g(28)=22;
g(29)=22;
g(30)=22;
g(31)=21;
g(32)=35;
g(33)=22;
g(34)=35;
g(35)=22;
g(36)=21;
g(37)=35;
g(38)=35;
g(39)=22;
g(40)=22;
g(41)=35;
g(42)=22;
g(43)=0;
g(44)=0;
g(45)=0;
g(46)=0;
g(47)=0;
g(48)=0;
g(49)=0;
g(50)=0;
g(51)=0;
g(52)=0;
g(53)=0;
g(54)=0;
g(55)=0;
g(56)=0;
g(57)=0;
g(58)=0;
g(59)=0;
g(60)=0;
g(61)=0;
g(62)=0;
g(63)=0;
g(64)=0;



h(1)=4;
h(2)=48;
h(3)=22;
h(4)=22;
h(5)=21;
h(6)=35;
h(7)=22;
h(8)=22;
h(9)=35;
h(10)=35;
h(11)=22;
h(12)=22;
h(13)=22;
h(14)=22;
h(15)=22;
h(16)=22;
h(17)=22;
h(18)=22;
h(19)=22;
h(20)=22;
h(21)=22;
h(22)=35;
h(23)=35;
h(24)=22;
h(25)=35;
h(26)=22;
h(27)=22;
h(28)=22;
h(29)=22;
h(30)=22;
h(31)=22;
h(32)=35;
h(33)=22;
h(34)=35;
h(35)=22;
h(36)=22;
h(37)=35;
h(38)=35;
h(39)=22;
h(40)=22;
h(41)=35;
h(42)=22;
h(43)=0;
h(44)=0;
h(45)=0;
h(46)=0;
h(47)=0;
h(48)=0;
h(49)=0;
h(50)=0;
h(51)=0;
h(52)=0;
h(53)=0;
h(54)=0;
h(55)=0;
h(56)=0;
h(57)=0;
h(58)=0;
h(59)=0;
h(60)=0;
h(61)=0;
h(62)=0;
h(63)=0;
h(64)=0;



i(1)=4;
i(2)=48;
i(3)=22;
i(4)=22;
i(5)=22;
i(6)=35;
i(7)=22;
i(8)=22;
i(9)=35;
i(10)=35;
i(11)=21;
i(12)=22;
i(13)=22;
i(14)=22;
i(15)=22;
i(16)=22;
i(17)=22;
i(18)=22;
i(19)=22;
i(20)=22;
i(21)=22;
i(22)=35;
i(23)=35;
i(24)=22;
i(25)=34;
i(26)=22;
i(27)=22;
i(28)=22;
i(29)=22;
i(30)=22;
i(31)=22;
i(32)=35;
i(33)=22;
i(34)=35;
i(35)=22;
i(36)=22;
i(37)=35;
i(38)=35;
i(39)=22;
i(40)=22;
i(41)=35;
i(42)=22;
i(43)=0;
i(44)=0;
i(45)=0;
i(46)=0;
i(47)=0;
i(48)=0;
i(49)=0;
i(50)=0;
i(51)=0;
i(52)=0;
i(53)=0;
i(54)=0;
i(55)=0;
i(56)=0;
i(57)=0;
i(58)=0;
i(59)=0;
i(60)=0;
i(61)=0;
i(62)=0;
i(63)=0;
i(64)=0;



j(1)=4;
j(2)=48;
j(3)=22;
j(4)=22;
j(5)=21;
j(6)=35;
j(7)=22;
j(8)=22;
j(9)=35;
j(10)=35;
j(11)=22;
j(12)=22;
j(13)=22;
j(14)=22;
j(15)=22;
j(16)=22;
j(17)=22;
j(18)=23;
j(19)=22;
j(20)=22;
j(21)=22;
j(22)=35;
j(23)=35;
j(24)=22;
j(25)=35;
j(26)=22;
j(27)=22;
j(28)=22;
j(29)=22;
j(30)=22;
j(31)=21;
j(32)=35;
j(33)=22;
j(34)=35;
j(35)=22;
j(36)=22;
j(37)=35;
j(38)=35;
j(39)=22;
j(40)=22;
j(41)=35;
j(42)=22;
j(43)=0;
j(44)=0;
j(45)=0;
j(46)=0;
j(47)=0;
j(48)=0;
j(49)=0;
j(50)=0;
j(51)=0;
j(52)=0;
j(53)=0;
j(54)=0;
j(55)=0;
j(56)=0;
j(57)=0;
j(58)=0;
j(59)=0;
j(60)=0;
j(61)=0;
j(62)=0;
j(63)=0;
j(64)=0;



k(1)=4;
k(2)=48;
k(3)=22;
k(4)=21;
k(5)=21;
k(6)=35;
k(7)=22;
k(8)=22;
k(9)=35;
k(10)=36;
k(11)=22;
k(12)=22;
k(13)=22;
k(14)=22;
k(15)=22;
k(16)=22;
k(17)=22;
k(18)=23;
k(19)=22;
k(20)=22;
k(21)=22;
k(22)=35;
k(23)=35;
k(24)=22;
k(25)=35;
k(26)=22;
k(27)=22;
k(28)=22;
k(29)=22;
k(30)=22;
k(31)=21;
k(32)=35;
k(33)=22;
k(34)=35;
k(35)=22;
k(36)=22;
k(37)=34;
k(38)=35;
k(39)=22;
k(40)=22;
k(41)=35;
k(42)=22;
k(43)=0;
k(44)=0;
k(45)=0;
k(46)=0;
k(47)=0;
k(48)=0;
k(49)=0;
k(50)=0;
k(51)=0;
k(52)=0;
k(53)=0;
k(54)=0;
k(55)=0;
k(56)=0;
k(57)=0;
k(58)=0;
k(59)=0;
k(60)=0;
k(61)=0;
k(62)=0;
k(63)=0;
k(64)=0;



l(1)=4;
l(2)=48;
l(3)=22;
l(4)=22;
l(5)=21;
l(6)=35;
l(7)=22;
l(8)=22;
l(9)=35;
l(10)=35;
l(11)=22;
l(12)=22;
l(13)=22;
l(14)=22;
l(15)=22;
l(16)=22;
l(17)=22;
l(18)=22;
l(19)=22;
l(20)=22;
l(21)=22;
l(22)=35;
l(23)=35;
l(24)=22;
l(25)=35;
l(26)=22;
l(27)=22;
l(28)=22;
l(29)=22;
l(30)=22;
l(31)=22;
l(32)=35;
l(33)=22;
l(34)=35;
l(35)=22;
l(36)=22;
l(37)=35;
l(38)=35;
l(39)=22;
l(40)=22;
l(41)=35;
l(42)=22;
l(43)=0;
l(44)=0;
l(45)=0;
l(46)=0;
l(47)=0;
l(48)=0;
l(49)=0;
l(50)=0;
l(51)=0;
l(52)=0;
l(53)=0;
l(54)=0;
l(55)=0;
l(56)=0;
l(57)=0;
l(58)=0;
l(59)=0;
l(60)=0;
l(61)=0;
l(62)=0;
l(63)=0;
l(64)=0;



m(1)=4;
m(2)=48;
m(3)=22;
m(4)=22;
m(5)=22;
m(6)=34;
m(7)=22;
m(8)=22;
m(9)=35;
m(10)=35;
m(11)=21;
m(12)=22;
m(13)=22;
m(14)=22;
m(15)=22;
m(16)=22;
m(17)=22;
m(18)=22;
m(19)=21;
m(20)=22;
m(21)=22;
m(22)=35;
m(23)=35;
m(24)=22;
m(25)=35;
m(26)=22;
m(27)=22;
m(28)=22;
m(29)=22;
m(30)=22;
m(31)=22;
m(32)=35;
m(33)=21;
m(34)=35;
m(35)=22;
m(36)=22;
m(37)=35;
m(38)=35;
m(39)=21;
m(40)=22;
m(41)=35;
m(42)=22;
m(43)=0;
m(44)=0;
m(45)=0;
m(46)=0;
m(47)=0;
m(48)=0;
m(49)=0;
m(50)=0;
m(51)=0;
m(52)=0;
m(53)=0;
m(54)=0;
m(55)=0;
m(56)=0;
m(57)=0;
m(58)=0;
m(59)=0;
m(60)=0;
m(61)=0;
m(62)=0;
m(63)=0;
m(64)=0;



n(1)=4;
n(2)=48;
n(3)=22;
n(4)=21;
n(5)=22;
n(6)=35;
n(7)=22;
n(8)=22;
n(9)=35;
n(10)=36;
n(11)=22;
n(12)=22;
n(13)=22;
n(14)=22;
n(15)=22;
n(16)=22;
n(17)=22;
n(18)=23;
n(19)=22;
n(20)=22;
n(21)=22;
n(22)=35;
n(23)=35;
n(24)=22;
n(25)=34;
n(26)=22;
n(27)=22;
n(28)=22;
n(29)=22;
n(30)=22;
n(31)=22;
n(32)=34;
n(33)=22;
n(34)=35;
n(35)=22;
n(36)=22;
n(37)=35;
n(38)=35;
n(39)=22;
n(40)=22;
n(41)=35;
n(42)=22;
n(43)=0;
n(44)=0;
n(45)=0;
n(46)=0;
n(47)=0;
n(48)=0;
n(49)=0;
n(50)=0;
n(51)=0;
n(52)=0;
n(53)=0;
n(54)=0;
n(55)=0;
n(56)=0;
n(57)=0;
n(58)=0;
n(59)=0;
n(60)=0;
n(61)=0;
n(62)=0;
n(63)=0;
n(64)=0;



o(1)=4;
o(2)=48;
o(3)=22;
o(4)=22;
o(5)=22;
o(6)=35;
o(7)=22;
o(8)=22;
o(9)=35;
o(10)=35;
o(11)=21;
o(12)=22;
o(13)=22;
o(14)=22;
o(15)=22;
o(16)=22;
o(17)=22;
o(18)=22;
o(19)=21;
o(20)=22;
o(21)=22;
o(22)=35;
o(23)=35;
o(24)=22;
o(25)=35;
o(26)=22;
o(27)=22;
o(28)=22;
o(29)=22;
o(30)=22;
o(31)=22;
o(32)=35;
o(33)=21;
o(34)=35;
o(35)=22;
o(36)=22;
o(37)=35;
o(38)=35;
o(39)=22;
o(40)=22;
o(41)=35;
o(42)=22;
o(43)=0;
o(44)=0;
o(45)=0;
o(46)=0;
o(47)=0;
o(48)=0;
o(49)=0;
o(50)=0;
o(51)=0;
o(52)=0;
o(53)=0;
o(54)=0;
o(55)=0;
o(56)=0;
o(57)=0;
o(58)=0;
o(59)=0;
o(60)=0;
o(61)=0;
o(62)=0;
o(63)=0;
o(64)=0;



p(1)=4;
p(2)=48;
p(3)=22;
p(4)=22;
p(5)=22;
p(6)=34;
p(7)=22;
p(8)=22;
p(9)=35;
p(10)=35;
p(11)=21;
p(12)=21;
p(13)=22;
p(14)=22;
p(15)=22;
p(16)=22;
p(17)=22;
p(18)=22;
p(19)=21;
p(20)=22;
p(21)=22;
p(22)=35;
p(23)=35;
p(24)=22;
p(25)=35;
p(26)=22;
p(27)=22;
p(28)=22;
p(29)=22;
p(30)=22;
p(31)=22;
p(32)=35;
p(33)=21;
p(34)=35;
p(35)=22;
p(36)=22;
p(37)=35;
p(38)=35;
p(39)=22;
p(40)=22;
p(41)=35;
p(42)=22;
p(43)=0;
p(44)=0;
p(45)=0;
p(46)=0;
p(47)=0;
p(48)=0;
p(49)=0;
p(50)=0;
p(51)=0;
p(52)=0;
p(53)=0;
p(54)=0;
p(55)=0;
p(56)=0;
p(57)=0;
p(58)=0;
p(59)=0;
p(60)=0;
p(61)=0;
p(62)=0;
p(63)=0;
p(64)=0;



q(1)=4;
q(2)=48;
q(3)=21;
q(4)=21;
q(5)=22;
q(6)=35;
q(7)=22;
q(8)=22;
q(9)=35;
q(10)=36;
q(11)=22;
q(12)=22;
q(13)=22;
q(14)=22;
q(15)=22;
q(16)=22;
q(17)=22;
q(18)=22;
q(19)=22;
q(20)=22;
q(21)=22;
q(22)=35;
q(23)=35;
q(24)=21;
q(25)=35;
q(26)=22;
q(27)=22;
q(28)=22;
q(29)=22;
q(30)=21;
q(31)=21;
q(32)=35;
q(33)=22;
q(34)=35;
q(35)=22;
q(36)=21;
q(37)=35;
q(38)=35;
q(39)=22;
q(40)=22;
q(41)=35;
q(42)=22;
q(43)=0;
q(44)=0;
q(45)=0;
q(46)=0;
q(47)=0;
q(48)=0;
q(49)=0;
q(50)=0;
q(51)=0;
q(52)=0;
q(53)=0;
q(54)=0;
q(55)=0;
q(56)=0;
q(57)=0;
q(58)=0;
q(59)=0;
q(60)=0;
q(61)=0;
q(62)=0;
q(63)=0;
q(64)=0;



r(1)=4;
r(2)=48;
r(3)=22;
r(4)=22;
r(5)=21;
r(6)=35;
r(7)=22;
r(8)=22;
r(9)=35;
r(10)=35;
r(11)=22;
r(12)=22;
r(13)=22;
r(14)=22;
r(15)=22;
r(16)=22;
r(17)=22;
r(18)=22;
r(19)=22;
r(20)=22;
r(21)=22;
r(22)=35;
r(23)=35;
r(24)=22;
r(25)=35;
r(26)=22;
r(27)=22;
r(28)=22;
r(29)=22;
r(30)=22;
r(31)=22;
r(32)=35;
r(33)=21;
r(34)=35;
r(35)=22;
r(36)=22;
r(37)=35;
r(38)=34;
r(39)=22;
r(40)=22;
r(41)=35;
r(42)=22;
r(43)=0;
r(44)=0;
r(45)=0;
r(46)=0;
r(47)=0;
r(48)=0;
r(49)=0;
r(50)=0;
r(51)=0;
r(52)=0;
r(53)=0;
r(54)=0;
r(55)=0;
r(56)=0;
r(57)=0;
r(58)=0;
r(59)=0;
r(60)=0;
r(61)=0;
r(62)=0;
r(63)=0;
r(64)=0;



s(1)=4;
s(2)=48;
s(3)=22;
s(4)=22;
s(5)=21;
s(6)=35;
s(7)=22;
s(8)=22;
s(9)=35;
s(10)=35;
s(11)=22;
s(12)=22;
s(13)=22;
s(14)=22;
s(15)=22;
s(16)=22;
s(17)=22;
s(18)=22;
s(19)=22;
s(20)=22;
s(21)=22;
s(22)=35;
s(23)=35;
s(24)=22;
s(25)=35;
s(26)=22;
s(27)=22;
s(28)=22;
s(29)=22;
s(30)=22;
s(31)=22;
s(32)=35;
s(33)=21;
s(34)=35;
s(35)=22;
s(36)=22;
s(37)=35;
s(38)=34;
s(39)=22;
s(40)=22;
s(41)=35;
s(42)=22;
s(43)=0;
s(44)=0;
s(45)=0;
s(46)=0;
s(47)=0;
s(48)=0;
s(49)=0;
s(50)=0;
s(51)=0;
s(52)=0;
s(53)=0;
s(54)=0;
s(55)=0;
s(56)=0;
s(57)=0;
s(58)=0;
s(59)=0;
s(60)=0;
s(61)=0;
s(62)=0;
s(63)=0;
s(64)=0;



t(1)=4;
t(2)=48;
t(3)=22;
t(4)=22;
t(5)=21;
t(6)=35;
t(7)=22;
t(8)=22;
t(9)=35;
t(10)=35;
t(11)=22;
t(12)=22;
t(13)=22;
t(14)=22;
t(15)=22;
t(16)=22;
t(17)=22;
t(18)=22;
t(19)=22;
t(20)=22;
t(21)=22;
t(22)=35;
t(23)=35;
t(24)=22;
t(25)=34;
t(26)=22;
t(27)=22;
t(28)=22;
t(29)=22;
t(30)=22;
t(31)=22;
t(32)=35;
t(33)=35;
t(34)=22;
t(35)=22;
t(36)=22;
t(37)=34;
t(38)=35;
t(39)=22;
t(40)=22;
t(41)=35;
t(42)=35;
t(43)=0;
t(44)=0;
t(45)=0;
t(46)=0;
t(47)=0;
t(48)=0;
t(49)=0;
t(50)=0;
t(51)=0;
t(52)=0;
t(53)=0;
t(54)=0;
t(55)=0;
t(56)=0;
t(57)=0;
t(58)=0;
t(59)=0;
t(60)=0;
t(61)=0;
t(62)=0;
t(63)=0;
t(64)=0;



u(1)=4;
u(2)=48;
u(3)=22;
u(4)=22;
u(5)=21;
u(6)=35;
u(7)=22;
u(8)=22;
u(9)=35;
u(10)=36;
u(11)=22;
u(12)=22;
u(13)=22;
u(14)=22;
u(15)=22;
u(16)=22;
u(17)=22;
u(18)=23;
u(19)=22;
u(20)=22;
u(21)=22;
u(22)=35;
u(23)=35;
u(24)=22;
u(25)=35;
u(26)=22;
u(27)=22;
u(28)=22;
u(29)=22;
u(30)=22;
u(31)=21;
u(32)=35;
u(33)=35;
u(34)=22;
u(35)=22;
u(36)=22;
u(37)=35;
u(38)=35;
u(39)=22;
u(40)=22;
u(41)=35;
u(42)=35;
u(43)=0;
u(44)=0;
u(45)=0;
u(46)=0;
u(47)=0;
u(48)=0;
u(49)=0;
u(50)=0;
u(51)=0;
u(52)=0;
u(53)=0;
u(54)=0;
u(55)=0;
u(56)=0;
u(57)=0;
u(58)=0;
u(59)=0;
u(60)=0;
u(61)=0;
u(62)=0;
u(63)=0;
u(64)=0;



v(1)=4;
v(2)=48;
v(3)=22;
v(4)=21;
v(5)=21;
v(6)=35;
v(7)=22;
v(8)=22;
v(9)=35;
v(10)=35;
v(11)=22;
v(12)=22;
v(13)=22;
v(14)=22;
v(15)=22;
v(16)=22;
v(17)=22;
v(18)=23;
v(19)=22;
v(20)=22;
v(21)=22;
v(22)=35;
v(23)=35;
v(24)=22;
v(25)=34;
v(26)=22;
v(27)=22;
v(28)=22;
v(29)=22;
v(30)=22;
v(31)=22;
v(32)=34;
v(33)=35;
v(34)=22;
v(35)=22;
v(36)=22;
v(37)=35;
v(38)=35;
v(39)=22;
v(40)=22;
v(41)=35;
v(42)=35;
v(43)=0;
v(44)=0;
v(45)=0;
v(46)=0;
v(47)=0;
v(48)=0;
v(49)=0;
v(50)=0;
v(51)=0;
v(52)=0;
v(53)=0;
v(54)=0;
v(55)=0;
v(56)=0;
v(57)=0;
v(58)=0;
v(59)=0;
v(60)=0;
v(61)=0;
v(62)=0;
v(63)=0;
v(64)=0;



w(1)=4;
w(2)=48;
w(3)=22;
w(4)=22;
w(5)=22;
w(6)=34;
w(7)=22;
w(8)=22;
w(9)=35;
w(10)=35;
w(11)=21;
w(12)=22;
w(13)=22;
w(14)=22;
w(15)=22;
w(16)=22;
w(17)=22;
w(18)=22;
w(19)=21;
w(20)=22;
w(21)=22;
w(22)=35;
w(23)=35;
w(24)=22;
w(25)=35;
w(26)=22;
w(27)=22;
w(28)=22;
w(29)=22;
w(30)=22;
w(31)=22;
w(32)=35;
w(33)=35;
w(34)=22;
w(35)=22;
w(36)=22;
w(37)=35;
w(38)=34;
w(39)=22;
w(40)=22;
w(41)=35;
w(42)=35;
w(43)=0;
w(44)=0;
w(45)=0;
w(46)=0;
w(47)=0;
w(48)=0;
w(49)=0;
w(50)=0;
w(51)=0;
w(52)=0;
w(53)=0;
w(54)=0;
w(55)=0;
w(56)=0;
w(57)=0;
w(58)=0;
w(59)=0;
w(60)=0;
w(61)=0;
w(62)=0;
w(63)=0;
w(64)=0;



x(1)=4;
x(2)=48;
x(3)=22;
x(4)=22;
x(5)=21;
x(6)=35;
x(7)=22;
x(8)=22;
x(9)=35;
x(10)=35;
x(11)=22;
x(12)=22;
x(13)=22;
x(14)=22;
x(15)=22;
x(16)=22;
x(17)=22;
x(18)=22;
x(19)=22;
x(20)=22;
x(21)=22;
x(22)=35;
x(23)=35;
x(24)=22;
x(25)=35;
x(26)=22;
x(27)=22;
x(28)=22;
x(29)=22;
x(30)=22;
x(31)=22;
x(32)=35;
x(33)=35;
x(34)=22;
x(35)=22;
x(36)=22;
x(37)=34;
x(38)=35;
x(39)=22;
x(40)=22;
x(41)=35;
x(42)=35;
x(43)=0;
x(44)=0;
x(45)=0;
x(46)=0;
x(47)=0;
x(48)=0;
x(49)=0;
x(50)=0;
x(51)=0;
x(52)=0;
x(53)=0;
x(54)=0;
x(55)=0;
x(56)=0;
x(57)=0;
x(58)=0;
x(59)=0;
x(60)=0;
x(61)=0;
x(62)=0;
x(63)=0;
x(64)=0;