require 'colorize'
require 'artii'
a = Artii::Base.new
puts a.asciify('Quiz by Amrit Sagar Khanal').colorize(:blue)


def Quiz(qBank)
    qBankO =  ["what is the capital of Nepal? \n a. Kathmandu    b.Delhi     c. Sydney       d. Pokhara", "who is the president of USA? \n a. V. Putin      b. Justin Limbu     c. Yamaha Gamaguchi     d.Donald Trump",
    "what is the cause of fear? \n a. pain      b. gain     c.  nothing     d. all of above"]
    #puts   " qBank Malladi: #{qBankO}"
    
    item = qBank[rand(qBank.length)]
    
    puts " I     AM                AMRIT"
    print item
    puts "Doing Great"
    a = gets.chomp
    if item == qBankO[0]
        if 
            a == 'a'
            return [1,item,'Kathmandu']
        else
            return [0,item,'Kathmandu'] 
        end
    
    # puts "Lets seeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"   
    # puts qBankO[1]
    elsif item == qBankO[1] 
        # print item
        # print qBankO[1]
        # print a
        
        if 
            a == 'd'
            return [1,item,'Donald Trump']
        else
            return [0,item,'Donald Trump'] 
        end    
    elsif item == qBankO[2]
        if 
            a == 'c'
            return [1,item,'Nothing']
        else
            return [0,item,'Nothing'] 
        end
    # else 
    #     return [0,item,a]

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
# rescue TypeError
#     puts "TypeError handled"
# rescue
#     puts "some other standard Error handled"


puts "Please enter your name:".colorize(:red)
name = gets.chomp
puts "How many quwstions do you want to take?"
m = gets.chomp.to_i
print m
while m > 10 or m < 1
    
    puts "You entered invalid input. Please enter an integer between 1 to 10"
    m = gets.chomp.to_i
    
end
# begin
#     name = gets.chomp
#     puts "How many quwstions do you want to take?"
#     m = gets.chomp.to_i
# rescue TypeError
#         puts "TypeError handled"
# rescue
#         puts "some other standard Error handled"
# end
#k = m.class
#puts k
# if m > 10 or m == 0 or m.class != Integer
puts "Invalid input"#. Please enter an integer between 1 to 10 only!!!!!"
puts

# end

answers = []
for i in 1..m
     #print "qBankO : #{qBankO}"
     a = Quiz(qBank)
     #print a
     score += a[0]
     qBank.delete(a[1])
     answers.append(a[2])
    #  print "return array is: \n"
    #  print a
end
#print a
puts "#{name},".colorize(:blue)
puts "your Score is: #{score}"
puts
puts "Anyway, here are the correct answers:".colorize(:blue)
puts "answers:"
puts 
puts answers
#end
#a = Quiz()
#print 'a'
#item = qBank[rand(qBank.length)]
camp = ["This is blue".colorize(:blue), "This is blue".colorize(:red), "This is blue".colorize(:yellow)]

#puts "This is blue".colorize(:blue)
item = camp[rand(camp.length)]

puts item
puts "This is Australia"
