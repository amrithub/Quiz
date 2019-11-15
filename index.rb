require 'colorize'
require 'artii'
a = Artii::Base.new
puts a.asciify('Quiz by Amrit Sagar Khanal').colorize(:blue)


def Quiz(qBank)
    # qBankO = []
    # File.open("qb.txt").each do|line|
    #     qBankO.append(line)
    # end
    #puts qBankO ddbab
    # qBankO =  ["what is the capital of Nepal? \n a. Kathmandu    b.Delhi     c. Sydney       d. Pokhara", "who is the president of USA? \n a. V. Putin      b. Justin Limbu     c. Yamaha Gamaguchi     d.Donald Trump",
    # "what is the cause of fear? \n a. pain      b. gain     c.  nothing     d. all of above"]
    # #puts   " qBank Malladi: #{qBankO}"
    
    #print qBankO
    qbank = []
    qBankO = []
    File.open("qb.txt").each do|line|
        qbank.append(line)
    end
    i = 0
    for j in 0..4
        
        qBankO[j] = qbank[i] + qbank[i+1]
        i += 2
    end
    item = qBank[rand(qBank.length)]
    
    puts " I     AM                AMRIT"
    print item
    puts "Doing Good"
    a = gets.chomp
    if item == qBankO[0]
        if 
            a == 'd'
            return [1,item,'All of the above']
        else
            return [0,item,'All of the above'] 
        end
    
    # puts "Lets seeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"   
    # puts qBankO[1]
    elsif item == qBankO[1] 
        # print item
        # print qBankO[1]
        # print a
        
        if 
            a == 'd'
            return [1,item,'All of the above']
        else
            return [0,item,'All of the above'] 
        end    
    elsif item == qBankO[2]
        if 
            a == 'b'
            return [1,item,'-230 to 2(30-1) ']
        else
            return [0,item,'-230 to 2(30-1) '] 
        end
    elsif item == qBankO[3]
        if  a == 'a'  
            return [1,item,'Perl ']
        else
            return [0,item,'Perl '] 
        end
    elsif item == qBankO[4] 
        if a == 'b'
            return [1,item,'.rb extension ']
        else
            return [0,item,'.rb extension '] 
        end
    # else 
    
    #     return [0,item,a]

    end
    puts
end
qbank = []
qBank = []
File.open("qb.txt").each do|line|
    qbank.append(line)
end
i = 0
for j in 0..4
    
    qBank[j] = qbank[i] + qbank[i+1]
    i += 2
end
#qBankO = qBank
print qBank
#     #puts line
# for i in 1..5
#     puts array[-i]
# end
# 
# qBank =  ["what is the capital of Nepal? \n a. Kathmandu    b.Delhi     c. Sydney       d. Pokhara", "who is the president of USA? \n a. V. Putin      b. Justin Limbu     c. Yamaha Gamaguchi     d.Donald Trump",
# "what is the cause of fear? \n a. pain      b. gain     c.  nothing     d. all of above"]
# puts
#qBankO = qBank
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
    # print "qBankO : #{qBankO}"
     a = Quiz(qBank)
     #print a
     print "flag"
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
puts "The recent score is below. Compare your perforamnce wwith other's"

File.open("scoreboard.txt",'a') do |line|
    # puts "The score card looks as below"
 
             line.puts "#{name}:  #{score}"

end
File.readlines('scoreboard.txt').last(5).each do |line|
    puts line
  end
#end
#a = Quiz()
#print 'a'
#item = qBank[rand(qBank.length)]
# camp = ["This is blue".colorize(:blue), "This is blue".colorize(:red), "This is blue".colorize(:yellow)]

# #puts "This is blue".colorize(:blue)
# item = camp[rand(camp.length)]

# puts item
# puts "This is Australia"

