#pragma once
typedef enum{
    OK=0,
    NOK=1
}Error_Status_Type;
typedef enum{
    Read_Only,
    Write_Only,
    Read_And_Write,
    Reserved
}permission;
template <class T>
class Generic_Reg{
    private:
        T* Reg_Add;
        T Read_Only_Bits;
        T Write_Only_Bits;
        permission Reg_Perm;
    public:
    Generic_Reg(T* address);
    Error_Status_Type SetRegValue(T Value);
    Error_Status_Type GetRegValue(T & Reg_Val);
    Error_Status_Type SetBit(std::uint8_t Bit_No);
    Error_Status_Type CLRBit(std::uint8_t Bit_No);
    Error_Status_Type GetBit(std::uint8_t Bit_No,bool & Bit_Val);
    Error_Status_Type SetPermission(permission Per);
    Error_Status_Type SetBitPermission(permission Per,std::uint8_t Bit_No);
};
template <class T>
Generic_Reg<T>::Generic_Reg(T* address)
{
    Reg_Add=address;
    Reg_Perm=Read_And_Write;
    Read_Only_Bits=~((T)0);
    Write_Only_Bits=~((T)0);
}
template <class T>
Error_Status_Type Generic_Reg<T>::SetRegValue(T Value)
{
    Error_Status_Type E_status=NOK;
    if((Reg_Perm==Write_Only ||Reg_Perm==Read_And_Write) && (Write_Only_Bits)==~((T)0)) 
    {
        *Reg_Add=Value;
        E_status=OK;
    }
    return E_status;
}
template <class T>
Error_Status_Type Generic_Reg<T>::GetRegValue(T & Reg_Val)
{
    Error_Status_Type E_status=NOK;
    if((Reg_Perm==Read_Only ||Reg_Perm==Read_And_Write) && Read_Only_Bits==~((T)0))
    {
        Reg_Val=*Reg_Add;
        E_status=OK;
    }
    return E_status;
}
template <class T>
Error_Status_Type Generic_Reg<T>::SetBit(std::uint8_t Bit_No)
{
    Error_Status_Type E_status=NOK;
    if( ( (Write_Only_Bits>>Bit_No) & 1 ) ==1)
    {
        (*Reg_Add)|=(1<<Bit_No);
        E_status=OK;
    }
    return E_status;
}
template <class T>
Error_Status_Type Generic_Reg<T>::CLRBit(std::uint8_t Bit_No)
{
    Error_Status_Type E_status=NOK;
    if( ( (Write_Only_Bits>>Bit_No) & 1 ) ==1)
    {
        (*Reg_Add)&=~(1<<Bit_No);
        E_status=OK;
    }
    return E_status;
}
template <class T>
Error_Status_Type Generic_Reg<T>::GetBit(std::uint8_t Bit_No,bool & Bit_Val)
{
    Error_Status_Type E_status=NOK;
    if( ( (Read_Only_Bits>>Bit_No) & 1 ) ==1)
    {
        Bit_Val=((*(Reg_Add)>>Bit_No) & 1);
        E_status=OK;
    }
    return E_status;
}
template <class T>
Error_Status_Type Generic_Reg<T>::SetPermission(permission Per)
{
    Error_Status_Type E_status=OK;
    switch(Per)
    {
        case Read_Only:
            Read_Only_Bits=~((T)0);
            Reg_Perm=Per;
        break;
        case Write_Only:
            Write_Only_Bits=~((T)0);
            Reg_Perm=Per;
        break;
        case Read_And_Write:
            Read_Only_Bits=~((T)0);
            Write_Only_Bits=~((T)0);
            Reg_Perm=Per;
        break;
        case Reserved:
            Read_Only_Bits=0;
            Write_Only_Bits=0;
            Reg_Perm=Per;
        break;
        default:
            E_status=NOK;
        break;
    }
    return E_status;
}
template <class T>
Error_Status_Type Generic_Reg<T>::SetBitPermission(permission Per,std::uint8_t Bit_No)
{
    Error_Status_Type E_status=OK;
    switch(Per)
    {
        case Read_Only:
            Read_Only_Bits|=(1<<Bit_No);
            Write_Only_Bits&=~(1<<Bit_No);
        break;
        case Write_Only:
            Write_Only_Bits|=(1<<Bit_No);
            Read_Only_Bits&=~(1<<Bit_No);
        break;
        case Read_And_Write:
            Write_Only_Bits|=(1<<Bit_No);
            Read_Only_Bits|=(1<<Bit_No);
        break;
        case Reserved:
            Read_Only_Bits&=~(1<<Bit_No);
            Write_Only_Bits&=~(1<<Bit_No);
        break;
        default:
            E_status=NOK;
        break;
    }
    return E_status;    
}