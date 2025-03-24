# Extrai a primeira célula de cada amostra
library(Seurat)

paths <- c("assets/raw_data/notreated_batch1/outs/filtered_feature_bc_matrix") # Apenas 1 amostra para teste

# Carrega e filtra para 1 célula
data <- Read10X(paths[1])[, 1, drop=FALSE]  # <-- MAGIC HERE! Apenas 1ª célula
seurat <- CreateSeuratObject(counts = data)

# Salva mini-dataset
saveRDS(seurat, "assets/single_cell/seurat_1cell.rds")
