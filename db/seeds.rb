# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!([
	{
		name: "Julia Tretel",
		email: "julia@email.com.br",
		password: "123213",
		rating: 5.0
	},
	{
		name: "Yuri Carlos",
		email: "yuri@email.com.br",
		password: "123123",
		rating: 5.0
	},
	{
		name: "Victor George",
		email: "victor@mail.com",
		password: "123123",
		rating: 5.0
	},
	{
		name: "Paulo Bauer",
		email: "paulo@mail.com",
		password: "123123",
		rating: 5.0
	}
])

Location.create!([
	{name: "B108", description: "Bloco B, Primeiro Andar."},
	{name: "B201", description: "Bloco B, Segundo Andar."},
	{name: "A108", description: "Bloco A, Primeiro Andar."},
	{name: "A201", description: "Bloco A, Segundo Andar."},
	{name: "Pátio", description: "Pátio próximo ao RU."},
	{name: "Auditório", description: "Auditório principal da UTFPR"}
])

EventType.create!([
	{name: "Palestra"},
	{name: "Workshop"},
	{name: "Minicurso"},
	{name: "Mesa Redonda"},
	{name: "Apresentação"},
	{name: "Outro"}
])

Event.create!([
	{
		name: "Palestra sobre Machine Learning",
		start_date: DateTime.now+1.month,
		end_date: DateTime.now+1.month+1.hour,
		description: "As possibilidades super legais de se usar Machine Learning na resolução de diversos problemas",
		rating: 5.0,
		is_public: true,
		status: "Open",
		user_id: 1,
		event_type_id: 1,
		location_id: 6
	},
	{
		name: "Semana Acadêmica de Sistemas de Informação",
		start_date: DateTime.now-2.week,
		end_date: DateTime.now-1.week,
		description: "Diversos minicursos e palestras sobre tecnologia",
		rating: 5.0,
		is_public: true,
		status: "Finished",
		user_id: 3,
		event_type_id: 6,
		location_id: 6
	},
	{
		name: "Workshop de cerveja",
		start_date: DateTime.now+1.day,
		end_date: DateTime.now+1.day+2.hours,
		description: "Vamos aprender a fazer Cerveja!",
		rating: 5.0,
		is_public: false,
		status: "Canceled",
		user_id: 3,
		event_type_id: 2,
		location_id: 3
	},
	{
		name: "Palestra sobre ElasticSearch",
		start_date: DateTime.now-3.weeks-1.hour,
		end_date: DateTime.now-3.weeks,
		description: "Palestra para quem quiser aprender mais sobre o ElasticSearch.",
		rating: 5.0,
		is_public: true,
		status: "Finished",
		user_id: 1,
		event_type_id: 1,
		location_id: 6
	},
	{
		name: "Apresentação do Coral",
		start_date: DateTime.now+3.days,
		end_date: DateTime.now+3.days+2.hours,
		description: "Apresentação do grupo de Coral da UTFPR",
		rating: 5.0,
		is_public: true,
		status: "Open",
		user_id: 2,
		event_type_id: 5,
		location_id: 6
	}
])

# Falta criar algumas entradas para comentários, notificações, e participações nos eventos 
