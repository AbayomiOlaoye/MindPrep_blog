

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 MindPrep Blog <a name="about-project"></a>

**MindPrep Blog** is a classic example of a blog website, created as a fully functional website that shows the list of posts and empowers readers to interact with them by adding comments and liking posts.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://reactjs.org/">HTML</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://expressjs.com/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- Fully functional website
- Leverages RDMS (PostgreSQL)
- Mini Design
- Input SQL queries with ActiveRecord
- Implement preprocessed HTML file with embedded Ruby code.
- Use layouts and templates for shared content.
- Write unit tests for models.
- Secure app from n+1 problems.
- Use validations for models.


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

This section will be updated as soon as it is ready.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

### Prerequisites
In order to run this project you need:
- IDE or code editor: **VsCode, atom, sublime**...
- To have [Ruby](https://www.ruby-lang.org/en/), [RoR gem](https://rubyonrails.org/) and [Git](https://git-scm.com/) installed on your system.

## Setup

### Setting Up PostgreSQL
- The postgres installation doesn't setup a user for you, so you'll need to follow these steps to create a user with permission to create databases
```bash
$  sudo -u postgres createuser mindprep -s
```

### Clone this repository
Clone this project on your local machine using the following command on your terminal:
```sh
  git clone https://github.com/abayomiolaoye/MindPrep_blog.git
  cd MindPrep_blog
```

### Install linter
```bash
$  bundle init
$  bundle install
```
- Run linter
```bash
$  rubocop .
```
- In auto-correct mode, RuboCop will try to automatically fix offenses:
```bash
$ rubocop -A
# or
$ rubocop --auto-correct-all
```

### Create the database
```bash
$   rails db:create   # or
$   rake db:create
```
### Starting up the Web Server
```bash
$   rails s # or
$   rails server
```
#### Generate Controller
- We need a Controller. Since everything goes through that, let's go ahead and generate one:
```bash
$  rails generate rspec:install
```
- This should give us a Controller and a View
#### Listing Existing Routes
- You can now visit `http://localhost:3000` to view your new website!
 You can also execute the `rails routes` command in your terminal to produce the same output.
#### Generate rspec
- At the first you need to include those lines in your Gemfile
```bash
  gem 'rails-controller-testing'
  gem 'rspec-rails'
```

```bash
$  rails generate rspec:install
```
- This should generate some files that you will need to run your tests
- Then run:

```bash
$  rspec spec     # to test if your tests are passed
```

#### Generate migration files

```bash
  $  rails generate migration CreateUsers
  $  rails generate migration CreatePosts
  $  rails generate migration CreateLikes
  $  rails generate migration CreateComments
  $  rails generate migration AddUserRefToComments
  $  rails generate migration AddPostRefToComments
  $  rails generate migration AddUserRefToLikes
  $  rails generate migration AddPostRefToLikes
  $  rails generate migration AddUserRefToPosts
```
#### Generate model
```bash
  $  rails generate model User name  photo bio:text posts_counter:integer
  $  rails generate model Post  title  text:text comments_counter:integer likes_counter:integer author:references
  $  rails generate model Like author:references post:references
  $  rails generate model Comments text:text author:references post:references
```
#### Generate model
```bash
  $  rails generate model User name  photo bio:text posts_counter:integer
  $  rails generate model Post  title  text:text comments_counter:integer likes_counter:integer author:references
  $  rails generate model Like author:references post:references
  $  rails generate model Comments text:text author:references post:references
```
#### Generate Schema
- To push the Migration into the database
```bash
  $   rails db:migrate
```
- We use the seeds.rb file to records in the database
- To drop, create a table and to migrate and send the seed into the database:
```bash
  $   rails db:drop db:create db:migrate db:seed
```
- To check available routes
```bash
  $   rails routes
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Oluwatoyin Olaoye**

- GitHub: [@Olaoye](https://github.com/abayomiolaoye)
- Twitter: [@Olaoye](https://twitter.com/olaoyeelijah)
- LinkedIn: [Oluwatoyin Olaoye](https://linkedin.com/in/oluwatoyinolaoye)

👤 **Sammuel LEKPOR**

- GitHub: [@Samuellekpor](https://github.com/Samuellekpor)
- Twitter: [@samuel_lekpor](https://twitter.com/samuel_lekpor)
- LinkedIn: [sammuel-lekpor](https://linkedin.com/in/sammuel-lekpor)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] Use React for the Views
- [ ] Implement some mmotions and transitions

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project, a star will be appreciated.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank Paul Mosanya for his unquantifiable contributions

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
