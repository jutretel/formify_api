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
		rating: "5"
	},
	{
		name: "Yuri Carlos",
		email: "yuri@email.com.br",
		password: "123123",
		rating: "5"
	},
	{
		name: "Victor George",
		email: "victor@mail.com",
		password: "123123",
		rating: "5"
	},
	{
		name: "Paulo Bauer",
		email: "paulo@mail.com",
		password: "123123",
		rating: "5"
	}
])

Location.create!([
	{name: "B108", description: "Bloco B, Primeiro Andar."},
	{name: "B201", description: "Bloco B, Segundo Andar."},
	{name: "A108", description: "Bloco A, Primeiro Andar."},
	{name: "A201", description: "Bloco A, Segundo Andar."},
	{name: "Pátio", description: "Pátio próximo ao RU."}
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
		start_date: "",
		end_date: "",
		description: "As possibilidades super legais de se usar Machine Learning na resolução de diversos problemas",
		rating: "5",
		is_public: true,
		status: "Open",
		user_id: "",
		event_type_id: "",
		location_id: ""
	},
	{
		name: "",
		start_date: "",
		end_date: "",
		description: "",
		rating: "5",
		is_public: true,
		status: "",
		user_id: "",
		event_type_id: "",
		location_id: ""
	},
	{
		name: "",
		start_date: "",
		end_date: "",
		description: "",
		rating: "5",
		is_public: true,
		status: "",
		user_id: "",
		event_type_id: "",
		location_id: ""
	},
	{
		name: "",
		start_date: "",
		end_date: "",
		description: "",
		rating: "5",
		is_public: true,
		status: "",
		user_id: "",
		event_type_id: "",
		location_id: ""
	},
	{
		name: "",
		start_date: "",
		end_date: "",
		description: "",
		rating: "5",
		is_public: true,
		status: "",
		user_id: "",
		event_type_id: "",
		location_id: ""
	},
])
