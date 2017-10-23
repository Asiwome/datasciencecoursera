##### Data frame
row.names()
read.csv()
read.table()
data.matrix()# convert to a matrix

X <- data.frame(f=1:4, air=c("s", "d", "k", "g"))
X
nrow(X)# rows
ncol(X)# colunms

#matrix a vector with dimension attribute . thedimension attribute is an integer. it constructed column wise

a <- matrix(nrow = 2, ncol= 4)
dim(a)
attributes(a)

a <- matrix(1:8, nrow = 2, ncol = 2)
a
dim(a)
attributes(a)
#matrix can be created from vector by adding dimension attributes
a <-c(1,2,3,4,5,6,7,8)
dim(a) <- c(2, 4)
#matrix can be created by column binding and row binding

X <- 1:6
a <- c("a","b","c","d","e","f")
cbind(X, a)
rbind(a, X)

#subsetting  extract subsets of objects
[]# always returns an object of the same as the original;can be used to extract more than one element(there is one exception)
[[]] # is used to extract elements of a list or dataframe; it can be used to extract a single element and the class of the returned object wil not be necessarily be a list or dataframe.
$ #is used to extract elements of a list or data frame by name; semantics are similar to that of []
        
        a[3]
a[1:5]
a[a > "c"]
x <- a >"c"
x
a[x]

#subsetting list
x <- list(foo = 1:4, bar = 0.6, baz = "hello")
x[1]
x[[1]]
x$bar
x[["bar"]]
$bar
x["bar"]

