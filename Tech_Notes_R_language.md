Skip to content <#start-of-content>
<https://github.com/>
Sign up </join> Sign in
</login?return_to=%2Fstartupjing%2FTech_Notes%2Fblob%2Fmaster%2FR%2FR_language.md>

This repository

  * Explore </explore>
  * Features </features>
  * Enterprise <https://enterprise.github.com/>
  * Blog </blog>

  * Watch </login?return_to=%2Fstartupjing%2FTech_Notes> 21
    </startupjing/Tech_Notes/watchers>
  * Star </login?return_to=%2Fstartupjing%2FTech_Notes> 59
    </startupjing/Tech_Notes/stargazers>
  * Fork </login?return_to=%2Fstartupjing%2FTech_Notes> 232
    </startupjing/Tech_Notes/network>


  startupjing </startupjing>/*Tech_Notes </startupjing/Tech_Notes>*

  * Code </startupjing/Tech_Notes>
  * Issues </startupjing/Tech_Notes/issues>
  * Pull requests </startupjing/Tech_Notes/pulls>

  * Pulse </startupjing/Tech_Notes/pulse>
  * Graphs </startupjing/Tech_Notes/graphs>


      HTTPS clone URL


      Subversion checkout URL

You can clone with HTTPS <#> or Subversion <#>.
<https://help.github.com/articles/which-remote-url-should-i-use>

Clone in Desktop <https://mac.github.com> Download ZIP
</startupjing/Tech_Notes/archive/master.zip>
Permalink
</startupjing/Tech_Notes/blob/e70d80c83cde42fbd4056980ed485aa25f81da8f/R/R_language.md>

/branch:/ master
Switch branches/tags

  * Branches <#>
  * Tags <#>

master </startupjing/Tech_Notes/blob/master/R/R_language.md>
Nothing to show
Nothing to show
</startupjing/Tech_Notes/find/master>
Tech_Notes </startupjing/Tech_Notes>/R
</startupjing/Tech_Notes/tree/master/R>/*R_language.md*
Mihir Shete smihir </smihir> 9 days ago
R: fix anchor names
</startupjing/Tech_Notes/commit/14b2d3fd7f8ebf6e5d4968291f3ed8ee6b6281c4>

*4* contributors <#blob_contributors_box>

Jing Lu
</startupjing/Tech_Notes/commits/master/R/R_language.md?author=startupjing>
Mihir Shete
</startupjing/Tech_Notes/commits/master/R/R_language.md?author=smihir>
Hörmetjan Yiltiz
</startupjing/Tech_Notes/commits/master/R/R_language.md?author=hyiltiz>
chris-malvern
</startupjing/Tech_Notes/commits/master/R/R_language.md?author=chris-malvern>



    Users who have contributed to this file

  * Jing Lu startupjing </startupjing>
  * Mihir Shete smihir </smihir>
  * Hörmetjan Yiltiz hyiltiz </hyiltiz>
  * chris-malvern chris-malvern </chris-malvern>

Raw </startupjing/Tech_Notes/raw/master/R/R_language.md> Blame
</startupjing/Tech_Notes/blame/master/R/R_language.md> History
</startupjing/Tech_Notes/commits/master/R/R_language.md>
<https://mac.github.com>
546 lines (465 sloc) 15.938 kb


  <#coding-in-r>Coding in R

Contents:

  * Data Types <#Data-Types>
  * Reading Data <#Reading-Data>
  * Sequence and Numbers <#Sequence-and-Numbers>
  * Subsetting <#Subsetting>
  * Control Structure <#Control-Structure>
  * Function <#Function>
  * Data and Time <#Date-and-Time>
  * Loop Functions <#Loop-Function>
  * str Function <#str-Function>
  * Simulation <#Simulation>
  * Workspace <#Workspace>


    <#data-types>Data Types


      <#r-objects-and-attributes>R Objects and Attributes

  * Atomic classes of objects
      o character
      o numeric
      o integer
      o complex
      o logical
  * Most Basic Objects
      o vector: only contain objects of the same class
      o list: contain objects of different classes
  * Numbers
      o usually treated as double precision real numbers
      o specify *L* suffix to get integer (i.e.|1L| gives integer 1)
      o special number: Inf, NaN
  * Attributes
      o examples: names, dimnames, dimensions, class, length,
        user-defined metadata
      o accesss using |attributes()| function


      <#vectors>Vectors

  * creating vectors
      o use |c()| function: |x<-c(1,2,3)|
      o use |vector()| function: |x<-vector("numeric",length=10)|
      o unique elements: |unique(c(1,2,2,3,4))|
  * mixing objects
      o coercion such that each element is of the same class;
        nonsensical coercion results in NA
      o explicit coercion: |as.numeric(x)|, |as.logical(x)|, or
        |as.character(x)|
  * character vector
      o join vectors: |paste(my_char,collapse=" ")|
      o join words: |paste(w1,w2,sep=" ")|
      o join multiple vectors: |paste(1:3,c("a","b","c"),sep="")| ### Lists
  * creating lists
      o use |list()| function: |x<-list(1,"a",TRUE,1+4i)|


      <#matrices>Matrices

  * creating matrix
      o initialize: |m<-matrix(nrow=2,ncol=3)|
      o construct column-wise: |m<-matrix(1:6, nrow=2, ncol=3)|
      o create from vector by adding dimension: |m<-1:10| and
        |dim(m)<-c(2,5)|
  * attributes
      o |attributes(m)|
      o |dim(m)|
  * binding vectors
      o column-binding: |cbind(x,y)|
      o row-binding: |rbind(x,y)|


      <#factors>Factors

  * creating factors
      o default level: |x<-factor(c("yes","no","yes"))|
      o change order of level: |x<-factor(c("yes","no","yes"),
        levels=c("yes","no"))|
  * display
      o |table(x)|
  * unclass
      o |unclass(x)|


      <#missing-values>Missing Values

  * properties
      o NA values have a class(i.e. integer NA, character NA, etc)
      o NaN value is also NA but the converse is not true
  * testing
      o test NA: |is.na()|
      o test NaN: |is.nan()|
      o number of NA: |sum(is.na(data))|


      <#data-frames>Data Frames

  * creating data frames
      o |read.table(file.txt)| or |read.csv(file.csv)|
      o |x<-data.frame(foo=1:4,bar=c(T,T,F,F))|
  * attributes
      o |nrow(x)| and |ncol(x)|
      o column names: |colnames(my_frame)|, |colnames<-c(col1,col2)|
  * read partial data
      o head: |head(data,row)|
      o tail: |tail(data,row)|


      <#names>Names

  * names for vectors
      o |x<-1:3| and |names(x)<-c("foo","bar","norf")|
      o |names(x)|
  * names for lists
      o |x<-list(a=1, b=2, c=3)|
  * names for matrices
      o |m<-matrix(1:4, nrow=2, ncol=2)| and
        |dimnames<-list(c("r1","r2"), c("c1","c2"))|


    <#reading-data>Reading Data


      <#reading-tabular-data>Reading Tabular Data

  * reading data
      o tabular data: |read.table|, |read.csv|
      o reading lines: |readLines|
      o reading in R code files: |source|, |dget|
      o reading in saved workspace: |load|
  * writing data
      o |write.table|
      o |writeLines|
      o |dump|
      o |dput|
      o |save|
  * reading files with |read.table|
      o file or connection: |file|
      o if file has a header line: |header|
      o how column separated: |sep|
      o class of each column: |colClasses|
      o number of rows: |nrows|
      o comment character: |comment.char|
      o number of lines to skip: |skip|
      o if character will be coded as factors: |stringsAsFactors|


      <#reading-large-table>Reading Large Table

  * use |colClasses| argument
      o read some lines: |initial<-read.table("file.txt", nrows=100)|
      o find class: |classes<-sapply(initial,class)|
      o set colClasses value: |tabAll<-read.table("file.txt",
        colClasses=classes)|
  * data size
      o |object.size(data)|
  * set nrows
      o use Unix tool |wc| to count number of lines in the file
  * compute memory requirement
  * set |comment.char=""| if no commented lines


      <#textual-data-formats>Textual Data Formats

  * dput and dget R objects
      o |y <- data.frame(a=1,b="a")| and |dput(y, file="y.R")|
      o |new.y <- dget("y.R")| and |new.y|
  * dump R objects
      o |x <- "foo"| and |y<-data.frame(a=1, b="a")|
      o |dump(c("x","y"), file="data.R")|
      o |rm(x,y)| and |source("data.R")|


      <#connections>Connections

  * connection interfaces
      o file: |file|
      o compressed file with gzip: |gzfile|
      o compressed file with bzip2: |bzfile|
      o webpage: |url|
  * file connections
      o check attributes: |str(file)|
      o same as |data <- read.csv("foo.txt")|:
        |con<-file("foo.txt","r")|, |data<-read.csv(con)|, and |close(con)|
  * read lines
      o make connections: |con <- gzfile("words.gz")| or
        |con<-url("http://www.jhsph.edu","r")|
      o reading lines: |x <- readLines(con, 10)|


    <#sequence-and-numbers>Sequence and Numbers


      <#sequence>sequence

  * operator |:|
      o |from:to|
  * function |seq()|
      o |seq(from,to,by=0.1)|
      o |seq(from,to,length=10)|
      o |1:length(miser)| is same as |seq(along.with=myseq)| or
        |seq_along(myseq)|


      <#replicate>replicate

  * function |rep()|
      o |rep(c(1,2),times=40)|
      o |rep(c(1,2),each=10)|


    <#subsetting>Subsetting


      <#operators>Operators

  * |[| returns an object of the same class; can select multiple objects
  * |[[| extracts elements of a list or a data frame; returns a single
    element
  * |$| extracts elements of a list or data frame by names


      <#vectors-1>Vectors

  * basic
      o |x[from:to]|
  * logical statement
      o |x[condition1 & condition2]|
      o get indices: |which(x>10)|
      o boolean result: |any(x>0)|, |all(x>0)|
  * random indexing
      o |x[c(idx1,idx2)]|
      o except some indices: |x[c(-idx1,-idx2)]| or |x[-c(idx1,idx2)]|
  * names
      o |names(vect)|
      o assign names: |names(vet)<-c("name1","name2")|
  * check identical
      o |identical(vect1,vect2)|


      <#lists>Lists

  * Basic
      o |x <- list(foo=1:4, bar=0.6)|
      o |x[1]|, |x[[1]]|, |x$bar|, |x[["bar"]]|, |x["bar"]|
  * Select multiples objects
      o |x <- list(foo=1:4, bar=0.6, baz="hello")|
      o |x[c(1,3)]|
  * Using computed indices with |[[|
      o |x <- list(foo=1:4, bar=0.6, baz="hello")|
      o |name <- "foo"| and |x[[name]]|
      o need |x$foo| not |x$name|
  * |[[| can take an integer sequence
      o |x <- list(a=list(10,12,14), b=c(3.14, 2.8))|
      o |x[[c(1,3)]]| same as |x[[1]][[3]]| gives 14


      <#matrix>Matrix

  * Use (i,j) type indices
      o |x <- matrix(1:6, 2, 3)|
      o element at (i,j): |x[2, 1]|
      o row or column: |x[1, ]| or |x[, 2]|
  * Return elements as matrix
      o |x[1, 2, drop=FALSE]|
      o |x[1, , drop=FALSE]|


      <#partial-matching>Partial Matching

  * Use |[[| or |$|
      o |x <- list(aardvark=1:5)|
      o |x$a|
      o |x[["a", exact=FALSE]]|


      <#remove-missing-values>Remove missing values

  * Single objects
      o |x <- c(1, 2, NA, 4, NA, 5)|
      o |bad <- is.na(x)| and |x[!bad]|
  * Multiple objects
      o |x <- c(1,2,NA,4,NA,5)| and |y <- c("a","b",NA,"d",NA,"f")|
      o |good <- complete.cases(x,y)| and |x[good]|, |y[good]|
  * Data frame
      o |good <- complete.cases(airquality)|
      o |airquality[good, ][1:6, ]|


    <#control-structure>Control Structure


      <#if-else>if-else

  * basic
      o |if(condition){#something}else
        if(condition){#something}else{#smething}|
      o can assign whole structure to variable


      <#for-loops>for-loops

  * basic
      o |for(i in 1:10){ print(x[i]) }|
      o base on the length of x: |for(i in seq_along(x)) { print(x[i]) }|
      o |for(letter in x){ print(letter) }|
  * nested for-loops
      o matrix: |for(i in seq_len(nrow(x))) for(j in seq_len(ncol(x)))|


      <#while-loops>while-loops

  * basic
      o |while(condition){ #something }|
      o multiple conditions: |whilte(condition1 && condition2){
        #something }|


      <#repeat-next-break>repeat, next, break

  * repeat
      o initiate infinite loop: |repeat{ if(condition){break} }|
      o must guarantee to stop, set hard limit on number of iterations
        using for-loop
  * next
      o skip an iteration of a loop
      o |for(i in 1:10){ if(condition){skip} #something else}|
  * break
      o |if(condition){break}|


    <#function>Function


      <#define-function>define function

  * creating functions
      o |f <- function(arguments){ #something }|
      o first class objects: treated as any R objects
      o function can be passed as arguments
      o function can be nested, can define function inside function
  * default value
      o |f <- function(a, b=1, c=NULL)|


      <#arguments>arguments

  * function arguments
      o formal arguments are arguments in function definition
      o get list of formal arguments: |formals| function
      o arguments can be missing or use default value
  * argument matching
      o matched positionally or by name
      o equivalent: |sd(mydata)|, |sd(x=mydata,na.rm=FALSE)|,
        |sd(na.rm=FALSE,mydata)|
      o not recommend messing orders
      o get arguments of function: |args(function)|
  * partial argument matching
      o check for exact match for a named argument
      o check for a partial match
      o check for positional match
  * lazy evaluation
      o only evaluated only as needed
  * "..." argument
      o extend another function and dont want to copy the argument list
      o |myplot <- function(x,y,type="1",...){plot(x,y,type=type,...)}|
      o necessary when number of arguments not known in advance
      o example: |args(paste)| and |args(cat)|
  * arguments after "..."
      o must be named explicitly and cannot be partially matched
      o |paste("a","b",sep=":")| not |paste("a","b",se=":")|


    <#date-and-time>Date and Time


      <#dates-in-r>Dates in R

  * date class
      o create date: |x <- as.Date("1970-01-01")|
      o unclass: |unclass(as.Date("1970-01-02"))|


      <#times-in-r>Times in R

  * two classes
      o POSIXct: large integer, useful for data frame
      o POSIXlt: store a bunch of useful information
  * POSIXlt usage
      o create time: |x <- Sys.time()|
      o create class: |p <- as.POSIXlt(x)|
      o get information: |names(unclass(p))| and |p$sec|
  * POSIXct usage
      o create time: |x <- Sys.time()|
      o uncles to get secs: |unclass(x)|


      <#formatting-times>formatting times

  * use strptime function
      o create date string: `detesting <- c("January 10, 2012 10:40",
        "December 9, 2011 9:10")
      o format: |x <- strptime(datestring, "%B %d, %Y %H:%M")|


      <#operations-on-dates-and-times>operations on dates and times

  * need same class to compare
  * use |difftime()| function: |difftime(Sys.time(),t1,units="days")|
  * use mathematical operations
  * can change timezone


    <#loop-functions>Loop Functions


      <#lapply>lapply

  * three arguments
      o a list x
      o a function or the name of a function FUN
      o other arguments via ...
  * always return a list
      o |x <- list(a=1:5, b=rnorm(10))|
      o |lapply(x,mean)| with names preserved
      o apply to sequence: |x <- 1:4| and |lapply(x,runif)|
      o use ... arguments: |lapply(x,runif,min=0,max=10)|
  * use of anonymous function
      o two matrices: |x <- list(a=matrix(1:4,2,2), b=matrix(1:6,3,2))|
      o extract first column: |lapply(x, function(let) elt[,1])|


      <#sapply>sapply

  * simplify result of apply
      o if result is a list where every element is length 1, return a vector
      o if result is a list where every element of same length, return a
        matrix
      o if cannot figure out, return a list


      <#apply>apply

  * used to evaluate a function over the margins of array
  * arguments
      o array x
      o margin: integer vector indicating which margins should be retained
      o function to apply: FUN
      o ... arguments to be passed to FUN
  * usage
      o |x <- matrix(rnorm(200),20,10)|
      o mean of each column: |apply(x,2,mean)| to preserve the columns
        and collapse rows
      o sum of each row: |apply(x,1,mean)|
      o shortcuts: |rowSums|, |rowMeans|, |colSums|, |colMeans|
  * other ways to apply
      o quantiles: |apply(x,1,quantile,probs=c(0.25,0.75))|
      o multiple dimension: |a <- array(rnorm(2*2*10),c(2,2,10))|,
        |apply(a,c(1,2),mean)| is the same as |rowMeans(a,dims=2)|


      <#mapply>mapply

  * used to apply a function in parallel over a set of arguments
  * arguments
      o FUN: function to apply
      o ...: arguments to apply over
      o MoreArgs: list of other arguments to FUN
      o SIMPLIFY: whether the result should be simplified
  * usage
      o |mapply(rep,1:4,4:1)| is same as
        |list(rep(1,4),rep(2,3),rep(3,2),rep(4,1))|
      o instant vectorization: |noise <- fucntion(n,mean,sd)| and use
        |mapply(noise,1:5,1:5,2)| not |noise(1:5,1:5,2)|


      <#tapply>tapply

  * used to apply function over subsets of a vector
  * arguments
      o vector x
      o INDEX: a factor or a list of factors
      o FUN: function to apply
      o ...: arguments for FUN
      o SIMPLIFY: result simplified
  * usage
      o vector: |x <- c(rnorm(10),runif(10),rnorm(10,1))|
      o create groups: |f <- gl(3,10)|
      o apply function on x within group f: |tapply(x,f,mean)| or
        |tapply(x,f,range)|


      <#vapply>vapply

  * motivation
      o specify the format of result
  * usage
      o single number: |vapply(data,function,numeric(1))|


      <#split>split

  * take a vector or other objects and split into groups determined by a
    factor or a list of factors
  * arguments
      o x: a vector(or list) or data frame
      o f: a factor or a list of factors
      o drop: whether empty factor levels should be dropped
  * usage
      o vector: |x <- c(rnorm(10),runif(10),rnorm(10,1))|
      o create groups: |f <- gl(3,10)|
      o split and use apply: |split(x,f)| and |lapply(split(x,f),mean)|
  * split a data frame
      o look at partial data: |head(airquality)|
      o split by month: |s <- split(air quality,airquality$Month)|
      o compute mean: |lapply(s,function(x)
        colMeans(x[,c("Ozone","Solar.R","Wind")]))|
      o simplify results: |sapply(s,function(x)
        colMeans(x[,c("Ozone","Solar.R","Wind")],na.rm=TRUE))|
  * split on more than one level
      o two levels: |x <- rnorm(10)|, |f1 <- gl(2,5)| and |f2 <- gl(5,2)|
      o combine levels: |interaction(f1,f2)|
      o drop empty levels: |str(split(x,list(f1,f2)), drop=TRUE)|


    <#str-function>str Function


      <#display-structure-in-objects>display structure in objects

  * display class
  * quick look at data


      <#usage>usage

  * function
      o |str(function)|
  * vector
      o |x <- rnorm(100,2,4)|
      o |summary(x)| or |str(x)|
  * data frame -|library(datasets)|
      o |head(airquality)| and |str(airquality)|
      o |str(split(airquality,airquality$Month))|
  * matrix


    <#simulation>Simulation


      <#random-numbers>random numbers

  * probability distributions
      o norm: random normal variables with given mean and sd
      o dnorm: evaluate normal probability density
      o pnorm: evaluate cumulative distribution function for normal
        distribution
      o ropes: random Poisson variates with a given rate
  * four prefixes
      o d for density
      o r for random number generation
      o p for cumulative distribution
      o q for quantile function
  * arguments
      o |dnorm(x,mean=0,sd=1,log=FALSE)|
      o |pnorm(q,mean=0,sd=1,lower.tail=TRUE,log.p=FALSE)|
      o |qnorm(p,mean=0,sd=1,lower.tail=TRUE,log.p=FALSE)|
      o |rnorm(n,mean=0,sd=1)|
  * set seed
      o set seed to ensure reproducibility
      o use any seed number: |set.seed(1)|
      o always set seed when doing simulation
  * repeat generation
      o |replicate(100,rpois(5,10))|


      <#generate-from-models>generate from models

  * linear model
      o |set.seed(20)|
      o |x<-rnorm(100)| and |e<-rnorm(100,0,2)|
      o |y<-0.5+2*x+e| and |summary(y)|
      o |plot(x,y)|
  * binary variable
      o |x<-rbinom(100,1,0.5)|
  * generalized linear model
      o |x<-rnorm(100)| and |log.mu<-0.5+0.3*x|
      o |y<-rpois(100,exp(log.mu))|


      <#random-sampling>random sampling

  * draw randomly from a specified set of scalar objects
  * usage
      o set seed |set.seed(1)|
      o without replacement: |sample(1:10,4)|
      o permutation |sample(1:10)|
      o with replacement: |sample(1:10,4,replace=TRUE)|
      o with probability: |sample(c(0,1),100,replace=TRUE,prob=c(0.3,0.7))|
  * drawing from probability distribution with r* function


    <#workspace>Workspace


      <#directory>directory

  * list files
      o |list.files()|
      o recursively: |list.files(recursive=TRUE)|
  * directory operation
      o |getwd()| and |setwd(dir)|
      o |dir.create()|
      o create subdirectory:
        |dir.create("current/subdirectory",recursive=TRUE)|
      o delete: |unlink(dir,recursive=TRUE)|
  * file
      o create: |file.create(filename)|
      o check existence: |file.exists(filename)|
      o get info: |file.info(filename)|
      o rename: |file.rename(from,to)|
      o copy: |file.copy(from,to)|
      o full path: |file.path(filename)|


      <#documentation>documentation

  * function: |args(function)|, |?function|
  * operator: |?[backtick]operator[backtick]|

Jump to Line <#jump-to-line>
Go

  * Status <https://status.github.com/>
  * API <https://developer.github.com>
  * Training <https://training.github.com>
  * Shop <https://shop.github.com>
  * Blog <https://github.com/blog>
  * About <https://github.com/about>

<https://github.com>

  * © 2015 GitHub, Inc.
  * Terms <https://github.com/site/terms>
  * Privacy <https://github.com/site/privacy>
  * Security <https://github.com/security>
  * Contact <https://github.com/contact>

<#> <#>
<#> Something went wrong with that request. Please try again.
