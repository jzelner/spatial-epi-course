LECTURES, = glob_wildcards("lecture-{title}.Rmd")

rule all:
    input: expand("lecture-{title}.html", title=LECTURES)

rule htmllecture:
    input: 
        "{lecture}.Rmd"
    output:
        "{lecture}.html"
    script:
        "scripts/make_slides.R"


rule beamerlecture:
    input:  "{lecture}.Rmd"
    output: "{lecture}.pdf"
    script: "scripts/make_slides.R"
       