x[c(1, 3)]
[[ # operator can be used with computed indices; $ can only be used with literal names and can take an integer sequence
        name <- "foo"
        x[[name]] # computed index for foo
        x$name # element name doesnt exist
        x$foo
        
        x <- list(a = list(10, 12, 14), b = c(3.14, 2.81))
        x[[c(1, 3)]]
        x[[1]][[3]]
        x[[c(2, 1)]]
        
        #accessing attributes()
        
        #creating vectors using c()
        # creating vectors using vector()
        x <- vector (mode = "complex", length = 5)
        
        #Explict coercion
        #object can be explicity coerced from one class to another using the as.*()
        x <- 0:9
        class(x)
        as.numeric(x)
        as.character(x)
        as.complex(x)
        # nonsensical coercion results in NAS
        x <- c("a", "b", "c", "d")
        as.numeric(x)
        
        ##factors are used to represent categorical data. factors can be unordered of ordered. factors are treated specially by modelling functions lm() and glm()
        
        X <- factor(c("y","y", "a", "a"))
        table(X)
        unclass(X)
        attr(X, "levels")
        # the order of the levels can be set using the levels attribute to factor(). this can be important in linear modelling because the first level is used as the baseline level.
        x <- factor(c("y", "y", "f","n"),
                    levels = c("y", "f", "n"))
        x
        
        
        #missing values are denoted by NA or NAN for undefined mathematical operation.
        is.na #is used to test objects if they are NA
        is.nan()#is used to test for NaN
        #Na values have a class also, so there are integer NA,character NA etc. 
        # A NaN value is also NA but the converse is not true
        
        x <- c(1, 2, 3, 4, NA, NaN, 3)
        is.na(x)
        is.nan(x)
        
        
        #reading data
        read.table(),read.csv()# for reading tabular data
        readLines() # for reading lines of a text file
        source#for reading in R code file (inverse of dump)
        dget,#for reading in R code files (inverse of dput)
        load()# for reading in saved workspaces
        unserialize()# for reading single R objects in binary form
        #writing data
        write.table()
        writeLines()
        dump()
        dput
        save()
        serialize
        # reading data files with read.table
        x <- 6
        class(x)
        (x <- c(4, "a", TRUE))
        class(x)
        x <- list(2, "a", "b", TRUE)
        x[[2]]
        x <- 1:4
        y <- 2
        x + y
        d <- read.csv("hw1_data.csv", fill = TRUE, sep = ",", header = TRUE)
        getwd()
        d
        d[2]
        str(d)
        d[ ,2]
        d[47, ]
        d[1,2]
        na <- is.na(d$Ozone)
        table(na)
        b <- mean(!na)
        x
        a <- d$Ozone
        bad <- is.na(a)
        good <- a[!bad]
        mean(good)
        d[a > 31]
        db <- is.na(d)
        dg <- d1[!db]
        d
        b <- is.na(d)
        d[!b]
        as.data.frame(g)
        install.packages("swirl")
        library(swirl)
        install_from_swirl("R Programming")
        swirl()
        install_course_zip("C:/Users/Oracle/Documents/R/cousera", multi=TRUE)
        
        
        
        
        
        
        
        directory using getwd()
        
        
        List all the objects in your local workspace using ls()
        
        List all the files in your working directory using list.files() or dir()
        ?list.files
        Using the args() function on a function name is also a handy way to see what
        | arguments a function can take.
        Create a file in your working directory called "mytest.R" using the
        | file.create() function.
        Check to see if "mytest.R" exists in the working directory using the
        | file.exists() function.
        Access information about the file "mytest.R" by using file.info()
        You can use the $ operator --- e.g., file.info("mytest.R")$mode --- to grab
        | specific items.
        Change the name of the file "mytest.R" to "mytest2.R" by using file.rename().
        Make a copy of "mytest2.R" called "mytest3.R" using file.copy()
        
        Provide the relative path to the file "mytest3.R" by using file.path().
        
        Create a directory in the current working directory called "testdir2" and a
        | subdirectory for it called "testdir3", all in one command by using
        | dir.create() and file.path().
        dir.create(file.path('testdir2', 'testdir3'), recursive = TRUE)
        
        Use length(my_seq) to view the length of the my_seq variable.
        
        There are several ways we could do this. One possibility is to combine the `:`
        | operator and the length() function like this: 1:length(my_seq). Give that a
        | try.
        Another option is to use seq(along.with = my_seq). Give that a t
        
        One more function related to creating sequences of numbers is rep(), which
        | stands for 'replicate'. Let's look at a few uses.
If we're interested in creating a vector that contains 40 zeros, we can use
        | rep(0, times = 40). Try it out.
        
        | Finally, let's say that rather than repeating the vector (0, 1, 2) over and
| over again, we want our vector to contain 10 zeros, then 10 ones, then 10
| twos. We can do this with the `each` argument. Try rep(c(0, 1, 2), each = 10).


| Character vectors are also very common in R. Double quotes are used to
| distinguish character objects, as in the following example.

...

|=======================================                                |  55%

| Create a character vector that contains the following words: "My", "name",
| "is". Remember to enclose each word in its own set of double quotes, so that R
| knows they are character strings. Store the vector in a variable called
| my_char.

> my_char <- c("My", "name", "is")

| You got it right!

|=========================================                              |  58%

| Print the contents of my_char to see what it looks like.

> my_char
[1] "My"   "name" "is"  

| You are really on a roll!

|===========================================                            |  61%

| Right now, my_char is a character vector of length 3. Let's say we want to
        | join the elements of my_char together into one continuous character string
        | (i.e. a character vector of length 1). We can do this using the paste()
        | function.
        
        ...
        
        |=============================================                          |  63%
        
        | Type paste(my_char, collapse = " ") now. Make sure there's a space between the
| double quotes in the `collapse` argument. You'll see why in a second.
        
        > paste(my_char, collapse = " ")
        [1] "My name is"
        
        | Nice work!
                
                |===============================================                        |  66%
        
        | The `collapse` argument to the paste() function tells R that when we join
        | together the elements of the my_char character vector, we'd like to separate
| them with single spaces.

...

|=================================================                      |  68%

| It seems that we're missing something.... Ah, yes! Your name!
                
                ...
        
        |==================================================                     |  71%
        
        | To add (or 'concatenate') your name to the end of my_char, use the c()
        | function like this: c(my_char, "your_name_here"). Place your name in double
        | quotes where I've put "your_name_here". Try it now, storing the result in a
| new variable called my_name.

> my_name <- c(my_char, "Asiwome")

| Keep working like that and you'll get there!
                
                |====================================================                   |  74%
        
        | Take a look at the contents of my_name.
        
        > my_name
        [1] "My"      "name"    "is"      "Asiwome"
        
        | That's correct!

|======================================================                 |  76%

| Now, use the paste() function once more to join the words in my_name together
| into a single character string. Don't forget to say collapse = " "!
                
                > paste(my_name, collapse = " ")
        [1] "My name is Asiwome"
        
        | You nailed it! Good job!
                
                |========================================================               |  79%
        
        | In this example, we used the paste() function to collapse the elements of a
        | single character vector. paste() can also be used to join the elements of
        | multiple character vectors.
        In the simplest case, we can join two character vectors that are each of
        | length 1 (i.e. join two words). Try paste("Hello", "world!", sep = " "), where
        | the `sep` argument tells R that we want to separate the joined elements with a
        | single space.
        For a slightly more complicated example, we can join two vectors, each of
        | length 3. Use paste() to join the integer vector 1:3 with the character vector
        | c("X", "Y", "Z"). This time, use sep = "" to leave no space between the joined
        | elements.
        ector recycling! Try paste(LETTERS, 1:4, sep = "-"), where LETTERS is a
        | predefined variable in R containing a character vector of all 26 letters in
        | the English alphabet.
        Since the character vector LETTERS is longer than the numeric vector 1:4, R
        | simply recycles, or repeats, 1:4 until it matches the length of LETTERS.
        
        | Also worth noting is that the numeric vector 1:4 gets 'coerced' into a
        | character vector by the paste() function.
        
        Missing values play an important role in statistics and data analysis. Often,
        | missing values must not be ignored, but rather they should be carefully
        | studied to see if there's an underlying pattern or cause for their
| missingness.

 Any operation involving NA generally yields NA as the result. To illustrate,
| let's create a vector c(44, NA, 5, NA) and assign it to a variable x.
        To make things a little more interesting, lets create a vector containing 1000
        | draws from a standard normal distribution with y <- rnorm(1000).
        Next, let's create a vector containing 1000 NAs with z <- rep(NA, 1000).
Finally, let's select 100 elements at random from these 2000 values (combining
                                                                     | y and z) such that we don't know how many NAs we'll wind up with or what
        | positions they'll occupy in our final vector -- my_data <- sample(c(y, z),
| 100).
Let's first ask the question of where our NAs are located in our data. The
        | is.na() function tells us whether each element of a vector is NA. Call is.na()
        | on my_data and assign the result to my_na.
        
        
        In our previous discussion of logical operators, we introduced the `==`
        | operator as a method of testing for equality between two objects. So, you
        | might think the expression my_data == NA yields the same results as is.na().
        | Give it a try.
        
        The trick is to recognize that underneath the surface, R represents TRUE as
        | the number 1 and FALSE as the number 0. Therefore, if we take the sum of a
        | bunch of TRUEs and FALSEs, we get the total number of TRUEs.
        
        ...
        | Let's give that a try here. Call the sum() function on my_na to count the
