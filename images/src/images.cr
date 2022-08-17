require "stumpy_png"

module YuzuImages
  VERSION = "0.1.0"

  # uh whatever I wont write docs
  def negative(canvas : StumpyPNG::Canvas)
    canvas.map do |colour, x, y|
      r = (colour.alpha - colour.red) >> 8
      g = (colour.alpha - colour.green) >> 8
      b = (colour.alpha - colour.blue) >> 8
      a = colour.alpha >> 8
      StumpyPNG::RGBA.from_rgba_n(r, g, b, a, 8)
    end
  end

  # op is 0..1
  def opacity(canvas : StumpyPNG::Canvas, op, full = false)
    canvas.map do |colour, x, y|
      r = colour.red >> 8
      g = colour.green >> 8
      b = colour.blue >> 8
      a = if full
        (op * 255).to_u16() >> 8
      else
        (op * colour.alpha).to_u16() >> 8
      end
      StumpyPNG::RGBA.from_rgba_n(r, g, b, a, 8)
    end
  end
end
