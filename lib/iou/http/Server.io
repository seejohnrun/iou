# A server for handling HTTP requests
Iou HTTP Server := Object clone do(

  port := 7777
  host := "127.0.0.1"

  init := method(
    socketServer requestHandler := self
  )

  handleRequest := method(request
    # This will be cloned to deal with requests
  )

  # The underlying socket server
  socketServer := Server clone do(
    handleSocket := method(socket,
      request := Iou HTTP ServerRequest clone setSocket(socket)
      requestHandler asyncSend(handleRequest(request))
    )
  )

  # Start the server up
  start := method(
    "starting" println
    socketServer setPort(port) setHost(host)
    socketServer start
  )

)
