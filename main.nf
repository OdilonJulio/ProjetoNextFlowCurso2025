#!/usr/bin/env nextflow
nextflow.enable.dsl=2

// Definição OBRIGATÓRIA dos parâmetros antes do workflow
params.input_data = "${baseDir}/assets/single_cell_transcriptogram_R30.rds"
params.pca_components = 10

// Verificação explícita do arquivo de entrada
if(!file(params.input_data).exists()) {
    exit 1, "ERRO: Arquivo de entrada não encontrado em ${params.input_data}\n" +
             "Execute com: nextflow run main.nf --input_data <caminho_do_arquivo>"
}

// Importa módulos  
include { PCA_ANALYSIS } from './modules/pca_analysis'  
include { PLOT_PCS } from './modules/plot_pcs'  


workflow {
    // Canais explícitos
    transcript_ch = Channel.fromPath(params.input_data)
    components_ch = Channel.value(params.pca_components)
    
    // Execução dos processos
    PCA_ANALYSIS(transcript_ch)
    PLOT_PCS(PCA_ANALYSIS.out, components_ch)
}

log.info """
         ====================================
         Meu Primeiro Pipeline Nextflow com R
         ====================================
         """
