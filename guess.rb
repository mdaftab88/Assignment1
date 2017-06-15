def putWordsInArray(fileName)
  files=File.open(fileName).read()
  fileArray=files.split("\n")
  return fileArray
end

def pickRandomWord(fileArray)
  return fileArray[rand(fileArray.length)]
end
##### Main #####
print "Enter a filename containing your wordlist:\n "
fileName="words.txt" #gets.chomp
fileArray=putWordsInArray(fileName)
puts "Read #{fileArray.length} words from the file"

pickedWord= pickRandomWord(fileArray).upcase
puts "pickedWord:"+pickedWord.to_s
count=0
chStr=""
while(count != pickedWord.length)#1


    print "The word to guess is: "
    pickedWord.each_char { |chr|
      if chStr.include? (chr)
        print chr
      else
        print "*"
      end
    }


    print "\n\n"
    print "Enter a charater to guess: "
    ch=gets.chomp.chr.upcase
    chStr+=ch
    chOccu=pickedWord.count ch
    #pickedWord.each_char { |chr| if chr == ch then chOccu+=1; end}

    if (chOccu == 0 || !(chStr.include? (ch) ))
      next
    else
      count+=1
    end


    print "The Character #{ch} occurs in #{chOccu} positions\nThe word to guess is now: "

    pickedWord.each_char { |chr|
      if chStr.include? chr
        print chr
      else
        print "*"
      end
    }



    print "\n\nEnter you guess: "
    guess=gets.chomp.upcase


    if(guess == pickedWord)
      puts "Congratulations! #{guess} is the correct word"
      puts "You achieved the correct answer in #{count} guesses!"
      puts "Would you like a rematch [y/n]?"
      break
    else
      puts "This is not the correct word.\nPlease guess another letter and try again."
      next;
    end



end#1end

puts ""
