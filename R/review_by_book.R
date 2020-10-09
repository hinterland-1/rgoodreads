#' Query reviews by book id from the Goodreads API 
#'
#' Query for Goodreads book reviews from book id.
#' @return A \code{data.frame} of reviews with corresponding information
#'
#' @export
review_by_book <- function(id,rating,text_only) {
  tbl <- NULL
  ggr <- goodreads_GET ('book/show', id=id, rating=rating, text_only=text_only)
  tbl <- goodreads_parse_review(ggr)
  tbl
}
