# Decision Log For Hart's Mill Ecovillage

#### A way to log decisions made across multiple Hart's Mill circles.

#### Rita Bennett-Chew

## DB Schema
* A decision is made by a circle, a circle can make many decisions
* In ActiveRecord terms, a decision belongs to a circle, and a circle has many decisions
![screen shot 2018-07-23 at 9 39 32 pm](https://user-images.githubusercontent.com/11031915/43117310-f938db40-8ec0-11e8-8f7c-94553a2f1d97.png)


## User Stories
* Add a decision, date, description, and links to up to 2 supporting docs
* View all decisions by circle
* Decisions with review by date which have not been checked as 'reviewed or fully incorporated' are displayed on home page
* User can click on Decision archives, and be directed there.
* On archives page, users can search (for keywords???) or sort decisions by circle or date made.  
* Check off decision reviews which have a review_by date
* Users should be able to 'extend' the review_by date, updating the db.

## License

This software is licensed under the MIT license.

Copyright (c)2018 **Rita Bennett-Chew**
