<h1 align="center">
Resume Builder
</h1>



<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
* [Contributing](#contributing)



<!-- ABOUT THE PROJECT -->
## About The Project

This Project is for creating your own personal resume or **just try the app** by going to this. <h3>[Go To The App](https://tanmayresumebuild.herokuapp.com/login)</h3>


### Built With
* [Ruby](https://www.ruby-lang.org/en/)
* [Postgresql](https://www.postgresql.org/)
* [tailwindcss](https://tailwindcss.com/)



<!-- GETTING STARTED -->
## Getting Started

Follow the below steps to setup the app in your own linux machine .


* Update the packages
```sh
sudo apt update
```

* Install PostgreSQL and other development libraries:
```sh
sudo apt install -y curl gnupg2 dirmngr git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev postgresql postgresql-contrib libpq-dev
```

* Install NodeJs
```sh
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt install -y nodejs
```

* Install Yarn
```sh
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list 
sudo apt update && sudo apt install -y  yarn
```

* Install Rbenv
```sh
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash
```

* Add Rbenv to Path
```sh
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
```

* Install Ruby using Rbenv
```sh
rbenv install 3.0.2
rbenv global 3.0.2
```

* Install Bundler
```sh
gem install bundler
rbenv rehash
```

* Fire up Postgresql
```sh
sudo -u postgres -i
psql
```

* Setup Role
```sh
CREATE USER resume_builder SUPERUSER;
```

* Now close the terminal and open up a new terminal in the repository and run following
```sh
rails db:migrate
```

* Create the First User
```sh
rake db:seed
```

* Run the app
```sh
rails s
```

* Use this to login after running the app.

Email: `johndoe@example.com`
Password: `password`



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
3. Push to the Branch (`git push origin main`)
4. Open a Pull Request
