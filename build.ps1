Write-Host "EBook creation starts"

& "C:\Program Files\R\R-3.6.1\bin\rscript.exe" -e "install.packages('rmarkdown', dep=TRUE, repos='http://cran.case.edu/')"
& "C:\Program Files\R\R-3.6.1\bin\rscript.exe" -e "install.packages('reticulate', dep=TRUE, repos='http://cran.case.edu/')"

& "C:\Program Files\R\R-3.6.1\bin\rscript.exe" -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"

Write-Host "EBook created!"