| total number of TRUEs in my_na, and thus the total number of NAs in my_data.
| Don't assign the result to a new variable.
        
        Index vectors come in four different flavors -- logical vectors, vectors of
        | positive integers, vectors of negative integers, and vectors of character
        | strings -- each of which we'll cover in this lesson.





Let's start by indexing with logical vectors. One common scenario when working
        | with real-world data is that we want to extract all elements of a vector that
        | are not NA (i.e. missing data). Recall that is.na(x) yields a vector of
        | logical values the same length as x, with TRUEs corresponding to NA values in
        | x and FALSEs corresponding to non-NA values in x.
        Prove it to yourself by typing x[is.na(x)]. will giv u vectos of all Na
        
        
        Recall that `!` gives us the negation of a logical expression, so !is.na(x)
        | can be read as 'is not NA'. Therefore, if we want to create a vector called y
        | that contains all of the non-NA values from x, we can use y <- x[!is.na(x)].
        | Give it a try.
        
        
        I've already shown you how to subset just the first ten values of x using
| x[1:10]. In this case, we're providing a vector of positive integers inside of
        | the square brackets, which tells R to return only the elements of x numbered 1
        | through 10.
        
        | Many programming languages use what's called 'zero-based indexing', which
| means that the first element of a vector is considered element 0. R uses
| 'one-based indexing', which (you guessed it!) means the first element of a
| vector is considered element 1.
Again, nothing useful, but R doesn't prevent us from asking for it. This
        | should be a cautionary tale. You should always make sure that what you are
        | asking for is within the bounds of the vector you're working with.

 Luckily, R accepts negative integer indexes. Whereas x[c(2, 10)] gives us ONLY
