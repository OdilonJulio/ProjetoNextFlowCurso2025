process PCA_ANALYSIS {
    label 'pca_process'

    input:
    path transcript_data

    output:
    path "pca_results.rds"

    script:
    """
    #!/usr/bin/env Rscript
    library(ggplot2)
    
    transcript <- readRDS("${transcript_data}")
    expr_matrix <- as.matrix(transcript[, -1])
    pca <- prcomp(t(expr_matrix), scale.=FALSE)
    saveRDS(pca, "pca_results.rds")
    """
}
