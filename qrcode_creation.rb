require 'rubygems'
require 'rqrcode'
class Qrcode
	def qr
			qrcode = RQRCode::QRCode.new("http://agiratech.com/")
			# With default options specified explicitly
			png = qrcode.as_png(
          	resize_gte_to: false,
          	resize_exactly_to: false,
          	fill: 'white',
          	color: 'black',
          	size: 120,
          	border_modules: 4,
          	module_px_size: 6,
          	file: nil # path to write
         	)
			IO.write("/home/agira/Desktop/my_qrcode.png", png.to_s)
	end

end

obj=Qrcode.new
obj.qr

puts "qr code created "
