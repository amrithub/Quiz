require 'colorize'
require 'artii'
a = Artii::Base.new
puts a.asciify('Quiz by Amrit Sagar Khanal').colorize(:blue)


def Quiz(qBank)
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
    print item
    
    a = gets.chomp
    if item == qBankO[0]
        if 
            a == 'd'
            return [1,item,'All of the above']
        else
            return [0,item,'All of the above'] 
        end
    elsif item == qBankO[1] 
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
score = 0

#b = 5
# rescue TypeError
#     puts "TypeError handled"
# rescue
#     puts "some other standard Error handled"


puts "Please enter your name:".colorize(:red)
name = gets.chomp
puts "Press p for practice and t for tournament"
mode = gets.chomp
if mode == 'p'
    puts "How many questions do you want to take?"
    m = gets.chomp.to_i

    while m > 10 or m < 1
    
        puts "You entered invalid input. Please enter an integer between 1 to 10"
        m = gets.chomp.to_i
    end
else
    m = 5
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

puts

# end

answers = []

for i in 1..m
    # print "qBankO : #{qBankO}"
     a = Quiz(qBank)
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

if m == 5 and mode == 't'
    puts "The recent score is below. Compare your perforamnce wwith other's"
    File.open("scoreboard.txt",'a') do |line|
    # puts "The score card looks as below"
 
             line.puts "#{name}:            #{score}"

    end
    File.readlines('scoreboard.txt').last(5).each do |line|
        puts line
    end
end
#a = Quiz()
#print 'a'
#item = qBank[rand(qBank.length)]
# camp = ["This is blue".colorize(:blue), "This is blue".colorize(:red), "This is blue".colorize(:yellow)]

# #puts "This is blue".colorize(:blue)
# item = camp[rand(camp.length)]

# puts item
# puts "This is Australia"

