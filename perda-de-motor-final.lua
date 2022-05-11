function update()
  if rc:get_pwm(6) > 1700 then --get_pwm seta qual canal do radio vai funcionar.
    SRV_Channels:set_output_pwm_chan_timeout(0,1000,15) -- aqui vc determinda qual motor vai parar e pra qual pwm ele vai.
  end
  return update, 10 --
  

end
return update() -- run immediately before starting to reschedule