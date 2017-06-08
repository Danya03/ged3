if (u1 = User.find_by_email('admin@localhost')).nil?
  u1 = User.create!(password: 'qwerty', password_confirmation: 'qwerty',
    email: 'admin@localhost')
  u1.activate!
end
if (u2 = User.find_by_email('user@localhost')).nil?
  u2 = User.create!(password: 'qwerty', password_confirmation: 'qwerty',
    email: 'user@localhost')
  u2.activate!
end
r1, r2 = Role.create_main_roles
ru1 = RoleUser.create(role: r1, user: u1)
ru2 = RoleUser.create(role: r2, user: u2)


#---------------------->Город
a1 = City.create!(name: 'Москва')
a2 = City.create!(name: 'Питер')

#--------------------->Маршруты

b1 = Itinerary.create!(name: 'j2j1', desc: 'Норм', price: '5486', city_id: a1.id)
b2 = Itinerary.create!(name: 'j1j2', desc: 'Плохо', price: '1264', city_id: a2.id)

#------------------->Экскурсия

ex1 = Excursion.create!(name: 'Экскурсия 1', describe: 'Отличная экскурсия', price: '5544', city_id: b1.id)
ex2 = Excursion.create!(name: 'Экскурсия 2', describe: 'Хорошая экскурсия', price: '6655', city_id: b2.id)

#------------------->Туры


