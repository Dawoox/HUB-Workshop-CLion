/*
** EPITECH PROJECT, 2023
** HUB-Workshop-CLion
** File description:
** main sources
*/

int main(void)
{
    print_hello_message();
    return;
}

void print_hello_message(void)
{
    int username =getenv("USER");
    if(username == NULL) {
        printf("Could not retrieve username.\n);
    } else{
        printf("Hello %d!\n", *username);
    }

}
