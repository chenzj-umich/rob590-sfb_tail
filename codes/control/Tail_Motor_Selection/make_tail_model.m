function model = make_tail_model(M, L)

model.NB = 2;
model.parent = [0, 1];
model.jtype = {'Rz', 'Ry'};

model.Xtree{1} = plux(eye(3), [0;0;0]);
model.Xtree{2} = plux(eye(3), [0;0;0]);

model.I{1} = zeros(6);
model.I{2} = mcI(M, [L, 0, 0], ones(3) * 2/5 * M * .1^2);
model.appearance.base = {'box', [[-.15, -.15, -.15]; [.15, .15, .15]]/4};
% model.appearance.body{1} = {'cyl', [[0, 0, 0]; [L, 0, 0]], .1/4};
model.appearance.body{2} = {'cyl', [[0, 0, 0]; [L, 0, 0]], .1/4};
end