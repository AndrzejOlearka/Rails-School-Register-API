user = User.create(email: 'test@op.pl', password: 'test123');
Teacher.create(firstname: 'Andrzej', lastname: 'Olearka', user_id: user.id, sex: 1)