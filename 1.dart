import 'dart:io';
class Dart
{
  var learner= new List.generate(1000,(_)=>new List(10));
  var mentor= new List.generate(1000,(_)=>new List(10));
  int lcount=0;
  int mcount=0;

 void setAvailabletime()
  {
    print('enter the name');
    String name=stdin.readLineSync();
    var time;
    print('specify available time slots\n 1. 00 am to 04 am \n 2. 04 am to 08 am \n 3.  08 am to 12 pm \n 4. 12 pm to 04 pm \n 5. 04 pm to 08 pm \n 6. 08 pm to 00 am');
    var c=stdin.readLineSync();
    switch (c)
    {
      case '1': time = 1;
              break;
      case '2': time = 2;
              break;
      case '3': time = 3;
              break;
      case '4': time = 4;
              break;
      case '5': time = 5;
              break;
      case '6': time = 6;
              break;
      default: print('error');
              break;
    }
    mentor[mcount][0]=mcount;
    mentor[mcount][1]=name;
    mentor[mcount][2]='mentor';
    mentor[mcount][4]=time;
    mcount++;
  }
  void addStacks(int p)
  {
    
    if (p==1)
    {
      print('enter area of expertise');
      String exp=stdin.readLineSync();
      mentor[mcount][3]=exp;
    }
    else
    {
    print('enter the name');
    String name1=stdin.readLineSync();
    learner[lcount][0]=lcount;
    learner[lcount][1]=name1;
    learner[lcount][2]='learner';
    print('enter area of interest');
    String exp1=stdin.readLineSync();
    learner[lcount][3]=exp1;
    }

  }

  void setMentorOrLearner()
  {
   
    print("mentor or learner?");
    String choice=stdin.readLineSync();
    switch (choice)
   {
      case 'mentor': {
                     setAvailabletime();
                      addStacks(1);
                      break;
                      }             
      case 'learner' : addStacks(2);
                      break;
      default: print('error');
    }
  }

  dynamic getMentor(String a,int j)
  {
    for(int i; i<=mcount;i++)
    {
      if(a==mentor[i][3] && j==mentor[i][4])
      {
        return mentor[i][0];
      }
      else 
      {
        print('no match found');
      }
    }
  }
 
}
main()
  {
    bool flag=true;
    while(flag)
    {
      Dart  d1= new Dart();
      d1.setMentorOrLearner();


      print('1 to stop');
      String e=stdin.readLineSync();
      var e1=int.parse(e);
      if(e1==1)
      {
        flag=false;
      }
    }
    bool flag2=true;
     while(flag2)
    {
      Dart  d2= new Dart();
      print('required interest area');
      String n=stdin.readLineSync();
      print('choose timings:\n  1. 00 am to 04 am \n 2. 04 am to 08 am \n 3.  08 am to 12 pm \n 4. 12 pm to 04 pm \n 5. 04 pm to 08 pm \n 6. 08 pm to 00 am');
      String t=stdin.readLineSync();
      var t1=int.parse(t);
      String me = d2.getMentor(n,t1);
      print('mentor\n id:$me ');//\n name:$mentor[me][1]');

      print('1 to stop');
      String e=stdin.readLineSync();
      var e1=int.parse(e);
      if(e1==1)
      {
        flag=false;
      }
    }
  }

