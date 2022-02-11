#include<iostream> //including input output stream lib to use cin, cout, endl objects
#include<sstream>  //including sstream lib to use stringstream class 
#include<cstring>  //including cstring class to use strcmp function
/*
    opening some used elements from std namespace
*/
using std::cout;            
using std::cin;
using std::endl;
using std::string;
using std::stringstream;
using std::getline;
/* 
    This is the main function of the program
*/
int main()
{
    string Garbage_Words; //string used for shifting in it the unwanted words from the strings
    string line; //holds each line entered by the user
    string Ext; //holds each file extention
    stringstream str; //object from class stringstream which is used to take parts strings
    int TC_No=0; //No. of testcases which will be given in runtime
    int i=0,j=0; //indexes used in the below for loops
    int File_Size=0; //each file size will be assigned to this variable
    int *No_Of_Files=NULL; /*pointer to int which will be used for creating dynamic allocated
                            array that holds no of files in each testcase*/
    int **Total_Sizes=NULL; /*pointer to pointer to int which will be used for creating dynamic allocated
                            array that holds sizes of files' types in each testcase*/
    getline(cin, line); //getting the line which contains the no of test cases and files in each case
    /*
        Determining the number of test cases and creating array of 
        ints with this size, each elements holds the number of files in each case
    */
    str<<line;
    str>>TC_No;
    No_Of_Files=new int[TC_No];
    while(str>>No_Of_Files[i])
    {
        i++;
    }
    /*
        Creating the 2D array for the sizes
    */
    Total_Sizes=new int*[TC_No];
    for(i=0;i<TC_No;i++)
    {
        Total_Sizes[i]=new int[4];
    }
    /*
        initializing the array elements with zeros
    */
    for(i=0;i<TC_No;i++)
    {
        for(j=0;j<4;j++)
        {
            Total_Sizes[i][j]=0;
        }
    }
    /*
        these for loops do the following:
            2) saving each file size in the "File_Size" variable using the 
                feature of shifting operator overloading
            3)
    */
    for(i=0;i<TC_No;i++)
    {
        for(j=0;j<No_Of_Files[i];j++)
        {
            getline(cin,line); //getting each entered line from the user
            str.clear(); //clearing the stringstream object
            str<<line;
            /*
                saving each file size in the "File_Size" variable using the 
                feature of shifting operator overloading provided in stringstream class
            */
            while(str>>Garbage_Words);
            str.clear(); 
            /*
                convetring the last word ,which is the file size, to 
                integer to be added to the total size 
            */
            str<<Garbage_Words; 
            str>>File_Size;
            /*
                saving the extention name int the Ext string using 
                the index of the last dot and the last space 
                in the line "which contains the file name and the size"
            */
            int dot_index=line.find_last_of(".");
            int space_index=line.find_last_of(" ");
            Ext=line.substr(dot_index+1,space_index-dot_index-1);
            /*
                comparing the extentions
            */
            if(Ext=="mp3" || Ext=="acc" || Ext=="flac")
            {
                Total_Sizes[i][0]+=File_Size;
            }
            else if(Ext=="jpg" || Ext=="bmp" || Ext=="gif")
            {
                Total_Sizes[i][1]+=File_Size;
            }
            else if(Ext=="mp4" || Ext=="avi" || Ext=="mkv")
            {
                Total_Sizes[i][2]+=File_Size;
            }
            else
            {
                Total_Sizes[i][3]+=File_Size;
            }
        }
    }
    /*
        Displaying the output
    */
    for(i=0;i<TC_No;i++)
    {
        cout<<"music "<<Total_Sizes[i][0]<<"b "
        <<"images "<<Total_Sizes[i][1]<<"b "
        <<"movies "<<Total_Sizes[i][2]<<"b "
        <<"other "<<Total_Sizes[i][3]<<"b "<<endl;
    }
    return 0;
}