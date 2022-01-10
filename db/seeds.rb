require "faker"
real_addresses = Array[
    {
        "address1": "1745 T Street Southeast",
        "address2": "",
        "city": "Washington",
        "state": "DC",
        "postalCode": "20020",
        "coordinates": {
            "lat": 38.867033,
            "lng": -76.979235
        }
    },
    {
        "address1": "6007 Applegate Lane",
        "address2": "",
        "city": "Louisville",
        "state": "KY",
        "postalCode": "40219",
        "coordinates": {
            "lat": 38.1343013,
            "lng": -85.6498512
        }
    },
    {
        "address1": "560 Penstock Drive",
        "address2": "",
        "city": "Grass Valley",
        "state": "CA",
        "postalCode": "95945",
        "coordinates": {
            "lat": 39.213076,
            "lng": -121.077583
        }
    },
    {
        "address1": "150 Carter Street",
        "address2": "",
        "city": "Manchester",
        "state": "CT",
        "postalCode": "06040",
        "coordinates": {
            "lat": 41.76556000000001,
            "lng": -72.473091
        }
    },
    {
        "address1": "2721 Lindsay Avenue",
        "address2": "",
        "city": "Louisville",
        "state": "KY",
        "postalCode": "40206",
        "coordinates": {
            "lat": 38.263793,
            "lng": -85.700243
        }
    },
    {
        "address1": "18 Densmore Drive",
        "address2": "",
        "city": "Essex",
        "state": "VT",
        "postalCode": "05452",
        "coordinates": {
            "lat": 44.492953,
            "lng": -73.101883
        }
    },
    {
        "address1": "637 Britannia Drive",
        "address2": "",
        "city": "Vallejo",
        "state": "CA",
        "postalCode": "94591",
        "coordinates": {
            "lat": 38.10476999999999,
            "lng": -122.193849
        }
    },
    {
        "address1": "5601 West Crocus Drive",
        "address2": "",
        "city": "Glendale",
        "state": "AZ",
        "postalCode": "85306",
        "coordinates": {
            "lat": 33.6152469,
            "lng": -112.179737
        }
    },
    {
        "address1": "5403 Illinois Avenue",
        "address2": "",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37209",
        "coordinates": {
            "lat": 36.157077,
            "lng": -86.853827
        }
    },
    {
        "address1": "8821 West Myrtle Avenue",
        "address2": "",
        "city": "Glendale",
        "state": "AZ",
        "postalCode": "85305",
        "coordinates": {
            "lat": 33.5404296,
            "lng": -112.2488391
        }
    },
    {
        "address1": "2203 7th Street Road",
        "address2": "",
        "city": "Louisville",
        "state": "KY",
        "postalCode": "40208",
        "coordinates": {
            "lat": 38.218107,
            "lng": -85.779006
        }
    },
    {
        "address1": "6463 Vrain Street",
        "address2": "",
        "city": "Arvada",
        "state": "CO",
        "postalCode": "80003",
        "coordinates": {
            "lat": 39.814056,
            "lng": -105.046913
        }
    },
    {
        "address1": "87 Horseshoe Drive",
        "address2": "",
        "city": "West Windsor",
        "state": "VT",
        "postalCode": "05037",
        "coordinates": {
            "lat": 43.4731793,
            "lng": -72.4967532
        }
    },
    {
        "address1": "60 Desousa Drive",
        "address2": "",
        "city": "Manchester",
        "state": "CT",
        "postalCode": "06040",
        "coordinates": {
            "lat": 41.7409259,
            "lng": -72.5619104
        }
    },
    {
        "address1": "4 Old Colony Way",
        "address2": "",
        "city": "Yarmouth",
        "state": "MA",
        "postalCode": "02664",
        "coordinates": {
            "lat": 41.697168,
            "lng": -70.189992
        }
    },
    {
        "address1": "314 South 17th Street",
        "address2": "",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37206",
        "coordinates": {
            "lat": 36.1719075,
            "lng": -86.740228
        }
    },
    {
        "address1": "1649 Timberridge Court",
        "address2": "",
        "city": "Fayetteville",
        "state": "AR",
        "postalCode": "72704",
        "coordinates": {
            "lat": 36.084563,
            "lng": -94.206082
        }
    },
    {
        "address1": "5461 West Shades Valley Drive",
        "address2": "",
        "city": "Montgomery",
        "state": "AL",
        "postalCode": "36108",
        "coordinates": {
            "lat": 32.296422,
            "lng": -86.34280299999999
        }
    },
    {
        "address1": "629 Debbie Drive",
        "address2": "",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37076",
        "coordinates": {
            "lat": 36.208114,
            "lng": -86.58621199999999
        }
    },
    {
        "address1": "22572 Toreador Drive",
        "address2": "",
        "city": "Salinas",
        "state": "CA",
        "postalCode": "93908",
        "coordinates": {
            "lat": 36.602449,
            "lng": -121.699071
        }
    },
    {
        "address1": "3034 Mica Street",
        "address2": "",
        "city": "Fayetteville",
        "state": "AR",
        "postalCode": "72704",
        "coordinates": {
            "lat": 36.0807929,
            "lng": -94.2066449
        }
    },
    {
        "address1": "3729 East Mission Boulevard",
        "address2": "",
        "city": "Fayetteville",
        "state": "AR",
        "postalCode": "72703",
        "coordinates": {
            "lat": 36.0919353,
            "lng": -94.10654219999999
        }
    },
    {
        "address1": "5114 Greentree Drive",
        "address2": "",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37211",
        "coordinates": {
            "lat": 36.0618539,
            "lng": -86.738508
        }
    }
]
number_and_street = Array["2415 Ch Ste-Foy","110 Grande Allée O","255 Av. Brock S","2250 Rue Guy","1020 Enterprise Way","3201 Jefferson Ave","425 St SW","1050 Côte du Beaver Hall","6869 Boul Métropolitain E","800 Boulevard René-Lévesque O","1800 Owens St","5505 Boul. Saint-Lauren" ]
suite_or_appartment = Array["2","4","6","12","","","1","","","","","2000"]
city = Array["Quebec","Quebec","Montreal","Montreal","Sunnyvale","Redwood City","Calgary","Montreal","Saint-Léonard","Montreal","San Francisco","Montreal"]
postal_code = Array["G1V 1T1","G1R 2G8","H4X 0A3","H3H 2M3","94089","94062","T2P 3L8","H3B 5B4","H1P 1X8","H3B 1Y8","94158","H2T 1S6"]

