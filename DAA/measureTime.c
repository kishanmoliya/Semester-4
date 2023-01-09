#include<stdio.h>
#include<time.h>
void main(){
    int i;
    clock_t start,end;
    double cpu_time_used;

    start = clock();
    for(i=0; i<10000; i++){
        printf("%d",i);
    }
    end = clock();
    cpu_time_used = ((double)(end-start))/CLOCKS_PER_SEC;
    printf("\nTotal Time = %d",cpu_time_used);
}