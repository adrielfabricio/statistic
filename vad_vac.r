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
dbinom(x=1, size=10, prob=0.1)

# Nenhuma peça defeituosa
dbinom(x=0, size=10, prob=0.1)

# Duas peças defeituosas
dbinom(x=2, size=10, prob=0.1)

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
dpois(x=2, lambda=0.2)

# Um defeito
dpois(x=1, lambda=0.2)

# Zero defeito
dpois(x=0, lambda=0.2)

"============================================================================="
"==================================== VAC ===================================="
"============================================================================="