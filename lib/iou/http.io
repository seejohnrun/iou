HTTP := Object clone

# A HTTP Request
HTTP Request := Object clone do(

  # This is the socket underlying the request
  socket := nil

  # Set the socket for this request
  setSocket := method(socket,
    self socket = socket
    self
  )

  # Write data in
  write := method(data,
    socket write(data)
  )

  # End writing data
  end := method(
    socket close
  )

)

# A server for handling HTTP requests
HTTP Server := Object clone do(

  init := method(
    socketServer requestHandler := self
  )

  handleRequest := method(request
    # This will be cloned to deal with requests
  )

  # The underlying socket server
  socketServer := Server clone do(
    handleSocket := method(socket,
      request := HTTP Request clone setSocket(socket)
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
