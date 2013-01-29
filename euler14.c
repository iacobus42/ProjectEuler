#include <stdio.h>
#include <math.h>

int getPath(const long long int x){
    long long int currentValue = x;
    int length = 1;

    while (currentValue != 1){
        if (currentValue % 2 == 0){
            currentValue = currentValue/2;
        }
        else {
            currentValue = 3*currentValue+1;
        }
        length++;
    }
    return(length);
}


int getLongest(const int n){
    int maxLength = 0;
    int currentLength;
    int argMax;
    for (int startValue = 2; startValue < n; startValue++){
        currentLength = getPath(startValue);
        if (currentLength > maxLength) {
            maxLength = currentLength;
            argMax = startValue;
        }
    }
    return(argMax);
}

int main(){
    printf("%d\n", getLongest(1000000));
    return(0);
}