| the 2nd and 10th elements of x, x[c(-2, -10)] gives us all elements of x
| EXCEPT for the 2nd and 10 elements.  Try x[c(-2, -10)] now to see this.
A shorthand way of specifying multiple negative numbers is to put the negative
| sign out in front of the vector of positive numbers. Type x[-c(2, 10)] to get
| the exact same result.
We can also get the names of vect by passing vect as an argument to the
| names() function. Give that a try.
Then, we can add the `names` attribute to vect2 after the fact with
| names(vect2) <- c("foo", "bar", "norf"). Go ahead.
Now, let's check that vect and vect2 are the same by passing them as arguments
        | to the identical() function.
        
        
        The main difference, as you'll see, is that matrices can only contain a single
| class of data, while data frames can consist of many different classes of
| data.
 The dim() function tells us the 'dimensions' of an object. What happens if we
| do dim(my_vector)? Give it a try.


| Ah! That's what we wanted. But, what happens if we give my_vector a `dim`
        | attribute? Let's give it a try. Type dim(my_vector) <- c(4, 5).


t's okay if that last command seemed a little strange to you. It should! The
        | dim() function allows you to get OR set the `dim` attribute for an R object.
        | In this case, we assigned the value c(4, 5) to the `dim` attribute of
        | my_vector.
        Now, let's confirm it's actually a matrix by using the class() function. Type
        | class(my_vector) to see what I mean.
        
        The example that we've used so far was meant to illustrate the point that a
| matrix is simply an atomic vector with a dimension attribute. A more direct
| method of creating the same matrix uses the matrix() function.
 Now we'll use the cbind() function to 'combine columns'. Don't worry about
| storing the result in a new variable. Just call cbind() with two arguments --
| the patients vector and my_matrix.


| If you remember back to the beginning of this lesson, I told you that matrices
| can only contain ONE class of data. Therefore, when we tried to combine a
| character vector with a numeric matrix, R was forced to 'coerce' the numbers
| to characters, hence the double quotes.

This is called 'implicit coercion', because we didn't ask for it. It just
        | happened. But why didn't R just convert the names of our patients to numbers?
