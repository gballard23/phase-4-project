puts 'seeding...'
Coach.create(first_name:"Shawn", last_name:"Dalbert", title: "Head Basketball Coach");
Coach.create(first_name: "Earnest", last_name: "Pena", title: "Head Baseball Coach" );
Coach.create(first_name: "Jodie", last_name: "Stringer", title: "Head Football Coach" );

Player.create(first_name: "Gerren" , last_name: "Ballard", position: "Center", coach_id: 1, sport_id: 2)
Player.create(first_name: "Tyrone" , last_name: "Swoopes", position: "Quarterback", coach_id: 3, sport_id: 1)
Player.create(first_name: "Hamilton", last_name: "Luper" , position: "Pitcher", coach_id:  2, sport_id: 3)
Player.create(first_name: "Jefferson", last_name: "Ballard", position: "Wide Reciever", coach_id: 3, sport_id: 1)
Player.create(first_name: "Dane", last_name: "Robinson", position: "Point Gaurd", coach_id: 1, sport_id: 2)

Sport.create(name: "Football")
Sport.create(name: "Basketball")
Sport.create(name: "Baseball")
puts 'seeded 🌱'