first_name = Array["Nicolas","Nadya","Martin","Mathieu","Patrick" ,"David","Mathieu","Thomas","Serge","Francis","Mathieu","David","Nicolas","David","Remi","Timothy","Kiril","Emmanuela","Abdul","Krista","Jonathan"]
last_name = Array["Genest","Fortier","Chantal","Houde","Thibault","Boutin","Lortie","Carrier","Savoie","Patry-Jessop","Lefrancois","Larochelle","Pineault","Amyot","Gagnon","Wever","Kleinerman","Derilus","Akeeb","Sheely","Murray"]
title = Array["CEO","Director","Assistant Director" ,"Captain","Captain","Engineer","Engineer","Engineer","Enigneer","Engineer","Engineer","Engineer","Engineer","Engineer","Engineer","Developer","Developer","Developer","Developer","Developer","Developer"]
email = Array["nicolas.genest@codeboxx.biz","nadya.fortier@codeboxx.biz","martin.chantal@codeboxx.biz","mathieu.houde@codeboxx.biz","patrick.thibault@codeboxx.biz","david.boutin@codeboxx.biz","mathieu.lortie@codeboxx.biz","thomas.carrier@codeboxx.biz","serge.savoie@codeboxx.biz","francis.patry-jessop@codeboxx.biz","mathieu.lefrancois@codeboxx.biz","david.larochelle@codeboxx.biz","nicolas.pineault@codeboxx.biz","david.amyot@codeboxx.biz","remi.gagnon@codeboxx.biz","timothy.wever@codeboxx.biz","kiril.kleinerman@codeboxx.biz","emmanuela.derilus@codeboxx.biz","abdul.akeeb@codebozz.biz","krista.sheely@codeboxx.biz","jonathan.murray@codeboxx.biz"]


