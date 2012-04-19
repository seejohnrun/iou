# A client request
Iou HTTP ClientRequest := Object clone do(

  method := "GET"

  setMethod := method(m,
    self method = m
    self
  )

)
