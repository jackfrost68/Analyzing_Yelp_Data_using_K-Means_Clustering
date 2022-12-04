

In this project, I use a k-means clustering machine learning model to design a successful marketing campaign for Yelp. 

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
  <img width="600" height="200" src="https://github.com/jackfrost68/Analyzing_Yelp_Data_using_K-Means_Clustering/blob/70184a1142c00864a8c12006efd4374dc7159096/Clusters%201.png">
</p>

Based on the output above, cluster 1 is more engaged with the platform. They have more months active, reviews, votes and friends compared to other clusters. 


<ins>*Exploring effect of outliers*</ins>

To see whether outliers had an effect on the number of clusters, I used the function removeOutlier to remove them from the dataset. After doing so, I plot another elbow chart. 

<p align="center">
  <img width="600" height="200" src="https://github.com/jackfrost68/Analyzing_Yelp_Data_using_K-Means_Clustering/blob/0d91e9c0f9addae0c5718e6dc7ff608dab933848/Elbow%20chart%20after%20outliers%20removal.jpeg">
</p>

After plotting it, there's little evidence that outliers had significant changes to the elbow chart

After re-running the model with the new outlier-less data set, I get the clusters below; 

<p align="center">
  <img width="600" height="200" src="https://github.com/jackfrost68/Analyzing_Yelp_Data_using_K-Means_Clustering/blob/81595b8c371a47f79711576a837b6ae92e036656/Clusters%20after%20outliers%20removal.png">
</p>

Based on the output above,  I would recommend to the marketing team to directly market to cluster 1 because they're the least active (based on months active). Marketing to them could bring them back to use the platform more. Marketing to cluster 2 wouldn't make sense because they already actively use the platform. 











