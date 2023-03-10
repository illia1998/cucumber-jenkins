Given('I add {int} and {int}') do |int, int2|
  @output = int + int2
end

Then('the output should be {int}') do |int|
  expect(@output).to eq(int)
end

