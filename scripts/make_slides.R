rmarkdown::render(snakemake@input[[1]],
    output_file = snakemake@output[[1]],
    output_format = "xaringan::moon_reader"
)