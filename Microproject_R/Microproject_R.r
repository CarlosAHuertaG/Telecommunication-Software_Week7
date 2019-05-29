---
title: "R Notebook"
output: html_notebook
---

This is an [R Markdown](http://rmarkdown.rstudio.com) Notebook. When you execute code within the notebook, the results appear beneath the code. 

Try executing this chunk by clicking the *Run* button within the chunk or by placing your cursor inside it and pressing *Ctrl+Shift+Enter*. 

```{r}
library(expm)
Q <- matrix(c(-3,3,5,-5),nrow=2,ncol=2,byrow=TRUE)
index <- c(1)
ROW1_1 <-  matrix(c(0:100),nrow=1,ncol=101,byrow=TRUE)
ROW1_2 <-  matrix(c(0:100),nrow=1,ncol=101,byrow=TRUE)
ROW2_1 <-  matrix(c(0:100),nrow=1,ncol=101,byrow=TRUE)
ROW2_2 <-  matrix(c(0:100),nrow=1,ncol=101,byrow=TRUE)
for (t in seq(0,10,by=0.1))
{
    P = expm(Q*t);
    ROW1_1[index] = P[c(1),c(1)];
    ROW1_2[index] = P[c(1),c(2)];
    ROW2_1[index] = P[c(2),c(1)];
    ROW2_2[index] = P[c(2),c(2)];
    index = index +1;
}
t <- seq(0,10,by=0.1)
plot(t,ROW1_1,type="l",xlim=c(0.0,10),ylim=c(0.0,1),col="blue")
par(new=T)
plot(t,ROW1_2,type="l",xlim=c(0.0,10),ylim=c(0.0,1),col="blue")
par(new=T)
plot(t,ROW2_1,type="l",xlim=c(0.0,10),ylim=c(0.0,1),col="red")
par(new=T)
plot(t,ROW2_2,type="l",xlim=c(0.0,10),ylim=c(0.0,1),col="red")
par(new=F)
```

Add a new chunk by clicking the *Insert Chunk* button on the toolbar or by pressing *Ctrl+Alt+I*.

When you save the notebook, an HTML file containing the code and output will be saved alongside it (click the *Preview* button or press *Ctrl+Shift+K* to preview the HTML file).

The preview shows you a rendered HTML copy of the contents of the editor. Consequently, unlike *Knit*, *Preview* does not run any R code chunks. Instead, the output of the chunk when it was last run in the editor is displayed.
