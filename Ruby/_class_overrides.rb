## Class Overrides
## ===============


class Object
  # Search methods of a Ruby Object
  def search_methods(param)
    methods = []
    self.methods.each { |m| methods << m if m.to_s.include? param }
    return methods
  end

  # Get Local Methods of a Ruby Object
  def local_methods(obj = self)
    (obj.methods - obj.class.superclass.instance_methods).sort
  end

  # Read RI inside IRB
  def ri(method = nil)
    unless method && method =~ /^[A-Z]/ # if class isn't specified
      klass = self.kind_of?(Class) ? name : self.class.name
      method = [klass, method].compact.join('#')
    end
    system 'ri', method.to_s
  end
end


class String
  # Colorization
  def colorize(color_code)
      "\e[#{color_code}m#{self}\e[0m"
  end

  def black;          colorize(30);   end
  def red;            colorize(31);   end
  def green;          colorize(32);   end
  def yellow;         colorize(33);   end
  def blue;           colorize(34);   end
  def magenta;        colorize(35);   end
  def cyan;           colorize(36);   end
  def gray;           colorize(37);   end

  def bg_black;       colorize(40);   end
  def bg_red;         colorize(41);   end
  def bg_green;       colorize(42);   end
  def bg_brown;       colorize(43);   end
  def bg_blue;        colorize(44);   end
  def bg_magenta;     colorize(45);   end
  def bg_cyan;        colorize(46);   end
  def bg_gray;        colorize(47);   end

  def bold;           colorize(1);    end
  def reverse_color;  colorize(7);    end
end