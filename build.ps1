Write-Host "EBook creation starts"

& "C:\Program Files\R\R-4.0.0\bin\rscript.exe" -e "install.packages('rmarkdown', repos='https://cran.case.edu/')"
& "C:\Program Files\R\R-4.0.0\bin\rscript.exe" -e "install.packages('bookdown', repos='https://cran.case.edu/')"
& "C:\Program Files\R\R-4.0.0\bin\rscript.exe" -e "install.packages('reticulate', repos='https://cran.case.edu/')"

& "C:\Program Files\R\R-4.0.0\bin\rscript.exe" -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"

#& git add docs\*
#& git commit -m "publish new book"
#& git push origin head:master

Write-Host "EBook created!"
