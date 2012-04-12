# A HTTP Request
Iou HTTP ServerRequest := Object clone do(

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
