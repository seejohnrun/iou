Importer addSearchPath("lib")

Iou HTTP Server clone do(

  handleRequest = method(request,
    request write("hello")
    request end
  )

) start
