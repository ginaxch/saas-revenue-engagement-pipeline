# saas-revenue-engagement-pipeline

## Overview

This project simulates a B2B SaaS company and demonstrates how SQL can be used to analyze revenue performance, customer engagement, and retention risk.

The database combines customer subscription data with product usage events to answer business questions commonly faced by Data Analysts, BI Analysts, and Product Analysts.

## Dataset

The project uses three relational tables:

users

* user_id
* company_name
* signup_date
* industry

subscriptions

* sub_id
* user_id
* plan_tier
* monthly_revenue
* status

user_events

* event_id
* user_id
* event_date
* session_duration
* feature_used

SQL Skills Demonstrated

* INNER JOINs
* Aggregations (SUM, AVG, COUNT)
* Common Table Expressions (CTEs)
* Window Functions
* Ranking Functions (DENSE_RANK)
* Business-Oriented Data Analysis

## Business Questions

1. Revenue vs Engagement Analysis

Which industries generate the highest revenue while showing lower user engagement?

2. Daily Active User Trend Analysis

What is the rolling average of Daily Active Users (DAU) over time?

3. Customer Flight Risk Detection

Which high-value customers show the lowest product engagement and may be at risk of churn?

## Technologies

* PostgreSQL
* DBeaver
* SQL
* GitHub

## Project Structure

* /data – simulated SaaS datasets
* /sql – SQL scripts for schema creation and analysis
* /screenshots – query outputs
* /docs – business problem descriptions
