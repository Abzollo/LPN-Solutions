prop  -->  simple_prop.
prop  --> simple_prop,sym,prop.

simple_prop  -->  not,start,prop,end.
simple_prop  -->  p.
simple_prop  -->  q.
simple_prop  -->  r.

p  -->  [p]. 
q  -->  [q].
r  -->  [r].

not -->  [not].
start  -->  ['('].
end  -->  [')'].

sym  -->  [and].
sym  -->  [or].
sym  -->  [implies].