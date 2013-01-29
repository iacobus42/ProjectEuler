#include <stdio.h>
#include <math.h>

int isPrime(int x){
    double sqrtX = sqrt(x);
    int testValue = 2;
    int prime = 1;

    while (testValue <= sqrtX and prime == 1){
        if (x % testValue == 0){
            prime = 0;
        }
        else {
            if (testValue == 2){
                testValue = testValue + 1;
            }
            else{
                testValue = testValue + 2;
            }
        }

    }
    return(prime);
}

int getNthPrime(int n){
    int counter = 1;
    int testValue = 1;
    int currentPrime;
    while (counter < n){
        testValue = testValue + 2;
        currentPrime = isPrime(testValue);
        if (currentPrime == 1){
            counter = counter++;
        }
    }
    return(testValue);
}

int main(){
    int result;
    result = getNthPrime(10001);
    printf("%d", result);
    return(0);
}

