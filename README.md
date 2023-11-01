
# Take Home Challenge (Back end Repo)



## About This Project
### Requirements:
At a minimum, you must create:

An endpoint to subscribe a customer to a tea subscription
An endpoint to cancel a customer’s tea subscription
An endpoint to see all of a customer’s subsciptions (active and cancelled)
Beyond the base requirements, include any additional endpoints you’d like, but be mindful of your time. You don’t need to go overboard, consider what might be necessary to achieve MVP so that this API is easy to understand and consume by a Frontend Developer.

### Things we'll be looking for:
- A strong understanding of Rails
- Ability to create restful routes
- Demonstration of well-organized code, following OOP
- Test Driven Development
- Clear documentation
Try to limit your total time to approximately 8 hours on this project. Prioritize what is important to completing MVP and demonstrating your capabilities as a developer. If you are looking for a stretch option, you can consume this API for tea product information: Spoontacular API
                    
## Purpose

To show a strong understanding with Ruby on Rails.

## Built With
![Ruby](https://img.shields.io/badge/ruby-%23CC342D.svg?style=for-the-badge&logo=ruby&logoColor=white)</br>
![Postgresql](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)</br>
![Rails](https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white)</br>
![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)</br>
![Postman Badge](https://img.shields.io/badge/Postman-FF6C37?logo=postman&logoColor=fff&style=for-the-badge)</br>


## Running On
  - Rails 7.0.8
  - Ruby 3.2.2

## <b>Getting Started</b>

To get a local copy, follow these simple instructions

### <b>Installation</b>

1. Fork the Project
2. Clone the repo 
``` 
git clone git@github.com:jpnelson85/take_home_challenge_be.git
```
3. Install the gems
```
bundle install
```
4. Create the database
```
rails db:{create,migrate}
```
5. Create your Feature Branch 
```
git checkout -b feature/AmazingFeature
```
6. Commit your Changes 
```
git commit -m 'Add some AmazingFeature' 
```
7. Push to the Branch 
```
git push origin feature/AmazingFeature
```
8. Open a Pull Request

## Endpoints Used
'''
POST Request {title: String, price_dollars: Float, frequency_by_months: Integer, customer_id: Integer, tea_id Integer, status: String}
Response {
    "data": {
        "id": "910",
        "type": "subscription",
        "attributes": {
            "title": "Green Tea_john_doe5",
            "price_dollars": 10.0,
            "frequency_by_months": 1,
            "status": "active",
            "tea": 827,
            "customer": 797
        }
    }
}
'''
'''
PATCH Request {email: String, title: String, status: String}
Response {
    "data": {
        "id": "910",
        "type": "subscription",
        "attributes": {
            "title": "Green Tea_john_doe5",
            "price_dollars": 10.0,
            "frequency_by_months": 1,
            "status": "active",
            "tea": 827,
            "customer": 797
        }
    }
}
'''
'''
GET Request {email: String}
{
    "data": [
        {
            "id": "694",
            "type": "subscription",
            "attributes": {
                "title": "Green Tea_john_doe",
                "price_dollars": 10.0,
                "frequency_by_months": 1,
                "status": "active",
                "tea": "Green Tea",
                "customer": "jdoe@gmail.com"
            }
        },
        {
            "id": "695",
            "type": "subscription",
            "attributes": {
                "title": "\"Green Tea_john_doe2\"",
                "price_dollars": 10.0,
                "frequency_by_months": 1,
                "status": "active",
                "tea": "Green Tea",
                "customer": "jdoe@gmail.com"
            }
        },
        {
            "id": "696",
            "type": "subscription",
            "attributes": {
                "title": "\"Green Tea_john_doe3\"",
                "price_dollars": 10.0,
                "frequency_by_months": 1,
                "status": "active",
                "tea": "Green Tea",
                "customer": "jdoe@gmail.com"
            }
        },
        {
            "id": "909",
            "type": "subscription",
            "attributes": {
                "title": "\"Green Tea_john_doe4\"",
                "price_dollars": 10.0,
                "frequency_by_months": 1,
                "status": "active",
                "tea": "Green Tea",
                "customer": "jdoe@gmail.com"
            }
        },
        {
            "id": "910",
            "type": "subscription",
            "attributes": {
                "title": "Green Tea_john_doe5",
                "price_dollars": 10.0,
                "frequency_by_months": 1,
                "status": "active",
                "tea": "Green Tea",
                "customer": "jdoe@gmail.com"
            }
        }
    ]
}
'''


## Contributing
git@github.com:jpnelson85/take_home_challenge_be.git
Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.


- Jeff Nelson [![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white) ](https://github.com/jpnelson85) [![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white) ](https://www.linkedin.com/in/jeff-nelson-307aba45/)
