local function dispatch(command)
  return hl.dsp.exec_cmd("hyprctl dispatch " .. command)
end

hl.bind("SUPER + RETURN", hl.dsp.exec_cmd("kitty"), { description = "Terminal" })
hl.bind("SUPER + D", hl.dsp.exec_cmd("wofi --show drun"), { description = "Launcher" })
hl.bind("SUPER + Q", dispatch("killactive"), { description = "Close window" })
hl.bind("SUPER + F", dispatch("fullscreen"), { description = "Fullscreen" })
hl.bind("SUPER + V", dispatch("togglefloating"), { description = "Toggle floating" })

hl.bind("SUPER + H", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER + J", hl.dsp.focus({ direction = "d" }))
hl.bind("SUPER + K", hl.dsp.focus({ direction = "u" }))
hl.bind("SUPER + L", hl.dsp.focus({ direction = "r" }))

hl.bind("SUPER + SHIFT + H", hl.dsp.window.move({ direction = "l" }))
hl.bind("SUPER + SHIFT + J", hl.dsp.window.move({ direction = "d" }))
hl.bind("SUPER + SHIFT + K", hl.dsp.window.move({ direction = "u" }))
hl.bind("SUPER + SHIFT + L", hl.dsp.window.move({ direction = "r" }))

for i = 1, 5 do
  hl.bind("SUPER + " .. i, dispatch("workspace " .. i))
end
