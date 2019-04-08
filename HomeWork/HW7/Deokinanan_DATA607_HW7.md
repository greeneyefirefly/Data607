## CUNY MSDS Data 607 Discussion-HW #7
### Samantha Deokinanan
### 10th April 2019

## Overview
A recommendation system is an information filtering system that involves predicting user responses to options. The system of this discussion will be about [**YouTube.com**](YouTube.com). On average, YouTube provides over 400 hours of content uploaded per minute, accurately recommending the right content to the right user is an involved task.

***
### YouTube's Scenario Design
***
<img align="left" src="https://raw.githubusercontent.com/greeneyefirefly/Data607/master/HomeWork/HW7/picture%201.png" width=103 height=103> 

#### Targeted Users
YouTube.com is a place for anyone from almost anywhere in the world. A typical user is someone between the age of 18 to 34 according to the Social Media & User-Generated Content on Statista.
***

<img align="left" src="https://raw.githubusercontent.com/greeneyefirefly/Data607/master/HomeWork/HW7/picture%202.png" width=90 height=90> 

#### Key Goals
Their key goal is to deliver favorable, personalized content to maximize the expected watch time according to inferences from users' behavior, i.e. past viewership. This acts as a rating system. By doing this YouTube can make the user watch more similar videos and show ads for that specific user's viewership interest.
***

<img align="left" src="https://raw.githubusercontent.com/greeneyefirefly/Data607/master/HomeWork/HW7/picture%203.png" width=95 height=95> 

#### How to Accomplish
By willingly creating a profile, liking, commenting, sharing, subscribing to channels on YouTube, even flagging or removing uninteresting videos, all can allow users to narrow their preferences which YouTube stores in a utility matrix for their deep learning analysis.
***
### YouTube's Recommendation Algorithm
***
YouTube operates as one of Google's subsidiaries. They provided a fascinating report on the advancements that deep learning may provide for Recommender Systems, entitled ["Deep Neural Networks for YouTube Recommendations"](https://ai.google/research/pubs/pub45530). It highlights that the recommendation system consists of two neural networks:

(1) Candidate Generation  
(2) Ranking

<img align="center" src="https://raw.githubusercontent.com/greeneyefirefly/Data607/master/HomeWork/HW7/picture%204.png"> 

The image above maps the procedure of how YouTube takes the millions on videos down to the few "perfect" selections. The candidate generation neural network must learn the user's history and context by creating user embeddings. The advantage of such a utility matrix is that arbitrary continuous and categorical variables can be added to the model. For instance, they stated that search history and watch history are used as variables where the embeddings are averaged, while user's geographic location, the device type, gender, and age are all either dichotomous or continuous variables that are fed directly into the network model.  

With a narrow pool of videos after the candidate generation model, the ranking model is aimed at maximizing the expected watch time for any given recommendation. This network is given access to a valuable set of variables about each video such as the thumbnail, tags, and other items that describe the video, and the user context to provide a much more accurate scoring. Multiple related variables are averaged and categorical variables (both univalent and multivalent) embeddings are mapped into matrix factorization. While the continuous variables are transformed using the cumulative uniform distribution (i.e. normalized between [0,1]) before they are fed into the network. Interestingly, the report states that the square root and squared of these values allows the model to create super and sub-linear functions of each continuous variable to improve offline accuracy.

Prediction of the expected watch time is then based on the results of a weighted logistic regression, weighted by the observed watch time on the video by training on data for when a video is "clicked" to leave a positive impression. They use an exponential function to obtain the probabilities that closely models the expected watch time, and by exploring the layers within the network, YouTube increased the accuracy of the recommendations. 

***
### Future Improvements
***
But no system is flawless, on 25 January 2019, YouTube posted an [announcement](https://youtube.googleblog.com/2019/01/continuing-our-work-to-improve.html) that they are taking measures to update their recommendations system for a better experience for the YouTube community. However, this will only affect the recommendations and not whether a video is available on YouTube. For example, to deal with click-bait videos, their system focuses on viewer satisfaction instead of views. Moreover, 60% of parents said that their child encountered content that was "unsuitable". How YouTube answered this was that YouTube is not for kids and should be using only the YouTube Kids app. Additionally, researchers at Harvard found that [YouTube's algorithm prioritizes a non-profit educational organization](https://medium.com/@MediaManipulation/unite-the-right-how-youtubes-recommendation-algorithm-connects-the-u-s-far-right-9f1387ccfabd) that applies scientific analysis to extreme content and conspiracy theories. YouTube's response is that they will continue to work this year by including methods to reduce the spread of content that comes close to violating their Community Guidelines. More recently, when it comes to seeing too many similar recommendations after watching just a few specific videos, YouTube began pulling recommendations from a wider set of topics, further claiming to have "made hundreds of changes to improve the quality of recommendations for users on YouTube." Machine learning and human evaluators are key to making these changes to generate recommendations efficiently.

##### My comments on Improvements
Having read and learned about this algorithm was insightful. They are already tracking all the users’ activity and creating profiles based on it. However, below is the only improvement which I can think of which seems to not be considered as important even though many people find it frustration:

* Advertisement Placement: For short videos, YouTube places advertisements at the beginning which can be skipped after 5 seconds, however, for longer videos, they tend to have a haphazard placement. Sometimes an ad pops up in the middling of an interesting/crucial scene breaking viewer's concentration. A recommendation is to analysis the dialogue and possibly audio frequency for good moments on when to play an appropriate ad.
