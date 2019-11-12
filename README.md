![IronDocs logo](https://github.com/ayerest/IronDocs/blob/master/app/assets/images/logo.png "IronDocs logo")

## IronDocs README

IronDocs is a project management tool built using Ruby on Rails, HTML, and CSS. Users can create new projects, add collaborators to work on projects together, and create/edit posts on their various projects. 

## Motivation

IronDocs was created as a quick, easy, and secure way to collaborate on a project with a partner or group.

## Tech/framework used

Built with:

* Ruby on Rails
  * MVC
  * OOP
  * SQLite3 Database
  * Gems:
    * Faker
    * RedCarpet
    * Bcrypt
* HTML5
* CSS

## Features

* Login authentication with BCrypt 

![Login screen](https://github.com/ayerest/IronDocs/blob/master/app/assets/images/login.png "IronDocs Login Screen view")

* Stats screen available for all users

![IronDocs stats screen](https://github.com/ayerest/IronDocs/blob/master/app/assets/images/irondocsstats.png "IronDocs stats screen")

* Write posts using markdown formatting (thanks to the [RedCarpet Ruby Gem](https://github.com/vmg/redcarpet))
![Markdown formatting key on new post form](https://github.com/ayerest/IronDocs/blob/master/app/assets/images/markdownkey.png "Key provided on new post form for markdown formatting")

* Search and add friends as collaborators
  * Previous collaborators prioritized in friends list
  * Logic to add shared projects/posts to collaborator account

* Copy a post to another project

* Search for public projects

![Public post search view](https://github.com/ayerest/IronDocs/blob/master/app/assets/images/searchpublicproject.png "Search for public posts (available to logged in and logged out users")

* Add urgency to posts - most urgent posts are prioritized at the top of the user's profile page
  * Posts are color-coded by urgency 

![Color coded urgency flags for posts](https://github.com/ayerest/IronDocs/blob/master/app/assets/images/colorcodedposturgency.png "Posts have a red header if they are flagged as urgent, orange, yellow, green, and blue for less urgent down to no urgency")
  * Due date functionality - posts that are due soon or past due have increased urgency

* Full CRUD for posts and projects

![Post view screen](https://github.com/ayerest/IronDocs/blob/master/app/assets/images/postscreen.png "post view screen")
  * Projects can only be deleted when the last collaborator leaves the project

## Credits

Created in partnership with [Nick Dunlap](https://github.com/nwdunlap17).
