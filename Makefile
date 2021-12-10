.PHONY:clean

clean: 
	rm -f figures/*
	rm -f derived_data/*

project.pdf:\
 project.rmd\
 derived_data/loans_tidied.csv\
 figures/missmap.png\
 figures/f1.png\
 figures/f2.png\
 figures/f3.png\
 figures/f4.png\
 figures/boxplot.png\
 figures/pca.png
	R -e "rmarkdown::render(\"project.rmd\")"

derived_data/loans_tidied.csv:\
 loans_full_schema.csv\
 tidy_data.R
	mkdir -p derived_data
	Rscript tidy_data.R

figures/missmap.png:\
 derived_data/loans_tidied.csv\
 create_missmap.R
	mkdir -p figures
	Rscript create_missmap.R

figures/f1.png figures/f2.png figures/f3.png figures/f4.png:\
 derived_data/loans_tidied.csv\
 generate_figures.R
	mkdir -p figures
	Rscript generate_figures.R

figures/boxplot.png:\
 derived_data/loans_tidied.csv\
 boxplot.R
	mkdir -p figures
	Rscript boxplot.R

figures/pca.png:\
 derived_data/loans_tidied.csv\
 pca.R
	mkdir -p figures
	Rscript pca.R



