class PdfsController < ApplicationController
# require "prawn"

# def index
#  @test = Prawn::Document.generate("hello.pdf") do
#     text "Hello PDF World!"
#   end
# end

require "prawn"

Prawn::Document.generate("hello.pdf") do
  text "Hello World!"
end

end
