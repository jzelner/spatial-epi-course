LECTURES, = glob_wildcards("lecture-{title}.Rmd")

rule all:
    input: expand("lecture-{title}.html", title=LECTURES)

rule lecture:
    input: 
        "{lecture}.Rmd"
    output:
        "{lecture}.html"
    script:
        "scripts/make_slides.R"

