function c = random_choice(Q,E)
    mat = find(Q~=E);
    epsilon = rand(1);
    if epsilon <0.1
        m = randperm(numel(mat));
        c = mat(m(1));
    else
       mm = find(Q==max(Q)) ;
       m = randperm(numel(mm));
       c = mm(m(1));
    end
end