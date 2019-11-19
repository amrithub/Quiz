name1 = ARGV
#name.to_s

name = name1[0]
puts name
require 'colorize'
require 'artii'
if name == nil
    puts "Please enter your name".green.bold
    name = gets.chomp
end
#print name
ARGV.clear

a = Artii::Base.new
puts a.asciify('Quiz by Amrit Sagar Khanal').colorize(:blue)



def Quiz(qBank,sn)
    
    item1 = qBank[rand(qBank.length)]
    item = item1.clone
    item3 = item1.clone
    item4 = item1.clone
    item5 = item1.clone
    item5[0,1] = ''
    x = item3[0,1] 
    
    print "q#{sn}:  ".yellow.bold
    print item5.colorize(:cyan).bold
    
    a = gets.chomp
    # Error handling in case the user enters invalid response
     while a != 'a' and a !=  'b' and a!= 'c' and a!= 'd' 
        puts " you entered invalid response. Press 'a' or 'b' or 'c' or 'd' only".colorize(:red).bold
        a = gets.chomp
    end
    if  a == x
        return [1,item4,x]
    else 
        return [0,item4,x]
    end
end
     
def continue(name)
    qbank = []
    qBank = []
    File.open("qb.txt").each do|line|
        qbank.append(line)
    end
    i = 0
    for j in 0..9
        
        qBank[j] = qbank[i] + qbank[i+1]
        i += 2
    end
    #qBank1 = qBank
    score = 0
    
    puts "Press p for practice and any other key for tournament".blue.on_yellow.bold
    mode = gets.chomp.to_s
    
    if mode == 'p'
     # ERROR HANDLING (if the user enters invalid input for example 12, a,'asdsad')   
        begin 
            puts "How many questions do you want to take?".cyan.on_yellow.bold
            m = gets.chomp.to_i
            4/m
        rescue 
           
        
        end
        while m > 5 or m < 1
        
                puts "You entered invalid input. Please enter an integer between 1 to 5"
                m = gets.chomp.to_i
        end
        
                
        
    else
        m =  5
    end






    answers = []
    qBA = []
    for i in 1..m
    # print "qBankO : #{qBankO}"
        a = Quiz(qBank,i)
        
        score += a[0]
        
        qBank.delete(a[1])
        answers.append(a[2])
        
    end

#print a
    #puts "#{name},".colorize(:blue)
    require 'artii'
    a = Artii::Base.new
    puts a.asciify(name).colorize(:blue)
    
    puts "your Score is: ".red.bold
    require 'artii'
    a = Artii::Base.new

    puts a.asciify(score).colorize(:yellow)
    cmp =  3*m/4.0
    if score >= m/2.0 and score < cmp
        puts "Decent Job.Keep it up".red.bold
    elsif score >= 3.0*m/4.0
        puts "Excellent Job".blue.bold
    else
        puts "Practice makes us perfect. Keep your chin up".cyan.bold
    end
        
        puts
    puts "Anyway, here are the correct answers:".colorize(:blue).bold
    puts "answers:".green.bold
    for i in 0..m-1
        puts "Q#{i+1}:      #{answers[i]}".cyan.bold
    end

    if m == 5 and mode != 'p'
        puts "The recent score is below. Compare your perforamnce wwith other players".red.bold
        File.open("scoreboard.txt",'a') do |line|
        # puts "The score card looks as below"
    
                line.puts "#{name}:      #{score}".blue.bold

        end
        File.readlines('scoreboard.txt').last(5).each do |line|
            puts line
        end
    
        


        
    end
    puts "Do you want to play more? press c to continue and any other key to exit".cyan.on_red.bold
        q = gets.chomp
        if q == 'c'
            continue(name)
        end
end
continue(name)



