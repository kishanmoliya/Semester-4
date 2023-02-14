#include<stdio.h>
void main(){
    int i,n;

    printf("Enter thr Size of Array: ");
    scanf("%d",&n);

    int arr[n];
    //Scan Value for Array.
    for(i=0; i<n; i++){
        printf("Enter the Element %d: ",i+1);
        scanf("%d",&arr[i]);
    }

    int max = arr[0];
    //Find the Largest Element in Given Array.
    for(i=1; i<n; i++){
        if(arr[i] > max){
            max = arr[i];
        }
    }

    int count[max+1];
    //initialized new arrray with 0.
    for(i=0; i<max; i++){
        count[i] = 0;
    }

    //fill the number of accurance in count Array.
    for(i=0 ;i<n; i++){
        count[arr[i]]++;
    }

    //Sum of All next Accurance in count
    for(i=1; i<=max; i++){
        count[i] = count[i] + count[i-1];
    }

    //Final Array
    int final[n];
    for(i=n-1; i>=0; i--){
        final[--count[arr[i]]] = arr[i];
    }

    //Print The Sorted Array.
    for(i=0; i<n; i++){
        printf("%d",final[i]);
    }
}