# ![](/app/assets/images/ga.png) SEI-34 Project 1: RECONNECT

Simple contacts manager app or phone book

This was developed as part of SEI 34 Project 1, the goal was to build a web application from scratch, with knowledge of front and back-end web development to produce an awesome web application that can be used by friends, family or any of the other billions of people who use the Internet. The type of web application I chose to create was completely up to me.

There were a few prerequisite conditions for the app, they are as follows:

- Models. Your app should have at least 3 models. Make sure they are associated correctly! (Contact, Group and User)
- Views. Use partials to DRY (Don’t Repeat Yourself) up your views.
  //TODO: refactor/dry up your code so that the nav bar at the top of the page and the left side nav bar (groups) is in `views/layouts/application.html.erb` instead of in every views template.
- Handles invalid data. Forms in your application should validate data and handle incorrect inputs. Validate sign up information, verify valid email addresses and secure passwords
- Use Gems Use a GEM that talks to an API to add functionality to your app.
- User Login. Make sure you have basic authentication and authorisation set up (if you need it).
- Heroku. Deploy your code to Heroku.

You can see the site [here](https://project1-shaneen-vitug.herokuapp.com/).

## Key Point

The codebase was built to minimise repeatable code.

### RECONNECT

---

#### Home

The home page shows your contacts list and groups. You can add, view, edit and delete a contact. You can also create a group and add the contacts to a specific group by clicking the edit button. You can select more than one group per contact. You can delete a group but the contacts in it will still be present.

---

#### User Login

Users are able to sign up an account and login.

---

**Languages:** HTML, CSS, Ruby and Javascript
**Frameworks:** Rails, Bootstrap
**Server:** Heroku
**Gems:** bootstrap, bootstrap-will_paginate gem, fake gem, cloudinary
**Other:** Font Awesome (icons)
