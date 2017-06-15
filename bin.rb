def convertToBinary(num)
  binaryEqui=""
  temp=num

  while(temp!=0) do
    rem=temp%2
    binaryEqui=rem.to_s+binaryEqui
    temp/=2
  end

  return binaryEqui
end


def binaryGap(binaryEqui)
  maxGap=0
  charArray=binaryEqui.chars #converting String into character array


  for i in 0..charArray.length

    curGap=0
    if(charArray[i]=="1")
      i+=1
      while(charArray[i]!="1") do
        curGap+=1
        if(i == charArray.length-1)
          if(charArray[i-1].to_s=="0")
            curGap=0
          end
          break;
        end
        i+=1
      end
    end

    if(curGap>maxGap)
      maxGap=curGap
    end

    break if i == charArray.length-1

  end
  return maxGap
end

print "Enter an Integer Number:"
num=gets.chomp.to_i
puts "Binary Equivalent of the given number: #{binaryEqui=convertToBinary(num)}"


puts "Max Gap is:"+binaryGap(binaryEqui).to_s
