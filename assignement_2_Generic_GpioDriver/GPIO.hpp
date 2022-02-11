typedef enum{
    p1,
    p2,
    p3,
    p4,
    p5,
    p6
}Pin_No_Type;
class GPIO_Driver
{
    public:
        GPIO_Driver();
        virtual bool read(Pin_No_Type)=0;
        virtual void write(Pin_No_Type,bool)=0;
        virtual void toggle (Pin_No_Type)=0;
        ~GPIO_Driver();
};
class GPIO_AVR: GPIO_Driver
{
    private:
        //Declaring some atteributes related to AVR's GPIO Driver which should be not accessable
    public:
    GPIO_AVR(/*some inputs args to initialize the private attibutes*/);
    bool read(Pin_No_Type );
    void write(Pin_No_Type,bool);
    void toggle(Pin_No_Type);
    ~GPIO_AVR();
};
class GPIO_ARM: GPIO_Driver
{
    private:
        //Declaring some atteributes related to ARM's GPIO Driver which should be not accessable
    public:
        GPIO_ARM(/*some inputs args to initialize the private attibutes*/);
        bool read(Pin_No_Type);
        void write(Pin_No_Type,bool);
        void toggle(Pin_No_Type);
        ~GPIO_ARM();
};