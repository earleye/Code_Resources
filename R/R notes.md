| -> “Or” operator
! -> negation (the opposite of)
== -> exact match (conditional logic)
!= -> inequality (NOT equal to)



   * R is case sensitive!
   * Periods are used as spacers in R (Similar to an underscore _ in SAS).  They have no function other than to serve as a spacer.
   * Hitting the Up arrow key will copy and paste the last line submitted
   * Hitting the Down arrow key will erase what you just copy and pasted.
   * Packages need to be loaded into R before use.  Ex: Need to load the stats package to do statistical analyses
   * CRAN = Comprehensive R Archive Network) http://cran.us.r-project.org/
   * In assignment statements, most objects, vectors, lists, and primitive objects are immutable (unable to be changed).  R will copy the object, not just the reference to the object


Definitions
Vector = dataset or data
Class = the type of data (i.e. numeric, character, logical, etc.)
Array = multidimensional vector
matrix = two-dimensional array
c() = ‘combine’ data (Ex: c(1,2,3,4,5) = numeric vector of 1,2,3,4,5
character vector = use “ “
List = allows you to create a vector with multiple data types (i.e. numeric and character data)
symbol = variable name
environment = set of symbols that are defined in a current context
function = object that takes some input objects (called the arguments of the function) and returns an output object
***All work in R is done by functions



Sample code


   * (.packages()) = will show you the currently loaded packages

   * (.packages(all.available=TRUE)) = will show all available packages

      * library() = will open a new window with all available packages (and definitions)

   * library(name of package) = will load a package
   * ; = will separate expressions with new lines
   * X <- 1 = How to create/recode variables
   * # = used to comment out code
   * IF-THEN statement = if (3>4) “orange” else “apple”  —> this will return “apple”

      * if (condition) true_expression else false_expression
      * if (condition) expression

   * Modulus (absolute value) = %%
   * User defined binary operators consist of a string of characters between two % characters

      * Example: `%myop%` <- function(a,b) {2*a + 2*b}
      * 1 %myop% 1 —> (2*1+ 2*1) = 4
      * returns: 4  
      * 1 %myop% 2 —> (2*1 + 2*2) = 6
      * returns: 6

   * Subsetting/indexing data = [] square brackets

      * x[c(1,2,5)] -> subsets to the first, second, and fifth element in dataset x

   * race

