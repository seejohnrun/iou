# A server for handling HTTP requests
Iou HTTP Server := Object clone do(

  init := method(
    socketServer requestHandler := self
  )

  handleRequest := method(request
    # This will be cloned to deal with requests
  )

  # The underlying socket server
  socketServer := Server clone do(
    handleSocket := method(socket,
      request := Iou HTTP Request clone setSocket(socket)
      requestHandler handleRequest(request)
    )
  )

  # Start the server up
  start := method(
    "starting" println
    socketServer setPort(7777)
    socketServer start
  )

)
