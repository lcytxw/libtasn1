; ModuleID = 'asn1Parser.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.asn1_node_st = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@llvm.global_ctors = appending global [8 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 1, void ()* @asan.module_ctor, i8* null }, { i32, void ()*, i8* } { i32 2, void ()* @sancov.module_ctor, i8* null }, { i32, void ()*, i8* } { i32 1, void ()* @asan.module_ctor.4, i8* null }, { i32, void ()*, i8* } { i32 2, void ()* @sancov.module_ctor.23, i8* null }, { i32, void ()*, i8* } { i32 1, void ()* @asan.module_ctor.31, i8* null }, { i32, void ()*, i8* } { i32 2, void ()* @sancov.module_ctor.112, i8* null }, { i32, void ()*, i8* } { i32 1, void ()* @asan.module_ctor.125, i8* null }, { i32, void ()*, i8* } { i32 2, void ()* @sancov.module_ctor.129, i8* null }]
@0 = internal global [24 x { i64, i64, i64, i64, i64, i64, i64 }] [{ i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [11 x i8], [53 x i8] }* @.str to i64), i64 11, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.26 to i64), i64 ptrtoint ([13 x i8]* @__asan_gen_.25 to i64), i64 0, i64 ptrtoint ({ [13 x i8]*, i32, i32 }* @__asan_gen_.28 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [6 x %struct.option], [32 x i8] }* @fuzz_main.long_options to i64), i64 192, i64 224, i64 ptrtoint ([13 x i8]* @__asan_gen_.29 to i64), i64 ptrtoint ([13 x i8]* @__asan_gen_.25 to i64), i64 0, i64 ptrtoint ({ [13 x i8]*, i32, i32 }* @__asan_gen_.31 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [5 x i8], [59 x i8] }* @.str.1 to i64), i64 5, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.32 to i64), i64 ptrtoint ([13 x i8]* @__asan_gen_.25 to i64), i64 0, i64 ptrtoint ({ [13 x i8]*, i32, i32 }* @__asan_gen_.34 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [8 x i8], [56 x i8] }* @.str.2 to i64), i64 8, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.35 to i64), i64 ptrtoint ([13 x i8]* @__asan_gen_.25 to i64), i64 0, i64 ptrtoint ({ [13 x i8]*, i32, i32 }* @__asan_gen_.37 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [6 x i8], [58 x i8] }* @.str.3 to i64), i64 6, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.38 to i64), i64 ptrtoint ([13 x i8]* @__asan_gen_.25 to i64), i64 0, i64 ptrtoint ({ [13 x i8]*, i32, i32 }* @__asan_gen_.40 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [7 x i8], [57 x i8] }* @.str.4 to i64), i64 7, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.41 to i64), i64 ptrtoint ([13 x i8]* @__asan_gen_.25 to i64), i64 0, i64 ptrtoint ({ [13 x i8]*, i32, i32 }* @__asan_gen_.43 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [5 x i8], [59 x i8] }* @.str.5 to i64), i64 5, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.44 to i64), i64 ptrtoint ([13 x i8]* @__asan_gen_.25 to i64), i64 0, i64 ptrtoint ({ [13 x i8]*, i32, i32 }* @__asan_gen_.46 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [8 x i8], [56 x i8] }* @.str.6 to i64), i64 8, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.47 to i64), i64 ptrtoint ([13 x i8]* @__asan_gen_.25 to i64), i64 0, i64 ptrtoint ({ [13 x i8]*, i32, i32 }* @__asan_gen_.49 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [10 x i8], [54 x i8] }* @.str.7 to i64), i64 10, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.50 to i64), i64 ptrtoint ([13 x i8]* @__asan_gen_.25 to i64), i64 0, i64 ptrtoint ({ [13 x i8]*, i32, i32 }* @__asan_gen_.52 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [13 x i8], [51 x i8] }* @.str.8 to i64), i64 13, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.53 to i64), i64 ptrtoint ([13 x i8]* @__asan_gen_.25 to i64), i64 0, i64 ptrtoint ({ [13 x i8]*, i32, i32 }* @__asan_gen_.55 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [9 x i8], [55 x i8] }* @.str.9 to i64), i64 9, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.56 to i64), i64 ptrtoint ([13 x i8]* @__asan_gen_.25 to i64), i64 0, i64 ptrtoint ({ [13 x i8]*, i32, i32 }* @__asan_gen_.58 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [5 x i8], [59 x i8] }* @.str.10 to i64), i64 5, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.59 to i64), i64 ptrtoint ([13 x i8]* @__asan_gen_.25 to i64), i64 0, i64 ptrtoint ({ [13 x i8]*, i32, i32 }* @__asan_gen_.61 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [14 x i8], [50 x i8] }* @.str.11 to i64), i64 14, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.62 to i64), i64 ptrtoint ([13 x i8]* @__asan_gen_.25 to i64), i64 0, i64 ptrtoint ({ [13 x i8]*, i32, i32 }* @__asan_gen_.64 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [62 x i8], [34 x i8] }* @.str.12 to i64), i64 62, i64 96, i64 ptrtoint ([17 x i8]* @__asan_gen_.65 to i64), i64 ptrtoint ([13 x i8]* @__asan_gen_.25 to i64), i64 0, i64 ptrtoint ({ [13 x i8]*, i32, i32 }* @__asan_gen_.67 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [55 x i8], [41 x i8] }* @.str.13 to i64), i64 55, i64 96, i64 ptrtoint ([17 x i8]* @__asan_gen_.68 to i64), i64 ptrtoint ([13 x i8]* @__asan_gen_.25 to i64), i64 0, i64 ptrtoint ({ [13 x i8]*, i32, i32 }* @__asan_gen_.70 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [7 x i8], [57 x i8] }* @.str.14 to i64), i64 7, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.71 to i64), i64 ptrtoint ([13 x i8]* @__asan_gen_.25 to i64), i64 0, i64 ptrtoint ({ [13 x i8]*, i32, i32 }* @__asan_gen_.73 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [35 x i8], [61 x i8] }* @.str.15 to i64), i64 35, i64 96, i64 ptrtoint ([17 x i8]* @__asan_gen_.74 to i64), i64 ptrtoint ([13 x i8]* @__asan_gen_.25 to i64), i64 0, i64 ptrtoint ({ [13 x i8]*, i32, i32 }* @__asan_gen_.76 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [16 x i8], [48 x i8] }* @.str.16 to i64), i64 16, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.77 to i64), i64 ptrtoint ([13 x i8]* @__asan_gen_.25 to i64), i64 0, i64 ptrtoint ({ [13 x i8]*, i32, i32 }* @__asan_gen_.79 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [20 x i8], [44 x i8] }* @.str.17 to i64), i64 20, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.80 to i64), i64 ptrtoint ([13 x i8]* @__asan_gen_.25 to i64), i64 0, i64 ptrtoint ({ [13 x i8]*, i32, i32 }* @__asan_gen_.82 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [39 x i8], [57 x i8] }* @.str.18 to i64), i64 39, i64 96, i64 ptrtoint ([17 x i8]* @__asan_gen_.83 to i64), i64 ptrtoint ([13 x i8]* @__asan_gen_.25 to i64), i64 0, i64 ptrtoint ({ [13 x i8]*, i32, i32 }* @__asan_gen_.85 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [25 x i8], [39 x i8] }* @.str.19 to i64), i64 25, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.86 to i64), i64 ptrtoint ([13 x i8]* @__asan_gen_.25 to i64), i64 0, i64 ptrtoint ({ [13 x i8]*, i32, i32 }* @__asan_gen_.88 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [95 x i8], [33 x i8] }* @str to i64), i64 95, i64 128, i64 ptrtoint ([4 x i8]* @__asan_gen_.89 to i64), i64 ptrtoint ([13 x i8]* @__asan_gen_.25 to i64), i64 0, i64 0 }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [302 x i8], [82 x i8] }* @str.22 to i64), i64 302, i64 384, i64 ptrtoint ([7 x i8]* @__asan_gen_.90 to i64), i64 ptrtoint ([13 x i8]* @__asan_gen_.25 to i64), i64 0, i64 0 }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [13 x i8], [51 x i8] }* @1 to i64), i64 13, i64 64, i64 ptrtoint ([1 x i8]* @__asan_gen_.91 to i64), i64 ptrtoint ([13 x i8]* @__asan_gen_.25 to i64), i64 0, i64 0 }]
@.str = internal unnamed_addr constant { [11 x i8], [53 x i8] } { [11 x i8] c"asn1Praser\00", [53 x i8] zeroinitializer }, align 32
@__asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.25 = private constant [13 x i8] c"asn1Parser.c\00", align 1
@__asan_gen_.28 = private unnamed_addr constant { [13 x i8]*, i32, i32 } { [13 x i8]* @__asan_gen_.27, i32 74, i32 28 }
@__asan_gen_.27 = private unnamed_addr constant [13 x i8] c"asn1Parser.c\00", align 1
@fuzz_main.long_options = internal constant { [6 x %struct.option], [32 x i8] } { [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ({ [5 x i8], [59 x i8] }, { [5 x i8], [59 x i8] }* @.str.1, i32 0, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ({ [8 x i8], [56 x i8] }, { [8 x i8], [56 x i8] }* @.str.2, i32 0, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ({ [6 x i8], [58 x i8] }, { [6 x i8], [58 x i8] }* @.str.3, i32 0, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ({ [7 x i8], [57 x i8] }, { [7 x i8], [57 x i8] }* @.str.4, i32 0, i32 0, i32 0), i32 1, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ({ [5 x i8], [59 x i8] }, { [5 x i8], [59 x i8] }* @.str.5, i32 0, i32 0, i32 0), i32 1, i32* null, i32 110 }, %struct.option zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal unnamed_addr constant { [5 x i8], [59 x i8] } { [5 x i8] c"help\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal unnamed_addr constant { [8 x i8], [56 x i8] } { [8 x i8] c"version\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal unnamed_addr constant { [6 x i8], [58 x i8] } { [6 x i8] c"check\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal unnamed_addr constant { [7 x i8], [57 x i8] } { [7 x i8] c"output\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal unnamed_addr constant { [5 x i8], [59 x i8] } { [5 x i8] c"name\00", [59 x i8] zeroinitializer }, align 32
@__asan_gen_.29 = private unnamed_addr constant [13 x i8] c"long_options\00", align 1
@__asan_gen_.31 = private unnamed_addr constant { [13 x i8]*, i32, i32 } { [13 x i8]* @__asan_gen_.30, i32 83, i32 30 }
@__asan_gen_.30 = private unnamed_addr constant [13 x i8] c"asn1Parser.c\00", align 1
@__asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.34 = private unnamed_addr constant { [13 x i8]*, i32, i32 } { [13 x i8]* @__asan_gen_.33, i32 84, i32 6 }
@__asan_gen_.33 = private unnamed_addr constant [13 x i8] c"asn1Parser.c\00", align 1
@__asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.37 = private unnamed_addr constant { [13 x i8]*, i32, i32 } { [13 x i8]* @__asan_gen_.36, i32 85, i32 6 }
@__asan_gen_.36 = private unnamed_addr constant [13 x i8] c"asn1Parser.c\00", align 1
@__asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.40 = private unnamed_addr constant { [13 x i8]*, i32, i32 } { [13 x i8]* @__asan_gen_.39, i32 86, i32 6 }
@__asan_gen_.39 = private unnamed_addr constant [13 x i8] c"asn1Parser.c\00", align 1
@__asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.43 = private unnamed_addr constant { [13 x i8]*, i32, i32 } { [13 x i8]* @__asan_gen_.42, i32 87, i32 6 }
@__asan_gen_.42 = private unnamed_addr constant [13 x i8] c"asn1Parser.c\00", align 1
@__asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.46 = private unnamed_addr constant { [13 x i8]*, i32, i32 } { [13 x i8]* @__asan_gen_.45, i32 88, i32 6 }
@__asan_gen_.45 = private unnamed_addr constant [13 x i8] c"asn1Parser.c\00", align 1
@.str.6 = internal unnamed_addr constant { [8 x i8], [56 x i8] } { [8 x i8] c"hvco:n:\00", [56 x i8] zeroinitializer }, align 32
@__asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.49 = private unnamed_addr constant { [13 x i8]*, i32, i32 } { [13 x i8]* @__asan_gen_.48, i32 109, i32 27 }
@__asan_gen_.48 = private unnamed_addr constant [13 x i8] c"asn1Parser.c\00", align 1
@.str.7 = internal unnamed_addr constant { [10 x i8], [54 x i8] } { [10 x i8] c"option %s\00", [54 x i8] zeroinitializer }, align 32
@__asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.52 = private unnamed_addr constant { [13 x i8]*, i32, i32 } { [13 x i8]* @__asan_gen_.51, i32 117, i32 21 }
@__asan_gen_.51 = private unnamed_addr constant [13 x i8] c"asn1Parser.c\00", align 1
@.str.8 = internal unnamed_addr constant { [13 x i8], [51 x i8] } { [13 x i8] c" with arg %s\00", [51 x i8] zeroinitializer }, align 32
@__asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.55 = private unnamed_addr constant { [13 x i8]*, i32, i32 } { [13 x i8]* @__asan_gen_.54, i32 119, i32 23 }
@__asan_gen_.54 = private unnamed_addr constant [13 x i8] c"asn1Parser.c\00", align 1
@.str.9 = internal unnamed_addr constant { [9 x i8], [55 x i8] } { [9 x i8] c"libtasn1\00", [55 x i8] zeroinitializer }, align 32
@__asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.58 = private unnamed_addr constant { [13 x i8]*, i32, i32 } { [13 x i8]* @__asan_gen_.57, i32 128, i32 39 }
@__asan_gen_.57 = private unnamed_addr constant [13 x i8] c"asn1Parser.c\00", align 1
@.str.10 = internal unnamed_addr constant { [5 x i8], [59 x i8] } { [5 x i8] c"4.12\00", [59 x i8] zeroinitializer }, align 32
@__asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.61 = private unnamed_addr constant { [13 x i8]*, i32, i32 } { [13 x i8]* @__asan_gen_.60, i32 128, i32 48 }
@__asan_gen_.60 = private unnamed_addr constant [13 x i8] c"asn1Parser.c\00", align 1
@.str.11 = internal unnamed_addr constant { [14 x i8], [50 x i8] } { [14 x i8] c"Fabio Fiorina\00", [50 x i8] zeroinitializer }, align 32
@__asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.64 = private unnamed_addr constant { [13 x i8]*, i32, i32 } { [13 x i8]* @__asan_gen_.63, i32 129, i32 10 }
@__asan_gen_.63 = private unnamed_addr constant [13 x i8] c"asn1Parser.c\00", align 1
@.str.12 = internal unnamed_addr constant { [62 x i8], [34 x i8] } { [62 x i8] c"asn1Parser: option '%s' not recognized or without argument.\0A\0A\00", [34 x i8] zeroinitializer }, align 32
@__asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.67 = private unnamed_addr constant { [13 x i8]*, i32, i32 } { [13 x i8]* @__asan_gen_.66, i32 147, i32 6 }
@__asan_gen_.66 = private unnamed_addr constant [13 x i8] c"asn1Parser.c\00", align 1
@.str.13 = internal unnamed_addr constant { [55 x i8], [41 x i8] } { [55 x i8] c"asn1Parser: ?? getopt returned character code Ox%x ??\0A\00", [41 x i8] zeroinitializer }, align 32
@__asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.70 = private unnamed_addr constant { [13 x i8]*, i32, i32 } { [13 x i8]* @__asan_gen_.69, i32 155, i32 6 }
@__asan_gen_.69 = private unnamed_addr constant [13 x i8] c"asn1Parser.c\00", align 1
@.str.14 = internal unnamed_addr constant { [7 x i8], [57 x i8] } { [7 x i8] c"Done.\0A\00", [57 x i8] zeroinitializer }, align 32
@__asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.73 = private unnamed_addr constant { [13 x i8]*, i32, i32 } { [13 x i8]* @__asan_gen_.72, i32 187, i32 14 }
@__asan_gen_.72 = private unnamed_addr constant [13 x i8] c"asn1Parser.c\00", align 1
@.str.15 = internal unnamed_addr constant { [35 x i8], [61 x i8] } { [35 x i8] c"asn1Parser: file %s was not found\0A\00", [61 x i8] zeroinitializer }, align 32
@__asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.76 = private unnamed_addr constant { [13 x i8]*, i32, i32 } { [13 x i8]* @__asan_gen_.75, i32 190, i32 24 }
@__asan_gen_.75 = private unnamed_addr constant [13 x i8] c"asn1Parser.c\00", align 1
@.str.16 = internal unnamed_addr constant { [16 x i8], [48 x i8] } { [16 x i8] c"asn1Parser: %s\0A\00", [48 x i8] zeroinitializer }, align 32
@__asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.79 = private unnamed_addr constant { [13 x i8]*, i32, i32 } { [13 x i8]* @__asan_gen_.78, i32 195, i32 24 }
@__asan_gen_.78 = private unnamed_addr constant [13 x i8] c"asn1Parser.c\00", align 1
@.str.17 = internal unnamed_addr constant { [20 x i8], [44 x i8] } { [20 x i8] c"libtasn1 ERROR: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@__asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.82 = private unnamed_addr constant { [13 x i8]*, i32, i32 } { [13 x i8]* @__asan_gen_.81, i32 198, i32 24 }
@__asan_gen_.81 = private unnamed_addr constant [13 x i8] c"asn1Parser.c\00", align 1
@.str.18 = internal unnamed_addr constant { [39 x i8], [57 x i8] } { [39 x i8] c"Try `%s --help' for more information.\0A\00", [57 x i8] zeroinitializer }, align 32
@__asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.85 = private unnamed_addr constant { [13 x i8]*, i32, i32 } { [13 x i8]* @__asan_gen_.84, i32 45, i32 22 }
@__asan_gen_.84 = private unnamed_addr constant [13 x i8] c"asn1Parser.c\00", align 1
@.str.19 = internal unnamed_addr constant { [25 x i8], [39 x i8] } { [25 x i8] c"Usage: %s [OPTION] FILE\0A\00", [39 x i8] zeroinitializer }, align 32
@__asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.88 = private unnamed_addr constant { [13 x i8]*, i32, i32 } { [13 x i8]* @__asan_gen_.87, i32 48, i32 15 }
@__asan_gen_.87 = private unnamed_addr constant [13 x i8] c"asn1Parser.c\00", align 1
@str = internal unnamed_addr constant { [95 x i8], [33 x i8] } { [95 x i8] c"Read FILE with ASN.1 definitions and generate\0Aa C array that is used with libtasn1 functions.\0A\00", [33 x i8] zeroinitializer }, align 32
@__asan_gen_.89 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@str.22 = internal unnamed_addr constant { [302 x i8], [82 x i8] } { [302 x i8] c"Mandatory arguments to long options are mandatory for short options too.\0A  -c, --check           checks the syntax only\0A  -o, --output=FILE     output file\0A  -n, --name=NAME       array name\0A  -h, --help            display this help and exit\0A  -v, --version         output version information and exit\00", [82 x i8] zeroinitializer }, align 32
@__asan_gen_.90 = private unnamed_addr constant [7 x i8] c"str.22\00", align 1
@1 = internal constant { [13 x i8], [51 x i8] } { [13 x i8] c"asn1Parser.c\00", [51 x i8] zeroinitializer }, align 32
@__asan_gen_.91 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__sancov_gen_cov = private global [33 x i32] zeroinitializer
@__sancov_gen_cov_counter = private global [32 x i8] zeroinitializer, align 16
@llvm.global_dtors = appending global [4 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 1, void ()* @asan.module_dtor, i8* null }, { i32, void ()*, i8* } { i32 1, void ()* @asan.module_dtor.27, i8* null }, { i32, void ()*, i8* } { i32 1, void ()* @asan.module_dtor.116, i8* null }, { i32, void ()*, i8* } { i32 1, void ()* @asan.module_dtor.133, i8* null }]
@__asan_option_detect_stack_use_after_return = external global i32
@__asan_gen_ = private unnamed_addr constant [16 x i8] c"1 32 16 5 argv0\00", align 1
@__asan_gen_.24 = private unnamed_addr constant [65 x i8] c"3 32 4 12 option_index 48 8 7 pointer 80 128 16 errorDescription\00", align 1
@opterr = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@optarg = external global i8*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@optind = external global i32, align 4
@program_name = global { i8*, [56 x i8] } zeroinitializer, align 32
@2 = internal global [5 x { i64, i64, i64, i64, i64, i64, i64 }] [{ i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ i8*, [56 x i8] }* @program_name to i64), i64 8, i64 64, i64 ptrtoint ([13 x i8]* @__asan_gen_.4 to i64), i64 ptrtoint ([11 x i8]* @__asan_gen_.5 to i64), i64 0, i64 ptrtoint ({ [11 x i8]*, i32, i32 }* @__asan_gen_.6 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [56 x i8], [40 x i8] }* @.str.20 to i64), i64 56, i64 96, i64 ptrtoint ([17 x i8]* @__asan_gen_.7 to i64), i64 ptrtoint ([11 x i8]* @__asan_gen_.5 to i64), i64 0, i64 ptrtoint ({ [11 x i8]*, i32, i32 }* @__asan_gen_.9 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [8 x i8], [56 x i8] }* @.str.1.21 to i64), i64 8, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.10 to i64), i64 ptrtoint ([11 x i8]* @__asan_gen_.5 to i64), i64 0, i64 ptrtoint ({ [11 x i8]*, i32, i32 }* @__asan_gen_.12 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [4 x i8], [60 x i8] }* @.str.2.22 to i64), i64 4, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.13 to i64), i64 ptrtoint ([11 x i8]* @__asan_gen_.5 to i64), i64 0, i64 ptrtoint ({ [11 x i8]*, i32, i32 }* @__asan_gen_.15 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [11 x i8], [53 x i8] }* @3 to i64), i64 11, i64 64, i64 ptrtoint ([1 x i8]* @__asan_gen_.16 to i64), i64 ptrtoint ([11 x i8]* @__asan_gen_.5 to i64), i64 0, i64 0 }]
@__asan_gen_.4 = private unnamed_addr constant [13 x i8] c"program_name\00", align 1
@__asan_gen_.5 = private constant [11 x i8] c"progname.c\00", align 1
@__asan_gen_.6 = private unnamed_addr constant { [11 x i8]*, i32, i32 } { [11 x i8]* @__asan_gen_.5.6, i32 33, i32 13 }
@__asan_gen_.5.6 = private unnamed_addr constant [11 x i8] c"progname.c\00", align 1
@.str.20 = internal unnamed_addr constant { [56 x i8], [40 x i8] } { [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", [40 x i8] zeroinitializer }, align 32
@__asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.9 = private unnamed_addr constant { [11 x i8]*, i32, i32 } { [11 x i8]* @__asan_gen_.8, i32 54, i32 14 }
@__asan_gen_.8 = private unnamed_addr constant [11 x i8] c"progname.c\00", align 1
@.str.1.21 = internal unnamed_addr constant { [8 x i8], [56 x i8] } { [8 x i8] c"/.libs/\00", [56 x i8] zeroinitializer }, align 32
@__asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.12 = private unnamed_addr constant { [11 x i8]*, i32, i32 } { [11 x i8]* @__asan_gen_.11, i32 61, i32 28 }
@__asan_gen_.11 = private unnamed_addr constant [11 x i8] c"progname.c\00", align 1
@.str.2.22 = internal unnamed_addr constant { [4 x i8], [60 x i8] } { [4 x i8] c"lt-\00", [60 x i8] zeroinitializer }, align 32
@__asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.15 = private unnamed_addr constant { [11 x i8]*, i32, i32 } { [11 x i8]* @__asan_gen_.14, i32 64, i32 11 }
@__asan_gen_.14 = private unnamed_addr constant [11 x i8] c"progname.c\00", align 1
@3 = internal constant { [11 x i8], [53 x i8] } { [11 x i8] c"progname.c\00", [53 x i8] zeroinitializer }, align 32
@__asan_gen_.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__sancov_gen_cov.24 = private global [10 x i32] zeroinitializer
@__sancov_gen_cov_counter.25 = private global [16 x i8] zeroinitializer, align 16
@program_invocation_short_name = external global i8*, align 8
@program_invocation_name = external global i8*, align 8
@4 = internal global [21 x { i64, i64, i64, i64, i64, i64, i64 }] [{ i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [12 x i8], [52 x i8] }* @.str.32 to i64), i64 12, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.23 to i64), i64 ptrtoint ([14 x i8]* @__asan_gen_.22 to i64), i64 0, i64 ptrtoint ({ [14 x i8]*, i32, i32 }* @__asan_gen_.25.33 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [7 x i8], [57 x i8] }* @.str.1.35 to i64), i64 7, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.26.36 to i64), i64 ptrtoint ([14 x i8]* @__asan_gen_.22 to i64), i64 0, i64 ptrtoint ({ [14 x i8]*, i32, i32 }* @__asan_gen_.28.37 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [4 x i8], [60 x i8] }* @.str.2.39 to i64), i64 4, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.29.40 to i64), i64 ptrtoint ([14 x i8]* @__asan_gen_.22 to i64), i64 0, i64 ptrtoint ({ [14 x i8]*, i32, i32 }* @__asan_gen_.31.41 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [203 x i8], [53 x i8] }* @.str.3.43 to i64), i64 203, i64 256, i64 ptrtoint ([17 x i8]* @__asan_gen_.32.44 to i64), i64 ptrtoint ([14 x i8]* @__asan_gen_.22 to i64), i64 0, i64 ptrtoint ({ [14 x i8]*, i32, i32 }* @__asan_gen_.34.45 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [16 x i8], [48 x i8] }* @.str.4.47 to i64), i64 16, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.35.48 to i64), i64 ptrtoint ([14 x i8]* @__asan_gen_.22 to i64), i64 0, i64 ptrtoint ({ [14 x i8]*, i32, i32 }* @__asan_gen_.37.49 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [23 x i8], [41 x i8] }* @.str.5.51 to i64), i64 23, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.38.52 to i64), i64 ptrtoint ([14 x i8]* @__asan_gen_.22 to i64), i64 0, i64 ptrtoint ({ [14 x i8]*, i32, i32 }* @__asan_gen_.40.53 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [28 x i8], [36 x i8] }* @.str.6.55 to i64), i64 28, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.41.56 to i64), i64 ptrtoint ([14 x i8]* @__asan_gen_.22 to i64), i64 0, i64 ptrtoint ({ [14 x i8]*, i32, i32 }* @__asan_gen_.43.57 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [32 x i8], [32 x i8] }* @.str.7.59 to i64), i64 32, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.44.60 to i64), i64 ptrtoint ([14 x i8]* @__asan_gen_.22 to i64), i64 0, i64 ptrtoint ({ [14 x i8]*, i32, i32 }* @__asan_gen_.46.61 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [36 x i8], [60 x i8] }* @.str.8.63 to i64), i64 36, i64 96, i64 ptrtoint ([17 x i8]* @__asan_gen_.47.64 to i64), i64 ptrtoint ([14 x i8]* @__asan_gen_.22 to i64), i64 0, i64 ptrtoint ({ [14 x i8]*, i32, i32 }* @__asan_gen_.49.65 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [40 x i8], [56 x i8] }* @.str.9.67 to i64), i64 40, i64 96, i64 ptrtoint ([17 x i8]* @__asan_gen_.50.68 to i64), i64 ptrtoint ([14 x i8]* @__asan_gen_.22 to i64), i64 0, i64 ptrtoint ({ [14 x i8]*, i32, i32 }* @__asan_gen_.52.69 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [44 x i8], [52 x i8] }* @.str.10.71 to i64), i64 44, i64 96, i64 ptrtoint ([17 x i8]* @__asan_gen_.53.72 to i64), i64 ptrtoint ([14 x i8]* @__asan_gen_.22 to i64), i64 0, i64 ptrtoint ({ [14 x i8]*, i32, i32 }* @__asan_gen_.55.73 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [48 x i8], [48 x i8] }* @.str.11.75 to i64), i64 48, i64 96, i64 ptrtoint ([17 x i8]* @__asan_gen_.56.76 to i64), i64 ptrtoint ([14 x i8]* @__asan_gen_.22 to i64), i64 0, i64 ptrtoint ({ [14 x i8]*, i32, i32 }* @__asan_gen_.58.77 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [52 x i8], [44 x i8] }* @.str.12.79 to i64), i64 52, i64 96, i64 ptrtoint ([17 x i8]* @__asan_gen_.59.80 to i64), i64 ptrtoint ([14 x i8]* @__asan_gen_.22 to i64), i64 0, i64 ptrtoint ({ [14 x i8]*, i32, i32 }* @__asan_gen_.61.81 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [60 x i8], [36 x i8] }* @.str.13.83 to i64), i64 60, i64 96, i64 ptrtoint ([17 x i8]* @__asan_gen_.62.84 to i64), i64 ptrtoint ([14 x i8]* @__asan_gen_.22 to i64), i64 0, i64 ptrtoint ({ [14 x i8]*, i32, i32 }* @__asan_gen_.64.85 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [21 x i8], [43 x i8] }* @.str.14.87 to i64), i64 21, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.65.88 to i64), i64 ptrtoint ([14 x i8]* @__asan_gen_.22 to i64), i64 0, i64 ptrtoint ({ [14 x i8]*, i32, i32 }* @__asan_gen_.67.89 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [22 x i8], [42 x i8] }* @.str.15.91 to i64), i64 22, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.68.92 to i64), i64 ptrtoint ([14 x i8]* @__asan_gen_.22 to i64), i64 0, i64 ptrtoint ({ [14 x i8]*, i32, i32 }* @__asan_gen_.70.93 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [20 x i8], [44 x i8] }* @.str.16.95 to i64), i64 20, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.71.96 to i64), i64 ptrtoint ([14 x i8]* @__asan_gen_.22 to i64), i64 0, i64 ptrtoint ({ [14 x i8]*, i32, i32 }* @__asan_gen_.73.97 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [13 x i8], [51 x i8] }* @.str.17.99 to i64), i64 13, i64 64, i64 ptrtoint ([17 x i8]* @__asan_gen_.74.100 to i64), i64 ptrtoint ([14 x i8]* @__asan_gen_.22 to i64), i64 0, i64 ptrtoint ({ [14 x i8]*, i32, i32 }* @__asan_gen_.76.101 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [38 x i8], [58 x i8] }* @.str.18.103 to i64), i64 38, i64 96, i64 ptrtoint ([17 x i8]* @__asan_gen_.77.104 to i64), i64 ptrtoint ([14 x i8]* @__asan_gen_.22 to i64), i64 0, i64 ptrtoint ({ [14 x i8]*, i32, i32 }* @__asan_gen_.79.105 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [64 x i8], [32 x i8] }* @.str.19.107 to i64), i64 64, i64 96, i64 ptrtoint ([17 x i8]* @__asan_gen_.80.108 to i64), i64 ptrtoint ([14 x i8]* @__asan_gen_.22 to i64), i64 0, i64 ptrtoint ({ [14 x i8]*, i32, i32 }* @__asan_gen_.82.109 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [14 x i8], [50 x i8] }* @5 to i64), i64 14, i64 64, i64 ptrtoint ([1 x i8]* @__asan_gen_.83.111 to i64), i64 ptrtoint ([14 x i8]* @__asan_gen_.22 to i64), i64 0, i64 0 }]
@.str.32 = internal unnamed_addr constant { [12 x i8], [52 x i8] } { [12 x i8] c"%s (%s) %s\0A\00", [52 x i8] zeroinitializer }, align 32
@__asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.22 = private constant [14 x i8] c"version-etc.c\00", align 1
@__asan_gen_.25.33 = private unnamed_addr constant { [14 x i8]*, i32, i32 } { [14 x i8]* @__asan_gen_.24.34, i32 68, i32 22 }
@__asan_gen_.24.34 = private unnamed_addr constant [14 x i8] c"version-etc.c\00", align 1
@.str.1.35 = internal unnamed_addr constant { [7 x i8], [57 x i8] } { [7 x i8] c"%s %s\0A\00", [57 x i8] zeroinitializer }, align 32
@__asan_gen_.26.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.28.37 = private unnamed_addr constant { [14 x i8]*, i32, i32 } { [14 x i8]* @__asan_gen_.27.38, i32 70, i32 22 }
@__asan_gen_.27.38 = private unnamed_addr constant [14 x i8] c"version-etc.c\00", align 1
@.str.2.39 = internal unnamed_addr constant { [4 x i8], [60 x i8] } { [4 x i8] c"(C)\00", [60 x i8] zeroinitializer }, align 32
@__asan_gen_.29.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.31.41 = private unnamed_addr constant { [14 x i8]*, i32, i32 } { [14 x i8]* @__asan_gen_.30.42, i32 84, i32 43 }
@__asan_gen_.30.42 = private unnamed_addr constant [14 x i8] c"version-etc.c\00", align 1
@.str.3.43 = internal unnamed_addr constant { [203 x i8], [53 x i8] } { [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", [53 x i8] zeroinitializer }, align 32
@__asan_gen_.32.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.34.45 = private unnamed_addr constant { [14 x i8]*, i32, i32 } { [14 x i8]* @__asan_gen_.33.46, i32 86, i32 10 }
@__asan_gen_.33.46 = private unnamed_addr constant [14 x i8] c"version-etc.c\00", align 1
@.str.4.47 = internal unnamed_addr constant { [16 x i8], [48 x i8] } { [16 x i8] c"Written by %s.\0A\00", [48 x i8] zeroinitializer }, align 32
@__asan_gen_.35.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.37.49 = private unnamed_addr constant { [14 x i8]*, i32, i32 } { [14 x i8]* @__asan_gen_.36.50, i32 102, i32 24 }
@__asan_gen_.36.50 = private unnamed_addr constant [14 x i8] c"version-etc.c\00", align 1
@.str.5.51 = internal unnamed_addr constant { [23 x i8], [41 x i8] } { [23 x i8] c"Written by %s and %s.\0A\00", [41 x i8] zeroinitializer }, align 32
@__asan_gen_.38.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.40.53 = private unnamed_addr constant { [14 x i8]*, i32, i32 } { [14 x i8]* @__asan_gen_.39.54, i32 106, i32 24 }
@__asan_gen_.39.54 = private unnamed_addr constant [14 x i8] c"version-etc.c\00", align 1
@.str.6.55 = internal unnamed_addr constant { [28 x i8], [36 x i8] } { [28 x i8] c"Written by %s, %s, and %s.\0A\00", [36 x i8] zeroinitializer }, align 32
@__asan_gen_.41.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.43.57 = private unnamed_addr constant { [14 x i8]*, i32, i32 } { [14 x i8]* @__asan_gen_.42.58, i32 110, i32 24 }
@__asan_gen_.42.58 = private unnamed_addr constant [14 x i8] c"version-etc.c\00", align 1
@.str.7.59 = internal unnamed_addr constant { [32 x i8], [32 x i8] } { [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", [32 x i8] zeroinitializer }, align 32
@__asan_gen_.44.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.46.61 = private unnamed_addr constant { [14 x i8]*, i32, i32 } { [14 x i8]* @__asan_gen_.45.62, i32 117, i32 24 }
@__asan_gen_.45.62 = private unnamed_addr constant [14 x i8] c"version-etc.c\00", align 1
@.str.8.63 = internal unnamed_addr constant { [36 x i8], [60 x i8] } { [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", [60 x i8] zeroinitializer }, align 32
@__asan_gen_.47.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.49.65 = private unnamed_addr constant { [14 x i8]*, i32, i32 } { [14 x i8]* @__asan_gen_.48.66, i32 124, i32 24 }
@__asan_gen_.48.66 = private unnamed_addr constant [14 x i8] c"version-etc.c\00", align 1
@.str.9.67 = internal unnamed_addr constant { [40 x i8], [56 x i8] } { [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", [56 x i8] zeroinitializer }, align 32
@__asan_gen_.50.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.52.69 = private unnamed_addr constant { [14 x i8]*, i32, i32 } { [14 x i8]* @__asan_gen_.51.70, i32 131, i32 24 }
@__asan_gen_.51.70 = private unnamed_addr constant [14 x i8] c"version-etc.c\00", align 1
@.str.10.71 = internal unnamed_addr constant { [44 x i8], [52 x i8] } { [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", [52 x i8] zeroinitializer }, align 32
@__asan_gen_.53.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.55.73 = private unnamed_addr constant { [14 x i8]*, i32, i32 } { [14 x i8]* @__asan_gen_.54.74, i32 139, i32 24 }
@__asan_gen_.54.74 = private unnamed_addr constant [14 x i8] c"version-etc.c\00", align 1
@.str.11.75 = internal unnamed_addr constant { [48 x i8], [48 x i8] } { [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", [48 x i8] zeroinitializer }, align 32
@__asan_gen_.56.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.58.77 = private unnamed_addr constant { [14 x i8]*, i32, i32 } { [14 x i8]* @__asan_gen_.57.78, i32 147, i32 24 }
@__asan_gen_.57.78 = private unnamed_addr constant [14 x i8] c"version-etc.c\00", align 1
@.str.12.79 = internal unnamed_addr constant { [52 x i8], [44 x i8] } { [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", [44 x i8] zeroinitializer }, align 32
@__asan_gen_.59.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.61.81 = private unnamed_addr constant { [14 x i8]*, i32, i32 } { [14 x i8]* @__asan_gen_.60.82, i32 156, i32 24 }
@__asan_gen_.60.82 = private unnamed_addr constant [14 x i8] c"version-etc.c\00", align 1
@.str.13.83 = internal unnamed_addr constant { [60 x i8], [36 x i8] } { [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", [36 x i8] zeroinitializer }, align 32
@__asan_gen_.62.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.64.85 = private unnamed_addr constant { [14 x i8]*, i32, i32 } { [14 x i8]* @__asan_gen_.63.86, i32 167, i32 24 }
@__asan_gen_.63.86 = private unnamed_addr constant [14 x i8] c"version-etc.c\00", align 1
@.str.14.87 = internal unnamed_addr constant { [21 x i8], [43 x i8] } { [21 x i8] c"\0AReport bugs to: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@__asan_gen_.65.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.67.89 = private unnamed_addr constant { [14 x i8]*, i32, i32 } { [14 x i8]* @__asan_gen_.66.90, i32 245, i32 11 }
@__asan_gen_.66.90 = private unnamed_addr constant [14 x i8] c"version-etc.c\00", align 1
@.str.15.91 = internal unnamed_addr constant { [22 x i8], [42 x i8] } { [22 x i8] c"help-libtasn1@gnu.org\00", [42 x i8] zeroinitializer }, align 32
@__asan_gen_.68.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.70.93 = private unnamed_addr constant { [14 x i8]*, i32, i32 } { [14 x i8]* @__asan_gen_.69.94, i32 245, i32 40 }
@__asan_gen_.69.94 = private unnamed_addr constant [14 x i8] c"version-etc.c\00", align 1
@.str.16.95 = internal unnamed_addr constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s home page: <%s>\0A\00", [44 x i8] zeroinitializer }, align 32
@__asan_gen_.71.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.73.97 = private unnamed_addr constant { [14 x i8]*, i32, i32 } { [14 x i8]* @__asan_gen_.72.98, i32 251, i32 11 }
@__asan_gen_.72.98 = private unnamed_addr constant [14 x i8] c"version-etc.c\00", align 1
@.str.17.99 = internal unnamed_addr constant { [13 x i8], [51 x i8] } { [13 x i8] c"GNU Libtasn1\00", [51 x i8] zeroinitializer }, align 32
@__asan_gen_.74.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.76.101 = private unnamed_addr constant { [14 x i8]*, i32, i32 } { [14 x i8]* @__asan_gen_.75.102, i32 251, i32 38 }
@__asan_gen_.75.102 = private unnamed_addr constant [14 x i8] c"version-etc.c\00", align 1
@.str.18.103 = internal unnamed_addr constant { [38 x i8], [58 x i8] } { [38 x i8] c"http://www.gnu.org/software/libtasn1/\00", [58 x i8] zeroinitializer }, align 32
@__asan_gen_.77.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.79.105 = private unnamed_addr constant { [14 x i8]*, i32, i32 } { [14 x i8]* @__asan_gen_.78.106, i32 251, i32 52 }
@__asan_gen_.78.106 = private unnamed_addr constant [14 x i8] c"version-etc.c\00", align 1
@.str.19.107 = internal unnamed_addr constant { [64 x i8], [32 x i8] } { [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", [32 x i8] zeroinitializer }, align 32
@__asan_gen_.80.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@__asan_gen_.82.109 = private unnamed_addr constant { [14 x i8]*, i32, i32 } { [14 x i8]* @__asan_gen_.81.110, i32 256, i32 10 }
@__asan_gen_.81.110 = private unnamed_addr constant [14 x i8] c"version-etc.c\00", align 1
@5 = internal constant { [14 x i8], [50 x i8] } { [14 x i8] c"version-etc.c\00", [50 x i8] zeroinitializer }, align 32
@__asan_gen_.83.111 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__sancov_gen_cov.113 = private global [41 x i32] zeroinitializer
@__sancov_gen_cov_counter.114 = private global [48 x i8] zeroinitializer, align 16
@__asan_gen_.117 = private unnamed_addr constant [18 x i8] c"1 32 80 7 authtab\00", align 1
@__asan_gen_.21 = private unnamed_addr constant [37 x i8] c"2 32 80 9 authtab.i 144 24 7 authors\00", align 1
@version_etc_copyright = constant { [47 x i8], [49 x i8] } { [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", [49 x i8] zeroinitializer }, align 32
@6 = internal global [2 x { i64, i64, i64, i64, i64, i64, i64 }] [{ i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [47 x i8], [49 x i8] }* @version_etc_copyright to i64), i64 47, i64 96, i64 ptrtoint ([22 x i8]* @__asan_gen_.2 to i64), i64 ptrtoint ([18 x i8]* @__asan_gen_.126 to i64), i64 0, i64 ptrtoint ({ [18 x i8]*, i32, i32 }* @__asan_gen_.4.127 to i64) }, { i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [18 x i8], [46 x i8] }* @7 to i64), i64 18, i64 64, i64 ptrtoint ([1 x i8]* @__asan_gen_.5.128 to i64), i64 ptrtoint ([18 x i8]* @__asan_gen_.126 to i64), i64 0, i64 0 }]
@__asan_gen_.2 = private unnamed_addr constant [22 x i8] c"version_etc_copyright\00", align 1
@__asan_gen_.126 = private constant [18 x i8] c"version-etc-fsf.c\00", align 1
@__asan_gen_.4.127 = private unnamed_addr constant { [18 x i8]*, i32, i32 } { [18 x i8]* @__asan_gen_.3, i32 26, i32 12 }
@__asan_gen_.3 = private unnamed_addr constant [18 x i8] c"version-etc-fsf.c\00", align 1
@7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"version-etc-fsf.c\00", [46 x i8] zeroinitializer }, align 32
@__asan_gen_.5.128 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__sancov_gen_cov.130 = private global [1 x i32] zeroinitializer
@__sancov_gen_cov_counter.131 = private global [0 x i8] zeroinitializer, align 16

define internal void @asan.module_ctor() {
  tail call void @__asan_init()
  tail call void @__asan_version_mismatch_check_v6()
  call void @__asan_register_globals(i64 ptrtoint ([24 x { i64, i64, i64, i64, i64, i64, i64 }]* @0 to i64), i64 24)
  ret void
}

declare void @__asan_init()

declare void @__asan_version_mismatch_check_v6()

declare void @__asan_register_globals(i64, i64)

define internal void @sancov.module_ctor() {
  call void @__sanitizer_cov_module_init(i32* getelementptr inbounds ([33 x i32], [33 x i32]* @__sancov_gen_cov, i32 0, i32 0), i64 32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__sancov_gen_cov_counter, i32 0, i32 0), i8* getelementptr inbounds ({ [13 x i8], [51 x i8] }, { [13 x i8], [51 x i8] }* @1, i32 0, i32 0, i32 0))
  ret void
}

declare void @__sanitizer_cov_module_init(i32*, i64, i8*, i8*)

define internal void @asan.module_dtor() {
  call void @__asan_unregister_globals(i64 ptrtoint ([24 x { i64, i64, i64, i64, i64, i64, i64 }]* @0 to i64), i64 24)
  ret void
}

declare void @__asan_unregister_globals(i64, i64)

; Function Attrs: nounwind sanitize_address uwtable
define i32 @LLVMFuzzerTestOneInput(i8* nocapture readonly %data, i64 %size) #0 !dbg !9 {
  %1 = load i32, i32* @__asan_option_detect_stack_use_after_return, !dbg !321
  %2 = icmp ne i32 %1, 0, !dbg !321
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = call i64 @__asan_stack_malloc_0(i64 64), !dbg !321
  br label %5

; <label>:5                                       ; preds = %0, %3
  %6 = phi i64 [ 0, %0 ], [ %4, %3 ], !dbg !321
  %7 = icmp eq i64 %6, 0, !dbg !321
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %5
  %MyAlloca = alloca i8, i64 64, align 32, !dbg !321
  %9 = ptrtoint i8* %MyAlloca to i64, !dbg !321
  br label %10

; <label>:10                                      ; preds = %5, %8
  %11 = phi i64 [ %6, %5 ], [ %9, %8 ], !dbg !321
  %12 = add i64 %11, 32, !dbg !321
  %13 = inttoptr i64 %12 to [2 x i8*]*, !dbg !321
  %14 = inttoptr i64 %11 to i64*, !dbg !321
  store i64 1102416563, i64* %14, !dbg !321
  %15 = add i64 %11, 8, !dbg !321
  %16 = inttoptr i64 %15 to i64*, !dbg !321
  store i64 ptrtoint ([16 x i8]* @__asan_gen_ to i64), i64* %16, !dbg !321
  %17 = add i64 %11, 16, !dbg !321
  %18 = inttoptr i64 %17 to i64*, !dbg !321
  store i64 ptrtoint (i32 (i8*, i64)* @LLVMFuzzerTestOneInput to i64), i64* %18, !dbg !321
  %19 = lshr i64 %11, 3, !dbg !321
  %20 = add i64 %19, 2147450880, !dbg !321
  %21 = add i64 %20, 0, !dbg !321
  %22 = inttoptr i64 %21 to i64*, !dbg !321
  store i64 -868350299093208591, i64* %22, !dbg !321
  call void @llvm.dbg.declare(metadata [2 x i8*]* %13, metadata !26, metadata !322), !dbg !323
  %23 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 4) to i32*) monotonic, align 4, !dbg !321, !nosanitize !2
  %24 = icmp sge i32 0, %23, !dbg !321
  br i1 %24, label %25, label %26, !dbg !324, !prof !325

; <label>:25                                      ; preds = %10
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 4) to i32*)), !dbg !321
  call void asm sideeffect "", ""(), !dbg !321
  br label %26, !dbg !324

; <label>:26                                      ; preds = %10, %25
  %27 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__sancov_gen_cov_counter, i32 0, i32 0), !dbg !324, !nosanitize !2
  %28 = add i8 %27, 1, !dbg !324
  store i8 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__sancov_gen_cov_counter, i32 0, i32 0), !dbg !324, !nosanitize !2
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !22, metadata !326), !dbg !324
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !23, metadata !326), !dbg !327
  %29 = icmp eq i64 %size, 0, !dbg !328
  br i1 %29, label %67, label %30, !dbg !330

; <label>:30                                      ; preds = %26
  %31 = add i64 %size, 1, !dbg !331
  %32 = tail call noalias i8* @malloc(i64 %31) #5, !dbg !332
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !24, metadata !326), !dbg !334
  %33 = call i8* @__asan_memcpy(i8* %32, i8* %data, i64 %size), !dbg !335
  %34 = getelementptr inbounds i8, i8* %32, i64 %size, !dbg !336
  %35 = ptrtoint i8* %34 to i64, !dbg !337
  %36 = lshr i64 %35, 3, !dbg !337
  %37 = add i64 %36, 2147450880, !dbg !337
  %38 = inttoptr i64 %37 to i8*, !dbg !337
  %39 = load i8, i8* %38, !dbg !337
  %40 = icmp ne i8 %39, 0, !dbg !337
  br i1 %40, label %41, label %46, !dbg !337, !prof !325

; <label>:41                                      ; preds = %30
  %42 = and i64 %35, 7, !dbg !337
  %43 = trunc i64 %42 to i8, !dbg !337
  %44 = icmp sge i8 %43, %39, !dbg !337
  br i1 %44, label %45, label %46, !dbg !337

; <label>:45                                      ; preds = %41
  call void @__asan_report_store1(i64 %35), !dbg !337
  call void asm sideeffect "", ""()
  unreachable

; <label>:46                                      ; preds = %41, %30
  store i8 0, i8* %34, align 1, !dbg !337, !tbaa !338
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !25, metadata !326), !dbg !341
  %47 = bitcast [2 x i8*]* %13 to i8*, !dbg !342
  call void @llvm.lifetime.start(i64 16, i8* %47) #5, !dbg !342
  %48 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0, !dbg !343
  %49 = ptrtoint i8** %48 to i64, !dbg !344
  %50 = lshr i64 %49, 3, !dbg !344
  %51 = add i64 %50, 2147450880, !dbg !344
  %52 = inttoptr i64 %51 to i8*, !dbg !344
  %53 = load i8, i8* %52, !dbg !344
  %54 = icmp ne i8 %53, 0, !dbg !344
  br i1 %54, label %55, label %56, !dbg !344

; <label>:55                                      ; preds = %46
  call void @__asan_report_store8(i64 %49), !dbg !344
  call void asm sideeffect "", ""(), !dbg !344
  unreachable, !dbg !344

; <label>:56                                      ; preds = %46
  store i8* getelementptr inbounds ({ [11 x i8], [53 x i8] }, { [11 x i8], [53 x i8] }* @.str, i32 0, i32 0, i64 0), i8** %48, align 16, !dbg !344, !tbaa !345
  %57 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 1, !dbg !347
  %58 = ptrtoint i8** %57 to i64, !dbg !348
  %59 = lshr i64 %58, 3, !dbg !348
  %60 = add i64 %59, 2147450880, !dbg !348
  %61 = inttoptr i64 %60 to i8*, !dbg !348
  %62 = load i8, i8* %61, !dbg !348
  %63 = icmp ne i8 %62, 0, !dbg !348
  br i1 %63, label %64, label %65, !dbg !348

; <label>:64                                      ; preds = %56
  call void @__asan_report_store8(i64 %58), !dbg !348
  call void asm sideeffect "", ""(), !dbg !348
  unreachable, !dbg !348

; <label>:65                                      ; preds = %56
  store i8* %32, i8** %57, align 8, !dbg !348, !tbaa !345
  call void @__asan_handle_no_return(), !dbg !349
  %66 = call i32 @fuzz_main(i32 2, i8** %48), !dbg !349
  unreachable

; <label>:67                                      ; preds = %26
  %68 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 8) to i32*) monotonic, align 4, !dbg !350, !nosanitize !2
  %69 = icmp sge i32 0, %68, !dbg !350
  br i1 %69, label %70, label %71, !dbg !350, !prof !325

; <label>:70                                      ; preds = %67
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 8) to i32*)), !dbg !350
  call void asm sideeffect "", ""(), !dbg !350
  br label %71, !dbg !350

