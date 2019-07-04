# MakersBnB - Teamfour

MakersBnb is a web application that allows users to list spaces they have available, and to hire spaces for the night.

## User Stories

```
As a user,
So that I can list a new space,
I want to sign up to MakersBnB.

As a user who has a space,
So that I can earn some extra money on my space,
I want to list it on MakersBnB.

As a user who has several spaces,
So that I can earn even more money on my spaces,
I want to be able to list multiple spaces.

As a user with lots of spaces,
So that I can better market my spaces,
I want to name my space.

As a user with lots of spaces,
So that I can better market my spaces,
I want to provide a short description.

As a user with lots of spaces,
So that I can better market my spaces,
I want to add a price per night for each space.

As a user who has a space,
So that I don't double a book a space,
I want to know if a space is available.

As a user,
So that I don't book a space that is already booked,
I want to not be able to book a space that is not available.

As a user who has a space,
So that I can offer the correct availability,
I want to offer a range of dates where the space is available.

As a user,
So that I can book accommodation,
I want to request to hire a space for one night.

As a user who has a space,
So that I can confirm my space is available,
I want to approve requests to hire.

As a user who has a space,
So that I can control who stays in my space,
I want to keep my space available to be booked until I confirm a booking request.
```


## Team comments

Our goal at the start of this project was to build this app using as much JavaScript :coffee: and as little Ruby :gem: as possible.

We wanted to use node.js as our controller with our logic/model written in JavaScript and dynamically load webpage elements with an AJAX engine. We would use TypeORM to communicate with our database.

However, we decided to change this design as we recognised a couple of gaps in our knowledge;
1. How node would work as a controller.
2. We didn't know a JavaScript testing framework that would allow us to write feature tests in the same way Capybara does in RSpec.

As it would have taken a lot of research to fill these knowledge holes, we chose to use Ruby for our controller, using Sinatra as we had done in previous challenges.

After two days of working with this new model, we ran into issues using our chosen ORM in JavaScript and decided to revert to using Ruby in the backend. We are now using DataMapper instead of TypeORM.

### Members

Teamfour is comprised of:

* Luigi Palermo
* Monika Kaczanowska
* Leon Linton
* Rhys Collier
