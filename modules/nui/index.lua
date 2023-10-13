local module = {}

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
  return module.send("setNavigate", "primary")
end

function module.hide()
  return module.send("setNavigate", "hidden")
end

return module
