# ProjetoNextFlowCurso2025

# Meu Pipeline Nextflow

Este é um pipeline Nextflow para análise de dados de transcriptoma.


single_cell_transcriptome/  
├── main.nf                 # Fluxo principal  
├── nextflow.config         # Configurações  
├── modules/  
│   ├── pca_analysis.nf     # Processo 1: PCA  
│   └── reconstruct.nf      # Processo 2: Reconstrução  
└── assets/  
    └── single_cell_transcriptogram_R30.rds #Dataset
