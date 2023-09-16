# E. Slayton Application for NEH Humanities Data Scientist 

### Introduction to Application

For Decades the National Endowment for the Humanities (NEH) has focused on supporting research that brings humanistic perspectives to high quaility research projects and progams, which in turn ensures the humanities available to all Americans. But what does it truly mean to make the humanities avilable to all Americans? Is it giving access to informaiton collected to empower communties to understand their presents and their pasts? Is it providing open resources that can inform on what it means to be human, fostering critical thinking, and promoting appreciation for the work it takes to connect with big ideas. 

While the White House has declared 2023 the 'Year of Open Science,' we can equally embrace it as a year dedicated to 'Open Research' and 'Open Humanities. This concerted effort to promote openness in research and the humanities reflects a broader global shift towards transparency, collaboration, and the democratization of knowledge. With an increasing interest in making informaiton open, accessible, and resuable, it is clear understanding how humanities projcts work and share data is crucial to supporting the growth of future knowledge and fostering collaborative work between researchers and engaged citizens.  

Understanding and appreciating the projects funded by the NEH is pivotal to nurturing a thriving ecosystem of ideas, and it is clear from evaluating NEH project descriptions that they have sponsered the development of a lot of big ideas [emma: to much big idea, what is another phrase?]. Studying the words that make up these descriptions shows an empahsis on preserving and collecting information, developing opperunities for education through exibits in meseums of content in classrooms. Clearly a base reading of the NEH project dataset is calling out for an evaluation of what information is made available for us and our neighbors to learn from.   

![Word Cloud depicting weight of terms based on their frequency in the 2010s and 2020s NEH Project data sets.](Visualizations/WordCloud_2010s2020s.jpeg)

The above wordcloud shows the popularity of terms used to sketch out big ideas in humanities research. 


### Open Access and Open Data on the Humanities for Communities 

'Open Humanities' refers to a movement within the field of humanities that advocates for openness, transparency, and accessibility in research, scholarship, and cultural content. 


![Bar Chart showing count of mentions in 2010 to 2020s NEH data of Open, Access, Public, Stakeholder, Community / Communities](Visualizations/Word_Frequency_bar_chart.jpg)


### The Ethics of Access and Privacy surounding with Open Data 
- layers of audience openess
- Who is the audience
- privacy concerns / how are we ensuring openness is equitable - who can access but also what the data is about
- access / ethics / privacy
- nock on effect is evaluating data managmaent for open and ethical and accessible not currently present but something to look for
- -- tied to AI and ML drawing from public data sets / how we create algorithms that are ethical 


### Connecting Projects to Congressional Interests 


Understanding the impact of humanties and making that research open also involves breaking down barriers to access, whether they are geographical, economic, or educational, so that individuals from all walks of life can engage with humanties focused projects and programs. 

A congressional audiences may also be inerterested in evaluating how to better understand the geographic distribution of funded projects as well as to engage with existing NEH projects that are already focused on open data that have relevancy to their constituents. 


### Exploration of the NEH Data 

In order to conduct a breif evaluation NEH project data evalaute if any focused on engaging communities through the use of 'Open' resources, I wanted to isolate specifics related to the terms 'Open', 'Access', and 'Public'. 

Interestingly, when we compare the focus of project descriptions to other concepts, such as community engagment by looking for terms such as community, communities, stakeholders 

![Bar Chart showing count of mentions in 2010 to 2020s NEH data of Open, Access, Public, Stakeholder, Community / Communities](Visualizations/Word_Frequency_Table.jpg)

Though this project begins to explore the relationship between Open Data, Open Access Resources, and community interests existing in NEH projects, it would be impossible to conduct a full evaluation in the short timeframe provided for this work. Given more time with this data, an broader assessment of this information could unlock the presence of themes related to Diversity, Equity, Inclusion, and Accessibility in ways that were difficult quickly scope due to either missing or messy data. 

Challanges in evaluating the open nature of these projects comes in the lack of available project description from the NEH_Grants1990s file. However, we may assume that due to the earlier record of these grant awards - being assigned not later than 2000 and finished no later than 2013, that not all grants were carried out during a period with the same level of supports for open access to materials and access to digital tools or digital literacies. To keep with the theme of comparing open scholarship to community engagment and access, and to ensure fidelity across the data, this effort focused on projects that were funded post 2010. 

There were also some chalanges when searching for key terms in the data related to the need for extensive data cleaning. In addition, some key term seperation from context in searches made it difficult to fully evaluate the full context of the proposals. For example, when regarding the graph above, it is also important to take into account that while African American and Black were terms searched, Black was only selected in cases where the key find clearly related to ethnicity. More scrutiny of the data is needed to fully evaluate the level of focus given to Balck American or African American populations within NEH projects.  


### Code and Processess Used In This Project 

** RStudio ** 
References to Code Resources:
- TM package (https://cran.r-project.org/web/packages/tm/vignettes/tm.pdf) 
- XML package (https://www.omegahat.net/RSXML/Tour.pdf)
  - XML Parser (https://www.rdocumentation.org/packages/XML/versions/3.99-0.14/topics/xmlTreeParse)
  - XML Getnodeset (https://www.rdocumentation.org/packages/XML/versions/1.2-0/topics/getNodeSet ) 
- Wordcloud with R (https://www.rdocumentation.org/packages/wordcloud/versions/2.6/topics/wordcloud) 
- Colorbrewer R package (https://rdrr.io/cran/RColorBrewer/man/ColorBrewer.html) 
- Finding associations in R (https://www.rdocumentation.org/packages/tm/versions/0.7-11/topics/findAssocs)
- Frequency of terms in R (https://www.rdocumentation.org/packages/tm/versions/0.7-11/topics/findFreqTerm)

  A more detailed description of processess followed in R can be found in the assocaited Rscript -> https://github.com/DrESlayton/NEH_Humanities_Data_Scientist/blob/main/NEH_2023.R  

** Tableau **

All the graphs (but the wordcloud) linked above were made using the tool Tableau. A short description of the process for making these graphs is shared blow:

(Graph 1) Bar Chart built from the count of dimension data taken from Term labels 'community/communities', 'public', 'access', 'open', 'engagment', 'stakeholder'. 
(Graph 2) 
(Graph 3) 


In developing visulizations, sometimes even if a software ir propreitary it can be the right one to use due to the target audiences familairty with the tool. In the past several years, Tableau has pushed into the public sector, and many government offices use this tool to viuslize their data. Due to the publics familairty with the visual framework and style lense of Tableau, as well as its advanced capability for interactive graphs - I choose to use this tool over open source options like R ggplot2 or R Leaflet. 


** Open Refine **

Processes in Open Refine include managing columns through column splitting. This was achieved by using the column drop down > Edit Columns > Split into several columns. 

### Data Managment Plan 

The data for this project can be accessed through the github page assocaited with this project and maintained by Emma Slayton. 

Data will be maintained for a minimum of one year post the submision deadline (September 16th, 2023). 

File types assocaietd with this project include R files (produced using RStudio 2022.07.1+554) and .tbx files for use in Tabealu software (produced with Tableau 2022.2), as well as .csv, .txt, .jpg, and .svg files. 



