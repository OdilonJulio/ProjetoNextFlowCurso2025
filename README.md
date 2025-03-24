# ProjetoNextFlowCurso2025

# Meu Pipeline Nextflow

Este é um pipeline Nextflow para análise de dados de transcriptoma.


amostraUnicelular/
├── main.nf                      # Fluxo principal
├── nextflow.config              # Configurações
├── modules/
│   ├── 1_carregar_dados.nf      # Processo 1: Carregar dados
│   ├── 2_preprocessar.nf        # Processo 2: Pré-processamento
│   ├── 3_transcriptograma.nf    # Processo 3: Transcriptograma
│   └── 4_pca.nf                 # Processo 4: Análise PCA
├── assets/
│   ├── dados_entrada/           # Dados brutos
│   └── resultados/              # Resultados parciais
└── R/
    ├── funcoes_auxiliares.R     # Funções compartilhadas
    └── config.R                 # Parâmetros globais
