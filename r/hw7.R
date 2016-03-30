p = 0.52
delta = p - (1-p)

mux = function(x, c) (1 + delta*c)*x
varx = function(x, c) p*{(1-delta)*c*x}^2 + (1-p)*{(-1-delta)*c*x}^2
sdx = function(x, c) sqrt(varx(x,c))

w0 = 10000

c_grid = seq(0.005,0.5,by=0.005)
interest_grid = delta*c_grid
mu_grid = mux(w0, c_grid)
sig_grid = sdx(w0, c_grid)

plot(mu_grid, sig_grid/mu_grid)
plot(sig_grid)


sharpe_ratio = interest_grid/sig_grid

plot(c_grid, sharpe_ratio)