HTTP := Object clone

# A HTTP Request
HTTP Request := Object clone do(

  # This is the socket underlying the request
  socket := nil

  # Set the socket for this request
  setSocket := method(socket,
    self socket := socket
    self
  )

  # Handle the request
  handle := method(
    self socket write("hello")
    self socket close
  )

)

# A server for handling HTTP requests
HTTP Server := Object clone do(

  # The underlying socket server
  socketServer := Server clone do(
    handleSocket := method(socket,
      HTTP Request clone setSocket(socket) handle
    )
  )

  # Start the server up
  start := method(
    "starting" println
    socketServer setPort(7777)
    socketServer start
  )

)
