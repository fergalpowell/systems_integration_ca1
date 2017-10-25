#include <stdio.h>
#include <string.h>

main() {
	char command[100];

	printf("Welcome to my shell\nPlease enter a command:\n>");
	scanf("%s", command);

	while (!strstr(command, "stop")) {
		if (strstr(command, "pwd") || strstr(command, "pw")) {
			system("pwd");
			printf(">");
			scanf("%s", command);
		}
	}
}
