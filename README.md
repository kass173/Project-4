# Project 4: Mission Meteor

DAV Module 23 - Project 4 Group Challenge: Demystifying Machine Learning

![stars](Images/milkyway.jpeg)

## Introduction

Welcome to our project focused on the classification of stars through the use of machine learning. In this project, we look to develop models that can accurately categorise stars into their respective classes, using a variety of data analysis techniques and tools. We will also use Tableau to create visual analyses of our datasets.

After forming our group and gathering together, we searched for various datasets across different categories, mainly using Kaggle and Google searches to find our dataset. We came to a general consensus on analysing the [Kaggle Dataset - Star Dataset for Stellar Classification](https://www.kaggle.com/datasets/vinesmsuic/star-categorization-giants-and-dwarfs):

* [Star Data - Raw Small](Resources/Star9999_raw.csv)
* [Star Data- Raw Large](Resources/Star99999_raw.csv)

The aim of this study is to utilise the Morgan-Keenan (MK) classification system, which incorporates the HR classification system, to categorise stars by their chromaticity and size using spectral data. The study will focus on categorising stars into the main Spectral Types using the Absolute Magnitude and B-V Color Index within a specific dataset.

#### Spectral Star Type

![Spectral Definitions](Images/Spectral_Star_types.jpeg)

#### Spectral Class

![HRD](Images/HRDiagram.png)


## Extract, Transform & Load (ETL) Process

To ensure that only relevant data is analysed, we implemented an ETL process for this project. This process was implemented using `Jupyter Notebook`, `SQLAlchemy`, and `Pandas DataFrame` to help with the extraction, transformation, and loading of data. With this process, we can quickly and easily access the necessary data without the added complexity of different databases.

To begin the ETL process, we extracted data from the CSV files using Pandas DataFrame. During the extraction phase, we removed unwanted columns to ensure that only relevant data was processed.

During the transformation phase, we added columns to the DataFrame, creating additional variables to aid in our analysis. These included:

* `Amag`: This column was needed to classify the stars. To calculate this figure, we used the formula from the dataset (`Vmag` x `Plx`) to derive the absolute magnitude, which was then used to group the stars by their respective classes.
* `Target class`: This column was a conversion from Spectral Type. We used a for loop to categorise the stars based on some defined criteria, which we have shown in the spectral star type visual.
* `Star classification`: We created this column to aid in our Tableau visualisations.

<!-- double check these links to files used and created in this paragraph -->
The final phase of the ETL process involved saving the data in a proper database so that it could be easily loaded by another application for further analysis. We completed this step using the Jupyter Notebook [Connect_to_Database.ipynb](Resources/Spectral_Type_Classification/Connect_to_Database.ipynb).
The ETL process resulted in the creation of CSV files with clean data, which are available in the[Resources](/Resources) folder of this repository.
Finally, we created a `Postgres` database [Connect_to_Database.ipynb](/Resources/Connect_to_Database.ipynb) and loaded the consolidated data into the table, including [TG_stars_database.csv](Resources/TG_stars_database.csv) and [TG_stars.csv](Resources/TG_stars.csv) creating the [schema](Diagrams/tgstars_SQL_script.sql).

<!-- rename this header  -->
## Next Steps

We decided to use supervised machine learning due to the classification requirements our models would need to meet. Two models were built based on different information within the original dataset: a Random Forest Classifier and a Support Vector Machine.
The libraries we used include:

* SkLearn
* ImbLearn
* MatPlotLib
* Seaborn
* Plotly
* Collections
* SqlAlchemy
* NumPy
* Pandas
* Warnings

For Tableau visualisations, we used two slightly different datasets to allow for different visualisations:

1. one with a target column name designed to tell more of a story [TG_stars](Resources/TG_stars_database.csv) 
2. one without, and the other was more for numerical analysis [final_stars](Resources/final_stars.csv)

For our supervised learning models, we used two different datasets because we had two different classification models. One was based on a sample size of 10,000, and the other was based on a sample size of 100,000. Both datasets were cleaned the same way but preprocessed slightly differently. The datasets can be found [here](Resources/TG_stars.csv) and [here](Resources/PreProcess_2Targets_beforeDownSample.csv).

#### Tableau Visuals
Presenting numerical analyses of data

[Stars Tableau Dashboard 1](https://public.tableau.com/app/profile/rahmi.rahmiev/viz/StellarDashboard/Dashboard1)  
![Final_stars_Dashboard](Images/Tableau/StellarDashboard.png)

[Stars Tableau Dashboard 2](https://public.tableau.com/app/profile/grace.cheuk/viz/StellarClassification_16764912311040/Dashboard1?publish=yes) 
![TG_stars_Dashboard](Images/Tableau/TG_stars_Dashboard.png)

<!-- ![Density for Amag & Vmag](Images/Tableau/a_v_mag.png)
 
![Density for Amag & Vmag](Images/Tableau/BV_plx.png)

![Density for Amag & Vmag](Images/Tableau/mag_plx1.png)

![Density for Amag & Vmag](Images/Tableau/mag_plx2.png)

![Density for Amag & Vmag](Images/Tableau/vmag.png) -->

<!-- PROOFING STOP HERE, await Helen and Cheila update before continuing -->

## Preprocessing

During the preprocessing part of the project we essentially cleaned our data by correcting the datatypes from 'object' to 'float'. After this we were able to remove any rows with Null values, this created a loss of 3.2% of the data, which is an acceptable loss.

After this was completed we needed to calculate Absolute Magnitude using the below equation. 
![AMAG](Images/equation.PNG)

We were then able to create our 'TargetClass' Column, which utlised a for loop to separate the Spectral Types from 'O' to 'M' into their respective classes.

Finally, we dropped the 'SpType' Column to allow for a completely numerical and scalable dataframe. 

This preprocessed CSV has been saved as TG_stars. This is the fully preprocessed dataset from which we worked. 

## Data Model Implementation
When we are training and testing the model we had to separate the data into two models and data sets.

So that we were not cheating the models as if we tested the whole model and dataset we’ve would seen what we want from the training model and we would 
be testing the same in the test set model in the final optimised model.

So by splitting the datasets and looping through the numbers on the labels we would be training on one set of data and then test on the next set of data 
after making our predictions.
We have produced a Python script that initializes, trains, and evaluates a model based on our cleaned up dataset which is the `Final_Stars.csv`.

The cleaned, normalized, and standardized data was achieved as part of our pre-processing work at the begining of the project and prior to modeling. 
This is evidenced under the `resources` files starting with `Star9999_raw` then further formating within the `Clean_stars.csv` and lastly leading to our 
final `Final_Stars.csv` which is our fully formatted and cleaned dataset file.

The Model utilizes data retrieved from SQL which is visable iwithin out Jupeter Notebook script.

The model demonstrates meaningful predictive power of over the 75% threshold set within the rubric at 75.10% classification accuracy. It becasue of the 
for loop in the pre processing that cleaned the target class to give us a higher classification accuracy.

## Data Model Optimization

Then we ran the model optimization and evaluation process by making iterative changes to the model and the resulting changes in model performance is 
documented at slightly higher to 75.6% this is within the Python script itself.

Overall model performance is printed or displayed at the end of the script as mentioned is at 75.6% post the model optimisation process.

Within the two-target folder is our final optimised model and analysis which contains an accuracy of 89.2%. 

#### Matplotlib and Seaborn Visualisations
Presenting density related data of the stellar bodies.

![B-V vs Amag](Images/BVvsAmag.jpeg)

![B-V vs Vmag](Images/BVvsVmag.jpeg)

![HR Diagram](Images/HRDiagram.jpeg)

![Plx vs Amag](Images/PlxVSAmag.PNG)

![Plx vs Vmag](Images/PlxVSVmag.PNG)

![Density for Amag & Vmag](Images/density_for_Amag_and_Vmag.PNG)


Team - Group 2 (5)

Cheila Bergamini (cheibergam)
Grace Cheuk (gw-sc)
Helen Vlachou (EleniQ)
Kassem Saleem (kass173)
Rahmi Rahmiev ()
