/* NAME - ARYAN 
ROLL -2105110
CSE 27
*/
#include <stdio.h>
#include <stdlib.h>

struct student 
{
    char firstName[60];
    int roll;
    
} s[10];

int main() {
    int i;

    printf("Enter information of students:\n");

    for (i = 0; i < 2; ++i) {
        s[i].roll = i + 1;
        printf("\nFor roll number%d,\n", s[i].roll);
        printf("Enter first name: ");
        scanf("%s", s[i].firstName);
        
    }
    printf("Displaying Information:\n\n");

    for (i = 0; i < 2; ++i) {
        printf("\nRoll number: %d\n", i + 1);
        printf("First name: ");
        puts(s[i].firstName);
        printf("\n");
    }
    return 0;
}