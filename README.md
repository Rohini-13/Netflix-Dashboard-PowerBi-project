# Netflix-Dashboard-PowerBi-project -using MySQL and Excel
# Overview
This project visualizes Netflix’s global catalog of movies and TV shows using **Power BI** ,**MySQL** and **Excel**  based on the dataset from Kaggle:
## 🔗 Netflix Movies and TV Shows Dataset - https://www.kaggle.com/datasets/shivamb/netflix-shows
The goal was to build an interactive analytics dashboard for exploring Netflix content distribution by type, rating, genre, and country.

## Data Preparation Process
## 1. Dataset Source:
Downloaded the Kaggle dataset (netflix_titles.csv)
## 2. Data Cleaning & Transformation (Excel):
*Used Text to Columns for the following fields: cast, director, listed_in, country
*Trimmed spaces, removed duplicates, and replaced blanks with NULL.
*Split data into six separate sheets for better normalization:
*netflix_titles: show_id, type, title, date_added, release_year, rating, duration, duration_type
*cast: show_id, cast_1 … cast_50
*director: show_id, director_1 … director_13
*listed_in: show_id, listed_in_1 … listed_in_3
*country: show_id, country_1 … country_12
*description: show_id, description

## 3. Database Setup (MySQL Workbench):
Created schema: netflix_data
Imported all 6 sheets into MySQL tables.
Replaced blanks as NULL using SQL queries.

## 4. Data Restructuring (Union Queries):
Consolidated multi-column data (like country and genre) into flat relational tables for easier joins in Power BI.

CREATE TABLE netflix_data.countries_releas
