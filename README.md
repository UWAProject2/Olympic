<p align="center">
  <a href="" rel="noopener">
 <img width=400px height=200px src="https://www.sevenstepswriting.com/wp-content/uploads/2016/08/olympic-rings-on-white-2.jpg" alt="Olympic logo"></a>
</p>

<h2 align="center">100 years of Olympic history</h2>
<h3 align="center">basic bio data on athletes and medal results from Athens 1916 to Rio 2016</h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()
[![GitHub Issues](https://img.shields.io/github/issues/kylelobo/The-Documentation-Compendium.svg)](https://github.com/kylelobo/The-Documentation-Compendium/issues)
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/kylelobo/The-Documentation-Compendium.svg)](https://github.com/kylelobo/The-Documentation-Compendium/pulls)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

</div>

---

## 📝 Table of Contents

- [Team Members](#Team)
- [About The Olympic Games](#Olympic)
- [Motivation](#Motivation)
- [Extract](#Extract)
- [Transform](#Transform)
- [Load](#Load)
- [Bonus](#Bonus)

## 👉 Team Members<a name = "Team"></a>
•	Steve
•	Kelly
•	Connor
•	Sandra

## 👉 About The Olympic Games<a name = "Olympic"></a>
The Olympic Games are an international sports festival, held every four years. The ultimate goals are to cultivate human beings, through sport, and contribute to world peace. Summer Games and Winter Games are held separately. The history of the Olympics began some 2,300 years ago. Their origin lays in the Olympian Games, which were held in the Olympia area of ancient Greece. Although there are some theories on its initial purposes, the Games have been said to have started as a festival of art and sport, to worship gods. The ancient Olympic Games, however, ended in 393 because of the outbreaks of wars in the region in which they were held. After a 1,500 year absence of the ancient Olympic Games, the event was resumed in the late nineteenth century, thanks to the efforts of Baron Pierre de Coubertin, a French educator. In 1894, his proposal to revive the Olympic Games was unanimously approved at the International Congress in Paris, and the first Olympic Games were held in Athens, Greece, two years later. He also devised the five-ring emblem that is familiar to most people as the Games’ symbol, which represents the unity of the five continents.

[Reference source](https://www.2020games.metro.tokyo.lg.jp/eng/taikaijyunbi/olympic/olympic/index.html#:~:text=The%20Olympic%20Games%20are%20an,Winter%20Games%20are%20held%20separately "Source Reference")

## 👉 Motivation <a name = "Motivation"></a>
**Motivation:**
To have a clean dataset to be able to analyse Olympic games from Year 1896 to Year 2016.
We aim to have our data to be able for our end user to answer below questions:
1.	Which region won the most Olympic medal
2.	Which athlete won the most Olympic medal
3.	Which team won the most Olympic medal
4.	Which country held the most Olympic game

## 👉 Extract <a name = "Extract"></a>
We have two sets of data in CSV format which can be downloaded from [Kaggle](https://www.kaggle.com/heesoo37/120-years-of-olympic-history-athletes-and-results "Kaggle")

## 👉 Transform <a name = "Transfrom"></a>
We loaded two sets of data using Pandas (pd.read_csv)

Below is the summary of our dataframe cleanup process:
1. Remove all the NaaN value under the column Medal as the dataset aim to provide analysis on those athlete who won medal.This will also help reducing the size of the dataset. 

![](https://github.com/UWAProject2/Olympic/blob/main/Resources/NaaNClean.PNG)

2. Rename all the column names and making sure the column names are all in lower case. It will help to load the data to SQL database to have all column name in lower case.

![](https://github.com/UWAProject2/Olympic/blob/main/Resources/rename.JPG?raw=true)

3. Check whether there is any duplicated information.

![](https://github.com/UWAProject2/Olympic/blob/main/Resources/duplicate.JPG?raw=true)

The result shows there is duplicated rows. However, after research of those athletes, they indeed have won two medal on that game. Therefore, we did not remove those rows.

4. We then drop the columns that not relevant to the analysis

5. We also added an age bin into the dataframe to help with the analysis.

![](https://github.com/UWAProject2/Olympic/blob/main/Resources/agebin.JPG?raw=true)


## 👉 Load <a name = "Load"></a>

We loaded the dataframe to SQL data. 
We have choosen Relational Database because of:
1. Data is easily structured into categories.
2. Data is consistent in input, meaning, and easy to navigate.
3. Relationships can be easily defined between data points.

Below is a diagram showing the relationship (ERD)

![](https://github.com/UWAProject2/Olympic/blob/main/Resources/QuickDBD-olympic.png?raw=true)

## 👉 Bonus - Michael Phelps- <a name = "Bonus"></a>
We did a scraping using Pandas to find information regarding the athlete that won the most medal in the history.

Michael Phelps

![](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Michael_Phelps_Rio_Olympics_2016.jpg/220px-Michael_Phelps_Rio_Olympics_2016.jpg)

[Reference source](https://en.wikipedia.org/wiki/Michael_Phelps)




