##### my.pairs env
the.col.hist <- "cyan"


panel.hist <- function(x, col.hist=the.col.hist,
                       cex.cor=NULL,digits=NULL,col=NULL,pch=NULL,cex=NULL,...)
{
  dummy <- is.character(cex.cor) | is.numeric(digits) | is.character(cex) | is.character(pch) | is.character(col)
  usr <- par("usr"); on.exit(par(usr))
  par(usr = c(usr[1:2], 0, 1.5) )
  h <- hist(x, plot = FALSE)
  breaks <- h$breaks; nB <- length(breaks)
  y <- h$counts; y <- y/max(y)
  rect(breaks[-nB], 0, breaks[-1], y, col=col.hist, ...)
}

panel.cor <- function(x, y, digits=2, prefix="", cex.cor=NULL,
                      col.hist=NULL,
                      col=NULL,pch=NULL,cex=NULL,...)
{
  dummy <- is.character(col.hist) | is.character(cex) | is.character(pch) | is.character(col)
  usr <- par("usr"); on.exit(par(usr))
  par(usr = c(0, 1, 0, 1))
  r <- abs(cor(x, y, use="pairwise.complete.obs"))
  txt <- format(c(r, 0.123456789), digits=digits)[1]
  txt <- paste(prefix, txt, sep="")
  if (is.null(cex.cor)) cex.cor <- 0.8/strwidth(txt)
  #text(0.5, 0.5, txt, cex = cex.cor * r)
  text(0.5, 0.5, txt, cex = cex.cor)
}

my_pairs <- function( x, ... )
{
  pairs( x, ...,
         upper.panel=panel.smooth, lower.panel=panel.cor, diag.panel=panel.hist )
}