| I'll let you ponder that question on your own.
        
        #####control structures
        
        # if else
        x <- 1:9
        if(x > 3){
                y <- 10
        } else {
                y <- 0
        }
        
        ## for loop : takes an interator variable and assign it succesive values from a sequences or vector. for loops are most commonly used for iterating over the elements of an object
        for (i in 1:10){
                print(i)
        }
        #this loop takes i variable and in each iteration of the loop gives it values 1,2,3......10 then exits
        x <- c("a", "b", "c", "d", "e")
        for(i in 1:5){
                print(x[i])
        }
        
        
        for (letter in x) {
                print(letter)
        }
        
        #nested for loops
        a <- matrix(1:6, 2, 3)
        
        for (i in seq_len(nrow(a))) {
                for (j in seq_len(ncol(a))) {
                        print(a[i, j])
                        
                }
        }
        
        
        
        add2 <- function(x, y){
                x + y
        }
        above10 <- function(x){
                use <- x > 10
                x[use]
        }
        
        
        columnmean <- function(y, rmNA = TRUE){
                nc <- ncol(y)
                means <- numeric(nc)
                for (i in 1:nc) {
                        means[i] <- mean(y[ ,i], na.rm = rmNA)
                }
                means
        }
        ca
        
        
        
        formals()# list all formal arguments of a function.
        
        
        ## Arguments matching
        
        str(rnorm)
        mydata <- rnorm(100, 2, 1) ## generating some data
        # positioning matching, default na.rm
        sd(mydata)
        
        ##specifying by name x default na.rm
        sd(x = mydata)
        
        ## specifing by both arguments and name
        sd(x = mydata, na.rm = TRUE)
        ##When specifying the function arguments by name, it doesn't matter in what order you specify them.
        
        
        args(lm)
        lm(y ~ x, data = mydata, 1 : 1000, model = FALSE)
        ##Function arguments can also be partially matched, which is useful for interactive work. The order  of operations when given an argument is
        #1. Check for exact match for a named argument
        #2. Check for a partial match
        #3. Check for a positional match
        
        is.null()# check whether a specific function is null or is take specific action
        
        ###lazy evaluation
        # arguments are only evaluated when needed
        
        f <- function(a, b){
                print(a)
                print(b)
        }
        f(5)
        
        add2 <- function(x, y){
                x + y
        }
        above10 <- function(x){
                use <- x > 10
                x[use]
        }
        
        
        columnmean <- function(y, rmNA = TRUE){
                nc <- ncol(y)
                means <- numeric(nc)
                for (i in 1:nc) {
                        means[i] <- mean(y[ ,i], na.rm = rmNA)
                }
                means
        }
        
        ### Dates and times
        x <- as.Date("2017- 10- 10")
        x
        unclass(x) # interpresentation of date
        
        ##time
        x <- sys.time()
        x
        y <- Sys.time()
        y
        class(y)
        
        p <- as.POSIXlt(y)## coerce to 
        names(unclass(p))
        
        p$mday
        
        strptime() # takes a character vector and convert it to PostXit format.
        destring <- c("January 10, 2012 10:40", "December 9, 2011 9:10")
        
        d <- strptime(destring, "%B %d, %Y %H : %M")
        d
        ?strptime
        
        
        
        cube <- function(x, n) {
                x^3
        }
        
        x <- 1:10
        if(x > 5) {
                x <- 0
        }
        
        
        f <- function(x) {
                g <- function(y) {
                        y + z
                }
                z <- 4
                x + g(x)
        }
        
        
        swirl()
        
        
        
## loop function 
## lapply loop over a list and evaluate a function on each element
       
        
        > lapply
        a <- function(x,Fun){
                Fun <- match.fun(Fun)
                if (!is.vector(x))|| is.object(x))
                x <- is.list(x)
                .Internal(lapply(x, Fun))
        }
        
        
        x <- list(a = 1:5, b =rnorm(10))
        lapply(x, mean)
        
        # loops over all list
        # apply function to each of the elements in the list 
        # returns a list
        # it takes 3 arguments 1 a list, 2 a funtion 3 other arguments via its ... arguments. if x is not a list it will coerced to a list using as.list()
        x <- list(a = 1:4, b =rnorm(10),c = rnorm(20, 1), d = rnorm(100, 5) )
        lapply(x, mean)
        
        
        library("datasets")
        str(airquality)
        s <- split(airquality, airquality$Month)
        str(s)
        (lapply(s, function(x){
                colMeans(x[ , c("Ozone", "Solar.R", "Wind")], rm.na = TRUE)}))
        rm(list = ls())
        