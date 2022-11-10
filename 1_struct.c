/* NAME - ARYAN 
ROLL -2105110
CSE 27
*/
#include<stdio.h>
struct employee
{
     
     char name[20];
     int sal;
};
int main()
{
    struct employee a;
     printf("Enter Employee Details:\n");
     printf("Enter Name  : ");
     scanf("%s",a.name);
     printf("Enter Salary  : ");
     scanf("%d",&a.sal);
     

    float Basic, HRA, DA, Gross_Salary;
  	
	printf("\n Please Enter the Basic Salary of an Employee  :  ");
  	scanf("%f", &Basic);
  
  	if (Basic >= 100000)
  	{
  		HRA = (Basic * 25) / 100; 
		DA = (Basic * 75) / 100;    	
  	} 
  	
  	else
  	{
	   	HRA = (Basic * 10) / 100; 
	   	DA = (Basic * 70) / 100;
	}
	Gross_Salary = Basic + HRA + DA;
	printf("\n Gross Salary of this Employee  =  %.2f", Gross_Salary); 
	
     printf("\nEmployee Details: \n----\n");
     printf("Name        : %s\n",a.name);
     printf("Salary      : %d\n",a.sal);
     return 0;
}