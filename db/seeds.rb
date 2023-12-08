puts 'Gerando ideas...'

5.times do |i|
  Idea.create(
    name: ["bif", "process", "atom"].sample ,
    description: "caracteristicas da linguagem"
    )
end

puts 'ideas gerados com sucesso!'