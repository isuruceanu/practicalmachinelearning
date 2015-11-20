
plm.training.url <- "https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv"
plm.testing.url <- "https://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv"

plm.training.csv <- "./data/plmtraining.csv"
plm.testing.csv <- "./data/plmtesting.csv"


pml_write_files = function(x){
    folder.create("./results/problem_id_1.txt")
    
    n = length(x)
    for(i in 1:n){
        filename = paste0("./results/problem_id_",i,".txt")
        write.table(x[i],file=filename,quote=FALSE,row.names=FALSE,col.names=FALSE)
    }
}

file.download <- function(fileurl, filename, overwrite=F) {
    #create folder if necesary
    folder.create(filename)
    if (!file.exists(filename) || overwrite)
        download.file(fileurl, destfile = filename, quiet=TRUE)
}



folder.create <- function(filePath) {
    folderPath <- dirname(filePath)
    
    if (folderPath != "." && !file.exists(folderPath))
        dir.create(folderPath, recursive = T)
}