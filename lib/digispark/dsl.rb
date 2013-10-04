module Digispark
  module DSL
    class Instance
      def initialize(&block)
        @work_block = block
      end

#      def run
#        work do
#          instance_eval &@work_block
#        end
#      end

      def red(options = {})
        red_led.on
        green_led.off
        blue_led.off
        sleep(options[:duration] || 1)
      end

      def off(options = {})
        red_led.off
        green_led.off
        blue_led.off
        sleep(options[:duration] || 1)
      end
    end
  end
end

def digispark(options = {}, &block)
  vendor = options[:vendor] || 0x1781
  product = options[:product] || 0x0c9f
  red_pin = options[:red_pin] || 0
  green_pin = options[:green_pin] || 1
  blue_pin = options[:blue_pin] || 2
  run = options[:dont_run].nil?
  connection :digispark, :adaptor => :littlewire, :vendor => vendor, :product => product
  device :board, :driver => :device_info
  device :red_led, :driver => :led, :pin => red_pin
  device :green_led, :driver => :led, :pin => green_pin
  device :blue_led, :driver => :led, :pin => blue_pin
  spark = Digispark::DSL::Instance.new &block
  spark.run if run
  spark
end
