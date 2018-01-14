# DataProductsWeek4
The Shiny App Classification Tree- Week4 Project for Data Products Course

The Classification Tree is created based on the German Credit Data. The data is available here: http://invidio.drl.pl/files/german_credit.csv.
The aim is to predict the defaults, based on the other available information. 

Default:
Default=1, Paid Credit=0

Application user can manipulate the parameters of the tree fit:
- complexity parameter
- maximum tree depth 
- minumum size of the bucket.

It is also possible to adjust text size, depending on the resulted tree.

The application uses rpart library and rpart function for the tree creation. 

The application is available here:
https://przem.shinyapps.io/creditdefaultspredtree/

and the presentation describing the app:
http://rpubs.com/przemziom/CreditDefaultPredict


