Importer addSearchPath("./lib/iou")

HTTP Server clone do(

  handleRequest = method(request,
    request write("hello")
    request end
  )

) start
