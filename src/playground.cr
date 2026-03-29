# TODO: Write documentation for `Playground`
module Playground
  VERSION = "0.1.0"

  # TODO: Put your code here

  class Greeter
    def initialize(@name : String)
    end

    def salute
      puts "Hello #{@name}!"
    end
  end

  g = Greeter.new("world")
  g.salute
end
