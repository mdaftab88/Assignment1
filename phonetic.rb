def phonetic(num,count)
  output=""
  temp=num


  digit=num%10
  case digit
  when 1
    output=num
  when 2
    if count % 4 == 0
      output="2"
    elsif count % 4 == 1
      output="A"
    elsif count % 4 == 2
      output="B"
    elsif count % 4 == 3
      output="C"
    end
  when 3
    if count % 4 == 0
      output="3"
    elsif count % 4 == 1
      output="D"
    elsif count % 4 == 2
      output="E"
    elsif count % 4 == 3
      output="F"
    end
  when 4
    if count % 4 == 0
      output="4"
    elsif count % 4 == 1
      output="G"
    elsif count % 4 == 2
      output="H"
    elsif count % 4 == 3
      output="I"
    end
  when 5
    if count % 4 == 0
      output="5"
    elsif count % 4 == 1
      output="J"
    elsif count % 4 == 2
      output="K"
    elsif count % 4 == 3
      output="L"
    end
  when 6
    if count % 4 == 0
      output="6"
    elsif count % 4 == 1
      output="M"
    elsif count % 4 == 2
      output="N"
    elsif count % 4 == 3
      output="O"
    end
  when 7
    if count % 5 == 0
      output="7"
    elsif count % 5 == 1
      output="P"
    elsif count % 5 == 2
      output="Q"
    elsif count % 5 == 3
      output="R"
    elsif count % 5 == 4
      output="S"
    end
  when 8
    if count % 4 == 0
      output="8"
    elsif count % 4 == 1
      output="T"
    elsif count % 4 == 2
      output="U"
    elsif count % 4 == 3
      output="V"
    end
  when 9
    if count % 5 == 0
      output="9"
    elsif count % 5 == 1
      output="W"
    elsif count % 5 == 2
      output="X"
    elsif count % 5 == 3
      output="Y"
    elsif count % 5 == 4
      output="Z"
    end
  when 0
    if count % 3 == 0
      output="\n"
    elsif count % 3 == 1
      output=" "
    elsif count % 3 == 2
      output="0"
    end


  end

  return output


end





# Main Code
print "Enter sequence of digits having all digits same:"
seq=gets.chomp
count=seq.length
num=seq.to_i


flag=true
lastDigit=num%10
temp=num

while(temp!=0) do
  digit=temp%10
  if(digit != lastDigit)
    flag=false
    break
  end
  temp/=10
end

if(flag==false)
  puts "Wrong Input"
else
  puts "Corresponding Character is:"+phonetic(num,count).to_s
end
