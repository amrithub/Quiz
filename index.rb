name1 = ARGV
#name.to_s

name = name1[0]
#print name
ARGV.clear
require 'colorize'
require 'artii'
a = Artii::Base.new
puts a.asciify('Quiz by Amrit Sagar Khanal').colorize(:blue)



def Quiz(qBank)
    
    item1 = qBank[rand(qBank.length)]
    item = item1.clone
    item3 = item1.clone
    item4 = item1.clone
    item5 = item1.clone
    item5[0,1] = ''
    x = item3[0,1] 
    
    puts item5
    
    a = gets.chomp
    if  a == x
        return [1,item4]
    else 
        return [0,item4]
    end
end
     
def continue(name)
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
    #qBank1 = qBank
    score = 0
    
    puts "Press p for practice and any other key for tournament"
    mode = gets.chomp.to_s
    
    if mode == 'p'
        
        begin 
            puts "How many questions do you want to take?"
            m = gets.chomp.to_i
            puts m
            4/m
        rescue
           
        

            while m > 5 or m < 1
        
                puts "You entered invalid input. Please enter an integer between 1 to 5"
                m = gets.chomp.to_i
            end
        end
    else
        m =  5
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



# end

    answers = []
    qBA = []
    for i in 1..m
    # print "qBankO : #{qBankO}"
        a = Quiz(qBank)
        
        score += a[0]
        
        qBank.delete(a[1])
        
    end

#print a
    #puts "#{name},".colorize(:blue)
    require 'artii'
    a = Artii::Base.new
    puts a.asciify(name).colorize(:blue)
    puts "your Score is: "
    require 'artii'
    a = Artii::Base.new

    puts a.asciify(score).colorize(:yellow)
    
    puts
    puts "Anyway, here are the correct answers:".colorize(:blue)
    puts "answers:"
    puts 
    #puts answers

    if m == 5 and mode == 't'
        puts "The recent score is below. Compare your perforamnce wwith other's"
        File.open("scoreboard.txt",'a') do |line|
        # puts "The score card looks as below"
    
                line.puts "#{name}:      #{score}"

        end
        File.readlines('scoreboard.txt').last(5).each do |line|
            puts line
        end
    
        


        
    end
    puts "Do you want to play more? press c to continue and e to exit"
        q = gets.chomp
        if q == 'c'
            continue(name)
        end
end
continue(name)

#a = Quiz()
#print 'a'
#item = qBank[rand(qBank.length)]
# camp = ["This is blue".colorize(:blue), "This is blue".colorize(:red), "This is blue".colorize(:yellow)]

# #puts "This is blue".colorize(:blue)
# item = camp[rand(camp.length)]

# puts item
# puts "This is Australia"

