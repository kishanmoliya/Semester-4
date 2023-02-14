#include<stdio.h>
void main(){
    long i=0;

    FILE *fp;

    fp = fopen("test/bestCase.txt","r");

    while(fscanf(fp,"%d",&i)!=EOF){
        printf("%d\n",i);
        i++;
    }
}