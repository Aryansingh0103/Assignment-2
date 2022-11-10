/* NAME - ARYAN 
ROLL -2105110
CSE 27
*/
#include <stdio.h>
#include<stdlib.h>
struct course
{
int marks;
char subject[30];
};
int main()
{
struct course *ptr;
int i, Records;
printf("Enter number of records: ");
scanf("%d", &Records);

ptr = (struct course*) malloc (Records * sizeof(struct course));

for(i = 0; i < Records; ++i)
{
printf("Enter name of the subject and marks respectively:\n");
scanf("%s %d", &(ptr+i)->subject, &(ptr+i)->marks);
}

printf("Displaying Information:\n");
for(i = 0; i < Records ; ++i)

printf("%s\t%d\n", (ptr+i)->subject, (ptr+i)->marks);
return 0;
}