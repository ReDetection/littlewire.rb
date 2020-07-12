require_relative '../lib/littlewire'

@wire = LittleWire.connect


for i in 0..10
	@wire.send433(:pin2, '10001011011')
 	sleep(0.018)
end
