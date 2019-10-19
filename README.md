# Invite

Invite is a landing page for events. 

Invite is created with a React with Redux frontend and a Rails API backend with a PostgreSQL database. Please find the Invite client repository [here](https://github.com/natjng/invite-client).

Users can sign up or login with their email address to start using Invite. Users can host events by creating an event and be an event guest by RSVPing to other users' events.

## Installation

Clone repository. 

In your terminal, cd to the cloned file. 

Run `bundle install`, `rails db:create`, and `rails db:migrate`. 

You may also run `rails db:seed` to seed the database with some starter data.

Run `rails s` to start your server and visit [http://localhost:3000](http://localhost:3000).

## Usage

The Invite API works with the [Invite client](https://github.com/natjng/invite-client) to retrieve and persist user and event data. Please follow the Invite client README for installation instructions.

On the home page, a user can get started by creating an account with an email address. 

Upon successful account creation, the user will be logged in and brought to their dashboard where they can choose to create a new event or view existing events. 

## Features

**User:**
- Can create events
- The user creating the event is the event host
- Can RSVP to other users' events as a guest
- Can cancel RSVP by navigating to the event and clicking 'Cancel'
- Can navigate to the 'Events' page to view all events on Invite
- Can toggle 'Events' / 'Attending' or 'Hosting' to view events the user has RSVP'd to or events the user is hosting
- Can edit profile

**Event:**
- Event belongs to a host
- Event can have many guests
- When user is logged in, event card/event shows whether the current user is the event host or if the event has been RSVP'd to

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/natjng/invite-api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Invite project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/natjng/invite-api/blob/master/CODE_OF_CONDUCT.md).