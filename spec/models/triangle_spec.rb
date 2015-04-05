require 'rails_helper'

RSpec.describe Triangle do

  it 'Sides must be greater than 0' do
    expect { Triangle.new(0, 0, 0) }.to raise_error("Sides must be greater than 0")
  end

  it 'Not valid triangle lengths' do
    expect { Triangle.new(1, 2, 3) }.to raise_error("Not valid triangle lengths")
  end

  it 'is initialized with the length of its sides' do
    triangle = Triangle.new(6, 6, 6)
    expect(triangle.class).to eq(Triangle)
  end

  it 'determines what type of triangle it is #equilateral' do
    triangle = Triangle.new(6, 6, 6)
    expect(triangle.type).to eq :equilateral
  end

  it 'determines what type of triangle it is #isosceles' do
    triangle = Triangle.new(6, 6, 7)
    expect(triangle.type).to eq :isosceles
  end

  it 'determines what type of triangle it is #scalene' do
    triangle = Triangle.new(6, 7, 8)
    expect(triangle.type).to eq :scalene
  end

end