; <label>:71                                      ; preds = %67, %70
  %72 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 1) to i8*), !dbg !350, !nosanitize !2
  %73 = add i8 %72, 1, !dbg !350
  store i8 %73, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 1) to i8*), !dbg !350, !nosanitize !2
  store i64 1172321806, i64* %14, !dbg !350
  %74 = icmp ne i64 %6, 0, !dbg !350
  br i1 %74, label %75, label %82, !dbg !350

; <label>:75                                      ; preds = %71
  %76 = add i64 %20, 0, !dbg !350
  %77 = inttoptr i64 %76 to i64*, !dbg !350
  store i64 -723401728380766731, i64* %77, !dbg !350
  %78 = add i64 %6, 56, !dbg !350
  %79 = inttoptr i64 %78 to i64*, !dbg !350
  %80 = load i64, i64* %79, !dbg !350
  %81 = inttoptr i64 %80 to i8*, !dbg !350
  store i8 0, i8* %81, !dbg !350
  br label %85, !dbg !350

; <label>:82                                      ; preds = %71
  %83 = add i64 %20, 0, !dbg !350
  %84 = inttoptr i64 %83 to i64*, !dbg !350
  store i64 0, i64* %84, !dbg !350
  br label %85, !dbg !350

; <label>:85                                      ; preds = %82, %75
  ret i32 0, !dbg !350
}

declare i64 @__asan_stack_malloc_0(i64)

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @__sanitizer_cov(i32*)

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i8* @__asan_memcpy(i8*, i8*, i64)

declare void @__asan_report_store1(i64)

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

declare void @__asan_report_store8(i64)

declare void @__asan_handle_no_return()

; Function Attrs: noreturn nounwind sanitize_address uwtable
define i32 @fuzz_main(i32 %argc, i8** %argv) #4 !dbg !30 {
  %1 = load i32, i32* @__asan_option_detect_stack_use_after_return, !dbg !351
  %2 = icmp ne i32 %1, 0, !dbg !351
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = call i64 @__asan_stack_malloc_2(i64 256), !dbg !351
  br label %5

; <label>:5                                       ; preds = %0, %3
  %6 = phi i64 [ 0, %0 ], [ %4, %3 ], !dbg !351
  %7 = icmp eq i64 %6, 0, !dbg !351
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %5
  %MyAlloca = alloca i8, i64 256, align 32, !dbg !351
  %9 = ptrtoint i8* %MyAlloca to i64, !dbg !351
  br label %10

; <label>:10                                      ; preds = %5, %8
  %11 = phi i64 [ %6, %5 ], [ %9, %8 ], !dbg !351
  %12 = add i64 %11, 32, !dbg !351
  %13 = inttoptr i64 %12 to i32*, !dbg !351
  %14 = add i64 %11, 48, !dbg !351
  %15 = inttoptr i64 %14 to %struct.asn1_node_st**, !dbg !351
  %16 = add i64 %11, 80, !dbg !351
  %17 = inttoptr i64 %16 to [128 x i8]*, !dbg !351
  %18 = inttoptr i64 %11 to i64*, !dbg !351
  store i64 1102416563, i64* %18, !dbg !351
  %19 = add i64 %11, 8, !dbg !351
  %20 = inttoptr i64 %19 to i64*, !dbg !351
  store i64 ptrtoint ([65 x i8]* @__asan_gen_.24 to i64), i64* %20, !dbg !351
  %21 = add i64 %11, 16, !dbg !351
  %22 = inttoptr i64 %21 to i64*, !dbg !351
  store i64 ptrtoint (i32 (i32, i8**)* @fuzz_main to i64), i64* %22, !dbg !351
  %23 = lshr i64 %11, 3, !dbg !351
  %24 = add i64 %23, 2147450880, !dbg !351
  %25 = add i64 %24, 0, !dbg !351
  %26 = inttoptr i64 %25 to i64*, !dbg !351
  store i64 -1008540213478034959, i64* %26, !dbg !351
  %27 = add i64 %24, 8, !dbg !351
  %28 = inttoptr i64 %27 to i64*, !dbg !351
  store i64 62194, i64* %28, !dbg !351
  %29 = add i64 %24, 24, !dbg !351
  %30 = inttoptr i64 %29 to i64*, !dbg !351
  store i64 -868082074056982528, i64* %30, !dbg !351
  call void @llvm.dbg.declare(metadata [128 x i8]* %17, metadata !49, metadata !322), !dbg !352
  %31 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 12) to i32*) monotonic, align 4, !dbg !351, !nosanitize !2
  %32 = icmp sge i32 0, %31, !dbg !351
  br i1 %32, label %33, label %34, !dbg !353, !prof !325

; <label>:33                                      ; preds = %10
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 12) to i32*)), !dbg !351
  call void asm sideeffect "", ""(), !dbg !351
  br label %34, !dbg !353

; <label>:34                                      ; preds = %10, %33
  %35 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 2) to i8*), !dbg !353, !nosanitize !2
  %36 = add i8 %35, 1, !dbg !353
  store i8 %36, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 2) to i8*), !dbg !353, !nosanitize !2
  tail call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !35, metadata !326), !dbg !353
  tail call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !36, metadata !326), !dbg !354
  %37 = bitcast i32* %13 to i8*, !dbg !355
  call void @llvm.lifetime.start(i64 4, i8* %37) #5, !dbg !355
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !37, metadata !326), !dbg !356
  %38 = ptrtoint i32* %13 to i64, !dbg !356
  %39 = lshr i64 %38, 3, !dbg !356
  %40 = add i64 %39, 2147450880, !dbg !356
  %41 = inttoptr i64 %40 to i8*, !dbg !356
  %42 = load i8, i8* %41, !dbg !356
  %43 = icmp ne i8 %42, 0, !dbg !356
  br i1 %43, label %44, label %50, !dbg !356, !prof !325

; <label>:44                                      ; preds = %34
  %45 = and i64 %38, 7, !dbg !356
  %46 = add i64 %45, 3, !dbg !356
  %47 = trunc i64 %46 to i8, !dbg !356
  %48 = icmp sge i8 %47, %42, !dbg !356
  br i1 %48, label %49, label %50, !dbg !356

; <label>:49                                      ; preds = %44
  call void @__asan_report_store4(i64 %38), !dbg !356
  call void asm sideeffect "", ""()
  unreachable

; <label>:50                                      ; preds = %44, %34
  store i32 0, i32* %13, align 4, !dbg !356, !tbaa !357
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !39, metadata !326), !dbg !359
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !40, metadata !326), !dbg !360
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !41, metadata !326), !dbg !361
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !42, metadata !326), !dbg !362
  %51 = bitcast %struct.asn1_node_st** %15 to i8*, !dbg !363
  call void @llvm.lifetime.start(i64 8, i8* %51) #5, !dbg !363
  tail call void @llvm.dbg.value(metadata %struct.asn1_node_st* null, i64 0, metadata !43, metadata !326), !dbg !364
  %52 = ptrtoint %struct.asn1_node_st** %15 to i64, !dbg !364
  %53 = lshr i64 %52, 3, !dbg !364
  %54 = add i64 %53, 2147450880, !dbg !364
  %55 = inttoptr i64 %54 to i8*, !dbg !364
  %56 = load i8, i8* %55, !dbg !364
  %57 = icmp ne i8 %56, 0, !dbg !364
  br i1 %57, label %58, label %59, !dbg !364

; <label>:58                                      ; preds = %50
  call void @__asan_report_store8(i64 %52), !dbg !364
  call void asm sideeffect "", ""(), !dbg !364
  unreachable, !dbg !364

; <label>:59                                      ; preds = %50
  store %struct.asn1_node_st* null, %struct.asn1_node_st** %15, align 8, !dbg !364, !tbaa !345
  %60 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0, !dbg !365
  call void @llvm.lifetime.start(i64 128, i8* %60) #5, !dbg !365
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !53, metadata !326), !dbg !366
  %61 = ptrtoint i8** %argv to i64, !dbg !367
  %62 = lshr i64 %61, 3, !dbg !367
  %63 = add i64 %62, 2147450880, !dbg !367
  %64 = inttoptr i64 %63 to i8*, !dbg !367
  %65 = load i8, i8* %64, !dbg !367
  %66 = icmp ne i8 %65, 0, !dbg !367
  br i1 %66, label %67, label %68, !dbg !367

; <label>:67                                      ; preds = %59
  call void @__asan_report_load8(i64 %61), !dbg !367
  call void asm sideeffect "", ""(), !dbg !367
  unreachable, !dbg !367

; <label>:68                                      ; preds = %59
  %69 = load i8*, i8** %argv, align 8, !dbg !367, !tbaa !345
  tail call void @set_program_name(i8* %69) #5, !dbg !368
  %70 = load i8, i8* inttoptr (i64 add (i64 lshr (i64 ptrtoint (i32* @opterr to i64), i64 3), i64 2147450880) to i8*), !dbg !369
  %71 = icmp ne i8 %70, 0, !dbg !369
  br i1 %71, label %72, label %75, !dbg !369, !prof !325

; <label>:72                                      ; preds = %68
  %73 = icmp sge i8 trunc (i64 add (i64 and (i64 ptrtoint (i32* @opterr to i64), i64 7), i64 3) to i8), %70, !dbg !369
  br i1 %73, label %74, label %75, !dbg !369

; <label>:74                                      ; preds = %72
  call void @__asan_report_store4(i64 ptrtoint (i32* @opterr to i64)), !dbg !369
  call void asm sideeffect "", ""()
  unreachable

; <label>:75                                      ; preds = %72, %68
  store i32 0, i32* @opterr, align 4, !dbg !369, !tbaa !357
  br label %.outer, !dbg !370

.outer:                                           ; preds = %205, %75
  %outputFileName.0.ph = phi i8* [ %209, %205 ], [ null, %75 ]
  %vectorName.0.ph = phi i8* [ %vectorName.0.ph2.lcssa73, %205 ], [ null, %75 ]
  %checkSyntaxOnly.0.ph = phi i32 [ %checkSyntaxOnly.0.ph5.lcssa68, %205 ], [ 0, %75 ]
  %76 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 16) to i32*) monotonic, align 4, !dbg !356, !nosanitize !2
  %77 = icmp sge i32 0, %76, !dbg !356
  br i1 %77, label %78, label %79, !dbg !356, !prof !325

; <label>:78                                      ; preds = %.outer
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 16) to i32*)), !dbg !356
  call void asm sideeffect "", ""(), !dbg !356
  br label %79, !dbg !356

; <label>:79                                      ; preds = %.outer, %78
  %80 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 3) to i8*), !dbg !356, !nosanitize !2
  %81 = add i8 %80, 1, !dbg !356
  store i8 %81, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 3) to i8*), !dbg !356, !nosanitize !2
  br label %.outer1, !dbg !356

.outer1:                                          ; preds = %79, %221
  %vectorName.0.ph2 = phi i8* [ %vectorName.0.ph, %79 ], [ %225, %221 ]
  %checkSyntaxOnly.0.ph3 = phi i32 [ %checkSyntaxOnly.0.ph, %79 ], [ %checkSyntaxOnly.0.ph5.lcssa69, %221 ]
  %82 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 20) to i32*) monotonic, align 4, !dbg !356, !nosanitize !2
  %83 = icmp sge i32 0, %82, !dbg !356
  br i1 %83, label %84, label %85, !dbg !356, !prof !325

; <label>:84                                      ; preds = %.outer1
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 20) to i32*)), !dbg !356
  call void asm sideeffect "", ""(), !dbg !356
  br label %85, !dbg !356

; <label>:85                                      ; preds = %.outer1, %84
  %86 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 4) to i8*), !dbg !356, !nosanitize !2
  %87 = add i8 %86, 1, !dbg !356
  store i8 %87, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 4) to i8*), !dbg !356, !nosanitize !2
  br label %.outer4, !dbg !356

.outer4.loopexit:                                 ; preds = %103
  %88 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 24) to i32*) monotonic, align 4, !dbg !356, !nosanitize !2
  %89 = icmp sge i32 0, %88, !dbg !356
  br i1 %89, label %90, label %91, !dbg !356, !prof !325

; <label>:90                                      ; preds = %.outer4.loopexit
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 24) to i32*)), !dbg !356
  call void asm sideeffect "", ""(), !dbg !356
  br label %91, !dbg !356

; <label>:91                                      ; preds = %.outer4.loopexit, %90
  %92 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 5) to i8*), !dbg !356, !nosanitize !2
  %93 = add i8 %92, 1, !dbg !356
  store i8 %93, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 5) to i8*), !dbg !356, !nosanitize !2
  br label %.outer4, !dbg !356

.outer4:                                          ; preds = %91, %85
  %checkSyntaxOnly.0.ph5 = phi i32 [ %checkSyntaxOnly.0.ph3, %85 ], [ 1, %91 ]
  %94 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 28) to i32*) monotonic, align 4, !dbg !356, !nosanitize !2
  %95 = icmp sge i32 0, %94, !dbg !356
  br i1 %95, label %96, label %97, !dbg !356, !prof !325

; <label>:96                                      ; preds = %.outer4
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 28) to i32*)), !dbg !356
  call void asm sideeffect "", ""(), !dbg !356
  br label %97, !dbg !356

; <label>:97                                      ; preds = %.outer4, %96
  %98 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 6) to i8*), !dbg !356, !nosanitize !2
  %99 = add i8 %98, 1, !dbg !356
  store i8 %99, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 6) to i8*), !dbg !356, !nosanitize !2
  br label %.backedge, !dbg !356

.backedge:                                        ; preds = %269, %97
  %100 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 32) to i32*) monotonic, align 4, !dbg !356, !nosanitize !2
  %101 = icmp sge i32 0, %100, !dbg !356
  br i1 %101, label %102, label %103, !dbg !356, !prof !325

; <label>:102                                     ; preds = %.backedge
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 32) to i32*)), !dbg !356
  call void asm sideeffect "", ""(), !dbg !356
  br label %103, !dbg !356

; <label>:103                                     ; preds = %.backedge, %102
  %104 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 7) to i8*), !dbg !356, !nosanitize !2
  %105 = add i8 %104, 1, !dbg !356
  store i8 %105, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 7) to i8*), !dbg !356, !nosanitize !2
  call void @llvm.dbg.value(metadata i32* %13, i64 0, metadata !37, metadata !322), !dbg !356
  %106 = call i32 @getopt_long(i32 %argc, i8** %argv, i8* nonnull getelementptr inbounds ({ [8 x i8], [56 x i8] }, { [8 x i8], [56 x i8] }* @.str.6, i32 0, i32 0, i64 0), %struct.option* nonnull getelementptr inbounds ({ [6 x %struct.option], [32 x i8] }, { [6 x %struct.option], [32 x i8] }* @fuzz_main.long_options, i32 0, i32 0, i64 0), i32* nonnull %13) #5, !dbg !371
  call void @llvm.dbg.value(metadata i32 %106, i64 0, metadata !38, metadata !326), !dbg !373
  switch i32 %106, label %253 [
    i32 -1, label %272
    i32 0, label %107
    i32 104, label %183
    i32 118, label %184
    i32 99, label %.outer4.loopexit
    i32 111, label %195
    i32 110, label %211
    i32 63, label %227
  ], !dbg !374

; <label>:107                                     ; preds = %103
  %108 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 36) to i32*) monotonic, align 4, !dbg !375, !nosanitize !2
  %109 = icmp sge i32 0, %108, !dbg !375
  br i1 %109, label %110, label %111, !dbg !375, !prof !325

; <label>:110                                     ; preds = %107
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 36) to i32*)), !dbg !375
  call void asm sideeffect "", ""(), !dbg !375
  br label %111, !dbg !375

; <label>:111                                     ; preds = %107, %110
  %112 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 8) to i8*), !dbg !375, !nosanitize !2
  %113 = add i8 %112, 1, !dbg !375
  store i8 %113, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 8) to i8*), !dbg !375, !nosanitize !2
  %114 = load i8, i8* inttoptr (i64 add (i64 lshr (i64 ptrtoint (%struct._IO_FILE** @stderr to i64), i64 3), i64 2147450880) to i8*), !dbg !375
  %115 = icmp ne i8 %114, 0, !dbg !375
  br i1 %115, label %116, label %117, !dbg !375

; <label>:116                                     ; preds = %111
  call void @__asan_report_load8(i64 ptrtoint (%struct._IO_FILE** @stderr to i64)), !dbg !375
  call void asm sideeffect "", ""(), !dbg !375
  unreachable, !dbg !375

; <label>:117                                     ; preds = %111
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !375, !tbaa !345
  %119 = ptrtoint i32* %13 to i64, !dbg !377
  %120 = lshr i64 %119, 3, !dbg !377
  %121 = add i64 %120, 2147450880, !dbg !377
  %122 = inttoptr i64 %121 to i8*, !dbg !377
  %123 = load i8, i8* %122, !dbg !377
  %124 = icmp ne i8 %123, 0, !dbg !377
  br i1 %124, label %125, label %131, !dbg !377, !prof !325

; <label>:125                                     ; preds = %117
  %126 = and i64 %119, 7, !dbg !377
  %127 = add i64 %126, 3, !dbg !377
  %128 = trunc i64 %127 to i8, !dbg !377
  %129 = icmp sge i8 %128, %123, !dbg !377
  br i1 %129, label %130, label %131, !dbg !377

; <label>:130                                     ; preds = %125
  call void @__asan_report_load4(i64 %119), !dbg !377
  call void asm sideeffect "", ""()
  unreachable

; <label>:131                                     ; preds = %125, %117
  %132 = load i32, i32* %13, align 4, !dbg !377, !tbaa !357
  call void @llvm.dbg.value(metadata i32 %132, i64 0, metadata !37, metadata !326), !dbg !356
  %133 = sext i32 %132 to i64, !dbg !378
  %134 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* getelementptr inbounds ({ [6 x %struct.option], [32 x i8] }, { [6 x %struct.option], [32 x i8] }* @fuzz_main.long_options, i32 0, i32 0), i64 0, i64 %133, i32 0, !dbg !379
  %135 = ptrtoint i8** %134 to i64, !dbg !379
  %136 = lshr i64 %135, 3, !dbg !379
  %137 = add i64 %136, 2147450880, !dbg !379
  %138 = inttoptr i64 %137 to i8*, !dbg !379
  %139 = load i8, i8* %138, !dbg !379
  %140 = icmp ne i8 %139, 0, !dbg !379
  br i1 %140, label %141, label %142, !dbg !379

; <label>:141                                     ; preds = %131
  call void @__asan_report_load8(i64 %135), !dbg !379
  call void asm sideeffect "", ""(), !dbg !379
  unreachable, !dbg !379

; <label>:142                                     ; preds = %131
  %143 = load i8*, i8** %134, align 16, !dbg !379, !tbaa !380
  %144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* nonnull getelementptr inbounds ({ [10 x i8], [54 x i8] }, { [10 x i8], [54 x i8] }* @.str.7, i32 0, i32 0, i64 0), i8* %143) #9, !dbg !382
  %145 = load i8, i8* inttoptr (i64 add (i64 lshr (i64 ptrtoint (i8** @optarg to i64), i64 3), i64 2147450880) to i8*), !dbg !383
  %146 = icmp ne i8 %145, 0, !dbg !383
  br i1 %146, label %147, label %148, !dbg !383

; <label>:147                                     ; preds = %142
  call void @__asan_report_load8(i64 ptrtoint (i8** @optarg to i64)), !dbg !383
  call void asm sideeffect "", ""(), !dbg !383
  unreachable, !dbg !383

; <label>:148                                     ; preds = %142
  %149 = load i8*, i8** @optarg, align 8, !dbg !383, !tbaa !345
  %150 = icmp eq i8* %149, null, !dbg !383
  br i1 %150, label %._crit_edge, label %157, !dbg !385

._crit_edge:                                      ; preds = %148
  %151 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 40) to i32*) monotonic, align 4, !dbg !385, !nosanitize !2
  %152 = icmp sge i32 0, %151, !dbg !385
  br i1 %152, label %153, label %154, !dbg !385, !prof !325

; <label>:153                                     ; preds = %._crit_edge
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 40) to i32*)), !dbg !385
  call void asm sideeffect "", ""(), !dbg !385
  br label %154, !dbg !385

; <label>:154                                     ; preds = %._crit_edge, %153
  %155 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 9) to i8*), !dbg !385, !nosanitize !2
  %156 = add i8 %155, 1, !dbg !385
  store i8 %156, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 9) to i8*), !dbg !385, !nosanitize !2
  br label %170, !dbg !385

; <label>:157                                     ; preds = %148
  %158 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 44) to i32*) monotonic, align 4, !dbg !386, !nosanitize !2
  %159 = icmp sge i32 0, %158, !dbg !386
  br i1 %159, label %160, label %161, !dbg !386, !prof !325

; <label>:160                                     ; preds = %157
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 44) to i32*)), !dbg !386
  call void asm sideeffect "", ""(), !dbg !386
  br label %161, !dbg !386

; <label>:161                                     ; preds = %157, %160
  %162 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 10) to i8*), !dbg !386, !nosanitize !2
  %163 = add i8 %162, 1, !dbg !386
  store i8 %163, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 10) to i8*), !dbg !386, !nosanitize !2
  %164 = load i8, i8* inttoptr (i64 add (i64 lshr (i64 ptrtoint (%struct._IO_FILE** @stderr to i64), i64 3), i64 2147450880) to i8*), !dbg !386
  %165 = icmp ne i8 %164, 0, !dbg !386
  br i1 %165, label %166, label %167, !dbg !386

; <label>:166                                     ; preds = %161
  call void @__asan_report_load8(i64 ptrtoint (%struct._IO_FILE** @stderr to i64)), !dbg !386
  call void asm sideeffect "", ""(), !dbg !386
  unreachable, !dbg !386

; <label>:167                                     ; preds = %161
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !386, !tbaa !345
  %169 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %168, i8* nonnull getelementptr inbounds ({ [13 x i8], [51 x i8] }, { [13 x i8], [51 x i8] }* @.str.8, i32 0, i32 0, i64 0), i8* nonnull %149) #9, !dbg !387
  br label %170, !dbg !387

; <label>:170                                     ; preds = %154, %167
  %171 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 48) to i32*) monotonic, align 4, !dbg !388, !nosanitize !2
  %172 = icmp sge i32 0, %171, !dbg !388
  br i1 %172, label %173, label %174, !dbg !388, !prof !325

