require "./spec_helper"

describe YuzuImages do
  describe "#negative" do
    it "inverts the colour" do
      path = File.real_path "assets/marin.png"

      canvas = StumpyPNG.read path

      new_canvas = negative(canvas)

      unless new_canvas
        puts "oops"
      else
        StumpyPNG.write(new_canvas, "/home/alan/Downloads/neg.png")
      end
    end
  end

  describe "#opacity" do
    it "modifies the alpha value" do
      path = File.real_path "assets/marin.png"

      canvas = StumpyPNG.read path

      new_canvas = opacity(canvas, 0.5)

      unless new_canvas
        puts "oops"
      else
        StumpyPNG.write(new_canvas, "/home/alan/Downloads/op.png")
      end
    end
  end

  describe "#crop" do
    it "crops the image" do
      path = File.real_path "assets/marin.png"

      canvas = StumpyPNG.read path

      new_canvas = crop(canvas, 90, 69)
      new_canvas_ = crop(canvas, 50) # 50%
      new_canvas__ = crop(canvas, {30, 50}) # 30, 50 %

      unless new_canvas
        puts "xd"
      else
        StumpyPNG.write(new_canvas, "/home/alan/Downloads/crop.png")
        StumpyPNG.write(new_canvas_, "/home/alan/Downloads/crop'.png")
        StumpyPNG.write(new_canvas__, "/home/alan/Downloads/crop'''.png")
      end
    end
  end
end