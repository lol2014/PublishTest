setClass (Class = "family",
          representation (mother = "character",
                          father = "character",
                          children = "numeric"),
          prototype (mother = "母", father = "父",
                     children = 0))
fml <- new ("family", mother = "花子", father = "ichiro",
            children = 3)
fml

setMethod(f = "show", signature = "family",
          function (object) {
            cat (object@father, object@mother, "\n")
          })

setValidity ("family", function (object){
  if (nchar (object@mother) < 1 | nchar (object@father) < 1)
    return (FALSE)
})


fm2 <- new ("family", mother = "", father = "", children = 3)

setClass (Class = "family",
          representation (mother = "character",
                          father = "character",
                          children = "numeric"),
          prototype (mother = "haha", father = "chichi",
                     children = 0))
setMethod (f = "show", signature = "family",
           function (object){
             cat (object@father, object@mother, "\n")
           }
)

setValidity ("family", function (object){
  if (nchar (object@mother) < 1 | nchar (object@father) < 1)
      return (FALSE)
})

fml <- new ("family", mother = "hanako", father = "ichiro", children = 3)
fml