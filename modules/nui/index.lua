local module = {}

RegisterNuiCallback("hide", module.hide)

function module.send(header, props)
  SendNUIMessage({
    header = header,
    props = props
  })
end

function module.sends(data)
  local payloads = array.new();

  array.new(data):map(function(payload)
    payloads:push({
      header = payload[1],
      props = payload[2]
    })
  end)

  SendNUIMessage({
    isMultiple = true,
    props = payloads
  })
end

function module.show()
  SetNuiFocus(true, true)
  
  return module.send("setNavigate", "primary")
end

function module.hide()
  SetNuiFocus(false, false)

  return module.send("setNavigate", "hidden")
end

return module
