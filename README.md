# BookADuc API

Select your favorite Ducati bike and book an appointment to take it for a test ride! This is Microverse's final capstone project!

## Table of Contents

- [About this project](#About)
- [Live Version](#Live-version)
- [Technologies Used](#Technologies-Used)
- [Video](#Video)
- [Install and Run](#How-to-Install-and-Run-in-Your-Computer)
- [Acknowledgments](#Acknowledgments)
- [Author](#Author)
- [Show your support](#Show-your-support)

## About

This is the backend of the project. It is built with Ruby on Rails. You can use this [app](#link_to_front_end) to access it or build your own front-end.

The app uses 3 tables to save Users, Bikes, and Bookings. Authentication is implemented using JSON Web Token. Also implemented data serialization using the Active Model Serializer gem. The serializer allows returning all the related data in an organized format. Consequently, front-end apps do not have to make extra API requests to get the relevant data.

## Live version

A live version of the API is hosted on Heroku.

- [**BookADuc**](https://heroku/) @ Heroku

The user has to create an account to get access to the API. The following endpoints are implemented:

### Signup

- POST: `https://bookaduc-api.heroku.com/signup`
- Parameters: `{name: string, email: string, password: string}

[Up](#Table-of-Contents)

## Technologies Used

- Node.js
- React
- React-DOM
- React-Create-App
- React-Router-Dom
- Redux
- npm
- HTML/CSS
- ES6
- ESlint
- Netlify

[Up](#Table-of-Contents)

## Video

Here is a video explanation of the project

- [**Motogp**](https://www.loom.com/share/1d4c318ce48a43bcac3e2f1e5590911f) @ Loom

[Up](#Table-of-Contents)

## Screenshots

### Team Details

<p align="center">
<img src="src/assets/img/screenshot2.png">
</p>

### Mobile

<p align="center">
<img src="src/assets/img/screenshot3.png">
</p>

[Up](#Table-of-Contents)

## How to Install and Run in Your Computer

To run the scripts **npm** is required. To get npm you have to install [Node.js](https://nodejs.org). Follow the installation instructions for your system Mac, Linux or Windows.

Use your terminal and run the commands after each instruction.

| Command                                              | Description                                           |
| ---------------------------------------------------- | ----------------------------------------------------- |
| `git clone https://github.com/macnick/motogp-db.git` | Clone the repository to you computer                  |
| `cd rmotogp-db`                                      | Navigate to the newly created folder                  |
| `npm install`                                        | Install dependencies and launch browser with examples |
| `npm start`                                          | Makes the build and starts the development server     |
|                                                      | Press `Ctrl + c` to kill **http-server** process      |
| `http://localhost:3000`                              | Visit this link to use the motogp-db                  |

[Up](#Table-of-Contents)

## Acknowledgements

- [Microverse](https://www.microverse.org) software development school
- [Saheed Oladele](https://github.com/suretrust) code review
- [Louis Chia](https://github.com/shloch) code review
- [Sérgio Torres da Silveira Filho](https://github.com/Torres-ssf) code review

[Up](#Table-of-Contents)

## 👤 Author

## Nick Haralampopoulos

- Github: [@macnick](https://github.com/macnick)
- Twitter: [@mac_experts](https://twitter.com/mac_experts)
- Linkedin: [Nick Haralampopoulos](https://www.linkedin.com/in/nick-haralampopoulos/)
- AngelList: [Nick Haralampopoulos](https://angel.co/u/nick-haralampopoulos)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/macnick/motogp-db/issues).

1. Fork it (https://github.com/macnick/motogp-db/fork)
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Show your support

Give a ⭐️ if you enjoyed this project!

## 📝 License

This project is [MIT](lic.url) licensed.