; <label>:173                                     ; preds = %170
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 48) to i32*)), !dbg !388
  call void asm sideeffect "", ""(), !dbg !388
  br label %174, !dbg !388

; <label>:174                                     ; preds = %170, %173
  %175 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 11) to i8*), !dbg !388, !nosanitize !2
  %176 = add i8 %175, 1, !dbg !388
  store i8 %176, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 11) to i8*), !dbg !388, !nosanitize !2
  %177 = load i8, i8* inttoptr (i64 add (i64 lshr (i64 ptrtoint (%struct._IO_FILE** @stderr to i64), i64 3), i64 2147450880) to i8*), !dbg !388
  %178 = icmp ne i8 %177, 0, !dbg !388
  br i1 %178, label %179, label %180, !dbg !388

; <label>:179                                     ; preds = %174
  call void @__asan_report_load8(i64 ptrtoint (%struct._IO_FILE** @stderr to i64)), !dbg !388
  call void asm sideeffect "", ""(), !dbg !388
  unreachable, !dbg !388

; <label>:180                                     ; preds = %174
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !388, !tbaa !345
  %182 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %181), !dbg !388
  br label %.backedge.backedge, !dbg !389

; <label>:183                                     ; preds = %103
  %outputFileName.0.ph.lcssa75 = phi i8* [ %outputFileName.0.ph, %103 ]
  %vectorName.0.ph2.lcssa71 = phi i8* [ %vectorName.0.ph2, %103 ]
  call void @free(i8* %outputFileName.0.ph.lcssa75) #5, !dbg !390
  call void @free(i8* %vectorName.0.ph2.lcssa71) #5, !dbg !391
  call void @__asan_handle_no_return(), !dbg !392
  call fastcc void @usage(i32 0) #10, !dbg !392
  unreachable, !dbg !392

; <label>:184                                     ; preds = %103
  %outputFileName.0.ph.lcssa76 = phi i8* [ %outputFileName.0.ph, %103 ]
  %vectorName.0.ph2.lcssa72 = phi i8* [ %vectorName.0.ph2, %103 ]
  %185 = load i8, i8* inttoptr (i64 add (i64 lshr (i64 ptrtoint (%struct._IO_FILE** @stdout to i64), i64 3), i64 2147450880) to i8*), !dbg !393
  %186 = icmp ne i8 %185, 0, !dbg !393
  br i1 %186, label %187, label %188, !dbg !393

; <label>:187                                     ; preds = %184
  call void @__asan_report_load8(i64 ptrtoint (%struct._IO_FILE** @stdout to i64)), !dbg !393
  call void asm sideeffect "", ""(), !dbg !393
  unreachable, !dbg !393

; <label>:188                                     ; preds = %184
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !393, !tbaa !345
  %190 = load i8, i8* inttoptr (i64 add (i64 lshr (i64 ptrtoint ({ i8*, [56 x i8] }* @program_name to i64), i64 3), i64 2147450880) to i8*), !dbg !394
  %191 = icmp ne i8 %190, 0, !dbg !394
  br i1 %191, label %192, label %193, !dbg !394

; <label>:192                                     ; preds = %188
  call void @__asan_report_load8(i64 ptrtoint ({ i8*, [56 x i8] }* @program_name to i64)), !dbg !394
  call void asm sideeffect "", ""(), !dbg !394
  unreachable, !dbg !394

; <label>:193                                     ; preds = %188
  %194 = load i8*, i8** getelementptr inbounds ({ i8*, [56 x i8] }, { i8*, [56 x i8] }* @program_name, i32 0, i32 0), align 8, !dbg !394, !tbaa !345
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %189, i8* %194, i8* nonnull getelementptr inbounds ({ [9 x i8], [55 x i8] }, { [9 x i8], [55 x i8] }* @.str.9, i32 0, i32 0, i64 0), i8* nonnull getelementptr inbounds ({ [5 x i8], [59 x i8] }, { [5 x i8], [59 x i8] }* @.str.10, i32 0, i32 0, i64 0), i8* nonnull getelementptr inbounds ({ [14 x i8], [50 x i8] }, { [14 x i8], [50 x i8] }* @.str.11, i32 0, i32 0, i64 0), i8* null) #5, !dbg !395
  call void @free(i8* %outputFileName.0.ph.lcssa76) #5, !dbg !396
  call void @free(i8* %vectorName.0.ph2.lcssa72) #5, !dbg !397
  call void @__asan_handle_no_return(), !dbg !398
  call void @exit(i32 0) #11, !dbg !398
  unreachable, !dbg !398

; <label>:195                                     ; preds = %103
  %vectorName.0.ph2.lcssa73 = phi i8* [ %vectorName.0.ph2, %103 ]
  %checkSyntaxOnly.0.ph5.lcssa68 = phi i32 [ %checkSyntaxOnly.0.ph5, %103 ]
  %196 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 52) to i32*) monotonic, align 4, !dbg !399, !nosanitize !2
  %197 = icmp sge i32 0, %196, !dbg !399
  br i1 %197, label %198, label %199, !dbg !399, !prof !325

; <label>:198                                     ; preds = %195
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 52) to i32*)), !dbg !399
  call void asm sideeffect "", ""(), !dbg !399
  br label %199, !dbg !399

; <label>:199                                     ; preds = %195, %198
  %200 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 12) to i8*), !dbg !399, !nosanitize !2
  %201 = add i8 %200, 1, !dbg !399
  store i8 %201, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 12) to i8*), !dbg !399, !nosanitize !2
  %202 = load i8, i8* inttoptr (i64 add (i64 lshr (i64 ptrtoint (i8** @optarg to i64), i64 3), i64 2147450880) to i8*), !dbg !399
  %203 = icmp ne i8 %202, 0, !dbg !399
  br i1 %203, label %204, label %205, !dbg !399

; <label>:204                                     ; preds = %199
  call void @__asan_report_load8(i64 ptrtoint (i8** @optarg to i64)), !dbg !399
  call void asm sideeffect "", ""(), !dbg !399
  unreachable, !dbg !399

; <label>:205                                     ; preds = %199
  %206 = load i8*, i8** @optarg, align 8, !dbg !399, !tbaa !345
  %207 = call i64 @strlen(i8* %206) #12, !dbg !400
  %208 = add i64 %207, 1, !dbg !401
  %209 = call noalias i8* @malloc(i64 %208) #5, !dbg !402
  call void @llvm.dbg.value(metadata i8* %209, i64 0, metadata !39, metadata !326), !dbg !359
  %210 = call i8* @strcpy(i8* %209, i8* %206) #5, !dbg !404
  br label %.outer, !dbg !405

; <label>:211                                     ; preds = %103
  %checkSyntaxOnly.0.ph5.lcssa69 = phi i32 [ %checkSyntaxOnly.0.ph5, %103 ]
  %212 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 56) to i32*) monotonic, align 4, !dbg !406, !nosanitize !2
  %213 = icmp sge i32 0, %212, !dbg !406
  br i1 %213, label %214, label %215, !dbg !406, !prof !325

; <label>:214                                     ; preds = %211
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 56) to i32*)), !dbg !406
  call void asm sideeffect "", ""(), !dbg !406
  br label %215, !dbg !406

; <label>:215                                     ; preds = %211, %214
  %216 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 13) to i8*), !dbg !406, !nosanitize !2
  %217 = add i8 %216, 1, !dbg !406
  store i8 %217, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 13) to i8*), !dbg !406, !nosanitize !2
  %218 = load i8, i8* inttoptr (i64 add (i64 lshr (i64 ptrtoint (i8** @optarg to i64), i64 3), i64 2147450880) to i8*), !dbg !406
  %219 = icmp ne i8 %218, 0, !dbg !406
  br i1 %219, label %220, label %221, !dbg !406

; <label>:220                                     ; preds = %215
  call void @__asan_report_load8(i64 ptrtoint (i8** @optarg to i64)), !dbg !406
  call void asm sideeffect "", ""(), !dbg !406
  unreachable, !dbg !406

; <label>:221                                     ; preds = %215
  %222 = load i8*, i8** @optarg, align 8, !dbg !406, !tbaa !345
  %223 = call i64 @strlen(i8* %222) #12, !dbg !407
  %224 = add i64 %223, 1, !dbg !408
  %225 = call noalias i8* @malloc(i64 %224) #5, !dbg !409
  call void @llvm.dbg.value(metadata i8* %225, i64 0, metadata !41, metadata !326), !dbg !361
  %226 = call i8* @strcpy(i8* %225, i8* %222) #5, !dbg !410
  br label %.outer1, !dbg !411

; <label>:227                                     ; preds = %103
  %outputFileName.0.ph.lcssa77 = phi i8* [ %outputFileName.0.ph, %103 ]
  %vectorName.0.ph2.lcssa74 = phi i8* [ %vectorName.0.ph2, %103 ]
  %228 = load i8, i8* inttoptr (i64 add (i64 lshr (i64 ptrtoint (%struct._IO_FILE** @stderr to i64), i64 3), i64 2147450880) to i8*), !dbg !412
  %229 = icmp ne i8 %228, 0, !dbg !412
  br i1 %229, label %230, label %231, !dbg !412

; <label>:230                                     ; preds = %227
  call void @__asan_report_load8(i64 ptrtoint (%struct._IO_FILE** @stderr to i64)), !dbg !412
  call void asm sideeffect "", ""(), !dbg !412
  unreachable, !dbg !412

; <label>:231                                     ; preds = %227
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !412, !tbaa !345
  %233 = load i8, i8* inttoptr (i64 add (i64 lshr (i64 ptrtoint (i32* @optind to i64), i64 3), i64 2147450880) to i8*), !dbg !413
  %234 = icmp ne i8 %233, 0, !dbg !413
  br i1 %234, label %235, label %238, !dbg !413, !prof !325

; <label>:235                                     ; preds = %231
  %236 = icmp sge i8 trunc (i64 add (i64 and (i64 ptrtoint (i32* @optind to i64), i64 7), i64 3) to i8), %233, !dbg !413
  br i1 %236, label %237, label %238, !dbg !413

; <label>:237                                     ; preds = %235
  call void @__asan_report_load4(i64 ptrtoint (i32* @optind to i64)), !dbg !413
  call void asm sideeffect "", ""()
  unreachable

; <label>:238                                     ; preds = %235, %231
  %239 = load i32, i32* @optind, align 4, !dbg !413, !tbaa !357
  %240 = add nsw i32 %239, -1, !dbg !414
  %241 = sext i32 %240 to i64, !dbg !415
  %242 = getelementptr inbounds i8*, i8** %argv, i64 %241, !dbg !415
  %243 = ptrtoint i8** %242 to i64, !dbg !415
  %244 = lshr i64 %243, 3, !dbg !415
  %245 = add i64 %244, 2147450880, !dbg !415
  %246 = inttoptr i64 %245 to i8*, !dbg !415
  %247 = load i8, i8* %246, !dbg !415
  %248 = icmp ne i8 %247, 0, !dbg !415
  br i1 %248, label %249, label %250, !dbg !415

; <label>:249                                     ; preds = %238
  call void @__asan_report_load8(i64 %243), !dbg !415
  call void asm sideeffect "", ""(), !dbg !415
  unreachable, !dbg !415

; <label>:250                                     ; preds = %238
  %251 = load i8*, i8** %242, align 8, !dbg !415, !tbaa !345
  %252 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %232, i8* nonnull getelementptr inbounds ({ [62 x i8], [34 x i8] }, { [62 x i8], [34 x i8] }* @.str.12, i32 0, i32 0, i64 0), i8* %251) #9, !dbg !416
  call void @free(i8* %outputFileName.0.ph.lcssa77) #5, !dbg !417
  call void @free(i8* %vectorName.0.ph2.lcssa74) #5, !dbg !418
  call void @__asan_handle_no_return(), !dbg !419
  call fastcc void @usage(i32 1) #10, !dbg !419
  unreachable, !dbg !419

; <label>:253                                     ; preds = %103
  %254 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 60) to i32*) monotonic, align 4, !dbg !420, !nosanitize !2
  %255 = icmp sge i32 0, %254, !dbg !420
  br i1 %255, label %256, label %257, !dbg !420, !prof !325

; <label>:256                                     ; preds = %253
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 60) to i32*)), !dbg !420
  call void asm sideeffect "", ""(), !dbg !420
  br label %257, !dbg !420

; <label>:257                                     ; preds = %253, %256
  %258 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 14) to i8*), !dbg !420, !nosanitize !2
  %259 = add i8 %258, 1, !dbg !420
  store i8 %259, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 14) to i8*), !dbg !420, !nosanitize !2
  %260 = load i8, i8* inttoptr (i64 add (i64 lshr (i64 ptrtoint (%struct._IO_FILE** @stderr to i64), i64 3), i64 2147450880) to i8*), !dbg !420
  %261 = icmp ne i8 %260, 0, !dbg !420
  br i1 %261, label %262, label %263, !dbg !420

; <label>:262                                     ; preds = %257
  call void @__asan_report_load8(i64 ptrtoint (%struct._IO_FILE** @stderr to i64)), !dbg !420
  call void asm sideeffect "", ""(), !dbg !420
  unreachable, !dbg !420

; <label>:263                                     ; preds = %257
  %264 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !420, !tbaa !345
  %265 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %264, i8* nonnull getelementptr inbounds ({ [55 x i8], [41 x i8] }, { [55 x i8], [41 x i8] }* @.str.13, i32 0, i32 0, i64 0), i32 %106) #9, !dbg !421
  br label %.backedge.backedge, !dbg !422

.backedge.backedge:                               ; preds = %263, %180
  %266 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 64) to i32*) monotonic, align 4, !dbg !356, !nosanitize !2
  %267 = icmp sge i32 0, %266, !dbg !356
  br i1 %267, label %268, label %269, !dbg !356, !prof !325

; <label>:268                                     ; preds = %.backedge.backedge
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 64) to i32*)), !dbg !356
  call void asm sideeffect "", ""(), !dbg !356
  br label %269, !dbg !356

; <label>:269                                     ; preds = %.backedge.backedge, %268
  %270 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 15) to i8*), !dbg !356, !nosanitize !2
  %271 = add i8 %270, 1, !dbg !356
  store i8 %271, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 15) to i8*), !dbg !356, !nosanitize !2
  br label %.backedge, !dbg !356

; <label>:272                                     ; preds = %103
  %outputFileName.0.ph.lcssa = phi i8* [ %outputFileName.0.ph, %103 ]
  %vectorName.0.ph2.lcssa = phi i8* [ %vectorName.0.ph2, %103 ]
  %checkSyntaxOnly.0.ph5.lcssa = phi i32 [ %checkSyntaxOnly.0.ph5, %103 ]
  %273 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 68) to i32*) monotonic, align 4, !dbg !423, !nosanitize !2
  %274 = icmp sge i32 0, %273, !dbg !423
  br i1 %274, label %275, label %276, !dbg !423, !prof !325

; <label>:275                                     ; preds = %272
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 68) to i32*)), !dbg !423
  call void asm sideeffect "", ""(), !dbg !423
  br label %276, !dbg !423

; <label>:276                                     ; preds = %272, %275
  %277 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 16) to i8*), !dbg !423, !nosanitize !2
  %278 = add i8 %277, 1, !dbg !423
  store i8 %278, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 16) to i8*), !dbg !423, !nosanitize !2
  %279 = load i8, i8* inttoptr (i64 add (i64 lshr (i64 ptrtoint (i32* @optind to i64), i64 3), i64 2147450880) to i8*), !dbg !423
  %280 = icmp ne i8 %279, 0, !dbg !423
  br i1 %280, label %281, label %284, !dbg !423, !prof !325

; <label>:281                                     ; preds = %276
  %282 = icmp sge i8 trunc (i64 add (i64 and (i64 ptrtoint (i32* @optind to i64), i64 7), i64 3) to i8), %279, !dbg !423
  br i1 %282, label %283, label %284, !dbg !423

; <label>:283                                     ; preds = %281
  call void @__asan_report_load4(i64 ptrtoint (i32* @optind to i64)), !dbg !423
  call void asm sideeffect "", ""()
  unreachable

; <label>:284                                     ; preds = %281, %276
  %285 = load i32, i32* @optind, align 4, !dbg !423, !tbaa !357
  %286 = icmp eq i32 %285, %argc, !dbg !425
  br i1 %286, label %287, label %288, !dbg !426

; <label>:287                                     ; preds = %284
  call void @free(i8* %outputFileName.0.ph.lcssa) #5, !dbg !427
  call void @free(i8* %vectorName.0.ph2.lcssa) #5, !dbg !429
  call void @__asan_handle_no_return(), !dbg !430
  call fastcc void @usage(i32 0) #10, !dbg !430
  unreachable, !dbg !430

; <label>:288                                     ; preds = %284
  %289 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 72) to i32*) monotonic, align 4, !dbg !431, !nosanitize !2
  %290 = icmp sge i32 0, %289, !dbg !431
  br i1 %290, label %291, label %292, !dbg !431, !prof !325

; <label>:291                                     ; preds = %288
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 72) to i32*)), !dbg !431
  call void asm sideeffect "", ""(), !dbg !431
  br label %292, !dbg !431

; <label>:292                                     ; preds = %288, %291
  %293 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 17) to i8*), !dbg !431, !nosanitize !2
  %294 = add i8 %293, 1, !dbg !431
  store i8 %294, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 17) to i8*), !dbg !431, !nosanitize !2
  %295 = sext i32 %285 to i64, !dbg !431
  %296 = getelementptr inbounds i8*, i8** %argv, i64 %295, !dbg !431
  %297 = ptrtoint i8** %296 to i64, !dbg !431
  %298 = lshr i64 %297, 3, !dbg !431
  %299 = add i64 %298, 2147450880, !dbg !431
  %300 = inttoptr i64 %299 to i8*, !dbg !431
  %301 = load i8, i8* %300, !dbg !431
  %302 = icmp ne i8 %301, 0, !dbg !431
  br i1 %302, label %303, label %304, !dbg !431

; <label>:303                                     ; preds = %292
  call void @__asan_report_load8(i64 %297), !dbg !431
  call void asm sideeffect "", ""(), !dbg !431
  unreachable, !dbg !431

; <label>:304                                     ; preds = %292
  %305 = load i8*, i8** %296, align 8, !dbg !431, !tbaa !345
  %306 = call i64 @strlen(i8* %305) #12, !dbg !433
  %307 = add i64 %306, 1, !dbg !434
  %308 = call noalias i8* @malloc(i64 %307) #5, !dbg !435
  call void @llvm.dbg.value(metadata i8* %308, i64 0, metadata !40, metadata !326), !dbg !360
  %309 = load i8, i8* inttoptr (i64 add (i64 lshr (i64 ptrtoint (i32* @optind to i64), i64 3), i64 2147450880) to i8*), !dbg !437
  %310 = icmp ne i8 %309, 0, !dbg !437
  br i1 %310, label %311, label %314, !dbg !437, !prof !325

; <label>:311                                     ; preds = %304
  %312 = icmp sge i8 trunc (i64 add (i64 and (i64 ptrtoint (i32* @optind to i64), i64 7), i64 3) to i8), %309, !dbg !437
  br i1 %312, label %313, label %314, !dbg !437

; <label>:313                                     ; preds = %311
  call void @__asan_report_load4(i64 ptrtoint (i32* @optind to i64)), !dbg !437
  call void asm sideeffect "", ""()
  unreachable

; <label>:314                                     ; preds = %311, %304
  %315 = load i32, i32* @optind, align 4, !dbg !437, !tbaa !357
  %316 = sext i32 %315 to i64, !dbg !438
  %317 = getelementptr inbounds i8*, i8** %argv, i64 %316, !dbg !438
  %318 = ptrtoint i8** %317 to i64, !dbg !438
  %319 = lshr i64 %318, 3, !dbg !438
  %320 = add i64 %319, 2147450880, !dbg !438
  %321 = inttoptr i64 %320 to i8*, !dbg !438
  %322 = load i8, i8* %321, !dbg !438
  %323 = icmp ne i8 %322, 0, !dbg !438
  br i1 %323, label %324, label %325, !dbg !438

; <label>:324                                     ; preds = %314
  call void @__asan_report_load8(i64 %318), !dbg !438
  call void asm sideeffect "", ""(), !dbg !438
  unreachable, !dbg !438

; <label>:325                                     ; preds = %314
  %326 = load i8*, i8** %317, align 8, !dbg !438, !tbaa !345
  %327 = call i8* @strcpy(i8* %308, i8* %326) #5, !dbg !439
  %328 = icmp eq i32 %checkSyntaxOnly.0.ph5.lcssa, 1, !dbg !440
  br i1 %328, label %329, label %338, !dbg !442

; <label>:329                                     ; preds = %325
  %330 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 76) to i32*) monotonic, align 4, !dbg !364, !nosanitize !2
  %331 = icmp sge i32 0, %330, !dbg !364
  br i1 %331, label %332, label %333, !dbg !364, !prof !325

; <label>:332                                     ; preds = %329
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 76) to i32*)), !dbg !364
  call void asm sideeffect "", ""(), !dbg !364
  br label %333, !dbg !364

; <label>:333                                     ; preds = %329, %332
  %334 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 18) to i8*), !dbg !364, !nosanitize !2
  %335 = add i8 %334, 1, !dbg !364
  store i8 %335, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 18) to i8*), !dbg !364, !nosanitize !2
  call void @llvm.dbg.value(metadata %struct.asn1_node_st** %15, i64 0, metadata !43, metadata !322), !dbg !364
  %336 = call i32 @asn1_parser2tree(i8* %308, %struct.asn1_node_st** nonnull %15, i8* %60) #5, !dbg !443
  call void @llvm.dbg.value(metadata i32 %336, i64 0, metadata !53, metadata !326), !dbg !366
  call void @llvm.dbg.value(metadata %struct.asn1_node_st** %15, i64 0, metadata !43, metadata !322), !dbg !364
  %337 = call i32 @asn1_delete_structure(%struct.asn1_node_st** nonnull %15) #5, !dbg !445
  br label %346, !dbg !446

; <label>:338                                     ; preds = %325
  %339 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 80) to i32*) monotonic, align 4, !dbg !447, !nosanitize !2
  %340 = icmp sge i32 0, %339, !dbg !447
  br i1 %340, label %341, label %342, !dbg !447, !prof !325

; <label>:341                                     ; preds = %338
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 80) to i32*)), !dbg !447
  call void asm sideeffect "", ""(), !dbg !447
  br label %342, !dbg !447

; <label>:342                                     ; preds = %338, %341
  %343 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 19) to i8*), !dbg !447, !nosanitize !2
  %344 = add i8 %343, 1, !dbg !447
  store i8 %344, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 19) to i8*), !dbg !447, !nosanitize !2
  %345 = call i32 @asn1_parser2array(i8* %308, i8* %outputFileName.0.ph.lcssa, i8* %vectorName.0.ph2.lcssa, i8* %60) #5, !dbg !447
  call void @llvm.dbg.value(metadata i32 %345, i64 0, metadata !53, metadata !326), !dbg !366
  br label %346

; <label>:346                                     ; preds = %342, %333
  %parse_result.0 = phi i32 [ %336, %333 ], [ %345, %342 ]
  %347 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 84) to i32*) monotonic, align 4, !dbg !448, !nosanitize !2
  %348 = icmp sge i32 0, %347, !dbg !448
  br i1 %348, label %349, label %350, !dbg !448, !prof !325

; <label>:349                                     ; preds = %346
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 84) to i32*)), !dbg !448
  call void asm sideeffect "", ""(), !dbg !448
  br label %350, !dbg !448

; <label>:350                                     ; preds = %346, %349
  %351 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 20) to i8*), !dbg !448, !nosanitize !2
  %352 = add i8 %351, 1, !dbg !448
  store i8 %352, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 20) to i8*), !dbg !448, !nosanitize !2
  switch i32 %parse_result.0, label %410 [
    i32 0, label %371
    i32 1, label %384
    i32 11, label %._crit_edge78
    i32 3, label %._crit_edge79
    i32 15, label %._crit_edge80
  ], !dbg !448

._crit_edge80:                                    ; preds = %350
  %353 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 88) to i32*) monotonic, align 4, !dbg !448, !nosanitize !2
  %354 = icmp sge i32 0, %353, !dbg !448
  br i1 %354, label %355, label %356, !dbg !448, !prof !325

; <label>:355                                     ; preds = %._crit_edge80
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 88) to i32*)), !dbg !448
  call void asm sideeffect "", ""(), !dbg !448
  br label %356, !dbg !448

; <label>:356                                     ; preds = %._crit_edge80, %355
  %357 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 21) to i8*), !dbg !448, !nosanitize !2
  %358 = add i8 %357, 1, !dbg !448
  store i8 %358, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 21) to i8*), !dbg !448, !nosanitize !2
  br label %397, !dbg !448

._crit_edge79:                                    ; preds = %350
  %359 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 92) to i32*) monotonic, align 4, !dbg !448, !nosanitize !2
  %360 = icmp sge i32 0, %359, !dbg !448
  br i1 %360, label %361, label %362, !dbg !448, !prof !325

; <label>:361                                     ; preds = %._crit_edge79
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 92) to i32*)), !dbg !448
  call void asm sideeffect "", ""(), !dbg !448
  br label %362, !dbg !448

; <label>:362                                     ; preds = %._crit_edge79, %361
  %363 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 22) to i8*), !dbg !448, !nosanitize !2
  %364 = add i8 %363, 1, !dbg !448
  store i8 %364, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 22) to i8*), !dbg !448, !nosanitize !2
  br label %397, !dbg !448

._crit_edge78:                                    ; preds = %350
  %365 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 96) to i32*) monotonic, align 4, !dbg !448, !nosanitize !2
  %366 = icmp sge i32 0, %365, !dbg !448
  br i1 %366, label %367, label %368, !dbg !448, !prof !325

; <label>:367                                     ; preds = %._crit_edge78
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 96) to i32*)), !dbg !448
  call void asm sideeffect "", ""(), !dbg !448
  br label %368, !dbg !448

; <label>:368                                     ; preds = %._crit_edge78, %367
  %369 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 23) to i8*), !dbg !448, !nosanitize !2
  %370 = add i8 %369, 1, !dbg !448
  store i8 %370, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 23) to i8*), !dbg !448, !nosanitize !2
  br label %397, !dbg !448

; <label>:371                                     ; preds = %350
  %372 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 100) to i32*) monotonic, align 4, !dbg !449, !nosanitize !2
  %373 = icmp sge i32 0, %372, !dbg !449
  br i1 %373, label %374, label %375, !dbg !449, !prof !325

; <label>:374                                     ; preds = %371
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 100) to i32*)), !dbg !449
  call void asm sideeffect "", ""(), !dbg !449
  br label %375, !dbg !449

; <label>:375                                     ; preds = %371, %374
  %376 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 24) to i8*), !dbg !449, !nosanitize !2
  %377 = add i8 %376, 1, !dbg !449
  store i8 %377, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 24) to i8*), !dbg !449, !nosanitize !2
  %378 = load i8, i8* inttoptr (i64 add (i64 lshr (i64 ptrtoint (%struct._IO_FILE** @stderr to i64), i64 3), i64 2147450880) to i8*), !dbg !449
  %379 = icmp ne i8 %378, 0, !dbg !449
  br i1 %379, label %380, label %381, !dbg !449

; <label>:380                                     ; preds = %375
  call void @__asan_report_load8(i64 ptrtoint (%struct._IO_FILE** @stderr to i64)), !dbg !449
  call void asm sideeffect "", ""(), !dbg !449
  unreachable, !dbg !449

; <label>:381                                     ; preds = %375
  %382 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !449, !tbaa !345
  %383 = call i64 @fwrite(i8* nonnull getelementptr inbounds ({ [7 x i8], [57 x i8] }, { [7 x i8], [57 x i8] }* @.str.14, i32 0, i32 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %382) #9, !dbg !451
  br label %424, !dbg !452

; <label>:384                                     ; preds = %350
  %385 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 104) to i32*) monotonic, align 4, !dbg !453, !nosanitize !2
  %386 = icmp sge i32 0, %385, !dbg !453
  br i1 %386, label %387, label %388, !dbg !453, !prof !325

; <label>:387                                     ; preds = %384
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 104) to i32*)), !dbg !453
  call void asm sideeffect "", ""(), !dbg !453
  br label %388, !dbg !453

; <label>:388                                     ; preds = %384, %387
  %389 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 25) to i8*), !dbg !453, !nosanitize !2
  %390 = add i8 %389, 1, !dbg !453
  store i8 %390, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 25) to i8*), !dbg !453, !nosanitize !2
  %391 = load i8, i8* inttoptr (i64 add (i64 lshr (i64 ptrtoint (%struct._IO_FILE** @stderr to i64), i64 3), i64 2147450880) to i8*), !dbg !453
  %392 = icmp ne i8 %391, 0, !dbg !453
  br i1 %392, label %393, label %394, !dbg !453

; <label>:393                                     ; preds = %388
  call void @__asan_report_load8(i64 ptrtoint (%struct._IO_FILE** @stderr to i64)), !dbg !453
  call void asm sideeffect "", ""(), !dbg !453
  unreachable, !dbg !453

; <label>:394                                     ; preds = %388
  %395 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !453, !tbaa !345
  %396 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %395, i8* nonnull getelementptr inbounds ({ [35 x i8], [61 x i8] }, { [35 x i8], [61 x i8] }* @.str.15, i32 0, i32 0, i64 0), i8* %308) #9, !dbg !454
  br label %424, !dbg !455

; <label>:397                                     ; preds = %356, %362, %368
  %398 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 108) to i32*) monotonic, align 4, !dbg !456, !nosanitize !2
  %399 = icmp sge i32 0, %398, !dbg !456
  br i1 %399, label %400, label %401, !dbg !456, !prof !325

; <label>:400                                     ; preds = %397
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 108) to i32*)), !dbg !456
  call void asm sideeffect "", ""(), !dbg !456
  br label %401, !dbg !456

; <label>:401                                     ; preds = %397, %400
  %402 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 26) to i8*), !dbg !456, !nosanitize !2
  %403 = add i8 %402, 1, !dbg !456
  store i8 %403, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 26) to i8*), !dbg !456, !nosanitize !2
  %404 = load i8, i8* inttoptr (i64 add (i64 lshr (i64 ptrtoint (%struct._IO_FILE** @stderr to i64), i64 3), i64 2147450880) to i8*), !dbg !456
  %405 = icmp ne i8 %404, 0, !dbg !456
  br i1 %405, label %406, label %407, !dbg !456

; <label>:406                                     ; preds = %401
  call void @__asan_report_load8(i64 ptrtoint (%struct._IO_FILE** @stderr to i64)), !dbg !456
  call void asm sideeffect "", ""(), !dbg !456
  unreachable, !dbg !456

; <label>:407                                     ; preds = %401
  %408 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !456, !tbaa !345
  %409 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %408, i8* nonnull getelementptr inbounds ({ [16 x i8], [48 x i8] }, { [16 x i8], [48 x i8] }* @.str.16, i32 0, i32 0, i64 0), i8* %60) #9, !dbg !457
  br label %424, !dbg !458

; <label>:410                                     ; preds = %350
  %411 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 112) to i32*) monotonic, align 4, !dbg !459, !nosanitize !2
  %412 = icmp sge i32 0, %411, !dbg !459
  br i1 %412, label %413, label %414, !dbg !459, !prof !325

; <label>:413                                     ; preds = %410
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 112) to i32*)), !dbg !459
  call void asm sideeffect "", ""(), !dbg !459
  br label %414, !dbg !459

; <label>:414                                     ; preds = %410, %413
  %415 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 27) to i8*), !dbg !459, !nosanitize !2
  %416 = add i8 %415, 1, !dbg !459
  store i8 %416, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 27) to i8*), !dbg !459, !nosanitize !2
  %417 = load i8, i8* inttoptr (i64 add (i64 lshr (i64 ptrtoint (%struct._IO_FILE** @stderr to i64), i64 3), i64 2147450880) to i8*), !dbg !459
  %418 = icmp ne i8 %417, 0, !dbg !459
  br i1 %418, label %419, label %420, !dbg !459

; <label>:419                                     ; preds = %414
  call void @__asan_report_load8(i64 ptrtoint (%struct._IO_FILE** @stderr to i64)), !dbg !459
  call void asm sideeffect "", ""(), !dbg !459
  unreachable, !dbg !459

; <label>:420                                     ; preds = %414
  %421 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !459, !tbaa !345
  %422 = call i8* @asn1_strerror(i32 %parse_result.0) #5, !dbg !460
  %423 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %421, i8* nonnull getelementptr inbounds ({ [20 x i8], [44 x i8] }, { [20 x i8], [44 x i8] }* @.str.17, i32 0, i32 0, i64 0), i8* %422) #9, !dbg !461
  br label %424, !dbg !463

; <label>:424                                     ; preds = %420, %407, %394, %381
  %425 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 116) to i32*) monotonic, align 4, !dbg !464, !nosanitize !2
  %426 = icmp sge i32 0, %425, !dbg !464
  br i1 %426, label %427, label %428, !dbg !464, !prof !325

; <label>:427                                     ; preds = %424
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 116) to i32*)), !dbg !464
  call void asm sideeffect "", ""(), !dbg !464
  br label %428, !dbg !464

; <label>:428                                     ; preds = %424, %427
  %429 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 28) to i8*), !dbg !464, !nosanitize !2
  %430 = add i8 %429, 1, !dbg !464
  store i8 %430, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 28) to i8*), !dbg !464, !nosanitize !2
  call void @free(i8* %308) #5, !dbg !464
  call void @free(i8* %outputFileName.0.ph.lcssa) #5, !dbg !465
  call void @free(i8* %vectorName.0.ph2.lcssa) #5, !dbg !466
  %431 = icmp eq i32 %parse_result.0, 0, !dbg !467
  br i1 %431, label %433, label %432, !dbg !469

; <label>:432                                     ; preds = %428
  call void @__asan_handle_no_return(), !dbg !470
  call void @exit(i32 1) #11, !dbg !470
  unreachable, !dbg !470

; <label>:433                                     ; preds = %428
  call void @__asan_handle_no_return(), !dbg !471
  call void @exit(i32 0) #11, !dbg !471
  unreachable, !dbg !471
}

declare i64 @__asan_stack_malloc_2(i64)

declare void @__asan_report_store4(i64)

declare void @__asan_report_load8(i64)

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

declare void @__asan_report_load4(i64)

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: nounwind
declare i32 @_IO_putc(i32, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) #2

; Function Attrs: noreturn nounwind sanitize_address uwtable
define internal fastcc void @usage(i32 %status) unnamed_addr #4 !dbg !54 {
  %1 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 120) to i32*) monotonic, align 4, !dbg !472, !nosanitize !2
  %2 = icmp sge i32 0, %1, !dbg !472
  br i1 %2, label %3, label %4, !dbg !473, !prof !325

; <label>:3                                       ; preds = %0
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 120) to i32*)), !dbg !472
  call void asm sideeffect "", ""(), !dbg !472
  br label %4, !dbg !473

; <label>:4                                       ; preds = %0, %3
  %5 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 29) to i8*), !dbg !473, !nosanitize !2
  %6 = add i8 %5, 1, !dbg !473
  store i8 %6, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 29) to i8*), !dbg !473, !nosanitize !2
  tail call void @llvm.dbg.value(metadata i32 %status, i64 0, metadata !58, metadata !326), !dbg !473
  %7 = icmp eq i32 %status, 0, !dbg !474
  br i1 %7, label %26, label %8, !dbg !476

; <label>:8                                       ; preds = %4
  %9 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 124) to i32*) monotonic, align 4, !dbg !477, !nosanitize !2
  %10 = icmp sge i32 0, %9, !dbg !477
  br i1 %10, label %11, label %12, !dbg !477, !prof !325

; <label>:11                                      ; preds = %8
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 124) to i32*)), !dbg !477
  call void asm sideeffect "", ""(), !dbg !477
  br label %12, !dbg !477

; <label>:12                                      ; preds = %8, %11
  %13 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 30) to i8*), !dbg !477, !nosanitize !2
  %14 = add i8 %13, 1, !dbg !477
  store i8 %14, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 30) to i8*), !dbg !477, !nosanitize !2
  %15 = load i8, i8* inttoptr (i64 add (i64 lshr (i64 ptrtoint (%struct._IO_FILE** @stderr to i64), i64 3), i64 2147450880) to i8*), !dbg !477
  %16 = icmp ne i8 %15, 0, !dbg !477
  br i1 %16, label %17, label %18, !dbg !477

; <label>:17                                      ; preds = %12
  call void @__asan_report_load8(i64 ptrtoint (%struct._IO_FILE** @stderr to i64)), !dbg !477
  call void asm sideeffect "", ""(), !dbg !477
  unreachable, !dbg !477

