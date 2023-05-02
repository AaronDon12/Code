1.

#include <stdio.h>
#include <math.h>
int is_prime(int n);
int is_armstrong(int n);
int is_perfect(int n);
int main() 
{
    int n;
    printf("Enter an integer: ");
    scanf("%d", &n);
    if (is_prime(n))
    {
        printf("%d is a prime number\n", n);
    }
    else
    {
        printf("%d is not a prime number\n", n);
    }
    if (is_armstrong(n))
    {
        printf("%d is an Armstrong number\n", n);
    } 
    else 
    {
        printf("%d is not an Armstrong number\n", n);
    }
    if (is_perfect(n)) 
    {
        printf("%d is a perfect number\n", n);
    } 
    else
        printf("%d is not a perfect number\n", n
return 0;
}

int is_prime(int n) 
{
    int i;
    if (n <= 1) 
    {
        return 0;
    }
    for (i = 2; i <= sqrt(n); i++) 
    {
        if (n % i == 0) 
        {
            return 0;
        }
    }
    return 1;
}
int is_armstrong(int n) 
{
    int sum = 0, temp = n, digits = 0;
    while (temp > 0) {
        digits++;
        temp /= 10;
    }
    temp = n;
    while (temp > 0) {
        int remainder = temp % 10;
        sum += pow(remainder, digits);
        temp /= 10;
    }
    return (sum == n);
}

int is_perfect(int n) {
    int i, sum = 0;
    for (i = 1; i < n; i++) {
        if (n % i == 0) {
            sum += i;
        }
    }
    return (sum == n);
}

2.

#include <stdio.h>
int main() {
    char str[1000];
    int words = 0, vowels = 0, consonants = 0, spaces = 0, special_chars = 0;
    int i;
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    for (i = 0; str[i] != '\0'; i++) {
        if (isalpha(str[i])) {
            if (tolower(str[i]) == 'a' || tolower(str[i]) == 'e' || tolower(str[i]) == 'i' || tolower(str[i]) == 'o' || tolower(str[i]) == 'u') {
                vowels++;
            } else {
                consonants++;
            }
        } else if (isspace(str[i])) {
            words++;
            spaces++;
        } else {
            special_chars++;
 }
    }
words++;
printf("Words = %d\n", words);
printf("Vowels = %d\n", vowels);
printf("Consonants = %d\n", consonants);            
printf("Space = %d\n", spaces);
printf("Special Characters = %d\n", special_chars);
    
return 0;
}

3.

#include <stdio.h>
#include <string.h>
#define MAX_LENGTH 100
int main() {
    char str[MAX_LENGTH];
    int len, freq[256] = {0}, i;
    char *p, *rep = NULL, *nonrep = NULL;
    printf("Enter a string: ");
    fgets(str, MAX_LENGTH, stdin);
    len = strlen(str) - 1; 
    for (p = str; *p != '\0'; p++) {
        freq[(int)*p]++;
    }
    printf("Length of the string is: %d\n", len); 
    printf("Word frequency is: ");
    for (i = 0; i < 256; i++) {
        if (freq[i] > 0) {
            printf("%c:%d ", i, freq[i]);
        }
    }
    printf("\n");
    for (p = str; *p != '\0'; p++) {
        if (freq[(int)*p] == 1 && nonrep == NULL) {
            nonrep = p;
        } else if (freq[(int)*p] > 1 && rep == NULL) {
            rep = p;
        }
        if (nonrep != NULL && rep != NULL) {
            break;
        }
    }
    if (rep == NULL) {
        printf("No repeated characters found in the string.\n");
    } 
    else {
        printf("First repeated character is: %c\n", *rep);
    }
    if (nonrep == NULL) {
        printf("No non-repeated characters found in the string.\n");
    } 
    else {
        printf("First non-repeated character is: %c\n",*nonrep);
    }
    return 0;
}

4.

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define MAX_EMPLOYEES 100
#define MAX_NAME_LENGTH 50
#define MAX_POSITION_LENGTH 50
#define DATE_LENGTH 11
struct Employee {
    char name[MAX_NAME_LENGTH];
    int age;
    char position[MAX_POSITION_LENGTH];
    char date[DATE_LENGTH];
};
int compareByName(const void *a, const void *b) {
    const struct Employee *ea = (const struct Employee *)a;
    const struct Employee *eb = (const struct Employee *)b;
    return strcmp(ea->name, eb->name);
}
int compareByDate(const void *a, const void *b) {
    const struct Employee *ea = (const struct Employee *)a;
    const struct Employee *eb = (const struct Employee *)b;
    return strcmp(ea->date, eb->date);
}
int main() {
    int n, i;
    struct Employee employees[MAX_EMPLOYEES];
    printf("Enter the number of employees: ");
    scanf("%d", &n);
    getchar();
    for (i = 0; i < n; i++) {
        printf("Enter details of employee %d:\n", i+1); printf("Name: ");
        fgets(employees[i].name, MAX_NAME_LENGTH, stdin);
        employees[i].name[strcspn(employees[i].name, "\n")] = '\0'; 
        printf("Age: ");
        scanf("%d", &employees[i].age);
        getchar(); 
        printf("Position: ");
        fgets(employees[i].position, MAX_POSITION_LENGTH, stdin);
        employees[i].position[strcspn(employees[i].position, "\n")] = '\0'; 
        printf("Date of joining (dd/mm/yyyy): ");
        fgets(employees[i].date, DATE_LENGTH, stdin);
        employees[i].date[strcspn(employees[i].date, "\n")] = '\0'; 
    }
    qsort(employees, n, sizeof(struct Employee), compareByName);
    printf("\nEmployee List sorted by name:\n\n");
    for (i = 0; i < n; i++) {
        printf("Name: %s\n", employees[i].name);
        printf("Age: %d\n", employees[i].age);
        printf("Position: %s\n", employees[i].position);
        printf("Date of Joining: %s\n\n", employees[i].date);
    }
    qsort(employees, n, sizeof(struct Employee), compareByDate);
    printf("\nEmployee List sorted by date of joining:\n\n");
    for (i = 0; i < n; i++) {
        printf("Name: %s\n", employees[i].name);
    }
    return 0;
}

5.

#include <stdio.h>
int main() {
    int i, j, a, b, c, sum, acute = 0, right = 0, obtuse = 0, wrong = 0;
    for (i = 1; i <= 5; i++) {
        printf("Enter the three angles of triangle %d:\n",i);
        scanf("%d %d %d", &a, &b, &c);
        sum = a + b + c;
        if (sum > 180) {
            printf("Wrong Entry try again\n");
            wrong++;
            i--;
            continue;
        }
        if (a < b) {
            j = a;
            a = b;
            b = j;
        }
        if (a < c) {
            j = a;
            a = c;
            c = j;
        }
        if (a*a == b*b + c*c) {
            printf("Right-Angled Triangle\n");
            right++;
        } else if (a*a < b*b + c*c) {
            printf("Acute Angled Triangle\n");
            acute++;
        } else {
            printf("Obtuse Angled Triangle\n");
            obtuse++;
        }
    }
    printf("\nAcute Angled Triangle: %d\n", acute);
    printf("Right Angled Triangle: %d\n", right);
    printf("Obtuse Angled Triangle: %d\n", obtuse);
    printf("Wrong Entries: %d\n", wrong);
    return 0;
}
