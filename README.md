# Netflix-Dashboard-PowerBi-project -using MySQL and Excel

# Overview
This project visualizes Netflix’s global catalog of movies and TV shows using **Power BI** ,**MySQL** and **Excel**  based on the dataset from Kaggle:
Netflix Movies and TV Shows Dataset - https://www.kaggle.com/datasets/shivamb/netflix-shows
The goal was to build an interactive analytics dashboard for exploring Netflix content distribution by type, rating, genre, and country.

## Data Preparation Process

## 1. Dataset Source:
Downloaded the Kaggle dataset (netflix_titles.csv)

## 2. Data Cleaning & Transformation (Excel):
- Used Text to Columns for the following fields: **cast, director, listed_in, country**
- Trimmed spaces, removed duplicates, and replaced blanks with **NULL**.
- **netflix_titles**: show_id, type, title, date_added, release_year, rating, duration, duration_type
- **cast**: show_id, cast_1 … cast_50
- **director**: show_id, director_1 … director_13
- **listed_in**: show_id, listed_in_1 … listed_in_3
- **country**: show_id, country_1 … country_12
- **description**: show_id, description
- Split data into **six separate sheets** for better normalization

## 3. Database Setup (MySQL Workbench):
- Created schema: **netflix_data**
- Imported all 6 sheets into MySQL tables.

## 4. Data Restructuring (Union Queries):
- Consolidated multi-column data (country, director, listed_in and cast) into flat relational tables using **UNION** query for easier joins in Power BI 
- Union queries were also uploaded

## 5. Integration with Power BI:
- Connected Power BI directly to the MySQL database.
- Established relationships between normalized tables.

  ## 📊 Power BI Dashboard
  The report consists of two interactive pages: **Overview page** and **Single Title view page**

##  🛠️Tools & Technologies Used
- **Data Source**: Kaggle
- **ETL**: Microsoft Excel
- **Database**: MySQL Workbench
- **Visualization**: Power BI and DAX
- **Language**: SQL

## Page 1 – Overview Dashboard
- **KPIs**: **Total Movies:6131**, **Total TV Shows: 2676**
- **Line Chart**: Shows by Release Year
- **Bar Chart**: Shows by Ratings
- **Bar Chart**: Top 10 Genres
- **Map Visualization**: Countries Available
- **Slicers**: Country, Release Year, Genre

## Page 2 – Single Title Overview
- **Dropdown**: Select any movie or TV show
- **Cards**: Duration, Release Year, Rating, Type, Description / Summary
- **Multi-row card**: Added Date,  Cast, Director(s), Genre(s)
- **Map**: Countries where the title is available
- **Navigation**: “Back” and “Next” buttons for seamless movement between pages

## 💡 Insights
- Majority of content on Netflix is **Movies (70%+)**.
- **TV-MA** and **TV-14** dominate rating categories.
- Top genres include **International Movies, Dramas, and Comedies**.
- Global spread shows Netflix’s strong presence in **North America, Europe, and Asia**.

- ## Preview
<img width="569" height="397" alt="screenshot2" src="https://github.com/user-attachments/assets/31e38033-fe11-4d26-a35b-9e999a144044" />
<img width="574" height="400" alt="screenshot1" src="https://github.com/user-attachments/assets/f9fb7466-c35f-4a24-a0e9-3a29a27d56ea" />

## Repository Tags
#PowerBI #NetflixAnalysis #DataVisualization #BusinessIntelligence #DAX #DashboardDesign #Excel #MySQL

## Author
Rohini R
