ggplot.ictest <- function (data, mapping=aes(), mapvar=NULL, which="all", ..., environment=parent.frame())
{
 x <- data
 which <- match.arg(which, c("all", "k"))
 if (which=="all") {S <- x$S} else {S <- x$S[ ,0:x$k, drop=FALSE]}
 
 if(!is.null(mapvar)){
   dummy <- data.frame(S, mapvar)
 }
 else{
   dummy <- data.frame(S)
 }
 original_columns <- colnames(S)
 ggpairs(dummy, mapping=mapping, columns = original_columns, ...)
}
