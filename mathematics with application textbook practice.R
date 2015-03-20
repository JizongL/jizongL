APYcal <- function (p,n,sr){ ## calculating APY (annual percentage yield)
                             ## example problem on p273
        cpi <- (1+sr/n)^n    ## p=pricipal amount   sr= stated rate
        APY<- cpi-1          ##  n= compounding period    annually= 1 semianually= 2 quarterly= 4 monthly=12 yearly=365
                             ## function;    a=p(1+APY) = a(1+sr/n )^n
        return(APY)          ## real function       APY= (1+sr/n)^n-1
}




