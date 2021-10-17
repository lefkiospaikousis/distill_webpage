

library(tidyverse)


# problem  wth this one. greek letter
temp <- read_csv("SampleData/TESTING (1).csv")

# this solves theproblem
read_delim("SampleData/TESTING (1).csv", delim= ",", locale = locale(encoding = 'windows-1253'))
# or encoding = "iso-8859-7" it works 



# other attempts (failed..xaxaxaxa)
Encoding(gr) <- "bytes"

enc2native(gr)

view(temp)

x <- "fa\xE7ile"
Encoding(x)
Encoding(x) <- "latin1"
x
xx <- iconv(x, "latin1", "UTF-8")
Encoding(c(x, xx))
c(x, xx)
Encoding(xx) <- "bytes"
xx # will be encoded in hex
cat("xx = ", xx, "\n", sep = "")

