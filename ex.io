Importer addSearchPath("lib")

server := Iou HTTP Server clone do(
  handleRequest = method(request,
    request socket streamReadNextChunk
    request socket readBuffer println
    request write("hello")
    request end
  )
) start

System sleep(2)

server stop

Iou HTTP ClientRequest clone setMethod("POST") method println
