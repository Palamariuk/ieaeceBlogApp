

# ieaeceBlog web application

## Tasks: 

* [x] getting started - 5 (https://guides.rubyonrails.org/getting_started.html)
* [x] pagination - 2 (use gem will_paginate and manually at the beginning)
* [x] authentication - 2 (use gem devise)
* [x] authorization - 3 (manually check if this user can change or delete a specific post)
* [x] administrator mode - 1 (manually add column "is_admin" to accounts table and check if user can perform some actions)
* [x] searching - 2 (manually execute query on db and take only posts that have specific word (or its beginning))
* [x] images - 2 (add column for storing link to a photo and use it in view)
* [x] cloud - 2 (store all the photos at Cloudinary)
* [x] filtering by category - 2 (add category column in posts table and show only posts with specific category)
* [x] docker - 3 (last commit, set docker-compose up for the project)

### Extra tasks: 

+ likes (manually create table that storing article_id and account_id)
+ sorting asc/desc by created_at (perform query on a db to order articles by created_at field)

## Total for now: 

​			24 points / 20 + points for extra tasks



# Main page of the blog:

<img src="./images/photo_2021-05-24_21-57-07.jpg" alt="image-20210525224224385" style="zoom:80%;" />



# A lot of screens about my blog



+ Searching, sorting and filtering form + pagination: 

![pic1](./images/pic1.jpg)



+ Sorting articles asc by created_at

  ![pic2](./images/pic2.jpg)

  

+ Article with category Scientific 

  ![pic3](./images/pic3.jpg)

  

+ Creating new article (on photo from local storage)

  ![pic4](./images/pic4.jpg)

  

  

+ Show article page

  ![pic5](./images/pic5.jpg)

  

+ Likes and comments

  ![pic6](./images/pic6.jpg)

  

+ The new article on the main page 

  ![pic7](./images/pic7.jpg)

  

+ Search article with "Test" word

  ![pic8](./images/pic8.jpg)

  

+ The photo is stored on a cloud

  ![pic9](./images/pic9.jpg)

  

+ Admin can edit and destroy all of the articles

  ![pic10](./images/pic10.jpg)

  

+ But user can do it only with its own articles

  ![pic11](./images/pic11.jpg)

  

+ User also cannot destroy other comments and can add likes

  ![pic12](./images/pic12.jpg)
