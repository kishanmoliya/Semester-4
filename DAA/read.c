#include<stdio.h>
void main(){
	long int i;
	
	FILE *fp;
	
	fp = fopen("demo5.txt", "w");
	
	for(i=0; i<200; i++){
		fprintf(fp, "%d\n", rand());
	}
}
