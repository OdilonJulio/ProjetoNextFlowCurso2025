# 📊 Análise PCA de Dados de Transcriptômica - Nextflow Pipeline

Pipeline simplificado para análise de Componentes Principais (PCA) de dados de transcriptômica, com geração automatizada de visualizações.

## ✅ Funcionalidades Implementadas
- **PCA Automatizado**: Cálculo eficiente de componentes principais
- **Visualização**: Gráfico de barras da variância explicada por PC
- **Reprodutibilidade**: Contêiner Docker com todas as dependências

## 🛠️ Tecnologias Utilizadas
- [Nextflow](https://www.nextflow.io/) (DSL2)
- [R](https://www.r-project.org/) (+ ggplot2)
- [Docker](https://www.docker.com/) (para ambiente reprodutível)

## ▶️ Execução Básica
```bash
nextflow run main.nf -profile docker \
  --input_data assets/dados_transcriptoma.rds \
  --pca_components 10

.
├── assets/           # Dados de entrada (formato .rds)
├── results/          # Saídas (PDF com gráficos + objetos R)
├── modules/
│   ├── pca_analysis.nf  # Cálculo da PCA
│   └── plot_pcs.nf      # Geração do gráfico
├── main.nf           # Fluxo principal
└── nextflow.config   # Configurações