; <label>:18                                      ; preds = %12
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !477, !tbaa !345
  %20 = load i8, i8* inttoptr (i64 add (i64 lshr (i64 ptrtoint ({ i8*, [56 x i8] }* @program_name to i64), i64 3), i64 2147450880) to i8*), !dbg !478
  %21 = icmp ne i8 %20, 0, !dbg !478
  br i1 %21, label %22, label %23, !dbg !478

; <label>:22                                      ; preds = %18
  call void @__asan_report_load8(i64 ptrtoint ({ i8*, [56 x i8] }* @program_name to i64)), !dbg !478
  call void asm sideeffect "", ""(), !dbg !478
  unreachable, !dbg !478

; <label>:23                                      ; preds = %18
  %24 = load i8*, i8** getelementptr inbounds ({ i8*, [56 x i8] }, { i8*, [56 x i8] }* @program_name, i32 0, i32 0), align 8, !dbg !478, !tbaa !345
  %25 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* nonnull getelementptr inbounds ({ [39 x i8], [57 x i8] }, { [39 x i8], [57 x i8] }* @.str.18, i32 0, i32 0, i64 0), i8* %24) #9, !dbg !479
  br label %39, !dbg !479

; <label>:26                                      ; preds = %4
  %27 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 128) to i32*) monotonic, align 4, !dbg !480, !nosanitize !2
  %28 = icmp sge i32 0, %27, !dbg !480
  br i1 %28, label %29, label %30, !dbg !480, !prof !325

; <label>:29                                      ; preds = %26
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([33 x i32]* @__sancov_gen_cov to i64), i64 128) to i32*)), !dbg !480
  call void asm sideeffect "", ""(), !dbg !480
  br label %30, !dbg !480

; <label>:30                                      ; preds = %26, %29
  %31 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 31) to i8*), !dbg !480, !nosanitize !2
  %32 = add i8 %31, 1, !dbg !480
  store i8 %32, i8* inttoptr (i64 add (i64 ptrtoint ([32 x i8]* @__sancov_gen_cov_counter to i64), i64 31) to i8*), !dbg !480, !nosanitize !2
  %33 = load i8, i8* inttoptr (i64 add (i64 lshr (i64 ptrtoint ({ i8*, [56 x i8] }* @program_name to i64), i64 3), i64 2147450880) to i8*), !dbg !480
  %34 = icmp ne i8 %33, 0, !dbg !480
  br i1 %34, label %35, label %36, !dbg !480

; <label>:35                                      ; preds = %30
  call void @__asan_report_load8(i64 ptrtoint ({ i8*, [56 x i8] }* @program_name to i64)), !dbg !480
  call void asm sideeffect "", ""(), !dbg !480
  unreachable, !dbg !480

; <label>:36                                      ; preds = %30
  %37 = load i8*, i8** getelementptr inbounds ({ i8*, [56 x i8] }, { i8*, [56 x i8] }* @program_name, i32 0, i32 0), align 8, !dbg !480, !tbaa !345
  %38 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ({ [25 x i8], [39 x i8] }, { [25 x i8], [39 x i8] }* @.str.19, i32 0, i32 0, i64 0), i8* %37), !dbg !482
  %puts = tail call i32 @puts(i8* nonnull getelementptr inbounds ({ [95 x i8], [33 x i8] }, { [95 x i8], [33 x i8] }* @str, i32 0, i32 0, i64 0)), !dbg !483
  %puts1 = tail call i32 @puts(i8* nonnull getelementptr inbounds ({ [302 x i8], [82 x i8] }, { [302 x i8], [82 x i8] }* @str.22, i32 0, i32 0, i64 0)), !dbg !484
  tail call void @emit_bug_reporting_address() #5, !dbg !485
  br label %39

; <label>:39                                      ; preds = %36, %23
  call void @__asan_handle_no_return(), !dbg !486
  tail call void @exit(i32 %status) #11, !dbg !486
  unreachable, !dbg !486
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #7

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8* nocapture readonly) #2

declare i32 @asn1_parser2tree(i8*, %struct.asn1_node_st**, i8*) #8

declare i32 @asn1_delete_structure(%struct.asn1_node_st**) #8

declare i32 @asn1_parser2array(i8*, i8*, i8*, i8*) #8

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

declare i8* @asn1_strerror(i32) #8

define internal void @asan.module_ctor.4() {
  tail call void @__asan_init()
  tail call void @__asan_version_mismatch_check_v6()
  call void @__asan_register_globals(i64 ptrtoint ([5 x { i64, i64, i64, i64, i64, i64, i64 }]* @2 to i64), i64 5)
  ret void
}

define internal void @sancov.module_ctor.23() {
  call void @__sanitizer_cov_module_init(i32* getelementptr inbounds ([10 x i32], [10 x i32]* @__sancov_gen_cov.24, i32 0, i32 0), i64 9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__sancov_gen_cov_counter.25, i32 0, i32 0), i8* getelementptr inbounds ({ [11 x i8], [53 x i8] }, { [11 x i8], [53 x i8] }* @3, i32 0, i32 0, i32 0))
  ret void
}

define internal void @asan.module_dtor.27() {
  call void @__asan_unregister_globals(i64 ptrtoint ([5 x { i64, i64, i64, i64, i64, i64, i64 }]* @2 to i64), i64 5)
  ret void
}

; Function Attrs: nounwind sanitize_address uwtable
define void @set_program_name(i8* %argv0) #0 !dbg !79 {
  %1 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([10 x i32]* @__sancov_gen_cov.24 to i64), i64 4) to i32*) monotonic, align 4, !dbg !487, !nosanitize !2
  %2 = icmp sge i32 0, %1, !dbg !487
  br i1 %2, label %3, label %4, !dbg !488, !prof !325

; <label>:3                                       ; preds = %0
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([10 x i32]* @__sancov_gen_cov.24 to i64), i64 4) to i32*)), !dbg !487
  call void asm sideeffect "", ""(), !dbg !487
  br label %4, !dbg !488

; <label>:4                                       ; preds = %0, %3
  %5 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__sancov_gen_cov_counter.25, i32 0, i32 0), !dbg !488, !nosanitize !2
  %6 = add i8 %5, 1, !dbg !488
  store i8 %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__sancov_gen_cov_counter.25, i32 0, i32 0), !dbg !488, !nosanitize !2
  tail call void @llvm.dbg.value(metadata i8* %argv0, i64 0, metadata !83, metadata !326), !dbg !488
  %7 = icmp eq i8* %argv0, null, !dbg !489
  br i1 %7, label %8, label %15, !dbg !491

; <label>:8                                       ; preds = %4
  %9 = load i8, i8* inttoptr (i64 add (i64 lshr (i64 ptrtoint (%struct._IO_FILE** @stderr to i64), i64 3), i64 2147450880) to i8*), !dbg !492
  %10 = icmp ne i8 %9, 0, !dbg !492
  br i1 %10, label %11, label %12, !dbg !492

; <label>:11                                      ; preds = %8
  call void @__asan_report_load8(i64 ptrtoint (%struct._IO_FILE** @stderr to i64)), !dbg !492
  call void asm sideeffect "", ""(), !dbg !492
  unreachable, !dbg !492

; <label>:12                                      ; preds = %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !492, !tbaa !345
  %14 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ({ [56 x i8], [40 x i8] }, { [56 x i8], [40 x i8] }* @.str.20, i32 0, i32 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %13) #9, !dbg !494
  call void @__asan_handle_no_return(), !dbg !495
  tail call void @abort() #11, !dbg !495
  unreachable, !dbg !495

; <label>:15                                      ; preds = %4
  %16 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([10 x i32]* @__sancov_gen_cov.24 to i64), i64 8) to i32*) monotonic, align 4, !dbg !496, !nosanitize !2
  %17 = icmp sge i32 0, %16, !dbg !496
  br i1 %17, label %18, label %19, !dbg !496, !prof !325

; <label>:18                                      ; preds = %15
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([10 x i32]* @__sancov_gen_cov.24 to i64), i64 8) to i32*)), !dbg !496
  call void asm sideeffect "", ""(), !dbg !496
  br label %19, !dbg !496

; <label>:19                                      ; preds = %15, %18
  %20 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([16 x i8]* @__sancov_gen_cov_counter.25 to i64), i64 1) to i8*), !dbg !496, !nosanitize !2
  %21 = add i8 %20, 1, !dbg !496
  store i8 %21, i8* inttoptr (i64 add (i64 ptrtoint ([16 x i8]* @__sancov_gen_cov_counter.25 to i64), i64 1) to i8*), !dbg !496, !nosanitize !2
  %22 = tail call i8* @strrchr(i8* nonnull %argv0, i32 47) #12, !dbg !496
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !84, metadata !326), !dbg !497
  %23 = icmp eq i8* %22, null, !dbg !498
  %24 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !499
  %25 = select i1 %23, i8* %argv0, i8* %24, !dbg !501
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !85, metadata !326), !dbg !502
  %26 = ptrtoint i8* %25 to i64, !dbg !503
  %27 = ptrtoint i8* %argv0 to i64, !dbg !503
  %28 = sub i64 %26, %27, !dbg !503
  %29 = icmp sgt i64 %28, 6, !dbg !505
  br i1 %29, label %36, label %._crit_edge, !dbg !506

._crit_edge:                                      ; preds = %19
  %30 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([10 x i32]* @__sancov_gen_cov.24 to i64), i64 12) to i32*) monotonic, align 4, !dbg !506, !nosanitize !2
  %31 = icmp sge i32 0, %30, !dbg !506
  br i1 %31, label %32, label %33, !dbg !506, !prof !325

; <label>:32                                      ; preds = %._crit_edge
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([10 x i32]* @__sancov_gen_cov.24 to i64), i64 12) to i32*)), !dbg !506
  call void asm sideeffect "", ""(), !dbg !506
  br label %33, !dbg !506

; <label>:33                                      ; preds = %._crit_edge, %32
  %34 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([16 x i8]* @__sancov_gen_cov_counter.25 to i64), i64 2) to i8*), !dbg !506, !nosanitize !2
  %35 = add i8 %34, 1, !dbg !506
  store i8 %35, i8* inttoptr (i64 add (i64 ptrtoint ([16 x i8]* @__sancov_gen_cov_counter.25 to i64), i64 2) to i8*), !dbg !506, !nosanitize !2
  br label %79, !dbg !506

; <label>:36                                      ; preds = %19
  %37 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([10 x i32]* @__sancov_gen_cov.24 to i64), i64 16) to i32*) monotonic, align 4, !dbg !507, !nosanitize !2
  %38 = icmp sge i32 0, %37, !dbg !507
  br i1 %38, label %39, label %40, !dbg !507, !prof !325

; <label>:39                                      ; preds = %36
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([10 x i32]* @__sancov_gen_cov.24 to i64), i64 16) to i32*)), !dbg !507
  call void asm sideeffect "", ""(), !dbg !507
  br label %40, !dbg !507

; <label>:40                                      ; preds = %36, %39
  %41 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([16 x i8]* @__sancov_gen_cov_counter.25 to i64), i64 3) to i8*), !dbg !507, !nosanitize !2
  %42 = add i8 %41, 1, !dbg !507
  store i8 %42, i8* inttoptr (i64 add (i64 ptrtoint ([16 x i8]* @__sancov_gen_cov_counter.25 to i64), i64 3) to i8*), !dbg !507, !nosanitize !2
  %43 = getelementptr inbounds i8, i8* %25, i64 -7, !dbg !507
  %44 = tail call i32 @strncmp(i8* %43, i8* nonnull getelementptr inbounds ({ [8 x i8], [56 x i8] }, { [8 x i8], [56 x i8] }* @.str.1.21, i32 0, i32 0, i64 0), i64 7) #12, !dbg !507
  %45 = icmp eq i32 %44, 0, !dbg !509
  br i1 %45, label %52, label %._crit_edge1, !dbg !510

._crit_edge1:                                     ; preds = %40
  %46 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([10 x i32]* @__sancov_gen_cov.24 to i64), i64 20) to i32*) monotonic, align 4, !dbg !510, !nosanitize !2
  %47 = icmp sge i32 0, %46, !dbg !510
  br i1 %47, label %48, label %49, !dbg !510, !prof !325

; <label>:48                                      ; preds = %._crit_edge1
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([10 x i32]* @__sancov_gen_cov.24 to i64), i64 20) to i32*)), !dbg !510
  call void asm sideeffect "", ""(), !dbg !510
  br label %49, !dbg !510

; <label>:49                                      ; preds = %._crit_edge1, %48
  %50 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([16 x i8]* @__sancov_gen_cov_counter.25 to i64), i64 4) to i8*), !dbg !510, !nosanitize !2
  %51 = add i8 %50, 1, !dbg !510
  store i8 %51, i8* inttoptr (i64 add (i64 ptrtoint ([16 x i8]* @__sancov_gen_cov_counter.25 to i64), i64 4) to i8*), !dbg !510, !nosanitize !2
  br label %79, !dbg !510

; <label>:52                                      ; preds = %40
  %53 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([10 x i32]* @__sancov_gen_cov.24 to i64), i64 24) to i32*) monotonic, align 4, !dbg !488, !nosanitize !2
  %54 = icmp sge i32 0, %53, !dbg !488
  br i1 %54, label %55, label %56, !dbg !488, !prof !325

; <label>:55                                      ; preds = %52
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([10 x i32]* @__sancov_gen_cov.24 to i64), i64 24) to i32*)), !dbg !488
  call void asm sideeffect "", ""(), !dbg !488
  br label %56, !dbg !488

; <label>:56                                      ; preds = %52, %55
  %57 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([16 x i8]* @__sancov_gen_cov_counter.25 to i64), i64 5) to i8*), !dbg !488, !nosanitize !2
  %58 = add i8 %57, 1, !dbg !488
  store i8 %58, i8* inttoptr (i64 add (i64 ptrtoint ([16 x i8]* @__sancov_gen_cov_counter.25 to i64), i64 5) to i8*), !dbg !488, !nosanitize !2
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !83, metadata !326), !dbg !488
  %59 = tail call i32 @strncmp(i8* %25, i8* nonnull getelementptr inbounds ({ [4 x i8], [60 x i8] }, { [4 x i8], [60 x i8] }* @.str.2.22, i32 0, i32 0, i64 0), i64 3) #12, !dbg !511
  %60 = icmp eq i32 %59, 0, !dbg !514
  br i1 %60, label %67, label %._crit_edge2, !dbg !515

._crit_edge2:                                     ; preds = %56
  %61 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([10 x i32]* @__sancov_gen_cov.24 to i64), i64 28) to i32*) monotonic, align 4, !dbg !515, !nosanitize !2
  %62 = icmp sge i32 0, %61, !dbg !515
  br i1 %62, label %63, label %64, !dbg !515, !prof !325

; <label>:63                                      ; preds = %._crit_edge2
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([10 x i32]* @__sancov_gen_cov.24 to i64), i64 28) to i32*)), !dbg !515
  call void asm sideeffect "", ""(), !dbg !515
  br label %64, !dbg !515

; <label>:64                                      ; preds = %._crit_edge2, %63
  %65 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([16 x i8]* @__sancov_gen_cov_counter.25 to i64), i64 6) to i8*), !dbg !515, !nosanitize !2
  %66 = add i8 %65, 1, !dbg !515
  store i8 %66, i8* inttoptr (i64 add (i64 ptrtoint ([16 x i8]* @__sancov_gen_cov_counter.25 to i64), i64 6) to i8*), !dbg !515, !nosanitize !2
  br label %79, !dbg !515

; <label>:67                                      ; preds = %56
  %68 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([10 x i32]* @__sancov_gen_cov.24 to i64), i64 32) to i32*) monotonic, align 4, !dbg !516, !nosanitize !2
  %69 = icmp sge i32 0, %68, !dbg !516
  br i1 %69, label %70, label %71, !dbg !516, !prof !325

; <label>:70                                      ; preds = %67
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([10 x i32]* @__sancov_gen_cov.24 to i64), i64 32) to i32*)), !dbg !516
  call void asm sideeffect "", ""(), !dbg !516
  br label %71, !dbg !516

; <label>:71                                      ; preds = %67, %70
  %72 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([16 x i8]* @__sancov_gen_cov_counter.25 to i64), i64 7) to i8*), !dbg !516, !nosanitize !2
  %73 = add i8 %72, 1, !dbg !516
  store i8 %73, i8* inttoptr (i64 add (i64 ptrtoint ([16 x i8]* @__sancov_gen_cov_counter.25 to i64), i64 7) to i8*), !dbg !516, !nosanitize !2
  %74 = getelementptr inbounds i8, i8* %25, i64 3, !dbg !516
  tail call void @llvm.dbg.value(metadata i8* %74, i64 0, metadata !83, metadata !326), !dbg !488
  %75 = load i8, i8* inttoptr (i64 add (i64 lshr (i64 ptrtoint (i8** @program_invocation_short_name to i64), i64 3), i64 2147450880) to i8*), !dbg !518
  %76 = icmp ne i8 %75, 0, !dbg !518
  br i1 %76, label %77, label %78, !dbg !518

; <label>:77                                      ; preds = %71
  call void @__asan_report_store8(i64 ptrtoint (i8** @program_invocation_short_name to i64)), !dbg !518
  call void asm sideeffect "", ""(), !dbg !518
  unreachable, !dbg !518

; <label>:78                                      ; preds = %71
  store i8* %74, i8** @program_invocation_short_name, align 8, !dbg !518, !tbaa !345
  br label %79, !dbg !519

; <label>:79                                      ; preds = %64, %49, %33, %78
  %.0 = phi i8* [ %74, %78 ], [ %25, %64 ], [ %argv0, %49 ], [ %argv0, %33 ]
  %80 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([10 x i32]* @__sancov_gen_cov.24 to i64), i64 36) to i32*) monotonic, align 4, !dbg !520, !nosanitize !2
  %81 = icmp sge i32 0, %80, !dbg !520
  br i1 %81, label %82, label %83, !dbg !520, !prof !325

; <label>:82                                      ; preds = %79
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([10 x i32]* @__sancov_gen_cov.24 to i64), i64 36) to i32*)), !dbg !520
  call void asm sideeffect "", ""(), !dbg !520
  br label %83, !dbg !520

; <label>:83                                      ; preds = %79, %82
  %84 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([16 x i8]* @__sancov_gen_cov_counter.25 to i64), i64 8) to i8*), !dbg !520, !nosanitize !2
  %85 = add i8 %84, 1, !dbg !520
  store i8 %85, i8* inttoptr (i64 add (i64 ptrtoint ([16 x i8]* @__sancov_gen_cov_counter.25 to i64), i64 8) to i8*), !dbg !520, !nosanitize !2
  store i8* %.0, i8** getelementptr inbounds ({ i8*, [56 x i8] }, { i8*, [56 x i8] }* @program_name, i32 0, i32 0), align 8, !dbg !520, !tbaa !345
  %86 = load i8, i8* inttoptr (i64 add (i64 lshr (i64 ptrtoint (i8** @program_invocation_name to i64), i64 3), i64 2147450880) to i8*), !dbg !521
  %87 = icmp ne i8 %86, 0, !dbg !521
  br i1 %87, label %88, label %89, !dbg !521

; <label>:88                                      ; preds = %83
  call void @__asan_report_store8(i64 ptrtoint (i8** @program_invocation_name to i64)), !dbg !521
  call void asm sideeffect "", ""(), !dbg !521
  unreachable, !dbg !521

; <label>:89                                      ; preds = %83
  store i8* %.0, i8** @program_invocation_name, align 8, !dbg !521, !tbaa !345
  ret void, !dbg !522
}

; Function Attrs: noreturn nounwind
declare void @abort() #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #7

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #7

define internal void @asan.module_ctor.31() {
  tail call void @__asan_init()
  tail call void @__asan_version_mismatch_check_v6()
  call void @__asan_register_globals(i64 ptrtoint ([21 x { i64, i64, i64, i64, i64, i64, i64 }]* @4 to i64), i64 21)
  ret void
}

define internal void @sancov.module_ctor.112() {
  call void @__sanitizer_cov_module_init(i32* getelementptr inbounds ([41 x i32], [41 x i32]* @__sancov_gen_cov.113, i32 0, i32 0), i64 40, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__sancov_gen_cov_counter.114, i32 0, i32 0), i8* getelementptr inbounds ({ [14 x i8], [50 x i8] }, { [14 x i8], [50 x i8] }* @5, i32 0, i32 0, i32 0))
  ret void
}

define internal void @asan.module_dtor.116() {
  call void @__asan_unregister_globals(i64 ptrtoint ([21 x { i64, i64, i64, i64, i64, i64, i64 }]* @4 to i64), i64 21)
  ret void
}

; Function Attrs: nounwind sanitize_address uwtable
define void @version_etc_arn(%struct._IO_FILE* nocapture %stream, i8* %command_name, i8* %package, i8* %version, i8** readonly %authors, i64 %n_authors) #0 !dbg !96 {
  %1 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 4) to i32*) monotonic, align 4, !dbg !523, !nosanitize !2
  %2 = icmp sge i32 0, %1, !dbg !523
  br i1 %2, label %3, label %4, !dbg !524, !prof !325

; <label>:3                                       ; preds = %0
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 4) to i32*)), !dbg !523
  call void asm sideeffect "", ""(), !dbg !523
  br label %4, !dbg !524

; <label>:4                                       ; preds = %0, %3
  %5 = load i8, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__sancov_gen_cov_counter.114, i32 0, i32 0), !dbg !524, !nosanitize !2
  %6 = add i8 %5, 1, !dbg !524
  store i8 %6, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__sancov_gen_cov_counter.114, i32 0, i32 0), !dbg !524, !nosanitize !2
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %stream, i64 0, metadata !160, metadata !326), !dbg !524
  tail call void @llvm.dbg.value(metadata i8* %command_name, i64 0, metadata !161, metadata !326), !dbg !525
  tail call void @llvm.dbg.value(metadata i8* %package, i64 0, metadata !162, metadata !326), !dbg !526
  tail call void @llvm.dbg.value(metadata i8* %version, i64 0, metadata !163, metadata !326), !dbg !527
  tail call void @llvm.dbg.value(metadata i8** %authors, i64 0, metadata !164, metadata !326), !dbg !528
  tail call void @llvm.dbg.value(metadata i64 %n_authors, i64 0, metadata !165, metadata !326), !dbg !529
  %7 = icmp eq i8* %command_name, null, !dbg !530
  br i1 %7, label %16, label %8, !dbg !532

; <label>:8                                       ; preds = %4
  %9 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 8) to i32*) monotonic, align 4, !dbg !533, !nosanitize !2
  %10 = icmp sge i32 0, %9, !dbg !533
  br i1 %10, label %11, label %12, !dbg !533, !prof !325

; <label>:11                                      ; preds = %8
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 8) to i32*)), !dbg !533
  call void asm sideeffect "", ""(), !dbg !533
  br label %12, !dbg !533

; <label>:12                                      ; preds = %8, %11
  %13 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 1) to i8*), !dbg !533, !nosanitize !2
  %14 = add i8 %13, 1, !dbg !533
  store i8 %14, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 1) to i8*), !dbg !533, !nosanitize !2
  %15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %stream, i8* nonnull getelementptr inbounds ({ [12 x i8], [52 x i8] }, { [12 x i8], [52 x i8] }* @.str.32, i32 0, i32 0, i64 0), i8* nonnull %command_name, i8* %package, i8* %version), !dbg !533
  br label %24, !dbg !533

; <label>:16                                      ; preds = %4
  %17 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 12) to i32*) monotonic, align 4, !dbg !534, !nosanitize !2
  %18 = icmp sge i32 0, %17, !dbg !534
  br i1 %18, label %19, label %20, !dbg !534, !prof !325

; <label>:19                                      ; preds = %16
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 12) to i32*)), !dbg !534
  call void asm sideeffect "", ""(), !dbg !534
  br label %20, !dbg !534

; <label>:20                                      ; preds = %16, %19
  %21 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 2) to i8*), !dbg !534, !nosanitize !2
  %22 = add i8 %21, 1, !dbg !534
  store i8 %22, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 2) to i8*), !dbg !534, !nosanitize !2
  %23 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %stream, i8* nonnull getelementptr inbounds ({ [7 x i8], [57 x i8] }, { [7 x i8], [57 x i8] }* @.str.1.35, i32 0, i32 0, i64 0), i8* %package, i8* %version), !dbg !534
  br label %24

; <label>:24                                      ; preds = %20, %12
  %25 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 16) to i32*) monotonic, align 4, !dbg !535, !nosanitize !2
  %26 = icmp sge i32 0, %25, !dbg !535
  br i1 %26, label %27, label %28, !dbg !535, !prof !325

; <label>:27                                      ; preds = %24
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 16) to i32*)), !dbg !535
  call void asm sideeffect "", ""(), !dbg !535
  br label %28, !dbg !535

; <label>:28                                      ; preds = %24, %27
  %29 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 3) to i8*), !dbg !535, !nosanitize !2
  %30 = add i8 %29, 1, !dbg !535
  store i8 %30, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 3) to i8*), !dbg !535, !nosanitize !2
  %31 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %stream, i8* nonnull getelementptr inbounds ([0 x i8], [0 x i8]* bitcast ({ [47 x i8], [49 x i8] }* @version_etc_copyright to [0 x i8]*), i64 0, i64 0), i8* nonnull getelementptr inbounds ({ [4 x i8], [60 x i8] }, { [4 x i8], [60 x i8] }* @.str.2.39, i32 0, i32 0, i64 0), i32 2017), !dbg !535
  %32 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ({ [203 x i8], [53 x i8] }, { [203 x i8], [53 x i8] }* @.str.3.43, i32 0, i32 0, i64 0), i64 202, i64 1, %struct._IO_FILE* %stream), !dbg !536
  switch i64 %n_authors, label %547 [
    i64 0, label %33
    i64 1, label %34
    i64 2, label %51
    i64 3, label %78
    i64 4, label %115
    i64 5, label %162
    i64 6, label %219
    i64 7, label %286
    i64 8, label %363
    i64 9, label %450
  ], !dbg !537

; <label>:33                                      ; preds = %28
  call void @__asan_handle_no_return(), !dbg !538
  tail call void @abort() #11, !dbg !538
  unreachable, !dbg !538

; <label>:34                                      ; preds = %28
  %35 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 20) to i32*) monotonic, align 4, !dbg !540, !nosanitize !2
  %36 = icmp sge i32 0, %35, !dbg !540
  br i1 %36, label %37, label %38, !dbg !540, !prof !325

; <label>:37                                      ; preds = %34
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 20) to i32*)), !dbg !540
  call void asm sideeffect "", ""(), !dbg !540
  br label %38, !dbg !540

; <label>:38                                      ; preds = %34, %37
  %39 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 4) to i8*), !dbg !540, !nosanitize !2
  %40 = add i8 %39, 1, !dbg !540
  store i8 %40, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 4) to i8*), !dbg !540, !nosanitize !2
  %41 = ptrtoint i8** %authors to i64, !dbg !540
  %42 = lshr i64 %41, 3, !dbg !540
  %43 = add i64 %42, 2147450880, !dbg !540
  %44 = inttoptr i64 %43 to i8*, !dbg !540
  %45 = load i8, i8* %44, !dbg !540
  %46 = icmp ne i8 %45, 0, !dbg !540
  br i1 %46, label %47, label %48, !dbg !540

; <label>:47                                      ; preds = %38
  call void @__asan_report_load8(i64 %41), !dbg !540
  call void asm sideeffect "", ""(), !dbg !540
  unreachable, !dbg !540

; <label>:48                                      ; preds = %38
  %49 = load i8*, i8** %authors, align 8, !dbg !540, !tbaa !345
  %50 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %stream, i8* nonnull getelementptr inbounds ({ [16 x i8], [48 x i8] }, { [16 x i8], [48 x i8] }* @.str.4.47, i32 0, i32 0, i64 0), i8* %49), !dbg !541
  br label %644, !dbg !542

; <label>:51                                      ; preds = %28
  %52 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 24) to i32*) monotonic, align 4, !dbg !543, !nosanitize !2
  %53 = icmp sge i32 0, %52, !dbg !543
  br i1 %53, label %54, label %55, !dbg !543, !prof !325

; <label>:54                                      ; preds = %51
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 24) to i32*)), !dbg !543
  call void asm sideeffect "", ""(), !dbg !543
  br label %55, !dbg !543

; <label>:55                                      ; preds = %51, %54
  %56 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 5) to i8*), !dbg !543, !nosanitize !2
  %57 = add i8 %56, 1, !dbg !543
  store i8 %57, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 5) to i8*), !dbg !543, !nosanitize !2
  %58 = ptrtoint i8** %authors to i64, !dbg !543
  %59 = lshr i64 %58, 3, !dbg !543
  %60 = add i64 %59, 2147450880, !dbg !543
  %61 = inttoptr i64 %60 to i8*, !dbg !543
  %62 = load i8, i8* %61, !dbg !543
  %63 = icmp ne i8 %62, 0, !dbg !543
  br i1 %63, label %64, label %65, !dbg !543

; <label>:64                                      ; preds = %55
  call void @__asan_report_load8(i64 %58), !dbg !543
  call void asm sideeffect "", ""(), !dbg !543
  unreachable, !dbg !543

; <label>:65                                      ; preds = %55
  %66 = load i8*, i8** %authors, align 8, !dbg !543, !tbaa !345
  %67 = getelementptr inbounds i8*, i8** %authors, i64 1, !dbg !544
  %68 = ptrtoint i8** %67 to i64, !dbg !544
  %69 = lshr i64 %68, 3, !dbg !544
  %70 = add i64 %69, 2147450880, !dbg !544
  %71 = inttoptr i64 %70 to i8*, !dbg !544
  %72 = load i8, i8* %71, !dbg !544
  %73 = icmp ne i8 %72, 0, !dbg !544
  br i1 %73, label %74, label %75, !dbg !544

; <label>:74                                      ; preds = %65
  call void @__asan_report_load8(i64 %68), !dbg !544
  call void asm sideeffect "", ""(), !dbg !544
  unreachable, !dbg !544

; <label>:75                                      ; preds = %65
  %76 = load i8*, i8** %67, align 8, !dbg !544, !tbaa !345
  %77 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %stream, i8* nonnull getelementptr inbounds ({ [23 x i8], [41 x i8] }, { [23 x i8], [41 x i8] }* @.str.5.51, i32 0, i32 0, i64 0), i8* %66, i8* %76), !dbg !545
  br label %644, !dbg !546

; <label>:78                                      ; preds = %28
  %79 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 28) to i32*) monotonic, align 4, !dbg !547, !nosanitize !2
  %80 = icmp sge i32 0, %79, !dbg !547
  br i1 %80, label %81, label %82, !dbg !547, !prof !325

; <label>:81                                      ; preds = %78
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 28) to i32*)), !dbg !547
  call void asm sideeffect "", ""(), !dbg !547
  br label %82, !dbg !547

; <label>:82                                      ; preds = %78, %81
  %83 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 6) to i8*), !dbg !547, !nosanitize !2
  %84 = add i8 %83, 1, !dbg !547
  store i8 %84, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 6) to i8*), !dbg !547, !nosanitize !2
  %85 = ptrtoint i8** %authors to i64, !dbg !547
  %86 = lshr i64 %85, 3, !dbg !547
  %87 = add i64 %86, 2147450880, !dbg !547
  %88 = inttoptr i64 %87 to i8*, !dbg !547
  %89 = load i8, i8* %88, !dbg !547
  %90 = icmp ne i8 %89, 0, !dbg !547
  br i1 %90, label %91, label %92, !dbg !547

; <label>:91                                      ; preds = %82
  call void @__asan_report_load8(i64 %85), !dbg !547
  call void asm sideeffect "", ""(), !dbg !547
  unreachable, !dbg !547

; <label>:92                                      ; preds = %82
  %93 = load i8*, i8** %authors, align 8, !dbg !547, !tbaa !345
  %94 = getelementptr inbounds i8*, i8** %authors, i64 1, !dbg !548
  %95 = ptrtoint i8** %94 to i64, !dbg !548
  %96 = lshr i64 %95, 3, !dbg !548
  %97 = add i64 %96, 2147450880, !dbg !548
  %98 = inttoptr i64 %97 to i8*, !dbg !548
  %99 = load i8, i8* %98, !dbg !548
  %100 = icmp ne i8 %99, 0, !dbg !548
  br i1 %100, label %101, label %102, !dbg !548

; <label>:101                                     ; preds = %92
  call void @__asan_report_load8(i64 %95), !dbg !548
  call void asm sideeffect "", ""(), !dbg !548
  unreachable, !dbg !548

; <label>:102                                     ; preds = %92
  %103 = load i8*, i8** %94, align 8, !dbg !548, !tbaa !345
  %104 = getelementptr inbounds i8*, i8** %authors, i64 2, !dbg !549
  %105 = ptrtoint i8** %104 to i64, !dbg !549
  %106 = lshr i64 %105, 3, !dbg !549
  %107 = add i64 %106, 2147450880, !dbg !549
  %108 = inttoptr i64 %107 to i8*, !dbg !549
  %109 = load i8, i8* %108, !dbg !549
  %110 = icmp ne i8 %109, 0, !dbg !549
  br i1 %110, label %111, label %112, !dbg !549

; <label>:111                                     ; preds = %102
  call void @__asan_report_load8(i64 %105), !dbg !549
  call void asm sideeffect "", ""(), !dbg !549
  unreachable, !dbg !549

; <label>:112                                     ; preds = %102
  %113 = load i8*, i8** %104, align 8, !dbg !549, !tbaa !345
  %114 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %stream, i8* nonnull getelementptr inbounds ({ [28 x i8], [36 x i8] }, { [28 x i8], [36 x i8] }* @.str.6.55, i32 0, i32 0, i64 0), i8* %93, i8* %103, i8* %113), !dbg !550
  br label %644, !dbg !551

; <label>:115                                     ; preds = %28
  %116 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 32) to i32*) monotonic, align 4, !dbg !552, !nosanitize !2
  %117 = icmp sge i32 0, %116, !dbg !552
  br i1 %117, label %118, label %119, !dbg !552, !prof !325

; <label>:118                                     ; preds = %115
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 32) to i32*)), !dbg !552
  call void asm sideeffect "", ""(), !dbg !552
  br label %119, !dbg !552

; <label>:119                                     ; preds = %115, %118
  %120 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 7) to i8*), !dbg !552, !nosanitize !2
  %121 = add i8 %120, 1, !dbg !552
  store i8 %121, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 7) to i8*), !dbg !552, !nosanitize !2
  %122 = ptrtoint i8** %authors to i64, !dbg !552
  %123 = lshr i64 %122, 3, !dbg !552
  %124 = add i64 %123, 2147450880, !dbg !552
  %125 = inttoptr i64 %124 to i8*, !dbg !552
  %126 = load i8, i8* %125, !dbg !552
  %127 = icmp ne i8 %126, 0, !dbg !552
  br i1 %127, label %128, label %129, !dbg !552

; <label>:128                                     ; preds = %119
  call void @__asan_report_load8(i64 %122), !dbg !552
  call void asm sideeffect "", ""(), !dbg !552
  unreachable, !dbg !552

; <label>:129                                     ; preds = %119
  %130 = load i8*, i8** %authors, align 8, !dbg !552, !tbaa !345
  %131 = getelementptr inbounds i8*, i8** %authors, i64 1, !dbg !553
  %132 = ptrtoint i8** %131 to i64, !dbg !553
  %133 = lshr i64 %132, 3, !dbg !553
  %134 = add i64 %133, 2147450880, !dbg !553
  %135 = inttoptr i64 %134 to i8*, !dbg !553
  %136 = load i8, i8* %135, !dbg !553
  %137 = icmp ne i8 %136, 0, !dbg !553
  br i1 %137, label %138, label %139, !dbg !553

; <label>:138                                     ; preds = %129
  call void @__asan_report_load8(i64 %132), !dbg !553
  call void asm sideeffect "", ""(), !dbg !553
  unreachable, !dbg !553

; <label>:139                                     ; preds = %129
  %140 = load i8*, i8** %131, align 8, !dbg !553, !tbaa !345
  %141 = getelementptr inbounds i8*, i8** %authors, i64 2, !dbg !554
  %142 = ptrtoint i8** %141 to i64, !dbg !554
  %143 = lshr i64 %142, 3, !dbg !554
  %144 = add i64 %143, 2147450880, !dbg !554
  %145 = inttoptr i64 %144 to i8*, !dbg !554
  %146 = load i8, i8* %145, !dbg !554
  %147 = icmp ne i8 %146, 0, !dbg !554
  br i1 %147, label %148, label %149, !dbg !554

