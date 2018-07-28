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
* On archives page, users can search (for keywords???) or sort decisions by circle or date made. (might want to conduct research on adding search features to ActiveRecord db's)  
* Users can choose to update a decision: calling it 'incorporated'. Non-incorporated decisions will be 'New'
* 'New' decisions will be listed on the home page, listed by descending date and sorted into 2 groups. 1) Decision with a past review_by_date and 2) Decisions with an upcoming review_by_date
* To each unincorporated decision, users should be able to extend the review by date (Write decision.extend method), or update the decision to 'incorporated'
* 'Incorporated' won't have a date associated - ie. it won't matter when a decision was incorporated. It will be subjective to the user whether or not the decision is fully adopted and thus incorporated into the community. If the decision is 'incorporated,' the only date visible on the page will be the date decided
* On index/home page, users have the option to add a decision, and will see all decisions which have not been fully incorporated
* There will be some simple way for the site to distinguish an admin user from a regular viewer user.
* Later, add more complex security/authentication


## License

This software is licensed under the MIT license.

Copyright (c)2018 **Rita Bennett-Chew**
