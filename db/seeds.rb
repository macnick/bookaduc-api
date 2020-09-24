# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

# Bikes  
# Use these to seed the db for the first time

Bike.create({ name: 'Monster 1200S', displacement: '1198 cc',
              power: '145 hp', torque: '124 Nm', weight: '185 Kg',
              image: 'https://media.ducati.com/images/previews/mon/m1200s/m1200s-gbg-light.png?resize=1024:*' })
Bike.create({ name: 'SuperSport', displacement: '937 cc',
              power: '110 hp', torque: '93 Nm', weight: '184 Kg',
              image: 'https://media.ducati.com/images/previews/ss1/ss939s/ss939s-r-light.png?resize=1024:*' })
Bike.create({ name: 'Panigale V2', displacement: '955 cc',
              power: '155 hp', torque: '104 Nm', weight: '176 Kg',
              image: 'https://media.ducati.com/images/previews/sbk1/panv2/sbk1-panv2-ngws-light.png?resize=1024:*' })
Bike.create({ name: 'Panigale V4', displacement: '1103 cc',
              power: '214 hp', torque: '124 Nm', weight: '175 Kg',
              image: 'https://media.ducati.com/images/previews/sbk6/panv4/panv4-r-light.png?resize=1024:*' })
Bike.create({ name: 'Panigale V4 R', displacement: '998 cc',
              power: '221 hp', torque: '112 Nm', weight: '172 Kg',
              image: 'https://media.ducati.com/images/previews/sbk6/panv4_r/panv4_r-r-light.png?resize=1280:*' })


