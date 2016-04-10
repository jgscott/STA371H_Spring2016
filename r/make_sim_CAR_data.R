

grid_size = 50
n_cells = grid_size^2
psi = rep(-2, n_cells)
psi = matrix(psi, nrow= grid_size)
psi[6:15,6:15] = 1
psi[31:35,31:35] = 0
w_true = ilogit(psi)
w_true = as.numeric(w_true)

n = 25
y = rbinom(n_cells, n, w_true)

image(matrix(y, nrow=grid_size))

cat(y, file="test_dir/y.txt", sep="\n")
cat(rep(n, n_cells), file="test_dir/n.txt", sep="\n")

