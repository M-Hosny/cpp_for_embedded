#include "GPIO.hpp"
#include <iostream>
using std::cout;
using std::cin;
using std::endl;
GPIO_Driver::GPIO_Driver()
{
    cout<<"Generic GPIO Driver Construtor"<<endl;
}
GPIO_Driver::~GPIO_Driver()
{
    cout<<"Generic GPIO Driver destrutor"<<endl;
}
GPIO_AVR::GPIO_AVR()
{
    //Initializing the atteributes related to ARM's GPIO Driver
    cout<<"AVR's GPIO Driver Object constructed"<<endl;
}
bool GPIO_AVR::read(Pin_No_Type pin)
{
    cout<<"Reading from pin No. "<<pin<<" using AVR's GPIO Driver"<<endl;
    return 0;
}
void GPIO_AVR::write(Pin_No_Type pin , bool bit)
{
    cout<<"writing "<<bit<<"on pin No. "<<bit<<" using AVR's GPIO Driver"<<endl;
}
void GPIO_AVR::toggle(Pin_No_Type pin)
{
    cout<<"toggling pin No. "<<pin<<"using AVR's GPIO Driver"<<endl;
}
GPIO_AVR::~GPIO_AVR()
{
    cout<<"AVR's GPIO Driver Object destructed"<<endl;
}
GPIO_ARM::GPIO_ARM()
{
    //Initializing the atteributes related to ARM's GPIO Driver
    cout<<"ARM's GPIO Driver Object constructed"<<endl;
}
bool GPIO_ARM::read(Pin_No_Type pin)
{
    cout<<"Reading from pin No. "<<pin<<" using ARM's GPIO Driver"<<endl;
    return 1;
}
void GPIO_ARM::write(Pin_No_Type pin , bool bit)
{
    cout<<"writing "<<bit<<"on pin No. "<<bit<<" using ARM's GPIO Driver"<<endl;
}
void GPIO_ARM::toggle(Pin_No_Type pin)
{
    cout<<"toggling pin No. "<<pin<<"using ARM's GPIO Driver"<<endl;
}
GPIO_ARM::~GPIO_ARM()
{
    cout<<"ARM's GPIO Driver Object destructed"<<endl;
}