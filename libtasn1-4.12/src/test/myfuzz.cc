#include <string.h>
#include <stdint.h>
#include "fuzz-main.h"

int test(int argc0, char *argv[]);

extern "C" int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size){
        if(size < 1 )return 0;
        char *str = new char[size+1];
        memcpy(str, data, size);
        str[size] = 0;
        int argc0=2;
        char *argv0[2];
        argv0[0] = (char *)"asn1Praser";
        argv0[1] = str;
        test(argc0, argv0);
        return 0;
}
int test(int argc0, char *argv0[]){
	int a = fuzz_main(argc0, argv0);
	return 0;
}
