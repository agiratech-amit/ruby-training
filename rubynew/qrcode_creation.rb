require 'rubygems'
require 'rqrcode'

module Qrcode
	def qr_process code
				png = code.as_png(
       	resize_gte_to: false,
       	resize_exactly_to: false,
       	fill: 'white',
       	color: 'black',
       	size: 120,
       	border_modules: 4,
       	module_px_size: 6,
       	file: nil
       	)
        return png
		  	
    end
  end


class Pass
  extend Qrcode
 def self.write_png p1
IO.write("/home/agira/Desktop/my_qrcode1.png", p1.to_s)
end
end


puts "enter url for qr code "
temp=gets.to_s
qrcode = RQRCode::QRCode.new(temp)

p=Pass.qr_process qrcode
Pass.write_png p
puts "qr code created "
