
R version 4.5.1 (2025-06-13) -- "Great Square Root"
Copyright (C) 2025 The R Foundation for Statistical Computing
Platform: aarch64-apple-darwin20

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[R.app GUI 1.82 (8536) aarch64-apple-darwin20]

[Workspace restored from /Users/kajanthinivijayakumar/.RData]
[History restored from /Users/kajanthinivijayakumar/.Rapp.history]

> # Q1
> n <- 44; p <- 0.92
> dbinom(40, n, p)                    # ii
[1] 0.1979776
> pbinom(35, n, p)                    # iii
[1] 0.007252274
> 1 - pbinom(37, n, p)                # iv (P >= 38)
[1] 0.9412233
> sum(dbinom(40:42, n, p))            # v
[1] 0.6025556
> 
> # Q2
> lambda <- 5
> dpois(6, lambda)        # iii
[1] 0.1462228
> 1 - ppois(6, lambda)    # iv
[1] 0.2378165
> 
> # Exercise 1
> n <- 50; p <- 0.85
> 1 - pbinom(46, n, p)    # P(X >= 47)
[1] 0.04604658
> 
> # Exercise 2
> lambda <- 12
> dpois(15, lambda)
[1] 0.07239112
> 
> 