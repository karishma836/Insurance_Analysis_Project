# Insurance_Analysis_Project

### Branch Performance Dashboard for Corporate and Individual Branch Heads

## Presentation

Link to [Insurance-Analytics  PPT.pptx](https://github.com/user-attachments/files/16868192/Insurance-Analytics.PPT.pptx)

## Overview of Project:
This project aims to develop a comprehensive branch performance dashboard to facilitate discussions between the corporate team and individual branch heads regarding new and renewal business numbers. The dashboard will provide valuable insights into individual branch performance and enable data-driven decision-making.

## Description of Our source Data:

I sourced the stock market data from reliable financial databases. The data included daily trading volumes, stock prices, dividends, P/E ratios, market capitalization, and other relevant financial metrics.

## Questions we hope to answer with our data:

with this Data we hope to Answer 6 different KPI's


1] No of Invoice by Accnt Exec

2] Yearly Meeting Count

3] (a).Cross Sell--Target,Achive,new
 (b).New-Target,Achive,new
 (c).Renewal-Target, Achive,new

4] Stage Funnel by Revenue

5] No of meeting By Account Executive
 
6] Top Open Opportunity


# Data Modelling
We used joins to create relationship between data tables in Power bi.The Entity Relationship Diagram(ERD) below shows the connectivity between the 8 data tables used in our analysis. for join i create 1 brige table.

![Screenshot 2024-09-04 153520](https://github.com/user-attachments/assets/4f4cb59a-47d9-45b8-9123-bcfec678c3f2)


## The description of these tables is as follows:

### A.	Individual performance within the branch:
i.	Target FY from Individual target sheet (New, Cross sell and Renewal) Fields to be referred (Column C, E, F and G)

ii.	Placed Achievement form Brokerage + Fees sheet (New, Cross sell and Renewal)
(Brokerage sheet: Column G, J, M, K, L) (Fees Sheet: B, D, E, F, G)

iii.	Invoiced Achievement from Invoice sheet (New, Cross sell and Renewal) Column (B, F, G, J)

iv.	Percentage of Achievement for Placed and Invoice – (Achieved/budget)

v.	No of meetings for current year – Meeting sheet (A, C, D)

vi.	Open Oppty – Opportunity report (Column: C, E, F, G) (Stage ‘Open’ Column G = Propose Solution & Qualify Opportunity)

vii.	Closed Won – Opportunity report (Column: C, E, F, G) (Stage ‘Won’ Column G = Won)

viii.	Conversion Ratio (Closed Won/Total Opportunity)

ix.	Further drill down to individual level top 10 open oppty and Win 

# Data Cleaning
## Data Cleaning in Power Query

![Screenshot 2024-09-04 154942](https://github.com/user-attachments/assets/69130de8-b029-4b5f-b2d8-f72b566e2355)


## Remove Blank And Null values

I cleaned the data in Excel before importing it to PowerBI, I explored the data to find any inconsistencies, duplicates, incorrect format, or missing values. I’ll share some of the inconsistencies and incorrect format I found and how I corrected. 

## My SQL Queries

Link to insurance Schema
https://github.com/karishma836/Insurance_Analysis_Project/blob/main/Insurance%20Query_Sql.sql

# Creating Data Visualizations

# KPI1

Number of Invoices by Account Executives - Divya Dhingra is leading with the highest number of invoices, particularly in new and cross-sell categories, indicating a strong performance. Other executives like Ankita Shah and Shikha Shah are also performing well, especially in renewal invoices.



![Screenshot 2024-09-04 153202](https://github.com/user-attachments/assets/a60c1240-32db-402d-bbba-4bbf5a436c0c)

# KPI2

Yearly Meeting Count -  The number of meetings in 2020 (31) far exceeds those in 2019 (3), indicating increased sales efforts and possibly the implementation of new strategies to engage with clients more frequently.


![Screenshot 2024-09-04 152547](https://github.com/user-attachments/assets/2bafe8bd-7f84-467a-af6a-292e38e46e6c)

# KPI3

## Cross Sell (Target, Achive,new) 
While the cross-sell achievement is impressive, the invoicing rate is low compared to the amount achieved. This suggests that there may be delays or challenges in converting these sales into invoices, or further follow-up may be needed.

## New (Target, Achive,new) 
The team was close to meeting the new business target but did not fully reach it. The lack of invoicing data here might indicate that it was not available or it could be less significant compared to other categories.

## Renewal (Target, Achive,new)
This shows exceptional performance in renewals, surpassing the target by a large margin. However, there is still some room to convert the remaining amount into invoices.

![Screenshot 2024-09-04 153138](https://github.com/user-attachments/assets/b03c468c-ec0f-428a-bb10-90c0c2e93261)

# KPI4

Open Opportunities in Funnel Chart - The largest value is at the "Qualify Opportunity" stage, indicating a significant number of potential deals at the early stage. The pipeline narrows as it moves to the "Propose Solution" and "Negotiate" stages, highlighting the need for focused efforts to advance these opportunities through the pipeline.

![Screenshot 2024-09-04 152854](https://github.com/user-attachments/assets/14163720-bba2-4abb-8f31-a4a89bcff06c)


# KPI5
Number of Meetings by Account Executives - Abhinav Shivam has conducted the most meetings, which often correlates with strong sales performance. Regular meetings are crucial for relationship building and closing deals.

![Screenshot 2024-09-04 153333](https://github.com/user-attachments/assets/e1130f1b-86b2-4dba-b7b2-fe43c6fafe7c)


# KPI6
 Open Opportunities by Revenue - Top 4 - Opportunities like DB-Mega Policy and EL-Group Mediclaim are high-revenue opportunities that should be prioritized by the sales team for closure. CVP GMC also represents a significant potential revenue stream.

![Screenshot 2024-09-04 153202](https://github.com/user-attachments/assets/bf1ed6f5-daf3-4ae0-869d-dcbd45d040ff)

# Dashboard

## Power Bi Dashboard

![Screenshot 2024-09-04 154537](https://github.com/user-attachments/assets/766f2bd8-a95f-4a7b-8df7-f2583f385adb)


![Screenshot 2024-09-04 152511](https://github.com/user-attachments/assets/2102e2aa-055b-4061-87c9-64f4a6bc1008)

## Excel Dashboard

![Screenshot 2024-09-04 154636](https://github.com/user-attachments/assets/a04859bc-193f-4670-8da9-3f31713ac9e1)



