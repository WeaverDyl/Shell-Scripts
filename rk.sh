function knit {
   Rscript -e "require(knitr); require(markdown); knit('$1.rmd', '$1.md'); markdownToHTML('$1.md', '$1.html', options=c('use_xhml'))"

   pandoc -s $1.html -o $1.pdf
   echo "Created $1.pdf..."
   
   echo "...Removing extra files..."
   rm $1.md
   rm $1.html
   echo "All done!"
}
