def Quiz(qBank)
    qBankO =  ["what is the capital of Nepal? \n a. Kathmandu    b.Delhi     c. Sydney       d. Pokhara", "who is the president of USA? \n a. V. Putin      b. Justin Limbu     c. Yamaha Gamaguchi     d.Donald Trump",
    "what is the cause of fear? \n a. pain      b. gain     c.  nothing     d. all of above"]
    #puts   " qBank Malladi: #{qBankO}"
    
    item = qBank[rand(qBank.length)]
    
    puts "item is : #{item}"
    # puts qBankO[0]
    # puts qBankO[1]
    # puts qBankO[2]
    # print item
    puts
    a = gets.chomp
    if item == qBankO[0]
        if 
            a == 'a'
            return [1,item]
        else
            return [0,item] 
        end
    
    # puts "Lets seeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"   
    # puts qBankO[1]
    elsif item == qBankO[1] 
        # print item
        # print qBankO[1]
        # print a
        puts "Love"
        if 
            a == 'd'
            return [1,item]
        else
            return [0,item] 
        end    
    elsif item == qBankO[2]
        if 
            a == 'c'
            return [1,item]
        else
            return [0,item] 
        end
    else 
        return [0,item]

    end
    puts
end
qBank =  ["what is the capital of Nepal? \n a. Kathmandu    b.Delhi     c. Sydney       d. Pokhara", "who is the president of USA? \n a. V. Putin      b. Justin Limbu     c. Yamaha Gamaguchi     d.Donald Trump",
"what is the cause of fear? \n a. pain      b. gain     c.  nothing     d. all of above"]
puts
qBankO = qBank
# " qBank halladi: #{qBankO}"
score = 0

#b = 5
for i in 1..3
     #print "qBankO : #{qBankO}"
     a = Quiz(qBank)
     #print a
     score += a[0]
     qBank.delete(a[1])
  
    #  print "return array is: \n"
    #  print a
end
#print a
puts "Score is: #{score}"
puts
#end
#a = Quiz()
#print 'a'



