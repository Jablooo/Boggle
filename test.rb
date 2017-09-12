
@firstRow = ["_","_","_","_"]
@secondRow = "____"
@thirdRow = "____"
@lastRow = "____"

chars = ("A".."Z").to_a
@firstRow.each do |i|
  i.gsub! "_", chars.sample
end
puts @firstRow.join
