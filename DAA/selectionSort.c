#include<stdio.h>
void mian(){
    int i, j, n, temp, min;

    printf("Eneter the size of Array: ");
    scanf("%d",&n);

    int arr[n];

    for(i=0; i<n ;i++){
        printf("Enter the Element %d = ",i+1);
        scanf("%d",&arr[i]);
    }

    for(i=0; i<n; i++){
        min = arr[i];
        for(j=i+1; j<n; j++){
            if(arr[j] < min){
                temp = arr[j];
                arr[j] = min;
                min = temp;
            }
        }
    }

    for(i=0; i<n; i++){
        printf("%d, ",arr[i]);
    }
}