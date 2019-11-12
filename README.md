![IronDocs logo](https://github.com/ayerest/IronDocs/blob/master/app/assets/images/logo.png "IronDocs logo")

## IronDocs README

IronDocs is a project management tool built using Ruby on Rails, HTML, and CSS. Users can create new projects, add collaborators to work on projects together, and create/edit posts on their various projects. 

## Motivation

IronDocs was created as a quick, easy, and secure way to collaborate on a project with a partner or group.

## Screenshots

*WIP - Include logo/demo screenshot etc.*

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
* Write posts using markdown formatting (thanks to the [RedCarpet Ruby Gem](https://github.com/vmg/redcarpet))
* Search and add friends as collaborators
  * Previous collaborators prioritized in friends list
* Search for public projects
* Add urgency to posts - most urgent posts are prioritized at the top of the user's profile page
  * Posts are color-coded by urgency
  * Due date functionality - posts that are due soon or past due have increased urgency
* Full CRUD for posts and projects
  * Projects can only be deleted when the last collaborator leaves the project

## Credits

Created in partnership with [Nick Dunlap](https://github.com/nwdunlap17).