; <label>:148                                     ; preds = %139
  call void @__asan_report_load8(i64 %142), !dbg !554
  call void asm sideeffect "", ""(), !dbg !554
  unreachable, !dbg !554

; <label>:149                                     ; preds = %139
  %150 = load i8*, i8** %141, align 8, !dbg !554, !tbaa !345
  %151 = getelementptr inbounds i8*, i8** %authors, i64 3, !dbg !555
  %152 = ptrtoint i8** %151 to i64, !dbg !555
  %153 = lshr i64 %152, 3, !dbg !555
  %154 = add i64 %153, 2147450880, !dbg !555
  %155 = inttoptr i64 %154 to i8*, !dbg !555
  %156 = load i8, i8* %155, !dbg !555
  %157 = icmp ne i8 %156, 0, !dbg !555
  br i1 %157, label %158, label %159, !dbg !555

; <label>:158                                     ; preds = %149
  call void @__asan_report_load8(i64 %152), !dbg !555
  call void asm sideeffect "", ""(), !dbg !555
  unreachable, !dbg !555

; <label>:159                                     ; preds = %149
  %160 = load i8*, i8** %151, align 8, !dbg !555, !tbaa !345
  %161 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %stream, i8* nonnull getelementptr inbounds ({ [32 x i8], [32 x i8] }, { [32 x i8], [32 x i8] }* @.str.7.59, i32 0, i32 0, i64 0), i8* %130, i8* %140, i8* %150, i8* %160), !dbg !556
  br label %644, !dbg !557

; <label>:162                                     ; preds = %28
  %163 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 36) to i32*) monotonic, align 4, !dbg !558, !nosanitize !2
  %164 = icmp sge i32 0, %163, !dbg !558
  br i1 %164, label %165, label %166, !dbg !558, !prof !325

; <label>:165                                     ; preds = %162
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 36) to i32*)), !dbg !558
  call void asm sideeffect "", ""(), !dbg !558
  br label %166, !dbg !558

; <label>:166                                     ; preds = %162, %165
  %167 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 8) to i8*), !dbg !558, !nosanitize !2
  %168 = add i8 %167, 1, !dbg !558
  store i8 %168, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 8) to i8*), !dbg !558, !nosanitize !2
  %169 = ptrtoint i8** %authors to i64, !dbg !558
  %170 = lshr i64 %169, 3, !dbg !558
  %171 = add i64 %170, 2147450880, !dbg !558
  %172 = inttoptr i64 %171 to i8*, !dbg !558
  %173 = load i8, i8* %172, !dbg !558
  %174 = icmp ne i8 %173, 0, !dbg !558
  br i1 %174, label %175, label %176, !dbg !558

; <label>:175                                     ; preds = %166
  call void @__asan_report_load8(i64 %169), !dbg !558
  call void asm sideeffect "", ""(), !dbg !558
  unreachable, !dbg !558

; <label>:176                                     ; preds = %166
  %177 = load i8*, i8** %authors, align 8, !dbg !558, !tbaa !345
  %178 = getelementptr inbounds i8*, i8** %authors, i64 1, !dbg !559
  %179 = ptrtoint i8** %178 to i64, !dbg !559
  %180 = lshr i64 %179, 3, !dbg !559
  %181 = add i64 %180, 2147450880, !dbg !559
  %182 = inttoptr i64 %181 to i8*, !dbg !559
  %183 = load i8, i8* %182, !dbg !559
  %184 = icmp ne i8 %183, 0, !dbg !559
  br i1 %184, label %185, label %186, !dbg !559

; <label>:185                                     ; preds = %176
  call void @__asan_report_load8(i64 %179), !dbg !559
  call void asm sideeffect "", ""(), !dbg !559
  unreachable, !dbg !559

; <label>:186                                     ; preds = %176
  %187 = load i8*, i8** %178, align 8, !dbg !559, !tbaa !345
  %188 = getelementptr inbounds i8*, i8** %authors, i64 2, !dbg !560
  %189 = ptrtoint i8** %188 to i64, !dbg !560
  %190 = lshr i64 %189, 3, !dbg !560
  %191 = add i64 %190, 2147450880, !dbg !560
  %192 = inttoptr i64 %191 to i8*, !dbg !560
  %193 = load i8, i8* %192, !dbg !560
  %194 = icmp ne i8 %193, 0, !dbg !560
  br i1 %194, label %195, label %196, !dbg !560

; <label>:195                                     ; preds = %186
  call void @__asan_report_load8(i64 %189), !dbg !560
  call void asm sideeffect "", ""(), !dbg !560
  unreachable, !dbg !560

; <label>:196                                     ; preds = %186
  %197 = load i8*, i8** %188, align 8, !dbg !560, !tbaa !345
  %198 = getelementptr inbounds i8*, i8** %authors, i64 3, !dbg !561
  %199 = ptrtoint i8** %198 to i64, !dbg !561
  %200 = lshr i64 %199, 3, !dbg !561
  %201 = add i64 %200, 2147450880, !dbg !561
  %202 = inttoptr i64 %201 to i8*, !dbg !561
  %203 = load i8, i8* %202, !dbg !561
  %204 = icmp ne i8 %203, 0, !dbg !561
  br i1 %204, label %205, label %206, !dbg !561

; <label>:205                                     ; preds = %196
  call void @__asan_report_load8(i64 %199), !dbg !561
  call void asm sideeffect "", ""(), !dbg !561
  unreachable, !dbg !561

; <label>:206                                     ; preds = %196
  %207 = load i8*, i8** %198, align 8, !dbg !561, !tbaa !345
  %208 = getelementptr inbounds i8*, i8** %authors, i64 4, !dbg !562
  %209 = ptrtoint i8** %208 to i64, !dbg !562
  %210 = lshr i64 %209, 3, !dbg !562
  %211 = add i64 %210, 2147450880, !dbg !562
  %212 = inttoptr i64 %211 to i8*, !dbg !562
  %213 = load i8, i8* %212, !dbg !562
  %214 = icmp ne i8 %213, 0, !dbg !562
  br i1 %214, label %215, label %216, !dbg !562

; <label>:215                                     ; preds = %206
  call void @__asan_report_load8(i64 %209), !dbg !562
  call void asm sideeffect "", ""(), !dbg !562
  unreachable, !dbg !562

; <label>:216                                     ; preds = %206
  %217 = load i8*, i8** %208, align 8, !dbg !562, !tbaa !345
  %218 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %stream, i8* nonnull getelementptr inbounds ({ [36 x i8], [60 x i8] }, { [36 x i8], [60 x i8] }* @.str.8.63, i32 0, i32 0, i64 0), i8* %177, i8* %187, i8* %197, i8* %207, i8* %217), !dbg !563
  br label %644, !dbg !564

; <label>:219                                     ; preds = %28
  %220 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 40) to i32*) monotonic, align 4, !dbg !565, !nosanitize !2
  %221 = icmp sge i32 0, %220, !dbg !565
  br i1 %221, label %222, label %223, !dbg !565, !prof !325

; <label>:222                                     ; preds = %219
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 40) to i32*)), !dbg !565
  call void asm sideeffect "", ""(), !dbg !565
  br label %223, !dbg !565

; <label>:223                                     ; preds = %219, %222
  %224 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 9) to i8*), !dbg !565, !nosanitize !2
  %225 = add i8 %224, 1, !dbg !565
  store i8 %225, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 9) to i8*), !dbg !565, !nosanitize !2
  %226 = ptrtoint i8** %authors to i64, !dbg !565
  %227 = lshr i64 %226, 3, !dbg !565
  %228 = add i64 %227, 2147450880, !dbg !565
  %229 = inttoptr i64 %228 to i8*, !dbg !565
  %230 = load i8, i8* %229, !dbg !565
  %231 = icmp ne i8 %230, 0, !dbg !565
  br i1 %231, label %232, label %233, !dbg !565

; <label>:232                                     ; preds = %223
  call void @__asan_report_load8(i64 %226), !dbg !565
  call void asm sideeffect "", ""(), !dbg !565
  unreachable, !dbg !565

; <label>:233                                     ; preds = %223
  %234 = load i8*, i8** %authors, align 8, !dbg !565, !tbaa !345
  %235 = getelementptr inbounds i8*, i8** %authors, i64 1, !dbg !566
  %236 = ptrtoint i8** %235 to i64, !dbg !566
  %237 = lshr i64 %236, 3, !dbg !566
  %238 = add i64 %237, 2147450880, !dbg !566
  %239 = inttoptr i64 %238 to i8*, !dbg !566
  %240 = load i8, i8* %239, !dbg !566
  %241 = icmp ne i8 %240, 0, !dbg !566
  br i1 %241, label %242, label %243, !dbg !566

; <label>:242                                     ; preds = %233
  call void @__asan_report_load8(i64 %236), !dbg !566
  call void asm sideeffect "", ""(), !dbg !566
  unreachable, !dbg !566

; <label>:243                                     ; preds = %233
  %244 = load i8*, i8** %235, align 8, !dbg !566, !tbaa !345
  %245 = getelementptr inbounds i8*, i8** %authors, i64 2, !dbg !567
  %246 = ptrtoint i8** %245 to i64, !dbg !567
  %247 = lshr i64 %246, 3, !dbg !567
  %248 = add i64 %247, 2147450880, !dbg !567
  %249 = inttoptr i64 %248 to i8*, !dbg !567
  %250 = load i8, i8* %249, !dbg !567
  %251 = icmp ne i8 %250, 0, !dbg !567
  br i1 %251, label %252, label %253, !dbg !567

; <label>:252                                     ; preds = %243
  call void @__asan_report_load8(i64 %246), !dbg !567
  call void asm sideeffect "", ""(), !dbg !567
  unreachable, !dbg !567

; <label>:253                                     ; preds = %243
  %254 = load i8*, i8** %245, align 8, !dbg !567, !tbaa !345
  %255 = getelementptr inbounds i8*, i8** %authors, i64 3, !dbg !568
  %256 = ptrtoint i8** %255 to i64, !dbg !568
  %257 = lshr i64 %256, 3, !dbg !568
  %258 = add i64 %257, 2147450880, !dbg !568
  %259 = inttoptr i64 %258 to i8*, !dbg !568
  %260 = load i8, i8* %259, !dbg !568
  %261 = icmp ne i8 %260, 0, !dbg !568
  br i1 %261, label %262, label %263, !dbg !568

; <label>:262                                     ; preds = %253
  call void @__asan_report_load8(i64 %256), !dbg !568
  call void asm sideeffect "", ""(), !dbg !568
  unreachable, !dbg !568

; <label>:263                                     ; preds = %253
  %264 = load i8*, i8** %255, align 8, !dbg !568, !tbaa !345
  %265 = getelementptr inbounds i8*, i8** %authors, i64 4, !dbg !569
  %266 = ptrtoint i8** %265 to i64, !dbg !569
  %267 = lshr i64 %266, 3, !dbg !569
  %268 = add i64 %267, 2147450880, !dbg !569
  %269 = inttoptr i64 %268 to i8*, !dbg !569
  %270 = load i8, i8* %269, !dbg !569
  %271 = icmp ne i8 %270, 0, !dbg !569
  br i1 %271, label %272, label %273, !dbg !569

; <label>:272                                     ; preds = %263
  call void @__asan_report_load8(i64 %266), !dbg !569
  call void asm sideeffect "", ""(), !dbg !569
  unreachable, !dbg !569

; <label>:273                                     ; preds = %263
  %274 = load i8*, i8** %265, align 8, !dbg !569, !tbaa !345
  %275 = getelementptr inbounds i8*, i8** %authors, i64 5, !dbg !570
  %276 = ptrtoint i8** %275 to i64, !dbg !570
  %277 = lshr i64 %276, 3, !dbg !570
  %278 = add i64 %277, 2147450880, !dbg !570
  %279 = inttoptr i64 %278 to i8*, !dbg !570
  %280 = load i8, i8* %279, !dbg !570
  %281 = icmp ne i8 %280, 0, !dbg !570
  br i1 %281, label %282, label %283, !dbg !570

; <label>:282                                     ; preds = %273
  call void @__asan_report_load8(i64 %276), !dbg !570
  call void asm sideeffect "", ""(), !dbg !570
  unreachable, !dbg !570

; <label>:283                                     ; preds = %273
  %284 = load i8*, i8** %275, align 8, !dbg !570, !tbaa !345
  %285 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %stream, i8* nonnull getelementptr inbounds ({ [40 x i8], [56 x i8] }, { [40 x i8], [56 x i8] }* @.str.9.67, i32 0, i32 0, i64 0), i8* %234, i8* %244, i8* %254, i8* %264, i8* %274, i8* %284), !dbg !571
  br label %644, !dbg !572

; <label>:286                                     ; preds = %28
  %287 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 44) to i32*) monotonic, align 4, !dbg !573, !nosanitize !2
  %288 = icmp sge i32 0, %287, !dbg !573
  br i1 %288, label %289, label %290, !dbg !573, !prof !325

; <label>:289                                     ; preds = %286
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 44) to i32*)), !dbg !573
  call void asm sideeffect "", ""(), !dbg !573
  br label %290, !dbg !573

; <label>:290                                     ; preds = %286, %289
  %291 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 10) to i8*), !dbg !573, !nosanitize !2
  %292 = add i8 %291, 1, !dbg !573
  store i8 %292, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 10) to i8*), !dbg !573, !nosanitize !2
  %293 = ptrtoint i8** %authors to i64, !dbg !573
  %294 = lshr i64 %293, 3, !dbg !573
  %295 = add i64 %294, 2147450880, !dbg !573
  %296 = inttoptr i64 %295 to i8*, !dbg !573
  %297 = load i8, i8* %296, !dbg !573
  %298 = icmp ne i8 %297, 0, !dbg !573
  br i1 %298, label %299, label %300, !dbg !573

; <label>:299                                     ; preds = %290
  call void @__asan_report_load8(i64 %293), !dbg !573
  call void asm sideeffect "", ""(), !dbg !573
  unreachable, !dbg !573

; <label>:300                                     ; preds = %290
  %301 = load i8*, i8** %authors, align 8, !dbg !573, !tbaa !345
  %302 = getelementptr inbounds i8*, i8** %authors, i64 1, !dbg !574
  %303 = ptrtoint i8** %302 to i64, !dbg !574
  %304 = lshr i64 %303, 3, !dbg !574
  %305 = add i64 %304, 2147450880, !dbg !574
  %306 = inttoptr i64 %305 to i8*, !dbg !574
  %307 = load i8, i8* %306, !dbg !574
  %308 = icmp ne i8 %307, 0, !dbg !574
  br i1 %308, label %309, label %310, !dbg !574

; <label>:309                                     ; preds = %300
  call void @__asan_report_load8(i64 %303), !dbg !574
  call void asm sideeffect "", ""(), !dbg !574
  unreachable, !dbg !574

; <label>:310                                     ; preds = %300
  %311 = load i8*, i8** %302, align 8, !dbg !574, !tbaa !345
  %312 = getelementptr inbounds i8*, i8** %authors, i64 2, !dbg !575
  %313 = ptrtoint i8** %312 to i64, !dbg !575
  %314 = lshr i64 %313, 3, !dbg !575
  %315 = add i64 %314, 2147450880, !dbg !575
  %316 = inttoptr i64 %315 to i8*, !dbg !575
  %317 = load i8, i8* %316, !dbg !575
  %318 = icmp ne i8 %317, 0, !dbg !575
  br i1 %318, label %319, label %320, !dbg !575

; <label>:319                                     ; preds = %310
  call void @__asan_report_load8(i64 %313), !dbg !575
  call void asm sideeffect "", ""(), !dbg !575
  unreachable, !dbg !575

; <label>:320                                     ; preds = %310
  %321 = load i8*, i8** %312, align 8, !dbg !575, !tbaa !345
  %322 = getelementptr inbounds i8*, i8** %authors, i64 3, !dbg !576
  %323 = ptrtoint i8** %322 to i64, !dbg !576
  %324 = lshr i64 %323, 3, !dbg !576
  %325 = add i64 %324, 2147450880, !dbg !576
  %326 = inttoptr i64 %325 to i8*, !dbg !576
  %327 = load i8, i8* %326, !dbg !576
  %328 = icmp ne i8 %327, 0, !dbg !576
  br i1 %328, label %329, label %330, !dbg !576

; <label>:329                                     ; preds = %320
  call void @__asan_report_load8(i64 %323), !dbg !576
  call void asm sideeffect "", ""(), !dbg !576
  unreachable, !dbg !576

; <label>:330                                     ; preds = %320
  %331 = load i8*, i8** %322, align 8, !dbg !576, !tbaa !345
  %332 = getelementptr inbounds i8*, i8** %authors, i64 4, !dbg !577
  %333 = ptrtoint i8** %332 to i64, !dbg !577
  %334 = lshr i64 %333, 3, !dbg !577
  %335 = add i64 %334, 2147450880, !dbg !577
  %336 = inttoptr i64 %335 to i8*, !dbg !577
  %337 = load i8, i8* %336, !dbg !577
  %338 = icmp ne i8 %337, 0, !dbg !577
  br i1 %338, label %339, label %340, !dbg !577

; <label>:339                                     ; preds = %330
  call void @__asan_report_load8(i64 %333), !dbg !577
  call void asm sideeffect "", ""(), !dbg !577
  unreachable, !dbg !577

; <label>:340                                     ; preds = %330
  %341 = load i8*, i8** %332, align 8, !dbg !577, !tbaa !345
  %342 = getelementptr inbounds i8*, i8** %authors, i64 5, !dbg !578
  %343 = ptrtoint i8** %342 to i64, !dbg !578
  %344 = lshr i64 %343, 3, !dbg !578
  %345 = add i64 %344, 2147450880, !dbg !578
  %346 = inttoptr i64 %345 to i8*, !dbg !578
  %347 = load i8, i8* %346, !dbg !578
  %348 = icmp ne i8 %347, 0, !dbg !578
  br i1 %348, label %349, label %350, !dbg !578

; <label>:349                                     ; preds = %340
  call void @__asan_report_load8(i64 %343), !dbg !578
  call void asm sideeffect "", ""(), !dbg !578
  unreachable, !dbg !578

; <label>:350                                     ; preds = %340
  %351 = load i8*, i8** %342, align 8, !dbg !578, !tbaa !345
  %352 = getelementptr inbounds i8*, i8** %authors, i64 6, !dbg !579
  %353 = ptrtoint i8** %352 to i64, !dbg !579
  %354 = lshr i64 %353, 3, !dbg !579
  %355 = add i64 %354, 2147450880, !dbg !579
  %356 = inttoptr i64 %355 to i8*, !dbg !579
  %357 = load i8, i8* %356, !dbg !579
  %358 = icmp ne i8 %357, 0, !dbg !579
  br i1 %358, label %359, label %360, !dbg !579

; <label>:359                                     ; preds = %350
  call void @__asan_report_load8(i64 %353), !dbg !579
  call void asm sideeffect "", ""(), !dbg !579
  unreachable, !dbg !579

; <label>:360                                     ; preds = %350
  %361 = load i8*, i8** %352, align 8, !dbg !579, !tbaa !345
  %362 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %stream, i8* nonnull getelementptr inbounds ({ [44 x i8], [52 x i8] }, { [44 x i8], [52 x i8] }* @.str.10.71, i32 0, i32 0, i64 0), i8* %301, i8* %311, i8* %321, i8* %331, i8* %341, i8* %351, i8* %361), !dbg !580
  br label %644, !dbg !581

; <label>:363                                     ; preds = %28
  %364 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 48) to i32*) monotonic, align 4, !dbg !582, !nosanitize !2
  %365 = icmp sge i32 0, %364, !dbg !582
  br i1 %365, label %366, label %367, !dbg !582, !prof !325

; <label>:366                                     ; preds = %363
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 48) to i32*)), !dbg !582
  call void asm sideeffect "", ""(), !dbg !582
  br label %367, !dbg !582

; <label>:367                                     ; preds = %363, %366
  %368 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 11) to i8*), !dbg !582, !nosanitize !2
  %369 = add i8 %368, 1, !dbg !582
  store i8 %369, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 11) to i8*), !dbg !582, !nosanitize !2
  %370 = ptrtoint i8** %authors to i64, !dbg !582
  %371 = lshr i64 %370, 3, !dbg !582
  %372 = add i64 %371, 2147450880, !dbg !582
  %373 = inttoptr i64 %372 to i8*, !dbg !582
  %374 = load i8, i8* %373, !dbg !582
  %375 = icmp ne i8 %374, 0, !dbg !582
  br i1 %375, label %376, label %377, !dbg !582

; <label>:376                                     ; preds = %367
  call void @__asan_report_load8(i64 %370), !dbg !582
  call void asm sideeffect "", ""(), !dbg !582
  unreachable, !dbg !582

; <label>:377                                     ; preds = %367
  %378 = load i8*, i8** %authors, align 8, !dbg !582, !tbaa !345
  %379 = getelementptr inbounds i8*, i8** %authors, i64 1, !dbg !583
  %380 = ptrtoint i8** %379 to i64, !dbg !583
  %381 = lshr i64 %380, 3, !dbg !583
  %382 = add i64 %381, 2147450880, !dbg !583
  %383 = inttoptr i64 %382 to i8*, !dbg !583
  %384 = load i8, i8* %383, !dbg !583
  %385 = icmp ne i8 %384, 0, !dbg !583
  br i1 %385, label %386, label %387, !dbg !583

; <label>:386                                     ; preds = %377
  call void @__asan_report_load8(i64 %380), !dbg !583
  call void asm sideeffect "", ""(), !dbg !583
  unreachable, !dbg !583

; <label>:387                                     ; preds = %377
  %388 = load i8*, i8** %379, align 8, !dbg !583, !tbaa !345
  %389 = getelementptr inbounds i8*, i8** %authors, i64 2, !dbg !584
  %390 = ptrtoint i8** %389 to i64, !dbg !584
  %391 = lshr i64 %390, 3, !dbg !584
  %392 = add i64 %391, 2147450880, !dbg !584
  %393 = inttoptr i64 %392 to i8*, !dbg !584
  %394 = load i8, i8* %393, !dbg !584
  %395 = icmp ne i8 %394, 0, !dbg !584
  br i1 %395, label %396, label %397, !dbg !584

; <label>:396                                     ; preds = %387
  call void @__asan_report_load8(i64 %390), !dbg !584
  call void asm sideeffect "", ""(), !dbg !584
  unreachable, !dbg !584

; <label>:397                                     ; preds = %387
  %398 = load i8*, i8** %389, align 8, !dbg !584, !tbaa !345
  %399 = getelementptr inbounds i8*, i8** %authors, i64 3, !dbg !585
  %400 = ptrtoint i8** %399 to i64, !dbg !585
  %401 = lshr i64 %400, 3, !dbg !585
  %402 = add i64 %401, 2147450880, !dbg !585
  %403 = inttoptr i64 %402 to i8*, !dbg !585
  %404 = load i8, i8* %403, !dbg !585
  %405 = icmp ne i8 %404, 0, !dbg !585
  br i1 %405, label %406, label %407, !dbg !585

; <label>:406                                     ; preds = %397
  call void @__asan_report_load8(i64 %400), !dbg !585
  call void asm sideeffect "", ""(), !dbg !585
  unreachable, !dbg !585

; <label>:407                                     ; preds = %397
  %408 = load i8*, i8** %399, align 8, !dbg !585, !tbaa !345
  %409 = getelementptr inbounds i8*, i8** %authors, i64 4, !dbg !586
  %410 = ptrtoint i8** %409 to i64, !dbg !586
  %411 = lshr i64 %410, 3, !dbg !586
  %412 = add i64 %411, 2147450880, !dbg !586
  %413 = inttoptr i64 %412 to i8*, !dbg !586
  %414 = load i8, i8* %413, !dbg !586
  %415 = icmp ne i8 %414, 0, !dbg !586
  br i1 %415, label %416, label %417, !dbg !586

; <label>:416                                     ; preds = %407
  call void @__asan_report_load8(i64 %410), !dbg !586
  call void asm sideeffect "", ""(), !dbg !586
  unreachable, !dbg !586

; <label>:417                                     ; preds = %407
  %418 = load i8*, i8** %409, align 8, !dbg !586, !tbaa !345
  %419 = getelementptr inbounds i8*, i8** %authors, i64 5, !dbg !587
  %420 = ptrtoint i8** %419 to i64, !dbg !587
  %421 = lshr i64 %420, 3, !dbg !587
  %422 = add i64 %421, 2147450880, !dbg !587
  %423 = inttoptr i64 %422 to i8*, !dbg !587
  %424 = load i8, i8* %423, !dbg !587
  %425 = icmp ne i8 %424, 0, !dbg !587
  br i1 %425, label %426, label %427, !dbg !587

; <label>:426                                     ; preds = %417
  call void @__asan_report_load8(i64 %420), !dbg !587
  call void asm sideeffect "", ""(), !dbg !587
  unreachable, !dbg !587

; <label>:427                                     ; preds = %417
  %428 = load i8*, i8** %419, align 8, !dbg !587, !tbaa !345
  %429 = getelementptr inbounds i8*, i8** %authors, i64 6, !dbg !588
  %430 = ptrtoint i8** %429 to i64, !dbg !588
  %431 = lshr i64 %430, 3, !dbg !588
  %432 = add i64 %431, 2147450880, !dbg !588
  %433 = inttoptr i64 %432 to i8*, !dbg !588
  %434 = load i8, i8* %433, !dbg !588
  %435 = icmp ne i8 %434, 0, !dbg !588
  br i1 %435, label %436, label %437, !dbg !588

; <label>:436                                     ; preds = %427
  call void @__asan_report_load8(i64 %430), !dbg !588
  call void asm sideeffect "", ""(), !dbg !588
  unreachable, !dbg !588

; <label>:437                                     ; preds = %427
  %438 = load i8*, i8** %429, align 8, !dbg !588, !tbaa !345
  %439 = getelementptr inbounds i8*, i8** %authors, i64 7, !dbg !589
  %440 = ptrtoint i8** %439 to i64, !dbg !589
  %441 = lshr i64 %440, 3, !dbg !589
  %442 = add i64 %441, 2147450880, !dbg !589
  %443 = inttoptr i64 %442 to i8*, !dbg !589
  %444 = load i8, i8* %443, !dbg !589
  %445 = icmp ne i8 %444, 0, !dbg !589
  br i1 %445, label %446, label %447, !dbg !589

; <label>:446                                     ; preds = %437
  call void @__asan_report_load8(i64 %440), !dbg !589
  call void asm sideeffect "", ""(), !dbg !589
  unreachable, !dbg !589

; <label>:447                                     ; preds = %437
  %448 = load i8*, i8** %439, align 8, !dbg !589, !tbaa !345
  %449 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %stream, i8* nonnull getelementptr inbounds ({ [48 x i8], [48 x i8] }, { [48 x i8], [48 x i8] }* @.str.11.75, i32 0, i32 0, i64 0), i8* %378, i8* %388, i8* %398, i8* %408, i8* %418, i8* %428, i8* %438, i8* %448), !dbg !590
  br label %644, !dbg !591

; <label>:450                                     ; preds = %28
  %451 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 52) to i32*) monotonic, align 4, !dbg !592, !nosanitize !2
  %452 = icmp sge i32 0, %451, !dbg !592
  br i1 %452, label %453, label %454, !dbg !592, !prof !325

; <label>:453                                     ; preds = %450
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 52) to i32*)), !dbg !592
  call void asm sideeffect "", ""(), !dbg !592
  br label %454, !dbg !592

; <label>:454                                     ; preds = %450, %453
  %455 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 12) to i8*), !dbg !592, !nosanitize !2
  %456 = add i8 %455, 1, !dbg !592
  store i8 %456, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 12) to i8*), !dbg !592, !nosanitize !2
  %457 = ptrtoint i8** %authors to i64, !dbg !592
  %458 = lshr i64 %457, 3, !dbg !592
  %459 = add i64 %458, 2147450880, !dbg !592
  %460 = inttoptr i64 %459 to i8*, !dbg !592
  %461 = load i8, i8* %460, !dbg !592
  %462 = icmp ne i8 %461, 0, !dbg !592
  br i1 %462, label %463, label %464, !dbg !592

; <label>:463                                     ; preds = %454
  call void @__asan_report_load8(i64 %457), !dbg !592
  call void asm sideeffect "", ""(), !dbg !592
  unreachable, !dbg !592

; <label>:464                                     ; preds = %454
  %465 = load i8*, i8** %authors, align 8, !dbg !592, !tbaa !345
  %466 = getelementptr inbounds i8*, i8** %authors, i64 1, !dbg !593
  %467 = ptrtoint i8** %466 to i64, !dbg !593
  %468 = lshr i64 %467, 3, !dbg !593
  %469 = add i64 %468, 2147450880, !dbg !593
  %470 = inttoptr i64 %469 to i8*, !dbg !593
  %471 = load i8, i8* %470, !dbg !593
  %472 = icmp ne i8 %471, 0, !dbg !593
  br i1 %472, label %473, label %474, !dbg !593

; <label>:473                                     ; preds = %464
  call void @__asan_report_load8(i64 %467), !dbg !593
  call void asm sideeffect "", ""(), !dbg !593
  unreachable, !dbg !593

; <label>:474                                     ; preds = %464
  %475 = load i8*, i8** %466, align 8, !dbg !593, !tbaa !345
  %476 = getelementptr inbounds i8*, i8** %authors, i64 2, !dbg !594
  %477 = ptrtoint i8** %476 to i64, !dbg !594
  %478 = lshr i64 %477, 3, !dbg !594
  %479 = add i64 %478, 2147450880, !dbg !594
  %480 = inttoptr i64 %479 to i8*, !dbg !594
  %481 = load i8, i8* %480, !dbg !594
  %482 = icmp ne i8 %481, 0, !dbg !594
  br i1 %482, label %483, label %484, !dbg !594

; <label>:483                                     ; preds = %474
  call void @__asan_report_load8(i64 %477), !dbg !594
  call void asm sideeffect "", ""(), !dbg !594
  unreachable, !dbg !594

; <label>:484                                     ; preds = %474
  %485 = load i8*, i8** %476, align 8, !dbg !594, !tbaa !345
  %486 = getelementptr inbounds i8*, i8** %authors, i64 3, !dbg !595
  %487 = ptrtoint i8** %486 to i64, !dbg !595
  %488 = lshr i64 %487, 3, !dbg !595
  %489 = add i64 %488, 2147450880, !dbg !595
  %490 = inttoptr i64 %489 to i8*, !dbg !595
  %491 = load i8, i8* %490, !dbg !595
  %492 = icmp ne i8 %491, 0, !dbg !595
  br i1 %492, label %493, label %494, !dbg !595

; <label>:493                                     ; preds = %484
  call void @__asan_report_load8(i64 %487), !dbg !595
  call void asm sideeffect "", ""(), !dbg !595
  unreachable, !dbg !595

; <label>:494                                     ; preds = %484
  %495 = load i8*, i8** %486, align 8, !dbg !595, !tbaa !345
  %496 = getelementptr inbounds i8*, i8** %authors, i64 4, !dbg !596
  %497 = ptrtoint i8** %496 to i64, !dbg !596
  %498 = lshr i64 %497, 3, !dbg !596
  %499 = add i64 %498, 2147450880, !dbg !596
  %500 = inttoptr i64 %499 to i8*, !dbg !596
  %501 = load i8, i8* %500, !dbg !596
  %502 = icmp ne i8 %501, 0, !dbg !596
  br i1 %502, label %503, label %504, !dbg !596

; <label>:503                                     ; preds = %494
  call void @__asan_report_load8(i64 %497), !dbg !596
  call void asm sideeffect "", ""(), !dbg !596
  unreachable, !dbg !596

; <label>:504                                     ; preds = %494
  %505 = load i8*, i8** %496, align 8, !dbg !596, !tbaa !345
  %506 = getelementptr inbounds i8*, i8** %authors, i64 5, !dbg !597
  %507 = ptrtoint i8** %506 to i64, !dbg !597
  %508 = lshr i64 %507, 3, !dbg !597
  %509 = add i64 %508, 2147450880, !dbg !597
  %510 = inttoptr i64 %509 to i8*, !dbg !597
  %511 = load i8, i8* %510, !dbg !597
  %512 = icmp ne i8 %511, 0, !dbg !597
  br i1 %512, label %513, label %514, !dbg !597

; <label>:513                                     ; preds = %504
  call void @__asan_report_load8(i64 %507), !dbg !597
  call void asm sideeffect "", ""(), !dbg !597
  unreachable, !dbg !597

; <label>:514                                     ; preds = %504
  %515 = load i8*, i8** %506, align 8, !dbg !597, !tbaa !345
  %516 = getelementptr inbounds i8*, i8** %authors, i64 6, !dbg !598
  %517 = ptrtoint i8** %516 to i64, !dbg !598
  %518 = lshr i64 %517, 3, !dbg !598
  %519 = add i64 %518, 2147450880, !dbg !598
  %520 = inttoptr i64 %519 to i8*, !dbg !598
  %521 = load i8, i8* %520, !dbg !598
  %522 = icmp ne i8 %521, 0, !dbg !598
  br i1 %522, label %523, label %524, !dbg !598

; <label>:523                                     ; preds = %514
  call void @__asan_report_load8(i64 %517), !dbg !598
  call void asm sideeffect "", ""(), !dbg !598
  unreachable, !dbg !598

; <label>:524                                     ; preds = %514
  %525 = load i8*, i8** %516, align 8, !dbg !598, !tbaa !345
  %526 = getelementptr inbounds i8*, i8** %authors, i64 7, !dbg !599
  %527 = ptrtoint i8** %526 to i64, !dbg !599
  %528 = lshr i64 %527, 3, !dbg !599
  %529 = add i64 %528, 2147450880, !dbg !599
  %530 = inttoptr i64 %529 to i8*, !dbg !599
  %531 = load i8, i8* %530, !dbg !599
  %532 = icmp ne i8 %531, 0, !dbg !599
  br i1 %532, label %533, label %534, !dbg !599

; <label>:533                                     ; preds = %524
  call void @__asan_report_load8(i64 %527), !dbg !599
  call void asm sideeffect "", ""(), !dbg !599
  unreachable, !dbg !599

; <label>:534                                     ; preds = %524
  %535 = load i8*, i8** %526, align 8, !dbg !599, !tbaa !345
  %536 = getelementptr inbounds i8*, i8** %authors, i64 8, !dbg !600
  %537 = ptrtoint i8** %536 to i64, !dbg !600
  %538 = lshr i64 %537, 3, !dbg !600
  %539 = add i64 %538, 2147450880, !dbg !600
  %540 = inttoptr i64 %539 to i8*, !dbg !600
  %541 = load i8, i8* %540, !dbg !600
  %542 = icmp ne i8 %541, 0, !dbg !600
  br i1 %542, label %543, label %544, !dbg !600

; <label>:543                                     ; preds = %534
  call void @__asan_report_load8(i64 %537), !dbg !600
  call void asm sideeffect "", ""(), !dbg !600
  unreachable, !dbg !600

; <label>:544                                     ; preds = %534
  %545 = load i8*, i8** %536, align 8, !dbg !600, !tbaa !345
  %546 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %stream, i8* nonnull getelementptr inbounds ({ [52 x i8], [44 x i8] }, { [52 x i8], [44 x i8] }* @.str.12.79, i32 0, i32 0, i64 0), i8* %465, i8* %475, i8* %485, i8* %495, i8* %505, i8* %515, i8* %525, i8* %535, i8* %545), !dbg !601
  br label %644, !dbg !602

; <label>:547                                     ; preds = %28
  %548 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 56) to i32*) monotonic, align 4, !dbg !603, !nosanitize !2
  %549 = icmp sge i32 0, %548, !dbg !603
  br i1 %549, label %550, label %551, !dbg !603, !prof !325

; <label>:550                                     ; preds = %547
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 56) to i32*)), !dbg !603
  call void asm sideeffect "", ""(), !dbg !603
  br label %551, !dbg !603

; <label>:551                                     ; preds = %547, %550
  %552 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 13) to i8*), !dbg !603, !nosanitize !2
  %553 = add i8 %552, 1, !dbg !603
  store i8 %553, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 13) to i8*), !dbg !603, !nosanitize !2
  %554 = ptrtoint i8** %authors to i64, !dbg !603
  %555 = lshr i64 %554, 3, !dbg !603
  %556 = add i64 %555, 2147450880, !dbg !603
  %557 = inttoptr i64 %556 to i8*, !dbg !603
  %558 = load i8, i8* %557, !dbg !603
  %559 = icmp ne i8 %558, 0, !dbg !603
  br i1 %559, label %560, label %561, !dbg !603

; <label>:560                                     ; preds = %551
  call void @__asan_report_load8(i64 %554), !dbg !603
  call void asm sideeffect "", ""(), !dbg !603
  unreachable, !dbg !603

