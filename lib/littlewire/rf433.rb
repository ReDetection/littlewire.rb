module LittleWire::RF433
  
  # send and receive a message of up to four bytes
  # 5 bit example '00101', transmission will start with 0
  def send433 pin, str
    control_transfer(function: :rf433send, 
      wValue: get_pin(LittleWire::DigitalPinMap, pin), 
      wIndex: str.length, 
      dataOut: [str].pack('B*'))
  end
  
end
