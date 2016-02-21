Scraping The Student Site

Object Oriented Student Scraper
Objectives

Build two classes, a class that is responsible for scraping data from a web page and a class that uses that data to instantiate new objects.
Understand the contents of a third class that is responsible for the command line interface.
Use metaprogramming to instantiate new instances of a class and add attributes to instances of a class.
Overview

In this lab, you'll be scraping your Learn.co student website. You'll use the index page to grab a list of current students and instantiate a series of Student objects. You'll scrape the individual profile pages of each student to add attributes to each individual student.

We've given you a third class, CommandLineInterface That is responsible for generating students using both the Student and Scraper classes. As you go through this lab, take some time to read through the code in the CommandLineInterface class. Try to understand how it works and how it uses the code in our other classes to actually create, add attributes and display students to the user via the command line interface.

We've also given you an executable file in bin/run that you can execute once you get your tests passing to see your code in action!