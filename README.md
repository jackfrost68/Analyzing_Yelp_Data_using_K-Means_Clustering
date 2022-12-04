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
  <img width="600" height="200" src="https://github.com/jackfrost68/Analyzing_Yelp_Data_using_K-Means_Clustering/blob/97939ec2f1915b977cd679c92d5b98fe35085613/Clusters%20number.jpeg">
</p>

Based on the graph above, the right number of clusters would be 4. After running the kmeans model with a k value of 4, I get the following clusters. 

<p align="center">
  <img width="600" height="200" src="https://github.com/jackfrost68/Analyzing_Yelp_Data_using_K-Means_Clustering/blob/97939ec2f1915b977cd679c92d5b98fe35085613/Clusters%20number.jpeg">
</p>

<ins>*Exploring effect of outliers*</ins>

To see whether outliers had an effect on the number of clusters, I used the function removeOutlier to remove them from the dataset. After doing so, I plot another elbow chart. 

<p align="center">
  <img width="600" height="200" src="https://github.com/jackfrost68/Analyzing_Yelp_Data_using_K-Means_Clustering/blob/97939ec2f1915b977cd679c92d5b98fe35085613/Clusters%20number.jpeg">
</p>





