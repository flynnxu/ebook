Write-Host "EBook creation starts"

& "C:\Program Files\R\R-3.6.1\bin\rscript.exe" -e "install.packages('rmarkdown', repos='http://cran.case.edu/')"
& "C:\Program Files\R\R-3.6.1\bin\rscript.exe" -e "install.packages('bookdown', repos='http://cran.case.edu/')"
& "C:\Program Files\R\R-3.6.1\bin\rscript.exe" -e "install.packages('reticulate', repos='http://cran.case.edu/')"

& "C:\Program Files\R\R-3.6.1\bin\rscript.exe" -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"
& git add docs\*
& git commit -m "publish new book"
& git push origin head:master

Write-Host "EBook created!"