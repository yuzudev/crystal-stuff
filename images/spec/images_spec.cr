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
end
