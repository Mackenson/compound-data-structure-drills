people =
{
  "Alia O'Conner PhD" => {
         "phone" => "538.741.1841",
       "company" => "Leuschke-Stiedemann",
      "children" => [
          "Simone",
          "Cindy",
          "Jess"
      ]
  },
           "Ike Haag" => {
         "phone" => "(661) 663-8352",
       "company" => "Carter Inc",
      "children" => [
          "Joe",
          "Ofelia",
          "Deron"
      ]
  },
       "Brian Heller" => {
         "phone" => "1-288-601-5886",
       "company" => "O'Conner Group",
      "children" => [
          "Renee"
      ]
  },
       "Maryse Johns" => {
         "phone" => "218-571-8774",
       "company" => "Kuhlman Group",
      "children" => [
          "Domenick",
          "Trycia"
      ]
  },
  "Dr. Adela DuBuque" => {
        "phone" => "1-203-483-1226",
      "company" => "Heidenreich, Nitzsche and Dickinson"
  }
}


# Write Ruby code to find out the answers to the following questions:

# * How many people are in `people` (excluding children)?
puts "The sum of the people and children are: "
sum =[]
people.each do |key, value|
sum << key
  if value["children"].nil?
    value["children"] = []
  end
value["children"].each do |array|
sum << array
end
end
p sum.length
# * What are the names of all the people?
puts "The names of all the people are: "
people.each do |key, value|
puts key
end
# * What is the phone number of Alia O'Conner PhD?
 people["Alia O'Conner PhD"].each do |phd|
  if phd.include?"phone"
    puts "Alia O'Conner PhD"
    puts phd
  end
end

# * How many children does Brian Heller have?
puts "Brian Heller has #{people["Brian Heller"]["children"].length} children. "
# * What company does Dr. Adela DuBuque work for?
puts "Dr. Adela DuBuque is working for #{people["Dr. Adela DuBuque"]["company"]}."
# * What are the names of the people who have children?
puts "Here is the people that have children: "
people.each do |key, value|
  if value['children'] != []
    puts key
  end
end
# * What are the names of the people who do not have children?
puts "Here is the people that don't have children: "
people.each do |key, value|
  if value['children'] == []
    puts key
  end
end
# * What is Brian Heller's child's name?
brian_kid = people["Brian Heller"]["children"]
print "Brian Heller's child name "
puts brian_kid
# * What is Maryse Johns' first child's name?
mary_kid = people["Maryse Johns"]["children"][0]
print "Maryse Johns' first child's name "
puts mary_kid
# * Dr. Adela DuBuque just had a baby named Tomas. How would you update the hash for this information?
adela_baby = people["Dr. Adela DuBuque"]["children"] = "Tomas"
p people["Dr. Adela DuBuque"]
sets_of_people =
[
  {
         "Bernard Feil" => {
             "phone" => "(880) 434-0630",
           "company" => "Maggio Inc",
          "children" => [
              "Nikki"
          ]
      },
          "Ruby Hessel" => {
             "phone" => "1-467-852-4981",
           "company" => "Kemmer Inc",
          "children" => [
              "Sydney"
          ]
      },
          "Savanah Toy" => {
             "phone" => "440-632-0287",
           "company" => "Hudson, Stehr and Lind",
          "children" => [
              "Garth"
          ]
      },
      "Casandra Kemmer" => {
            "phone" => "1-515-759-7470",
          "company" => "Davis, Bernier and Hermann"
      },
             "Edd Rath" => {
            "phone" => "(522) 829-3164",
          "company" => "Mosciski LLC"
      }
  },
  {
         "Dagmar Brakus" => {
             "phone" => "1-881-313-1173",
           "company" => "Mitchell, Schmitt and Haley",
          "children" => [
              "Reuben"
          ]
      },
         "Einar Effertz" => {
            "phone" => "(265) 857-5141",
          "company" => "Pfeffer, Klocko and Von"
      },
      "Dr. Sigrid Nader" => {
             "phone" => "707.762.7870",
           "company" => "Weissnat, Hayes and Dickinson",
          "children" => [
              "Israel",
              "Elyse",
              "Wilfredo"
          ]
      }
  }
]

# Write Ruby code to find out the answers to the following questions:

# * How many people are in the first set of people?
puts "--------------"
sum_of_people = []
sets_of_people[0].each do |first_hash_key, first_hash_value|
sum_of_people << first_hash_key
  if first_hash_value["children"] != nil
    sum_of_people << first_hash_value["children"]
  end
end
puts "There are #{sum_of_people.length} in the first set of people."

# * How many people are in the second set of people?
sum_of_second_people = []
sets_of_people[1].each do |first_hash_key, first_hash_value|
sum_of_second_people << first_hash_key
  if first_hash_value["children"] != nil
    sum_of_second_people << first_hash_value["children"]
  end
end
puts "There are #{sum_of_second_people.length} in the second set of people."
# * What is Ruby Hessel's phone number?
sets_of_people[0].each do |first_hash_key, first_hash_value|
  if first_hash_key == "Ruby Hessel"
puts "#{first_hash_key["Ruby Hessel"]} phone's number: #{first_hash_value["phone"]}"
end
end

# * What are the names of Dr. Sigrid Nader's children?
sets_of_people[1].each do |first_hash_key, first_hash_value|
  if first_hash_key == "Dr. Sigrid Nader"
print "#{first_hash_key["Dr. Sigrid Nader"]} children's: "
puts first_hash_value["children"]
end
end
# * What is Bernard Feil's child's name?
sets_of_people[0].each do |first_hash_key, first_hash_value|
  if first_hash_key == "Bernard Feil"
print "#{first_hash_key["Bernard Feil"]} children's: "
puts first_hash_value["children"]
end
end
# * What company does Casandra Kemmer work for?
sets_of_people[0].each do |first_hash_key, first_hash_value|
  if first_hash_key == "Casandra Kemmer"
puts "#{first_hash_key["Casandra Kemmer"]} work's: #{first_hash_value["company"]}"
end
end
# * Who are all the people in the first set that have an `m` in their Company names?
sets_of_people[0].each do |first_hash_key, first_hash_value|
  if first_hash_value["company"].downcase.include?"m"
puts "#{first_hash_key}"
end
end