; <label>:561                                     ; preds = %551
  %562 = load i8*, i8** %authors, align 8, !dbg !603, !tbaa !345
  %563 = getelementptr inbounds i8*, i8** %authors, i64 1, !dbg !604
  %564 = ptrtoint i8** %563 to i64, !dbg !604
  %565 = lshr i64 %564, 3, !dbg !604
  %566 = add i64 %565, 2147450880, !dbg !604
  %567 = inttoptr i64 %566 to i8*, !dbg !604
  %568 = load i8, i8* %567, !dbg !604
  %569 = icmp ne i8 %568, 0, !dbg !604
  br i1 %569, label %570, label %571, !dbg !604

; <label>:570                                     ; preds = %561
  call void @__asan_report_load8(i64 %564), !dbg !604
  call void asm sideeffect "", ""(), !dbg !604
  unreachable, !dbg !604

; <label>:571                                     ; preds = %561
  %572 = load i8*, i8** %563, align 8, !dbg !604, !tbaa !345
  %573 = getelementptr inbounds i8*, i8** %authors, i64 2, !dbg !605
  %574 = ptrtoint i8** %573 to i64, !dbg !605
  %575 = lshr i64 %574, 3, !dbg !605
  %576 = add i64 %575, 2147450880, !dbg !605
  %577 = inttoptr i64 %576 to i8*, !dbg !605
  %578 = load i8, i8* %577, !dbg !605
  %579 = icmp ne i8 %578, 0, !dbg !605
  br i1 %579, label %580, label %581, !dbg !605

; <label>:580                                     ; preds = %571
  call void @__asan_report_load8(i64 %574), !dbg !605
  call void asm sideeffect "", ""(), !dbg !605
  unreachable, !dbg !605

; <label>:581                                     ; preds = %571
  %582 = load i8*, i8** %573, align 8, !dbg !605, !tbaa !345
  %583 = getelementptr inbounds i8*, i8** %authors, i64 3, !dbg !606
  %584 = ptrtoint i8** %583 to i64, !dbg !606
  %585 = lshr i64 %584, 3, !dbg !606
  %586 = add i64 %585, 2147450880, !dbg !606
  %587 = inttoptr i64 %586 to i8*, !dbg !606
  %588 = load i8, i8* %587, !dbg !606
  %589 = icmp ne i8 %588, 0, !dbg !606
  br i1 %589, label %590, label %591, !dbg !606

; <label>:590                                     ; preds = %581
  call void @__asan_report_load8(i64 %584), !dbg !606
  call void asm sideeffect "", ""(), !dbg !606
  unreachable, !dbg !606

; <label>:591                                     ; preds = %581
  %592 = load i8*, i8** %583, align 8, !dbg !606, !tbaa !345
  %593 = getelementptr inbounds i8*, i8** %authors, i64 4, !dbg !607
  %594 = ptrtoint i8** %593 to i64, !dbg !607
  %595 = lshr i64 %594, 3, !dbg !607
  %596 = add i64 %595, 2147450880, !dbg !607
  %597 = inttoptr i64 %596 to i8*, !dbg !607
  %598 = load i8, i8* %597, !dbg !607
  %599 = icmp ne i8 %598, 0, !dbg !607
  br i1 %599, label %600, label %601, !dbg !607

; <label>:600                                     ; preds = %591
  call void @__asan_report_load8(i64 %594), !dbg !607
  call void asm sideeffect "", ""(), !dbg !607
  unreachable, !dbg !607

; <label>:601                                     ; preds = %591
  %602 = load i8*, i8** %593, align 8, !dbg !607, !tbaa !345
  %603 = getelementptr inbounds i8*, i8** %authors, i64 5, !dbg !608
  %604 = ptrtoint i8** %603 to i64, !dbg !608
  %605 = lshr i64 %604, 3, !dbg !608
  %606 = add i64 %605, 2147450880, !dbg !608
  %607 = inttoptr i64 %606 to i8*, !dbg !608
  %608 = load i8, i8* %607, !dbg !608
  %609 = icmp ne i8 %608, 0, !dbg !608
  br i1 %609, label %610, label %611, !dbg !608

; <label>:610                                     ; preds = %601
  call void @__asan_report_load8(i64 %604), !dbg !608
  call void asm sideeffect "", ""(), !dbg !608
  unreachable, !dbg !608

; <label>:611                                     ; preds = %601
  %612 = load i8*, i8** %603, align 8, !dbg !608, !tbaa !345
  %613 = getelementptr inbounds i8*, i8** %authors, i64 6, !dbg !609
  %614 = ptrtoint i8** %613 to i64, !dbg !609
  %615 = lshr i64 %614, 3, !dbg !609
  %616 = add i64 %615, 2147450880, !dbg !609
  %617 = inttoptr i64 %616 to i8*, !dbg !609
  %618 = load i8, i8* %617, !dbg !609
  %619 = icmp ne i8 %618, 0, !dbg !609
  br i1 %619, label %620, label %621, !dbg !609

; <label>:620                                     ; preds = %611
  call void @__asan_report_load8(i64 %614), !dbg !609
  call void asm sideeffect "", ""(), !dbg !609
  unreachable, !dbg !609

; <label>:621                                     ; preds = %611
  %622 = load i8*, i8** %613, align 8, !dbg !609, !tbaa !345
  %623 = getelementptr inbounds i8*, i8** %authors, i64 7, !dbg !610
  %624 = ptrtoint i8** %623 to i64, !dbg !610
  %625 = lshr i64 %624, 3, !dbg !610
  %626 = add i64 %625, 2147450880, !dbg !610
  %627 = inttoptr i64 %626 to i8*, !dbg !610
  %628 = load i8, i8* %627, !dbg !610
  %629 = icmp ne i8 %628, 0, !dbg !610
  br i1 %629, label %630, label %631, !dbg !610

; <label>:630                                     ; preds = %621
  call void @__asan_report_load8(i64 %624), !dbg !610
  call void asm sideeffect "", ""(), !dbg !610
  unreachable, !dbg !610

; <label>:631                                     ; preds = %621
  %632 = load i8*, i8** %623, align 8, !dbg !610, !tbaa !345
  %633 = getelementptr inbounds i8*, i8** %authors, i64 8, !dbg !611
  %634 = ptrtoint i8** %633 to i64, !dbg !611
  %635 = lshr i64 %634, 3, !dbg !611
  %636 = add i64 %635, 2147450880, !dbg !611
  %637 = inttoptr i64 %636 to i8*, !dbg !611
  %638 = load i8, i8* %637, !dbg !611
  %639 = icmp ne i8 %638, 0, !dbg !611
  br i1 %639, label %640, label %641, !dbg !611

; <label>:640                                     ; preds = %631
  call void @__asan_report_load8(i64 %634), !dbg !611
  call void asm sideeffect "", ""(), !dbg !611
  unreachable, !dbg !611

; <label>:641                                     ; preds = %631
  %642 = load i8*, i8** %633, align 8, !dbg !611, !tbaa !345
  %643 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %stream, i8* nonnull getelementptr inbounds ({ [60 x i8], [36 x i8] }, { [60 x i8], [36 x i8] }* @.str.13.83, i32 0, i32 0, i64 0), i8* %562, i8* %572, i8* %582, i8* %592, i8* %602, i8* %612, i8* %622, i8* %632, i8* %642), !dbg !612
  br label %644, !dbg !613

; <label>:644                                     ; preds = %641, %544, %447, %360, %283, %216, %159, %112, %75, %48
  %645 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 60) to i32*) monotonic, align 4, !dbg !614, !nosanitize !2
  %646 = icmp sge i32 0, %645, !dbg !614
  br i1 %646, label %647, label %648, !dbg !614, !prof !325

; <label>:647                                     ; preds = %644
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 60) to i32*)), !dbg !614
  call void asm sideeffect "", ""(), !dbg !614
  br label %648, !dbg !614

; <label>:648                                     ; preds = %644, %647
  %649 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 14) to i8*), !dbg !614, !nosanitize !2
  %650 = add i8 %649, 1, !dbg !614
  store i8 %650, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 14) to i8*), !dbg !614, !nosanitize !2
  ret void, !dbg !614
}

; Function Attrs: nounwind sanitize_address uwtable
define void @version_etc_ar(%struct._IO_FILE* nocapture %stream, i8* %command_name, i8* %package, i8* %version, i8** readonly %authors) #0 !dbg !166 {
  %1 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 64) to i32*) monotonic, align 4, !dbg !615, !nosanitize !2
  %2 = icmp sge i32 0, %1, !dbg !615
  br i1 %2, label %3, label %4, !dbg !616, !prof !325

; <label>:3                                       ; preds = %0
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 64) to i32*)), !dbg !615
  call void asm sideeffect "", ""(), !dbg !615
  br label %4, !dbg !616

; <label>:4                                       ; preds = %0, %3
  %5 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 15) to i8*), !dbg !616, !nosanitize !2
  %6 = add i8 %5, 1, !dbg !616
  store i8 %6, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 15) to i8*), !dbg !616, !nosanitize !2
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %stream, i64 0, metadata !170, metadata !326), !dbg !616
  tail call void @llvm.dbg.value(metadata i8* %command_name, i64 0, metadata !171, metadata !326), !dbg !617
  tail call void @llvm.dbg.value(metadata i8* %package, i64 0, metadata !172, metadata !326), !dbg !618
  tail call void @llvm.dbg.value(metadata i8* %version, i64 0, metadata !173, metadata !326), !dbg !619
  tail call void @llvm.dbg.value(metadata i8** %authors, i64 0, metadata !174, metadata !326), !dbg !620
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !175, metadata !326), !dbg !621
  br label %7, !dbg !622

; <label>:7                                       ; preds = %29, %4
  %n_authors.0 = phi i64 [ 0, %4 ], [ %25, %29 ]
  %8 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 68) to i32*) monotonic, align 4, !dbg !624, !nosanitize !2
  %9 = icmp sge i32 0, %8, !dbg !624
  br i1 %9, label %10, label %11, !dbg !624, !prof !325

; <label>:10                                      ; preds = %7
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 68) to i32*)), !dbg !624
  call void asm sideeffect "", ""(), !dbg !624
  br label %11, !dbg !624

; <label>:11                                      ; preds = %7, %10
  %12 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 16) to i8*), !dbg !624, !nosanitize !2
  %13 = add i8 %12, 1, !dbg !624
  store i8 %13, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 16) to i8*), !dbg !624, !nosanitize !2
  %14 = getelementptr inbounds i8*, i8** %authors, i64 %n_authors.0, !dbg !624
  %15 = ptrtoint i8** %14 to i64, !dbg !624
  %16 = lshr i64 %15, 3, !dbg !624
  %17 = add i64 %16, 2147450880, !dbg !624
  %18 = inttoptr i64 %17 to i8*, !dbg !624
  %19 = load i8, i8* %18, !dbg !624
  %20 = icmp ne i8 %19, 0, !dbg !624
  br i1 %20, label %21, label %22, !dbg !624

; <label>:21                                      ; preds = %11
  call void @__asan_report_load8(i64 %15), !dbg !624
  call void asm sideeffect "", ""(), !dbg !624
  unreachable, !dbg !624

; <label>:22                                      ; preds = %11
  %23 = load i8*, i8** %14, align 8, !dbg !624, !tbaa !345
  %24 = icmp eq i8* %23, null, !dbg !627
  %25 = add i64 %n_authors.0, 1, !dbg !628
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !175, metadata !326), !dbg !621
  br i1 %24, label %32, label %._crit_edge, !dbg !627

._crit_edge:                                      ; preds = %22
  %26 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 72) to i32*) monotonic, align 4, !dbg !627, !nosanitize !2
  %27 = icmp sge i32 0, %26, !dbg !627
  br i1 %27, label %28, label %29, !dbg !627, !prof !325

; <label>:28                                      ; preds = %._crit_edge
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 72) to i32*)), !dbg !627
  call void asm sideeffect "", ""(), !dbg !627
  br label %29, !dbg !627

; <label>:29                                      ; preds = %._crit_edge, %28
  %30 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 17) to i8*), !dbg !627, !nosanitize !2
  %31 = add i8 %30, 1, !dbg !627
  store i8 %31, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 17) to i8*), !dbg !627, !nosanitize !2
  br label %7, !dbg !627

; <label>:32                                      ; preds = %22
  %n_authors.0.lcssa = phi i64 [ %n_authors.0, %22 ]
  %33 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 76) to i32*) monotonic, align 4, !dbg !630, !nosanitize !2
  %34 = icmp sge i32 0, %33, !dbg !630
  br i1 %34, label %35, label %36, !dbg !630, !prof !325

; <label>:35                                      ; preds = %32
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 76) to i32*)), !dbg !630
  call void asm sideeffect "", ""(), !dbg !630
  br label %36, !dbg !630

; <label>:36                                      ; preds = %32, %35
  %37 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 18) to i8*), !dbg !630, !nosanitize !2
  %38 = add i8 %37, 1, !dbg !630
  store i8 %38, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 18) to i8*), !dbg !630, !nosanitize !2
  tail call void @version_etc_arn(%struct._IO_FILE* %stream, i8* %command_name, i8* %package, i8* %version, i8** nonnull %authors, i64 %n_authors.0.lcssa), !dbg !630
  ret void, !dbg !631
}

; Function Attrs: nounwind sanitize_address uwtable
define void @version_etc_va(%struct._IO_FILE* nocapture %stream, i8* %command_name, i8* %package, i8* %version, %struct.__va_list_tag* nocapture %authors) #0 !dbg !176 {
  %1 = load i32, i32* @__asan_option_detect_stack_use_after_return, !dbg !632
  %2 = icmp ne i32 %1, 0, !dbg !632
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = call i64 @__asan_stack_malloc_2(i64 160), !dbg !632
  br label %5

; <label>:5                                       ; preds = %0, %3
  %6 = phi i64 [ 0, %0 ], [ %4, %3 ], !dbg !632
  %7 = icmp eq i64 %6, 0, !dbg !632
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %5
  %MyAlloca = alloca i8, i64 160, align 32, !dbg !632
  %9 = ptrtoint i8* %MyAlloca to i64, !dbg !632
  br label %10

; <label>:10                                      ; preds = %5, %8
  %11 = phi i64 [ %6, %5 ], [ %9, %8 ], !dbg !632
  %12 = add i64 %11, 32, !dbg !632
  %13 = inttoptr i64 %12 to [10 x i8*]*, !dbg !632
  %14 = inttoptr i64 %11 to i64*, !dbg !632
  store i64 1102416563, i64* %14, !dbg !632
  %15 = add i64 %11, 8, !dbg !632
  %16 = inttoptr i64 %15 to i64*, !dbg !632
  store i64 ptrtoint ([18 x i8]* @__asan_gen_.117 to i64), i64* %16, !dbg !632
  %17 = add i64 %11, 16, !dbg !632
  %18 = inttoptr i64 %17 to i64*, !dbg !632
  store i64 ptrtoint (void (%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag*)* @version_etc_va to i64), i64* %18, !dbg !632
  %19 = lshr i64 %11, 3, !dbg !632
  %20 = add i64 %19, 2147450880, !dbg !632
  %21 = add i64 %20, 0, !dbg !632
  %22 = inttoptr i64 %21 to i64*, !dbg !632
  store i64 4059165169, i64* %22, !dbg !632
  %23 = add i64 %20, 8, !dbg !632
  %24 = inttoptr i64 %23 to i64*, !dbg !632
  store i64 -868350303152373760, i64* %24, !dbg !632
  %25 = add i64 %20, 16, !dbg !632
  %26 = inttoptr i64 %25 to i32*, !dbg !632
  store i32 -202116109, i32* %26, !dbg !632
  call void @llvm.dbg.declare(metadata [10 x i8*]* %13, metadata !193, metadata !322), !dbg !633
  %27 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 80) to i32*) monotonic, align 4, !dbg !632, !nosanitize !2
  %28 = icmp sge i32 0, %27, !dbg !632
  br i1 %28, label %29, label %30, !dbg !634, !prof !325

; <label>:29                                      ; preds = %10
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 80) to i32*)), !dbg !632
  call void asm sideeffect "", ""(), !dbg !632
  br label %30, !dbg !634

; <label>:30                                      ; preds = %10, %29
  %31 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 19) to i8*), !dbg !634, !nosanitize !2
  %32 = add i8 %31, 1, !dbg !634
  store i8 %32, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 19) to i8*), !dbg !634, !nosanitize !2
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %stream, i64 0, metadata !187, metadata !326), !dbg !634
  tail call void @llvm.dbg.value(metadata i8* %command_name, i64 0, metadata !188, metadata !326), !dbg !635
  tail call void @llvm.dbg.value(metadata i8* %package, i64 0, metadata !189, metadata !326), !dbg !636
  tail call void @llvm.dbg.value(metadata i8* %version, i64 0, metadata !190, metadata !326), !dbg !637
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %authors, i64 0, metadata !191, metadata !326), !dbg !638
  %33 = bitcast [10 x i8*]* %13 to i8*, !dbg !639
  call void @llvm.lifetime.start(i64 80, i8* %33) #5, !dbg !639
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !192, metadata !326), !dbg !640
  %34 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %authors, i64 0, i32 0, !dbg !641
  %35 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %authors, i64 0, i32 3, !dbg !645
  %36 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %authors, i64 0, i32 2, !dbg !647
  br label %37, !dbg !649

; <label>:37                                      ; preds = %159, %30
  %n_authors.01 = phi i64 [ 0, %30 ], [ %148, %159 ]
  %38 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 84) to i32*) monotonic, align 4, !dbg !641, !nosanitize !2
  %39 = icmp sge i32 0, %38, !dbg !641
  br i1 %39, label %40, label %41, !dbg !641, !prof !325

; <label>:40                                      ; preds = %37
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 84) to i32*)), !dbg !641
  call void asm sideeffect "", ""(), !dbg !641
  br label %41, !dbg !641

; <label>:41                                      ; preds = %37, %40
  %42 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 20) to i8*), !dbg !641, !nosanitize !2
  %43 = add i8 %42, 1, !dbg !641
  store i8 %43, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 20) to i8*), !dbg !641, !nosanitize !2
  %44 = ptrtoint i32* %34 to i64, !dbg !641
  %45 = lshr i64 %44, 3, !dbg !641
  %46 = add i64 %45, 2147450880, !dbg !641
  %47 = inttoptr i64 %46 to i8*, !dbg !641
  %48 = load i8, i8* %47, !dbg !641
  %49 = icmp ne i8 %48, 0, !dbg !641
  br i1 %49, label %50, label %56, !dbg !641, !prof !325

; <label>:50                                      ; preds = %41
  %51 = and i64 %44, 7, !dbg !641
  %52 = add i64 %51, 3, !dbg !641
  %53 = trunc i64 %52 to i8, !dbg !641
  %54 = icmp sge i8 %53, %48, !dbg !641
  br i1 %54, label %55, label %56, !dbg !641

; <label>:55                                      ; preds = %50
  call void @__asan_report_load4(i64 %44), !dbg !641
  call void asm sideeffect "", ""()
  unreachable

; <label>:56                                      ; preds = %50, %41
  %57 = load i32, i32* %34, align 8, !dbg !641
  %58 = icmp ult i32 %57, 41, !dbg !641
  br i1 %58, label %59, label %91, !dbg !641

; <label>:59                                      ; preds = %56
  %60 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 88) to i32*) monotonic, align 4, !dbg !645, !nosanitize !2
  %61 = icmp sge i32 0, %60, !dbg !645
  br i1 %61, label %62, label %63, !dbg !645, !prof !325

; <label>:62                                      ; preds = %59
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 88) to i32*)), !dbg !645
  call void asm sideeffect "", ""(), !dbg !645
  br label %63, !dbg !645

; <label>:63                                      ; preds = %59, %62
  %64 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 21) to i8*), !dbg !645, !nosanitize !2
  %65 = add i8 %64, 1, !dbg !645
  store i8 %65, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 21) to i8*), !dbg !645, !nosanitize !2
  %66 = ptrtoint i8** %35 to i64, !dbg !645
  %67 = lshr i64 %66, 3, !dbg !645
  %68 = add i64 %67, 2147450880, !dbg !645
  %69 = inttoptr i64 %68 to i8*, !dbg !645
  %70 = load i8, i8* %69, !dbg !645
  %71 = icmp ne i8 %70, 0, !dbg !645
  br i1 %71, label %72, label %73, !dbg !645

; <label>:72                                      ; preds = %63
  call void @__asan_report_load8(i64 %66), !dbg !645
  call void asm sideeffect "", ""(), !dbg !645
  unreachable, !dbg !645

; <label>:73                                      ; preds = %63
  %74 = load i8*, i8** %35, align 8, !dbg !645
  %75 = sext i32 %57 to i64, !dbg !645
  %76 = getelementptr i8, i8* %74, i64 %75, !dbg !645
  %77 = add i32 %57, 8, !dbg !645
  %78 = ptrtoint i32* %34 to i64, !dbg !645
  %79 = lshr i64 %78, 3, !dbg !645
  %80 = add i64 %79, 2147450880, !dbg !645
  %81 = inttoptr i64 %80 to i8*, !dbg !645
  %82 = load i8, i8* %81, !dbg !645
  %83 = icmp ne i8 %82, 0, !dbg !645
  br i1 %83, label %84, label %90, !dbg !645, !prof !325

; <label>:84                                      ; preds = %73
  %85 = and i64 %78, 7, !dbg !645
  %86 = add i64 %85, 3, !dbg !645
  %87 = trunc i64 %86 to i8, !dbg !645
  %88 = icmp sge i8 %87, %82, !dbg !645
  br i1 %88, label %89, label %90, !dbg !645

; <label>:89                                      ; preds = %84
  call void @__asan_report_store4(i64 %78), !dbg !645
  call void asm sideeffect "", ""()
  unreachable

; <label>:90                                      ; preds = %84, %73
  store i32 %77, i32* %34, align 8, !dbg !645
  br label %108, !dbg !645

; <label>:91                                      ; preds = %56
  %92 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 92) to i32*) monotonic, align 4, !dbg !647, !nosanitize !2
  %93 = icmp sge i32 0, %92, !dbg !647
  br i1 %93, label %94, label %95, !dbg !647, !prof !325

; <label>:94                                      ; preds = %91
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 92) to i32*)), !dbg !647
  call void asm sideeffect "", ""(), !dbg !647
  br label %95, !dbg !647

; <label>:95                                      ; preds = %91, %94
  %96 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 22) to i8*), !dbg !647, !nosanitize !2
  %97 = add i8 %96, 1, !dbg !647
  store i8 %97, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 22) to i8*), !dbg !647, !nosanitize !2
  %98 = ptrtoint i8** %36 to i64, !dbg !647
  %99 = lshr i64 %98, 3, !dbg !647
  %100 = add i64 %99, 2147450880, !dbg !647
  %101 = inttoptr i64 %100 to i8*, !dbg !647
  %102 = load i8, i8* %101, !dbg !647
  %103 = icmp ne i8 %102, 0, !dbg !647
  br i1 %103, label %104, label %105, !dbg !647

; <label>:104                                     ; preds = %95
  call void @__asan_report_load8(i64 %98), !dbg !647
  call void asm sideeffect "", ""(), !dbg !647
  unreachable, !dbg !647

; <label>:105                                     ; preds = %95
  %106 = load i8*, i8** %36, align 8, !dbg !647
  %107 = getelementptr i8, i8* %106, i64 8, !dbg !647
  store i8* %107, i8** %36, align 8, !dbg !647
  br label %108, !dbg !647

; <label>:108                                     ; preds = %105, %90
  %.in = phi i8* [ %76, %90 ], [ %106, %105 ]
  %109 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 96) to i32*) monotonic, align 4, !dbg !650, !nosanitize !2
  %110 = icmp sge i32 0, %109, !dbg !650
  br i1 %110, label %111, label %112, !dbg !650, !prof !325

; <label>:111                                     ; preds = %108
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 96) to i32*)), !dbg !650
  call void asm sideeffect "", ""(), !dbg !650
  br label %112, !dbg !650

; <label>:112                                     ; preds = %108, %111
  %113 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 23) to i8*), !dbg !650, !nosanitize !2
  %114 = add i8 %113, 1, !dbg !650
  store i8 %114, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 23) to i8*), !dbg !650, !nosanitize !2
  %115 = bitcast i8* %.in to i8**, !dbg !650
  %116 = ptrtoint i8** %115 to i64, !dbg !650
  %117 = lshr i64 %116, 3, !dbg !650
  %118 = add i64 %117, 2147450880, !dbg !650
  %119 = inttoptr i64 %118 to i8*, !dbg !650
  %120 = load i8, i8* %119, !dbg !650
  %121 = icmp ne i8 %120, 0, !dbg !650
  br i1 %121, label %122, label %123, !dbg !650

; <label>:122                                     ; preds = %112
  call void @__asan_report_load8(i64 %116), !dbg !650
  call void asm sideeffect "", ""(), !dbg !650
  unreachable, !dbg !650

; <label>:123                                     ; preds = %112
  %124 = load i8*, i8** %115, align 8, !dbg !650
  %125 = getelementptr inbounds [10 x i8*], [10 x i8*]* %13, i64 0, i64 %n_authors.01, !dbg !652
  %126 = ptrtoint i8** %125 to i64, !dbg !653
  %127 = lshr i64 %126, 3, !dbg !653
  %128 = add i64 %127, 2147450880, !dbg !653
  %129 = inttoptr i64 %128 to i8*, !dbg !653
  %130 = load i8, i8* %129, !dbg !653
  %131 = icmp ne i8 %130, 0, !dbg !653
  br i1 %131, label %132, label %133, !dbg !653

; <label>:132                                     ; preds = %123
  call void @__asan_report_store8(i64 %126), !dbg !653
  call void asm sideeffect "", ""(), !dbg !653
  unreachable, !dbg !653

; <label>:133                                     ; preds = %123
  store i8* %124, i8** %125, align 8, !dbg !653, !tbaa !345
  %134 = icmp eq i8* %124, null, !dbg !654
  br i1 %134, label %..critedge_crit_edge, label %141, !dbg !655

..critedge_crit_edge:                             ; preds = %133
  %135 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 100) to i32*) monotonic, align 4, !dbg !655, !nosanitize !2
  %136 = icmp sge i32 0, %135, !dbg !655
  br i1 %136, label %137, label %138, !dbg !655, !prof !325

; <label>:137                                     ; preds = %..critedge_crit_edge
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 100) to i32*)), !dbg !655
  call void asm sideeffect "", ""(), !dbg !655
  br label %138, !dbg !655

; <label>:138                                     ; preds = %..critedge_crit_edge, %137
  %139 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 24) to i8*), !dbg !655, !nosanitize !2
  %140 = add i8 %139, 1, !dbg !655
  store i8 %140, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 24) to i8*), !dbg !655, !nosanitize !2
  br label %.critedge, !dbg !655

; <label>:141                                     ; preds = %133
  %142 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 104) to i32*) monotonic, align 4, !dbg !657, !nosanitize !2
  %143 = icmp sge i32 0, %142, !dbg !657
  br i1 %143, label %144, label %145, !dbg !657, !prof !325

; <label>:144                                     ; preds = %141
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 104) to i32*)), !dbg !657
  call void asm sideeffect "", ""(), !dbg !657
  br label %145, !dbg !657

; <label>:145                                     ; preds = %141, %144
  %146 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 25) to i8*), !dbg !657, !nosanitize !2
  %147 = add i8 %146, 1, !dbg !657
  store i8 %147, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 25) to i8*), !dbg !657, !nosanitize !2
  %148 = add nuw nsw i64 %n_authors.01, 1, !dbg !657
  tail call void @llvm.dbg.value(metadata i64 %148, i64 0, metadata !192, metadata !326), !dbg !640
  %149 = icmp ult i64 %148, 10, !dbg !658
  br i1 %149, label %._crit_edge, label %..critedge_crit_edge2, !dbg !649

..critedge_crit_edge2:                            ; preds = %145
  %150 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 108) to i32*) monotonic, align 4, !dbg !649, !nosanitize !2
  %151 = icmp sge i32 0, %150, !dbg !649
  br i1 %151, label %152, label %153, !dbg !649, !prof !325

; <label>:152                                     ; preds = %..critedge_crit_edge2
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 108) to i32*)), !dbg !649
  call void asm sideeffect "", ""(), !dbg !649
  br label %153, !dbg !649

; <label>:153                                     ; preds = %..critedge_crit_edge2, %152
  %154 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 26) to i8*), !dbg !649, !nosanitize !2
  %155 = add i8 %154, 1, !dbg !649
  store i8 %155, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 26) to i8*), !dbg !649, !nosanitize !2
  br label %.critedge, !dbg !649

._crit_edge:                                      ; preds = %145
  %156 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 112) to i32*) monotonic, align 4, !dbg !649, !nosanitize !2
  %157 = icmp sge i32 0, %156, !dbg !649
  br i1 %157, label %158, label %159, !dbg !649, !prof !325

; <label>:158                                     ; preds = %._crit_edge
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 112) to i32*)), !dbg !649
  call void asm sideeffect "", ""(), !dbg !649
  br label %159, !dbg !649

; <label>:159                                     ; preds = %._crit_edge, %158
  %160 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 27) to i8*), !dbg !649, !nosanitize !2
  %161 = add i8 %160, 1, !dbg !649
  store i8 %161, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 27) to i8*), !dbg !649, !nosanitize !2
  br label %37, !dbg !649

.critedge:                                        ; preds = %153, %138
  %n_authors.0.lcssa = phi i64 [ %n_authors.01, %138 ], [ %148, %153 ]
  %162 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 116) to i32*) monotonic, align 4, !dbg !659, !nosanitize !2
  %163 = icmp sge i32 0, %162, !dbg !659
  br i1 %163, label %164, label %165, !dbg !659, !prof !325

; <label>:164                                     ; preds = %.critedge
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 116) to i32*)), !dbg !659
  call void asm sideeffect "", ""(), !dbg !659
  br label %165, !dbg !659

; <label>:165                                     ; preds = %.critedge, %164
  %166 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 28) to i8*), !dbg !659, !nosanitize !2
  %167 = add i8 %166, 1, !dbg !659
  store i8 %167, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 28) to i8*), !dbg !659, !nosanitize !2
  %168 = getelementptr inbounds [10 x i8*], [10 x i8*]* %13, i64 0, i64 0, !dbg !659
  call void @version_etc_arn(%struct._IO_FILE* %stream, i8* %command_name, i8* %package, i8* %version, i8** %168, i64 %n_authors.0.lcssa), !dbg !660
  call void @llvm.lifetime.end(i64 80, i8* %33) #5, !dbg !661
  store i64 1172321806, i64* %14, !dbg !661
  %169 = icmp ne i64 %6, 0, !dbg !661
  br i1 %169, label %170, label %183, !dbg !661

; <label>:170                                     ; preds = %165
  %171 = add i64 %20, 0, !dbg !661
  %172 = inttoptr i64 %171 to i64*, !dbg !661
  store i64 -723401728380766731, i64* %172, !dbg !661
  %173 = add i64 %20, 8, !dbg !661
  %174 = inttoptr i64 %173 to i64*, !dbg !661
  store i64 -723401728380766731, i64* %174, !dbg !661
  %175 = add i64 %20, 16, !dbg !661
  %176 = inttoptr i64 %175 to i64*, !dbg !661
  store i64 -723401728380766731, i64* %176, !dbg !661
  %177 = add i64 %20, 24, !dbg !661
  %178 = inttoptr i64 %177 to i64*, !dbg !661
  store i64 -723401728380766731, i64* %178, !dbg !661
  %179 = add i64 %6, 248, !dbg !661
  %180 = inttoptr i64 %179 to i64*, !dbg !661
  %181 = load i64, i64* %180, !dbg !661
  %182 = inttoptr i64 %181 to i8*, !dbg !661
  store i8 0, i8* %182, !dbg !661
  br label %190, !dbg !661

; <label>:183                                     ; preds = %165
  %184 = add i64 %20, 0, !dbg !661
  %185 = inttoptr i64 %184 to i64*, !dbg !661
  store i64 0, i64* %185, !dbg !661
  %186 = add i64 %20, 8, !dbg !661
  %187 = inttoptr i64 %186 to i64*, !dbg !661
  store i64 0, i64* %187, !dbg !661
  %188 = add i64 %20, 16, !dbg !661
  %189 = inttoptr i64 %188 to i32*, !dbg !661
  store i32 0, i32* %189, !dbg !661
  br label %190, !dbg !661

; <label>:190                                     ; preds = %183, %170
  ret void, !dbg !661
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind sanitize_address uwtable
define void @version_etc(%struct._IO_FILE* nocapture %stream, i8* %command_name, i8* %package, i8* %version, ...) #0 !dbg !197 {
  %1 = load i32, i32* @__asan_option_detect_stack_use_after_return, !dbg !662
  %2 = icmp ne i32 %1, 0, !dbg !662
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = call i64 @__asan_stack_malloc_2(i64 224), !dbg !662
  br label %5

; <label>:5                                       ; preds = %0, %3
  %6 = phi i64 [ 0, %0 ], [ %4, %3 ], !dbg !662
  %7 = icmp eq i64 %6, 0, !dbg !662
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %5
  %MyAlloca = alloca i8, i64 224, align 32, !dbg !662
  %9 = ptrtoint i8* %MyAlloca to i64, !dbg !662
  br label %10

; <label>:10                                      ; preds = %5, %8
  %11 = phi i64 [ %6, %5 ], [ %9, %8 ], !dbg !662
  %12 = add i64 %11, 32, !dbg !662
  %13 = inttoptr i64 %12 to [10 x i8*]*, !dbg !662
  %14 = add i64 %11, 144, !dbg !662
  %15 = inttoptr i64 %14 to [1 x %struct.__va_list_tag]*, !dbg !662
  %16 = inttoptr i64 %11 to i64*, !dbg !662
  store i64 1102416563, i64* %16, !dbg !662
  %17 = add i64 %11, 8, !dbg !662
  %18 = inttoptr i64 %17 to i64*, !dbg !662
  store i64 ptrtoint ([37 x i8]* @__asan_gen_.21 to i64), i64* %18, !dbg !662
  %19 = add i64 %11, 16, !dbg !662
  %20 = inttoptr i64 %19 to i64*, !dbg !662
  store i64 ptrtoint (void (%struct._IO_FILE*, i8*, i8*, i8*, ...)* @version_etc to i64), i64* %20, !dbg !662
  %21 = lshr i64 %11, 3, !dbg !662
  %22 = add i64 %21, 2147450880, !dbg !662
  %23 = add i64 %22, 0, !dbg !662
  %24 = inttoptr i64 %23 to i64*, !dbg !662
  store i64 4059165169, i64* %24, !dbg !662
  %25 = add i64 %22, 8, !dbg !662
  %26 = inttoptr i64 %25 to i64*, !dbg !662
  store i64 -940689372167012352, i64* %26, !dbg !662
  %27 = add i64 %22, 16, !dbg !662
  %28 = inttoptr i64 %27 to i64*, !dbg !662
  store i64 -868083121826761998, i64* %28, !dbg !662
  %29 = add i64 %22, 24, !dbg !662
  %30 = inttoptr i64 %29 to i32*, !dbg !662
  store i32 -202116109, i32* %30, !dbg !662
  call void @llvm.dbg.declare(metadata [10 x i8*]* %13, metadata !193, metadata !322), !dbg !663
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %15, metadata !205, metadata !322), !dbg !665
  %31 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 120) to i32*) monotonic, align 4, !dbg !662, !nosanitize !2
  %32 = icmp sge i32 0, %31, !dbg !662
  br i1 %32, label %33, label %34, !dbg !663, !prof !325

; <label>:33                                      ; preds = %10
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 120) to i32*)), !dbg !662
  call void asm sideeffect "", ""(), !dbg !662
  br label %34, !dbg !663

