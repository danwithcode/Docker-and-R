df <- data.frame(firstname = character(), middlename = character(), lastname = character())

create_fullname <- function(firstname, middlename, lastname) {
    df <<- data.frame(firstname = firstname, middlename = middlename, lastname = lastname)
    return(df)
}
