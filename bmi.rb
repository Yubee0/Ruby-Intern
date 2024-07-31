puts "Body Mass Index (BMI) (toxic version)"

print "Input your Height(cm): "
height = gets.chomp.to_f
print "Input your Weight(kg): "
weight = gets.chomp.to_f

bmi = weight / (height / 100)**2
puts "Your BMI = #{bmi}"

case bmi
when 0...16
  puts "Severe Thinness"
when 16...17
  puts "Moderate Thinness"
when 17...18.5
  puts "Mild Thinness"
when 18.5..25
  puts "Normal"
when 25..30
  puts "Overweight"
when 30..35
  puts "Damn you buffalOO"
else
  puts "You broke the system you FATSOO!"
end
