
# River.create(name: "Blue River", location: "Colorado", state_id: State.find_by(name: "Colorado").id)
# River.create(name: "North Platte", location: "Wyoming", state_id: State.find_by(name: "Wyoming").id)
# River.create(name: "Chatahoochee", location: "Georgia", state_id: State.find_by(name: "Georgia").id)

State.create(name: "Alabama")
State.create(name: "Alaska")
State.create(name: "Arizona")
State.create(name: "Arkansas")
State.create(name: "California")
State.create(name: "Colorado")
State.create(name: "Connecticut")
State.create(name: "Delaware")
State.create(name: "Florida")
State.create(name: "Georgia")
State.create(name: "Hawaii")
State.create(name: "Idaho")
State.create(name: "Illinois")
State.create(name: "Indiana")
State.create(name: "Iowa")
State.create(name: "Kansas")
State.create(name: "Kentucky")
State.create(name: "Louisiana")
State.create(name: "Maine")
State.create(name: "Maryland")
State.create(name: "Massachusetts")
State.create(name: "Michigan")
State.create(name: "Minnesota")
State.create(name: "Mississippi")
State.create(name: "Missouri")
State.create(name: "Montana")
State.create(name: "Nebraska")
State.create(name: "Nevada")
State.create(name: "New Hampshire")
State.create(name: "New Jersey")
State.create(name: "New Mexico")
State.create(name: "New York")
State.create(name: "North Carolina")
State.create(name: "North Dakota")
State.create(name: "Ohio")
State.create(name: "Oklahoma")
State.create(name: "Oregon")
State.create(name: "Pennsylvania")
State.create(name: "Rhode Island")
State.create(name: "South Carolina")
State.create(name: "South Dakota")
State.create(name: "Tennessee")
State.create(name: "Texas")
State.create(name: "Utah")
State.create(name: "Vermont")
State.create(name: "Virginia")
State.create(name: "Washington")
State.create(name: "West Virginia")
State.create(name: "Wisconsin")
State.create(name: "Wyoming")


User.create(name: "Gina", age: 27, password: "enzo", state_id: State.find_by(name: "Colorado").id)
User.create(name: "Sharon", age: 23, password: "fitz", state_id: State.find_by(name: "Wyoming").id)
User.create(name: "Hannah", age: 29, password: "lyla", state_id: State.find_by(name: "Georgia").id)
