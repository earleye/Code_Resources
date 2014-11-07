###This code takes a data frame, and returns the results as a table in a word document

#R package: ReporteRs (http://davidgohel.github.io/ReporteRs/index.html)

library( ReporteRs )  

# Creation of doc, a docx object
doc = docx( )

# add into doc first 10 lines of iris
doc = addFlexTable( doc, FlexTable(iris[1:10,] ) )

doc = addPageBreak( doc )

# add text with stylename "Normal" into doc 
doc = addParagraph( doc, value = "Hello World!", stylename = "Normal" )

# add a plot into doc 
doc = addPlot( doc, function() barplot( 1:8, col = 1:8 ) )

# write the doc 
writeDoc( doc, file = "examples/word_simple_example.docx")

#############################################################

#This is an example that I was able to execute successfully
doc <- docx( )
doc <- addFlexTable( doc, FlexTable(top_dx_all)) #insert name of DF after 'FlexTable( )'
writeDoc( doc, file="Top 50 diagnoses among OME encounters.docx")
