

def maxx(bracSeq)#1
  maxValid=0

  chArr=bracSeq.chars

  for i in 0..chArr.length-1 #2
    curValid=1
    opening=1
    closing=0
    if(chArr[i] == "(") #3

      while opening+closing != -1   #4
        i+=1
        curValid+=1
        if chArr[i] == "("  #5
          opening+=1
        else
          closing-=1
        end#5end

        break if i == chArr.length-1

        if opening+closing == -1
          curValid-=1
          break
        end

      end#4end
    end#3end
    if opening+closing > 0
      curValid=curValid-(opening+closing)
    end

    if curValid > maxValid
      maxValid=curValid
    end

    break if i == chArr.length-1
  end#2end
  return maxValid
end#1end



print "Enter a bracket sequence:"
bracSeq=gets.chomp

#puts bracSeq
flag=true
bracSeq.each_char { |ch|
  if (ch != '(' && ch!=')')
    flag=false
  end
}

if flag==true
  puts maxx(bracSeq)
else
  puts "Wrong input"
end


#))()((())))(((((((()))))))()()()
