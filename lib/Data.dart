import 'package:flutter/material.dart';

import 'Time.dart';


List<Category> accountList=[Category(Name: 'Cash',Amount: 8500000),Category(Name: 'Sik',Amount: 250000)];

List<Category> categoryIncomeList=[Category(Name: 'Salary',Amount: 69000),Category(Name: 'loan Back',Amount: 121000),];

List<Category> categoryExpensesList=[Category(Name: 'Food',Amount: 69000),Category(Name: ',ورزش',Amount: 121000),];

List<String> monthList=['JAN','FEB','MAR','APR','MAY','JUN','JUL','AUG','SEP','OCT','NOV','DES'];

List<Transcation>transcation=[];
List<Time>transcationDate=[];

void loadData(){
   transcationDate.clear();
   for(int i=0;i<transcation.length;i++)
     {
        bool Is=false;
        Time editTime=Time();
        for(int j=0;j<transcationDate.length;j++)
           if(transcationDate[j].Year==transcation[i].Date.Year
               && transcationDate[j].Month==transcation[i].Date.Month
               && transcationDate[j].Day==transcation[i].Date.Day)
              Is=true;
           if(Is==false)
              {
                 editTime.Year=transcation[i].Date.Year;
                 editTime.Month=transcation[i].Date.Month;
                 editTime.Day=transcation[i].Date.Day;
                 editTime.WeekDay=transcation[i].Date.WeekDay;
                 transcationDate.add(editTime);
                 print('Done');
              }
     }


}

class Transcation{
   double Price;
   Time Date;
   String Explain;
   String Memo;
   int transcationKind;
   Category FromCategoryIncome=Category();
   Category ToAccount=Category();
   Category FromAccount=Category();
   Category ToCategoryExpense=Category();

  Transcation({this.Price, this.Date, this.Explain, this.FromCategoryIncome, this.ToAccount, this.FromAccount, this.ToCategoryExpense});
}

class Category{
   String Name;
   double Amount;
  Category({this.Name, this.Amount});
}


String subTitle(Transcation subtitle){
   if(subtitle.transcationKind==0)
      return subtitle.ToAccount.Name;
   if(subtitle.transcationKind==1)
      return subtitle.FromAccount.Name;
   if(subtitle.transcationKind==2)
      return subtitle.FromAccount.Name+' -> '+subtitle.ToAccount.Name;
}


String returnWeekDay(int WeekDay){
   switch(WeekDay)
   {
      case 1:
         return 'Monday';
         break;
      case 2:
         return 'Tuesday';
         break;
      case 3:
         return 'Wednesday';
         break;
      case 4:
         return 'Thursday';
         break;
      case 5:
         return 'Friday';
         break;
      case 6:
         return 'Saturday';
         break;
      case 7:
         return 'Sunday';
         break;
   }

}

String returnLitleWeekDay(int WeekDay){
   switch(WeekDay)
   {
      case 1:
         return 'Mon';
         break;
      case 2:
         return 'Tue';
         break;
      case 3:
         return 'Wed';
         break;
      case 4:
         return 'Thu';
         break;
      case 5:
         return 'Fri';
         break;
      case 6:
         return 'Sat';
         break;
      case 7:
         return 'Sun';
         break;
   }

}