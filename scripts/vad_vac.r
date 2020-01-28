"============================================================================="
"==================================== VAD ===================================="
"============================================================================="
# A probabilidade de sucesso de uma VAD X é p=1/6: X∼Bin(n=1, p=1/6). Qual
# a probabilidade de X assumir (sucesso) os valores:
str(dbinom)

# Um
dbinom(x=1, size=1, prob=1/6)

# Dois
dbinom(x=1, size=1, prob=1/6)

# Três
dbinom(x=1, size=1, prob=1/6)

# Quatro
dbinom(x=1, size=1, prob=1/6)

# Cinco
dbinom(x=1, size=1, prob=1/6)

# Seis
dbinom(x=1, size=1, prob=1/6)

# Suponha que uma linha de produção a probabilidade de se obter uma peça
# defeituosa (sucesso) é p=1/10. Toma-se uma amostra de 10 peças, para inspeção:
# X~Bin(n=10, p=0.1). Qual a probabilidade de se obter:
str(dbinom)

# Uma peça defeituosa
dbinom(x=1, size=10, prob=.1)

# Nenhuma peça defeituosa
dbinom(x=0, size=10, prob=.1)

# Duas peças defeituosas
dbinom(x=2, size=10, prob=.1)

# Duas peças defeituosas para p=1/20
dbinom(x=2, size=10, prob=.05)

# No mínimmo duas peças defeituosas
sum <- 0.0
for (i in 0:10) {
    if (i >= 2) {
        sum <- sum + dbinom(x=i, size=10, prob=0.1)
    }
}

# No máximo duas peças defeituosas
sum <- 0.0
for (i in 0:10) {
    if (i <= 2) {
        sum <- sum + dbinom(x=i, size=10, prob=0.1)
    }
}


# Considere um processo que têm uma taxa de 1/5 defeitos por unidade:
# X~Poisson(λ=0.2). Qual a probabilidade de uma unidade qualquer apresentar:
str(dpois)

# Dois defeitos
dpois(x=2, lambda=.2)

# Um defeito
dpois(x=1, lambda=.2)

# Um defeito para λ=1/4
dpois(x=1, lambda=.25)

# Zero defeito
dpois(x=0, lambda=.2)

"============================================================================="
"==================================== VAC ===================================="
"============================================================================="
# Uma VAC segue a distribuição normal: X~N(µ=10, σ=2). Qual a probabilidade de
# X assumir valores:
str(dnorm)
str(qnorm)
str(integrate)

# Menor que 10
integrate(f=dnorm, lower=-Inf, upper=10, m=10, s=2)

# Entre 5 e 10
integrate(f=dnorm, lower=5, upper=10, m=10, s=2)

# Entre 12 e 15
integrate(f=dnorm, lower=12, upper=15, m=10, s=2)

# Maior que 11
integrate(f=dnorm, lower=11, upper=Inf, m=10, s=2)

# Qual o quantil que delimita 10% dos maiores valores?
qnorm(p=0.9, m=10, s=2)

# Qual o quantil que delimita 10% dos menores valores?
qnorm(p=0.1, m=10, s=1)


# Uma VAC X segue distribuição t: X~t(n=10). Qual a probabilidade de X assumir
# valores:
str(dt)
str(pt)
str(qt)
str(rt)

# Menor que 0
integrate(f=dt, lower=-Inf, upper=0, df=10)

# Entre -1 e 0
integrate(f=dt, lower=-1, upper=0, df=10)

# Entre 1 e 2
integrate(f=dt, lower=1, upper=2, df=10)

# Menor -2 e maior que 2
(integrate(f=dt, lower=-Inf, upper=-2, df=10)$value +
integrate(f=dt, lower=2, upper=Inf, df=10)$value)

# Qual o quantil que delimita 5% dos maiores valores?
qt(p=.95, df=10)

# Qual o quantil que delimita 5% dos menores valores?
qt(p=.05, df=10)


# Uma VAC X segue a distribuição X²: X~X²(n=10). Qual a probabilidade de X
# assumir valores:
str(dchisq)
str(qchisq)

# Menor que 5
integrate(f=dchisq, lower=-Inf, upper=5, df=10)

# Entre 10 e 20
integrate(f=dchisq, lower=10, upper=20, df=10)

# Entre 20 e 30
integrate(f=dchisq, lower=20, upper=30, df=10)

# Maior que 25
integrate(f=dchisq, lower=25, upper=Inf, df=10)

# Qual o quantil que delimita 5% dos maiores valores?
qchisq(p=.95, df=10)

# Qual o quantil que delimita 5% dos menores valores?
qchisq(p=.05, df=10)


# Uma VAC X segue distribuição F de Snedecor: X~F(n1=5, n2=12). Qual a
# probabilidade de X assumir valores:
str(df)
str(qf)

# Menor que 0.5
integrate(f=df, lower=-Inf, upper=5, df1=5, df2=12)

# Entre 0 e 3
integrate(f=df, lower=0, upper=3, df1=5, df2=12)

# Maior que 5
integrate(f=df, lower=5, upper=Inf, df1=5, df2=12)

# Qual o quantil que delimita 5% dos maiores valores?
qf(p=.95, df1=5, df2=12)

# Qual o quantil que delimita 5% dos menores valores?
qf(p=.05, df1=5, df2=12)