# Analyzing_Yelp_Data_using_Clustering


<ins>*Introduction:*</ins>

In this project, I use k-means clustering machine model to uncover hidden insights about Yelp users. 

<ins>*Loading the dataset*</ins>

After importing the library caret, I loaded the dataset to R Studio. 

<ins>*Data Management*</ins>

As it is with any analysis, data hygiene is imperative for model performance. I dropped the ID column as it contributed very little to overall model performance. I also omitted columns with null values. 

K-means clustering is distance based. Therefore, I standardized the variables, using the preProcess function, to put them on a uniform scale. 

<ins>*Model building*</ins>
To build the model, I would need to find the appropriate number of clusters to group the variables by. To do so, I create an elbow chart as shown below. 




<p align="center">
  <img width="600" height="200" src="https://github.com/jackfrost68/KNN_Vs_Classification_Tree_Models_using_R/blob/536ff7e503330f7cfa47ea293802bdefd534fe81/KNN%20Variable%20Types.png">
</p>
