local module = {}
local visiblity = false

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
  SetNuiFocusKeepInput(true);
  visiblity = true;
  CreateThread(function ()
    while visiblity do
      Wait(1)

      if IsDisabledControlJustPressed(0, 25) then
        break;
      end
    end

    module.hide()
  end)

  return module.send("setNavigate", "primary")
end

function module.hide()
  SetNuiFocus(false, false)
  visiblity = false;

  return module.send("setNavigate", "hidden")
end

return module
