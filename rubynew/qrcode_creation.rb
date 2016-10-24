require 'rubygems'
require 'rqrcode'
module GenerateQRCode

  def create_qrcode(code)
    png=code.as_png(resize_gte_to: false,resize_exactly_to: false,
    fill:'white',color:'black',size: 120,border_modules: 4,module_px_size: 6,file: nil)
    return png
  end
end
class Pass

 extend GenerateQRCode
 def self.write_png(p1)
   IO.write("/home/agira/Desktop/my_qrcode1.png", p1.to_s)
  end
end

#getting url from user
puts "enter url for qr code "
temp=gets.to_s
qr_link = RQRCode::QRCode.new(temp)
#passing url to qr generator
p=Pass.create_qrcode(qr_link)
Pass.write_png(p)
puts "qr code created "
