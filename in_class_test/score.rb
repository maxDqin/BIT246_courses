0.step(25,0.5) do |_score|
  print "\n"
  print _score.to_s + "\t"
_score = _score / 2.5
score = (_score * 2.0).round / 2.0
  print score.to_s + "\t"
case score
when 0..4.5
  print "F\t"
when 5..5.5 then
  print "P\t"
when 6..6.5 then
  print "CR\t"
when 7..7.5 then
  print "D\t"
when 8..10 then
  print "HD\t"
end
end