for i in 0...first_name.length()
    employee = Employee.new(first_name:first_name[i], last_name:last_name[i], title:title[i], email:email[i])
    user = User.new(
        email: email[i], 
        password:Faker::Alphanumeric.alphanumeric(number: 6),
        remember_created_at:Faker::Date.between(from: 3.years.ago, to: Date.today),
        admin: true
    )
    user.save
    employee.save
    puts "Employee #{employee.id} and corresponding user #{user.id} has been created successfully"
 
end


id = 1
real_addresses.each do |address|

    puts address[:address1]
   
    saved_address = Address.create(
        type_of_address: ["Home","Business","Billing","Shipping","Contact"].sample,
        status: ["Verified","Partially","Unverified","Ambiguous","Conflict","Reverted"].sample,
        entity: ["Customer","Lead","Building"].sample,
        country: "US",
        number_and_street: address[:address1],
        city: address[:city],
        postal_code: address[:postalCode],
        notes:Faker::Lorem.paragraph,
        building_id: id
    ) 
    puts "Address #{saved_address.id} created successfully"   
    building = Building.create(
        address_id: saved_address.id,
        name_administrator_building:Faker::Name.name,
        email_administrator_building:Faker::Internet.email,
        phone_administrator_building:Faker::PhoneNumber.phone_number,
        name_technical_building:Faker::Name.name,
        email_technical_building:Faker::Internet.email,
        phone_technical_building:Faker::PhoneNumber.phone_number,
        customer_id: rand(1..15),
    )
    puts "Building #{building.id} created successfully"
    building_details = BuildingDetail.create(
        information_key: "Contruction Year", 
        value: Faker::Number.between(from: 1980, to: 2020) ,
        building_id: building.id,
        number_of_floors: Faker::Number.between(from: 5, to: 75),
        building_type:["Residential","Commercial","Corporate","Hybrid"].sample,
        department: ["Marketing","Webdesign","Architecture"].sample,
        year_of_contruction:Faker::Number.between(from: 1980, to: 2020) ,
        maximum_number_of_occupants: Faker::Number.between(from: 50, to: 500),
    )
    puts "Building Details #{building_details.id} created successfully"
   
    for i in 1..rand(1..2) do 

        employeeId = rand(4..21)
        battery = Battery.create(
            Type: "string",
            Status:["Online","Offline","Intervention"].sample,
            Operation_Certificate:Faker::Lorem.paragraph,
            Information:Faker::Lorem.paragraph,
            Notes:Faker::Lorem.paragraph,
            building_id: building.id,
            employee_id: employeeId ,
            Creation_Date:Faker::Date.between(from: 3.years.ago, to: 2.years.ago),
            Last_Inspect:Faker::Date.between(from: 2.years.ago, to: Date.today),
        )
        puts "Battery #{battery.id} created successfully"
        rand(1..4).times do
            column = Column.create(
                battery_id: battery.id,
                type_of_building: "same as battery",
                number_of_floors_served: Faker::Number.between(from: 5, to: 75),
                status:["Online","Offline","Intervention"].sample,
                information:Faker::Lorem.sentence,
                notes:Faker::Lorem.paragraph,
            )
            puts "Column #{column.id} created successfully"
            rand(1..6).times do
                
                elevator = Elevator.create(
        
                    column_id:column.id,
                    serial_number:Faker::Number.number(digits: 9),
                    model:["Standard ","Premium","Excelium"].sample,
                    type_of_building: "same as battery",
                    status:["Online","Offline","Intervention","Idle"].sample,
                    date_of_commissioning:Faker::Date.between(from: 3.years.ago, to: Date.today),
                    date_of_last_inspection:Faker::Date.between(from: 1.years.ago, to: Date.today),
                    certificate_of_inspection:Faker::Number.number(digits: 6),
                    information:Faker::Lorem.paragraph,
                    notes:Faker::Lorem.paragraph
                )
                puts "Elevator #{elevator.id} created successfully"
            end
        end
    end
    id += 1
