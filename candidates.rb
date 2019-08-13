jane = {
    first_name: 'Jane',
    last_name: 'Doe',
    level: :senior_level,
    age: 30,
    occupation: 'Software Developer',
    employed: true,
    current_salary: 125000.00,
    languages: ['Ruby', 'Javascript', 'Go'],
}

sara = {
    first_name: 'Sara',
    last_name: 'Smith',
    level: :mid_level,
    age: 26,
    occupation: 'Software Developer',
    employed: true,
    current_salary: 80000.00,
    languages: ['Ruby', 'Python'],
}

jason = {
    first_name: 'Jason',
    last_name: 'Gray',
    level: :entry_level,
    age: 23,
    occupation: 'Student',
    employed: false,
    current_salary: 0.00,
    languages: ['C++', 'Python'],
}

candidates = [
    jane, sara, jason
]

# puts candidates[1]
# puts candidates[1][:age]


def average_age (people)
    peeps = []
    people.map{ |person| peeps.push(person[:age]) }

    puts "people ages #{peeps}"

    total = peeps.reduce() { |sum, n| sum +n }

    # puts total

    average = total.to_f / people.length.to_f
    
    puts "Average Age: #{average}"

end

average_age(candidates)

def language_screening (people, language) 
    peeps = []

    people.map {
        |person|
        if (person[:languages].include? language)
            peeps.push(person[:first_name])
        end
    }

    puts "The Peeps: #{peeps}"

end

language_screening(candidates, "Ruby")




