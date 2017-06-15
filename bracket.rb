def isvalid?(bracSeq)
  bool=true
  opening=0
  closing=0
  tmp=0


  bracSeq.each_char { |chr|
    if chr == ")"
      closing-=1
      if -closing > opening
        bool=false
        break
      end
    else
      opening+=1
    end
  }

  if opening+closing==0
    bool=true
  else
    bool=false
  end

=begin
  bracSeq.each_char { |chr|
    if chr=="("
      opening+=1
    else
      closing-=1
    end
  }
  if opening+closing==0
    bool=true
  else
    bool=false
  end
=end

  return bool
end



print "Enter a bracket sequence:"
bracSeq=gets.chomp

puts bracSeq
flag=true
bracSeq.each_char { |ch|
  if (ch != '(' && ch!=')')
    flag=false
  end
}

if flag==true
  puts isvalid?(bracSeq)
else
  puts "Wrong input"
end
