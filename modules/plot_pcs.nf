process PLOT_PCS {
    label 'plot_process'

    input:
    path pca_results
    val num_components

    output:
    path "pca_plot.pdf"

    script:
    """
    #!/usr/bin/env Rscript
    library(ggplot2)
    pca <- readRDS("${pca_results}")
    n_pcs <- min(${num_components}, ncol(pca\$x))
    df <- data.frame(
        PC = factor(paste0("PC", 1:n_pcs)),
        Variance = summary(pca)\$importance[2, 1:n_pcs] * 100
    )
    pdf("pca_plot.pdf", width=10)
    print(
        ggplot(df, aes(x=PC, y=Variance)) +
        geom_col(fill="#4682B4") +
        geom_text(aes(label=sprintf("%.1f%%", Variance)), vjust=-0.5) +
        labs(title="Variância Explicada pelas PCs") +
        theme_minimal()
    )
    dev.off()
    """
}
