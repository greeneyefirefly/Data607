## CUNY MSDS Data 607 Discussion-HW #7
### Samantha Deokinanan
### 10th April, 2019

## Overview
A recommendation system is an information filtering system that involve predicting user responses to options. The system of this discussion will be about **YouTube.com**. On average YouTube provides over 400 hours of content uploaded per minute, accurately recommending the right content to the right user is an involved task.

***
### YouTube's Scenario Design

<img src="https://raw.githubusercontent.com/greeneyefirefly/Data607/master/HomeWork/HW7/picture%201.png" width=100 height=100>

YouTube.com is place for anyone from almost any where in the world. A typical user is someone between the age of 18 to 34 according to the Social Media & User-Generated Content on Statista.

```{r, echo=FALSE, fig.align="center", fig.cap="Key Goals", out.width="20%"}
knitr::include_graphics("picture 2.png")
```

Their key goal is to deliver favorable, personalized content to maximize the expected watch time per impression according to inferences from users' behavior such as past viewership. Simply, if a user watches a video on YouTube then the user can be said to "like" this item. This acts as a rating system. By doing this they can make the user to watch more similar videos and show ads for that specific user's viewership interest.

```{r, echo=FALSE, fig.align="center", fig.cap="How to Accomplish", out.width="23%"}
knitr::include_graphics("picture 3.png")
```

By willingly creating a profile, liking, commenting, sharing, subscribing to channels on YouTube, even flagging or removing uninteresting videos, all can allow users to narrow their preferences which YouTube stores in a utility matrix for their deep learning analysis.
