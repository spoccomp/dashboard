Project Title: Dashboard 
Desciption: 
This dashboard was developed to be utilized for a school but could be implemented to just about anything that would use a dashboard style application.
The dashboard provides a secure login to access the application. Once logged in the user/administrator has the abilities to create resources such as students, teahcers, courses and cohorts. Once the resources are established the user/administrator can add resources to the cohort.  The cohort gives the ability to create a class that consists of a teacher, a course, start dates, end dates, and of course students. Each resource can be updated and or deleted.

Technology used:
Ruby, ruby on rails for the backend frame work. AJAX to delete resources. BOOTSTRAP, HTML, CSS, JS for the frontend. Postgresql with Postico and pgModeler 2 to assist with the database creation, validation and associations.

Test login: example@example.com password: password

Install:  
Standard rails GEMFILE, include bcrypt gem for secure login and pg gem to utilize Postgresql.
The following CDN to be added to your layout page: 
    <%# adds google fonts %>
    <link href="https://fonts.googleapis.com/css?family=Roboto|Roboto+Condensed|Roboto+Mono" rel="stylesheet">
    <%# the below two links are for bootstrap cdn %>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css">
    
This will give you the ability to use Bootstrap and Google fonts in your application.

Contributors:
Richard J Trapanese

Inspiration:
Just coding!

