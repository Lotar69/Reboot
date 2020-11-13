students = {
    "Peter" => {
    "age" => 24,
    "ssn" => "123",
    },
    "Marie" => {
    "age" => 36,
    "ssn" => "456",
    },
    "Loic" => {
    "age" => 48,
    "ssn" => "789",
    }
}

students.each do |name, student|
    age = student["age"]
    ssn = student ["ssn"]
    puts "Hello my name is #{name} i'm #{age}, my SSN is #{ssn}"
end

Paris = {
    name: "Paris",
    population: 10000
}

puts Paris