Iou := Object clone do(

  # This object lets namespaces exist split up between
  # multiple files.  It provides a base implemention of forward
  # that will load any files called within the namespace of this
  # Object
  NamespaceLoader := Object clone do(

    loadPath := nil

    setLoadPath := method(path,
      loadPath = path
      self
    )

    forward := method(
      name := call message name
      path := Path with(loadPath, name .. ".io") asSymbol
      if(File with(path) exists,
        Lobby doFile(path),
        resend
      )
    )

  )

  # Get the base of Iou set up
  HTTP := NamespaceLoader clone setLoadPath("lib/iou/http")

)
