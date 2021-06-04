# Pewlett Hackard Analysis

# Overview 

We were tasked with helping our friends in HR get a better overall understanding of the demographics of their employees. This type of analysis included but was not limited to gender, age, title, and salary. From this data, we were able to answer several questions management had regarding their staff so they could make data driven desicions to ensure a healthy future for the company. We will walk you through 2 examples question we had to answer for management. Thankfully, this company listened to a data engineer and already had a SQL database with all of their employee data. All code and example code was queried through SQL. The first question was determine the number of employees by title that were nearing retirement age. The 2nd question was to determine the number of employees that were eligible for an mentorship program. 

# Results 

Below there is a list of the results we presented to management. 

-- This is a very large company. As you can see there are 40,000 engineers in the company. These number can be very alarming; however, with the total employee count being over 500k. These numbers are in the 10-15% of the company so over all they are well managed and have a large spread of expertise. 

## Count of Retiring Employees

![Count of Reitre Employees](https://github.com/mccoycory/Pewlett-Hackard-Analysis/blob/main/Count%20of%20retiring%20employees%20by%20title.png)

-- From the Retiring Employee list there is one positive we presented to management and that was the low number of "Managers" that were eligible for retirement. This is important as managers drive culture and decsions; therefore, with the small possibilty that a manager would retire is healthly for the company. 

-- We also decided to present to management the number of employees that would be eligible for promotions as these staff members might be retiring soon. The criteria we used was 10 years less of retirement age. Please reference the screenshot below. 

## Count of Promotional Employees 

![Promotional Employees](https://github.com/mccoycory/Pewlett-Hackard-Analysis/blob/main/Count%20Membership.png)

-- These promotional employee numbers are concerning. The only make up about 1-5% of the retirement pool. Therefore, I would recommended to management to expand age seach for promotional employees or add a different criteria like performance reveiws. 

-- Lastly, we provided the list of employees that would be eligible for the mentionship program so each department manager could contact them.

## Employee Demo Data

![Employee Data](https://github.com/mccoycory/Pewlett-Hackard-Analysis/blob/main/Membership.png)

# Summary 

As discussed in our results, we were able to answer managements questions with how many employees would be eligible for retirement and the number of employees eligible for the mentorship program. Additionally, we were able to throw in some additional spicy for management. We were curious if the company is currently hiring enough people to sustian a health balance of age and experience. We expressed concern when we noticed that the last new hire was in 2000. We questioned them if there was any additional data tables we could pull from. 

## Quary to find employee hire date 

![Hire Date]()

From the most recent hiring data, we took the last 5 years of data. From this data, we determined the diversity of hiring and counted how many people were hired into each department. Please reference the screenshot below.

## New hires by title last 5 years

![New hires by title](https://github.com/mccoycory/Pewlett-Hackard-Analysis/blob/main/Count%20of%20New%20hire%202002.png)