end
cstmr_id = 1
15.times do
    customer = Customer.create(
        customer_creation_date:Faker::Date.between(from: 3.years.ago, to: Date.today),
        company_name:Faker::Company.name,
        company_contact:Faker::Name.name,
        company_email:Faker::Internet.email,
        company_description:Faker::Lorem.paragraph,
        service_technical_authority_name:Faker::Name.name,
        technical_authority_phone:Faker::PhoneNumber.phone_number,
        service_technical_authority_email:Faker::Internet.email,
        
    )
    user = User.create(
        email: customer.company_email, 
        password: Faker::Alphanumeric.alphanumeric(number: 6),
        remember_created_at: Faker::Date.between(from: 3.years.ago, to: Date.today),
        admin: false
    )
    puts "Customer #{customer.id} and corresponding user #{user.id} created successfully"
    lead = Lead.create(
        full_name_contact: customer.company_contact,
        company_name: customer.company_name,
        email: customer.company_email,
        phone: Faker::PhoneNumber.phone_number,
        project_name:Faker::Company.buzzword,
        project_description:Faker::Lorem.paragraph,
        department:["Marketing","Webdesign","Architecture"].sample,
        message:Faker::Lorem.paragraph,
        request_date:Faker::Date.between(from: 3.years.ago, to: Date.today)
    )
    puts "Lead #{lead.id} for customer created successfully"
    cstmr_id += 1
end
30.times do 
    user = User.create( 
        email:Faker::Internet.email,
        password:Faker::Alphanumeric.alphanumeric(number: 6),
        remember_created_at:Faker::Date.between(from: 3.years.ago, to: Date.today),
        admin: false
    )  
    puts "Extra user #{user.id} created successfully"
end    

130.times do
    lead = Lead.new(
        full_name_contact:Faker::Name.name ,
        company_name:Faker::Company.name,
        email:Faker::Internet.email,
        phone:Faker::PhoneNumber.phone_number,
        project_name:Faker::Company.buzzword,
        project_description:Faker::Lorem.paragraph,
        department:["Marketing","Webdesign","Architecture"].sample,
        message:Faker::Lorem.paragraph,
        request_date:Faker::Date.between(from: 3.years.ago, to: Date.today)
    )
    puts "Lead #{lead.id} created successfully"
end


400.times do
    quote = Quote.create(
        building_type:["Residential","Commercial","Corporate","Hybrid"].sample,
        company_name:Faker::Company.name,
        company_email:Faker::Internet.email,
        amount_of_elevator:Faker::Number.between(from: 1, to: 75),
        user_id:Faker::Number.between(from: 1, to: User.count)
    )
    puts "Quote #{quote.id} created successfully"
end

200.times do 
    elevator = Elevator.all.sample
    start = Faker::Date.between(from: 3.years.ago, to: Date.today)
    endt = [start + rand(1..5).days, start + rand(1..4).weeks, start + rand(1..12).months, ""].sample
    intervention = FactIntervention.create(
        employee_id: Faker::Number.between(from: 4, to: Employee.count),
        building_id: elevator.column.battery.building.id,
        battery_id: elevator.column.battery.id,
        column_id: elevator.column.id,
        elevator_id: elevator.id,
        intervention_start_date_time: start,
        intervention_end_date_time: endt,
        result: ["Success", "Failure", "Incomplete"].sample,
        report: [Faker::Lorem.paragraph, Faker::Lorem.paragraph, ""].sample,
        status_opt: ["Pending", "InProgress", "Interrupted", "Resumed", "Complete"].sample
    )
    puts "Intervention #{intervention.id} created successfully"
end

# FactElevator.getElevatorsData
FactContact.getContactsData
FactQuote.getQuotesData