; <label>:34                                      ; preds = %10, %33
  %35 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 29) to i8*), !dbg !663, !nosanitize !2
  %36 = add i8 %35, 1, !dbg !663
  store i8 %36, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 29) to i8*), !dbg !663, !nosanitize !2
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %stream, i64 0, metadata !201, metadata !326), !dbg !666
  tail call void @llvm.dbg.value(metadata i8* %command_name, i64 0, metadata !202, metadata !326), !dbg !667
  tail call void @llvm.dbg.value(metadata i8* %package, i64 0, metadata !203, metadata !326), !dbg !668
  tail call void @llvm.dbg.value(metadata i8* %version, i64 0, metadata !204, metadata !326), !dbg !669
  %37 = bitcast [1 x %struct.__va_list_tag]* %15 to i8*, !dbg !670
  call void @llvm.lifetime.start(i64 24, i8* %37) #5, !dbg !670
  call void @llvm.va_start(i8* %37), !dbg !671
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %stream, i64 0, metadata !187, metadata !326) #5, !dbg !672
  call void @llvm.dbg.value(metadata i8* %command_name, i64 0, metadata !188, metadata !326) #5, !dbg !673
  call void @llvm.dbg.value(metadata i8* %package, i64 0, metadata !189, metadata !326) #5, !dbg !674
  call void @llvm.dbg.value(metadata i8* %version, i64 0, metadata !190, metadata !326) #5, !dbg !675
  %38 = bitcast [10 x i8*]* %13 to i8*, !dbg !676
  call void @llvm.lifetime.start(i64 80, i8* %38) #5, !dbg !676
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !192, metadata !326) #5, !dbg !677
  %39 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %15, i64 0, i64 0, i32 0, !dbg !678
  %40 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %15, i64 0, i64 0, i32 3, !dbg !679
  %41 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %15, i64 0, i64 0, i32 2, !dbg !680
  br label %42, !dbg !681

; <label>:42                                      ; preds = %164, %34
  %n_authors.01.i = phi i64 [ 0, %34 ], [ %153, %164 ], !dbg !682
  %43 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 124) to i32*) monotonic, align 4, !dbg !678, !nosanitize !2
  %44 = icmp sge i32 0, %43, !dbg !678
  br i1 %44, label %45, label %46, !dbg !678, !prof !325

; <label>:45                                      ; preds = %42
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 124) to i32*)), !dbg !678
  call void asm sideeffect "", ""(), !dbg !678
  br label %46, !dbg !678

; <label>:46                                      ; preds = %42, %45
  %47 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 30) to i8*), !dbg !678, !nosanitize !2
  %48 = add i8 %47, 1, !dbg !678
  store i8 %48, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 30) to i8*), !dbg !678, !nosanitize !2
  %49 = ptrtoint i32* %39 to i64, !dbg !678
  %50 = lshr i64 %49, 3, !dbg !678
  %51 = add i64 %50, 2147450880, !dbg !678
  %52 = inttoptr i64 %51 to i8*, !dbg !678
  %53 = load i8, i8* %52, !dbg !678
  %54 = icmp ne i8 %53, 0, !dbg !678
  br i1 %54, label %55, label %61, !dbg !678, !prof !325

; <label>:55                                      ; preds = %46
  %56 = and i64 %49, 7, !dbg !678
  %57 = add i64 %56, 3, !dbg !678
  %58 = trunc i64 %57 to i8, !dbg !678
  %59 = icmp sge i8 %58, %53, !dbg !678
  br i1 %59, label %60, label %61, !dbg !678

; <label>:60                                      ; preds = %55
  call void @__asan_report_load4(i64 %49), !dbg !678
  call void asm sideeffect "", ""()
  unreachable

; <label>:61                                      ; preds = %55, %46
  %62 = load i32, i32* %39, align 16, !dbg !678
  %63 = icmp ult i32 %62, 41, !dbg !678
  br i1 %63, label %64, label %96, !dbg !678

; <label>:64                                      ; preds = %61
  %65 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 128) to i32*) monotonic, align 4, !dbg !679, !nosanitize !2
  %66 = icmp sge i32 0, %65, !dbg !679
  br i1 %66, label %67, label %68, !dbg !679, !prof !325

; <label>:67                                      ; preds = %64
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 128) to i32*)), !dbg !679
  call void asm sideeffect "", ""(), !dbg !679
  br label %68, !dbg !679

; <label>:68                                      ; preds = %64, %67
  %69 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 31) to i8*), !dbg !679, !nosanitize !2
  %70 = add i8 %69, 1, !dbg !679
  store i8 %70, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 31) to i8*), !dbg !679, !nosanitize !2
  %71 = ptrtoint i8** %40 to i64, !dbg !679
  %72 = lshr i64 %71, 3, !dbg !679
  %73 = add i64 %72, 2147450880, !dbg !679
  %74 = inttoptr i64 %73 to i8*, !dbg !679
  %75 = load i8, i8* %74, !dbg !679
  %76 = icmp ne i8 %75, 0, !dbg !679
  br i1 %76, label %77, label %78, !dbg !679

; <label>:77                                      ; preds = %68
  call void @__asan_report_load8(i64 %71), !dbg !679
  call void asm sideeffect "", ""(), !dbg !679
  unreachable, !dbg !679

; <label>:78                                      ; preds = %68
  %79 = load i8*, i8** %40, align 16, !dbg !679
  %80 = sext i32 %62 to i64, !dbg !679
  %81 = getelementptr i8, i8* %79, i64 %80, !dbg !679
  %82 = add i32 %62, 8, !dbg !679
  %83 = ptrtoint i32* %39 to i64, !dbg !679
  %84 = lshr i64 %83, 3, !dbg !679
  %85 = add i64 %84, 2147450880, !dbg !679
  %86 = inttoptr i64 %85 to i8*, !dbg !679
  %87 = load i8, i8* %86, !dbg !679
  %88 = icmp ne i8 %87, 0, !dbg !679
  br i1 %88, label %89, label %95, !dbg !679, !prof !325

; <label>:89                                      ; preds = %78
  %90 = and i64 %83, 7, !dbg !679
  %91 = add i64 %90, 3, !dbg !679
  %92 = trunc i64 %91 to i8, !dbg !679
  %93 = icmp sge i8 %92, %87, !dbg !679
  br i1 %93, label %94, label %95, !dbg !679

; <label>:94                                      ; preds = %89
  call void @__asan_report_store4(i64 %83), !dbg !679
  call void asm sideeffect "", ""()
  unreachable

; <label>:95                                      ; preds = %89, %78
  store i32 %82, i32* %39, align 16, !dbg !679
  br label %113, !dbg !679

; <label>:96                                      ; preds = %61
  %97 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 132) to i32*) monotonic, align 4, !dbg !680, !nosanitize !2
  %98 = icmp sge i32 0, %97, !dbg !680
  br i1 %98, label %99, label %100, !dbg !680, !prof !325

; <label>:99                                      ; preds = %96
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 132) to i32*)), !dbg !680
  call void asm sideeffect "", ""(), !dbg !680
  br label %100, !dbg !680

; <label>:100                                     ; preds = %96, %99
  %101 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 32) to i8*), !dbg !680, !nosanitize !2
  %102 = add i8 %101, 1, !dbg !680
  store i8 %102, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 32) to i8*), !dbg !680, !nosanitize !2
  %103 = ptrtoint i8** %41 to i64, !dbg !680
  %104 = lshr i64 %103, 3, !dbg !680
  %105 = add i64 %104, 2147450880, !dbg !680
  %106 = inttoptr i64 %105 to i8*, !dbg !680
  %107 = load i8, i8* %106, !dbg !680
  %108 = icmp ne i8 %107, 0, !dbg !680
  br i1 %108, label %109, label %110, !dbg !680

; <label>:109                                     ; preds = %100
  call void @__asan_report_load8(i64 %103), !dbg !680
  call void asm sideeffect "", ""(), !dbg !680
  unreachable, !dbg !680

; <label>:110                                     ; preds = %100
  %111 = load i8*, i8** %41, align 8, !dbg !680
  %112 = getelementptr i8, i8* %111, i64 8, !dbg !680
  store i8* %112, i8** %41, align 8, !dbg !680
  br label %113, !dbg !680

; <label>:113                                     ; preds = %110, %95
  %.in.i = phi i8* [ %81, %95 ], [ %111, %110 ], !dbg !682
  %114 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 136) to i32*) monotonic, align 4, !dbg !683, !nosanitize !2
  %115 = icmp sge i32 0, %114, !dbg !683
  br i1 %115, label %116, label %117, !dbg !683, !prof !325

; <label>:116                                     ; preds = %113
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 136) to i32*)), !dbg !683
  call void asm sideeffect "", ""(), !dbg !683
  br label %117, !dbg !683

; <label>:117                                     ; preds = %113, %116
  %118 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 33) to i8*), !dbg !683, !nosanitize !2
  %119 = add i8 %118, 1, !dbg !683
  store i8 %119, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 33) to i8*), !dbg !683, !nosanitize !2
  %120 = bitcast i8* %.in.i to i8**, !dbg !683
  %121 = ptrtoint i8** %120 to i64, !dbg !683
  %122 = lshr i64 %121, 3, !dbg !683
  %123 = add i64 %122, 2147450880, !dbg !683
  %124 = inttoptr i64 %123 to i8*, !dbg !683
  %125 = load i8, i8* %124, !dbg !683
  %126 = icmp ne i8 %125, 0, !dbg !683
  br i1 %126, label %127, label %128, !dbg !683

; <label>:127                                     ; preds = %117
  call void @__asan_report_load8(i64 %121), !dbg !683
  call void asm sideeffect "", ""(), !dbg !683
  unreachable, !dbg !683

; <label>:128                                     ; preds = %117
  %129 = load i8*, i8** %120, align 8, !dbg !683
  %130 = getelementptr inbounds [10 x i8*], [10 x i8*]* %13, i64 0, i64 %n_authors.01.i, !dbg !684
  %131 = ptrtoint i8** %130 to i64, !dbg !685
  %132 = lshr i64 %131, 3, !dbg !685
  %133 = add i64 %132, 2147450880, !dbg !685
  %134 = inttoptr i64 %133 to i8*, !dbg !685
  %135 = load i8, i8* %134, !dbg !685
  %136 = icmp ne i8 %135, 0, !dbg !685
  br i1 %136, label %137, label %138, !dbg !685

; <label>:137                                     ; preds = %128
  call void @__asan_report_store8(i64 %131), !dbg !685
  call void asm sideeffect "", ""(), !dbg !685
  unreachable, !dbg !685

; <label>:138                                     ; preds = %128
  store i8* %129, i8** %130, align 8, !dbg !685, !tbaa !345
  %139 = icmp eq i8* %129, null, !dbg !686
  br i1 %139, label %.version_etc_va.exit_crit_edge, label %146, !dbg !687

.version_etc_va.exit_crit_edge:                   ; preds = %138
  %140 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 140) to i32*) monotonic, align 4, !dbg !687, !nosanitize !2
  %141 = icmp sge i32 0, %140, !dbg !687
  br i1 %141, label %142, label %143, !dbg !687, !prof !325

; <label>:142                                     ; preds = %.version_etc_va.exit_crit_edge
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 140) to i32*)), !dbg !687
  call void asm sideeffect "", ""(), !dbg !687
  br label %143, !dbg !687

; <label>:143                                     ; preds = %.version_etc_va.exit_crit_edge, %142
  %144 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 34) to i8*), !dbg !687, !nosanitize !2
  %145 = add i8 %144, 1, !dbg !687
  store i8 %145, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 34) to i8*), !dbg !687, !nosanitize !2
  br label %version_etc_va.exit, !dbg !687

; <label>:146                                     ; preds = %138
  %147 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 144) to i32*) monotonic, align 4, !dbg !688, !nosanitize !2
  %148 = icmp sge i32 0, %147, !dbg !688
  br i1 %148, label %149, label %150, !dbg !688, !prof !325

; <label>:149                                     ; preds = %146
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 144) to i32*)), !dbg !688
  call void asm sideeffect "", ""(), !dbg !688
  br label %150, !dbg !688

; <label>:150                                     ; preds = %146, %149
  %151 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 35) to i8*), !dbg !688, !nosanitize !2
  %152 = add i8 %151, 1, !dbg !688
  store i8 %152, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 35) to i8*), !dbg !688, !nosanitize !2
  %153 = add nuw nsw i64 %n_authors.01.i, 1, !dbg !688
  call void @llvm.dbg.value(metadata i64 %153, i64 0, metadata !192, metadata !326) #5, !dbg !677
  %154 = icmp ult i64 %153, 10, !dbg !689
  br i1 %154, label %._crit_edge, label %.version_etc_va.exit_crit_edge1, !dbg !681

.version_etc_va.exit_crit_edge1:                  ; preds = %150
  %155 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 148) to i32*) monotonic, align 4, !dbg !681, !nosanitize !2
  %156 = icmp sge i32 0, %155, !dbg !681
  br i1 %156, label %157, label %158, !dbg !681, !prof !325

; <label>:157                                     ; preds = %.version_etc_va.exit_crit_edge1
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 148) to i32*)), !dbg !681
  call void asm sideeffect "", ""(), !dbg !681
  br label %158, !dbg !681

; <label>:158                                     ; preds = %.version_etc_va.exit_crit_edge1, %157
  %159 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 36) to i8*), !dbg !681, !nosanitize !2
  %160 = add i8 %159, 1, !dbg !681
  store i8 %160, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 36) to i8*), !dbg !681, !nosanitize !2
  br label %version_etc_va.exit, !dbg !681

._crit_edge:                                      ; preds = %150
  %161 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 152) to i32*) monotonic, align 4, !dbg !681, !nosanitize !2
  %162 = icmp sge i32 0, %161, !dbg !681
  br i1 %162, label %163, label %164, !dbg !681, !prof !325

; <label>:163                                     ; preds = %._crit_edge
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 152) to i32*)), !dbg !681
  call void asm sideeffect "", ""(), !dbg !681
  br label %164, !dbg !681

; <label>:164                                     ; preds = %._crit_edge, %163
  %165 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 37) to i8*), !dbg !681, !nosanitize !2
  %166 = add i8 %165, 1, !dbg !681
  store i8 %166, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 37) to i8*), !dbg !681, !nosanitize !2
  br label %42, !dbg !681

version_etc_va.exit:                              ; preds = %158, %143
  %n_authors.0.lcssa.i = phi i64 [ %n_authors.01.i, %143 ], [ %153, %158 ], !dbg !682
  %167 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 156) to i32*) monotonic, align 4, !dbg !690, !nosanitize !2
  %168 = icmp sge i32 0, %167, !dbg !690
  br i1 %168, label %169, label %170, !dbg !690, !prof !325

; <label>:169                                     ; preds = %version_etc_va.exit
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 156) to i32*)), !dbg !690
  call void asm sideeffect "", ""(), !dbg !690
  br label %170, !dbg !690

; <label>:170                                     ; preds = %version_etc_va.exit, %169
  %171 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 38) to i8*), !dbg !690, !nosanitize !2
  %172 = add i8 %171, 1, !dbg !690
  store i8 %172, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 38) to i8*), !dbg !690, !nosanitize !2
  %173 = getelementptr inbounds [10 x i8*], [10 x i8*]* %13, i64 0, i64 0, !dbg !690
  call void @version_etc_arn(%struct._IO_FILE* %stream, i8* %command_name, i8* %package, i8* %version, i8** %173, i64 %n_authors.0.lcssa.i) #5, !dbg !691
  call void @llvm.lifetime.end(i64 80, i8* %38) #5, !dbg !692
  call void @llvm.va_end(i8* %37), !dbg !693
  call void @llvm.lifetime.end(i64 24, i8* %37) #5, !dbg !694
  store i64 1172321806, i64* %16, !dbg !694
  %174 = icmp ne i64 %6, 0, !dbg !694
  br i1 %174, label %175, label %188, !dbg !694

; <label>:175                                     ; preds = %170
  %176 = add i64 %22, 0, !dbg !694
  %177 = inttoptr i64 %176 to i64*, !dbg !694
  store i64 -723401728380766731, i64* %177, !dbg !694
  %178 = add i64 %22, 8, !dbg !694
  %179 = inttoptr i64 %178 to i64*, !dbg !694
  store i64 -723401728380766731, i64* %179, !dbg !694
  %180 = add i64 %22, 16, !dbg !694
  %181 = inttoptr i64 %180 to i64*, !dbg !694
  store i64 -723401728380766731, i64* %181, !dbg !694
  %182 = add i64 %22, 24, !dbg !694
  %183 = inttoptr i64 %182 to i64*, !dbg !694
  store i64 -723401728380766731, i64* %183, !dbg !694
  %184 = add i64 %6, 248, !dbg !694
  %185 = inttoptr i64 %184 to i64*, !dbg !694
  %186 = load i64, i64* %185, !dbg !694
  %187 = inttoptr i64 %186 to i8*, !dbg !694
  store i8 0, i8* %187, !dbg !694
  br label %197, !dbg !694

; <label>:188                                     ; preds = %170
  %189 = add i64 %22, 0, !dbg !694
  %190 = inttoptr i64 %189 to i64*, !dbg !694
  store i64 0, i64* %190, !dbg !694
  %191 = add i64 %22, 8, !dbg !694
  %192 = inttoptr i64 %191 to i64*, !dbg !694
  store i64 0, i64* %192, !dbg !694
  %193 = add i64 %22, 16, !dbg !694
  %194 = inttoptr i64 %193 to i64*, !dbg !694
  store i64 0, i64* %194, !dbg !694
  %195 = add i64 %22, 24, !dbg !694
  %196 = inttoptr i64 %195 to i32*, !dbg !694
  store i32 0, i32* %196, !dbg !694
  br label %197, !dbg !694

; <label>:197                                     ; preds = %188, %175
  ret void, !dbg !694
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind sanitize_address uwtable
define void @emit_bug_reporting_address() #0 !dbg !211 {
  %1 = load atomic i32, i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 160) to i32*) monotonic, align 4, !dbg !695, !nosanitize !2
  %2 = icmp sge i32 0, %1, !dbg !695
  br i1 %2, label %3, label %4, !dbg !696, !prof !325

; <label>:3                                       ; preds = %0
  call void @__sanitizer_cov(i32* inttoptr (i64 add (i64 ptrtoint ([41 x i32]* @__sancov_gen_cov.113 to i64), i64 160) to i32*)), !dbg !695
  call void asm sideeffect "", ""(), !dbg !695
  br label %4, !dbg !696

; <label>:4                                       ; preds = %0, %3
  %5 = load i8, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 39) to i8*), !dbg !696, !nosanitize !2
  %6 = add i8 %5, 1, !dbg !696
  store i8 %6, i8* inttoptr (i64 add (i64 ptrtoint ([48 x i8]* @__sancov_gen_cov_counter.114 to i64), i64 39) to i8*), !dbg !696, !nosanitize !2
  %7 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ({ [21 x i8], [43 x i8] }, { [21 x i8], [43 x i8] }* @.str.14.87, i32 0, i32 0, i64 0), i8* getelementptr inbounds ({ [22 x i8], [42 x i8] }, { [22 x i8], [42 x i8] }* @.str.15.91, i32 0, i32 0, i64 0)), !dbg !696
  %8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ({ [20 x i8], [44 x i8] }, { [20 x i8], [44 x i8] }* @.str.16.95, i32 0, i32 0, i64 0), i8* getelementptr inbounds ({ [13 x i8], [51 x i8] }, { [13 x i8], [51 x i8] }* @.str.17.99, i32 0, i32 0, i64 0), i8* getelementptr inbounds ({ [38 x i8], [58 x i8] }, { [38 x i8], [58 x i8] }* @.str.18.103, i32 0, i32 0, i64 0)), !dbg !697
  %9 = load i8, i8* inttoptr (i64 add (i64 lshr (i64 ptrtoint (%struct._IO_FILE** @stdout to i64), i64 3), i64 2147450880) to i8*), !dbg !698
  %10 = icmp ne i8 %9, 0, !dbg !698
  br i1 %10, label %11, label %12, !dbg !698

; <label>:11                                      ; preds = %4
  call void @__asan_report_load8(i64 ptrtoint (%struct._IO_FILE** @stdout to i64)), !dbg !698
  call void asm sideeffect "", ""(), !dbg !698
  unreachable, !dbg !698

; <label>:12                                      ; preds = %4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !698, !tbaa !345
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ({ [64 x i8], [32 x i8] }, { [64 x i8], [32 x i8] }* @.str.19.107, i32 0, i32 0, i64 0), i64 63, i64 1, %struct._IO_FILE* %13), !dbg !699
  ret void, !dbg !700
}

define internal void @asan.module_ctor.125() {
  tail call void @__asan_init()
  tail call void @__asan_version_mismatch_check_v6()
  call void @__asan_register_globals(i64 ptrtoint ([2 x { i64, i64, i64, i64, i64, i64, i64 }]* @6 to i64), i64 2)
  ret void
}

define internal void @sancov.module_ctor.129() {
  call void @__sanitizer_cov_module_init(i32* getelementptr inbounds ([1 x i32], [1 x i32]* @__sancov_gen_cov.130, i32 0, i32 0), i64 0, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @__sancov_gen_cov_counter.131, i32 0, i32 0), i8* getelementptr inbounds ({ [18 x i8], [46 x i8] }, { [18 x i8], [46 x i8] }* @7, i32 0, i32 0, i32 0))
  ret void
}

define internal void @asan.module_dtor.133() {
  call void @__asan_unregister_globals(i64 ptrtoint ([2 x { i64, i64, i64, i64, i64, i64, i64 }]* @6 to i64), i64 2)
  ret void
}

attributes #0 = { nounwind sanitize_address uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noreturn nounwind sanitize_address uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { cold }
attributes #10 = { noreturn }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind readonly }

