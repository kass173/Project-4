# Project-4

## Team: Cheila, Grace, Helen, Jacob, Kassem & Rami

![stars](Images/milkyway.jpeg)

## Project Title: STARS ANALYSIS

For our 4th project we’ve decided to look at and analyse data relating to star’s. 

Firstly after deciding the members of our group and getting together we looked at  various data sets across various topic categories mainly used Kaggle & google searches to find our dataset.

We came to a general group consensus on our final dataset related to “star dataset for stellar classification” (star-categorization-giants-and-dwarfs). 

So this will be the problem/topic we wanted to analyse and visualise.

Next in our group we looked at deciding if we should do supervised or unsupervised machine learning at the moment we are leaning toward unsupervised 
machine learning. And we will also be using Scikit-learn as the main library to import well as other machine learning such as random forest possibly.

Also decided what of the following programming language we wanted to use such as panda’s, python matplotlib as well as Tableau to create a dashboard to 
showcase our data in a nice final visualisation.

## Dataset

[Kaggle Dataset - Star Dataset for Stellar Classification](https://www.kaggle.com/datasets/vinesmsuic/star-categorization-giants-and-dwarfs)  
[Stars Data - Raw](Resources/Star9999_raw.csv)   
[Stars Data - Clean](Resources/clean_stars.csv)  
[Stars Data - Final](Resources/final_stars.csv)

## Spectral Star Type

![Spectral Definitions](Images/Spectral_Star_types.jpeg)

## ETL - Extract, Transform and Load Process

Considering the complexity of different databases, and in order to bring only the relevant data to be analysed, this project implements an **ETL 
process**, which was implemented using Jypyter notepad and **Pandas DataFrame**. 
 
## Extract

Firstly, this process extracts the data from the CSV files using Pandas DataFrame. In the extraction phase, the unwanted columns were removed.

## Transformation

In the Transformation Phase, columns were added to the DataFrame creating additional columb:

 * `A Mag`: this was needed to classify the stars but to get this figure we needed to calculate it by running the calculation from the dataset **Vmag x Plx** absolute magnitude to help us seperate sellar classes by grouping based on this variable.  
 * `class target`: This was a conversion from Spectral Type, so a for loop to categorise the stars based on some defined critiria which we have shown in the spectral star type visual.  
 * `star classification`: we created this column for our tableau visuals.  

## Load

The last phase of the ETL process to save the data in a proper database, so it can be easily loaded by another application to proceed with further analysis on the data. We did this in the Jypeter Notebook `Connect_to_Database.ipynb`.

This process has prepared CSV files with clean data, which are available in the `/Resources` folder of this repository.

Finally, and very importantly, a **Postgres Database** was created (`/Resources/Connect_to_Database.ipynb`), and the consolidated data loaded into the table. `TG_stars_database.csv` & `TG_stars.csv`.

## Pre Processing

## Data Model Implementation

We have produced a Python script that initializes, trains, and evaluates a model based on our cleaned up dataset which is the `Final_Stars.csv`.

The cleaned, normalized, and standardized data was achieved as part of our pre-processing work at the begining of the project and prior to modeling. 
This is evidenced under the `resources` files starting with `Star9999_raw` then further formating within the `Clean_stars.csv` and lastly leading to our 
final `Final_Stars.csv` which is our fully formatted and cleaned dataset file.

The Model utilizes data retrieved from SQL which is visable iwithin out Jypeter Notebook script.

The model demonstrates meaningful predictive power of over the 75% threshold set within the rubric at 75.10% classification accuracy. It becasue of the 
for loop in the pre processing that cleaned the target class to give us a higher classification accuracy.

## Data Model Optimization

The model optimization and evaluation process showing iterative changes made to the model and the resulting changes in model performance is documented in either a CSV/Excel table or in the Python script itself (15 points)

Overall model performance is printed or displayed at the end of the script (10 points)

##  Tableau Master, Visualisations

we used matplot lib and seabornes for visualisations for the desity which didnt exist in matplotlib so we used seaboarne for that.

![B-V vs Amag](Images/BVvsAmag.jpeg)

![B-V vs Vmag](Images/BVvsVmag.jpeg)

![HR Diagram](Images/HRDiagram.jpeg)

![Plx vs Amag](Images/PlxVSAmag.PNG)

![Plx vs Vmag](Images/PlxVSVmag.PNG)



## Final


