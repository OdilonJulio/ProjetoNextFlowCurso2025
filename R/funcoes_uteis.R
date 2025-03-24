# Funções que podem ser usadas em vários processos

normalizar_dados <- function(x) {
    (x - min(x)) / (max(x) - min(x))
}

calcular_stat <- function(x) {
    c(
        Media = mean(x),
        Mediana = median(x),
        SD = sd(x)
    )
}
