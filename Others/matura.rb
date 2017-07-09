=begin
  Програма, която при извикване на автор, да показва произведенията му, включени в матурата
=end

=begin
  Идеи за развитие: след автора да може да се избере произведение
  и да се видят главните герои и жанра
=end
def random (a = 0,b = 7)
num = Random.new
num.rand(a..b)
end

def author_to_bg (author)
# дешифрова променливата в името на български на автора
  case author
  when "akonstantinov" then puts "Алеко Константинов"
  when "ddebelqnov" then puts "Димчо Дебелянов"
  when "epelin" then puts "Елин Пелин"
  when "ivazov" then puts "Иван Вазов"
  when "piavorov" then puts "Пейо Яворов"
  when "pslaveikov" then puts "Пенчо Славейков"
  when "hbotev" then puts "Христо Ботев"
  end
end
def random_author
    #get random number 1-7
    author_num = random
    case author_num
    when 1 then author = "akonstantinov"
    when 2 then author = "ddebelqnov"
    when 3 then author = "epelin"
    when 4 then author = "ivazov"
    when 5 then author = "piavorov"
    when 6 then author = "pslaveikov"
    when 7 then author = "hbotev"
    end
    author
end
hbotev = [
  "Майце си",
  "Към брата си",
  "Елегия",
  "Борба",
  "До моето първо либе",
  "На прощаване",
  "Хаджи Димитър",
  "Моята молитва",
  "Обесването на Васил Левски",
]

ivazov = [
  "Българският език",
  "Отечество любезно",
  "При рилския манастир",
  "Елате ни вижте",
  "Линее нащо поколение",
  "Епопея на забравените: Левски, Паисий,Кочо",
  "Опълченците на Шипка",
  "Дядо Йоцо гледа - разказ",
  "Чичовци - повест",
  "Под игото - роман",
]
akonstantinov = [
  "Разни хора, разни идеали",
  "Бай Ганьо"
]

pslaveikov = [
  "Ралица" ,
  "Cis moll",
  "Ни лъх не дъхва над полени",
  "Спи езерото,белостволи буки",
  "Самотен гроб в самотен кът"
]

piavorov = [
  "Градушка",
  "Заточеници",
  "Сенки",
  "Песента на човека",
  "Маска",
  "Две души",
  "Ще бъдеш в бяло",
  "Две хубави очи",
  "Стон( На Лора )"
]


epelin = [
"Ветрената мелница",
"Косачи",
"Задушница",
"Мечтатели",
"На оня свят",
"Андрешко",
"Чорба от греховете на отец Никодим",
"Занемелите канбани",
"Гераците",
]

ddebelqnov = [
  "Черна песен",
  "Пловдив",
  "Да се завърнеш…",
  "Помниш ли, помниш ли..",
  "Спи градът",
  "Миг",
  "Един убит",
  "Тиха победа",
  "Сиротна песен",
]

# изписват се произведенията на рандъм автор
print "Ще се изпишат произведения на автор имате 10 секунди да познаете кой е и след това ще се изпишпе на екрана верния отговор.\n"
author = random_author
case author
when "akonstantinov" then puts akonstantinov
when "ddebelqnov" then puts ddebelqnov
when "epelin" then puts epelin
when "ivazov" then puts ivazov
when "piavorov" then puts piavorov
when "pslaveikov" then puts pslaveikov
when "hbotev" then puts hbotev
end
sleep(4)
puts "\nПравилният отговор е:"
puts author_to_bg(author)

sleep(2)

print "Авторите са: \n"
puts "1.Алеко Константинов"
puts "2.Димчо Дебелянов"
puts "3.Елин Пелин"
puts "4.Иван Вазов"
puts "5.Пейо Яворов"
puts "6.Пенчо Славейков"
puts "7.Христо Ботев"
print "Натиснете номера на автора,чиитo произведения искате да видите: "

author_num = gets.chomp.to_i
case author_num
when 1 then puts akonstantinov
when 2 then puts ddebelqnov
when 3 then puts epelin
when 4 then puts ivazov
when 5 then puts piavorov
when 6 then puts pslaveikov
when 7 then puts hbotev
end



