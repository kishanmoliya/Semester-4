#include<stdio.h>
#include<stdlib.h>
void main(){
    long int i;
	
	FILE *fp1, *fp2, *fp3;
	
	fp1 = fopen("bestCase.txt", "w");
	fp2 = fopen("averageCase.txt", "w");
	fp3 = fopen("worstCase.txt", "w");
	
	for(i=0; i<=100000; i++){
		fprintf(fp1, "%d\n", i);
		fprintf(fp2, "%d\n", rand());
		fprintf(fp3, "%d\n", 99999-i+1);
	}
}