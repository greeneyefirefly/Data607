## CUNY MSDS Data 607 Discussion-HW #7
### Samantha Deokinanan
### 10th April 2019

## Overview
A recommendation system is an information filtering system that involve predicting user responses to options. The system of this discussion will be about [**YouTube.com**](https://www.youtube.com/). On average YouTube provides over 400 hours of content uploaded per minute, accurately recommending the right content to the right user is an involved task.

***
### YouTube's Scenario Design
***
<img align="left" src="https://raw.githubusercontent.com/greeneyefirefly/Data607/master/HomeWork/HW7/picture%201.png" width=103 height=103> 

#### Targeted Users
YouTube.com is place for anyone from almost anywhere in the world. A typical user is someone between the age of 18 to 34 according to the Social Media & User-Generated Content on Statista.
***

<img align="left" src="https://raw.githubusercontent.com/greeneyefirefly/Data607/master/HomeWork/HW7/picture%202.png" width=90 height=90> 

#### Key Goals
Their key goal is to deliver favorable, personalized content to maximize the expected watch time according to inferences from users' behavior, i.e. past viewership. This acts as a rating system. By doing this YouTube can make the user to watch more similar videos and show ads for that specific user's viewership interest.
***

<img align="left" src="https://raw.githubusercontent.com/greeneyefirefly/Data607/master/HomeWork/HW7/picture%203.png" width=95 height=95> 

#### How to Accomplish
By willingly creating a profile, (dis)liking, sharing, subscribing to channels on YouTube, even flagging or removing uninteresting videos, all can allow users to narrow their preferences which YouTube stores in a utility matrix for their deep learning analysis.

***
### YouTube's Recommendation Algorithm
***
YouTube operates as one of Google's subsidiaries. They provided a fascinating report on the advancements that deep learning may provide for Recommender Systems, entitled [Deep Neural Networks for YouTube Recommendations](https://ai.google/research/pubs/pub45530). It highlights that the recommendation system consists of two neural networks:

(1) Candidate Generation
(2) Ranking

<img align="center" src="https://raw.githubusercontent.com/greeneyefirefly/Data607/master/HomeWork/HW7/picture%204.png"> 

The image above maps the procedure of how YouTube takes the millions on videos down to the few "perfect" selections. The candidate generation neural network must learn the user's history and context by creating user embeddings. The advantage of such a utility matrix is that arbitrary continuous and categorical variables can be added to the model. For instance, they stated that search history and watch history are used as variable where the embeddings are averaged, while user's geographic location, the device type, gender, and age are all either dichotomous or continuous variables that are fed directly into the network model.  

With a narrow pool of videos after the candidate generation model, the ranking model is aimed at maximizing the expected watch time for any given recommendation. This network is given access to a valuable set of variables about each video such as the thumbnail, tags, and other items that describes the video, and the user context to provide a much more accurate scoring. Multiple related variables are averaged and categorical variables (both univalent and multivalent) embeddings are mapped into matrix factorization. While the continuous variables are transformed using the cumulative uniform distribution (i.e. normalized between [0,1]) before they are fed into the network. Interestingly, the report states that the square root and squared of these values allows the model to create super and sub-linear functions of each continuous variable to improve offline accuracy.

Prediction of the expected watch time is then based on the results of a weighted logistic regression, weighted by the observed watch time on the video by training on data for when a video is "clicked" to leave a positive impression. They use an exponential function to obtain the probabilities that closely models the expected watch time, and by exploring the layers within the network, YouTube increased the accuracy of the recommendations. 

***
### Future Improvements
***

But no system is flawless, on 25 January 2019, YouTube posted an [announcement](https://youtube.googleblog.com/2019/01/continuing-our-work-to-improve.html) that they are taking measures to update their recommendations system for a better experience for the YouTube community. However, this will only affect the recommendations and not whether a video is available on YouTube. For example, to deal with click-bait videos, their system focuses on viewer satisfaction instead of views. Moreover, 60% of parents said that their child encountered content that was "unsuitable". How YouTube answered this was that YouTube is not for kids and should be using only the YouTube Kids app. Additionally, researchers at Harvard found that [YouTube's algorithm prioritizes a non-profit educational organization](https://medium.com/@MediaManipulation/unite-the-right-how-youtubes-recommendation-algorithm-connects-the-u-s-far-right-9f1387ccfabd) that applies scientific analysis to extreme content and conspiracy theories. YouTube's response is that they will continue to work this year by including methods to reduce the spread of content that comes close to violating their Community Guidelines. More recently, when it comes to seeing too many similar recommendations after watching just a few specific videos, YouTube began pulling recommendations from a wider set of topics, further claiming to have "made hundreds of changes to improve the quality of recommendations for users on YouTube." Machine learning and human evaluators are key in making these changes to generate recommendations efficient.

##### My comments on improvements
Reading and learning about this algorithm was very insightful. They are already tracking many of its users’ main activities and creating profiles based on it. However, below as an improvement suggestion to the recommendation algorithm of YouTube based on my personal usage:

* At a certain time of the day I would listen to a specific genre of music. For instance, at nights when I am either working on an assignment or drawing, I like to strictly listen to K-pop, starting with a favorite and hit “auto-play” where it is supposed to play similar genre either from the same channel or similar channels. However, I would end up being led to another type of music I also like such as American rock music. Though the algorithm is correct in suggesting that I will like the video, at that moment it immediately changes my mood and shifts my focus. Whereas, in the mornings, I tend to watch the News but I would have to search for it due to the previous night’s watch history. Therefore, my recommendation is YouTube should analyze the timing of the day when users’ may be accessing specific content on their site. With this they can make better recommendations at any given time of the day, and it too will create a better experience for users.

***
### Conclusion
***
In conclusion, while it may not be the perfect system, YouTube’s recommendation system is still considered as one of the most sophisticated and heavily used recommendation systems. Their report gives several useful insights regarding engineering deep learning systems. I believe the directions they are advancing in to get acquainted with user patterns for machine learning will ultimately lead to the best personalized content for a specific user from the thousands of videos uploaded every day.
