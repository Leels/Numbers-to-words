require ('rspec')
require ('pry')
require ('number_to_word')

describe ('alpha_num') do
  # it("converts a number to a string") do
  #   numeronym = Numeronym.new(1)
  #   expect(numeronym.convert()).to(eq(["1"]))
  # end

  # it("converts a number to a string") do
  #   numeronym = Numeronym.new(1)
  #   expect(numeronym.convert()).to(eq("one"))
  # end

  it("converts a number to a string") do
    numeronym = Numeronym.new(19)
    expect(numeronym.convert()).to(eq("nineteen"))
  end
end
