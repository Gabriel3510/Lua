local motor1 = 5
local motor2 = 4
local motor3 = 2
local motor4 = 3
local motor5 = 0
local motor6 = 1
function update()
  if rc:get_pwm(6) > 1700 then --get_pwm seta qual canal do radio vai funcionar.
    SRV_Channels:set_output_pwm_chan_timeout(motor1,1000,15) -- aqui voce determinda qual motor vai parar e pra qual pwm ele vai.
  end
  return update, 10 --
end
return update() -- run immediately before starting to reschedule