!llvm.dbg.cu = !{!0, !75, !88, !214}
!llvm.asan.globals = !{!221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315}
!llvm.ident = !{!317, !317, !317, !317}
!llvm.module.flags = !{!318, !319, !320}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !8, globals: !59)
!1 = !DIFile(filename: "asn1Parser.c", directory: "/home/icy/comp/libtasn1/libtasn1-4.12/src")
!2 = !{}
!3 = !{!4, !6, !7}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!7 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !30, !54}
!9 = distinct !DISubprogram(name: "LLVMFuzzerTestOneInput", scope: !1, file: !1, line: 67, type: !10, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, variables: !21)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13, !18}
!12 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !16, line: 48, baseType: !17)
!16 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/icy/comp/libtasn1/libtasn1-4.12/src")
!17 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 62, baseType: !20)
!19 = !DIFile(filename: "/usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/stddef.h", directory: "/home/icy/comp/libtasn1/libtasn1-4.12/src")
!20 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!21 = !{!22, !23, !24, !25, !26}
!22 = !DILocalVariable(name: "data", arg: 1, scope: !9, file: !1, line: 67, type: !13)
!23 = !DILocalVariable(name: "size", arg: 2, scope: !9, file: !1, line: 67, type: !18)
!24 = !DILocalVariable(name: "str", scope: !9, file: !1, line: 69, type: !4)
!25 = !DILocalVariable(name: "argc0", scope: !9, file: !1, line: 72, type: !12)
!26 = !DILocalVariable(name: "argv0", scope: !9, file: !1, line: 73, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, align: 64, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 2)
!30 = distinct !DISubprogram(name: "fuzz_main", scope: !1, file: !1, line: 81, type: !31, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, variables: !34)
!31 = !DISubroutineType(types: !32)
!32 = !{!12, !12, !33}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !49, !53}
!35 = !DILocalVariable(name: "argc", arg: 1, scope: !30, file: !1, line: 81, type: !12)
!36 = !DILocalVariable(name: "argv", arg: 2, scope: !30, file: !1, line: 81, type: !33)
!37 = !DILocalVariable(name: "option_index", scope: !30, file: !1, line: 91, type: !12)
!38 = !DILocalVariable(name: "option_result", scope: !30, file: !1, line: 92, type: !12)
!39 = !DILocalVariable(name: "outputFileName", scope: !30, file: !1, line: 93, type: !4)
!40 = !DILocalVariable(name: "inputFileName", scope: !30, file: !1, line: 94, type: !4)
!41 = !DILocalVariable(name: "vectorName", scope: !30, file: !1, line: 95, type: !4)
!42 = !DILocalVariable(name: "checkSyntaxOnly", scope: !30, file: !1, line: 96, type: !12)
!43 = !DILocalVariable(name: "pointer", scope: !30, file: !1, line: 97, type: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "asn1_node", file: !45, line: 131, baseType: !46)
!45 = !DIFile(filename: "../lib/libtasn1.h", directory: "/home/icy/comp/libtasn1/libtasn1-4.12/src")
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "asn1_node_st", file: !45, line: 129, baseType: !48)
!48 = !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_node_st", file: !45, line: 129, flags: DIFlagFwdDecl)
!49 = !DILocalVariable(name: "errorDescription", scope: !30, file: !1, line: 98, type: !50)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 1024, align: 8, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 128)
!53 = !DILocalVariable(name: "parse_result", scope: !30, file: !1, line: 99, type: !12)
!54 = distinct !DISubprogram(name: "usage", scope: !1, file: !1, line: 42, type: !55, isLocal: true, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, variables: !57)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !12}
!57 = !{!58}
!58 = !DILocalVariable(name: "status", arg: 1, scope: !54, file: !1, line: 42, type: !12)
!59 = !{!60}
!60 = !DIGlobalVariable(name: "long_options", scope: !30, file: !1, line: 83, type: !61, isLocal: true, isDefinition: true, variable: [6 x %struct.option]* getelementptr inbounds ({ [6 x %struct.option], [32 x i8] }, { [6 x %struct.option], [32 x i8] }* @fuzz_main.long_options, i32 0, i32 0))
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 1536, align: 64, elements: !73)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !64, line: 104, size: 256, align: 64, elements: !65)
!64 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/icy/comp/libtasn1/libtasn1-4.12/src")
!65 = !{!66, !69, !70, !72}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !63, file: !64, line: 106, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !63, file: !64, line: 109, baseType: !12, size: 32, align: 32, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !63, file: !64, line: 110, baseType: !71, size: 64, align: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !63, file: !64, line: 111, baseType: !12, size: 32, align: 32, offset: 192)
!73 = !{!74}
!74 = !DISubrange(count: 6)
!75 = distinct !DICompileUnit(language: DW_LANG_C99, file: !76, producer: "clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !77, subprograms: !78, globals: !86)
!76 = !DIFile(filename: "progname.c", directory: "/home/icy/comp/libtasn1/libtasn1-4.12/gl")
!77 = !{!6, !4}
!78 = !{!79}
!79 = distinct !DISubprogram(name: "set_program_name", scope: !76, file: !76, line: 39, type: !80, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, variables: !82)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !67}
!82 = !{!83, !84, !85}
!83 = !DILocalVariable(name: "argv0", arg: 1, scope: !79, file: !76, line: 39, type: !67)
!84 = !DILocalVariable(name: "slash", scope: !79, file: !76, line: 46, type: !67)
!85 = !DILocalVariable(name: "base", scope: !79, file: !76, line: 47, type: !67)
!86 = !{!87}
!87 = !DIGlobalVariable(name: "program_name", scope: !75, file: !76, line: 33, type: !67, isLocal: false, isDefinition: true, variable: i8** getelementptr inbounds ({ i8*, [56 x i8] }, { i8*, [56 x i8] }* @program_name, i32 0, i32 0))
!88 = distinct !DICompileUnit(language: DW_LANG_C99, file: !89, producer: "clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !90, retainedTypes: !94, subprograms: !95)
!89 = !DIFile(filename: "version-etc.c", directory: "/home/icy/comp/libtasn1/libtasn1-4.12/gl")
!90 = !{!91}
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !89, line: 41, size: 32, align: 32, elements: !92)
!92 = !{!93}
!93 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!94 = !{!67, !6}
!95 = !{!96, !166, !176, !197, !211}
!96 = distinct !DISubprogram(name: "version_etc_arn", scope: !89, file: !89, line: 62, type: !97, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, variables: !159)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !99, !67, !67, !67, !157, !150}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !101, line: 48, baseType: !102)
!101 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/icy/comp/libtasn1/libtasn1-4.12/gl")
!102 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !103, line: 241, size: 1728, align: 64, elements: !104)
!103 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/icy/comp/libtasn1/libtasn1-4.12/gl")
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !125, !126, !127, !128, !132, !134, !136, !140, !143, !145, !146, !147, !148, !149, !152, !153}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !102, file: !103, line: 242, baseType: !12, size: 32, align: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !102, file: !103, line: 247, baseType: !4, size: 64, align: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !102, file: !103, line: 248, baseType: !4, size: 64, align: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !102, file: !103, line: 249, baseType: !4, size: 64, align: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !102, file: !103, line: 250, baseType: !4, size: 64, align: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !102, file: !103, line: 251, baseType: !4, size: 64, align: 64, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !102, file: !103, line: 252, baseType: !4, size: 64, align: 64, offset: 384)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !102, file: !103, line: 253, baseType: !4, size: 64, align: 64, offset: 448)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !102, file: !103, line: 254, baseType: !4, size: 64, align: 64, offset: 512)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !102, file: !103, line: 256, baseType: !4, size: 64, align: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !102, file: !103, line: 257, baseType: !4, size: 64, align: 64, offset: 640)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !102, file: !103, line: 258, baseType: !4, size: 64, align: 64, offset: 704)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !102, file: !103, line: 260, baseType: !118, size: 64, align: 64, offset: 768)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !103, line: 156, size: 192, align: 64, elements: !120)
!120 = !{!121, !122, !124}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !119, file: !103, line: 157, baseType: !118, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !119, file: !103, line: 158, baseType: !123, size: 64, align: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !119, file: !103, line: 162, baseType: !12, size: 32, align: 32, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !102, file: !103, line: 262, baseType: !123, size: 64, align: 64, offset: 832)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !102, file: !103, line: 264, baseType: !12, size: 32, align: 32, offset: 896)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !102, file: !103, line: 268, baseType: !12, size: 32, align: 32, offset: 928)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !102, file: !103, line: 270, baseType: !129, size: 64, align: 64, offset: 960)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !130, line: 131, baseType: !131)
!130 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/icy/comp/libtasn1/libtasn1-4.12/gl")
!131 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !102, file: !103, line: 274, baseType: !133, size: 16, align: 16, offset: 1024)
!133 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !102, file: !103, line: 275, baseType: !135, size: 8, align: 8, offset: 1040)
!135 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !102, file: !103, line: 276, baseType: !137, size: 8, align: 8, offset: 1048)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, align: 8, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 1)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !102, file: !103, line: 280, baseType: !141, size: 64, align: 64, offset: 1088)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !103, line: 150, baseType: null)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !102, file: !103, line: 289, baseType: !144, size: 64, align: 64, offset: 1152)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !130, line: 132, baseType: !131)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !102, file: !103, line: 297, baseType: !6, size: 64, align: 64, offset: 1216)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !102, file: !103, line: 298, baseType: !6, size: 64, align: 64, offset: 1280)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !102, file: !103, line: 299, baseType: !6, size: 64, align: 64, offset: 1344)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !102, file: !103, line: 300, baseType: !6, size: 64, align: 64, offset: 1408)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !102, file: !103, line: 302, baseType: !150, size: 64, align: 64, offset: 1472)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !151, line: 62, baseType: !20)
!151 = !DIFile(filename: "/usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/stddef.h", directory: "/home/icy/comp/libtasn1/libtasn1-4.12/gl")
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !102, file: !103, line: 303, baseType: !12, size: 32, align: 32, offset: 1536)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !102, file: !103, line: 305, baseType: !154, size: 160, align: 8, offset: 1568)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 160, align: 8, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 20)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!159 = !{!160, !161, !162, !163, !164, !165}
!160 = !DILocalVariable(name: "stream", arg: 1, scope: !96, file: !89, line: 62, type: !99)
!161 = !DILocalVariable(name: "command_name", arg: 2, scope: !96, file: !89, line: 63, type: !67)
!162 = !DILocalVariable(name: "package", arg: 3, scope: !96, file: !89, line: 63, type: !67)
!163 = !DILocalVariable(name: "version", arg: 4, scope: !96, file: !89, line: 64, type: !67)
!164 = !DILocalVariable(name: "authors", arg: 5, scope: !96, file: !89, line: 65, type: !157)
!165 = !DILocalVariable(name: "n_authors", arg: 6, scope: !96, file: !89, line: 65, type: !150)
!166 = distinct !DISubprogram(name: "version_etc_ar", scope: !89, file: !89, line: 180, type: !167, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, variables: !169)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !99, !67, !67, !67, !157}
!169 = !{!170, !171, !172, !173, !174, !175}
!170 = !DILocalVariable(name: "stream", arg: 1, scope: !166, file: !89, line: 180, type: !99)
!171 = !DILocalVariable(name: "command_name", arg: 2, scope: !166, file: !89, line: 181, type: !67)
!172 = !DILocalVariable(name: "package", arg: 3, scope: !166, file: !89, line: 181, type: !67)
!173 = !DILocalVariable(name: "version", arg: 4, scope: !166, file: !89, line: 182, type: !67)
!174 = !DILocalVariable(name: "authors", arg: 5, scope: !166, file: !89, line: 182, type: !157)
!175 = !DILocalVariable(name: "n_authors", scope: !166, file: !89, line: 184, type: !150)
!176 = distinct !DISubprogram(name: "version_etc_va", scope: !89, file: !89, line: 196, type: !177, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, variables: !186)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !99, !67, !67, !67, !179}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !89, line: 189, size: 192, align: 64, elements: !181)
!181 = !{!182, !183, !184, !185}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !180, file: !89, line: 189, baseType: !7, size: 32, align: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !180, file: !89, line: 189, baseType: !7, size: 32, align: 32, offset: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !180, file: !89, line: 189, baseType: !6, size: 64, align: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !180, file: !89, line: 189, baseType: !6, size: 64, align: 64, offset: 128)
!186 = !{!187, !188, !189, !190, !191, !192, !193}
!187 = !DILocalVariable(name: "stream", arg: 1, scope: !176, file: !89, line: 196, type: !99)
!188 = !DILocalVariable(name: "command_name", arg: 2, scope: !176, file: !89, line: 197, type: !67)
!189 = !DILocalVariable(name: "package", arg: 3, scope: !176, file: !89, line: 197, type: !67)
!190 = !DILocalVariable(name: "version", arg: 4, scope: !176, file: !89, line: 198, type: !67)
!191 = !DILocalVariable(name: "authors", arg: 5, scope: !176, file: !89, line: 198, type: !179)
!192 = !DILocalVariable(name: "n_authors", scope: !176, file: !89, line: 200, type: !150)
!193 = !DILocalVariable(name: "authtab", scope: !176, file: !89, line: 201, type: !194)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 640, align: 64, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 10)
!197 = distinct !DISubprogram(name: "version_etc", scope: !89, file: !89, line: 227, type: !198, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, variables: !200)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !99, !67, !67, !67, null}
!200 = !{!201, !202, !203, !204, !205}
!201 = !DILocalVariable(name: "stream", arg: 1, scope: !197, file: !89, line: 227, type: !99)
!202 = !DILocalVariable(name: "command_name", arg: 2, scope: !197, file: !89, line: 228, type: !67)
!203 = !DILocalVariable(name: "package", arg: 3, scope: !197, file: !89, line: 228, type: !67)
!204 = !DILocalVariable(name: "version", arg: 4, scope: !197, file: !89, line: 229, type: !67)
!205 = !DILocalVariable(name: "authors", scope: !197, file: !89, line: 231, type: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !101, line: 79, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !208, line: 50, baseType: !209)
!208 = !DIFile(filename: "/usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/stdarg.h", directory: "/home/icy/comp/libtasn1/libtasn1-4.12/gl")
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !89, line: 231, baseType: !210)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 192, align: 64, elements: !138)
!211 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !89, file: !89, line: 239, type: !212, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, variables: !2)
!212 = !DISubroutineType(types: !213)
!213 = !{null}
!214 = distinct !DICompileUnit(language: DW_LANG_C99, file: !215, producer: "clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, globals: !216)
!215 = !DIFile(filename: "version-etc-fsf.c", directory: "/home/icy/comp/libtasn1/libtasn1-4.12/gl")
!216 = !{!217}
!217 = !DIGlobalVariable(name: "version_etc_copyright", scope: !214, file: !215, line: 26, type: !218, isLocal: false, isDefinition: true, variable: [47 x i8]* getelementptr inbounds ({ [47 x i8], [49 x i8] }, { [47 x i8], [49 x i8] }* @version_etc_copyright, i32 0, i32 0))
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 376, align: 8, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 47)
!221 = !{[11 x i8]* getelementptr inbounds ({ [11 x i8], [53 x i8] }, { [11 x i8], [53 x i8] }* @.str, i32 0, i32 0), !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"asn1Parser.c", i32 74, i32 28}
!223 = !{[5 x i8]* getelementptr inbounds ({ [5 x i8], [59 x i8] }, { [5 x i8], [59 x i8] }* @.str.1, i32 0, i32 0), !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"asn1Parser.c", i32 84, i32 6}
!225 = !{[8 x i8]* getelementptr inbounds ({ [8 x i8], [56 x i8] }, { [8 x i8], [56 x i8] }* @.str.2, i32 0, i32 0), !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"asn1Parser.c", i32 85, i32 6}
!227 = !{[6 x i8]* getelementptr inbounds ({ [6 x i8], [58 x i8] }, { [6 x i8], [58 x i8] }* @.str.3, i32 0, i32 0), !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"asn1Parser.c", i32 86, i32 6}
!229 = !{[7 x i8]* getelementptr inbounds ({ [7 x i8], [57 x i8] }, { [7 x i8], [57 x i8] }* @.str.4, i32 0, i32 0), !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"asn1Parser.c", i32 87, i32 6}
!231 = !{[5 x i8]* getelementptr inbounds ({ [5 x i8], [59 x i8] }, { [5 x i8], [59 x i8] }* @.str.5, i32 0, i32 0), !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"asn1Parser.c", i32 88, i32 6}
!233 = !{[6 x %struct.option]* getelementptr inbounds ({ [6 x %struct.option], [32 x i8] }, { [6 x %struct.option], [32 x i8] }* @fuzz_main.long_options, i32 0, i32 0), !234, !"long_options", i1 false, i1 false}
!234 = !{!"asn1Parser.c", i32 83, i32 30}
!235 = !{[8 x i8]* getelementptr inbounds ({ [8 x i8], [56 x i8] }, { [8 x i8], [56 x i8] }* @.str.6, i32 0, i32 0), !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"asn1Parser.c", i32 109, i32 27}
!237 = !{[10 x i8]* getelementptr inbounds ({ [10 x i8], [54 x i8] }, { [10 x i8], [54 x i8] }* @.str.7, i32 0, i32 0), !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"asn1Parser.c", i32 117, i32 21}
!239 = !{[13 x i8]* getelementptr inbounds ({ [13 x i8], [51 x i8] }, { [13 x i8], [51 x i8] }* @.str.8, i32 0, i32 0), !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"asn1Parser.c", i32 119, i32 23}
!241 = !{[9 x i8]* getelementptr inbounds ({ [9 x i8], [55 x i8] }, { [9 x i8], [55 x i8] }* @.str.9, i32 0, i32 0), !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"asn1Parser.c", i32 128, i32 39}
!243 = !{[5 x i8]* getelementptr inbounds ({ [5 x i8], [59 x i8] }, { [5 x i8], [59 x i8] }* @.str.10, i32 0, i32 0), !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"asn1Parser.c", i32 128, i32 48}
!245 = !{[14 x i8]* getelementptr inbounds ({ [14 x i8], [50 x i8] }, { [14 x i8], [50 x i8] }* @.str.11, i32 0, i32 0), !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"asn1Parser.c", i32 129, i32 10}
!247 = !{[62 x i8]* getelementptr inbounds ({ [62 x i8], [34 x i8] }, { [62 x i8], [34 x i8] }* @.str.12, i32 0, i32 0), !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"asn1Parser.c", i32 147, i32 6}
!249 = !{[55 x i8]* getelementptr inbounds ({ [55 x i8], [41 x i8] }, { [55 x i8], [41 x i8] }* @.str.13, i32 0, i32 0), !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"asn1Parser.c", i32 155, i32 6}
!251 = !{[7 x i8]* getelementptr inbounds ({ [7 x i8], [57 x i8] }, { [7 x i8], [57 x i8] }* @.str.14, i32 0, i32 0), !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"asn1Parser.c", i32 187, i32 14}
!253 = !{[35 x i8]* getelementptr inbounds ({ [35 x i8], [61 x i8] }, { [35 x i8], [61 x i8] }* @.str.15, i32 0, i32 0), !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"asn1Parser.c", i32 190, i32 24}
!255 = !{[16 x i8]* getelementptr inbounds ({ [16 x i8], [48 x i8] }, { [16 x i8], [48 x i8] }* @.str.16, i32 0, i32 0), !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"asn1Parser.c", i32 195, i32 24}
!257 = !{[20 x i8]* getelementptr inbounds ({ [20 x i8], [44 x i8] }, { [20 x i8], [44 x i8] }* @.str.17, i32 0, i32 0), !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"asn1Parser.c", i32 198, i32 24}
!259 = !{[39 x i8]* getelementptr inbounds ({ [39 x i8], [57 x i8] }, { [39 x i8], [57 x i8] }* @.str.18, i32 0, i32 0), !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"asn1Parser.c", i32 45, i32 22}
!261 = !{[25 x i8]* getelementptr inbounds ({ [25 x i8], [39 x i8] }, { [25 x i8], [39 x i8] }* @.str.19, i32 0, i32 0), !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"asn1Parser.c", i32 48, i32 15}
!263 = !{null, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"asn1Parser.c", i32 50, i32 15}
!265 = !{null, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"asn1Parser.c", i32 54, i32 15}
!267 = !{i8** getelementptr inbounds ({ i8*, [56 x i8] }, { i8*, [56 x i8] }* @program_name, i32 0, i32 0), !268, !"program_name", i1 false, i1 false}
!268 = !{!"progname.c", i32 33, i32 13}
!269 = !{[56 x i8]* getelementptr inbounds ({ [56 x i8], [40 x i8] }, { [56 x i8], [40 x i8] }* @.str.20, i32 0, i32 0), !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"progname.c", i32 54, i32 14}
!271 = !{[8 x i8]* getelementptr inbounds ({ [8 x i8], [56 x i8] }, { [8 x i8], [56 x i8] }* @.str.1.21, i32 0, i32 0), !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"progname.c", i32 61, i32 28}
!273 = !{[4 x i8]* getelementptr inbounds ({ [4 x i8], [60 x i8] }, { [4 x i8], [60 x i8] }* @.str.2.22, i32 0, i32 0), !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"progname.c", i32 64, i32 11}
!275 = !{[12 x i8]* getelementptr inbounds ({ [12 x i8], [52 x i8] }, { [12 x i8], [52 x i8] }* @.str.32, i32 0, i32 0), !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"version-etc.c", i32 68, i32 22}
!277 = !{[7 x i8]* getelementptr inbounds ({ [7 x i8], [57 x i8] }, { [7 x i8], [57 x i8] }* @.str.1.35, i32 0, i32 0), !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"version-etc.c", i32 70, i32 22}
!279 = !{[4 x i8]* getelementptr inbounds ({ [4 x i8], [60 x i8] }, { [4 x i8], [60 x i8] }* @.str.2.39, i32 0, i32 0), !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"version-etc.c", i32 84, i32 43}
!281 = !{[203 x i8]* getelementptr inbounds ({ [203 x i8], [53 x i8] }, { [203 x i8], [53 x i8] }* @.str.3.43, i32 0, i32 0), !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"version-etc.c", i32 86, i32 10}
!283 = !{[16 x i8]* getelementptr inbounds ({ [16 x i8], [48 x i8] }, { [16 x i8], [48 x i8] }* @.str.4.47, i32 0, i32 0), !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"version-etc.c", i32 102, i32 24}
!285 = !{[23 x i8]* getelementptr inbounds ({ [23 x i8], [41 x i8] }, { [23 x i8], [41 x i8] }* @.str.5.51, i32 0, i32 0), !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"version-etc.c", i32 106, i32 24}
!287 = !{[28 x i8]* getelementptr inbounds ({ [28 x i8], [36 x i8] }, { [28 x i8], [36 x i8] }* @.str.6.55, i32 0, i32 0), !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"version-etc.c", i32 110, i32 24}
!289 = !{[32 x i8]* getelementptr inbounds ({ [32 x i8], [32 x i8] }, { [32 x i8], [32 x i8] }* @.str.7.59, i32 0, i32 0), !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"version-etc.c", i32 117, i32 24}
!291 = !{[36 x i8]* getelementptr inbounds ({ [36 x i8], [60 x i8] }, { [36 x i8], [60 x i8] }* @.str.8.63, i32 0, i32 0), !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"version-etc.c", i32 124, i32 24}
!293 = !{[40 x i8]* getelementptr inbounds ({ [40 x i8], [56 x i8] }, { [40 x i8], [56 x i8] }* @.str.9.67, i32 0, i32 0), !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"version-etc.c", i32 131, i32 24}
!295 = !{[44 x i8]* getelementptr inbounds ({ [44 x i8], [52 x i8] }, { [44 x i8], [52 x i8] }* @.str.10.71, i32 0, i32 0), !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"version-etc.c", i32 139, i32 24}
!297 = !{[48 x i8]* getelementptr inbounds ({ [48 x i8], [48 x i8] }, { [48 x i8], [48 x i8] }* @.str.11.75, i32 0, i32 0), !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"version-etc.c", i32 147, i32 24}
!299 = !{[52 x i8]* getelementptr inbounds ({ [52 x i8], [44 x i8] }, { [52 x i8], [44 x i8] }* @.str.12.79, i32 0, i32 0), !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"version-etc.c", i32 156, i32 24}
!301 = !{[60 x i8]* getelementptr inbounds ({ [60 x i8], [36 x i8] }, { [60 x i8], [36 x i8] }* @.str.13.83, i32 0, i32 0), !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"version-etc.c", i32 167, i32 24}
!303 = !{[21 x i8]* getelementptr inbounds ({ [21 x i8], [43 x i8] }, { [21 x i8], [43 x i8] }* @.str.14.87, i32 0, i32 0), !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"version-etc.c", i32 245, i32 11}
!305 = !{[22 x i8]* getelementptr inbounds ({ [22 x i8], [42 x i8] }, { [22 x i8], [42 x i8] }* @.str.15.91, i32 0, i32 0), !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"version-etc.c", i32 245, i32 40}
!307 = !{[20 x i8]* getelementptr inbounds ({ [20 x i8], [44 x i8] }, { [20 x i8], [44 x i8] }* @.str.16.95, i32 0, i32 0), !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"version-etc.c", i32 251, i32 11}
!309 = !{[13 x i8]* getelementptr inbounds ({ [13 x i8], [51 x i8] }, { [13 x i8], [51 x i8] }* @.str.17.99, i32 0, i32 0), !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"version-etc.c", i32 251, i32 38}
!311 = !{[38 x i8]* getelementptr inbounds ({ [38 x i8], [58 x i8] }, { [38 x i8], [58 x i8] }* @.str.18.103, i32 0, i32 0), !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"version-etc.c", i32 251, i32 52}
!313 = !{[64 x i8]* getelementptr inbounds ({ [64 x i8], [32 x i8] }, { [64 x i8], [32 x i8] }* @.str.19.107, i32 0, i32 0), !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"version-etc.c", i32 256, i32 10}
!315 = !{[47 x i8]* getelementptr inbounds ({ [47 x i8], [49 x i8] }, { [47 x i8], [49 x i8] }* @version_etc_copyright, i32 0, i32 0), !316, !"version_etc_copyright", i1 false, i1 false}
!316 = !{!"version-etc-fsf.c", i32 26, i32 12}
!317 = !{!"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"}
!318 = !{i32 2, !"Dwarf Version", i32 4}
!319 = !{i32 2, !"Debug Info Version", i32 3}
!320 = !{i32 1, !"PIC Level", i32 2}
!321 = !DILocation(line: 67, scope: !9)
!322 = !DIExpression(DW_OP_deref)
!323 = !DILocation(line: 73, column: 15, scope: !9)
!324 = !DILocation(line: 67, column: 43, scope: !9)
!325 = !{!"branch_weights", i32 1, i32 100000}
!326 = !DIExpression()
!327 = !DILocation(line: 67, column: 56, scope: !9)
!328 = !DILocation(line: 68, column: 17, scope: !329)
!329 = distinct !DILexicalBlock(scope: !9, file: !1, line: 68, column: 12)
!330 = !DILocation(line: 68, column: 12, scope: !9)
!331 = !DILocation(line: 69, column: 54, scope: !9)
!332 = !DILocation(line: 69, column: 29, scope: !333)
!333 = !DILexicalBlockFile(scope: !9, file: !1, discriminator: 1)
!334 = !DILocation(line: 69, column: 15, scope: !9)
!335 = !DILocation(line: 70, column: 9, scope: !9)
!336 = !DILocation(line: 71, column: 9, scope: !9)
!337 = !DILocation(line: 71, column: 19, scope: !9)
!338 = !{!339, !339, i64 0}
!339 = !{!"omnipotent char", !340, i64 0}
!340 = !{!"Simple C/C++ TBAA"}
!341 = !DILocation(line: 72, column: 13, scope: !9)
!342 = !DILocation(line: 73, column: 9, scope: !9)
!343 = !DILocation(line: 74, column: 9, scope: !9)
!344 = !DILocation(line: 74, column: 18, scope: !9)
!345 = !{!346, !346, i64 0}
!346 = !{!"any pointer", !339, i64 0}
!347 = !DILocation(line: 75, column: 9, scope: !9)
!348 = !DILocation(line: 75, column: 18, scope: !9)
!349 = !DILocation(line: 76, column: 9, scope: !9)
!350 = !DILocation(line: 78, column: 1, scope: !333)
!351 = !DILocation(line: 82, scope: !30)
!352 = !DILocation(line: 98, column: 8, scope: !30)
!353 = !DILocation(line: 81, column: 11, scope: !30)
!354 = !DILocation(line: 81, column: 23, scope: !30)
!355 = !DILocation(line: 91, column: 3, scope: !30)
!356 = !DILocation(line: 91, column: 7, scope: !30)
!357 = !{!358, !358, i64 0}
!358 = !{!"int", !339, i64 0}
!359 = !DILocation(line: 93, column: 9, scope: !30)
!360 = !DILocation(line: 94, column: 9, scope: !30)
!361 = !DILocation(line: 95, column: 9, scope: !30)
!362 = !DILocation(line: 96, column: 7, scope: !30)
!363 = !DILocation(line: 97, column: 3, scope: !30)
!364 = !DILocation(line: 97, column: 13, scope: !30)
!365 = !DILocation(line: 98, column: 3, scope: !30)
!366 = !DILocation(line: 99, column: 7, scope: !30)
!367 = !DILocation(line: 101, column: 21, scope: !30)
!368 = !DILocation(line: 101, column: 3, scope: !30)
!369 = !DILocation(line: 103, column: 10, scope: !30)
!370 = !DILocation(line: 105, column: 3, scope: !30)
!371 = !DILocation(line: 109, column: 2, scope: !372)
!372 = distinct !DILexicalBlock(scope: !30, file: !1, line: 106, column: 5)
!373 = !DILocation(line: 92, column: 7, scope: !30)
!374 = !DILocation(line: 111, column: 11, scope: !372)
!375 = !DILocation(line: 117, column: 13, scope: !376)
!376 = distinct !DILexicalBlock(scope: !372, file: !1, line: 115, column: 2)
!377 = !DILocation(line: 117, column: 47, scope: !376)
!378 = !DILocation(line: 117, column: 34, scope: !376)
!379 = !DILocation(line: 117, column: 61, scope: !376)
!380 = !{!381, !346, i64 0}
!381 = !{!"option", !346, i64 0, !358, i64 8, !346, i64 16, !358, i64 24}
!382 = !DILocation(line: 117, column: 4, scope: !376)
!383 = !DILocation(line: 118, column: 8, scope: !384)
!384 = distinct !DILexicalBlock(scope: !376, file: !1, line: 118, column: 8)
!385 = !DILocation(line: 118, column: 8, scope: !376)
!386 = !DILocation(line: 119, column: 15, scope: !384)
!387 = !DILocation(line: 119, column: 6, scope: !384)
!388 = !DILocation(line: 120, column: 4, scope: !376)
!389 = !DILocation(line: 121, column: 4, scope: !376)
!390 = !DILocation(line: 123, column: 4, scope: !376)
!391 = !DILocation(line: 124, column: 4, scope: !376)
!392 = !DILocation(line: 125, column: 4, scope: !376)
!393 = !DILocation(line: 128, column: 17, scope: !376)
!394 = !DILocation(line: 128, column: 25, scope: !376)
!395 = !DILocation(line: 128, column: 4, scope: !376)
!396 = !DILocation(line: 130, column: 4, scope: !376)
!397 = !DILocation(line: 131, column: 4, scope: !376)
!398 = !DILocation(line: 132, column: 4, scope: !376)
!399 = !DILocation(line: 138, column: 46, scope: !376)
!400 = !DILocation(line: 138, column: 38, scope: !376)
!401 = !DILocation(line: 138, column: 54, scope: !376)
!402 = !DILocation(line: 138, column: 30, scope: !403)
!403 = !DILexicalBlockFile(scope: !376, file: !1, discriminator: 1)
!404 = !DILocation(line: 139, column: 4, scope: !376)
!405 = !DILocation(line: 140, column: 4, scope: !376)
!406 = !DILocation(line: 142, column: 42, scope: !376)
!407 = !DILocation(line: 142, column: 34, scope: !376)
!408 = !DILocation(line: 142, column: 50, scope: !376)
!409 = !DILocation(line: 142, column: 26, scope: !403)
!410 = !DILocation(line: 143, column: 4, scope: !376)
!411 = !DILocation(line: 144, column: 4, scope: !376)
!412 = !DILocation(line: 146, column: 13, scope: !376)
!413 = !DILocation(line: 148, column: 11, scope: !376)
!414 = !DILocation(line: 148, column: 18, scope: !376)
!415 = !DILocation(line: 148, column: 6, scope: !376)
!416 = !DILocation(line: 146, column: 4, scope: !376)
!417 = !DILocation(line: 149, column: 4, scope: !376)
!418 = !DILocation(line: 150, column: 4, scope: !376)
!419 = !DILocation(line: 151, column: 4, scope: !376)
!420 = !DILocation(line: 154, column: 13, scope: !376)
!421 = !DILocation(line: 154, column: 4, scope: !376)
!422 = !DILocation(line: 157, column: 2, scope: !376)
!423 = !DILocation(line: 161, column: 7, scope: !424)
!424 = distinct !DILexicalBlock(scope: !30, file: !1, line: 161, column: 7)
!425 = !DILocation(line: 161, column: 14, scope: !424)
!426 = !DILocation(line: 161, column: 7, scope: !30)
!427 = !DILocation(line: 163, column: 7, scope: !428)
!428 = distinct !DILexicalBlock(scope: !424, file: !1, line: 162, column: 5)
!429 = !DILocation(line: 164, column: 7, scope: !428)
!430 = !DILocation(line: 165, column: 7, scope: !428)
!431 = !DILocation(line: 169, column: 48, scope: !432)
!432 = distinct !DILexicalBlock(scope: !424, file: !1, line: 168, column: 5)
!433 = !DILocation(line: 169, column: 40, scope: !432)
!434 = !DILocation(line: 169, column: 62, scope: !432)
!435 = !DILocation(line: 169, column: 32, scope: !436)
!436 = !DILexicalBlockFile(scope: !432, file: !1, discriminator: 1)
!437 = !DILocation(line: 170, column: 35, scope: !432)
!438 = !DILocation(line: 170, column: 30, scope: !432)
!439 = !DILocation(line: 170, column: 7, scope: !432)
!440 = !DILocation(line: 173, column: 23, scope: !441)
!441 = distinct !DILexicalBlock(scope: !30, file: !1, line: 173, column: 7)
!442 = !DILocation(line: 173, column: 7, scope: !30)
!443 = !DILocation(line: 176, column: 2, scope: !444)
!444 = distinct !DILexicalBlock(scope: !441, file: !1, line: 174, column: 5)
!445 = !DILocation(line: 177, column: 7, scope: !444)
!446 = !DILocation(line: 178, column: 5, scope: !444)
!447 = !DILocation(line: 180, column: 20, scope: !441)
!448 = !DILocation(line: 184, column: 3, scope: !30)
!449 = !DILocation(line: 187, column: 25, scope: !450)
!450 = distinct !DILexicalBlock(scope: !30, file: !1, line: 185, column: 5)
!451 = !DILocation(line: 187, column: 7, scope: !450)
!452 = !DILocation(line: 188, column: 7, scope: !450)
!453 = !DILocation(line: 190, column: 16, scope: !450)
!454 = !DILocation(line: 190, column: 7, scope: !450)
!455 = !DILocation(line: 191, column: 7, scope: !450)
!456 = !DILocation(line: 195, column: 16, scope: !450)
!457 = !DILocation(line: 195, column: 7, scope: !450)
!458 = !DILocation(line: 196, column: 7, scope: !450)
!459 = !DILocation(line: 198, column: 16, scope: !450)
!460 = !DILocation(line: 198, column: 48, scope: !450)
!461 = !DILocation(line: 198, column: 7, scope: !462)
!462 = !DILexicalBlockFile(scope: !450, file: !1, discriminator: 1)
!463 = !DILocation(line: 199, column: 5, scope: !450)
!464 = !DILocation(line: 202, column: 3, scope: !30)
!465 = !DILocation(line: 203, column: 3, scope: !30)
!466 = !DILocation(line: 204, column: 3, scope: !30)
!467 = !DILocation(line: 206, column: 20, scope: !468)
!468 = distinct !DILexicalBlock(scope: !30, file: !1, line: 206, column: 7)
!469 = !DILocation(line: 206, column: 7, scope: !30)
!470 = !DILocation(line: 207, column: 5, scope: !468)
!471 = !DILocation(line: 208, column: 3, scope: !30)
!472 = !DILocation(line: 43, scope: !54)
!473 = !DILocation(line: 42, column: 12, scope: !54)
!474 = !DILocation(line: 44, column: 14, scope: !475)
!475 = distinct !DILexicalBlock(scope: !54, file: !1, line: 44, column: 7)
!476 = !DILocation(line: 44, column: 7, scope: !54)
!477 = !DILocation(line: 45, column: 14, scope: !475)
!478 = !DILocation(line: 45, column: 65, scope: !475)
!479 = !DILocation(line: 45, column: 5, scope: !475)
!480 = !DILocation(line: 49, column: 29, scope: !481)
!481 = distinct !DILexicalBlock(scope: !475, file: !1, line: 47, column: 5)
!482 = !DILocation(line: 48, column: 7, scope: !481)
!483 = !DILocation(line: 50, column: 7, scope: !481)
!484 = !DILocation(line: 54, column: 7, scope: !481)
!485 = !DILocation(line: 61, column: 7, scope: !481)
!486 = !DILocation(line: 63, column: 3, scope: !54)
!487 = !DILocation(line: 40, scope: !79)
!488 = !DILocation(line: 39, column: 31, scope: !79)
!489 = !DILocation(line: 51, column: 13, scope: !490)
!490 = distinct !DILexicalBlock(scope: !79, file: !76, line: 51, column: 7)
!491 = !DILocation(line: 51, column: 7, scope: !79)
!492 = !DILocation(line: 55, column: 14, scope: !493)
!493 = distinct !DILexicalBlock(scope: !490, file: !76, line: 52, column: 5)
!494 = !DILocation(line: 54, column: 7, scope: !493)
!495 = !DILocation(line: 56, column: 7, scope: !493)
!496 = !DILocation(line: 59, column: 11, scope: !79)
!497 = !DILocation(line: 46, column: 15, scope: !79)
!498 = !DILocation(line: 60, column: 17, scope: !79)
!499 = !DILocation(line: 60, column: 33, scope: !500)
!500 = !DILexicalBlockFile(scope: !79, file: !76, discriminator: 1)
!501 = !DILocation(line: 60, column: 11, scope: !79)
!502 = !DILocation(line: 47, column: 15, scope: !79)
!503 = !DILocation(line: 61, column: 12, scope: !504)
!504 = distinct !DILexicalBlock(scope: !79, file: !76, line: 61, column: 7)
!505 = !DILocation(line: 61, column: 20, scope: !504)
!506 = !DILocation(line: 61, column: 25, scope: !504)
!507 = !DILocation(line: 61, column: 28, scope: !508)
!508 = !DILexicalBlockFile(scope: !504, file: !76, discriminator: 1)
!509 = !DILocation(line: 61, column: 61, scope: !508)
!510 = !DILocation(line: 61, column: 7, scope: !508)
!511 = !DILocation(line: 64, column: 11, scope: !512)
!512 = distinct !DILexicalBlock(scope: !513, file: !76, line: 64, column: 11)
!513 = distinct !DILexicalBlock(scope: !504, file: !76, line: 62, column: 5)
!514 = !DILocation(line: 64, column: 36, scope: !512)
!515 = !DILocation(line: 64, column: 11, scope: !513)
!516 = !DILocation(line: 66, column: 24, scope: !517)
!517 = distinct !DILexicalBlock(scope: !512, file: !76, line: 65, column: 9)
!518 = !DILocation(line: 70, column: 41, scope: !517)
!519 = !DILocation(line: 72, column: 9, scope: !517)
!520 = !DILocation(line: 84, column: 16, scope: !79)
!521 = !DILocation(line: 90, column: 27, scope: !79)
!522 = !DILocation(line: 92, column: 1, scope: !79)
!523 = !DILocation(line: 66, scope: !96)
!524 = !DILocation(line: 62, column: 24, scope: !96)
!525 = !DILocation(line: 63, column: 30, scope: !96)
!526 = !DILocation(line: 63, column: 56, scope: !96)
!527 = !DILocation(line: 64, column: 30, scope: !96)
!528 = !DILocation(line: 65, column: 39, scope: !96)
!529 = !DILocation(line: 65, column: 55, scope: !96)
!530 = !DILocation(line: 67, column: 7, scope: !531)
!531 = distinct !DILexicalBlock(scope: !96, file: !89, line: 67, column: 7)
!532 = !DILocation(line: 67, column: 7, scope: !96)
!533 = !DILocation(line: 68, column: 5, scope: !531)
!534 = !DILocation(line: 70, column: 5, scope: !531)
!535 = !DILocation(line: 84, column: 3, scope: !96)
!536 = !DILocation(line: 86, column: 3, scope: !96)
!537 = !DILocation(line: 95, column: 3, scope: !96)
!538 = !DILocation(line: 99, column: 7, scope: !539)
!539 = distinct !DILexicalBlock(scope: !96, file: !89, line: 96, column: 5)
!540 = !DILocation(line: 102, column: 47, scope: !539)
!541 = !DILocation(line: 102, column: 7, scope: !539)
!542 = !DILocation(line: 103, column: 7, scope: !539)
!543 = !DILocation(line: 106, column: 54, scope: !539)
!544 = !DILocation(line: 106, column: 66, scope: !539)
!545 = !DILocation(line: 106, column: 7, scope: !539)
!546 = !DILocation(line: 107, column: 7, scope: !539)
!547 = !DILocation(line: 111, column: 16, scope: !539)
!548 = !DILocation(line: 111, column: 28, scope: !539)
!549 = !DILocation(line: 111, column: 40, scope: !539)
!550 = !DILocation(line: 110, column: 7, scope: !539)
!551 = !DILocation(line: 112, column: 7, scope: !539)
!552 = !DILocation(line: 118, column: 16, scope: !539)
!553 = !DILocation(line: 118, column: 28, scope: !539)
!554 = !DILocation(line: 118, column: 40, scope: !539)
!555 = !DILocation(line: 118, column: 52, scope: !539)
!556 = !DILocation(line: 117, column: 7, scope: !539)
!557 = !DILocation(line: 119, column: 7, scope: !539)
!558 = !DILocation(line: 125, column: 16, scope: !539)
!559 = !DILocation(line: 125, column: 28, scope: !539)
!560 = !DILocation(line: 125, column: 40, scope: !539)
!561 = !DILocation(line: 125, column: 52, scope: !539)
!562 = !DILocation(line: 125, column: 64, scope: !539)
!563 = !DILocation(line: 124, column: 7, scope: !539)
!564 = !DILocation(line: 126, column: 7, scope: !539)
!565 = !DILocation(line: 132, column: 16, scope: !539)
!566 = !DILocation(line: 132, column: 28, scope: !539)
!567 = !DILocation(line: 132, column: 40, scope: !539)
!568 = !DILocation(line: 132, column: 52, scope: !539)
!569 = !DILocation(line: 132, column: 64, scope: !539)
!570 = !DILocation(line: 133, column: 16, scope: !539)
!571 = !DILocation(line: 131, column: 7, scope: !539)
!572 = !DILocation(line: 134, column: 7, scope: !539)
!573 = !DILocation(line: 140, column: 16, scope: !539)
!574 = !DILocation(line: 140, column: 28, scope: !539)
!575 = !DILocation(line: 140, column: 40, scope: !539)
!576 = !DILocation(line: 140, column: 52, scope: !539)
!577 = !DILocation(line: 140, column: 64, scope: !539)
!578 = !DILocation(line: 141, column: 16, scope: !539)
!579 = !DILocation(line: 141, column: 28, scope: !539)
!580 = !DILocation(line: 139, column: 7, scope: !539)
!581 = !DILocation(line: 142, column: 7, scope: !539)
!582 = !DILocation(line: 149, column: 17, scope: !539)
!583 = !DILocation(line: 149, column: 29, scope: !539)
!584 = !DILocation(line: 149, column: 41, scope: !539)
!585 = !DILocation(line: 149, column: 53, scope: !539)
!586 = !DILocation(line: 149, column: 65, scope: !539)
!587 = !DILocation(line: 150, column: 17, scope: !539)
!588 = !DILocation(line: 150, column: 29, scope: !539)
!589 = !DILocation(line: 150, column: 41, scope: !539)
!590 = !DILocation(line: 147, column: 7, scope: !539)
!591 = !DILocation(line: 151, column: 7, scope: !539)
!592 = !DILocation(line: 158, column: 16, scope: !539)
!593 = !DILocation(line: 158, column: 28, scope: !539)
!594 = !DILocation(line: 158, column: 40, scope: !539)
!595 = !DILocation(line: 158, column: 52, scope: !539)
!596 = !DILocation(line: 158, column: 64, scope: !539)
!597 = !DILocation(line: 159, column: 16, scope: !539)
!598 = !DILocation(line: 159, column: 28, scope: !539)
!599 = !DILocation(line: 159, column: 40, scope: !539)
!600 = !DILocation(line: 159, column: 52, scope: !539)
!601 = !DILocation(line: 156, column: 7, scope: !539)
!602 = !DILocation(line: 160, column: 7, scope: !539)
!603 = !DILocation(line: 169, column: 17, scope: !539)
!604 = !DILocation(line: 169, column: 29, scope: !539)
!605 = !DILocation(line: 169, column: 41, scope: !539)
!606 = !DILocation(line: 169, column: 53, scope: !539)
!607 = !DILocation(line: 169, column: 65, scope: !539)
!608 = !DILocation(line: 170, column: 17, scope: !539)
!609 = !DILocation(line: 170, column: 29, scope: !539)
!610 = !DILocation(line: 170, column: 41, scope: !539)
!611 = !DILocation(line: 170, column: 53, scope: !539)
!612 = !DILocation(line: 167, column: 7, scope: !539)
!613 = !DILocation(line: 171, column: 7, scope: !539)
!614 = !DILocation(line: 173, column: 1, scope: !96)
!615 = !DILocation(line: 183, scope: !166)
!616 = !DILocation(line: 180, column: 23, scope: !166)
!617 = !DILocation(line: 181, column: 29, scope: !166)
!618 = !DILocation(line: 181, column: 55, scope: !166)
!619 = !DILocation(line: 182, column: 29, scope: !166)
!620 = !DILocation(line: 182, column: 59, scope: !166)
!621 = !DILocation(line: 184, column: 10, scope: !166)
!622 = !DILocation(line: 186, column: 8, scope: !623)
!623 = distinct !DILexicalBlock(scope: !166, file: !89, line: 186, column: 3)
!624 = !DILocation(line: 186, column: 23, scope: !625)
!625 = !DILexicalBlockFile(scope: !626, file: !89, discriminator: 1)
!626 = distinct !DILexicalBlock(scope: !623, file: !89, line: 186, column: 3)
!627 = !DILocation(line: 186, column: 3, scope: !625)
!628 = !DILocation(line: 186, column: 52, scope: !629)
!629 = !DILexicalBlockFile(scope: !626, file: !89, discriminator: 3)
!630 = !DILocation(line: 188, column: 3, scope: !166)
!631 = !DILocation(line: 189, column: 1, scope: !166)
!632 = !DILocation(line: 199, scope: !176)
!633 = !DILocation(line: 201, column: 15, scope: !176)
!634 = !DILocation(line: 196, column: 23, scope: !176)
!635 = !DILocation(line: 197, column: 29, scope: !176)
!636 = !DILocation(line: 197, column: 55, scope: !176)
!637 = !DILocation(line: 198, column: 29, scope: !176)
!638 = !DILocation(line: 198, column: 46, scope: !176)
!639 = !DILocation(line: 201, column: 3, scope: !176)
!640 = !DILocation(line: 200, column: 10, scope: !176)
!641 = !DILocation(line: 205, column: 35, scope: !642)
!642 = !DILexicalBlockFile(scope: !643, file: !89, discriminator: 1)
!643 = distinct !DILexicalBlock(scope: !644, file: !89, line: 203, column: 3)
!644 = distinct !DILexicalBlock(scope: !176, file: !89, line: 203, column: 3)
!645 = !DILocation(line: 205, column: 35, scope: !646)
!646 = !DILexicalBlockFile(scope: !643, file: !89, discriminator: 2)
!647 = !DILocation(line: 205, column: 35, scope: !648)
!648 = !DILexicalBlockFile(scope: !643, file: !89, discriminator: 3)
!649 = !DILocation(line: 205, column: 10, scope: !643)
!650 = !DILocation(line: 205, column: 35, scope: !651)
!651 = !DILexicalBlockFile(scope: !643, file: !89, discriminator: 4)
!652 = !DILocation(line: 205, column: 14, scope: !651)
!653 = !DILocation(line: 205, column: 33, scope: !651)
!654 = !DILocation(line: 205, column: 67, scope: !651)
!655 = !DILocation(line: 203, column: 3, scope: !656)
!656 = !DILexicalBlockFile(scope: !644, file: !89, discriminator: 1)
!657 = !DILocation(line: 206, column: 17, scope: !643)
!658 = !DILocation(line: 204, column: 18, scope: !643)
!659 = !DILocation(line: 209, column: 20, scope: !176)
!660 = !DILocation(line: 208, column: 3, scope: !176)
!661 = !DILocation(line: 210, column: 1, scope: !176)
!662 = !DILocation(line: 230, scope: !197)
!663 = !DILocation(line: 201, column: 15, scope: !176, inlinedAt: !664)
!664 = distinct !DILocation(line: 234, column: 3, scope: !197)
!665 = !DILocation(line: 231, column: 11, scope: !197)
!666 = !DILocation(line: 227, column: 20, scope: !197)
!667 = !DILocation(line: 228, column: 26, scope: !197)
!668 = !DILocation(line: 228, column: 52, scope: !197)
!669 = !DILocation(line: 229, column: 26, scope: !197)
!670 = !DILocation(line: 231, column: 3, scope: !197)
!671 = !DILocation(line: 233, column: 3, scope: !197)
!672 = !DILocation(line: 196, column: 23, scope: !176, inlinedAt: !664)
!673 = !DILocation(line: 197, column: 29, scope: !176, inlinedAt: !664)
!674 = !DILocation(line: 197, column: 55, scope: !176, inlinedAt: !664)
!675 = !DILocation(line: 198, column: 29, scope: !176, inlinedAt: !664)
!676 = !DILocation(line: 201, column: 3, scope: !176, inlinedAt: !664)
!677 = !DILocation(line: 200, column: 10, scope: !176, inlinedAt: !664)
!678 = !DILocation(line: 205, column: 35, scope: !642, inlinedAt: !664)
!679 = !DILocation(line: 205, column: 35, scope: !646, inlinedAt: !664)
!680 = !DILocation(line: 205, column: 35, scope: !648, inlinedAt: !664)
!681 = !DILocation(line: 205, column: 10, scope: !643, inlinedAt: !664)
!682 = !DILocation(line: 234, column: 3, scope: !197)
!683 = !DILocation(line: 205, column: 35, scope: !651, inlinedAt: !664)
!684 = !DILocation(line: 205, column: 14, scope: !651, inlinedAt: !664)
!685 = !DILocation(line: 205, column: 33, scope: !651, inlinedAt: !664)
!686 = !DILocation(line: 205, column: 67, scope: !651, inlinedAt: !664)
!687 = !DILocation(line: 203, column: 3, scope: !656, inlinedAt: !664)
!688 = !DILocation(line: 206, column: 17, scope: !643, inlinedAt: !664)
!689 = !DILocation(line: 204, column: 18, scope: !643, inlinedAt: !664)
!690 = !DILocation(line: 209, column: 20, scope: !176, inlinedAt: !664)
!691 = !DILocation(line: 208, column: 3, scope: !176, inlinedAt: !664)
!692 = !DILocation(line: 210, column: 1, scope: !176, inlinedAt: !664)
!693 = !DILocation(line: 235, column: 3, scope: !197)
!694 = !DILocation(line: 236, column: 1, scope: !197)
!695 = !DILocation(line: 240, scope: !211)
!696 = !DILocation(line: 245, column: 3, scope: !211)
!697 = !DILocation(line: 251, column: 3, scope: !211)
!698 = !DILocation(line: 257, column: 10, scope: !211)
!699 = !DILocation(line: 256, column: 3, scope: !211)
!700 = !DILocation(line: 258, column: 1, scope: !211)
