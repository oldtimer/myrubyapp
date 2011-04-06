# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
	user.name					"Bong Tiples"
	user.email					"bongskie@yahoo.com"
	user.password				"atiples"
	user.password_confirmation	"atiples"
end

Factory.sequence :email do |n|
	"person-#{n}@example.com"
end

Factory.define :micropost do |micropost|
  micropost.content "Foo bar"
  micropost.association :user
end