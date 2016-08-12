# WDI LONDON 21 PROJECT2

##About
Love Underground is a web application I built in Rails 5 for my second project at General Assembly. It is a personal advertisment and dating website inspired by the London Underground which allows users make posts looking for their "missed connections", link them to specific tube stations and message other users. 

This web application uses:

- RESTful routes.
- User authentication.
- Multiple database models.

I had originally built a prototype of this website for a weekend homework assignment in Sinatra, but I felt that I did not have sufficient time to make it as fully-featured. Below is a screenshot of the original sinatra app. 

![](md-images/missed-connections.jpeg?raw=true)

Doing this project in Rails provided me with an opportunity to do this adding features such as:

- Image uploads for profile pictures.
- User messaging
- Admin authentication
- New branding
- Search filtering

Below are screenshots of the new Rails 5 version of the app.

![](md-images/cover.png?raw=true)

![](md-images/rootpath.png?raw=true)


##Planning

I created my entity relationship diagram using draw.io to help me plan my database structure.

![](md-images/erd.png?raw=true)

To organise my workflow I used a Trello board as my main project management tool.

![](md-images/trello.png?raw=true)

To design the web app I used balsamiq to sketch my responsive wireframes.

![](md-images/mobile-wireframes.png?raw=true)

![](md-images/desktop-wireframes.png?raw=true)

##Technologies used

- Rails 5
- [Bootstrap 3](http://getbootstrap.com/)
- [Bootstrap Datetime Picker](https://eonasdan.github.io/bootstrap-datetimepicker/)
- [Select2](https://select2.github.io/)
- [Animate.css](https://daneden.github.io/animate.css)

Additional gems include

- Devise
- Carrierwave
- Rmagick

##Challenges
Some issues encountered while doing this project include:

###Duplicate Selection with Select2

When editing a post the multi-select box was duplicating selected entries. Although the data was being updated and saved in the database correctly, on the front-end there were duplicate DOM elements. This was resolved by using front-end JS to map through and remove duplicate elements.

###2 Devise Default Behaviours

Although Devise was very helpful in quickly setting up user authentication, it does have some default behaviour which I had to research how to override, such as creating a new controller to change the redirect path after a user edit's their profile.

I wanted admin's to have access to edit users' accounts, however this would require changing the way devise routes user edit pages which I did not have sufficient time to look into for this project.

###3 Datetimepicker

When using the datetimepicker, when populating an input field with the datetimepicker, the value stored in the database was not displaying correctly. This was due to the date/time format not being passed into the JS function which was not specified in the documentation. 

##Additional features

If I had more time I would have liked to have implemented the following features:

- Pagination
- Admin control of user accounts.
- Real-time messaging.


