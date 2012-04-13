Importer addSearchPath("lib")

Iou HTTP ClientRequest clone do(
  method := "POST"
)

Iou HTTP Server clone do(

  handleRequest = method(request,
    request socket streamReadNextChunk
    request socket readBuffer println
    request write("hello")
    request end
  )

) start
