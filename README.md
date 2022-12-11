To run this project, make sure you have the MovieLens dataset from this website - https://grouplens.org/datasets/movielens/latest/

## Installations 
1. Apache Spark
2. PostgreSQL
3. PostgreSQL jars driver for Spark

## Steps
1. Setup Postgres server on your machine.
2. Using SQL queries from the `queries.sql` file, copy the tables from csv files to Postgres tables. OR
   
   You can directly read from the csv files in the notebook.
3. Open the jupyter notebook `Movie Recommender.ipynb`. 
4. Set the paths for spark jars and csv files (if you're reading the dataset from them) or url for the Postgres server.
5. Run all the cells of the notebook.
6. You may use the model already pushed or train a new one. 
