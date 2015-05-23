% Try swap(tree(tree(leaf(1),  leaf(2)),  leaf(4)),T). 
% T  =  tree(leaf(4),  tree(leaf(2),  leaf(1))). 

swap(leaf(N), leaf(N)).
swap(tree(X, Y), tree(B, A)):-
	swap(X, A),
	swap(Y, B).