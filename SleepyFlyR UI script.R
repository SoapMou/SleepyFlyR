#-------------------File Directory-------------------#
Monitor_File_Directory <-"D:\\Exp\\Exp 50\\E50-M1.txt"
Output_Folder_Directory<-"D:\\Exp\\Exp 50\\E50-M1"
#---------------------Parameters---------------------#
File_Name        <-"w1118 male"
Light_On         <-"09:00:00"
Light_Off        <-"21:00:00"
Start_Date       <-"5 Jul 22"
Day_Number       <-5
Channel_Range    <-c(1,32)
Sleep_Interval   <-30
Activity_Interval<-10
Minimum_Activity <-50
#-------------------Sleep Analysis-------------------#
Range <-c(1,5)
Option<-c("Sleep Profile","Activity Profile","Sleep","Bout","Bout Length","Activity","Waking Activity","Latency","Anticipation")
Config<-c(       1       ,         1        ,   1   ,   1  ,     1       ,     1    ,        1        ,    1    ,       1      )
#----------------Double-plotted Graph----------------#
DPG_Range       <-c(1,5)
Sleepgram_Option<-c("YES/NO","Channel","Y Max")
Sleepgram_Config<-c(    1   ,    0    ,   30  )
Actogram_Option <-c("YES/NO","Channel","Y Max")
Actogram_Config <-c(    1   ,    0    ,   4   )
#------------------Multiday Average------------------#
MDA_Range <-c(1,3)
MDA_Option<-c("Basic","Sleep Profile","Sleep Graph Y Max","Activity Profile","Activity Graph Y Max")
MDA_Config<-c(   1   ,       1       ,         30        ,         1        ,           4          )
#----------------Alterations Analysis----------------#
Control   <-3
Experiment<-c(4,5)
Alt_Option<-c("Sleep Profile","Activity Profile","Sleep","Bout","Activity","Latency")
Alt_Config<-c(       1       ,         1        ,   1   ,   1  ,     1    ,    1    )

library(SleepyFlyR)
SleepyFlyR::SleepyFly(Monitor_File_Directory,Output_Folder_Directory,
                      File_Name,Light_On,Light_Off,Start_Date,Day_Number,Channel_Range,Sleep_Interval,Activity_Interval,Minimum_Activity,
                      Range,Config,
                      DPG_Range,Sleepgram_Config,Actogram_Config,
                      MDA_Range,MDA_Config,
                      Control,Experiment,Alt_Config)