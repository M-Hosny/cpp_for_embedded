#include "GPIO.hpp"
#include<iostream>
using std::cout;
using std::endl;
int main(void)
{
    bool b;
    GPIO_AVR AVR_Driver;
    GPIO_ARM ARM_Driver;
    b=ARM_Driver.read(p3);
    cout<<b<<" is read from ARM's GPIO Driver"<<endl;
    ARM_Driver.write(p1,1);
    AVR_Driver.toggle(p5);
    AVR_Driver.write(p3,1);
    return 0;
}