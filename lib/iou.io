Iou := Object clone do(

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

  HTTP := NamespaceLoader clone setLoadPath("lib/iou/http")

)
