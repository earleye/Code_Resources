-###This code takes a data frame, and returns the results as a table in a word document

doc <- docx( )
doc <- addFlexTable( doc, FlexTable(top_dx_all)) #insert name of DF after 'FlexTable( )'
writeDoc( doc, file="Top 50 diagnoses among OME encounters.docx")