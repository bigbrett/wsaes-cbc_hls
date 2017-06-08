; ModuleID = '/home/brett/Thesis/Vivado_WS/aescbc/solution1/.autopilot/db/a.g.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aes_context = type { [32 x i8], [32 x i8], [32 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@aescbc.zeros = internal constant [16 x i8] zeroinitializer, align 16 ; [#uses=1 type=[16 x i8]*]
@aescbc.lastbuf = internal global [16 x i8] zeroinitializer, align 16 ; [#uses=2 type=[16 x i8]*]
@aescbc.iv = internal global [16 x i8] zeroinitializer, align 16 ; [#uses=2 type=[16 x i8]*]
@aescbc.xorv = internal global [16 x i8] zeroinitializer, align 16 ; [#uses=5 type=[16 x i8]*]
@aescbc.key = internal global [32 x i8] zeroinitializer, align 16 ; [#uses=2 type=[32 x i8]*]
@aescbc.ctx = internal global %struct.aes_context zeroinitializer, align 1 ; [#uses=3 type=%struct.aes_context*]
@.str2 = private unnamed_addr constant [17 x i8] c"loop_dataoutclr0\00", align 1 ; [#uses=1 type=[17 x i8]*]
@.str3 = private unnamed_addr constant [15 x i8] c"loop_xorvreset\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str4 = private unnamed_addr constant [11 x i8] c"loop_setiv\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str5 = private unnamed_addr constant [17 x i8] c"loop_dataoutclr1\00", align 1 ; [#uses=1 type=[17 x i8]*]
@.str6 = private unnamed_addr constant [12 x i8] c"loop_setkey\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str7 = private unnamed_addr constant [17 x i8] c"loop_dataoutclr2\00", align 1 ; [#uses=1 type=[17 x i8]*]
@_IO_2_1_stdin_ = external global %struct.aes_context ; [#uses=0 type=%struct.aes_context*]
@_IO_2_1_stdout_ = external global %struct.aes_context ; [#uses=0 type=%struct.aes_context*]
@_IO_2_1_stderr_ = external global %struct.aes_context ; [#uses=0 type=%struct.aes_context*]
@sys_nerr = external global i32                   ; [#uses=0 type=i32*]
@sbox = internal constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 16 ; [#uses=17 type=[256 x i8]*]
@sboxinv = internal constant [256 x i8] c"R\09j\D506\A58\BF@\A3\9E\81\F3\D7\FB|\E39\82\9B/\FF\874\8ECD\C4\DE\E9\CBT{\942\A6\C2#=\EEL\95\0BB\FA\C3N\08.\A1f(\D9$\B2v[\A2Im\8B\D1%r\F8\F6d\86h\98\16\D4\A4\5C\CC]e\B6\92lpHP\FD\ED\B9\DA^\15FW\A7\8D\9D\84\90\D8\AB\00\8C\BC\D3\0A\F7\E4X\05\B8\B3E\06\D0,\1E\8F\CA?\0F\02\C1\AF\BD\03\01\13\8Ak:\91\11AOg\DC\EA\97\F2\CF\CE\F0\B4\E6s\96\ACt\22\E7\AD5\85\E2\F97\E8\1Cu\DFnG\F1\1Aq\1D)\C5\89o\B7b\0E\AA\18\BE\1B\FCV>K\C6\D2y \9A\DB\C0\FEx\CDZ\F4\1F\DD\A83\88\07\C71\B1\12\10Y'\80\EC_`Q\7F\A9\19\B5J\0D-\E5z\9F\93\C9\9C\EF\A0\E0;M\AE*\F5\B0\C8\EB\BB<\83S\99a\17+\04~\BAw\D6&\E1i\14cU!\0C}", align 16 ; [#uses=1 type=[256 x i8]*]

; [#uses=0]
define void @aescbc(i3 zeroext %mode, i8* %data_in, i8* %data_out) nounwind uwtable {
  %1 = alloca i3, align 1                         ; [#uses=3 type=i3*]
  %2 = alloca i8*, align 8                        ; [#uses=7 type=i8**]
  %3 = alloca i8*, align 8                        ; [#uses=8 type=i8**]
  %buf = alloca [16 x i8], align 16               ; [#uses=12 type=[16 x i8]*]
  %i = alloca i8, align 1                         ; [#uses=89 type=i8*]
  store i3 %mode, i3* %1, align 1
  call void @llvm.dbg.declare(metadata !{i3* %1}, metadata !149), !dbg !150 ; [debug line = 8:26] [debug variable = mode]
  store i8* %data_in, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !151), !dbg !152 ; [debug line = 9:12] [debug variable = data_in]
  store i8* %data_out, i8** %3, align 8
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !153), !dbg !154 ; [debug line = 10:12] [debug variable = data_out]
  %4 = load i8** %3, align 8, !dbg !155           ; [#uses=1 type=i8*] [debug line = 11:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %4, i32 16) nounwind, !dbg !155 ; [debug line = 11:2]
  %5 = load i8** %2, align 8, !dbg !157           ; [#uses=1 type=i8*] [debug line = 11:38]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %5, i32 32) nounwind, !dbg !157 ; [debug line = 11:38]
  %6 = load i8** %2, align 8, !dbg !158           ; [#uses=1 type=i8*] [debug line = 14:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %6, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 32, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !158 ; [debug line = 14:1]
  %7 = load i8** %3, align 8, !dbg !159           ; [#uses=1 type=i8*] [debug line = 15:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %7, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !159 ; [debug line = 15:1]
  %8 = load i3* %1, align 1, !dbg !160            ; [#uses=1 type=i3] [debug line = 16:1]
  %9 = zext i3 %8 to i32, !dbg !160               ; [#uses=1 type=i32] [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %9, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !160 ; [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !161 ; [debug line = 17:1]
  call void (...)* @_ssdm_SpecConstant(i8* getelementptr inbounds ([16 x i8]* @aescbc.zeros, i32 0, i32 0)) nounwind, !dbg !162 ; [debug line = 20:1]
  call void @llvm.dbg.declare(metadata !{[16 x i8]* %buf}, metadata !163), !dbg !164 ; [debug line = 21:10] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !165), !dbg !166 ; [debug line = 27:13] [debug variable = i]
  %10 = load i3* %1, align 1, !dbg !167           ; [#uses=1 type=i3] [debug line = 29:5]
  %11 = zext i3 %10 to i32, !dbg !167             ; [#uses=1 type=i32] [debug line = 29:5]
  switch i32 %11, label %278 [
    i32 0, label %12
    i32 1, label %44
    i32 2, label %120
    i32 3, label %212
    i32 4, label %245
  ], !dbg !167                                    ; [debug line = 29:5]

; <label>:12                                      ; preds = %0
  br label %13, !dbg !168                         ; [debug line = 29:20]

; <label>:13                                      ; preds = %12
  store i8 0, i8* %i, align 1, !dbg !170          ; [debug line = 33:7]
  br label %14, !dbg !170                         ; [debug line = 33:7]

; <label>:14                                      ; preds = %23, %13
  %15 = load i8* %i, align 1, !dbg !170           ; [#uses=1 type=i8] [debug line = 33:7]
  %16 = zext i8 %15 to i32, !dbg !170             ; [#uses=1 type=i32] [debug line = 33:7]
  %17 = icmp slt i32 %16, 16, !dbg !170           ; [#uses=1 type=i1] [debug line = 33:7]
  br i1 %17, label %18, label %26, !dbg !170      ; [debug line = 33:7]

; <label>:18                                      ; preds = %14
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([17 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !172 ; [debug line = 34:7]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([17 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !172 ; [debug line = 34:7]
  %19 = load i8* %i, align 1, !dbg !172           ; [#uses=1 type=i8] [debug line = 34:7]
  %20 = zext i8 %19 to i64, !dbg !172             ; [#uses=1 type=i64] [debug line = 34:7]
  %21 = load i8** %3, align 8, !dbg !172          ; [#uses=1 type=i8*] [debug line = 34:7]
  %22 = getelementptr inbounds i8* %21, i64 %20, !dbg !172 ; [#uses=1 type=i8*] [debug line = 34:7]
  store i8 0, i8* %22, align 1, !dbg !172         ; [debug line = 34:7]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([17 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !174 ; [debug line = 34:21]
  br label %23, !dbg !174                         ; [debug line = 34:21]

; <label>:23                                      ; preds = %18
  %24 = load i8* %i, align 1, !dbg !175           ; [#uses=1 type=i8] [debug line = 33:18]
  %25 = add i8 %24, 1, !dbg !175                  ; [#uses=1 type=i8] [debug line = 33:18]
  store i8 %25, i8* %i, align 1, !dbg !175        ; [debug line = 33:18]
  br label %14, !dbg !175                         ; [debug line = 33:18]

; <label>:26                                      ; preds = %14
  br label %27, !dbg !176                         ; [debug line = 34:21]

; <label>:27                                      ; preds = %26
  store i8 0, i8* %i, align 1, !dbg !177          ; [debug line = 37:7]
  br label %28, !dbg !177                         ; [debug line = 37:7]

; <label>:28                                      ; preds = %40, %27
  %29 = load i8* %i, align 1, !dbg !177           ; [#uses=1 type=i8] [debug line = 37:7]
  %30 = zext i8 %29 to i32, !dbg !177             ; [#uses=1 type=i32] [debug line = 37:7]
  %31 = icmp slt i32 %30, 16, !dbg !177           ; [#uses=1 type=i1] [debug line = 37:7]
  br i1 %31, label %32, label %43, !dbg !177      ; [debug line = 37:7]

; <label>:32                                      ; preds = %28
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !179 ; [debug line = 38:7]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !179 ; [debug line = 38:7]
  %33 = load i8* %i, align 1, !dbg !179           ; [#uses=1 type=i8] [debug line = 38:7]
  %34 = zext i8 %33 to i64, !dbg !179             ; [#uses=1 type=i64] [debug line = 38:7]
  %35 = getelementptr inbounds [16 x i8]* @aescbc.iv, i32 0, i64 %34, !dbg !179 ; [#uses=1 type=i8*] [debug line = 38:7]
  %36 = load i8* %35, align 1, !dbg !179          ; [#uses=1 type=i8] [debug line = 38:7]
  %37 = load i8* %i, align 1, !dbg !179           ; [#uses=1 type=i8] [debug line = 38:7]
  %38 = zext i8 %37 to i64, !dbg !179             ; [#uses=1 type=i64] [debug line = 38:7]
  %39 = getelementptr inbounds [16 x i8]* @aescbc.xorv, i32 0, i64 %38, !dbg !179 ; [#uses=1 type=i8*] [debug line = 38:7]
  store i8 %36, i8* %39, align 1, !dbg !179       ; [debug line = 38:7]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !181 ; [debug line = 38:21]
  br label %40, !dbg !181                         ; [debug line = 38:21]

; <label>:40                                      ; preds = %32
  %41 = load i8* %i, align 1, !dbg !182           ; [#uses=1 type=i8] [debug line = 37:18]
  %42 = add i8 %41, 1, !dbg !182                  ; [#uses=1 type=i8] [debug line = 37:18]
  store i8 %42, i8* %i, align 1, !dbg !182        ; [debug line = 37:18]
  br label %28, !dbg !182                         ; [debug line = 37:18]

; <label>:43                                      ; preds = %28
  call void @aes_init(%struct.aes_context* @aescbc.ctx, i8* getelementptr inbounds ([32 x i8]* @aescbc.key, i32 0, i32 0)), !dbg !183 ; [debug line = 40:3]
  br label %278, !dbg !184                        ; [debug line = 41:6]

; <label>:44                                      ; preds = %0
  store i8 0, i8* %i, align 1, !dbg !185          ; [debug line = 45:10]
  br label %45, !dbg !185                         ; [debug line = 45:10]

; <label>:45                                      ; preds = %58, %44
  %46 = load i8* %i, align 1, !dbg !185           ; [#uses=1 type=i8] [debug line = 45:10]
  %47 = zext i8 %46 to i32, !dbg !185             ; [#uses=1 type=i32] [debug line = 45:10]
  %48 = icmp slt i32 %47, 16, !dbg !185           ; [#uses=1 type=i1] [debug line = 45:10]
  br i1 %48, label %49, label %61, !dbg !185      ; [debug line = 45:10]

; <label>:49                                      ; preds = %45
  %50 = load i8* %i, align 1, !dbg !187           ; [#uses=1 type=i8] [debug line = 46:7]
  %51 = zext i8 %50 to i64, !dbg !187             ; [#uses=1 type=i64] [debug line = 46:7]
  %52 = load i8** %2, align 8, !dbg !187          ; [#uses=1 type=i8*] [debug line = 46:7]
  %53 = getelementptr inbounds i8* %52, i64 %51, !dbg !187 ; [#uses=1 type=i8*] [debug line = 46:7]
  %54 = load i8* %53, align 1, !dbg !187          ; [#uses=1 type=i8] [debug line = 46:7]
  %55 = load i8* %i, align 1, !dbg !187           ; [#uses=1 type=i8] [debug line = 46:7]
  %56 = zext i8 %55 to i64, !dbg !187             ; [#uses=1 type=i64] [debug line = 46:7]
  %57 = getelementptr inbounds [16 x i8]* %buf, i32 0, i64 %56, !dbg !187 ; [#uses=1 type=i8*] [debug line = 46:7]
  store i8 %54, i8* %57, align 1, !dbg !187       ; [debug line = 46:7]
  br label %58, !dbg !187                         ; [debug line = 46:7]

; <label>:58                                      ; preds = %49
  %59 = load i8* %i, align 1, !dbg !188           ; [#uses=1 type=i8] [debug line = 45:21]
  %60 = add i8 %59, 1, !dbg !188                  ; [#uses=1 type=i8] [debug line = 45:21]
  store i8 %60, i8* %i, align 1, !dbg !188        ; [debug line = 45:21]
  br label %45, !dbg !188                         ; [debug line = 45:21]

; <label>:61                                      ; preds = %45
  store i8 0, i8* %i, align 1, !dbg !189          ; [debug line = 48:10]
  br label %62, !dbg !189                         ; [debug line = 48:10]

; <label>:62                                      ; preds = %82, %61
  %63 = load i8* %i, align 1, !dbg !189           ; [#uses=1 type=i8] [debug line = 48:10]
  %64 = zext i8 %63 to i32, !dbg !189             ; [#uses=1 type=i32] [debug line = 48:10]
  %65 = icmp slt i32 %64, 16, !dbg !189           ; [#uses=1 type=i1] [debug line = 48:10]
  br i1 %65, label %66, label %85, !dbg !189      ; [debug line = 48:10]

; <label>:66                                      ; preds = %62
  %67 = load i8* %i, align 1, !dbg !191           ; [#uses=1 type=i8] [debug line = 49:7]
  %68 = zext i8 %67 to i64, !dbg !191             ; [#uses=1 type=i64] [debug line = 49:7]
  %69 = getelementptr inbounds [16 x i8]* %buf, i32 0, i64 %68, !dbg !191 ; [#uses=1 type=i8*] [debug line = 49:7]
  %70 = load i8* %69, align 1, !dbg !191          ; [#uses=1 type=i8] [debug line = 49:7]
  %71 = zext i8 %70 to i32, !dbg !191             ; [#uses=1 type=i32] [debug line = 49:7]
  %72 = load i8* %i, align 1, !dbg !191           ; [#uses=1 type=i8] [debug line = 49:7]
  %73 = zext i8 %72 to i64, !dbg !191             ; [#uses=1 type=i64] [debug line = 49:7]
  %74 = getelementptr inbounds [16 x i8]* @aescbc.xorv, i32 0, i64 %73, !dbg !191 ; [#uses=1 type=i8*] [debug line = 49:7]
  %75 = load i8* %74, align 1, !dbg !191          ; [#uses=1 type=i8] [debug line = 49:7]
  %76 = zext i8 %75 to i32, !dbg !191             ; [#uses=1 type=i32] [debug line = 49:7]
  %77 = xor i32 %71, %76, !dbg !191               ; [#uses=1 type=i32] [debug line = 49:7]
  %78 = trunc i32 %77 to i8, !dbg !191            ; [#uses=1 type=i8] [debug line = 49:7]
  %79 = load i8* %i, align 1, !dbg !191           ; [#uses=1 type=i8] [debug line = 49:7]
  %80 = zext i8 %79 to i64, !dbg !191             ; [#uses=1 type=i64] [debug line = 49:7]
  %81 = getelementptr inbounds [16 x i8]* %buf, i32 0, i64 %80, !dbg !191 ; [#uses=1 type=i8*] [debug line = 49:7]
  store i8 %78, i8* %81, align 1, !dbg !191       ; [debug line = 49:7]
  br label %82, !dbg !191                         ; [debug line = 49:7]

; <label>:82                                      ; preds = %66
  %83 = load i8* %i, align 1, !dbg !192           ; [#uses=1 type=i8] [debug line = 48:21]
  %84 = add i8 %83, 1, !dbg !192                  ; [#uses=1 type=i8] [debug line = 48:21]
  store i8 %84, i8* %i, align 1, !dbg !192        ; [debug line = 48:21]
  br label %62, !dbg !192                         ; [debug line = 48:21]

; <label>:85                                      ; preds = %62
  %86 = getelementptr inbounds [16 x i8]* %buf, i32 0, i32 0, !dbg !193 ; [#uses=1 type=i8*] [debug line = 51:6]
  call void @aes_encrypt_ecb(%struct.aes_context* @aescbc.ctx, i8* %86), !dbg !193 ; [debug line = 51:6]
  store i8 0, i8* %i, align 1, !dbg !194          ; [debug line = 53:10]
  br label %87, !dbg !194                         ; [debug line = 53:10]

; <label>:87                                      ; preds = %99, %85
  %88 = load i8* %i, align 1, !dbg !194           ; [#uses=1 type=i8] [debug line = 53:10]
  %89 = zext i8 %88 to i32, !dbg !194             ; [#uses=1 type=i32] [debug line = 53:10]
  %90 = icmp slt i32 %89, 16, !dbg !194           ; [#uses=1 type=i1] [debug line = 53:10]
  br i1 %90, label %91, label %102, !dbg !194     ; [debug line = 53:10]

; <label>:91                                      ; preds = %87
  %92 = load i8* %i, align 1, !dbg !196           ; [#uses=1 type=i8] [debug line = 54:7]
  %93 = zext i8 %92 to i64, !dbg !196             ; [#uses=1 type=i64] [debug line = 54:7]
  %94 = getelementptr inbounds [16 x i8]* %buf, i32 0, i64 %93, !dbg !196 ; [#uses=1 type=i8*] [debug line = 54:7]
  %95 = load i8* %94, align 1, !dbg !196          ; [#uses=1 type=i8] [debug line = 54:7]
  %96 = load i8* %i, align 1, !dbg !196           ; [#uses=1 type=i8] [debug line = 54:7]
  %97 = zext i8 %96 to i64, !dbg !196             ; [#uses=1 type=i64] [debug line = 54:7]
  %98 = getelementptr inbounds [16 x i8]* @aescbc.xorv, i32 0, i64 %97, !dbg !196 ; [#uses=1 type=i8*] [debug line = 54:7]
  store i8 %95, i8* %98, align 1, !dbg !196       ; [debug line = 54:7]
  br label %99, !dbg !196                         ; [debug line = 54:7]

; <label>:99                                      ; preds = %91
  %100 = load i8* %i, align 1, !dbg !197          ; [#uses=1 type=i8] [debug line = 53:21]
  %101 = add i8 %100, 1, !dbg !197                ; [#uses=1 type=i8] [debug line = 53:21]
  store i8 %101, i8* %i, align 1, !dbg !197       ; [debug line = 53:21]
  br label %87, !dbg !197                         ; [debug line = 53:21]

; <label>:102                                     ; preds = %87
  store i8 0, i8* %i, align 1, !dbg !198          ; [debug line = 56:10]
  br label %103, !dbg !198                        ; [debug line = 56:10]

; <label>:103                                     ; preds = %116, %102
  %104 = load i8* %i, align 1, !dbg !198          ; [#uses=1 type=i8] [debug line = 56:10]
  %105 = zext i8 %104 to i32, !dbg !198           ; [#uses=1 type=i32] [debug line = 56:10]
  %106 = icmp slt i32 %105, 16, !dbg !198         ; [#uses=1 type=i1] [debug line = 56:10]
  br i1 %106, label %107, label %119, !dbg !198   ; [debug line = 56:10]

; <label>:107                                     ; preds = %103
  %108 = load i8* %i, align 1, !dbg !200          ; [#uses=1 type=i8] [debug line = 57:7]
  %109 = zext i8 %108 to i64, !dbg !200           ; [#uses=1 type=i64] [debug line = 57:7]
  %110 = getelementptr inbounds [16 x i8]* %buf, i32 0, i64 %109, !dbg !200 ; [#uses=1 type=i8*] [debug line = 57:7]
  %111 = load i8* %110, align 1, !dbg !200        ; [#uses=1 type=i8] [debug line = 57:7]
  %112 = load i8* %i, align 1, !dbg !200          ; [#uses=1 type=i8] [debug line = 57:7]
  %113 = zext i8 %112 to i64, !dbg !200           ; [#uses=1 type=i64] [debug line = 57:7]
  %114 = load i8** %3, align 8, !dbg !200         ; [#uses=1 type=i8*] [debug line = 57:7]
  %115 = getelementptr inbounds i8* %114, i64 %113, !dbg !200 ; [#uses=1 type=i8*] [debug line = 57:7]
  store i8 %111, i8* %115, align 1, !dbg !200     ; [debug line = 57:7]
  br label %116, !dbg !200                        ; [debug line = 57:7]

; <label>:116                                     ; preds = %107
  %117 = load i8* %i, align 1, !dbg !201          ; [#uses=1 type=i8] [debug line = 56:21]
  %118 = add i8 %117, 1, !dbg !201                ; [#uses=1 type=i8] [debug line = 56:21]
  store i8 %118, i8* %i, align 1, !dbg !201       ; [debug line = 56:21]
  br label %103, !dbg !201                        ; [debug line = 56:21]

; <label>:119                                     ; preds = %103
  br label %278, !dbg !202                        ; [debug line = 58:6]

; <label>:120                                     ; preds = %0
  store i8 0, i8* %i, align 1, !dbg !203          ; [debug line = 61:10]
  br label %121, !dbg !203                        ; [debug line = 61:10]

; <label>:121                                     ; preds = %134, %120
  %122 = load i8* %i, align 1, !dbg !203          ; [#uses=1 type=i8] [debug line = 61:10]
  %123 = zext i8 %122 to i32, !dbg !203           ; [#uses=1 type=i32] [debug line = 61:10]
  %124 = icmp slt i32 %123, 16, !dbg !203         ; [#uses=1 type=i1] [debug line = 61:10]
  br i1 %124, label %125, label %137, !dbg !203   ; [debug line = 61:10]

; <label>:125                                     ; preds = %121
  %126 = load i8* %i, align 1, !dbg !205          ; [#uses=1 type=i8] [debug line = 62:7]
  %127 = zext i8 %126 to i64, !dbg !205           ; [#uses=1 type=i64] [debug line = 62:7]
  %128 = load i8** %2, align 8, !dbg !205         ; [#uses=1 type=i8*] [debug line = 62:7]
  %129 = getelementptr inbounds i8* %128, i64 %127, !dbg !205 ; [#uses=1 type=i8*] [debug line = 62:7]
  %130 = load i8* %129, align 1, !dbg !205        ; [#uses=1 type=i8] [debug line = 62:7]
  %131 = load i8* %i, align 1, !dbg !205          ; [#uses=1 type=i8] [debug line = 62:7]
  %132 = zext i8 %131 to i64, !dbg !205           ; [#uses=1 type=i64] [debug line = 62:7]
  %133 = getelementptr inbounds [16 x i8]* %buf, i32 0, i64 %132, !dbg !205 ; [#uses=1 type=i8*] [debug line = 62:7]
  store i8 %130, i8* %133, align 1, !dbg !205     ; [debug line = 62:7]
  br label %134, !dbg !205                        ; [debug line = 62:7]

; <label>:134                                     ; preds = %125
  %135 = load i8* %i, align 1, !dbg !206          ; [#uses=1 type=i8] [debug line = 61:21]
  %136 = add i8 %135, 1, !dbg !206                ; [#uses=1 type=i8] [debug line = 61:21]
  store i8 %136, i8* %i, align 1, !dbg !206       ; [debug line = 61:21]
  br label %121, !dbg !206                        ; [debug line = 61:21]

; <label>:137                                     ; preds = %121
  store i8 0, i8* %i, align 1, !dbg !207          ; [debug line = 64:10]
  br label %138, !dbg !207                        ; [debug line = 64:10]

; <label>:138                                     ; preds = %150, %137
  %139 = load i8* %i, align 1, !dbg !207          ; [#uses=1 type=i8] [debug line = 64:10]
  %140 = zext i8 %139 to i32, !dbg !207           ; [#uses=1 type=i32] [debug line = 64:10]
  %141 = icmp slt i32 %140, 16, !dbg !207         ; [#uses=1 type=i1] [debug line = 64:10]
  br i1 %141, label %142, label %153, !dbg !207   ; [debug line = 64:10]

; <label>:142                                     ; preds = %138
  %143 = load i8* %i, align 1, !dbg !209          ; [#uses=1 type=i8] [debug line = 65:7]
  %144 = zext i8 %143 to i64, !dbg !209           ; [#uses=1 type=i64] [debug line = 65:7]
  %145 = getelementptr inbounds [16 x i8]* %buf, i32 0, i64 %144, !dbg !209 ; [#uses=1 type=i8*] [debug line = 65:7]
  %146 = load i8* %145, align 1, !dbg !209        ; [#uses=1 type=i8] [debug line = 65:7]
  %147 = load i8* %i, align 1, !dbg !209          ; [#uses=1 type=i8] [debug line = 65:7]
  %148 = zext i8 %147 to i64, !dbg !209           ; [#uses=1 type=i64] [debug line = 65:7]
  %149 = getelementptr inbounds [16 x i8]* @aescbc.lastbuf, i32 0, i64 %148, !dbg !209 ; [#uses=1 type=i8*] [debug line = 65:7]
  store i8 %146, i8* %149, align 1, !dbg !209     ; [debug line = 65:7]
  br label %150, !dbg !209                        ; [debug line = 65:7]

; <label>:150                                     ; preds = %142
  %151 = load i8* %i, align 1, !dbg !210          ; [#uses=1 type=i8] [debug line = 64:21]
  %152 = add i8 %151, 1, !dbg !210                ; [#uses=1 type=i8] [debug line = 64:21]
  store i8 %152, i8* %i, align 1, !dbg !210       ; [debug line = 64:21]
  br label %138, !dbg !210                        ; [debug line = 64:21]

; <label>:153                                     ; preds = %138
  %154 = getelementptr inbounds [16 x i8]* %buf, i32 0, i32 0, !dbg !211 ; [#uses=1 type=i8*] [debug line = 67:6]
  call void @aes_decrypt_ecb(%struct.aes_context* @aescbc.ctx, i8* %154), !dbg !211 ; [debug line = 67:6]
  store i8 0, i8* %i, align 1, !dbg !212          ; [debug line = 69:10]
  br label %155, !dbg !212                        ; [debug line = 69:10]

; <label>:155                                     ; preds = %175, %153
  %156 = load i8* %i, align 1, !dbg !212          ; [#uses=1 type=i8] [debug line = 69:10]
  %157 = zext i8 %156 to i32, !dbg !212           ; [#uses=1 type=i32] [debug line = 69:10]
  %158 = icmp slt i32 %157, 16, !dbg !212         ; [#uses=1 type=i1] [debug line = 69:10]
  br i1 %158, label %159, label %178, !dbg !212   ; [debug line = 69:10]

; <label>:159                                     ; preds = %155
  %160 = load i8* %i, align 1, !dbg !214          ; [#uses=1 type=i8] [debug line = 70:7]
  %161 = zext i8 %160 to i64, !dbg !214           ; [#uses=1 type=i64] [debug line = 70:7]
  %162 = getelementptr inbounds [16 x i8]* %buf, i32 0, i64 %161, !dbg !214 ; [#uses=1 type=i8*] [debug line = 70:7]
  %163 = load i8* %162, align 1, !dbg !214        ; [#uses=1 type=i8] [debug line = 70:7]
  %164 = zext i8 %163 to i32, !dbg !214           ; [#uses=1 type=i32] [debug line = 70:7]
  %165 = load i8* %i, align 1, !dbg !214          ; [#uses=1 type=i8] [debug line = 70:7]
  %166 = zext i8 %165 to i64, !dbg !214           ; [#uses=1 type=i64] [debug line = 70:7]
  %167 = getelementptr inbounds [16 x i8]* @aescbc.xorv, i32 0, i64 %166, !dbg !214 ; [#uses=1 type=i8*] [debug line = 70:7]
  %168 = load i8* %167, align 1, !dbg !214        ; [#uses=1 type=i8] [debug line = 70:7]
  %169 = zext i8 %168 to i32, !dbg !214           ; [#uses=1 type=i32] [debug line = 70:7]
  %170 = xor i32 %164, %169, !dbg !214            ; [#uses=1 type=i32] [debug line = 70:7]
  %171 = trunc i32 %170 to i8, !dbg !214          ; [#uses=1 type=i8] [debug line = 70:7]
  %172 = load i8* %i, align 1, !dbg !214          ; [#uses=1 type=i8] [debug line = 70:7]
  %173 = zext i8 %172 to i64, !dbg !214           ; [#uses=1 type=i64] [debug line = 70:7]
  %174 = getelementptr inbounds [16 x i8]* %buf, i32 0, i64 %173, !dbg !214 ; [#uses=1 type=i8*] [debug line = 70:7]
  store i8 %171, i8* %174, align 1, !dbg !214     ; [debug line = 70:7]
  br label %175, !dbg !214                        ; [debug line = 70:7]

; <label>:175                                     ; preds = %159
  %176 = load i8* %i, align 1, !dbg !215          ; [#uses=1 type=i8] [debug line = 69:21]
  %177 = add i8 %176, 1, !dbg !215                ; [#uses=1 type=i8] [debug line = 69:21]
  store i8 %177, i8* %i, align 1, !dbg !215       ; [debug line = 69:21]
  br label %155, !dbg !215                        ; [debug line = 69:21]

; <label>:178                                     ; preds = %155
  store i8 0, i8* %i, align 1, !dbg !216          ; [debug line = 72:10]
  br label %179, !dbg !216                        ; [debug line = 72:10]

; <label>:179                                     ; preds = %191, %178
  %180 = load i8* %i, align 1, !dbg !216          ; [#uses=1 type=i8] [debug line = 72:10]
  %181 = zext i8 %180 to i32, !dbg !216           ; [#uses=1 type=i32] [debug line = 72:10]
  %182 = icmp slt i32 %181, 16, !dbg !216         ; [#uses=1 type=i1] [debug line = 72:10]
  br i1 %182, label %183, label %194, !dbg !216   ; [debug line = 72:10]

; <label>:183                                     ; preds = %179
  %184 = load i8* %i, align 1, !dbg !218          ; [#uses=1 type=i8] [debug line = 73:7]
  %185 = zext i8 %184 to i64, !dbg !218           ; [#uses=1 type=i64] [debug line = 73:7]
  %186 = getelementptr inbounds [16 x i8]* @aescbc.lastbuf, i32 0, i64 %185, !dbg !218 ; [#uses=1 type=i8*] [debug line = 73:7]
  %187 = load i8* %186, align 1, !dbg !218        ; [#uses=1 type=i8] [debug line = 73:7]
  %188 = load i8* %i, align 1, !dbg !218          ; [#uses=1 type=i8] [debug line = 73:7]
  %189 = zext i8 %188 to i64, !dbg !218           ; [#uses=1 type=i64] [debug line = 73:7]
  %190 = getelementptr inbounds [16 x i8]* @aescbc.xorv, i32 0, i64 %189, !dbg !218 ; [#uses=1 type=i8*] [debug line = 73:7]
  store i8 %187, i8* %190, align 1, !dbg !218     ; [debug line = 73:7]
  br label %191, !dbg !218                        ; [debug line = 73:7]

; <label>:191                                     ; preds = %183
  %192 = load i8* %i, align 1, !dbg !219          ; [#uses=1 type=i8] [debug line = 72:21]
  %193 = add i8 %192, 1, !dbg !219                ; [#uses=1 type=i8] [debug line = 72:21]
  store i8 %193, i8* %i, align 1, !dbg !219       ; [debug line = 72:21]
  br label %179, !dbg !219                        ; [debug line = 72:21]

; <label>:194                                     ; preds = %179
  store i8 0, i8* %i, align 1, !dbg !220          ; [debug line = 75:10]
  br label %195, !dbg !220                        ; [debug line = 75:10]

; <label>:195                                     ; preds = %208, %194
  %196 = load i8* %i, align 1, !dbg !220          ; [#uses=1 type=i8] [debug line = 75:10]
  %197 = zext i8 %196 to i32, !dbg !220           ; [#uses=1 type=i32] [debug line = 75:10]
  %198 = icmp slt i32 %197, 16, !dbg !220         ; [#uses=1 type=i1] [debug line = 75:10]
  br i1 %198, label %199, label %211, !dbg !220   ; [debug line = 75:10]

; <label>:199                                     ; preds = %195
  %200 = load i8* %i, align 1, !dbg !222          ; [#uses=1 type=i8] [debug line = 76:7]
  %201 = zext i8 %200 to i64, !dbg !222           ; [#uses=1 type=i64] [debug line = 76:7]
  %202 = getelementptr inbounds [16 x i8]* %buf, i32 0, i64 %201, !dbg !222 ; [#uses=1 type=i8*] [debug line = 76:7]
  %203 = load i8* %202, align 1, !dbg !222        ; [#uses=1 type=i8] [debug line = 76:7]
  %204 = load i8* %i, align 1, !dbg !222          ; [#uses=1 type=i8] [debug line = 76:7]
  %205 = zext i8 %204 to i64, !dbg !222           ; [#uses=1 type=i64] [debug line = 76:7]
  %206 = load i8** %3, align 8, !dbg !222         ; [#uses=1 type=i8*] [debug line = 76:7]
  %207 = getelementptr inbounds i8* %206, i64 %205, !dbg !222 ; [#uses=1 type=i8*] [debug line = 76:7]
  store i8 %203, i8* %207, align 1, !dbg !222     ; [debug line = 76:7]
  br label %208, !dbg !222                        ; [debug line = 76:7]

; <label>:208                                     ; preds = %199
  %209 = load i8* %i, align 1, !dbg !223          ; [#uses=1 type=i8] [debug line = 75:21]
  %210 = add i8 %209, 1, !dbg !223                ; [#uses=1 type=i8] [debug line = 75:21]
  store i8 %210, i8* %i, align 1, !dbg !223       ; [debug line = 75:21]
  br label %195, !dbg !223                        ; [debug line = 75:21]

; <label>:211                                     ; preds = %195
  br label %278, !dbg !224                        ; [debug line = 77:6]

; <label>:212                                     ; preds = %0
  br label %213, !dbg !224                        ; [debug line = 77:6]

; <label>:213                                     ; preds = %212
  store i8 0, i8* %i, align 1, !dbg !225          ; [debug line = 81:7]
  br label %214, !dbg !225                        ; [debug line = 81:7]

; <label>:214                                     ; preds = %227, %213
  %215 = load i8* %i, align 1, !dbg !225          ; [#uses=1 type=i8] [debug line = 81:7]
  %216 = zext i8 %215 to i32, !dbg !225           ; [#uses=1 type=i32] [debug line = 81:7]
  %217 = icmp slt i32 %216, 16, !dbg !225         ; [#uses=1 type=i1] [debug line = 81:7]
  br i1 %217, label %218, label %230, !dbg !225   ; [debug line = 81:7]

; <label>:218                                     ; preds = %214
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !227 ; [debug line = 82:7]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !227 ; [debug line = 82:7]
  %219 = load i8* %i, align 1, !dbg !227          ; [#uses=1 type=i8] [debug line = 82:7]
  %220 = zext i8 %219 to i64, !dbg !227           ; [#uses=1 type=i64] [debug line = 82:7]
  %221 = load i8** %2, align 8, !dbg !227         ; [#uses=1 type=i8*] [debug line = 82:7]
  %222 = getelementptr inbounds i8* %221, i64 %220, !dbg !227 ; [#uses=1 type=i8*] [debug line = 82:7]
  %223 = load i8* %222, align 1, !dbg !227        ; [#uses=1 type=i8] [debug line = 82:7]
  %224 = load i8* %i, align 1, !dbg !227          ; [#uses=1 type=i8] [debug line = 82:7]
  %225 = zext i8 %224 to i64, !dbg !227           ; [#uses=1 type=i64] [debug line = 82:7]
  %226 = getelementptr inbounds [16 x i8]* @aescbc.iv, i32 0, i64 %225, !dbg !227 ; [#uses=1 type=i8*] [debug line = 82:7]
  store i8 %223, i8* %226, align 1, !dbg !227     ; [debug line = 82:7]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !229 ; [debug line = 82:24]
  br label %227, !dbg !229                        ; [debug line = 82:24]

; <label>:227                                     ; preds = %218
  %228 = load i8* %i, align 1, !dbg !230          ; [#uses=1 type=i8] [debug line = 81:18]
  %229 = add i8 %228, 1, !dbg !230                ; [#uses=1 type=i8] [debug line = 81:18]
  store i8 %229, i8* %i, align 1, !dbg !230       ; [debug line = 81:18]
  br label %214, !dbg !230                        ; [debug line = 81:18]

; <label>:230                                     ; preds = %214
  br label %231, !dbg !231                        ; [debug line = 82:24]

; <label>:231                                     ; preds = %230
  store i8 0, i8* %i, align 1, !dbg !232          ; [debug line = 85:7]
  br label %232, !dbg !232                        ; [debug line = 85:7]

; <label>:232                                     ; preds = %241, %231
  %233 = load i8* %i, align 1, !dbg !232          ; [#uses=1 type=i8] [debug line = 85:7]
  %234 = zext i8 %233 to i32, !dbg !232           ; [#uses=1 type=i32] [debug line = 85:7]
  %235 = icmp slt i32 %234, 16, !dbg !232         ; [#uses=1 type=i1] [debug line = 85:7]
  br i1 %235, label %236, label %244, !dbg !232   ; [debug line = 85:7]

; <label>:236                                     ; preds = %232
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([17 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !234 ; [debug line = 86:4]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([17 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !234 ; [debug line = 86:4]
  %237 = load i8* %i, align 1, !dbg !234          ; [#uses=1 type=i8] [debug line = 86:4]
  %238 = zext i8 %237 to i64, !dbg !234           ; [#uses=1 type=i64] [debug line = 86:4]
  %239 = load i8** %3, align 8, !dbg !234         ; [#uses=1 type=i8*] [debug line = 86:4]
  %240 = getelementptr inbounds i8* %239, i64 %238, !dbg !234 ; [#uses=1 type=i8*] [debug line = 86:4]
  store i8 0, i8* %240, align 1, !dbg !234        ; [debug line = 86:4]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([17 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !236 ; [debug line = 86:18]
  br label %241, !dbg !236                        ; [debug line = 86:18]

; <label>:241                                     ; preds = %236
  %242 = load i8* %i, align 1, !dbg !237          ; [#uses=1 type=i8] [debug line = 85:18]
  %243 = add i8 %242, 1, !dbg !237                ; [#uses=1 type=i8] [debug line = 85:18]
  store i8 %243, i8* %i, align 1, !dbg !237       ; [debug line = 85:18]
  br label %232, !dbg !237                        ; [debug line = 85:18]

; <label>:244                                     ; preds = %232
  br label %278, !dbg !238                        ; [debug line = 87:6]

; <label>:245                                     ; preds = %0
  br label %246, !dbg !238                        ; [debug line = 87:6]

; <label>:246                                     ; preds = %245
  store i8 0, i8* %i, align 1, !dbg !239          ; [debug line = 91:7]
  br label %247, !dbg !239                        ; [debug line = 91:7]

; <label>:247                                     ; preds = %260, %246
  %248 = load i8* %i, align 1, !dbg !239          ; [#uses=1 type=i8] [debug line = 91:7]
  %249 = zext i8 %248 to i32, !dbg !239           ; [#uses=1 type=i32] [debug line = 91:7]
  %250 = icmp slt i32 %249, 32, !dbg !239         ; [#uses=1 type=i1] [debug line = 91:7]
  br i1 %250, label %251, label %263, !dbg !239   ; [debug line = 91:7]

; <label>:251                                     ; preds = %247
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !241 ; [debug line = 92:4]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !241 ; [debug line = 92:4]
  %252 = load i8* %i, align 1, !dbg !241          ; [#uses=1 type=i8] [debug line = 92:4]
  %253 = zext i8 %252 to i64, !dbg !241           ; [#uses=1 type=i64] [debug line = 92:4]
  %254 = load i8** %2, align 8, !dbg !241         ; [#uses=1 type=i8*] [debug line = 92:4]
  %255 = getelementptr inbounds i8* %254, i64 %253, !dbg !241 ; [#uses=1 type=i8*] [debug line = 92:4]
  %256 = load i8* %255, align 1, !dbg !241        ; [#uses=1 type=i8] [debug line = 92:4]
  %257 = load i8* %i, align 1, !dbg !241          ; [#uses=1 type=i8] [debug line = 92:4]
  %258 = zext i8 %257 to i64, !dbg !241           ; [#uses=1 type=i64] [debug line = 92:4]
  %259 = getelementptr inbounds [32 x i8]* @aescbc.key, i32 0, i64 %258, !dbg !241 ; [#uses=1 type=i8*] [debug line = 92:4]
  store i8 %256, i8* %259, align 1, !dbg !241     ; [debug line = 92:4]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !243 ; [debug line = 92:22]
  br label %260, !dbg !243                        ; [debug line = 92:22]

; <label>:260                                     ; preds = %251
  %261 = load i8* %i, align 1, !dbg !244          ; [#uses=1 type=i8] [debug line = 91:18]
  %262 = add i8 %261, 1, !dbg !244                ; [#uses=1 type=i8] [debug line = 91:18]
  store i8 %262, i8* %i, align 1, !dbg !244       ; [debug line = 91:18]
  br label %247, !dbg !244                        ; [debug line = 91:18]

; <label>:263                                     ; preds = %247
  br label %264, !dbg !245                        ; [debug line = 92:22]

; <label>:264                                     ; preds = %263
  store i8 0, i8* %i, align 1, !dbg !246          ; [debug line = 95:7]
  br label %265, !dbg !246                        ; [debug line = 95:7]

; <label>:265                                     ; preds = %274, %264
  %266 = load i8* %i, align 1, !dbg !246          ; [#uses=1 type=i8] [debug line = 95:7]
  %267 = zext i8 %266 to i32, !dbg !246           ; [#uses=1 type=i32] [debug line = 95:7]
  %268 = icmp slt i32 %267, 16, !dbg !246         ; [#uses=1 type=i1] [debug line = 95:7]
  br i1 %268, label %269, label %277, !dbg !246   ; [debug line = 95:7]

; <label>:269                                     ; preds = %265
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([17 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !248 ; [debug line = 96:4]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([17 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !248 ; [debug line = 96:4]
  %270 = load i8* %i, align 1, !dbg !248          ; [#uses=1 type=i8] [debug line = 96:4]
  %271 = zext i8 %270 to i64, !dbg !248           ; [#uses=1 type=i64] [debug line = 96:4]
  %272 = load i8** %3, align 8, !dbg !248         ; [#uses=1 type=i8*] [debug line = 96:4]
  %273 = getelementptr inbounds i8* %272, i64 %271, !dbg !248 ; [#uses=1 type=i8*] [debug line = 96:4]
  store i8 0, i8* %273, align 1, !dbg !248        ; [debug line = 96:4]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([17 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !250 ; [debug line = 96:18]
  br label %274, !dbg !250                        ; [debug line = 96:18]

; <label>:274                                     ; preds = %269
  %275 = load i8* %i, align 1, !dbg !251          ; [#uses=1 type=i8] [debug line = 95:18]
  %276 = add i8 %275, 1, !dbg !251                ; [#uses=1 type=i8] [debug line = 95:18]
  store i8 %276, i8* %i, align 1, !dbg !251       ; [debug line = 95:18]
  br label %265, !dbg !251                        ; [debug line = 95:18]

; <label>:277                                     ; preds = %265
  br label %278, !dbg !252                        ; [debug line = 97:6]

; <label>:278                                     ; preds = %277, %244, %211, %119, %43, %0
  ret void, !dbg !253                             ; [debug line = 99:1]
}

; [#uses=61]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=4]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_SpecConstant(...) nounwind

; [#uses=6]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=6]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=6]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=1]
define void @aes_init(%struct.aes_context* %ctx, i8* %k) nounwind uwtable {
  %1 = alloca %struct.aes_context*, align 8       ; [#uses=4 type=%struct.aes_context**]
  %2 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %rcon = alloca i8, align 1                      ; [#uses=2 type=i8*]
  %i = alloca i8, align 1                         ; [#uses=10 type=i8*]
  store %struct.aes_context* %ctx, %struct.aes_context** %1, align 8
  call void @llvm.dbg.declare(metadata !{%struct.aes_context** %1}, metadata !254), !dbg !255 ; [debug line = 339:28] [debug variable = ctx]
  store i8* %k, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !256), !dbg !257 ; [debug line = 339:42] [debug variable = k]
  call void @llvm.dbg.declare(metadata !{i8* %rcon}, metadata !258), !dbg !260 ; [debug line = 341:13] [debug variable = rcon]
  store i8 1, i8* %rcon, align 1, !dbg !261       ; [debug line = 341:21]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !262), !dbg !263 ; [debug line = 342:22] [debug variable = i]
  store i8 0, i8* %i, align 1, !dbg !264          ; [debug line = 344:10]
  br label %3, !dbg !264                          ; [debug line = 344:10]

; <label>:3                                       ; preds = %23, %0
  %4 = load i8* %i, align 1, !dbg !264            ; [#uses=1 type=i8] [debug line = 344:10]
  %5 = zext i8 %4 to i64, !dbg !264               ; [#uses=1 type=i64] [debug line = 344:10]
  %6 = icmp ult i64 %5, 32, !dbg !264             ; [#uses=1 type=i1] [debug line = 344:10]
  br i1 %6, label %7, label %26, !dbg !264        ; [debug line = 344:10]

; <label>:7                                       ; preds = %3
  %8 = load i8* %i, align 1, !dbg !266            ; [#uses=1 type=i8] [debug line = 344:44]
  %9 = zext i8 %8 to i64, !dbg !266               ; [#uses=1 type=i64] [debug line = 344:44]
  %10 = load i8** %2, align 8, !dbg !266          ; [#uses=1 type=i8*] [debug line = 344:44]
  %11 = getelementptr inbounds i8* %10, i64 %9, !dbg !266 ; [#uses=1 type=i8*] [debug line = 344:44]
  %12 = load i8* %11, align 1, !dbg !266          ; [#uses=2 type=i8] [debug line = 344:44]
  %13 = load i8* %i, align 1, !dbg !266           ; [#uses=1 type=i8] [debug line = 344:44]
  %14 = zext i8 %13 to i64, !dbg !266             ; [#uses=1 type=i64] [debug line = 344:44]
  %15 = load %struct.aes_context** %1, align 8, !dbg !266 ; [#uses=1 type=%struct.aes_context*] [debug line = 344:44]
  %16 = getelementptr inbounds %struct.aes_context* %15, i32 0, i32 2, !dbg !266 ; [#uses=1 type=[32 x i8]*] [debug line = 344:44]
  %17 = getelementptr inbounds [32 x i8]* %16, i32 0, i64 %14, !dbg !266 ; [#uses=1 type=i8*] [debug line = 344:44]
  store i8 %12, i8* %17, align 1, !dbg !266       ; [debug line = 344:44]
  %18 = load i8* %i, align 1, !dbg !266           ; [#uses=1 type=i8] [debug line = 344:44]
  %19 = zext i8 %18 to i64, !dbg !266             ; [#uses=1 type=i64] [debug line = 344:44]
  %20 = load %struct.aes_context** %1, align 8, !dbg !266 ; [#uses=1 type=%struct.aes_context*] [debug line = 344:44]
  %21 = getelementptr inbounds %struct.aes_context* %20, i32 0, i32 1, !dbg !266 ; [#uses=1 type=[32 x i8]*] [debug line = 344:44]
  %22 = getelementptr inbounds [32 x i8]* %21, i32 0, i64 %19, !dbg !266 ; [#uses=1 type=i8*] [debug line = 344:44]
  store i8 %12, i8* %22, align 1, !dbg !266       ; [debug line = 344:44]
  br label %23, !dbg !266                         ; [debug line = 344:44]

; <label>:23                                      ; preds = %7
  %24 = load i8* %i, align 1, !dbg !267           ; [#uses=1 type=i8] [debug line = 344:39]
  %25 = add i8 %24, 1, !dbg !267                  ; [#uses=1 type=i8] [debug line = 344:39]
  store i8 %25, i8* %i, align 1, !dbg !267        ; [debug line = 344:39]
  br label %3, !dbg !267                          ; [debug line = 344:39]

; <label>:26                                      ; preds = %3
  store i8 8, i8* %i, align 1, !dbg !268          ; [debug line = 345:10]
  br label %27, !dbg !268                         ; [debug line = 345:10]

; <label>:27                                      ; preds = %31, %26
  %28 = load i8* %i, align 1, !dbg !268           ; [#uses=1 type=i8] [debug line = 345:10]
  %29 = add i8 %28, -1, !dbg !268                 ; [#uses=2 type=i8] [debug line = 345:10]
  store i8 %29, i8* %i, align 1, !dbg !268        ; [debug line = 345:10]
  %30 = icmp ne i8 %29, 0, !dbg !268              ; [#uses=1 type=i1] [debug line = 345:10]
  br i1 %30, label %31, label %35, !dbg !268      ; [debug line = 345:10]

; <label>:31                                      ; preds = %27
  %32 = load %struct.aes_context** %1, align 8, !dbg !270 ; [#uses=1 type=%struct.aes_context*] [debug line = 345:23]
  %33 = getelementptr inbounds %struct.aes_context* %32, i32 0, i32 2, !dbg !270 ; [#uses=1 type=[32 x i8]*] [debug line = 345:23]
  %34 = getelementptr inbounds [32 x i8]* %33, i32 0, i32 0, !dbg !270 ; [#uses=1 type=i8*] [debug line = 345:23]
  call void @aes_expandEncKey(i8* %34, i8* %rcon), !dbg !270 ; [debug line = 345:23]
  br label %27, !dbg !270                         ; [debug line = 345:23]

; <label>:35                                      ; preds = %27
  ret void, !dbg !271                             ; [debug line = 346:1]
}

; [#uses=3]
define internal void @aes_expandEncKey(i8* %k, i8* %rc) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=33 type=i8**]
  %2 = alloca i8*, align 8                        ; [#uses=4 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=24 type=i8*]
  store i8* %k, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !272), !dbg !273 ; [debug line = 292:39] [debug variable = k]
  store i8* %rc, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !274), !dbg !275 ; [debug line = 292:51] [debug variable = rc]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !276), !dbg !278 ; [debug line = 294:22] [debug variable = i]
  %3 = load i8** %1, align 8, !dbg !279           ; [#uses=1 type=i8*] [debug line = 296:5]
  %4 = getelementptr inbounds i8* %3, i64 29, !dbg !279 ; [#uses=1 type=i8*] [debug line = 296:5]
  %5 = load i8* %4, align 1, !dbg !279            ; [#uses=1 type=i8] [debug line = 296:5]
  %6 = zext i8 %5 to i64, !dbg !279               ; [#uses=1 type=i64] [debug line = 296:5]
  %7 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %6, !dbg !279 ; [#uses=1 type=i8*] [debug line = 296:5]
  %8 = load i8* %7, align 1, !dbg !279            ; [#uses=1 type=i8] [debug line = 296:5]
  %9 = zext i8 %8 to i32, !dbg !279               ; [#uses=1 type=i32] [debug line = 296:5]
  %10 = load i8** %2, align 8, !dbg !279          ; [#uses=1 type=i8*] [debug line = 296:5]
  %11 = load i8* %10, align 1, !dbg !279          ; [#uses=1 type=i8] [debug line = 296:5]
  %12 = zext i8 %11 to i32, !dbg !279             ; [#uses=1 type=i32] [debug line = 296:5]
  %13 = xor i32 %9, %12, !dbg !279                ; [#uses=1 type=i32] [debug line = 296:5]
  %14 = load i8** %1, align 8, !dbg !279          ; [#uses=1 type=i8*] [debug line = 296:5]
  %15 = getelementptr inbounds i8* %14, i64 0, !dbg !279 ; [#uses=2 type=i8*] [debug line = 296:5]
  %16 = load i8* %15, align 1, !dbg !279          ; [#uses=1 type=i8] [debug line = 296:5]
  %17 = zext i8 %16 to i32, !dbg !279             ; [#uses=1 type=i32] [debug line = 296:5]
  %18 = xor i32 %17, %13, !dbg !279               ; [#uses=1 type=i32] [debug line = 296:5]
  %19 = trunc i32 %18 to i8, !dbg !279            ; [#uses=1 type=i8] [debug line = 296:5]
  store i8 %19, i8* %15, align 1, !dbg !279       ; [debug line = 296:5]
  %20 = load i8** %1, align 8, !dbg !280          ; [#uses=1 type=i8*] [debug line = 297:5]
  %21 = getelementptr inbounds i8* %20, i64 30, !dbg !280 ; [#uses=1 type=i8*] [debug line = 297:5]
  %22 = load i8* %21, align 1, !dbg !280          ; [#uses=1 type=i8] [debug line = 297:5]
  %23 = zext i8 %22 to i64, !dbg !280             ; [#uses=1 type=i64] [debug line = 297:5]
  %24 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %23, !dbg !280 ; [#uses=1 type=i8*] [debug line = 297:5]
  %25 = load i8* %24, align 1, !dbg !280          ; [#uses=1 type=i8] [debug line = 297:5]
  %26 = zext i8 %25 to i32, !dbg !280             ; [#uses=1 type=i32] [debug line = 297:5]
  %27 = load i8** %1, align 8, !dbg !280          ; [#uses=1 type=i8*] [debug line = 297:5]
  %28 = getelementptr inbounds i8* %27, i64 1, !dbg !280 ; [#uses=2 type=i8*] [debug line = 297:5]
  %29 = load i8* %28, align 1, !dbg !280          ; [#uses=1 type=i8] [debug line = 297:5]
  %30 = zext i8 %29 to i32, !dbg !280             ; [#uses=1 type=i32] [debug line = 297:5]
  %31 = xor i32 %30, %26, !dbg !280               ; [#uses=1 type=i32] [debug line = 297:5]
  %32 = trunc i32 %31 to i8, !dbg !280            ; [#uses=1 type=i8] [debug line = 297:5]
  store i8 %32, i8* %28, align 1, !dbg !280       ; [debug line = 297:5]
  %33 = load i8** %1, align 8, !dbg !281          ; [#uses=1 type=i8*] [debug line = 298:5]
  %34 = getelementptr inbounds i8* %33, i64 31, !dbg !281 ; [#uses=1 type=i8*] [debug line = 298:5]
  %35 = load i8* %34, align 1, !dbg !281          ; [#uses=1 type=i8] [debug line = 298:5]
  %36 = zext i8 %35 to i64, !dbg !281             ; [#uses=1 type=i64] [debug line = 298:5]
  %37 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %36, !dbg !281 ; [#uses=1 type=i8*] [debug line = 298:5]
  %38 = load i8* %37, align 1, !dbg !281          ; [#uses=1 type=i8] [debug line = 298:5]
  %39 = zext i8 %38 to i32, !dbg !281             ; [#uses=1 type=i32] [debug line = 298:5]
  %40 = load i8** %1, align 8, !dbg !281          ; [#uses=1 type=i8*] [debug line = 298:5]
  %41 = getelementptr inbounds i8* %40, i64 2, !dbg !281 ; [#uses=2 type=i8*] [debug line = 298:5]
  %42 = load i8* %41, align 1, !dbg !281          ; [#uses=1 type=i8] [debug line = 298:5]
  %43 = zext i8 %42 to i32, !dbg !281             ; [#uses=1 type=i32] [debug line = 298:5]
  %44 = xor i32 %43, %39, !dbg !281               ; [#uses=1 type=i32] [debug line = 298:5]
  %45 = trunc i32 %44 to i8, !dbg !281            ; [#uses=1 type=i8] [debug line = 298:5]
  store i8 %45, i8* %41, align 1, !dbg !281       ; [debug line = 298:5]
  %46 = load i8** %1, align 8, !dbg !282          ; [#uses=1 type=i8*] [debug line = 299:5]
  %47 = getelementptr inbounds i8* %46, i64 28, !dbg !282 ; [#uses=1 type=i8*] [debug line = 299:5]
  %48 = load i8* %47, align 1, !dbg !282          ; [#uses=1 type=i8] [debug line = 299:5]
  %49 = zext i8 %48 to i64, !dbg !282             ; [#uses=1 type=i64] [debug line = 299:5]
  %50 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %49, !dbg !282 ; [#uses=1 type=i8*] [debug line = 299:5]
  %51 = load i8* %50, align 1, !dbg !282          ; [#uses=1 type=i8] [debug line = 299:5]
  %52 = zext i8 %51 to i32, !dbg !282             ; [#uses=1 type=i32] [debug line = 299:5]
  %53 = load i8** %1, align 8, !dbg !282          ; [#uses=1 type=i8*] [debug line = 299:5]
  %54 = getelementptr inbounds i8* %53, i64 3, !dbg !282 ; [#uses=2 type=i8*] [debug line = 299:5]
  %55 = load i8* %54, align 1, !dbg !282          ; [#uses=1 type=i8] [debug line = 299:5]
  %56 = zext i8 %55 to i32, !dbg !282             ; [#uses=1 type=i32] [debug line = 299:5]
  %57 = xor i32 %56, %52, !dbg !282               ; [#uses=1 type=i32] [debug line = 299:5]
  %58 = trunc i32 %57 to i8, !dbg !282            ; [#uses=1 type=i8] [debug line = 299:5]
  store i8 %58, i8* %54, align 1, !dbg !282       ; [debug line = 299:5]
  %59 = load i8** %2, align 8, !dbg !283          ; [#uses=1 type=i8*] [debug line = 300:11]
  %60 = load i8* %59, align 1, !dbg !283          ; [#uses=1 type=i8] [debug line = 300:11]
  %61 = call zeroext i8 @rj_xtime(i8 zeroext %60), !dbg !283 ; [#uses=1 type=i8] [debug line = 300:11]
  %62 = load i8** %2, align 8, !dbg !283          ; [#uses=1 type=i8*] [debug line = 300:11]
  store i8 %61, i8* %62, align 1, !dbg !283       ; [debug line = 300:11]
  store i8 4, i8* %i, align 1, !dbg !284          ; [debug line = 302:9]
  br label %63, !dbg !284                         ; [debug line = 302:9]

; <label>:63                                      ; preds = %138, %0
  %64 = load i8* %i, align 1, !dbg !284           ; [#uses=1 type=i8] [debug line = 302:9]
  %65 = zext i8 %64 to i32, !dbg !284             ; [#uses=1 type=i32] [debug line = 302:9]
  %66 = icmp slt i32 %65, 16, !dbg !284           ; [#uses=1 type=i1] [debug line = 302:9]
  br i1 %66, label %67, label %143, !dbg !284     ; [debug line = 302:9]

; <label>:67                                      ; preds = %63
  %68 = load i8* %i, align 1, !dbg !286           ; [#uses=1 type=i8] [debug line = 302:32]
  %69 = zext i8 %68 to i32, !dbg !286             ; [#uses=1 type=i32] [debug line = 302:32]
  %70 = sub nsw i32 %69, 4, !dbg !286             ; [#uses=1 type=i32] [debug line = 302:32]
  %71 = sext i32 %70 to i64, !dbg !286            ; [#uses=1 type=i64] [debug line = 302:32]
  %72 = load i8** %1, align 8, !dbg !286          ; [#uses=1 type=i8*] [debug line = 302:32]
  %73 = getelementptr inbounds i8* %72, i64 %71, !dbg !286 ; [#uses=1 type=i8*] [debug line = 302:32]
  %74 = load i8* %73, align 1, !dbg !286          ; [#uses=1 type=i8] [debug line = 302:32]
  %75 = zext i8 %74 to i32, !dbg !286             ; [#uses=1 type=i32] [debug line = 302:32]
  %76 = load i8* %i, align 1, !dbg !286           ; [#uses=1 type=i8] [debug line = 302:32]
  %77 = zext i8 %76 to i64, !dbg !286             ; [#uses=1 type=i64] [debug line = 302:32]
  %78 = load i8** %1, align 8, !dbg !286          ; [#uses=1 type=i8*] [debug line = 302:32]
  %79 = getelementptr inbounds i8* %78, i64 %77, !dbg !286 ; [#uses=2 type=i8*] [debug line = 302:32]
  %80 = load i8* %79, align 1, !dbg !286          ; [#uses=1 type=i8] [debug line = 302:32]
  %81 = zext i8 %80 to i32, !dbg !286             ; [#uses=1 type=i32] [debug line = 302:32]
  %82 = xor i32 %81, %75, !dbg !286               ; [#uses=1 type=i32] [debug line = 302:32]
  %83 = trunc i32 %82 to i8, !dbg !286            ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %83, i8* %79, align 1, !dbg !286       ; [debug line = 302:32]
  %84 = load i8* %i, align 1, !dbg !286           ; [#uses=1 type=i8] [debug line = 302:32]
  %85 = zext i8 %84 to i32, !dbg !286             ; [#uses=1 type=i32] [debug line = 302:32]
  %86 = sub nsw i32 %85, 3, !dbg !286             ; [#uses=1 type=i32] [debug line = 302:32]
  %87 = sext i32 %86 to i64, !dbg !286            ; [#uses=1 type=i64] [debug line = 302:32]
  %88 = load i8** %1, align 8, !dbg !286          ; [#uses=1 type=i8*] [debug line = 302:32]
  %89 = getelementptr inbounds i8* %88, i64 %87, !dbg !286 ; [#uses=1 type=i8*] [debug line = 302:32]
  %90 = load i8* %89, align 1, !dbg !286          ; [#uses=1 type=i8] [debug line = 302:32]
  %91 = zext i8 %90 to i32, !dbg !286             ; [#uses=1 type=i32] [debug line = 302:32]
  %92 = load i8* %i, align 1, !dbg !286           ; [#uses=1 type=i8] [debug line = 302:32]
  %93 = zext i8 %92 to i32, !dbg !286             ; [#uses=1 type=i32] [debug line = 302:32]
  %94 = add nsw i32 %93, 1, !dbg !286             ; [#uses=1 type=i32] [debug line = 302:32]
  %95 = sext i32 %94 to i64, !dbg !286            ; [#uses=1 type=i64] [debug line = 302:32]
  %96 = load i8** %1, align 8, !dbg !286          ; [#uses=1 type=i8*] [debug line = 302:32]
  %97 = getelementptr inbounds i8* %96, i64 %95, !dbg !286 ; [#uses=2 type=i8*] [debug line = 302:32]
  %98 = load i8* %97, align 1, !dbg !286          ; [#uses=1 type=i8] [debug line = 302:32]
  %99 = zext i8 %98 to i32, !dbg !286             ; [#uses=1 type=i32] [debug line = 302:32]
  %100 = xor i32 %99, %91, !dbg !286              ; [#uses=1 type=i32] [debug line = 302:32]
  %101 = trunc i32 %100 to i8, !dbg !286          ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %101, i8* %97, align 1, !dbg !286      ; [debug line = 302:32]
  %102 = load i8* %i, align 1, !dbg !286          ; [#uses=1 type=i8] [debug line = 302:32]
  %103 = zext i8 %102 to i32, !dbg !286           ; [#uses=1 type=i32] [debug line = 302:32]
  %104 = sub nsw i32 %103, 2, !dbg !286           ; [#uses=1 type=i32] [debug line = 302:32]
  %105 = sext i32 %104 to i64, !dbg !286          ; [#uses=1 type=i64] [debug line = 302:32]
  %106 = load i8** %1, align 8, !dbg !286         ; [#uses=1 type=i8*] [debug line = 302:32]
  %107 = getelementptr inbounds i8* %106, i64 %105, !dbg !286 ; [#uses=1 type=i8*] [debug line = 302:32]
  %108 = load i8* %107, align 1, !dbg !286        ; [#uses=1 type=i8] [debug line = 302:32]
  %109 = zext i8 %108 to i32, !dbg !286           ; [#uses=1 type=i32] [debug line = 302:32]
  %110 = load i8* %i, align 1, !dbg !286          ; [#uses=1 type=i8] [debug line = 302:32]
  %111 = zext i8 %110 to i32, !dbg !286           ; [#uses=1 type=i32] [debug line = 302:32]
  %112 = add nsw i32 %111, 2, !dbg !286           ; [#uses=1 type=i32] [debug line = 302:32]
  %113 = sext i32 %112 to i64, !dbg !286          ; [#uses=1 type=i64] [debug line = 302:32]
  %114 = load i8** %1, align 8, !dbg !286         ; [#uses=1 type=i8*] [debug line = 302:32]
  %115 = getelementptr inbounds i8* %114, i64 %113, !dbg !286 ; [#uses=2 type=i8*] [debug line = 302:32]
  %116 = load i8* %115, align 1, !dbg !286        ; [#uses=1 type=i8] [debug line = 302:32]
  %117 = zext i8 %116 to i32, !dbg !286           ; [#uses=1 type=i32] [debug line = 302:32]
  %118 = xor i32 %117, %109, !dbg !286            ; [#uses=1 type=i32] [debug line = 302:32]
  %119 = trunc i32 %118 to i8, !dbg !286          ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %119, i8* %115, align 1, !dbg !286     ; [debug line = 302:32]
  %120 = load i8* %i, align 1, !dbg !286          ; [#uses=1 type=i8] [debug line = 302:32]
  %121 = zext i8 %120 to i32, !dbg !286           ; [#uses=1 type=i32] [debug line = 302:32]
  %122 = sub nsw i32 %121, 1, !dbg !286           ; [#uses=1 type=i32] [debug line = 302:32]
  %123 = sext i32 %122 to i64, !dbg !286          ; [#uses=1 type=i64] [debug line = 302:32]
  %124 = load i8** %1, align 8, !dbg !286         ; [#uses=1 type=i8*] [debug line = 302:32]
  %125 = getelementptr inbounds i8* %124, i64 %123, !dbg !286 ; [#uses=1 type=i8*] [debug line = 302:32]
  %126 = load i8* %125, align 1, !dbg !286        ; [#uses=1 type=i8] [debug line = 302:32]
  %127 = zext i8 %126 to i32, !dbg !286           ; [#uses=1 type=i32] [debug line = 302:32]
  %128 = load i8* %i, align 1, !dbg !286          ; [#uses=1 type=i8] [debug line = 302:32]
  %129 = zext i8 %128 to i32, !dbg !286           ; [#uses=1 type=i32] [debug line = 302:32]
  %130 = add nsw i32 %129, 3, !dbg !286           ; [#uses=1 type=i32] [debug line = 302:32]
  %131 = sext i32 %130 to i64, !dbg !286          ; [#uses=1 type=i64] [debug line = 302:32]
  %132 = load i8** %1, align 8, !dbg !286         ; [#uses=1 type=i8*] [debug line = 302:32]
  %133 = getelementptr inbounds i8* %132, i64 %131, !dbg !286 ; [#uses=2 type=i8*] [debug line = 302:32]
  %134 = load i8* %133, align 1, !dbg !286        ; [#uses=1 type=i8] [debug line = 302:32]
  %135 = zext i8 %134 to i32, !dbg !286           ; [#uses=1 type=i32] [debug line = 302:32]
  %136 = xor i32 %135, %127, !dbg !286            ; [#uses=1 type=i32] [debug line = 302:32]
  %137 = trunc i32 %136 to i8, !dbg !286          ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %137, i8* %133, align 1, !dbg !286     ; [debug line = 302:32]
  br label %138, !dbg !286                        ; [debug line = 302:32]

; <label>:138                                     ; preds = %67
  %139 = load i8* %i, align 1, !dbg !287          ; [#uses=1 type=i8] [debug line = 302:24]
  %140 = zext i8 %139 to i32, !dbg !287           ; [#uses=1 type=i32] [debug line = 302:24]
  %141 = add nsw i32 %140, 4, !dbg !287           ; [#uses=1 type=i32] [debug line = 302:24]
  %142 = trunc i32 %141 to i8, !dbg !287          ; [#uses=1 type=i8] [debug line = 302:24]
  store i8 %142, i8* %i, align 1, !dbg !287       ; [debug line = 302:24]
  br label %63, !dbg !287                         ; [debug line = 302:24]

; <label>:143                                     ; preds = %63
  %144 = load i8** %1, align 8, !dbg !288         ; [#uses=1 type=i8*] [debug line = 304:5]
  %145 = getelementptr inbounds i8* %144, i64 12, !dbg !288 ; [#uses=1 type=i8*] [debug line = 304:5]
  %146 = load i8* %145, align 1, !dbg !288        ; [#uses=1 type=i8] [debug line = 304:5]
  %147 = zext i8 %146 to i64, !dbg !288           ; [#uses=1 type=i64] [debug line = 304:5]
  %148 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %147, !dbg !288 ; [#uses=1 type=i8*] [debug line = 304:5]
  %149 = load i8* %148, align 1, !dbg !288        ; [#uses=1 type=i8] [debug line = 304:5]
  %150 = zext i8 %149 to i32, !dbg !288           ; [#uses=1 type=i32] [debug line = 304:5]
  %151 = load i8** %1, align 8, !dbg !288         ; [#uses=1 type=i8*] [debug line = 304:5]
  %152 = getelementptr inbounds i8* %151, i64 16, !dbg !288 ; [#uses=2 type=i8*] [debug line = 304:5]
  %153 = load i8* %152, align 1, !dbg !288        ; [#uses=1 type=i8] [debug line = 304:5]
  %154 = zext i8 %153 to i32, !dbg !288           ; [#uses=1 type=i32] [debug line = 304:5]
  %155 = xor i32 %154, %150, !dbg !288            ; [#uses=1 type=i32] [debug line = 304:5]
  %156 = trunc i32 %155 to i8, !dbg !288          ; [#uses=1 type=i8] [debug line = 304:5]
  store i8 %156, i8* %152, align 1, !dbg !288     ; [debug line = 304:5]
  %157 = load i8** %1, align 8, !dbg !289         ; [#uses=1 type=i8*] [debug line = 305:5]
  %158 = getelementptr inbounds i8* %157, i64 13, !dbg !289 ; [#uses=1 type=i8*] [debug line = 305:5]
  %159 = load i8* %158, align 1, !dbg !289        ; [#uses=1 type=i8] [debug line = 305:5]
  %160 = zext i8 %159 to i64, !dbg !289           ; [#uses=1 type=i64] [debug line = 305:5]
  %161 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %160, !dbg !289 ; [#uses=1 type=i8*] [debug line = 305:5]
  %162 = load i8* %161, align 1, !dbg !289        ; [#uses=1 type=i8] [debug line = 305:5]
  %163 = zext i8 %162 to i32, !dbg !289           ; [#uses=1 type=i32] [debug line = 305:5]
  %164 = load i8** %1, align 8, !dbg !289         ; [#uses=1 type=i8*] [debug line = 305:5]
  %165 = getelementptr inbounds i8* %164, i64 17, !dbg !289 ; [#uses=2 type=i8*] [debug line = 305:5]
  %166 = load i8* %165, align 1, !dbg !289        ; [#uses=1 type=i8] [debug line = 305:5]
  %167 = zext i8 %166 to i32, !dbg !289           ; [#uses=1 type=i32] [debug line = 305:5]
  %168 = xor i32 %167, %163, !dbg !289            ; [#uses=1 type=i32] [debug line = 305:5]
  %169 = trunc i32 %168 to i8, !dbg !289          ; [#uses=1 type=i8] [debug line = 305:5]
  store i8 %169, i8* %165, align 1, !dbg !289     ; [debug line = 305:5]
  %170 = load i8** %1, align 8, !dbg !290         ; [#uses=1 type=i8*] [debug line = 306:5]
  %171 = getelementptr inbounds i8* %170, i64 14, !dbg !290 ; [#uses=1 type=i8*] [debug line = 306:5]
  %172 = load i8* %171, align 1, !dbg !290        ; [#uses=1 type=i8] [debug line = 306:5]
  %173 = zext i8 %172 to i64, !dbg !290           ; [#uses=1 type=i64] [debug line = 306:5]
  %174 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %173, !dbg !290 ; [#uses=1 type=i8*] [debug line = 306:5]
  %175 = load i8* %174, align 1, !dbg !290        ; [#uses=1 type=i8] [debug line = 306:5]
  %176 = zext i8 %175 to i32, !dbg !290           ; [#uses=1 type=i32] [debug line = 306:5]
  %177 = load i8** %1, align 8, !dbg !290         ; [#uses=1 type=i8*] [debug line = 306:5]
  %178 = getelementptr inbounds i8* %177, i64 18, !dbg !290 ; [#uses=2 type=i8*] [debug line = 306:5]
  %179 = load i8* %178, align 1, !dbg !290        ; [#uses=1 type=i8] [debug line = 306:5]
  %180 = zext i8 %179 to i32, !dbg !290           ; [#uses=1 type=i32] [debug line = 306:5]
  %181 = xor i32 %180, %176, !dbg !290            ; [#uses=1 type=i32] [debug line = 306:5]
  %182 = trunc i32 %181 to i8, !dbg !290          ; [#uses=1 type=i8] [debug line = 306:5]
  store i8 %182, i8* %178, align 1, !dbg !290     ; [debug line = 306:5]
  %183 = load i8** %1, align 8, !dbg !291         ; [#uses=1 type=i8*] [debug line = 307:5]
  %184 = getelementptr inbounds i8* %183, i64 15, !dbg !291 ; [#uses=1 type=i8*] [debug line = 307:5]
  %185 = load i8* %184, align 1, !dbg !291        ; [#uses=1 type=i8] [debug line = 307:5]
  %186 = zext i8 %185 to i64, !dbg !291           ; [#uses=1 type=i64] [debug line = 307:5]
  %187 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %186, !dbg !291 ; [#uses=1 type=i8*] [debug line = 307:5]
  %188 = load i8* %187, align 1, !dbg !291        ; [#uses=1 type=i8] [debug line = 307:5]
  %189 = zext i8 %188 to i32, !dbg !291           ; [#uses=1 type=i32] [debug line = 307:5]
  %190 = load i8** %1, align 8, !dbg !291         ; [#uses=1 type=i8*] [debug line = 307:5]
  %191 = getelementptr inbounds i8* %190, i64 19, !dbg !291 ; [#uses=2 type=i8*] [debug line = 307:5]
  %192 = load i8* %191, align 1, !dbg !291        ; [#uses=1 type=i8] [debug line = 307:5]
  %193 = zext i8 %192 to i32, !dbg !291           ; [#uses=1 type=i32] [debug line = 307:5]
  %194 = xor i32 %193, %189, !dbg !291            ; [#uses=1 type=i32] [debug line = 307:5]
  %195 = trunc i32 %194 to i8, !dbg !291          ; [#uses=1 type=i8] [debug line = 307:5]
  store i8 %195, i8* %191, align 1, !dbg !291     ; [debug line = 307:5]
  store i8 20, i8* %i, align 1, !dbg !292         ; [debug line = 309:9]
  br label %196, !dbg !292                        ; [debug line = 309:9]

; <label>:196                                     ; preds = %271, %143
  %197 = load i8* %i, align 1, !dbg !292          ; [#uses=1 type=i8] [debug line = 309:9]
  %198 = zext i8 %197 to i32, !dbg !292           ; [#uses=1 type=i32] [debug line = 309:9]
  %199 = icmp slt i32 %198, 32, !dbg !292         ; [#uses=1 type=i1] [debug line = 309:9]
  br i1 %199, label %200, label %276, !dbg !292   ; [debug line = 309:9]

; <label>:200                                     ; preds = %196
  %201 = load i8* %i, align 1, !dbg !294          ; [#uses=1 type=i8] [debug line = 309:33]
  %202 = zext i8 %201 to i32, !dbg !294           ; [#uses=1 type=i32] [debug line = 309:33]
  %203 = sub nsw i32 %202, 4, !dbg !294           ; [#uses=1 type=i32] [debug line = 309:33]
  %204 = sext i32 %203 to i64, !dbg !294          ; [#uses=1 type=i64] [debug line = 309:33]
  %205 = load i8** %1, align 8, !dbg !294         ; [#uses=1 type=i8*] [debug line = 309:33]
  %206 = getelementptr inbounds i8* %205, i64 %204, !dbg !294 ; [#uses=1 type=i8*] [debug line = 309:33]
  %207 = load i8* %206, align 1, !dbg !294        ; [#uses=1 type=i8] [debug line = 309:33]
  %208 = zext i8 %207 to i32, !dbg !294           ; [#uses=1 type=i32] [debug line = 309:33]
  %209 = load i8* %i, align 1, !dbg !294          ; [#uses=1 type=i8] [debug line = 309:33]
  %210 = zext i8 %209 to i64, !dbg !294           ; [#uses=1 type=i64] [debug line = 309:33]
  %211 = load i8** %1, align 8, !dbg !294         ; [#uses=1 type=i8*] [debug line = 309:33]
  %212 = getelementptr inbounds i8* %211, i64 %210, !dbg !294 ; [#uses=2 type=i8*] [debug line = 309:33]
  %213 = load i8* %212, align 1, !dbg !294        ; [#uses=1 type=i8] [debug line = 309:33]
  %214 = zext i8 %213 to i32, !dbg !294           ; [#uses=1 type=i32] [debug line = 309:33]
  %215 = xor i32 %214, %208, !dbg !294            ; [#uses=1 type=i32] [debug line = 309:33]
  %216 = trunc i32 %215 to i8, !dbg !294          ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %216, i8* %212, align 1, !dbg !294     ; [debug line = 309:33]
  %217 = load i8* %i, align 1, !dbg !294          ; [#uses=1 type=i8] [debug line = 309:33]
  %218 = zext i8 %217 to i32, !dbg !294           ; [#uses=1 type=i32] [debug line = 309:33]
  %219 = sub nsw i32 %218, 3, !dbg !294           ; [#uses=1 type=i32] [debug line = 309:33]
  %220 = sext i32 %219 to i64, !dbg !294          ; [#uses=1 type=i64] [debug line = 309:33]
  %221 = load i8** %1, align 8, !dbg !294         ; [#uses=1 type=i8*] [debug line = 309:33]
  %222 = getelementptr inbounds i8* %221, i64 %220, !dbg !294 ; [#uses=1 type=i8*] [debug line = 309:33]
  %223 = load i8* %222, align 1, !dbg !294        ; [#uses=1 type=i8] [debug line = 309:33]
  %224 = zext i8 %223 to i32, !dbg !294           ; [#uses=1 type=i32] [debug line = 309:33]
  %225 = load i8* %i, align 1, !dbg !294          ; [#uses=1 type=i8] [debug line = 309:33]
  %226 = zext i8 %225 to i32, !dbg !294           ; [#uses=1 type=i32] [debug line = 309:33]
  %227 = add nsw i32 %226, 1, !dbg !294           ; [#uses=1 type=i32] [debug line = 309:33]
  %228 = sext i32 %227 to i64, !dbg !294          ; [#uses=1 type=i64] [debug line = 309:33]
  %229 = load i8** %1, align 8, !dbg !294         ; [#uses=1 type=i8*] [debug line = 309:33]
  %230 = getelementptr inbounds i8* %229, i64 %228, !dbg !294 ; [#uses=2 type=i8*] [debug line = 309:33]
  %231 = load i8* %230, align 1, !dbg !294        ; [#uses=1 type=i8] [debug line = 309:33]
  %232 = zext i8 %231 to i32, !dbg !294           ; [#uses=1 type=i32] [debug line = 309:33]
  %233 = xor i32 %232, %224, !dbg !294            ; [#uses=1 type=i32] [debug line = 309:33]
  %234 = trunc i32 %233 to i8, !dbg !294          ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %234, i8* %230, align 1, !dbg !294     ; [debug line = 309:33]
  %235 = load i8* %i, align 1, !dbg !294          ; [#uses=1 type=i8] [debug line = 309:33]
  %236 = zext i8 %235 to i32, !dbg !294           ; [#uses=1 type=i32] [debug line = 309:33]
  %237 = sub nsw i32 %236, 2, !dbg !294           ; [#uses=1 type=i32] [debug line = 309:33]
  %238 = sext i32 %237 to i64, !dbg !294          ; [#uses=1 type=i64] [debug line = 309:33]
  %239 = load i8** %1, align 8, !dbg !294         ; [#uses=1 type=i8*] [debug line = 309:33]
  %240 = getelementptr inbounds i8* %239, i64 %238, !dbg !294 ; [#uses=1 type=i8*] [debug line = 309:33]
  %241 = load i8* %240, align 1, !dbg !294        ; [#uses=1 type=i8] [debug line = 309:33]
  %242 = zext i8 %241 to i32, !dbg !294           ; [#uses=1 type=i32] [debug line = 309:33]
  %243 = load i8* %i, align 1, !dbg !294          ; [#uses=1 type=i8] [debug line = 309:33]
  %244 = zext i8 %243 to i32, !dbg !294           ; [#uses=1 type=i32] [debug line = 309:33]
  %245 = add nsw i32 %244, 2, !dbg !294           ; [#uses=1 type=i32] [debug line = 309:33]
  %246 = sext i32 %245 to i64, !dbg !294          ; [#uses=1 type=i64] [debug line = 309:33]
  %247 = load i8** %1, align 8, !dbg !294         ; [#uses=1 type=i8*] [debug line = 309:33]
  %248 = getelementptr inbounds i8* %247, i64 %246, !dbg !294 ; [#uses=2 type=i8*] [debug line = 309:33]
  %249 = load i8* %248, align 1, !dbg !294        ; [#uses=1 type=i8] [debug line = 309:33]
  %250 = zext i8 %249 to i32, !dbg !294           ; [#uses=1 type=i32] [debug line = 309:33]
  %251 = xor i32 %250, %242, !dbg !294            ; [#uses=1 type=i32] [debug line = 309:33]
  %252 = trunc i32 %251 to i8, !dbg !294          ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %252, i8* %248, align 1, !dbg !294     ; [debug line = 309:33]
  %253 = load i8* %i, align 1, !dbg !294          ; [#uses=1 type=i8] [debug line = 309:33]
  %254 = zext i8 %253 to i32, !dbg !294           ; [#uses=1 type=i32] [debug line = 309:33]
  %255 = sub nsw i32 %254, 1, !dbg !294           ; [#uses=1 type=i32] [debug line = 309:33]
  %256 = sext i32 %255 to i64, !dbg !294          ; [#uses=1 type=i64] [debug line = 309:33]
  %257 = load i8** %1, align 8, !dbg !294         ; [#uses=1 type=i8*] [debug line = 309:33]
  %258 = getelementptr inbounds i8* %257, i64 %256, !dbg !294 ; [#uses=1 type=i8*] [debug line = 309:33]
  %259 = load i8* %258, align 1, !dbg !294        ; [#uses=1 type=i8] [debug line = 309:33]
  %260 = zext i8 %259 to i32, !dbg !294           ; [#uses=1 type=i32] [debug line = 309:33]
  %261 = load i8* %i, align 1, !dbg !294          ; [#uses=1 type=i8] [debug line = 309:33]
  %262 = zext i8 %261 to i32, !dbg !294           ; [#uses=1 type=i32] [debug line = 309:33]
  %263 = add nsw i32 %262, 3, !dbg !294           ; [#uses=1 type=i32] [debug line = 309:33]
  %264 = sext i32 %263 to i64, !dbg !294          ; [#uses=1 type=i64] [debug line = 309:33]
  %265 = load i8** %1, align 8, !dbg !294         ; [#uses=1 type=i8*] [debug line = 309:33]
  %266 = getelementptr inbounds i8* %265, i64 %264, !dbg !294 ; [#uses=2 type=i8*] [debug line = 309:33]
  %267 = load i8* %266, align 1, !dbg !294        ; [#uses=1 type=i8] [debug line = 309:33]
  %268 = zext i8 %267 to i32, !dbg !294           ; [#uses=1 type=i32] [debug line = 309:33]
  %269 = xor i32 %268, %260, !dbg !294            ; [#uses=1 type=i32] [debug line = 309:33]
  %270 = trunc i32 %269 to i8, !dbg !294          ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %270, i8* %266, align 1, !dbg !294     ; [debug line = 309:33]
  br label %271, !dbg !294                        ; [debug line = 309:33]

; <label>:271                                     ; preds = %200
  %272 = load i8* %i, align 1, !dbg !295          ; [#uses=1 type=i8] [debug line = 309:25]
  %273 = zext i8 %272 to i32, !dbg !295           ; [#uses=1 type=i32] [debug line = 309:25]
  %274 = add nsw i32 %273, 4, !dbg !295           ; [#uses=1 type=i32] [debug line = 309:25]
  %275 = trunc i32 %274 to i8, !dbg !295          ; [#uses=1 type=i8] [debug line = 309:25]
  store i8 %275, i8* %i, align 1, !dbg !295       ; [debug line = 309:25]
  br label %196, !dbg !295                        ; [debug line = 309:25]

; <label>:276                                     ; preds = %196
  ret void, !dbg !296                             ; [debug line = 312:1]
}

; [#uses=0]
define void @aes_done(%struct.aes_context* %ctx) nounwind uwtable {
  %1 = alloca %struct.aes_context*, align 8       ; [#uses=4 type=%struct.aes_context**]
  %i = alloca i8, align 1                         ; [#uses=7 type=i8*]
  store %struct.aes_context* %ctx, %struct.aes_context** %1, align 8
  call void @llvm.dbg.declare(metadata !{%struct.aes_context** %1}, metadata !297), !dbg !298 ; [debug line = 349:28] [debug variable = ctx]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !299), !dbg !301 ; [debug line = 351:22] [debug variable = i]
  store i8 0, i8* %i, align 1, !dbg !302          ; [debug line = 353:10]
  br label %2, !dbg !302                          ; [debug line = 353:10]

; <label>:2                                       ; preds = %22, %0
  %3 = load i8* %i, align 1, !dbg !302            ; [#uses=1 type=i8] [debug line = 353:10]
  %4 = zext i8 %3 to i64, !dbg !302               ; [#uses=1 type=i64] [debug line = 353:10]
  %5 = icmp ult i64 %4, 32, !dbg !302             ; [#uses=1 type=i1] [debug line = 353:10]
  br i1 %5, label %6, label %25, !dbg !302        ; [debug line = 353:10]

; <label>:6                                       ; preds = %2
  %7 = load i8* %i, align 1, !dbg !304            ; [#uses=1 type=i8] [debug line = 354:9]
  %8 = zext i8 %7 to i64, !dbg !304               ; [#uses=1 type=i64] [debug line = 354:9]
  %9 = load %struct.aes_context** %1, align 8, !dbg !304 ; [#uses=1 type=%struct.aes_context*] [debug line = 354:9]
  %10 = getelementptr inbounds %struct.aes_context* %9, i32 0, i32 2, !dbg !304 ; [#uses=1 type=[32 x i8]*] [debug line = 354:9]
  %11 = getelementptr inbounds [32 x i8]* %10, i32 0, i64 %8, !dbg !304 ; [#uses=1 type=i8*] [debug line = 354:9]
  store i8 0, i8* %11, align 1, !dbg !304         ; [debug line = 354:9]
  %12 = load i8* %i, align 1, !dbg !304           ; [#uses=1 type=i8] [debug line = 354:9]
  %13 = zext i8 %12 to i64, !dbg !304             ; [#uses=1 type=i64] [debug line = 354:9]
  %14 = load %struct.aes_context** %1, align 8, !dbg !304 ; [#uses=1 type=%struct.aes_context*] [debug line = 354:9]
  %15 = getelementptr inbounds %struct.aes_context* %14, i32 0, i32 1, !dbg !304 ; [#uses=1 type=[32 x i8]*] [debug line = 354:9]
  %16 = getelementptr inbounds [32 x i8]* %15, i32 0, i64 %13, !dbg !304 ; [#uses=1 type=i8*] [debug line = 354:9]
  store i8 0, i8* %16, align 1, !dbg !304         ; [debug line = 354:9]
  %17 = load i8* %i, align 1, !dbg !304           ; [#uses=1 type=i8] [debug line = 354:9]
  %18 = zext i8 %17 to i64, !dbg !304             ; [#uses=1 type=i64] [debug line = 354:9]
  %19 = load %struct.aes_context** %1, align 8, !dbg !304 ; [#uses=1 type=%struct.aes_context*] [debug line = 354:9]
  %20 = getelementptr inbounds %struct.aes_context* %19, i32 0, i32 0, !dbg !304 ; [#uses=1 type=[32 x i8]*] [debug line = 354:9]
  %21 = getelementptr inbounds [32 x i8]* %20, i32 0, i64 %18, !dbg !304 ; [#uses=1 type=i8*] [debug line = 354:9]
  store i8 0, i8* %21, align 1, !dbg !304         ; [debug line = 354:9]
  br label %22, !dbg !304                         ; [debug line = 354:9]

; <label>:22                                      ; preds = %6
  %23 = load i8* %i, align 1, !dbg !305           ; [#uses=1 type=i8] [debug line = 353:39]
  %24 = add i8 %23, 1, !dbg !305                  ; [#uses=1 type=i8] [debug line = 353:39]
  store i8 %24, i8* %i, align 1, !dbg !305        ; [debug line = 353:39]
  br label %2, !dbg !305                          ; [debug line = 353:39]

; <label>:25                                      ; preds = %2
  ret void, !dbg !306                             ; [debug line = 355:1]
}

; [#uses=1]
define void @aes_encrypt_ecb(%struct.aes_context* %ctx, i8* %buf) nounwind uwtable {
  %1 = alloca %struct.aes_context*, align 8       ; [#uses=8 type=%struct.aes_context**]
  %2 = alloca i8*, align 8                        ; [#uses=10 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=5 type=i8*]
  %rcon = alloca i8, align 1                      ; [#uses=3 type=i8*]
  store %struct.aes_context* %ctx, %struct.aes_context** %1, align 8
  call void @llvm.dbg.declare(metadata !{%struct.aes_context** %1}, metadata !307), !dbg !308 ; [debug line = 358:35] [debug variable = ctx]
  store i8* %buf, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !309), !dbg !310 ; [debug line = 358:49] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !311), !dbg !313 ; [debug line = 360:13] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i8* %rcon}, metadata !314), !dbg !315 ; [debug line = 360:16] [debug variable = rcon]
  %3 = load i8** %2, align 8, !dbg !316           ; [#uses=1 type=i8*] [debug line = 362:5]
  %4 = load %struct.aes_context** %1, align 8, !dbg !316 ; [#uses=1 type=%struct.aes_context*] [debug line = 362:5]
  %5 = getelementptr inbounds %struct.aes_context* %4, i32 0, i32 1, !dbg !316 ; [#uses=1 type=[32 x i8]*] [debug line = 362:5]
  %6 = getelementptr inbounds [32 x i8]* %5, i32 0, i32 0, !dbg !316 ; [#uses=1 type=i8*] [debug line = 362:5]
  %7 = load %struct.aes_context** %1, align 8, !dbg !316 ; [#uses=1 type=%struct.aes_context*] [debug line = 362:5]
  %8 = getelementptr inbounds %struct.aes_context* %7, i32 0, i32 0, !dbg !316 ; [#uses=1 type=[32 x i8]*] [debug line = 362:5]
  %9 = getelementptr inbounds [32 x i8]* %8, i32 0, i32 0, !dbg !316 ; [#uses=1 type=i8*] [debug line = 362:5]
  call void @aes_addRoundKey_cpy(i8* %3, i8* %6, i8* %9), !dbg !316 ; [debug line = 362:5]
  store i8 1, i8* %i, align 1, !dbg !317          ; [debug line = 363:9]
  store i8 1, i8* %rcon, align 1, !dbg !317       ; [debug line = 363:9]
  br label %10, !dbg !317                         ; [debug line = 363:9]

; <label>:10                                      ; preds = %36, %0
  %11 = load i8* %i, align 1, !dbg !317           ; [#uses=1 type=i8] [debug line = 363:9]
  %12 = zext i8 %11 to i32, !dbg !317             ; [#uses=1 type=i32] [debug line = 363:9]
  %13 = icmp slt i32 %12, 14, !dbg !317           ; [#uses=1 type=i1] [debug line = 363:9]
  br i1 %13, label %14, label %39, !dbg !317      ; [debug line = 363:9]

; <label>:14                                      ; preds = %10
  %15 = load i8** %2, align 8, !dbg !319          ; [#uses=1 type=i8*] [debug line = 365:9]
  call void @aes_subBytes(i8* %15), !dbg !319     ; [debug line = 365:9]
  %16 = load i8** %2, align 8, !dbg !321          ; [#uses=1 type=i8*] [debug line = 366:9]
  call void @aes_shiftRows(i8* %16), !dbg !321    ; [debug line = 366:9]
  %17 = load i8** %2, align 8, !dbg !322          ; [#uses=1 type=i8*] [debug line = 367:9]
  call void @aes_mixColumns(i8* %17), !dbg !322   ; [debug line = 367:9]
  %18 = load i8* %i, align 1, !dbg !323           ; [#uses=1 type=i8] [debug line = 368:9]
  %19 = zext i8 %18 to i32, !dbg !323             ; [#uses=1 type=i32] [debug line = 368:9]
  %20 = and i32 %19, 1, !dbg !323                 ; [#uses=1 type=i32] [debug line = 368:9]
  %21 = icmp ne i32 %20, 0, !dbg !323             ; [#uses=1 type=i1] [debug line = 368:9]
  br i1 %21, label %22, label %27, !dbg !323      ; [debug line = 368:9]

; <label>:22                                      ; preds = %14
  %23 = load i8** %2, align 8, !dbg !324          ; [#uses=1 type=i8*] [debug line = 368:21]
  %24 = load %struct.aes_context** %1, align 8, !dbg !324 ; [#uses=1 type=%struct.aes_context*] [debug line = 368:21]
  %25 = getelementptr inbounds %struct.aes_context* %24, i32 0, i32 0, !dbg !324 ; [#uses=1 type=[32 x i8]*] [debug line = 368:21]
  %26 = getelementptr inbounds [32 x i8]* %25, i32 0, i64 16, !dbg !324 ; [#uses=1 type=i8*] [debug line = 368:21]
  call void @aes_addRoundKey(i8* %23, i8* %26), !dbg !324 ; [debug line = 368:21]
  br label %35, !dbg !324                         ; [debug line = 368:21]

; <label>:27                                      ; preds = %14
  %28 = load %struct.aes_context** %1, align 8, !dbg !325 ; [#uses=1 type=%struct.aes_context*] [debug line = 369:14]
  %29 = getelementptr inbounds %struct.aes_context* %28, i32 0, i32 0, !dbg !325 ; [#uses=1 type=[32 x i8]*] [debug line = 369:14]
  %30 = getelementptr inbounds [32 x i8]* %29, i32 0, i32 0, !dbg !325 ; [#uses=1 type=i8*] [debug line = 369:14]
  call void @aes_expandEncKey(i8* %30, i8* %rcon), !dbg !325 ; [debug line = 369:14]
  %31 = load i8** %2, align 8, !dbg !326          ; [#uses=1 type=i8*] [debug line = 369:49]
  %32 = load %struct.aes_context** %1, align 8, !dbg !326 ; [#uses=1 type=%struct.aes_context*] [debug line = 369:49]
  %33 = getelementptr inbounds %struct.aes_context* %32, i32 0, i32 0, !dbg !326 ; [#uses=1 type=[32 x i8]*] [debug line = 369:49]
  %34 = getelementptr inbounds [32 x i8]* %33, i32 0, i32 0, !dbg !326 ; [#uses=1 type=i8*] [debug line = 369:49]
  call void @aes_addRoundKey(i8* %31, i8* %34), !dbg !326 ; [debug line = 369:49]
  br label %35

; <label>:35                                      ; preds = %27, %22
  br label %36, !dbg !327                         ; [debug line = 370:5]

; <label>:36                                      ; preds = %35
  %37 = load i8* %i, align 1, !dbg !328           ; [#uses=1 type=i8] [debug line = 363:34]
  %38 = add i8 %37, 1, !dbg !328                  ; [#uses=1 type=i8] [debug line = 363:34]
  store i8 %38, i8* %i, align 1, !dbg !328        ; [debug line = 363:34]
  br label %10, !dbg !328                         ; [debug line = 363:34]

; <label>:39                                      ; preds = %10
  %40 = load i8** %2, align 8, !dbg !329          ; [#uses=1 type=i8*] [debug line = 371:5]
  call void @aes_subBytes(i8* %40), !dbg !329     ; [debug line = 371:5]
  %41 = load i8** %2, align 8, !dbg !330          ; [#uses=1 type=i8*] [debug line = 372:5]
  call void @aes_shiftRows(i8* %41), !dbg !330    ; [debug line = 372:5]
  %42 = load %struct.aes_context** %1, align 8, !dbg !331 ; [#uses=1 type=%struct.aes_context*] [debug line = 373:5]
  %43 = getelementptr inbounds %struct.aes_context* %42, i32 0, i32 0, !dbg !331 ; [#uses=1 type=[32 x i8]*] [debug line = 373:5]
  %44 = getelementptr inbounds [32 x i8]* %43, i32 0, i32 0, !dbg !331 ; [#uses=1 type=i8*] [debug line = 373:5]
  call void @aes_expandEncKey(i8* %44, i8* %rcon), !dbg !331 ; [debug line = 373:5]
  %45 = load i8** %2, align 8, !dbg !332          ; [#uses=1 type=i8*] [debug line = 374:5]
  %46 = load %struct.aes_context** %1, align 8, !dbg !332 ; [#uses=1 type=%struct.aes_context*] [debug line = 374:5]
  %47 = getelementptr inbounds %struct.aes_context* %46, i32 0, i32 0, !dbg !332 ; [#uses=1 type=[32 x i8]*] [debug line = 374:5]
  %48 = getelementptr inbounds [32 x i8]* %47, i32 0, i32 0, !dbg !332 ; [#uses=1 type=i8*] [debug line = 374:5]
  call void @aes_addRoundKey(i8* %45, i8* %48), !dbg !332 ; [debug line = 374:5]
  ret void, !dbg !333                             ; [debug line = 375:1]
}

; [#uses=2]
define internal void @aes_addRoundKey_cpy(i8* %buf, i8* %key, i8* %cpk) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %2 = alloca i8*, align 8                        ; [#uses=3 type=i8**]
  %3 = alloca i8*, align 8                        ; [#uses=3 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=8 type=i8*]
  store i8* %buf, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !334), !dbg !335 ; [debug line = 218:42] [debug variable = buf]
  store i8* %key, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !336), !dbg !337 ; [debug line = 218:56] [debug variable = key]
  store i8* %cpk, i8** %3, align 8
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !338), !dbg !339 ; [debug line = 218:70] [debug variable = cpk]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !340), !dbg !342 ; [debug line = 220:22] [debug variable = i]
  store i8 16, i8* %i, align 1, !dbg !343         ; [debug line = 220:28]
  br label %4, !dbg !344                          ; [debug line = 222:5]

; <label>:4                                       ; preds = %8, %0
  %5 = load i8* %i, align 1, !dbg !344            ; [#uses=2 type=i8] [debug line = 222:5]
  %6 = add i8 %5, -1, !dbg !344                   ; [#uses=1 type=i8] [debug line = 222:5]
  store i8 %6, i8* %i, align 1, !dbg !344         ; [debug line = 222:5]
  %7 = icmp ne i8 %5, 0, !dbg !344                ; [#uses=1 type=i1] [debug line = 222:5]
  br i1 %7, label %8, label %40, !dbg !344        ; [debug line = 222:5]

; <label>:8                                       ; preds = %4
  %9 = load i8* %i, align 1, !dbg !345            ; [#uses=1 type=i8] [debug line = 222:17]
  %10 = zext i8 %9 to i64, !dbg !345              ; [#uses=1 type=i64] [debug line = 222:17]
  %11 = load i8** %2, align 8, !dbg !345          ; [#uses=1 type=i8*] [debug line = 222:17]
  %12 = getelementptr inbounds i8* %11, i64 %10, !dbg !345 ; [#uses=1 type=i8*] [debug line = 222:17]
  %13 = load i8* %12, align 1, !dbg !345          ; [#uses=2 type=i8] [debug line = 222:17]
  %14 = load i8* %i, align 1, !dbg !345           ; [#uses=1 type=i8] [debug line = 222:17]
  %15 = zext i8 %14 to i64, !dbg !345             ; [#uses=1 type=i64] [debug line = 222:17]
  %16 = load i8** %3, align 8, !dbg !345          ; [#uses=1 type=i8*] [debug line = 222:17]
  %17 = getelementptr inbounds i8* %16, i64 %15, !dbg !345 ; [#uses=1 type=i8*] [debug line = 222:17]
  store i8 %13, i8* %17, align 1, !dbg !345       ; [debug line = 222:17]
  %18 = zext i8 %13 to i32, !dbg !345             ; [#uses=1 type=i32] [debug line = 222:17]
  %19 = load i8* %i, align 1, !dbg !345           ; [#uses=1 type=i8] [debug line = 222:17]
  %20 = zext i8 %19 to i64, !dbg !345             ; [#uses=1 type=i64] [debug line = 222:17]
  %21 = load i8** %1, align 8, !dbg !345          ; [#uses=1 type=i8*] [debug line = 222:17]
  %22 = getelementptr inbounds i8* %21, i64 %20, !dbg !345 ; [#uses=2 type=i8*] [debug line = 222:17]
  %23 = load i8* %22, align 1, !dbg !345          ; [#uses=1 type=i8] [debug line = 222:17]
  %24 = zext i8 %23 to i32, !dbg !345             ; [#uses=1 type=i32] [debug line = 222:17]
  %25 = xor i32 %24, %18, !dbg !345               ; [#uses=1 type=i32] [debug line = 222:17]
  %26 = trunc i32 %25 to i8, !dbg !345            ; [#uses=1 type=i8] [debug line = 222:17]
  store i8 %26, i8* %22, align 1, !dbg !345       ; [debug line = 222:17]
  %27 = load i8* %i, align 1, !dbg !345           ; [#uses=1 type=i8] [debug line = 222:17]
  %28 = zext i8 %27 to i32, !dbg !345             ; [#uses=1 type=i32] [debug line = 222:17]
  %29 = add nsw i32 16, %28, !dbg !345            ; [#uses=1 type=i32] [debug line = 222:17]
  %30 = sext i32 %29 to i64, !dbg !345            ; [#uses=1 type=i64] [debug line = 222:17]
  %31 = load i8** %2, align 8, !dbg !345          ; [#uses=1 type=i8*] [debug line = 222:17]
  %32 = getelementptr inbounds i8* %31, i64 %30, !dbg !345 ; [#uses=1 type=i8*] [debug line = 222:17]
  %33 = load i8* %32, align 1, !dbg !345          ; [#uses=1 type=i8] [debug line = 222:17]
  %34 = load i8* %i, align 1, !dbg !345           ; [#uses=1 type=i8] [debug line = 222:17]
  %35 = zext i8 %34 to i32, !dbg !345             ; [#uses=1 type=i32] [debug line = 222:17]
  %36 = add nsw i32 16, %35, !dbg !345            ; [#uses=1 type=i32] [debug line = 222:17]
  %37 = sext i32 %36 to i64, !dbg !345            ; [#uses=1 type=i64] [debug line = 222:17]
  %38 = load i8** %3, align 8, !dbg !345          ; [#uses=1 type=i8*] [debug line = 222:17]
  %39 = getelementptr inbounds i8* %38, i64 %37, !dbg !345 ; [#uses=1 type=i8*] [debug line = 222:17]
  store i8 %33, i8* %39, align 1, !dbg !345       ; [debug line = 222:17]
  br label %4, !dbg !345                          ; [debug line = 222:17]

; <label>:40                                      ; preds = %4
  ret void, !dbg !346                             ; [debug line = 223:1]
}

; [#uses=2]
define internal void @aes_subBytes(i8* %buf) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=3 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=5 type=i8*]
  store i8* %buf, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !347), !dbg !348 ; [debug line = 194:35] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !349), !dbg !351 ; [debug line = 196:22] [debug variable = i]
  store i8 16, i8* %i, align 1, !dbg !352         ; [debug line = 196:28]
  br label %2, !dbg !353                          ; [debug line = 198:5]

; <label>:2                                       ; preds = %6, %0
  %3 = load i8* %i, align 1, !dbg !353            ; [#uses=2 type=i8] [debug line = 198:5]
  %4 = add i8 %3, -1, !dbg !353                   ; [#uses=1 type=i8] [debug line = 198:5]
  store i8 %4, i8* %i, align 1, !dbg !353         ; [debug line = 198:5]
  %5 = icmp ne i8 %3, 0, !dbg !353                ; [#uses=1 type=i1] [debug line = 198:5]
  br i1 %5, label %6, label %19, !dbg !353        ; [debug line = 198:5]

; <label>:6                                       ; preds = %2
  %7 = load i8* %i, align 1, !dbg !354            ; [#uses=1 type=i8] [debug line = 198:17]
  %8 = zext i8 %7 to i64, !dbg !354               ; [#uses=1 type=i64] [debug line = 198:17]
  %9 = load i8** %1, align 8, !dbg !354           ; [#uses=1 type=i8*] [debug line = 198:17]
  %10 = getelementptr inbounds i8* %9, i64 %8, !dbg !354 ; [#uses=1 type=i8*] [debug line = 198:17]
  %11 = load i8* %10, align 1, !dbg !354          ; [#uses=1 type=i8] [debug line = 198:17]
  %12 = zext i8 %11 to i64, !dbg !354             ; [#uses=1 type=i64] [debug line = 198:17]
  %13 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %12, !dbg !354 ; [#uses=1 type=i8*] [debug line = 198:17]
  %14 = load i8* %13, align 1, !dbg !354          ; [#uses=1 type=i8] [debug line = 198:17]
  %15 = load i8* %i, align 1, !dbg !354           ; [#uses=1 type=i8] [debug line = 198:17]
  %16 = zext i8 %15 to i64, !dbg !354             ; [#uses=1 type=i64] [debug line = 198:17]
  %17 = load i8** %1, align 8, !dbg !354          ; [#uses=1 type=i8*] [debug line = 198:17]
  %18 = getelementptr inbounds i8* %17, i64 %16, !dbg !354 ; [#uses=1 type=i8*] [debug line = 198:17]
  store i8 %14, i8* %18, align 1, !dbg !354       ; [debug line = 198:17]
  br label %2, !dbg !354                          ; [debug line = 198:17]

; <label>:19                                      ; preds = %2
  ret void, !dbg !355                             ; [debug line = 199:1]
}

; [#uses=2]
define internal void @aes_shiftRows(i8* %buf) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=25 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=4 type=i8*]
  %j = alloca i8, align 1                         ; [#uses=4 type=i8*]
  store i8* %buf, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !356), !dbg !357 ; [debug line = 227:36] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !358), !dbg !360 ; [debug line = 229:22] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i8* %j}, metadata !361), !dbg !362 ; [debug line = 229:25] [debug variable = j]
  %2 = load i8** %1, align 8, !dbg !363           ; [#uses=1 type=i8*] [debug line = 231:5]
  %3 = getelementptr inbounds i8* %2, i64 1, !dbg !363 ; [#uses=1 type=i8*] [debug line = 231:5]
  %4 = load i8* %3, align 1, !dbg !363            ; [#uses=1 type=i8] [debug line = 231:5]
  store i8 %4, i8* %i, align 1, !dbg !363         ; [debug line = 231:5]
  %5 = load i8** %1, align 8, !dbg !363           ; [#uses=1 type=i8*] [debug line = 231:5]
  %6 = getelementptr inbounds i8* %5, i64 5, !dbg !363 ; [#uses=1 type=i8*] [debug line = 231:5]
  %7 = load i8* %6, align 1, !dbg !363            ; [#uses=1 type=i8] [debug line = 231:5]
  %8 = load i8** %1, align 8, !dbg !363           ; [#uses=1 type=i8*] [debug line = 231:5]
  %9 = getelementptr inbounds i8* %8, i64 1, !dbg !363 ; [#uses=1 type=i8*] [debug line = 231:5]
  store i8 %7, i8* %9, align 1, !dbg !363         ; [debug line = 231:5]
  %10 = load i8** %1, align 8, !dbg !363          ; [#uses=1 type=i8*] [debug line = 231:5]
  %11 = getelementptr inbounds i8* %10, i64 9, !dbg !363 ; [#uses=1 type=i8*] [debug line = 231:5]
  %12 = load i8* %11, align 1, !dbg !363          ; [#uses=1 type=i8] [debug line = 231:5]
  %13 = load i8** %1, align 8, !dbg !363          ; [#uses=1 type=i8*] [debug line = 231:5]
  %14 = getelementptr inbounds i8* %13, i64 5, !dbg !363 ; [#uses=1 type=i8*] [debug line = 231:5]
  store i8 %12, i8* %14, align 1, !dbg !363       ; [debug line = 231:5]
  %15 = load i8** %1, align 8, !dbg !363          ; [#uses=1 type=i8*] [debug line = 231:5]
  %16 = getelementptr inbounds i8* %15, i64 13, !dbg !363 ; [#uses=1 type=i8*] [debug line = 231:5]
  %17 = load i8* %16, align 1, !dbg !363          ; [#uses=1 type=i8] [debug line = 231:5]
  %18 = load i8** %1, align 8, !dbg !363          ; [#uses=1 type=i8*] [debug line = 231:5]
  %19 = getelementptr inbounds i8* %18, i64 9, !dbg !363 ; [#uses=1 type=i8*] [debug line = 231:5]
  store i8 %17, i8* %19, align 1, !dbg !363       ; [debug line = 231:5]
  %20 = load i8* %i, align 1, !dbg !363           ; [#uses=1 type=i8] [debug line = 231:5]
  %21 = load i8** %1, align 8, !dbg !363          ; [#uses=1 type=i8*] [debug line = 231:5]
  %22 = getelementptr inbounds i8* %21, i64 13, !dbg !363 ; [#uses=1 type=i8*] [debug line = 231:5]
  store i8 %20, i8* %22, align 1, !dbg !363       ; [debug line = 231:5]
  %23 = load i8** %1, align 8, !dbg !364          ; [#uses=1 type=i8*] [debug line = 232:5]
  %24 = getelementptr inbounds i8* %23, i64 10, !dbg !364 ; [#uses=1 type=i8*] [debug line = 232:5]
  %25 = load i8* %24, align 1, !dbg !364          ; [#uses=1 type=i8] [debug line = 232:5]
  store i8 %25, i8* %i, align 1, !dbg !364        ; [debug line = 232:5]
  %26 = load i8** %1, align 8, !dbg !364          ; [#uses=1 type=i8*] [debug line = 232:5]
  %27 = getelementptr inbounds i8* %26, i64 2, !dbg !364 ; [#uses=1 type=i8*] [debug line = 232:5]
  %28 = load i8* %27, align 1, !dbg !364          ; [#uses=1 type=i8] [debug line = 232:5]
  %29 = load i8** %1, align 8, !dbg !364          ; [#uses=1 type=i8*] [debug line = 232:5]
  %30 = getelementptr inbounds i8* %29, i64 10, !dbg !364 ; [#uses=1 type=i8*] [debug line = 232:5]
  store i8 %28, i8* %30, align 1, !dbg !364       ; [debug line = 232:5]
  %31 = load i8* %i, align 1, !dbg !364           ; [#uses=1 type=i8] [debug line = 232:5]
  %32 = load i8** %1, align 8, !dbg !364          ; [#uses=1 type=i8*] [debug line = 232:5]
  %33 = getelementptr inbounds i8* %32, i64 2, !dbg !364 ; [#uses=1 type=i8*] [debug line = 232:5]
  store i8 %31, i8* %33, align 1, !dbg !364       ; [debug line = 232:5]
  %34 = load i8** %1, align 8, !dbg !365          ; [#uses=1 type=i8*] [debug line = 233:5]
  %35 = getelementptr inbounds i8* %34, i64 3, !dbg !365 ; [#uses=1 type=i8*] [debug line = 233:5]
  %36 = load i8* %35, align 1, !dbg !365          ; [#uses=1 type=i8] [debug line = 233:5]
  store i8 %36, i8* %j, align 1, !dbg !365        ; [debug line = 233:5]
  %37 = load i8** %1, align 8, !dbg !365          ; [#uses=1 type=i8*] [debug line = 233:5]
  %38 = getelementptr inbounds i8* %37, i64 15, !dbg !365 ; [#uses=1 type=i8*] [debug line = 233:5]
  %39 = load i8* %38, align 1, !dbg !365          ; [#uses=1 type=i8] [debug line = 233:5]
  %40 = load i8** %1, align 8, !dbg !365          ; [#uses=1 type=i8*] [debug line = 233:5]
  %41 = getelementptr inbounds i8* %40, i64 3, !dbg !365 ; [#uses=1 type=i8*] [debug line = 233:5]
  store i8 %39, i8* %41, align 1, !dbg !365       ; [debug line = 233:5]
  %42 = load i8** %1, align 8, !dbg !365          ; [#uses=1 type=i8*] [debug line = 233:5]
  %43 = getelementptr inbounds i8* %42, i64 11, !dbg !365 ; [#uses=1 type=i8*] [debug line = 233:5]
  %44 = load i8* %43, align 1, !dbg !365          ; [#uses=1 type=i8] [debug line = 233:5]
  %45 = load i8** %1, align 8, !dbg !365          ; [#uses=1 type=i8*] [debug line = 233:5]
  %46 = getelementptr inbounds i8* %45, i64 15, !dbg !365 ; [#uses=1 type=i8*] [debug line = 233:5]
  store i8 %44, i8* %46, align 1, !dbg !365       ; [debug line = 233:5]
  %47 = load i8** %1, align 8, !dbg !365          ; [#uses=1 type=i8*] [debug line = 233:5]
  %48 = getelementptr inbounds i8* %47, i64 7, !dbg !365 ; [#uses=1 type=i8*] [debug line = 233:5]
  %49 = load i8* %48, align 1, !dbg !365          ; [#uses=1 type=i8] [debug line = 233:5]
  %50 = load i8** %1, align 8, !dbg !365          ; [#uses=1 type=i8*] [debug line = 233:5]
  %51 = getelementptr inbounds i8* %50, i64 11, !dbg !365 ; [#uses=1 type=i8*] [debug line = 233:5]
  store i8 %49, i8* %51, align 1, !dbg !365       ; [debug line = 233:5]
  %52 = load i8* %j, align 1, !dbg !365           ; [#uses=1 type=i8] [debug line = 233:5]
  %53 = load i8** %1, align 8, !dbg !365          ; [#uses=1 type=i8*] [debug line = 233:5]
  %54 = getelementptr inbounds i8* %53, i64 7, !dbg !365 ; [#uses=1 type=i8*] [debug line = 233:5]
  store i8 %52, i8* %54, align 1, !dbg !365       ; [debug line = 233:5]
  %55 = load i8** %1, align 8, !dbg !366          ; [#uses=1 type=i8*] [debug line = 234:5]
  %56 = getelementptr inbounds i8* %55, i64 14, !dbg !366 ; [#uses=1 type=i8*] [debug line = 234:5]
  %57 = load i8* %56, align 1, !dbg !366          ; [#uses=1 type=i8] [debug line = 234:5]
  store i8 %57, i8* %j, align 1, !dbg !366        ; [debug line = 234:5]
  %58 = load i8** %1, align 8, !dbg !366          ; [#uses=1 type=i8*] [debug line = 234:5]
  %59 = getelementptr inbounds i8* %58, i64 6, !dbg !366 ; [#uses=1 type=i8*] [debug line = 234:5]
  %60 = load i8* %59, align 1, !dbg !366          ; [#uses=1 type=i8] [debug line = 234:5]
  %61 = load i8** %1, align 8, !dbg !366          ; [#uses=1 type=i8*] [debug line = 234:5]
  %62 = getelementptr inbounds i8* %61, i64 14, !dbg !366 ; [#uses=1 type=i8*] [debug line = 234:5]
  store i8 %60, i8* %62, align 1, !dbg !366       ; [debug line = 234:5]
  %63 = load i8* %j, align 1, !dbg !366           ; [#uses=1 type=i8] [debug line = 234:5]
  %64 = load i8** %1, align 8, !dbg !366          ; [#uses=1 type=i8*] [debug line = 234:5]
  %65 = getelementptr inbounds i8* %64, i64 6, !dbg !366 ; [#uses=1 type=i8*] [debug line = 234:5]
  store i8 %63, i8* %65, align 1, !dbg !366       ; [debug line = 234:5]
  ret void, !dbg !367                             ; [debug line = 236:1]
}

; [#uses=1]
define internal void @aes_mixColumns(i8* %buf) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=9 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=12 type=i8*]
  %a = alloca i8, align 1                         ; [#uses=4 type=i8*]
  %b = alloca i8, align 1                         ; [#uses=4 type=i8*]
  %c = alloca i8, align 1                         ; [#uses=4 type=i8*]
  %d = alloca i8, align 1                         ; [#uses=4 type=i8*]
  %e = alloca i8, align 1                         ; [#uses=5 type=i8*]
  store i8* %buf, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !368), !dbg !369 ; [debug line = 251:37] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !370), !dbg !372 ; [debug line = 253:22] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i8* %a}, metadata !373), !dbg !374 ; [debug line = 253:25] [debug variable = a]
  call void @llvm.dbg.declare(metadata !{i8* %b}, metadata !375), !dbg !376 ; [debug line = 253:28] [debug variable = b]
  call void @llvm.dbg.declare(metadata !{i8* %c}, metadata !377), !dbg !378 ; [debug line = 253:31] [debug variable = c]
  call void @llvm.dbg.declare(metadata !{i8* %d}, metadata !379), !dbg !380 ; [debug line = 253:34] [debug variable = d]
  call void @llvm.dbg.declare(metadata !{i8* %e}, metadata !381), !dbg !382 ; [debug line = 253:37] [debug variable = e]
  store i8 0, i8* %i, align 1, !dbg !383          ; [debug line = 255:10]
  br label %2, !dbg !383                          ; [debug line = 255:10]

; <label>:2                                       ; preds = %127, %0
  %3 = load i8* %i, align 1, !dbg !383            ; [#uses=1 type=i8] [debug line = 255:10]
  %4 = zext i8 %3 to i32, !dbg !383               ; [#uses=1 type=i32] [debug line = 255:10]
  %5 = icmp slt i32 %4, 16, !dbg !383             ; [#uses=1 type=i1] [debug line = 255:10]
  br i1 %5, label %6, label %132, !dbg !383       ; [debug line = 255:10]

; <label>:6                                       ; preds = %2
  %7 = load i8* %i, align 1, !dbg !385            ; [#uses=1 type=i8] [debug line = 257:9]
  %8 = zext i8 %7 to i64, !dbg !385               ; [#uses=1 type=i64] [debug line = 257:9]
  %9 = load i8** %1, align 8, !dbg !385           ; [#uses=1 type=i8*] [debug line = 257:9]
  %10 = getelementptr inbounds i8* %9, i64 %8, !dbg !385 ; [#uses=1 type=i8*] [debug line = 257:9]
  %11 = load i8* %10, align 1, !dbg !385          ; [#uses=1 type=i8] [debug line = 257:9]
  store i8 %11, i8* %a, align 1, !dbg !385        ; [debug line = 257:9]
  %12 = load i8* %i, align 1, !dbg !387           ; [#uses=1 type=i8] [debug line = 258:9]
  %13 = zext i8 %12 to i32, !dbg !387             ; [#uses=1 type=i32] [debug line = 258:9]
  %14 = add nsw i32 %13, 1, !dbg !387             ; [#uses=1 type=i32] [debug line = 258:9]
  %15 = sext i32 %14 to i64, !dbg !387            ; [#uses=1 type=i64] [debug line = 258:9]
  %16 = load i8** %1, align 8, !dbg !387          ; [#uses=1 type=i8*] [debug line = 258:9]
  %17 = getelementptr inbounds i8* %16, i64 %15, !dbg !387 ; [#uses=1 type=i8*] [debug line = 258:9]
  %18 = load i8* %17, align 1, !dbg !387          ; [#uses=1 type=i8] [debug line = 258:9]
  store i8 %18, i8* %b, align 1, !dbg !387        ; [debug line = 258:9]
  %19 = load i8* %i, align 1, !dbg !388           ; [#uses=1 type=i8] [debug line = 259:9]
  %20 = zext i8 %19 to i32, !dbg !388             ; [#uses=1 type=i32] [debug line = 259:9]
  %21 = add nsw i32 %20, 2, !dbg !388             ; [#uses=1 type=i32] [debug line = 259:9]
  %22 = sext i32 %21 to i64, !dbg !388            ; [#uses=1 type=i64] [debug line = 259:9]
  %23 = load i8** %1, align 8, !dbg !388          ; [#uses=1 type=i8*] [debug line = 259:9]
  %24 = getelementptr inbounds i8* %23, i64 %22, !dbg !388 ; [#uses=1 type=i8*] [debug line = 259:9]
  %25 = load i8* %24, align 1, !dbg !388          ; [#uses=1 type=i8] [debug line = 259:9]
  store i8 %25, i8* %c, align 1, !dbg !388        ; [debug line = 259:9]
  %26 = load i8* %i, align 1, !dbg !389           ; [#uses=1 type=i8] [debug line = 260:9]
  %27 = zext i8 %26 to i32, !dbg !389             ; [#uses=1 type=i32] [debug line = 260:9]
  %28 = add nsw i32 %27, 3, !dbg !389             ; [#uses=1 type=i32] [debug line = 260:9]
  %29 = sext i32 %28 to i64, !dbg !389            ; [#uses=1 type=i64] [debug line = 260:9]
  %30 = load i8** %1, align 8, !dbg !389          ; [#uses=1 type=i8*] [debug line = 260:9]
  %31 = getelementptr inbounds i8* %30, i64 %29, !dbg !389 ; [#uses=1 type=i8*] [debug line = 260:9]
  %32 = load i8* %31, align 1, !dbg !389          ; [#uses=1 type=i8] [debug line = 260:9]
  store i8 %32, i8* %d, align 1, !dbg !389        ; [debug line = 260:9]
  %33 = load i8* %a, align 1, !dbg !390           ; [#uses=1 type=i8] [debug line = 261:9]
  %34 = zext i8 %33 to i32, !dbg !390             ; [#uses=1 type=i32] [debug line = 261:9]
  %35 = load i8* %b, align 1, !dbg !390           ; [#uses=1 type=i8] [debug line = 261:9]
  %36 = zext i8 %35 to i32, !dbg !390             ; [#uses=1 type=i32] [debug line = 261:9]
  %37 = xor i32 %34, %36, !dbg !390               ; [#uses=1 type=i32] [debug line = 261:9]
  %38 = load i8* %c, align 1, !dbg !390           ; [#uses=1 type=i8] [debug line = 261:9]
  %39 = zext i8 %38 to i32, !dbg !390             ; [#uses=1 type=i32] [debug line = 261:9]
  %40 = xor i32 %37, %39, !dbg !390               ; [#uses=1 type=i32] [debug line = 261:9]
  %41 = load i8* %d, align 1, !dbg !390           ; [#uses=1 type=i8] [debug line = 261:9]
  %42 = zext i8 %41 to i32, !dbg !390             ; [#uses=1 type=i32] [debug line = 261:9]
  %43 = xor i32 %40, %42, !dbg !390               ; [#uses=1 type=i32] [debug line = 261:9]
  %44 = trunc i32 %43 to i8, !dbg !390            ; [#uses=1 type=i8] [debug line = 261:9]
  store i8 %44, i8* %e, align 1, !dbg !390        ; [debug line = 261:9]
  %45 = load i8* %e, align 1, !dbg !391           ; [#uses=1 type=i8] [debug line = 262:9]
  %46 = zext i8 %45 to i32, !dbg !391             ; [#uses=1 type=i32] [debug line = 262:9]
  %47 = load i8* %a, align 1, !dbg !392           ; [#uses=1 type=i8] [debug line = 262:23]
  %48 = zext i8 %47 to i32, !dbg !392             ; [#uses=1 type=i32] [debug line = 262:23]
  %49 = load i8* %b, align 1, !dbg !392           ; [#uses=1 type=i8] [debug line = 262:23]
  %50 = zext i8 %49 to i32, !dbg !392             ; [#uses=1 type=i32] [debug line = 262:23]
  %51 = xor i32 %48, %50, !dbg !392               ; [#uses=1 type=i32] [debug line = 262:23]
  %52 = trunc i32 %51 to i8, !dbg !392            ; [#uses=1 type=i8] [debug line = 262:23]
  %53 = call zeroext i8 @rj_xtime(i8 zeroext %52), !dbg !392 ; [#uses=1 type=i8] [debug line = 262:23]
  %54 = zext i8 %53 to i32, !dbg !392             ; [#uses=1 type=i32] [debug line = 262:23]
  %55 = xor i32 %46, %54, !dbg !392               ; [#uses=1 type=i32] [debug line = 262:23]
  %56 = load i8* %i, align 1, !dbg !392           ; [#uses=1 type=i8] [debug line = 262:23]
  %57 = zext i8 %56 to i64, !dbg !392             ; [#uses=1 type=i64] [debug line = 262:23]
  %58 = load i8** %1, align 8, !dbg !392          ; [#uses=1 type=i8*] [debug line = 262:23]
  %59 = getelementptr inbounds i8* %58, i64 %57, !dbg !392 ; [#uses=2 type=i8*] [debug line = 262:23]
  %60 = load i8* %59, align 1, !dbg !392          ; [#uses=1 type=i8] [debug line = 262:23]
  %61 = zext i8 %60 to i32, !dbg !392             ; [#uses=1 type=i32] [debug line = 262:23]
  %62 = xor i32 %61, %55, !dbg !392               ; [#uses=1 type=i32] [debug line = 262:23]
  %63 = trunc i32 %62 to i8, !dbg !392            ; [#uses=1 type=i8] [debug line = 262:23]
  store i8 %63, i8* %59, align 1, !dbg !392       ; [debug line = 262:23]
  %64 = load i8* %e, align 1, !dbg !393           ; [#uses=1 type=i8] [debug line = 263:9]
  %65 = zext i8 %64 to i32, !dbg !393             ; [#uses=1 type=i32] [debug line = 263:9]
  %66 = load i8* %b, align 1, !dbg !394           ; [#uses=1 type=i8] [debug line = 263:27]
  %67 = zext i8 %66 to i32, !dbg !394             ; [#uses=1 type=i32] [debug line = 263:27]
  %68 = load i8* %c, align 1, !dbg !394           ; [#uses=1 type=i8] [debug line = 263:27]
  %69 = zext i8 %68 to i32, !dbg !394             ; [#uses=1 type=i32] [debug line = 263:27]
  %70 = xor i32 %67, %69, !dbg !394               ; [#uses=1 type=i32] [debug line = 263:27]
  %71 = trunc i32 %70 to i8, !dbg !394            ; [#uses=1 type=i8] [debug line = 263:27]
  %72 = call zeroext i8 @rj_xtime(i8 zeroext %71), !dbg !394 ; [#uses=1 type=i8] [debug line = 263:27]
  %73 = zext i8 %72 to i32, !dbg !394             ; [#uses=1 type=i32] [debug line = 263:27]
  %74 = xor i32 %65, %73, !dbg !394               ; [#uses=1 type=i32] [debug line = 263:27]
  %75 = load i8* %i, align 1, !dbg !394           ; [#uses=1 type=i8] [debug line = 263:27]
  %76 = zext i8 %75 to i32, !dbg !394             ; [#uses=1 type=i32] [debug line = 263:27]
  %77 = add nsw i32 %76, 1, !dbg !394             ; [#uses=1 type=i32] [debug line = 263:27]
  %78 = sext i32 %77 to i64, !dbg !394            ; [#uses=1 type=i64] [debug line = 263:27]
  %79 = load i8** %1, align 8, !dbg !394          ; [#uses=1 type=i8*] [debug line = 263:27]
  %80 = getelementptr inbounds i8* %79, i64 %78, !dbg !394 ; [#uses=2 type=i8*] [debug line = 263:27]
  %81 = load i8* %80, align 1, !dbg !394          ; [#uses=1 type=i8] [debug line = 263:27]
  %82 = zext i8 %81 to i32, !dbg !394             ; [#uses=1 type=i32] [debug line = 263:27]
  %83 = xor i32 %82, %74, !dbg !394               ; [#uses=1 type=i32] [debug line = 263:27]
  %84 = trunc i32 %83 to i8, !dbg !394            ; [#uses=1 type=i8] [debug line = 263:27]
  store i8 %84, i8* %80, align 1, !dbg !394       ; [debug line = 263:27]
  %85 = load i8* %e, align 1, !dbg !395           ; [#uses=1 type=i8] [debug line = 264:9]
  %86 = zext i8 %85 to i32, !dbg !395             ; [#uses=1 type=i32] [debug line = 264:9]
  %87 = load i8* %c, align 1, !dbg !396           ; [#uses=1 type=i8] [debug line = 264:27]
  %88 = zext i8 %87 to i32, !dbg !396             ; [#uses=1 type=i32] [debug line = 264:27]
  %89 = load i8* %d, align 1, !dbg !396           ; [#uses=1 type=i8] [debug line = 264:27]
  %90 = zext i8 %89 to i32, !dbg !396             ; [#uses=1 type=i32] [debug line = 264:27]
  %91 = xor i32 %88, %90, !dbg !396               ; [#uses=1 type=i32] [debug line = 264:27]
  %92 = trunc i32 %91 to i8, !dbg !396            ; [#uses=1 type=i8] [debug line = 264:27]
  %93 = call zeroext i8 @rj_xtime(i8 zeroext %92), !dbg !396 ; [#uses=1 type=i8] [debug line = 264:27]
  %94 = zext i8 %93 to i32, !dbg !396             ; [#uses=1 type=i32] [debug line = 264:27]
  %95 = xor i32 %86, %94, !dbg !396               ; [#uses=1 type=i32] [debug line = 264:27]
  %96 = load i8* %i, align 1, !dbg !396           ; [#uses=1 type=i8] [debug line = 264:27]
  %97 = zext i8 %96 to i32, !dbg !396             ; [#uses=1 type=i32] [debug line = 264:27]
  %98 = add nsw i32 %97, 2, !dbg !396             ; [#uses=1 type=i32] [debug line = 264:27]
  %99 = sext i32 %98 to i64, !dbg !396            ; [#uses=1 type=i64] [debug line = 264:27]
  %100 = load i8** %1, align 8, !dbg !396         ; [#uses=1 type=i8*] [debug line = 264:27]
  %101 = getelementptr inbounds i8* %100, i64 %99, !dbg !396 ; [#uses=2 type=i8*] [debug line = 264:27]
  %102 = load i8* %101, align 1, !dbg !396        ; [#uses=1 type=i8] [debug line = 264:27]
  %103 = zext i8 %102 to i32, !dbg !396           ; [#uses=1 type=i32] [debug line = 264:27]
  %104 = xor i32 %103, %95, !dbg !396             ; [#uses=1 type=i32] [debug line = 264:27]
  %105 = trunc i32 %104 to i8, !dbg !396          ; [#uses=1 type=i8] [debug line = 264:27]
  store i8 %105, i8* %101, align 1, !dbg !396     ; [debug line = 264:27]
  %106 = load i8* %e, align 1, !dbg !397          ; [#uses=1 type=i8] [debug line = 265:9]
  %107 = zext i8 %106 to i32, !dbg !397           ; [#uses=1 type=i32] [debug line = 265:9]
  %108 = load i8* %d, align 1, !dbg !398          ; [#uses=1 type=i8] [debug line = 265:27]
  %109 = zext i8 %108 to i32, !dbg !398           ; [#uses=1 type=i32] [debug line = 265:27]
  %110 = load i8* %a, align 1, !dbg !398          ; [#uses=1 type=i8] [debug line = 265:27]
  %111 = zext i8 %110 to i32, !dbg !398           ; [#uses=1 type=i32] [debug line = 265:27]
  %112 = xor i32 %109, %111, !dbg !398            ; [#uses=1 type=i32] [debug line = 265:27]
  %113 = trunc i32 %112 to i8, !dbg !398          ; [#uses=1 type=i8] [debug line = 265:27]
  %114 = call zeroext i8 @rj_xtime(i8 zeroext %113), !dbg !398 ; [#uses=1 type=i8] [debug line = 265:27]
  %115 = zext i8 %114 to i32, !dbg !398           ; [#uses=1 type=i32] [debug line = 265:27]
  %116 = xor i32 %107, %115, !dbg !398            ; [#uses=1 type=i32] [debug line = 265:27]
  %117 = load i8* %i, align 1, !dbg !398          ; [#uses=1 type=i8] [debug line = 265:27]
  %118 = zext i8 %117 to i32, !dbg !398           ; [#uses=1 type=i32] [debug line = 265:27]
  %119 = add nsw i32 %118, 3, !dbg !398           ; [#uses=1 type=i32] [debug line = 265:27]
  %120 = sext i32 %119 to i64, !dbg !398          ; [#uses=1 type=i64] [debug line = 265:27]
  %121 = load i8** %1, align 8, !dbg !398         ; [#uses=1 type=i8*] [debug line = 265:27]
  %122 = getelementptr inbounds i8* %121, i64 %120, !dbg !398 ; [#uses=2 type=i8*] [debug line = 265:27]
  %123 = load i8* %122, align 1, !dbg !398        ; [#uses=1 type=i8] [debug line = 265:27]
  %124 = zext i8 %123 to i32, !dbg !398           ; [#uses=1 type=i32] [debug line = 265:27]
  %125 = xor i32 %124, %116, !dbg !398            ; [#uses=1 type=i32] [debug line = 265:27]
  %126 = trunc i32 %125 to i8, !dbg !398          ; [#uses=1 type=i8] [debug line = 265:27]
  store i8 %126, i8* %122, align 1, !dbg !398     ; [debug line = 265:27]
  br label %127, !dbg !399                        ; [debug line = 266:5]

; <label>:127                                     ; preds = %6
  %128 = load i8* %i, align 1, !dbg !400          ; [#uses=1 type=i8] [debug line = 255:25]
  %129 = zext i8 %128 to i32, !dbg !400           ; [#uses=1 type=i32] [debug line = 255:25]
  %130 = add nsw i32 %129, 4, !dbg !400           ; [#uses=1 type=i32] [debug line = 255:25]
  %131 = trunc i32 %130 to i8, !dbg !400          ; [#uses=1 type=i8] [debug line = 255:25]
  store i8 %131, i8* %i, align 1, !dbg !400       ; [debug line = 255:25]
  br label %2, !dbg !400                          ; [debug line = 255:25]

; <label>:132                                     ; preds = %2
  ret void, !dbg !401                             ; [debug line = 267:1]
}

; [#uses=6]
define internal void @aes_addRoundKey(i8* %buf, i8* %key) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %2 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=5 type=i8*]
  store i8* %buf, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !402), !dbg !403 ; [debug line = 210:38] [debug variable = buf]
  store i8* %key, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !404), !dbg !405 ; [debug line = 210:52] [debug variable = key]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !406), !dbg !408 ; [debug line = 212:22] [debug variable = i]
  store i8 16, i8* %i, align 1, !dbg !409         ; [debug line = 212:28]
  br label %3, !dbg !410                          ; [debug line = 214:5]

; <label>:3                                       ; preds = %7, %0
  %4 = load i8* %i, align 1, !dbg !410            ; [#uses=2 type=i8] [debug line = 214:5]
  %5 = add i8 %4, -1, !dbg !410                   ; [#uses=1 type=i8] [debug line = 214:5]
  store i8 %5, i8* %i, align 1, !dbg !410         ; [debug line = 214:5]
  %6 = icmp ne i8 %4, 0, !dbg !410                ; [#uses=1 type=i1] [debug line = 214:5]
  br i1 %6, label %7, label %22, !dbg !410        ; [debug line = 214:5]

; <label>:7                                       ; preds = %3
  %8 = load i8* %i, align 1, !dbg !411            ; [#uses=1 type=i8] [debug line = 214:17]
  %9 = zext i8 %8 to i64, !dbg !411               ; [#uses=1 type=i64] [debug line = 214:17]
  %10 = load i8** %2, align 8, !dbg !411          ; [#uses=1 type=i8*] [debug line = 214:17]
  %11 = getelementptr inbounds i8* %10, i64 %9, !dbg !411 ; [#uses=1 type=i8*] [debug line = 214:17]
  %12 = load i8* %11, align 1, !dbg !411          ; [#uses=1 type=i8] [debug line = 214:17]
  %13 = zext i8 %12 to i32, !dbg !411             ; [#uses=1 type=i32] [debug line = 214:17]
  %14 = load i8* %i, align 1, !dbg !411           ; [#uses=1 type=i8] [debug line = 214:17]
  %15 = zext i8 %14 to i64, !dbg !411             ; [#uses=1 type=i64] [debug line = 214:17]
  %16 = load i8** %1, align 8, !dbg !411          ; [#uses=1 type=i8*] [debug line = 214:17]
  %17 = getelementptr inbounds i8* %16, i64 %15, !dbg !411 ; [#uses=2 type=i8*] [debug line = 214:17]
  %18 = load i8* %17, align 1, !dbg !411          ; [#uses=1 type=i8] [debug line = 214:17]
  %19 = zext i8 %18 to i32, !dbg !411             ; [#uses=1 type=i32] [debug line = 214:17]
  %20 = xor i32 %19, %13, !dbg !411               ; [#uses=1 type=i32] [debug line = 214:17]
  %21 = trunc i32 %20 to i8, !dbg !411            ; [#uses=1 type=i8] [debug line = 214:17]
  store i8 %21, i8* %17, align 1, !dbg !411       ; [debug line = 214:17]
  br label %3, !dbg !411                          ; [debug line = 214:17]

; <label>:22                                      ; preds = %3
  ret void, !dbg !412                             ; [debug line = 215:1]
}

; [#uses=1]
define void @aes_decrypt_ecb(%struct.aes_context* %ctx, i8* %buf) nounwind uwtable {
  %1 = alloca %struct.aes_context*, align 8       ; [#uses=7 type=%struct.aes_context**]
  %2 = alloca i8*, align 8                        ; [#uses=10 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=4 type=i8*]
  %rcon = alloca i8, align 1                      ; [#uses=2 type=i8*]
  store %struct.aes_context* %ctx, %struct.aes_context** %1, align 8
  call void @llvm.dbg.declare(metadata !{%struct.aes_context** %1}, metadata !413), !dbg !414 ; [debug line = 378:35] [debug variable = ctx]
  store i8* %buf, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !415), !dbg !416 ; [debug line = 378:49] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !417), !dbg !419 ; [debug line = 380:13] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i8* %rcon}, metadata !420), !dbg !421 ; [debug line = 380:16] [debug variable = rcon]
  %3 = load i8** %2, align 8, !dbg !422           ; [#uses=1 type=i8*] [debug line = 382:5]
  %4 = load %struct.aes_context** %1, align 8, !dbg !422 ; [#uses=1 type=%struct.aes_context*] [debug line = 382:5]
  %5 = getelementptr inbounds %struct.aes_context* %4, i32 0, i32 2, !dbg !422 ; [#uses=1 type=[32 x i8]*] [debug line = 382:5]
  %6 = getelementptr inbounds [32 x i8]* %5, i32 0, i32 0, !dbg !422 ; [#uses=1 type=i8*] [debug line = 382:5]
  %7 = load %struct.aes_context** %1, align 8, !dbg !422 ; [#uses=1 type=%struct.aes_context*] [debug line = 382:5]
  %8 = getelementptr inbounds %struct.aes_context* %7, i32 0, i32 0, !dbg !422 ; [#uses=1 type=[32 x i8]*] [debug line = 382:5]
  %9 = getelementptr inbounds [32 x i8]* %8, i32 0, i32 0, !dbg !422 ; [#uses=1 type=i8*] [debug line = 382:5]
  call void @aes_addRoundKey_cpy(i8* %3, i8* %6, i8* %9), !dbg !422 ; [debug line = 382:5]
  %10 = load i8** %2, align 8, !dbg !423          ; [#uses=1 type=i8*] [debug line = 383:5]
  call void @aes_shiftRows_inv(i8* %10), !dbg !423 ; [debug line = 383:5]
  %11 = load i8** %2, align 8, !dbg !424          ; [#uses=1 type=i8*] [debug line = 384:5]
  call void @aes_subBytes_inv(i8* %11), !dbg !424 ; [debug line = 384:5]
  store i8 14, i8* %i, align 1, !dbg !425         ; [debug line = 386:10]
  store i8 -128, i8* %rcon, align 1, !dbg !425    ; [debug line = 386:10]
  br label %12, !dbg !425                         ; [debug line = 386:10]

; <label>:12                                      ; preds = %34, %0
  %13 = load i8* %i, align 1, !dbg !425           ; [#uses=1 type=i8] [debug line = 386:10]
  %14 = add i8 %13, -1, !dbg !425                 ; [#uses=2 type=i8] [debug line = 386:10]
  store i8 %14, i8* %i, align 1, !dbg !425        ; [debug line = 386:10]
  %15 = icmp ne i8 %14, 0, !dbg !425              ; [#uses=1 type=i1] [debug line = 386:10]
  br i1 %15, label %16, label %38, !dbg !425      ; [debug line = 386:10]

; <label>:16                                      ; preds = %12
  %17 = load i8* %i, align 1, !dbg !427           ; [#uses=1 type=i8] [debug line = 388:9]
  %18 = zext i8 %17 to i32, !dbg !427             ; [#uses=1 type=i32] [debug line = 388:9]
  %19 = and i32 %18, 1, !dbg !427                 ; [#uses=1 type=i32] [debug line = 388:9]
  %20 = icmp ne i32 %19, 0, !dbg !427             ; [#uses=1 type=i1] [debug line = 388:9]
  br i1 %20, label %21, label %29, !dbg !427      ; [debug line = 388:9]

; <label>:21                                      ; preds = %16
  %22 = load %struct.aes_context** %1, align 8, !dbg !429 ; [#uses=1 type=%struct.aes_context*] [debug line = 390:13]
  %23 = getelementptr inbounds %struct.aes_context* %22, i32 0, i32 0, !dbg !429 ; [#uses=1 type=[32 x i8]*] [debug line = 390:13]
  %24 = getelementptr inbounds [32 x i8]* %23, i32 0, i32 0, !dbg !429 ; [#uses=1 type=i8*] [debug line = 390:13]
  call void @aes_expandDecKey(i8* %24, i8* %rcon), !dbg !429 ; [debug line = 390:13]
  %25 = load i8** %2, align 8, !dbg !431          ; [#uses=1 type=i8*] [debug line = 391:13]
  %26 = load %struct.aes_context** %1, align 8, !dbg !431 ; [#uses=1 type=%struct.aes_context*] [debug line = 391:13]
  %27 = getelementptr inbounds %struct.aes_context* %26, i32 0, i32 0, !dbg !431 ; [#uses=1 type=[32 x i8]*] [debug line = 391:13]
  %28 = getelementptr inbounds [32 x i8]* %27, i32 0, i64 16, !dbg !431 ; [#uses=1 type=i8*] [debug line = 391:13]
  call void @aes_addRoundKey(i8* %25, i8* %28), !dbg !431 ; [debug line = 391:13]
  br label %34, !dbg !432                         ; [debug line = 392:9]

; <label>:29                                      ; preds = %16
  %30 = load i8** %2, align 8, !dbg !433          ; [#uses=1 type=i8*] [debug line = 393:14]
  %31 = load %struct.aes_context** %1, align 8, !dbg !433 ; [#uses=1 type=%struct.aes_context*] [debug line = 393:14]
  %32 = getelementptr inbounds %struct.aes_context* %31, i32 0, i32 0, !dbg !433 ; [#uses=1 type=[32 x i8]*] [debug line = 393:14]
  %33 = getelementptr inbounds [32 x i8]* %32, i32 0, i32 0, !dbg !433 ; [#uses=1 type=i8*] [debug line = 393:14]
  call void @aes_addRoundKey(i8* %30, i8* %33), !dbg !433 ; [debug line = 393:14]
  br label %34

; <label>:34                                      ; preds = %29, %21
  %35 = load i8** %2, align 8, !dbg !434          ; [#uses=1 type=i8*] [debug line = 394:9]
  call void @aes_mixColumns_inv(i8* %35), !dbg !434 ; [debug line = 394:9]
  %36 = load i8** %2, align 8, !dbg !435          ; [#uses=1 type=i8*] [debug line = 395:9]
  call void @aes_shiftRows_inv(i8* %36), !dbg !435 ; [debug line = 395:9]
  %37 = load i8** %2, align 8, !dbg !436          ; [#uses=1 type=i8*] [debug line = 396:9]
  call void @aes_subBytes_inv(i8* %37), !dbg !436 ; [debug line = 396:9]
  br label %12, !dbg !437                         ; [debug line = 397:5]

; <label>:38                                      ; preds = %12
  %39 = load i8** %2, align 8, !dbg !438          ; [#uses=1 type=i8*] [debug line = 398:5]
  %40 = load %struct.aes_context** %1, align 8, !dbg !438 ; [#uses=1 type=%struct.aes_context*] [debug line = 398:5]
  %41 = getelementptr inbounds %struct.aes_context* %40, i32 0, i32 0, !dbg !438 ; [#uses=1 type=[32 x i8]*] [debug line = 398:5]
  %42 = getelementptr inbounds [32 x i8]* %41, i32 0, i32 0, !dbg !438 ; [#uses=1 type=i8*] [debug line = 398:5]
  call void @aes_addRoundKey(i8* %39, i8* %42), !dbg !438 ; [debug line = 398:5]
  ret void, !dbg !439                             ; [debug line = 399:1]
}

; [#uses=2]
define internal void @aes_shiftRows_inv(i8* %buf) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=25 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=4 type=i8*]
  %j = alloca i8, align 1                         ; [#uses=4 type=i8*]
  store i8* %buf, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !440), !dbg !441 ; [debug line = 239:40] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !442), !dbg !444 ; [debug line = 241:22] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i8* %j}, metadata !445), !dbg !446 ; [debug line = 241:25] [debug variable = j]
  %2 = load i8** %1, align 8, !dbg !447           ; [#uses=1 type=i8*] [debug line = 243:5]
  %3 = getelementptr inbounds i8* %2, i64 1, !dbg !447 ; [#uses=1 type=i8*] [debug line = 243:5]
  %4 = load i8* %3, align 1, !dbg !447            ; [#uses=1 type=i8] [debug line = 243:5]
  store i8 %4, i8* %i, align 1, !dbg !447         ; [debug line = 243:5]
  %5 = load i8** %1, align 8, !dbg !447           ; [#uses=1 type=i8*] [debug line = 243:5]
  %6 = getelementptr inbounds i8* %5, i64 13, !dbg !447 ; [#uses=1 type=i8*] [debug line = 243:5]
  %7 = load i8* %6, align 1, !dbg !447            ; [#uses=1 type=i8] [debug line = 243:5]
  %8 = load i8** %1, align 8, !dbg !447           ; [#uses=1 type=i8*] [debug line = 243:5]
  %9 = getelementptr inbounds i8* %8, i64 1, !dbg !447 ; [#uses=1 type=i8*] [debug line = 243:5]
  store i8 %7, i8* %9, align 1, !dbg !447         ; [debug line = 243:5]
  %10 = load i8** %1, align 8, !dbg !447          ; [#uses=1 type=i8*] [debug line = 243:5]
  %11 = getelementptr inbounds i8* %10, i64 9, !dbg !447 ; [#uses=1 type=i8*] [debug line = 243:5]
  %12 = load i8* %11, align 1, !dbg !447          ; [#uses=1 type=i8] [debug line = 243:5]
  %13 = load i8** %1, align 8, !dbg !447          ; [#uses=1 type=i8*] [debug line = 243:5]
  %14 = getelementptr inbounds i8* %13, i64 13, !dbg !447 ; [#uses=1 type=i8*] [debug line = 243:5]
  store i8 %12, i8* %14, align 1, !dbg !447       ; [debug line = 243:5]
  %15 = load i8** %1, align 8, !dbg !447          ; [#uses=1 type=i8*] [debug line = 243:5]
  %16 = getelementptr inbounds i8* %15, i64 5, !dbg !447 ; [#uses=1 type=i8*] [debug line = 243:5]
  %17 = load i8* %16, align 1, !dbg !447          ; [#uses=1 type=i8] [debug line = 243:5]
  %18 = load i8** %1, align 8, !dbg !447          ; [#uses=1 type=i8*] [debug line = 243:5]
  %19 = getelementptr inbounds i8* %18, i64 9, !dbg !447 ; [#uses=1 type=i8*] [debug line = 243:5]
  store i8 %17, i8* %19, align 1, !dbg !447       ; [debug line = 243:5]
  %20 = load i8* %i, align 1, !dbg !447           ; [#uses=1 type=i8] [debug line = 243:5]
  %21 = load i8** %1, align 8, !dbg !447          ; [#uses=1 type=i8*] [debug line = 243:5]
  %22 = getelementptr inbounds i8* %21, i64 5, !dbg !447 ; [#uses=1 type=i8*] [debug line = 243:5]
  store i8 %20, i8* %22, align 1, !dbg !447       ; [debug line = 243:5]
  %23 = load i8** %1, align 8, !dbg !448          ; [#uses=1 type=i8*] [debug line = 244:5]
  %24 = getelementptr inbounds i8* %23, i64 2, !dbg !448 ; [#uses=1 type=i8*] [debug line = 244:5]
  %25 = load i8* %24, align 1, !dbg !448          ; [#uses=1 type=i8] [debug line = 244:5]
  store i8 %25, i8* %i, align 1, !dbg !448        ; [debug line = 244:5]
  %26 = load i8** %1, align 8, !dbg !448          ; [#uses=1 type=i8*] [debug line = 244:5]
  %27 = getelementptr inbounds i8* %26, i64 10, !dbg !448 ; [#uses=1 type=i8*] [debug line = 244:5]
  %28 = load i8* %27, align 1, !dbg !448          ; [#uses=1 type=i8] [debug line = 244:5]
  %29 = load i8** %1, align 8, !dbg !448          ; [#uses=1 type=i8*] [debug line = 244:5]
  %30 = getelementptr inbounds i8* %29, i64 2, !dbg !448 ; [#uses=1 type=i8*] [debug line = 244:5]
  store i8 %28, i8* %30, align 1, !dbg !448       ; [debug line = 244:5]
  %31 = load i8* %i, align 1, !dbg !448           ; [#uses=1 type=i8] [debug line = 244:5]
  %32 = load i8** %1, align 8, !dbg !448          ; [#uses=1 type=i8*] [debug line = 244:5]
  %33 = getelementptr inbounds i8* %32, i64 10, !dbg !448 ; [#uses=1 type=i8*] [debug line = 244:5]
  store i8 %31, i8* %33, align 1, !dbg !448       ; [debug line = 244:5]
  %34 = load i8** %1, align 8, !dbg !449          ; [#uses=1 type=i8*] [debug line = 245:5]
  %35 = getelementptr inbounds i8* %34, i64 3, !dbg !449 ; [#uses=1 type=i8*] [debug line = 245:5]
  %36 = load i8* %35, align 1, !dbg !449          ; [#uses=1 type=i8] [debug line = 245:5]
  store i8 %36, i8* %j, align 1, !dbg !449        ; [debug line = 245:5]
  %37 = load i8** %1, align 8, !dbg !449          ; [#uses=1 type=i8*] [debug line = 245:5]
  %38 = getelementptr inbounds i8* %37, i64 7, !dbg !449 ; [#uses=1 type=i8*] [debug line = 245:5]
  %39 = load i8* %38, align 1, !dbg !449          ; [#uses=1 type=i8] [debug line = 245:5]
  %40 = load i8** %1, align 8, !dbg !449          ; [#uses=1 type=i8*] [debug line = 245:5]
  %41 = getelementptr inbounds i8* %40, i64 3, !dbg !449 ; [#uses=1 type=i8*] [debug line = 245:5]
  store i8 %39, i8* %41, align 1, !dbg !449       ; [debug line = 245:5]
  %42 = load i8** %1, align 8, !dbg !449          ; [#uses=1 type=i8*] [debug line = 245:5]
  %43 = getelementptr inbounds i8* %42, i64 11, !dbg !449 ; [#uses=1 type=i8*] [debug line = 245:5]
  %44 = load i8* %43, align 1, !dbg !449          ; [#uses=1 type=i8] [debug line = 245:5]
  %45 = load i8** %1, align 8, !dbg !449          ; [#uses=1 type=i8*] [debug line = 245:5]
  %46 = getelementptr inbounds i8* %45, i64 7, !dbg !449 ; [#uses=1 type=i8*] [debug line = 245:5]
  store i8 %44, i8* %46, align 1, !dbg !449       ; [debug line = 245:5]
  %47 = load i8** %1, align 8, !dbg !449          ; [#uses=1 type=i8*] [debug line = 245:5]
  %48 = getelementptr inbounds i8* %47, i64 15, !dbg !449 ; [#uses=1 type=i8*] [debug line = 245:5]
  %49 = load i8* %48, align 1, !dbg !449          ; [#uses=1 type=i8] [debug line = 245:5]
  %50 = load i8** %1, align 8, !dbg !449          ; [#uses=1 type=i8*] [debug line = 245:5]
  %51 = getelementptr inbounds i8* %50, i64 11, !dbg !449 ; [#uses=1 type=i8*] [debug line = 245:5]
  store i8 %49, i8* %51, align 1, !dbg !449       ; [debug line = 245:5]
  %52 = load i8* %j, align 1, !dbg !449           ; [#uses=1 type=i8] [debug line = 245:5]
  %53 = load i8** %1, align 8, !dbg !449          ; [#uses=1 type=i8*] [debug line = 245:5]
  %54 = getelementptr inbounds i8* %53, i64 15, !dbg !449 ; [#uses=1 type=i8*] [debug line = 245:5]
  store i8 %52, i8* %54, align 1, !dbg !449       ; [debug line = 245:5]
  %55 = load i8** %1, align 8, !dbg !450          ; [#uses=1 type=i8*] [debug line = 246:5]
  %56 = getelementptr inbounds i8* %55, i64 6, !dbg !450 ; [#uses=1 type=i8*] [debug line = 246:5]
  %57 = load i8* %56, align 1, !dbg !450          ; [#uses=1 type=i8] [debug line = 246:5]
  store i8 %57, i8* %j, align 1, !dbg !450        ; [debug line = 246:5]
  %58 = load i8** %1, align 8, !dbg !450          ; [#uses=1 type=i8*] [debug line = 246:5]
  %59 = getelementptr inbounds i8* %58, i64 14, !dbg !450 ; [#uses=1 type=i8*] [debug line = 246:5]
  %60 = load i8* %59, align 1, !dbg !450          ; [#uses=1 type=i8] [debug line = 246:5]
  %61 = load i8** %1, align 8, !dbg !450          ; [#uses=1 type=i8*] [debug line = 246:5]
  %62 = getelementptr inbounds i8* %61, i64 6, !dbg !450 ; [#uses=1 type=i8*] [debug line = 246:5]
  store i8 %60, i8* %62, align 1, !dbg !450       ; [debug line = 246:5]
  %63 = load i8* %j, align 1, !dbg !450           ; [#uses=1 type=i8] [debug line = 246:5]
  %64 = load i8** %1, align 8, !dbg !450          ; [#uses=1 type=i8*] [debug line = 246:5]
  %65 = getelementptr inbounds i8* %64, i64 14, !dbg !450 ; [#uses=1 type=i8*] [debug line = 246:5]
  store i8 %63, i8* %65, align 1, !dbg !450       ; [debug line = 246:5]
  ret void, !dbg !451                             ; [debug line = 248:1]
}

; [#uses=2]
define internal void @aes_subBytes_inv(i8* %buf) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=3 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=5 type=i8*]
  store i8* %buf, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !452), !dbg !453 ; [debug line = 202:39] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !454), !dbg !456 ; [debug line = 204:22] [debug variable = i]
  store i8 16, i8* %i, align 1, !dbg !457         ; [debug line = 204:28]
  br label %2, !dbg !458                          ; [debug line = 206:5]

; <label>:2                                       ; preds = %6, %0
  %3 = load i8* %i, align 1, !dbg !458            ; [#uses=2 type=i8] [debug line = 206:5]
  %4 = add i8 %3, -1, !dbg !458                   ; [#uses=1 type=i8] [debug line = 206:5]
  store i8 %4, i8* %i, align 1, !dbg !458         ; [debug line = 206:5]
  %5 = icmp ne i8 %3, 0, !dbg !458                ; [#uses=1 type=i1] [debug line = 206:5]
  br i1 %5, label %6, label %19, !dbg !458        ; [debug line = 206:5]

; <label>:6                                       ; preds = %2
  %7 = load i8* %i, align 1, !dbg !459            ; [#uses=1 type=i8] [debug line = 206:17]
  %8 = zext i8 %7 to i64, !dbg !459               ; [#uses=1 type=i64] [debug line = 206:17]
  %9 = load i8** %1, align 8, !dbg !459           ; [#uses=1 type=i8*] [debug line = 206:17]
  %10 = getelementptr inbounds i8* %9, i64 %8, !dbg !459 ; [#uses=1 type=i8*] [debug line = 206:17]
  %11 = load i8* %10, align 1, !dbg !459          ; [#uses=1 type=i8] [debug line = 206:17]
  %12 = zext i8 %11 to i64, !dbg !459             ; [#uses=1 type=i64] [debug line = 206:17]
  %13 = getelementptr inbounds [256 x i8]* @sboxinv, i32 0, i64 %12, !dbg !459 ; [#uses=1 type=i8*] [debug line = 206:17]
  %14 = load i8* %13, align 1, !dbg !459          ; [#uses=1 type=i8] [debug line = 206:17]
  %15 = load i8* %i, align 1, !dbg !459           ; [#uses=1 type=i8] [debug line = 206:17]
  %16 = zext i8 %15 to i64, !dbg !459             ; [#uses=1 type=i64] [debug line = 206:17]
  %17 = load i8** %1, align 8, !dbg !459          ; [#uses=1 type=i8*] [debug line = 206:17]
  %18 = getelementptr inbounds i8* %17, i64 %16, !dbg !459 ; [#uses=1 type=i8*] [debug line = 206:17]
  store i8 %14, i8* %18, align 1, !dbg !459       ; [debug line = 206:17]
  br label %2, !dbg !459                          ; [debug line = 206:17]

; <label>:19                                      ; preds = %2
  ret void, !dbg !460                             ; [debug line = 207:1]
}

; [#uses=1]
define internal void @aes_expandDecKey(i8* %k, i8* %rc) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=33 type=i8**]
  %2 = alloca i8*, align 8                        ; [#uses=5 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=24 type=i8*]
  store i8* %k, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !461), !dbg !462 ; [debug line = 315:32] [debug variable = k]
  store i8* %rc, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !463), !dbg !464 ; [debug line = 315:44] [debug variable = rc]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !465), !dbg !467 ; [debug line = 317:13] [debug variable = i]
  store i8 28, i8* %i, align 1, !dbg !468         ; [debug line = 319:9]
  br label %3, !dbg !468                          ; [debug line = 319:9]

; <label>:3                                       ; preds = %80, %0
  %4 = load i8* %i, align 1, !dbg !468            ; [#uses=1 type=i8] [debug line = 319:9]
  %5 = zext i8 %4 to i32, !dbg !468               ; [#uses=1 type=i32] [debug line = 319:9]
  %6 = icmp sgt i32 %5, 16, !dbg !468             ; [#uses=1 type=i1] [debug line = 319:9]
  br i1 %6, label %7, label %85, !dbg !468        ; [debug line = 319:9]

; <label>:7                                       ; preds = %3
  %8 = load i8* %i, align 1, !dbg !470            ; [#uses=1 type=i8] [debug line = 319:33]
  %9 = zext i8 %8 to i32, !dbg !470               ; [#uses=1 type=i32] [debug line = 319:33]
  %10 = sub nsw i32 %9, 4, !dbg !470              ; [#uses=1 type=i32] [debug line = 319:33]
  %11 = sext i32 %10 to i64, !dbg !470            ; [#uses=1 type=i64] [debug line = 319:33]
  %12 = load i8** %1, align 8, !dbg !470          ; [#uses=1 type=i8*] [debug line = 319:33]
  %13 = getelementptr inbounds i8* %12, i64 %11, !dbg !470 ; [#uses=1 type=i8*] [debug line = 319:33]
  %14 = load i8* %13, align 1, !dbg !470          ; [#uses=1 type=i8] [debug line = 319:33]
  %15 = zext i8 %14 to i32, !dbg !470             ; [#uses=1 type=i32] [debug line = 319:33]
  %16 = load i8* %i, align 1, !dbg !470           ; [#uses=1 type=i8] [debug line = 319:33]
  %17 = zext i8 %16 to i32, !dbg !470             ; [#uses=1 type=i32] [debug line = 319:33]
  %18 = add nsw i32 %17, 0, !dbg !470             ; [#uses=1 type=i32] [debug line = 319:33]
  %19 = sext i32 %18 to i64, !dbg !470            ; [#uses=1 type=i64] [debug line = 319:33]
  %20 = load i8** %1, align 8, !dbg !470          ; [#uses=1 type=i8*] [debug line = 319:33]
  %21 = getelementptr inbounds i8* %20, i64 %19, !dbg !470 ; [#uses=2 type=i8*] [debug line = 319:33]
  %22 = load i8* %21, align 1, !dbg !470          ; [#uses=1 type=i8] [debug line = 319:33]
  %23 = zext i8 %22 to i32, !dbg !470             ; [#uses=1 type=i32] [debug line = 319:33]
  %24 = xor i32 %23, %15, !dbg !470               ; [#uses=1 type=i32] [debug line = 319:33]
  %25 = trunc i32 %24 to i8, !dbg !470            ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %25, i8* %21, align 1, !dbg !470       ; [debug line = 319:33]
  %26 = load i8* %i, align 1, !dbg !470           ; [#uses=1 type=i8] [debug line = 319:33]
  %27 = zext i8 %26 to i32, !dbg !470             ; [#uses=1 type=i32] [debug line = 319:33]
  %28 = sub nsw i32 %27, 3, !dbg !470             ; [#uses=1 type=i32] [debug line = 319:33]
  %29 = sext i32 %28 to i64, !dbg !470            ; [#uses=1 type=i64] [debug line = 319:33]
  %30 = load i8** %1, align 8, !dbg !470          ; [#uses=1 type=i8*] [debug line = 319:33]
  %31 = getelementptr inbounds i8* %30, i64 %29, !dbg !470 ; [#uses=1 type=i8*] [debug line = 319:33]
  %32 = load i8* %31, align 1, !dbg !470          ; [#uses=1 type=i8] [debug line = 319:33]
  %33 = zext i8 %32 to i32, !dbg !470             ; [#uses=1 type=i32] [debug line = 319:33]
  %34 = load i8* %i, align 1, !dbg !470           ; [#uses=1 type=i8] [debug line = 319:33]
  %35 = zext i8 %34 to i32, !dbg !470             ; [#uses=1 type=i32] [debug line = 319:33]
  %36 = add nsw i32 %35, 1, !dbg !470             ; [#uses=1 type=i32] [debug line = 319:33]
  %37 = sext i32 %36 to i64, !dbg !470            ; [#uses=1 type=i64] [debug line = 319:33]
  %38 = load i8** %1, align 8, !dbg !470          ; [#uses=1 type=i8*] [debug line = 319:33]
  %39 = getelementptr inbounds i8* %38, i64 %37, !dbg !470 ; [#uses=2 type=i8*] [debug line = 319:33]
  %40 = load i8* %39, align 1, !dbg !470          ; [#uses=1 type=i8] [debug line = 319:33]
  %41 = zext i8 %40 to i32, !dbg !470             ; [#uses=1 type=i32] [debug line = 319:33]
  %42 = xor i32 %41, %33, !dbg !470               ; [#uses=1 type=i32] [debug line = 319:33]
  %43 = trunc i32 %42 to i8, !dbg !470            ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %43, i8* %39, align 1, !dbg !470       ; [debug line = 319:33]
  %44 = load i8* %i, align 1, !dbg !470           ; [#uses=1 type=i8] [debug line = 319:33]
  %45 = zext i8 %44 to i32, !dbg !470             ; [#uses=1 type=i32] [debug line = 319:33]
  %46 = sub nsw i32 %45, 2, !dbg !470             ; [#uses=1 type=i32] [debug line = 319:33]
  %47 = sext i32 %46 to i64, !dbg !470            ; [#uses=1 type=i64] [debug line = 319:33]
  %48 = load i8** %1, align 8, !dbg !470          ; [#uses=1 type=i8*] [debug line = 319:33]
  %49 = getelementptr inbounds i8* %48, i64 %47, !dbg !470 ; [#uses=1 type=i8*] [debug line = 319:33]
  %50 = load i8* %49, align 1, !dbg !470          ; [#uses=1 type=i8] [debug line = 319:33]
  %51 = zext i8 %50 to i32, !dbg !470             ; [#uses=1 type=i32] [debug line = 319:33]
  %52 = load i8* %i, align 1, !dbg !470           ; [#uses=1 type=i8] [debug line = 319:33]
  %53 = zext i8 %52 to i32, !dbg !470             ; [#uses=1 type=i32] [debug line = 319:33]
  %54 = add nsw i32 %53, 2, !dbg !470             ; [#uses=1 type=i32] [debug line = 319:33]
  %55 = sext i32 %54 to i64, !dbg !470            ; [#uses=1 type=i64] [debug line = 319:33]
  %56 = load i8** %1, align 8, !dbg !470          ; [#uses=1 type=i8*] [debug line = 319:33]
  %57 = getelementptr inbounds i8* %56, i64 %55, !dbg !470 ; [#uses=2 type=i8*] [debug line = 319:33]
  %58 = load i8* %57, align 1, !dbg !470          ; [#uses=1 type=i8] [debug line = 319:33]
  %59 = zext i8 %58 to i32, !dbg !470             ; [#uses=1 type=i32] [debug line = 319:33]
  %60 = xor i32 %59, %51, !dbg !470               ; [#uses=1 type=i32] [debug line = 319:33]
  %61 = trunc i32 %60 to i8, !dbg !470            ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %61, i8* %57, align 1, !dbg !470       ; [debug line = 319:33]
  %62 = load i8* %i, align 1, !dbg !470           ; [#uses=1 type=i8] [debug line = 319:33]
  %63 = zext i8 %62 to i32, !dbg !470             ; [#uses=1 type=i32] [debug line = 319:33]
  %64 = sub nsw i32 %63, 1, !dbg !470             ; [#uses=1 type=i32] [debug line = 319:33]
  %65 = sext i32 %64 to i64, !dbg !470            ; [#uses=1 type=i64] [debug line = 319:33]
  %66 = load i8** %1, align 8, !dbg !470          ; [#uses=1 type=i8*] [debug line = 319:33]
  %67 = getelementptr inbounds i8* %66, i64 %65, !dbg !470 ; [#uses=1 type=i8*] [debug line = 319:33]
  %68 = load i8* %67, align 1, !dbg !470          ; [#uses=1 type=i8] [debug line = 319:33]
  %69 = zext i8 %68 to i32, !dbg !470             ; [#uses=1 type=i32] [debug line = 319:33]
  %70 = load i8* %i, align 1, !dbg !470           ; [#uses=1 type=i8] [debug line = 319:33]
  %71 = zext i8 %70 to i32, !dbg !470             ; [#uses=1 type=i32] [debug line = 319:33]
  %72 = add nsw i32 %71, 3, !dbg !470             ; [#uses=1 type=i32] [debug line = 319:33]
  %73 = sext i32 %72 to i64, !dbg !470            ; [#uses=1 type=i64] [debug line = 319:33]
  %74 = load i8** %1, align 8, !dbg !470          ; [#uses=1 type=i8*] [debug line = 319:33]
  %75 = getelementptr inbounds i8* %74, i64 %73, !dbg !470 ; [#uses=2 type=i8*] [debug line = 319:33]
  %76 = load i8* %75, align 1, !dbg !470          ; [#uses=1 type=i8] [debug line = 319:33]
  %77 = zext i8 %76 to i32, !dbg !470             ; [#uses=1 type=i32] [debug line = 319:33]
  %78 = xor i32 %77, %69, !dbg !470               ; [#uses=1 type=i32] [debug line = 319:33]
  %79 = trunc i32 %78 to i8, !dbg !470            ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %79, i8* %75, align 1, !dbg !470       ; [debug line = 319:33]
  br label %80, !dbg !470                         ; [debug line = 319:33]

; <label>:80                                      ; preds = %7
  %81 = load i8* %i, align 1, !dbg !471           ; [#uses=1 type=i8] [debug line = 319:25]
  %82 = zext i8 %81 to i32, !dbg !471             ; [#uses=1 type=i32] [debug line = 319:25]
  %83 = sub nsw i32 %82, 4, !dbg !471             ; [#uses=1 type=i32] [debug line = 319:25]
  %84 = trunc i32 %83 to i8, !dbg !471            ; [#uses=1 type=i8] [debug line = 319:25]
  store i8 %84, i8* %i, align 1, !dbg !471        ; [debug line = 319:25]
  br label %3, !dbg !471                          ; [debug line = 319:25]

; <label>:85                                      ; preds = %3
  %86 = load i8** %1, align 8, !dbg !472          ; [#uses=1 type=i8*] [debug line = 322:5]
  %87 = getelementptr inbounds i8* %86, i64 12, !dbg !472 ; [#uses=1 type=i8*] [debug line = 322:5]
  %88 = load i8* %87, align 1, !dbg !472          ; [#uses=1 type=i8] [debug line = 322:5]
  %89 = zext i8 %88 to i64, !dbg !472             ; [#uses=1 type=i64] [debug line = 322:5]
  %90 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %89, !dbg !472 ; [#uses=1 type=i8*] [debug line = 322:5]
  %91 = load i8* %90, align 1, !dbg !472          ; [#uses=1 type=i8] [debug line = 322:5]
  %92 = zext i8 %91 to i32, !dbg !472             ; [#uses=1 type=i32] [debug line = 322:5]
  %93 = load i8** %1, align 8, !dbg !472          ; [#uses=1 type=i8*] [debug line = 322:5]
  %94 = getelementptr inbounds i8* %93, i64 16, !dbg !472 ; [#uses=2 type=i8*] [debug line = 322:5]
  %95 = load i8* %94, align 1, !dbg !472          ; [#uses=1 type=i8] [debug line = 322:5]
  %96 = zext i8 %95 to i32, !dbg !472             ; [#uses=1 type=i32] [debug line = 322:5]
  %97 = xor i32 %96, %92, !dbg !472               ; [#uses=1 type=i32] [debug line = 322:5]
  %98 = trunc i32 %97 to i8, !dbg !472            ; [#uses=1 type=i8] [debug line = 322:5]
  store i8 %98, i8* %94, align 1, !dbg !472       ; [debug line = 322:5]
  %99 = load i8** %1, align 8, !dbg !473          ; [#uses=1 type=i8*] [debug line = 323:5]
  %100 = getelementptr inbounds i8* %99, i64 13, !dbg !473 ; [#uses=1 type=i8*] [debug line = 323:5]
  %101 = load i8* %100, align 1, !dbg !473        ; [#uses=1 type=i8] [debug line = 323:5]
  %102 = zext i8 %101 to i64, !dbg !473           ; [#uses=1 type=i64] [debug line = 323:5]
  %103 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %102, !dbg !473 ; [#uses=1 type=i8*] [debug line = 323:5]
  %104 = load i8* %103, align 1, !dbg !473        ; [#uses=1 type=i8] [debug line = 323:5]
  %105 = zext i8 %104 to i32, !dbg !473           ; [#uses=1 type=i32] [debug line = 323:5]
  %106 = load i8** %1, align 8, !dbg !473         ; [#uses=1 type=i8*] [debug line = 323:5]
  %107 = getelementptr inbounds i8* %106, i64 17, !dbg !473 ; [#uses=2 type=i8*] [debug line = 323:5]
  %108 = load i8* %107, align 1, !dbg !473        ; [#uses=1 type=i8] [debug line = 323:5]
  %109 = zext i8 %108 to i32, !dbg !473           ; [#uses=1 type=i32] [debug line = 323:5]
  %110 = xor i32 %109, %105, !dbg !473            ; [#uses=1 type=i32] [debug line = 323:5]
  %111 = trunc i32 %110 to i8, !dbg !473          ; [#uses=1 type=i8] [debug line = 323:5]
  store i8 %111, i8* %107, align 1, !dbg !473     ; [debug line = 323:5]
  %112 = load i8** %1, align 8, !dbg !474         ; [#uses=1 type=i8*] [debug line = 324:5]
  %113 = getelementptr inbounds i8* %112, i64 14, !dbg !474 ; [#uses=1 type=i8*] [debug line = 324:5]
  %114 = load i8* %113, align 1, !dbg !474        ; [#uses=1 type=i8] [debug line = 324:5]
  %115 = zext i8 %114 to i64, !dbg !474           ; [#uses=1 type=i64] [debug line = 324:5]
  %116 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %115, !dbg !474 ; [#uses=1 type=i8*] [debug line = 324:5]
  %117 = load i8* %116, align 1, !dbg !474        ; [#uses=1 type=i8] [debug line = 324:5]
  %118 = zext i8 %117 to i32, !dbg !474           ; [#uses=1 type=i32] [debug line = 324:5]
  %119 = load i8** %1, align 8, !dbg !474         ; [#uses=1 type=i8*] [debug line = 324:5]
  %120 = getelementptr inbounds i8* %119, i64 18, !dbg !474 ; [#uses=2 type=i8*] [debug line = 324:5]
  %121 = load i8* %120, align 1, !dbg !474        ; [#uses=1 type=i8] [debug line = 324:5]
  %122 = zext i8 %121 to i32, !dbg !474           ; [#uses=1 type=i32] [debug line = 324:5]
  %123 = xor i32 %122, %118, !dbg !474            ; [#uses=1 type=i32] [debug line = 324:5]
  %124 = trunc i32 %123 to i8, !dbg !474          ; [#uses=1 type=i8] [debug line = 324:5]
  store i8 %124, i8* %120, align 1, !dbg !474     ; [debug line = 324:5]
  %125 = load i8** %1, align 8, !dbg !475         ; [#uses=1 type=i8*] [debug line = 325:5]
  %126 = getelementptr inbounds i8* %125, i64 15, !dbg !475 ; [#uses=1 type=i8*] [debug line = 325:5]
  %127 = load i8* %126, align 1, !dbg !475        ; [#uses=1 type=i8] [debug line = 325:5]
  %128 = zext i8 %127 to i64, !dbg !475           ; [#uses=1 type=i64] [debug line = 325:5]
  %129 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %128, !dbg !475 ; [#uses=1 type=i8*] [debug line = 325:5]
  %130 = load i8* %129, align 1, !dbg !475        ; [#uses=1 type=i8] [debug line = 325:5]
  %131 = zext i8 %130 to i32, !dbg !475           ; [#uses=1 type=i32] [debug line = 325:5]
  %132 = load i8** %1, align 8, !dbg !475         ; [#uses=1 type=i8*] [debug line = 325:5]
  %133 = getelementptr inbounds i8* %132, i64 19, !dbg !475 ; [#uses=2 type=i8*] [debug line = 325:5]
  %134 = load i8* %133, align 1, !dbg !475        ; [#uses=1 type=i8] [debug line = 325:5]
  %135 = zext i8 %134 to i32, !dbg !475           ; [#uses=1 type=i32] [debug line = 325:5]
  %136 = xor i32 %135, %131, !dbg !475            ; [#uses=1 type=i32] [debug line = 325:5]
  %137 = trunc i32 %136 to i8, !dbg !475          ; [#uses=1 type=i8] [debug line = 325:5]
  store i8 %137, i8* %133, align 1, !dbg !475     ; [debug line = 325:5]
  store i8 12, i8* %i, align 1, !dbg !476         ; [debug line = 327:9]
  br label %138, !dbg !476                        ; [debug line = 327:9]

; <label>:138                                     ; preds = %215, %85
  %139 = load i8* %i, align 1, !dbg !476          ; [#uses=1 type=i8] [debug line = 327:9]
  %140 = zext i8 %139 to i32, !dbg !476           ; [#uses=1 type=i32] [debug line = 327:9]
  %141 = icmp sgt i32 %140, 0, !dbg !476          ; [#uses=1 type=i1] [debug line = 327:9]
  br i1 %141, label %142, label %220, !dbg !476   ; [debug line = 327:9]

; <label>:142                                     ; preds = %138
  %143 = load i8* %i, align 1, !dbg !478          ; [#uses=1 type=i8] [debug line = 327:32]
  %144 = zext i8 %143 to i32, !dbg !478           ; [#uses=1 type=i32] [debug line = 327:32]
  %145 = sub nsw i32 %144, 4, !dbg !478           ; [#uses=1 type=i32] [debug line = 327:32]
  %146 = sext i32 %145 to i64, !dbg !478          ; [#uses=1 type=i64] [debug line = 327:32]
  %147 = load i8** %1, align 8, !dbg !478         ; [#uses=1 type=i8*] [debug line = 327:32]
  %148 = getelementptr inbounds i8* %147, i64 %146, !dbg !478 ; [#uses=1 type=i8*] [debug line = 327:32]
  %149 = load i8* %148, align 1, !dbg !478        ; [#uses=1 type=i8] [debug line = 327:32]
  %150 = zext i8 %149 to i32, !dbg !478           ; [#uses=1 type=i32] [debug line = 327:32]
  %151 = load i8* %i, align 1, !dbg !478          ; [#uses=1 type=i8] [debug line = 327:32]
  %152 = zext i8 %151 to i32, !dbg !478           ; [#uses=1 type=i32] [debug line = 327:32]
  %153 = add nsw i32 %152, 0, !dbg !478           ; [#uses=1 type=i32] [debug line = 327:32]
  %154 = sext i32 %153 to i64, !dbg !478          ; [#uses=1 type=i64] [debug line = 327:32]
  %155 = load i8** %1, align 8, !dbg !478         ; [#uses=1 type=i8*] [debug line = 327:32]
  %156 = getelementptr inbounds i8* %155, i64 %154, !dbg !478 ; [#uses=2 type=i8*] [debug line = 327:32]
  %157 = load i8* %156, align 1, !dbg !478        ; [#uses=1 type=i8] [debug line = 327:32]
  %158 = zext i8 %157 to i32, !dbg !478           ; [#uses=1 type=i32] [debug line = 327:32]
  %159 = xor i32 %158, %150, !dbg !478            ; [#uses=1 type=i32] [debug line = 327:32]
  %160 = trunc i32 %159 to i8, !dbg !478          ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %160, i8* %156, align 1, !dbg !478     ; [debug line = 327:32]
  %161 = load i8* %i, align 1, !dbg !478          ; [#uses=1 type=i8] [debug line = 327:32]
  %162 = zext i8 %161 to i32, !dbg !478           ; [#uses=1 type=i32] [debug line = 327:32]
  %163 = sub nsw i32 %162, 3, !dbg !478           ; [#uses=1 type=i32] [debug line = 327:32]
  %164 = sext i32 %163 to i64, !dbg !478          ; [#uses=1 type=i64] [debug line = 327:32]
  %165 = load i8** %1, align 8, !dbg !478         ; [#uses=1 type=i8*] [debug line = 327:32]
  %166 = getelementptr inbounds i8* %165, i64 %164, !dbg !478 ; [#uses=1 type=i8*] [debug line = 327:32]
  %167 = load i8* %166, align 1, !dbg !478        ; [#uses=1 type=i8] [debug line = 327:32]
  %168 = zext i8 %167 to i32, !dbg !478           ; [#uses=1 type=i32] [debug line = 327:32]
  %169 = load i8* %i, align 1, !dbg !478          ; [#uses=1 type=i8] [debug line = 327:32]
  %170 = zext i8 %169 to i32, !dbg !478           ; [#uses=1 type=i32] [debug line = 327:32]
  %171 = add nsw i32 %170, 1, !dbg !478           ; [#uses=1 type=i32] [debug line = 327:32]
  %172 = sext i32 %171 to i64, !dbg !478          ; [#uses=1 type=i64] [debug line = 327:32]
  %173 = load i8** %1, align 8, !dbg !478         ; [#uses=1 type=i8*] [debug line = 327:32]
  %174 = getelementptr inbounds i8* %173, i64 %172, !dbg !478 ; [#uses=2 type=i8*] [debug line = 327:32]
  %175 = load i8* %174, align 1, !dbg !478        ; [#uses=1 type=i8] [debug line = 327:32]
  %176 = zext i8 %175 to i32, !dbg !478           ; [#uses=1 type=i32] [debug line = 327:32]
  %177 = xor i32 %176, %168, !dbg !478            ; [#uses=1 type=i32] [debug line = 327:32]
  %178 = trunc i32 %177 to i8, !dbg !478          ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %178, i8* %174, align 1, !dbg !478     ; [debug line = 327:32]
  %179 = load i8* %i, align 1, !dbg !478          ; [#uses=1 type=i8] [debug line = 327:32]
  %180 = zext i8 %179 to i32, !dbg !478           ; [#uses=1 type=i32] [debug line = 327:32]
  %181 = sub nsw i32 %180, 2, !dbg !478           ; [#uses=1 type=i32] [debug line = 327:32]
  %182 = sext i32 %181 to i64, !dbg !478          ; [#uses=1 type=i64] [debug line = 327:32]
  %183 = load i8** %1, align 8, !dbg !478         ; [#uses=1 type=i8*] [debug line = 327:32]
  %184 = getelementptr inbounds i8* %183, i64 %182, !dbg !478 ; [#uses=1 type=i8*] [debug line = 327:32]
  %185 = load i8* %184, align 1, !dbg !478        ; [#uses=1 type=i8] [debug line = 327:32]
  %186 = zext i8 %185 to i32, !dbg !478           ; [#uses=1 type=i32] [debug line = 327:32]
  %187 = load i8* %i, align 1, !dbg !478          ; [#uses=1 type=i8] [debug line = 327:32]
  %188 = zext i8 %187 to i32, !dbg !478           ; [#uses=1 type=i32] [debug line = 327:32]
  %189 = add nsw i32 %188, 2, !dbg !478           ; [#uses=1 type=i32] [debug line = 327:32]
  %190 = sext i32 %189 to i64, !dbg !478          ; [#uses=1 type=i64] [debug line = 327:32]
  %191 = load i8** %1, align 8, !dbg !478         ; [#uses=1 type=i8*] [debug line = 327:32]
  %192 = getelementptr inbounds i8* %191, i64 %190, !dbg !478 ; [#uses=2 type=i8*] [debug line = 327:32]
  %193 = load i8* %192, align 1, !dbg !478        ; [#uses=1 type=i8] [debug line = 327:32]
  %194 = zext i8 %193 to i32, !dbg !478           ; [#uses=1 type=i32] [debug line = 327:32]
  %195 = xor i32 %194, %186, !dbg !478            ; [#uses=1 type=i32] [debug line = 327:32]
  %196 = trunc i32 %195 to i8, !dbg !478          ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %196, i8* %192, align 1, !dbg !478     ; [debug line = 327:32]
  %197 = load i8* %i, align 1, !dbg !478          ; [#uses=1 type=i8] [debug line = 327:32]
  %198 = zext i8 %197 to i32, !dbg !478           ; [#uses=1 type=i32] [debug line = 327:32]
  %199 = sub nsw i32 %198, 1, !dbg !478           ; [#uses=1 type=i32] [debug line = 327:32]
  %200 = sext i32 %199 to i64, !dbg !478          ; [#uses=1 type=i64] [debug line = 327:32]
  %201 = load i8** %1, align 8, !dbg !478         ; [#uses=1 type=i8*] [debug line = 327:32]
  %202 = getelementptr inbounds i8* %201, i64 %200, !dbg !478 ; [#uses=1 type=i8*] [debug line = 327:32]
  %203 = load i8* %202, align 1, !dbg !478        ; [#uses=1 type=i8] [debug line = 327:32]
  %204 = zext i8 %203 to i32, !dbg !478           ; [#uses=1 type=i32] [debug line = 327:32]
  %205 = load i8* %i, align 1, !dbg !478          ; [#uses=1 type=i8] [debug line = 327:32]
  %206 = zext i8 %205 to i32, !dbg !478           ; [#uses=1 type=i32] [debug line = 327:32]
  %207 = add nsw i32 %206, 3, !dbg !478           ; [#uses=1 type=i32] [debug line = 327:32]
  %208 = sext i32 %207 to i64, !dbg !478          ; [#uses=1 type=i64] [debug line = 327:32]
  %209 = load i8** %1, align 8, !dbg !478         ; [#uses=1 type=i8*] [debug line = 327:32]
  %210 = getelementptr inbounds i8* %209, i64 %208, !dbg !478 ; [#uses=2 type=i8*] [debug line = 327:32]
  %211 = load i8* %210, align 1, !dbg !478        ; [#uses=1 type=i8] [debug line = 327:32]
  %212 = zext i8 %211 to i32, !dbg !478           ; [#uses=1 type=i32] [debug line = 327:32]
  %213 = xor i32 %212, %204, !dbg !478            ; [#uses=1 type=i32] [debug line = 327:32]
  %214 = trunc i32 %213 to i8, !dbg !478          ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %214, i8* %210, align 1, !dbg !478     ; [debug line = 327:32]
  br label %215, !dbg !478                        ; [debug line = 327:32]

; <label>:215                                     ; preds = %142
  %216 = load i8* %i, align 1, !dbg !479          ; [#uses=1 type=i8] [debug line = 327:24]
  %217 = zext i8 %216 to i32, !dbg !479           ; [#uses=1 type=i32] [debug line = 327:24]
  %218 = sub nsw i32 %217, 4, !dbg !479           ; [#uses=1 type=i32] [debug line = 327:24]
  %219 = trunc i32 %218 to i8, !dbg !479          ; [#uses=1 type=i8] [debug line = 327:24]
  store i8 %219, i8* %i, align 1, !dbg !479       ; [debug line = 327:24]
  br label %138, !dbg !479                        ; [debug line = 327:24]

; <label>:220                                     ; preds = %138
  %221 = load i8** %2, align 8, !dbg !480         ; [#uses=1 type=i8*] [debug line = 330:5]
  %222 = load i8* %221, align 1, !dbg !480        ; [#uses=1 type=i8] [debug line = 330:5]
  %223 = zext i8 %222 to i32, !dbg !480           ; [#uses=1 type=i32] [debug line = 330:5]
  %224 = ashr i32 %223, 1, !dbg !480              ; [#uses=1 type=i32] [debug line = 330:5]
  %225 = load i8** %2, align 8, !dbg !480         ; [#uses=1 type=i8*] [debug line = 330:5]
  %226 = load i8* %225, align 1, !dbg !480        ; [#uses=1 type=i8] [debug line = 330:5]
  %227 = zext i8 %226 to i32, !dbg !480           ; [#uses=1 type=i32] [debug line = 330:5]
  %228 = and i32 %227, 1, !dbg !480               ; [#uses=1 type=i32] [debug line = 330:5]
  %229 = icmp ne i32 %228, 0, !dbg !480           ; [#uses=1 type=i1] [debug line = 330:5]
  %230 = select i1 %229, i32 141, i32 0, !dbg !480 ; [#uses=1 type=i32] [debug line = 330:5]
  %231 = xor i32 %224, %230, !dbg !480            ; [#uses=1 type=i32] [debug line = 330:5]
  %232 = trunc i32 %231 to i8, !dbg !480          ; [#uses=1 type=i8] [debug line = 330:5]
  %233 = load i8** %2, align 8, !dbg !480         ; [#uses=1 type=i8*] [debug line = 330:5]
  store i8 %232, i8* %233, align 1, !dbg !480     ; [debug line = 330:5]
  %234 = load i8** %1, align 8, !dbg !481         ; [#uses=1 type=i8*] [debug line = 331:5]
  %235 = getelementptr inbounds i8* %234, i64 29, !dbg !481 ; [#uses=1 type=i8*] [debug line = 331:5]
  %236 = load i8* %235, align 1, !dbg !481        ; [#uses=1 type=i8] [debug line = 331:5]
  %237 = zext i8 %236 to i64, !dbg !481           ; [#uses=1 type=i64] [debug line = 331:5]
  %238 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %237, !dbg !481 ; [#uses=1 type=i8*] [debug line = 331:5]
  %239 = load i8* %238, align 1, !dbg !481        ; [#uses=1 type=i8] [debug line = 331:5]
  %240 = zext i8 %239 to i32, !dbg !481           ; [#uses=1 type=i32] [debug line = 331:5]
  %241 = load i8** %2, align 8, !dbg !481         ; [#uses=1 type=i8*] [debug line = 331:5]
  %242 = load i8* %241, align 1, !dbg !481        ; [#uses=1 type=i8] [debug line = 331:5]
  %243 = zext i8 %242 to i32, !dbg !481           ; [#uses=1 type=i32] [debug line = 331:5]
  %244 = xor i32 %240, %243, !dbg !481            ; [#uses=1 type=i32] [debug line = 331:5]
  %245 = load i8** %1, align 8, !dbg !481         ; [#uses=1 type=i8*] [debug line = 331:5]
  %246 = getelementptr inbounds i8* %245, i64 0, !dbg !481 ; [#uses=2 type=i8*] [debug line = 331:5]
  %247 = load i8* %246, align 1, !dbg !481        ; [#uses=1 type=i8] [debug line = 331:5]
  %248 = zext i8 %247 to i32, !dbg !481           ; [#uses=1 type=i32] [debug line = 331:5]
  %249 = xor i32 %248, %244, !dbg !481            ; [#uses=1 type=i32] [debug line = 331:5]
  %250 = trunc i32 %249 to i8, !dbg !481          ; [#uses=1 type=i8] [debug line = 331:5]
  store i8 %250, i8* %246, align 1, !dbg !481     ; [debug line = 331:5]
  %251 = load i8** %1, align 8, !dbg !482         ; [#uses=1 type=i8*] [debug line = 332:5]
  %252 = getelementptr inbounds i8* %251, i64 30, !dbg !482 ; [#uses=1 type=i8*] [debug line = 332:5]
  %253 = load i8* %252, align 1, !dbg !482        ; [#uses=1 type=i8] [debug line = 332:5]
  %254 = zext i8 %253 to i64, !dbg !482           ; [#uses=1 type=i64] [debug line = 332:5]
  %255 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %254, !dbg !482 ; [#uses=1 type=i8*] [debug line = 332:5]
  %256 = load i8* %255, align 1, !dbg !482        ; [#uses=1 type=i8] [debug line = 332:5]
  %257 = zext i8 %256 to i32, !dbg !482           ; [#uses=1 type=i32] [debug line = 332:5]
  %258 = load i8** %1, align 8, !dbg !482         ; [#uses=1 type=i8*] [debug line = 332:5]
  %259 = getelementptr inbounds i8* %258, i64 1, !dbg !482 ; [#uses=2 type=i8*] [debug line = 332:5]
  %260 = load i8* %259, align 1, !dbg !482        ; [#uses=1 type=i8] [debug line = 332:5]
  %261 = zext i8 %260 to i32, !dbg !482           ; [#uses=1 type=i32] [debug line = 332:5]
  %262 = xor i32 %261, %257, !dbg !482            ; [#uses=1 type=i32] [debug line = 332:5]
  %263 = trunc i32 %262 to i8, !dbg !482          ; [#uses=1 type=i8] [debug line = 332:5]
  store i8 %263, i8* %259, align 1, !dbg !482     ; [debug line = 332:5]
  %264 = load i8** %1, align 8, !dbg !483         ; [#uses=1 type=i8*] [debug line = 333:5]
  %265 = getelementptr inbounds i8* %264, i64 31, !dbg !483 ; [#uses=1 type=i8*] [debug line = 333:5]
  %266 = load i8* %265, align 1, !dbg !483        ; [#uses=1 type=i8] [debug line = 333:5]
  %267 = zext i8 %266 to i64, !dbg !483           ; [#uses=1 type=i64] [debug line = 333:5]
  %268 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %267, !dbg !483 ; [#uses=1 type=i8*] [debug line = 333:5]
  %269 = load i8* %268, align 1, !dbg !483        ; [#uses=1 type=i8] [debug line = 333:5]
  %270 = zext i8 %269 to i32, !dbg !483           ; [#uses=1 type=i32] [debug line = 333:5]
  %271 = load i8** %1, align 8, !dbg !483         ; [#uses=1 type=i8*] [debug line = 333:5]
  %272 = getelementptr inbounds i8* %271, i64 2, !dbg !483 ; [#uses=2 type=i8*] [debug line = 333:5]
  %273 = load i8* %272, align 1, !dbg !483        ; [#uses=1 type=i8] [debug line = 333:5]
  %274 = zext i8 %273 to i32, !dbg !483           ; [#uses=1 type=i32] [debug line = 333:5]
  %275 = xor i32 %274, %270, !dbg !483            ; [#uses=1 type=i32] [debug line = 333:5]
  %276 = trunc i32 %275 to i8, !dbg !483          ; [#uses=1 type=i8] [debug line = 333:5]
  store i8 %276, i8* %272, align 1, !dbg !483     ; [debug line = 333:5]
  %277 = load i8** %1, align 8, !dbg !484         ; [#uses=1 type=i8*] [debug line = 334:5]
  %278 = getelementptr inbounds i8* %277, i64 28, !dbg !484 ; [#uses=1 type=i8*] [debug line = 334:5]
  %279 = load i8* %278, align 1, !dbg !484        ; [#uses=1 type=i8] [debug line = 334:5]
  %280 = zext i8 %279 to i64, !dbg !484           ; [#uses=1 type=i64] [debug line = 334:5]
  %281 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %280, !dbg !484 ; [#uses=1 type=i8*] [debug line = 334:5]
  %282 = load i8* %281, align 1, !dbg !484        ; [#uses=1 type=i8] [debug line = 334:5]
  %283 = zext i8 %282 to i32, !dbg !484           ; [#uses=1 type=i32] [debug line = 334:5]
  %284 = load i8** %1, align 8, !dbg !484         ; [#uses=1 type=i8*] [debug line = 334:5]
  %285 = getelementptr inbounds i8* %284, i64 3, !dbg !484 ; [#uses=2 type=i8*] [debug line = 334:5]
  %286 = load i8* %285, align 1, !dbg !484        ; [#uses=1 type=i8] [debug line = 334:5]
  %287 = zext i8 %286 to i32, !dbg !484           ; [#uses=1 type=i32] [debug line = 334:5]
  %288 = xor i32 %287, %283, !dbg !484            ; [#uses=1 type=i32] [debug line = 334:5]
  %289 = trunc i32 %288 to i8, !dbg !484          ; [#uses=1 type=i8] [debug line = 334:5]
  store i8 %289, i8* %285, align 1, !dbg !484     ; [debug line = 334:5]
  ret void, !dbg !485                             ; [debug line = 335:1]
}

; [#uses=1]
define internal void @aes_mixColumns_inv(i8* %buf) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=9 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=12 type=i8*]
  %a = alloca i8, align 1                         ; [#uses=5 type=i8*]
  %b = alloca i8, align 1                         ; [#uses=5 type=i8*]
  %c = alloca i8, align 1                         ; [#uses=5 type=i8*]
  %d = alloca i8, align 1                         ; [#uses=5 type=i8*]
  %e = alloca i8, align 1                         ; [#uses=4 type=i8*]
  %x = alloca i8, align 1                         ; [#uses=3 type=i8*]
  %y = alloca i8, align 1                         ; [#uses=3 type=i8*]
  %z = alloca i8, align 1                         ; [#uses=3 type=i8*]
  store i8* %buf, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !486), !dbg !487 ; [debug line = 270:34] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !488), !dbg !490 ; [debug line = 272:22] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i8* %a}, metadata !491), !dbg !492 ; [debug line = 272:25] [debug variable = a]
  call void @llvm.dbg.declare(metadata !{i8* %b}, metadata !493), !dbg !494 ; [debug line = 272:28] [debug variable = b]
  call void @llvm.dbg.declare(metadata !{i8* %c}, metadata !495), !dbg !496 ; [debug line = 272:31] [debug variable = c]
  call void @llvm.dbg.declare(metadata !{i8* %d}, metadata !497), !dbg !498 ; [debug line = 272:34] [debug variable = d]
  call void @llvm.dbg.declare(metadata !{i8* %e}, metadata !499), !dbg !500 ; [debug line = 272:37] [debug variable = e]
  call void @llvm.dbg.declare(metadata !{i8* %x}, metadata !501), !dbg !502 ; [debug line = 272:40] [debug variable = x]
  call void @llvm.dbg.declare(metadata !{i8* %y}, metadata !503), !dbg !504 ; [debug line = 272:43] [debug variable = y]
  call void @llvm.dbg.declare(metadata !{i8* %z}, metadata !505), !dbg !506 ; [debug line = 272:46] [debug variable = z]
  store i8 0, i8* %i, align 1, !dbg !507          ; [debug line = 274:10]
  br label %2, !dbg !507                          ; [debug line = 274:10]

; <label>:2                                       ; preds = %161, %0
  %3 = load i8* %i, align 1, !dbg !507            ; [#uses=1 type=i8] [debug line = 274:10]
  %4 = zext i8 %3 to i32, !dbg !507               ; [#uses=1 type=i32] [debug line = 274:10]
  %5 = icmp slt i32 %4, 16, !dbg !507             ; [#uses=1 type=i1] [debug line = 274:10]
  br i1 %5, label %6, label %166, !dbg !507       ; [debug line = 274:10]

; <label>:6                                       ; preds = %2
  %7 = load i8* %i, align 1, !dbg !509            ; [#uses=1 type=i8] [debug line = 276:9]
  %8 = zext i8 %7 to i64, !dbg !509               ; [#uses=1 type=i64] [debug line = 276:9]
  %9 = load i8** %1, align 8, !dbg !509           ; [#uses=1 type=i8*] [debug line = 276:9]
  %10 = getelementptr inbounds i8* %9, i64 %8, !dbg !509 ; [#uses=1 type=i8*] [debug line = 276:9]
  %11 = load i8* %10, align 1, !dbg !509          ; [#uses=1 type=i8] [debug line = 276:9]
  store i8 %11, i8* %a, align 1, !dbg !509        ; [debug line = 276:9]
  %12 = load i8* %i, align 1, !dbg !511           ; [#uses=1 type=i8] [debug line = 277:9]
  %13 = zext i8 %12 to i32, !dbg !511             ; [#uses=1 type=i32] [debug line = 277:9]
  %14 = add nsw i32 %13, 1, !dbg !511             ; [#uses=1 type=i32] [debug line = 277:9]
  %15 = sext i32 %14 to i64, !dbg !511            ; [#uses=1 type=i64] [debug line = 277:9]
  %16 = load i8** %1, align 8, !dbg !511          ; [#uses=1 type=i8*] [debug line = 277:9]
  %17 = getelementptr inbounds i8* %16, i64 %15, !dbg !511 ; [#uses=1 type=i8*] [debug line = 277:9]
  %18 = load i8* %17, align 1, !dbg !511          ; [#uses=1 type=i8] [debug line = 277:9]
  store i8 %18, i8* %b, align 1, !dbg !511        ; [debug line = 277:9]
  %19 = load i8* %i, align 1, !dbg !512           ; [#uses=1 type=i8] [debug line = 278:9]
  %20 = zext i8 %19 to i32, !dbg !512             ; [#uses=1 type=i32] [debug line = 278:9]
  %21 = add nsw i32 %20, 2, !dbg !512             ; [#uses=1 type=i32] [debug line = 278:9]
  %22 = sext i32 %21 to i64, !dbg !512            ; [#uses=1 type=i64] [debug line = 278:9]
  %23 = load i8** %1, align 8, !dbg !512          ; [#uses=1 type=i8*] [debug line = 278:9]
  %24 = getelementptr inbounds i8* %23, i64 %22, !dbg !512 ; [#uses=1 type=i8*] [debug line = 278:9]
  %25 = load i8* %24, align 1, !dbg !512          ; [#uses=1 type=i8] [debug line = 278:9]
  store i8 %25, i8* %c, align 1, !dbg !512        ; [debug line = 278:9]
  %26 = load i8* %i, align 1, !dbg !513           ; [#uses=1 type=i8] [debug line = 279:9]
  %27 = zext i8 %26 to i32, !dbg !513             ; [#uses=1 type=i32] [debug line = 279:9]
  %28 = add nsw i32 %27, 3, !dbg !513             ; [#uses=1 type=i32] [debug line = 279:9]
  %29 = sext i32 %28 to i64, !dbg !513            ; [#uses=1 type=i64] [debug line = 279:9]
  %30 = load i8** %1, align 8, !dbg !513          ; [#uses=1 type=i8*] [debug line = 279:9]
  %31 = getelementptr inbounds i8* %30, i64 %29, !dbg !513 ; [#uses=1 type=i8*] [debug line = 279:9]
  %32 = load i8* %31, align 1, !dbg !513          ; [#uses=1 type=i8] [debug line = 279:9]
  store i8 %32, i8* %d, align 1, !dbg !513        ; [debug line = 279:9]
  %33 = load i8* %a, align 1, !dbg !514           ; [#uses=1 type=i8] [debug line = 280:9]
  %34 = zext i8 %33 to i32, !dbg !514             ; [#uses=1 type=i32] [debug line = 280:9]
  %35 = load i8* %b, align 1, !dbg !514           ; [#uses=1 type=i8] [debug line = 280:9]
  %36 = zext i8 %35 to i32, !dbg !514             ; [#uses=1 type=i32] [debug line = 280:9]
  %37 = xor i32 %34, %36, !dbg !514               ; [#uses=1 type=i32] [debug line = 280:9]
  %38 = load i8* %c, align 1, !dbg !514           ; [#uses=1 type=i8] [debug line = 280:9]
  %39 = zext i8 %38 to i32, !dbg !514             ; [#uses=1 type=i32] [debug line = 280:9]
  %40 = xor i32 %37, %39, !dbg !514               ; [#uses=1 type=i32] [debug line = 280:9]
  %41 = load i8* %d, align 1, !dbg !514           ; [#uses=1 type=i8] [debug line = 280:9]
  %42 = zext i8 %41 to i32, !dbg !514             ; [#uses=1 type=i32] [debug line = 280:9]
  %43 = xor i32 %40, %42, !dbg !514               ; [#uses=1 type=i32] [debug line = 280:9]
  %44 = trunc i32 %43 to i8, !dbg !514            ; [#uses=1 type=i8] [debug line = 280:9]
  store i8 %44, i8* %e, align 1, !dbg !514        ; [debug line = 280:9]
  %45 = load i8* %e, align 1, !dbg !515           ; [#uses=1 type=i8] [debug line = 281:13]
  %46 = call zeroext i8 @rj_xtime(i8 zeroext %45), !dbg !515 ; [#uses=1 type=i8] [debug line = 281:13]
  store i8 %46, i8* %z, align 1, !dbg !515        ; [debug line = 281:13]
  %47 = load i8* %e, align 1, !dbg !516           ; [#uses=1 type=i8] [debug line = 282:9]
  %48 = zext i8 %47 to i32, !dbg !516             ; [#uses=1 type=i32] [debug line = 282:9]
  %49 = load i8* %z, align 1, !dbg !517           ; [#uses=1 type=i8] [debug line = 282:26]
  %50 = zext i8 %49 to i32, !dbg !517             ; [#uses=1 type=i32] [debug line = 282:26]
  %51 = load i8* %a, align 1, !dbg !517           ; [#uses=1 type=i8] [debug line = 282:26]
  %52 = zext i8 %51 to i32, !dbg !517             ; [#uses=1 type=i32] [debug line = 282:26]
  %53 = xor i32 %50, %52, !dbg !517               ; [#uses=1 type=i32] [debug line = 282:26]
  %54 = load i8* %c, align 1, !dbg !517           ; [#uses=1 type=i8] [debug line = 282:26]
  %55 = zext i8 %54 to i32, !dbg !517             ; [#uses=1 type=i32] [debug line = 282:26]
  %56 = xor i32 %53, %55, !dbg !517               ; [#uses=1 type=i32] [debug line = 282:26]
  %57 = trunc i32 %56 to i8, !dbg !517            ; [#uses=1 type=i8] [debug line = 282:26]
  %58 = call zeroext i8 @rj_xtime(i8 zeroext %57), !dbg !517 ; [#uses=1 type=i8] [debug line = 282:26]
  %59 = call zeroext i8 @rj_xtime(i8 zeroext %58), !dbg !517 ; [#uses=1 type=i8] [debug line = 282:26]
  %60 = zext i8 %59 to i32, !dbg !517             ; [#uses=1 type=i32] [debug line = 282:26]
  %61 = xor i32 %48, %60, !dbg !517               ; [#uses=1 type=i32] [debug line = 282:26]
  %62 = trunc i32 %61 to i8, !dbg !517            ; [#uses=1 type=i8] [debug line = 282:26]
  store i8 %62, i8* %x, align 1, !dbg !517        ; [debug line = 282:26]
  %63 = load i8* %e, align 1, !dbg !518           ; [#uses=1 type=i8] [debug line = 283:9]
  %64 = zext i8 %63 to i32, !dbg !518             ; [#uses=1 type=i32] [debug line = 283:9]
  %65 = load i8* %z, align 1, !dbg !519           ; [#uses=1 type=i8] [debug line = 283:26]
  %66 = zext i8 %65 to i32, !dbg !519             ; [#uses=1 type=i32] [debug line = 283:26]
  %67 = load i8* %b, align 1, !dbg !519           ; [#uses=1 type=i8] [debug line = 283:26]
  %68 = zext i8 %67 to i32, !dbg !519             ; [#uses=1 type=i32] [debug line = 283:26]
  %69 = xor i32 %66, %68, !dbg !519               ; [#uses=1 type=i32] [debug line = 283:26]
  %70 = load i8* %d, align 1, !dbg !519           ; [#uses=1 type=i8] [debug line = 283:26]
  %71 = zext i8 %70 to i32, !dbg !519             ; [#uses=1 type=i32] [debug line = 283:26]
  %72 = xor i32 %69, %71, !dbg !519               ; [#uses=1 type=i32] [debug line = 283:26]
  %73 = trunc i32 %72 to i8, !dbg !519            ; [#uses=1 type=i8] [debug line = 283:26]
  %74 = call zeroext i8 @rj_xtime(i8 zeroext %73), !dbg !519 ; [#uses=1 type=i8] [debug line = 283:26]
  %75 = call zeroext i8 @rj_xtime(i8 zeroext %74), !dbg !519 ; [#uses=1 type=i8] [debug line = 283:26]
  %76 = zext i8 %75 to i32, !dbg !519             ; [#uses=1 type=i32] [debug line = 283:26]
  %77 = xor i32 %64, %76, !dbg !519               ; [#uses=1 type=i32] [debug line = 283:26]
  %78 = trunc i32 %77 to i8, !dbg !519            ; [#uses=1 type=i8] [debug line = 283:26]
  store i8 %78, i8* %y, align 1, !dbg !519        ; [debug line = 283:26]
  %79 = load i8* %x, align 1, !dbg !520           ; [#uses=1 type=i8] [debug line = 284:9]
  %80 = zext i8 %79 to i32, !dbg !520             ; [#uses=1 type=i32] [debug line = 284:9]
  %81 = load i8* %a, align 1, !dbg !521           ; [#uses=1 type=i8] [debug line = 284:23]
  %82 = zext i8 %81 to i32, !dbg !521             ; [#uses=1 type=i32] [debug line = 284:23]
  %83 = load i8* %b, align 1, !dbg !521           ; [#uses=1 type=i8] [debug line = 284:23]
  %84 = zext i8 %83 to i32, !dbg !521             ; [#uses=1 type=i32] [debug line = 284:23]
  %85 = xor i32 %82, %84, !dbg !521               ; [#uses=1 type=i32] [debug line = 284:23]
  %86 = trunc i32 %85 to i8, !dbg !521            ; [#uses=1 type=i8] [debug line = 284:23]
  %87 = call zeroext i8 @rj_xtime(i8 zeroext %86), !dbg !521 ; [#uses=1 type=i8] [debug line = 284:23]
  %88 = zext i8 %87 to i32, !dbg !521             ; [#uses=1 type=i32] [debug line = 284:23]
  %89 = xor i32 %80, %88, !dbg !521               ; [#uses=1 type=i32] [debug line = 284:23]
  %90 = load i8* %i, align 1, !dbg !521           ; [#uses=1 type=i8] [debug line = 284:23]
  %91 = zext i8 %90 to i64, !dbg !521             ; [#uses=1 type=i64] [debug line = 284:23]
  %92 = load i8** %1, align 8, !dbg !521          ; [#uses=1 type=i8*] [debug line = 284:23]
  %93 = getelementptr inbounds i8* %92, i64 %91, !dbg !521 ; [#uses=2 type=i8*] [debug line = 284:23]
  %94 = load i8* %93, align 1, !dbg !521          ; [#uses=1 type=i8] [debug line = 284:23]
  %95 = zext i8 %94 to i32, !dbg !521             ; [#uses=1 type=i32] [debug line = 284:23]
  %96 = xor i32 %95, %89, !dbg !521               ; [#uses=1 type=i32] [debug line = 284:23]
  %97 = trunc i32 %96 to i8, !dbg !521            ; [#uses=1 type=i8] [debug line = 284:23]
  store i8 %97, i8* %93, align 1, !dbg !521       ; [debug line = 284:23]
  %98 = load i8* %y, align 1, !dbg !522           ; [#uses=1 type=i8] [debug line = 285:9]
  %99 = zext i8 %98 to i32, !dbg !522             ; [#uses=1 type=i32] [debug line = 285:9]
  %100 = load i8* %b, align 1, !dbg !523          ; [#uses=1 type=i8] [debug line = 285:27]
  %101 = zext i8 %100 to i32, !dbg !523           ; [#uses=1 type=i32] [debug line = 285:27]
  %102 = load i8* %c, align 1, !dbg !523          ; [#uses=1 type=i8] [debug line = 285:27]
  %103 = zext i8 %102 to i32, !dbg !523           ; [#uses=1 type=i32] [debug line = 285:27]
  %104 = xor i32 %101, %103, !dbg !523            ; [#uses=1 type=i32] [debug line = 285:27]
  %105 = trunc i32 %104 to i8, !dbg !523          ; [#uses=1 type=i8] [debug line = 285:27]
  %106 = call zeroext i8 @rj_xtime(i8 zeroext %105), !dbg !523 ; [#uses=1 type=i8] [debug line = 285:27]
  %107 = zext i8 %106 to i32, !dbg !523           ; [#uses=1 type=i32] [debug line = 285:27]
  %108 = xor i32 %99, %107, !dbg !523             ; [#uses=1 type=i32] [debug line = 285:27]
  %109 = load i8* %i, align 1, !dbg !523          ; [#uses=1 type=i8] [debug line = 285:27]
  %110 = zext i8 %109 to i32, !dbg !523           ; [#uses=1 type=i32] [debug line = 285:27]
  %111 = add nsw i32 %110, 1, !dbg !523           ; [#uses=1 type=i32] [debug line = 285:27]
  %112 = sext i32 %111 to i64, !dbg !523          ; [#uses=1 type=i64] [debug line = 285:27]
  %113 = load i8** %1, align 8, !dbg !523         ; [#uses=1 type=i8*] [debug line = 285:27]
  %114 = getelementptr inbounds i8* %113, i64 %112, !dbg !523 ; [#uses=2 type=i8*] [debug line = 285:27]
  %115 = load i8* %114, align 1, !dbg !523        ; [#uses=1 type=i8] [debug line = 285:27]
  %116 = zext i8 %115 to i32, !dbg !523           ; [#uses=1 type=i32] [debug line = 285:27]
  %117 = xor i32 %116, %108, !dbg !523            ; [#uses=1 type=i32] [debug line = 285:27]
  %118 = trunc i32 %117 to i8, !dbg !523          ; [#uses=1 type=i8] [debug line = 285:27]
  store i8 %118, i8* %114, align 1, !dbg !523     ; [debug line = 285:27]
  %119 = load i8* %x, align 1, !dbg !524          ; [#uses=1 type=i8] [debug line = 286:9]
  %120 = zext i8 %119 to i32, !dbg !524           ; [#uses=1 type=i32] [debug line = 286:9]
  %121 = load i8* %c, align 1, !dbg !525          ; [#uses=1 type=i8] [debug line = 286:27]
  %122 = zext i8 %121 to i32, !dbg !525           ; [#uses=1 type=i32] [debug line = 286:27]
  %123 = load i8* %d, align 1, !dbg !525          ; [#uses=1 type=i8] [debug line = 286:27]
  %124 = zext i8 %123 to i32, !dbg !525           ; [#uses=1 type=i32] [debug line = 286:27]
  %125 = xor i32 %122, %124, !dbg !525            ; [#uses=1 type=i32] [debug line = 286:27]
  %126 = trunc i32 %125 to i8, !dbg !525          ; [#uses=1 type=i8] [debug line = 286:27]
  %127 = call zeroext i8 @rj_xtime(i8 zeroext %126), !dbg !525 ; [#uses=1 type=i8] [debug line = 286:27]
  %128 = zext i8 %127 to i32, !dbg !525           ; [#uses=1 type=i32] [debug line = 286:27]
  %129 = xor i32 %120, %128, !dbg !525            ; [#uses=1 type=i32] [debug line = 286:27]
  %130 = load i8* %i, align 1, !dbg !525          ; [#uses=1 type=i8] [debug line = 286:27]
  %131 = zext i8 %130 to i32, !dbg !525           ; [#uses=1 type=i32] [debug line = 286:27]
  %132 = add nsw i32 %131, 2, !dbg !525           ; [#uses=1 type=i32] [debug line = 286:27]
  %133 = sext i32 %132 to i64, !dbg !525          ; [#uses=1 type=i64] [debug line = 286:27]
  %134 = load i8** %1, align 8, !dbg !525         ; [#uses=1 type=i8*] [debug line = 286:27]
  %135 = getelementptr inbounds i8* %134, i64 %133, !dbg !525 ; [#uses=2 type=i8*] [debug line = 286:27]
  %136 = load i8* %135, align 1, !dbg !525        ; [#uses=1 type=i8] [debug line = 286:27]
  %137 = zext i8 %136 to i32, !dbg !525           ; [#uses=1 type=i32] [debug line = 286:27]
  %138 = xor i32 %137, %129, !dbg !525            ; [#uses=1 type=i32] [debug line = 286:27]
  %139 = trunc i32 %138 to i8, !dbg !525          ; [#uses=1 type=i8] [debug line = 286:27]
  store i8 %139, i8* %135, align 1, !dbg !525     ; [debug line = 286:27]
  %140 = load i8* %y, align 1, !dbg !526          ; [#uses=1 type=i8] [debug line = 287:9]
  %141 = zext i8 %140 to i32, !dbg !526           ; [#uses=1 type=i32] [debug line = 287:9]
  %142 = load i8* %d, align 1, !dbg !527          ; [#uses=1 type=i8] [debug line = 287:27]
  %143 = zext i8 %142 to i32, !dbg !527           ; [#uses=1 type=i32] [debug line = 287:27]
  %144 = load i8* %a, align 1, !dbg !527          ; [#uses=1 type=i8] [debug line = 287:27]
  %145 = zext i8 %144 to i32, !dbg !527           ; [#uses=1 type=i32] [debug line = 287:27]
  %146 = xor i32 %143, %145, !dbg !527            ; [#uses=1 type=i32] [debug line = 287:27]
  %147 = trunc i32 %146 to i8, !dbg !527          ; [#uses=1 type=i8] [debug line = 287:27]
  %148 = call zeroext i8 @rj_xtime(i8 zeroext %147), !dbg !527 ; [#uses=1 type=i8] [debug line = 287:27]
  %149 = zext i8 %148 to i32, !dbg !527           ; [#uses=1 type=i32] [debug line = 287:27]
  %150 = xor i32 %141, %149, !dbg !527            ; [#uses=1 type=i32] [debug line = 287:27]
  %151 = load i8* %i, align 1, !dbg !527          ; [#uses=1 type=i8] [debug line = 287:27]
  %152 = zext i8 %151 to i32, !dbg !527           ; [#uses=1 type=i32] [debug line = 287:27]
  %153 = add nsw i32 %152, 3, !dbg !527           ; [#uses=1 type=i32] [debug line = 287:27]
  %154 = sext i32 %153 to i64, !dbg !527          ; [#uses=1 type=i64] [debug line = 287:27]
  %155 = load i8** %1, align 8, !dbg !527         ; [#uses=1 type=i8*] [debug line = 287:27]
  %156 = getelementptr inbounds i8* %155, i64 %154, !dbg !527 ; [#uses=2 type=i8*] [debug line = 287:27]
  %157 = load i8* %156, align 1, !dbg !527        ; [#uses=1 type=i8] [debug line = 287:27]
  %158 = zext i8 %157 to i32, !dbg !527           ; [#uses=1 type=i32] [debug line = 287:27]
  %159 = xor i32 %158, %150, !dbg !527            ; [#uses=1 type=i32] [debug line = 287:27]
  %160 = trunc i32 %159 to i8, !dbg !527          ; [#uses=1 type=i8] [debug line = 287:27]
  store i8 %160, i8* %156, align 1, !dbg !527     ; [debug line = 287:27]
  br label %161, !dbg !528                        ; [debug line = 288:5]

; <label>:161                                     ; preds = %6
  %162 = load i8* %i, align 1, !dbg !529          ; [#uses=1 type=i8] [debug line = 274:25]
  %163 = zext i8 %162 to i32, !dbg !529           ; [#uses=1 type=i32] [debug line = 274:25]
  %164 = add nsw i32 %163, 4, !dbg !529           ; [#uses=1 type=i32] [debug line = 274:25]
  %165 = trunc i32 %164 to i8, !dbg !529          ; [#uses=1 type=i8] [debug line = 274:25]
  store i8 %165, i8* %i, align 1, !dbg !529       ; [debug line = 274:25]
  br label %2, !dbg !529                          ; [debug line = 274:25]

; <label>:166                                     ; preds = %2
  ret void, !dbg !530                             ; [debug line = 289:1]
}

; [#uses=14]
define internal zeroext i8 @rj_xtime(i8 zeroext %x) nounwind uwtable {
  %1 = alloca i8, align 1                         ; [#uses=3 type=i8*]
  %y = alloca i8, align 1                         ; [#uses=3 type=i8*]
  store i8 %x, i8* %1, align 1
  call void @llvm.dbg.declare(metadata !{i8* %1}, metadata !531), !dbg !532 ; [debug line = 187:33] [debug variable = x]
  call void @llvm.dbg.declare(metadata !{i8* %y}, metadata !533), !dbg !535 ; [debug line = 189:13] [debug variable = y]
  %2 = load i8* %1, align 1, !dbg !536            ; [#uses=1 type=i8] [debug line = 189:34]
  %3 = zext i8 %2 to i32, !dbg !536               ; [#uses=1 type=i32] [debug line = 189:34]
  %4 = shl i32 %3, 1, !dbg !536                   ; [#uses=1 type=i32] [debug line = 189:34]
  %5 = trunc i32 %4 to i8, !dbg !536              ; [#uses=1 type=i8] [debug line = 189:34]
  store i8 %5, i8* %y, align 1, !dbg !536         ; [debug line = 189:34]
  %6 = load i8* %1, align 1, !dbg !537            ; [#uses=1 type=i8] [debug line = 190:5]
  %7 = zext i8 %6 to i32, !dbg !537               ; [#uses=1 type=i32] [debug line = 190:5]
  %8 = and i32 %7, 128, !dbg !537                 ; [#uses=1 type=i32] [debug line = 190:5]
  %9 = icmp ne i32 %8, 0, !dbg !537               ; [#uses=1 type=i1] [debug line = 190:5]
  br i1 %9, label %10, label %14, !dbg !537       ; [debug line = 190:5]

; <label>:10                                      ; preds = %0
  %11 = load i8* %y, align 1, !dbg !537           ; [#uses=1 type=i8] [debug line = 190:5]
  %12 = zext i8 %11 to i32, !dbg !537             ; [#uses=1 type=i32] [debug line = 190:5]
  %13 = xor i32 %12, 27, !dbg !537                ; [#uses=1 type=i32] [debug line = 190:5]
  br label %17, !dbg !537                         ; [debug line = 190:5]

; <label>:14                                      ; preds = %0
  %15 = load i8* %y, align 1, !dbg !537           ; [#uses=1 type=i8] [debug line = 190:5]
  %16 = zext i8 %15 to i32, !dbg !537             ; [#uses=1 type=i32] [debug line = 190:5]
  br label %17, !dbg !537                         ; [debug line = 190:5]

; <label>:17                                      ; preds = %14, %10
  %18 = phi i32 [ %13, %10 ], [ %16, %14 ], !dbg !537 ; [#uses=1 type=i32] [debug line = 190:5]
  %19 = trunc i32 %18 to i8, !dbg !537            ; [#uses=1 type=i8] [debug line = 190:5]
  ret i8 %19, !dbg !537                           ; [debug line = 190:5]
}

!llvm.dbg.cu = !{!0, !56}
!opencl.kernels = !{!105, !112, !118, !124, !126, !127, !130, !134, !137, !138, !139, !141, !142, !143, !144, !148}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/brett/Thesis/Vivado_WS/aescbc/solution1/.autopilot/db/aescbc.pragma.2.c", metadata !"/home/brett/Thesis/Vivado_WS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !11, metadata !13, metadata !25} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, null, metadata !"", metadata !4, i32 8, i64 3, i64 4, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!4 = metadata !{i32 786473, metadata !"aescbc/src/aescbc.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10}
!6 = metadata !{i32 786472, metadata !"RESET", i64 0} ; [ DW_TAG_enumerator ]
!7 = metadata !{i32 786472, metadata !"ENCRYPT", i64 1} ; [ DW_TAG_enumerator ]
!8 = metadata !{i32 786472, metadata !"DECRYPT", i64 2} ; [ DW_TAG_enumerator ]
!9 = metadata !{i32 786472, metadata !"SET_IV", i64 3} ; [ DW_TAG_enumerator ]
!10 = metadata !{i32 786472, metadata !"SET_KEY", i64 4} ; [ DW_TAG_enumerator ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786478, i32 0, metadata !16, metadata !"aescbc", metadata !"aescbc", metadata !"", metadata !16, i32 8, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i3, i8*, i8*)* @aescbc, null, null, metadata !23, i32 11} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786473, metadata !"aescbc/src/aescbc.c", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{null, metadata !19, metadata !20, metadata !20}
!19 = metadata !{i32 786454, null, metadata !"ciphermode_t", metadata !16, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ]
!20 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ]
!21 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !16, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ]
!22 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !27, metadata !32, metadata !34, metadata !35, metadata !36, metadata !40, metadata !48, metadata !51, metadata !52, metadata !53}
!27 = metadata !{i32 786484, i32 0, metadata !15, metadata !"zeros", metadata !"zeros", metadata !"", metadata !16, i32 19, metadata !28, i32 1, i32 1, [16 x i8]* @aescbc.zeros} ; [ DW_TAG_variable ]
!28 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !29, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!29 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_const_type ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!32 = metadata !{i32 786484, i32 0, metadata !15, metadata !"lastbuf", metadata !"lastbuf", metadata !"", metadata !16, i32 22, metadata !33, i32 1, i32 1, [16 x i8]* @aescbc.lastbuf} ; [ DW_TAG_variable ]
!33 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !21, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!34 = metadata !{i32 786484, i32 0, metadata !15, metadata !"iv", metadata !"iv", metadata !"", metadata !16, i32 23, metadata !33, i32 1, i32 1, [16 x i8]* @aescbc.iv} ; [ DW_TAG_variable ]
!35 = metadata !{i32 786484, i32 0, metadata !15, metadata !"xorv", metadata !"xorv", metadata !"", metadata !16, i32 24, metadata !33, i32 1, i32 1, [16 x i8]* @aescbc.xorv} ; [ DW_TAG_variable ]
!36 = metadata !{i32 786484, i32 0, metadata !15, metadata !"key", metadata !"key", metadata !"", metadata !16, i32 25, metadata !37, i32 1, i32 1, [32 x i8]* @aescbc.key} ; [ DW_TAG_variable ]
!37 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !21, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ]
!38 = metadata !{metadata !39}
!39 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!40 = metadata !{i32 786484, i32 0, metadata !15, metadata !"ctx", metadata !"ctx", metadata !"", metadata !16, i32 26, metadata !41, i32 1, i32 1, %struct.aes_context* @aescbc.ctx} ; [ DW_TAG_variable ]
!41 = metadata !{i32 786454, null, metadata !"aes_context", metadata !16, i32 33, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_typedef ]
!42 = metadata !{i32 786451, null, metadata !"", metadata !43, i32 29, i64 768, i64 8, i32 0, i32 0, null, metadata !44, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!43 = metadata !{i32 786473, metadata !"aescbc/src/aesecb.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!44 = metadata !{metadata !45, metadata !46, metadata !47}
!45 = metadata !{i32 786445, metadata !42, metadata !"key", metadata !43, i32 30, i64 256, i64 8, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ]
!46 = metadata !{i32 786445, metadata !42, metadata !"enckey", metadata !43, i32 31, i64 256, i64 8, i64 256, i32 0, metadata !37} ; [ DW_TAG_member ]
!47 = metadata !{i32 786445, metadata !42, metadata !"deckey", metadata !43, i32 32, i64 256, i64 8, i64 512, i32 0, metadata !37} ; [ DW_TAG_member ]
!48 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !49, i32 315, metadata !50, i32 0, i32 1, %struct.aes_context* @_IO_2_1_stdin_} ; [ DW_TAG_variable ]
!49 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!50 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !49, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!51 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !49, i32 316, metadata !50, i32 0, i32 1, %struct.aes_context* @_IO_2_1_stdout_} ; [ DW_TAG_variable ]
!52 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !49, i32 317, metadata !50, i32 0, i32 1, %struct.aes_context* @_IO_2_1_stderr_} ; [ DW_TAG_variable ]
!53 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !54, i32 26, metadata !55, i32 0, i32 1, i32* @sys_nerr} ; [ DW_TAG_variable ]
!54 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!55 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!56 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/brett/Thesis/Vivado_WS/aescbc/solution1/.autopilot/db/aesecb.pragma.2.c", metadata !"/home/brett/Thesis/Vivado_WS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !11, metadata !11, metadata !57, metadata !97} ; [ DW_TAG_compile_unit ]
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !59, metadata !73, metadata !76, metadata !77, metadata !78, metadata !81, metadata !84, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !96}
!59 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_init", metadata !"aes_init", metadata !"", metadata !60, i32 339, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.aes_context*, i8*)* @aes_init, null, null, metadata !23, i32 340} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786473, metadata !"aescbc/src/aesecb.c", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!61 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!62 = metadata !{null, metadata !63, metadata !72}
!63 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ]
!64 = metadata !{i32 786454, null, metadata !"aes_context", metadata !60, i32 33, i64 0, i64 0, i64 0, i32 0, metadata !65} ; [ DW_TAG_typedef ]
!65 = metadata !{i32 786451, null, metadata !"", metadata !43, i32 29, i64 768, i64 8, i32 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!66 = metadata !{metadata !67, metadata !70, metadata !71}
!67 = metadata !{i32 786445, metadata !65, metadata !"key", metadata !43, i32 30, i64 256, i64 8, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ]
!68 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !69, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ]
!69 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !43, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ]
!70 = metadata !{i32 786445, metadata !65, metadata !"enckey", metadata !43, i32 31, i64 256, i64 8, i64 256, i32 0, metadata !68} ; [ DW_TAG_member ]
!71 = metadata !{i32 786445, metadata !65, metadata !"deckey", metadata !43, i32 32, i64 256, i64 8, i64 512, i32 0, metadata !68} ; [ DW_TAG_member ]
!72 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ]
!73 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_done", metadata !"aes_done", metadata !"", metadata !60, i32 349, metadata !74, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.aes_context*)* @aes_done, null, null, metadata !23, i32 350} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!75 = metadata !{null, metadata !63}
!76 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_encrypt_ecb", metadata !"aes_encrypt_ecb", metadata !"", metadata !60, i32 358, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.aes_context*, i8*)* @aes_encrypt_ecb, null, null, metadata !23, i32 359} ; [ DW_TAG_subprogram ]
!77 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_decrypt_ecb", metadata !"aes_decrypt_ecb", metadata !"", metadata !60, i32 378, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.aes_context*, i8*)* @aes_decrypt_ecb, null, null, metadata !23, i32 379} ; [ DW_TAG_subprogram ]
!78 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_mixColumns_inv", metadata !"aes_mixColumns_inv", metadata !"", metadata !60, i32 270, metadata !79, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_mixColumns_inv, null, null, metadata !23, i32 271} ; [ DW_TAG_subprogram ]
!79 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!80 = metadata !{null, metadata !72}
!81 = metadata !{i32 786478, i32 0, metadata !60, metadata !"rj_xtime", metadata !"rj_xtime", metadata !"", metadata !60, i32 187, metadata !82, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i8)* @rj_xtime, null, null, metadata !23, i32 188} ; [ DW_TAG_subprogram ]
!82 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!83 = metadata !{metadata !69, metadata !69}
!84 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_expandDecKey", metadata !"aes_expandDecKey", metadata !"", metadata !60, i32 315, metadata !85, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*)* @aes_expandDecKey, null, null, metadata !23, i32 316} ; [ DW_TAG_subprogram ]
!85 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!86 = metadata !{null, metadata !72, metadata !72}
!87 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_subBytes_inv", metadata !"aes_subBytes_inv", metadata !"", metadata !60, i32 202, metadata !79, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_subBytes_inv, null, null, metadata !23, i32 203} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_shiftRows_inv", metadata !"aes_shiftRows_inv", metadata !"", metadata !60, i32 239, metadata !79, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_shiftRows_inv, null, null, metadata !23, i32 240} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_addRoundKey", metadata !"aes_addRoundKey", metadata !"", metadata !60, i32 210, metadata !85, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*)* @aes_addRoundKey, null, null, metadata !23, i32 211} ; [ DW_TAG_subprogram ]
!90 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_mixColumns", metadata !"aes_mixColumns", metadata !"", metadata !60, i32 251, metadata !79, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_mixColumns, null, null, metadata !23, i32 252} ; [ DW_TAG_subprogram ]
!91 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_shiftRows", metadata !"aes_shiftRows", metadata !"", metadata !60, i32 227, metadata !79, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_shiftRows, null, null, metadata !23, i32 228} ; [ DW_TAG_subprogram ]
!92 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_subBytes", metadata !"aes_subBytes", metadata !"", metadata !60, i32 194, metadata !79, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_subBytes, null, null, metadata !23, i32 195} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_addRoundKey_cpy", metadata !"aes_addRoundKey_cpy", metadata !"", metadata !60, i32 218, metadata !94, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i8*)* @aes_addRoundKey_cpy, null, null, metadata !23, i32 219} ; [ DW_TAG_subprogram ]
!94 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !95, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!95 = metadata !{null, metadata !72, metadata !72, metadata !72}
!96 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_expandEncKey", metadata !"aes_expandEncKey", metadata !"", metadata !60, i32 292, metadata !85, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*)* @aes_expandEncKey, null, null, metadata !23, i32 293} ; [ DW_TAG_subprogram ]
!97 = metadata !{metadata !98}
!98 = metadata !{metadata !99, metadata !104}
!99 = metadata !{i32 786484, i32 0, null, metadata !"sbox", metadata !"sbox", metadata !"", metadata !60, i32 47, metadata !100, i32 1, i32 1, [256 x i8]* @sbox} ; [ DW_TAG_variable ]
!100 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !101, metadata !102, i32 0, i32 0} ; [ DW_TAG_array_type ]
!101 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_const_type ]
!102 = metadata !{metadata !103}
!103 = metadata !{i32 786465, i64 0, i64 255}     ; [ DW_TAG_subrange_type ]
!104 = metadata !{i32 786484, i32 0, null, metadata !"sboxinv", metadata !"sboxinv", metadata !"", metadata !60, i32 82, metadata !100, i32 1, i32 1, [256 x i8]* @sboxinv} ; [ DW_TAG_variable ]
!105 = metadata !{void (i3, i8*, i8*)* @aescbc, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111}
!106 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1}
!107 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"ciphermode_t", metadata !"uint8_t*", metadata !"uint8_t*"}
!109 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!110 = metadata !{metadata !"kernel_arg_name", metadata !"mode", metadata !"data_in", metadata !"data_out"}
!111 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!112 = metadata !{void (%struct.aes_context*, i8*)* @aes_init, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !111}
!113 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!114 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!115 = metadata !{metadata !"kernel_arg_type", metadata !"aes_context*", metadata !"uint8_t*"}
!116 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!117 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"k"}
!118 = metadata !{void (%struct.aes_context*)* @aes_done, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !111}
!119 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!120 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!121 = metadata !{metadata !"kernel_arg_type", metadata !"aes_context*"}
!122 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!123 = metadata !{metadata !"kernel_arg_name", metadata !"ctx"}
!124 = metadata !{void (%struct.aes_context*, i8*)* @aes_encrypt_ecb, metadata !113, metadata !114, metadata !115, metadata !116, metadata !125, metadata !111}
!125 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"buf"}
!126 = metadata !{void (%struct.aes_context*, i8*)* @aes_decrypt_ecb, metadata !113, metadata !114, metadata !115, metadata !116, metadata !125, metadata !111}
!127 = metadata !{void (i8*)* @aes_mixColumns_inv, metadata !119, metadata !120, metadata !128, metadata !122, metadata !129, metadata !111}
!128 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*"}
!129 = metadata !{metadata !"kernel_arg_name", metadata !"buf"}
!130 = metadata !{i8 (i8)* @rj_xtime, metadata !131, metadata !120, metadata !132, metadata !122, metadata !133, metadata !111}
!131 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!132 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t"}
!133 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!134 = metadata !{void (i8*, i8*)* @aes_expandDecKey, metadata !113, metadata !114, metadata !135, metadata !116, metadata !136, metadata !111}
!135 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint8_t*"}
!136 = metadata !{metadata !"kernel_arg_name", metadata !"k", metadata !"rc"}
!137 = metadata !{void (i8*)* @aes_subBytes_inv, metadata !119, metadata !120, metadata !128, metadata !122, metadata !129, metadata !111}
!138 = metadata !{void (i8*)* @aes_shiftRows_inv, metadata !119, metadata !120, metadata !128, metadata !122, metadata !129, metadata !111}
!139 = metadata !{void (i8*, i8*)* @aes_addRoundKey, metadata !113, metadata !114, metadata !135, metadata !116, metadata !140, metadata !111}
!140 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"key"}
!141 = metadata !{void (i8*)* @aes_mixColumns, metadata !119, metadata !120, metadata !128, metadata !122, metadata !129, metadata !111}
!142 = metadata !{void (i8*)* @aes_shiftRows, metadata !119, metadata !120, metadata !128, metadata !122, metadata !129, metadata !111}
!143 = metadata !{void (i8*)* @aes_subBytes, metadata !119, metadata !120, metadata !128, metadata !122, metadata !129, metadata !111}
!144 = metadata !{void (i8*, i8*, i8*)* @aes_addRoundKey_cpy, metadata !145, metadata !107, metadata !146, metadata !109, metadata !147, metadata !111}
!145 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!146 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint8_t*", metadata !"uint8_t*"}
!147 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"key", metadata !"cpk"}
!148 = metadata !{void (i8*, i8*)* @aes_expandEncKey, metadata !113, metadata !114, metadata !135, metadata !116, metadata !136, metadata !111}
!149 = metadata !{i32 786689, metadata !15, metadata !"mode", metadata !16, i32 16777224, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!150 = metadata !{i32 8, i32 26, metadata !15, null}
!151 = metadata !{i32 786689, metadata !15, metadata !"data_in", metadata !16, i32 33554441, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!152 = metadata !{i32 9, i32 12, metadata !15, null}
!153 = metadata !{i32 786689, metadata !15, metadata !"data_out", metadata !16, i32 50331658, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!154 = metadata !{i32 10, i32 12, metadata !15, null}
!155 = metadata !{i32 11, i32 2, metadata !156, null}
!156 = metadata !{i32 786443, metadata !15, i32 11, i32 1, metadata !16, i32 0} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 11, i32 38, metadata !156, null}
!158 = metadata !{i32 14, i32 1, metadata !156, null}
!159 = metadata !{i32 15, i32 1, metadata !156, null}
!160 = metadata !{i32 16, i32 1, metadata !156, null}
!161 = metadata !{i32 17, i32 1, metadata !156, null}
!162 = metadata !{i32 20, i32 1, metadata !156, null}
!163 = metadata !{i32 786688, metadata !156, metadata !"buf", metadata !16, i32 21, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!164 = metadata !{i32 21, i32 10, metadata !156, null}
!165 = metadata !{i32 786688, metadata !156, metadata !"i", metadata !16, i32 27, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!166 = metadata !{i32 27, i32 13, metadata !156, null}
!167 = metadata !{i32 29, i32 5, metadata !156, null}
!168 = metadata !{i32 29, i32 20, metadata !169, null}
!169 = metadata !{i32 786443, metadata !156, i32 29, i32 20, metadata !16, i32 1} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 33, i32 7, metadata !171, null}
!171 = metadata !{i32 786443, metadata !169, i32 33, i32 3, metadata !16, i32 2} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 34, i32 7, metadata !173, null}
!173 = metadata !{i32 786443, metadata !171, i32 34, i32 7, metadata !16, i32 3} ; [ DW_TAG_lexical_block ]
!174 = metadata !{i32 34, i32 21, metadata !173, null}
!175 = metadata !{i32 33, i32 18, metadata !171, null}
!176 = metadata !{i32 34, i32 21, metadata !171, null}
!177 = metadata !{i32 37, i32 7, metadata !178, null}
!178 = metadata !{i32 786443, metadata !169, i32 37, i32 3, metadata !16, i32 4} ; [ DW_TAG_lexical_block ]
!179 = metadata !{i32 38, i32 7, metadata !180, null}
!180 = metadata !{i32 786443, metadata !178, i32 38, i32 7, metadata !16, i32 5} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 38, i32 21, metadata !180, null}
!182 = metadata !{i32 37, i32 18, metadata !178, null}
!183 = metadata !{i32 40, i32 3, metadata !169, null}
!184 = metadata !{i32 41, i32 6, metadata !169, null}
!185 = metadata !{i32 45, i32 10, metadata !186, null}
!186 = metadata !{i32 786443, metadata !169, i32 45, i32 6, metadata !16, i32 6} ; [ DW_TAG_lexical_block ]
!187 = metadata !{i32 46, i32 7, metadata !186, null}
!188 = metadata !{i32 45, i32 21, metadata !186, null}
!189 = metadata !{i32 48, i32 10, metadata !190, null}
!190 = metadata !{i32 786443, metadata !169, i32 48, i32 6, metadata !16, i32 7} ; [ DW_TAG_lexical_block ]
!191 = metadata !{i32 49, i32 7, metadata !190, null}
!192 = metadata !{i32 48, i32 21, metadata !190, null}
!193 = metadata !{i32 51, i32 6, metadata !169, null}
!194 = metadata !{i32 53, i32 10, metadata !195, null}
!195 = metadata !{i32 786443, metadata !169, i32 53, i32 6, metadata !16, i32 8} ; [ DW_TAG_lexical_block ]
!196 = metadata !{i32 54, i32 7, metadata !195, null}
!197 = metadata !{i32 53, i32 21, metadata !195, null}
!198 = metadata !{i32 56, i32 10, metadata !199, null}
!199 = metadata !{i32 786443, metadata !169, i32 56, i32 6, metadata !16, i32 9} ; [ DW_TAG_lexical_block ]
!200 = metadata !{i32 57, i32 7, metadata !199, null}
!201 = metadata !{i32 56, i32 21, metadata !199, null}
!202 = metadata !{i32 58, i32 6, metadata !169, null}
!203 = metadata !{i32 61, i32 10, metadata !204, null}
!204 = metadata !{i32 786443, metadata !169, i32 61, i32 6, metadata !16, i32 10} ; [ DW_TAG_lexical_block ]
!205 = metadata !{i32 62, i32 7, metadata !204, null}
!206 = metadata !{i32 61, i32 21, metadata !204, null}
!207 = metadata !{i32 64, i32 10, metadata !208, null}
!208 = metadata !{i32 786443, metadata !169, i32 64, i32 6, metadata !16, i32 11} ; [ DW_TAG_lexical_block ]
!209 = metadata !{i32 65, i32 7, metadata !208, null}
!210 = metadata !{i32 64, i32 21, metadata !208, null}
!211 = metadata !{i32 67, i32 6, metadata !169, null}
!212 = metadata !{i32 69, i32 10, metadata !213, null}
!213 = metadata !{i32 786443, metadata !169, i32 69, i32 6, metadata !16, i32 12} ; [ DW_TAG_lexical_block ]
!214 = metadata !{i32 70, i32 7, metadata !213, null}
!215 = metadata !{i32 69, i32 21, metadata !213, null}
!216 = metadata !{i32 72, i32 10, metadata !217, null}
!217 = metadata !{i32 786443, metadata !169, i32 72, i32 6, metadata !16, i32 13} ; [ DW_TAG_lexical_block ]
!218 = metadata !{i32 73, i32 7, metadata !217, null}
!219 = metadata !{i32 72, i32 21, metadata !217, null}
!220 = metadata !{i32 75, i32 10, metadata !221, null}
!221 = metadata !{i32 786443, metadata !169, i32 75, i32 6, metadata !16, i32 14} ; [ DW_TAG_lexical_block ]
!222 = metadata !{i32 76, i32 7, metadata !221, null}
!223 = metadata !{i32 75, i32 21, metadata !221, null}
!224 = metadata !{i32 77, i32 6, metadata !169, null}
!225 = metadata !{i32 81, i32 7, metadata !226, null}
!226 = metadata !{i32 786443, metadata !169, i32 81, i32 3, metadata !16, i32 15} ; [ DW_TAG_lexical_block ]
!227 = metadata !{i32 82, i32 7, metadata !228, null}
!228 = metadata !{i32 786443, metadata !226, i32 82, i32 7, metadata !16, i32 16} ; [ DW_TAG_lexical_block ]
!229 = metadata !{i32 82, i32 24, metadata !228, null}
!230 = metadata !{i32 81, i32 18, metadata !226, null}
!231 = metadata !{i32 82, i32 24, metadata !226, null}
!232 = metadata !{i32 85, i32 7, metadata !233, null}
!233 = metadata !{i32 786443, metadata !169, i32 85, i32 3, metadata !16, i32 17} ; [ DW_TAG_lexical_block ]
!234 = metadata !{i32 86, i32 4, metadata !235, null}
!235 = metadata !{i32 786443, metadata !233, i32 86, i32 4, metadata !16, i32 18} ; [ DW_TAG_lexical_block ]
!236 = metadata !{i32 86, i32 18, metadata !235, null}
!237 = metadata !{i32 85, i32 18, metadata !233, null}
!238 = metadata !{i32 87, i32 6, metadata !169, null}
!239 = metadata !{i32 91, i32 7, metadata !240, null}
!240 = metadata !{i32 786443, metadata !169, i32 91, i32 3, metadata !16, i32 19} ; [ DW_TAG_lexical_block ]
!241 = metadata !{i32 92, i32 4, metadata !242, null}
!242 = metadata !{i32 786443, metadata !240, i32 92, i32 4, metadata !16, i32 20} ; [ DW_TAG_lexical_block ]
!243 = metadata !{i32 92, i32 22, metadata !242, null}
!244 = metadata !{i32 91, i32 18, metadata !240, null}
!245 = metadata !{i32 92, i32 22, metadata !240, null}
!246 = metadata !{i32 95, i32 7, metadata !247, null}
!247 = metadata !{i32 786443, metadata !169, i32 95, i32 3, metadata !16, i32 21} ; [ DW_TAG_lexical_block ]
!248 = metadata !{i32 96, i32 4, metadata !249, null}
!249 = metadata !{i32 786443, metadata !247, i32 96, i32 4, metadata !16, i32 22} ; [ DW_TAG_lexical_block ]
!250 = metadata !{i32 96, i32 18, metadata !249, null}
!251 = metadata !{i32 95, i32 18, metadata !247, null}
!252 = metadata !{i32 97, i32 6, metadata !169, null}
!253 = metadata !{i32 99, i32 1, metadata !156, null}
!254 = metadata !{i32 786689, metadata !59, metadata !"ctx", metadata !60, i32 16777555, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!255 = metadata !{i32 339, i32 28, metadata !59, null}
!256 = metadata !{i32 786689, metadata !59, metadata !"k", metadata !60, i32 33554771, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!257 = metadata !{i32 339, i32 42, metadata !59, null}
!258 = metadata !{i32 786688, metadata !259, metadata !"rcon", metadata !60, i32 341, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!259 = metadata !{i32 786443, metadata !59, i32 340, i32 1, metadata !60, i32 0} ; [ DW_TAG_lexical_block ]
!260 = metadata !{i32 341, i32 13, metadata !259, null}
!261 = metadata !{i32 341, i32 21, metadata !259, null}
!262 = metadata !{i32 786688, metadata !259, metadata !"i", metadata !60, i32 342, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!263 = metadata !{i32 342, i32 22, metadata !259, null}
!264 = metadata !{i32 344, i32 10, metadata !265, null}
!265 = metadata !{i32 786443, metadata !259, i32 344, i32 5, metadata !60, i32 1} ; [ DW_TAG_lexical_block ]
!266 = metadata !{i32 344, i32 44, metadata !265, null}
!267 = metadata !{i32 344, i32 39, metadata !265, null}
!268 = metadata !{i32 345, i32 10, metadata !269, null}
!269 = metadata !{i32 786443, metadata !259, i32 345, i32 5, metadata !60, i32 2} ; [ DW_TAG_lexical_block ]
!270 = metadata !{i32 345, i32 23, metadata !269, null}
!271 = metadata !{i32 346, i32 1, metadata !259, null}
!272 = metadata !{i32 786689, metadata !96, metadata !"k", metadata !60, i32 16777508, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!273 = metadata !{i32 292, i32 39, metadata !96, null}
!274 = metadata !{i32 786689, metadata !96, metadata !"rc", metadata !60, i32 33554724, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!275 = metadata !{i32 292, i32 51, metadata !96, null}
!276 = metadata !{i32 786688, metadata !277, metadata !"i", metadata !60, i32 294, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!277 = metadata !{i32 786443, metadata !96, i32 293, i32 1, metadata !60, i32 28} ; [ DW_TAG_lexical_block ]
!278 = metadata !{i32 294, i32 22, metadata !277, null}
!279 = metadata !{i32 296, i32 5, metadata !277, null}
!280 = metadata !{i32 297, i32 5, metadata !277, null}
!281 = metadata !{i32 298, i32 5, metadata !277, null}
!282 = metadata !{i32 299, i32 5, metadata !277, null}
!283 = metadata !{i32 300, i32 11, metadata !277, null}
!284 = metadata !{i32 302, i32 9, metadata !285, null}
!285 = metadata !{i32 786443, metadata !277, i32 302, i32 5, metadata !60, i32 29} ; [ DW_TAG_lexical_block ]
!286 = metadata !{i32 302, i32 32, metadata !285, null}
!287 = metadata !{i32 302, i32 24, metadata !285, null}
!288 = metadata !{i32 304, i32 5, metadata !277, null}
!289 = metadata !{i32 305, i32 5, metadata !277, null}
!290 = metadata !{i32 306, i32 5, metadata !277, null}
!291 = metadata !{i32 307, i32 5, metadata !277, null}
!292 = metadata !{i32 309, i32 9, metadata !293, null}
!293 = metadata !{i32 786443, metadata !277, i32 309, i32 5, metadata !60, i32 30} ; [ DW_TAG_lexical_block ]
!294 = metadata !{i32 309, i32 33, metadata !293, null}
!295 = metadata !{i32 309, i32 25, metadata !293, null}
!296 = metadata !{i32 312, i32 1, metadata !277, null}
!297 = metadata !{i32 786689, metadata !73, metadata !"ctx", metadata !60, i32 16777565, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!298 = metadata !{i32 349, i32 28, metadata !73, null}
!299 = metadata !{i32 786688, metadata !300, metadata !"i", metadata !60, i32 351, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!300 = metadata !{i32 786443, metadata !73, i32 350, i32 1, metadata !60, i32 3} ; [ DW_TAG_lexical_block ]
!301 = metadata !{i32 351, i32 22, metadata !300, null}
!302 = metadata !{i32 353, i32 10, metadata !303, null}
!303 = metadata !{i32 786443, metadata !300, i32 353, i32 5, metadata !60, i32 4} ; [ DW_TAG_lexical_block ]
!304 = metadata !{i32 354, i32 9, metadata !303, null}
!305 = metadata !{i32 353, i32 39, metadata !303, null}
!306 = metadata !{i32 355, i32 1, metadata !300, null}
!307 = metadata !{i32 786689, metadata !76, metadata !"ctx", metadata !60, i32 16777574, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!308 = metadata !{i32 358, i32 35, metadata !76, null}
!309 = metadata !{i32 786689, metadata !76, metadata !"buf", metadata !60, i32 33554790, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!310 = metadata !{i32 358, i32 49, metadata !76, null}
!311 = metadata !{i32 786688, metadata !312, metadata !"i", metadata !60, i32 360, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!312 = metadata !{i32 786443, metadata !76, i32 359, i32 1, metadata !60, i32 5} ; [ DW_TAG_lexical_block ]
!313 = metadata !{i32 360, i32 13, metadata !312, null}
!314 = metadata !{i32 786688, metadata !312, metadata !"rcon", metadata !60, i32 360, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!315 = metadata !{i32 360, i32 16, metadata !312, null}
!316 = metadata !{i32 362, i32 5, metadata !312, null}
!317 = metadata !{i32 363, i32 9, metadata !318, null}
!318 = metadata !{i32 786443, metadata !312, i32 363, i32 5, metadata !60, i32 6} ; [ DW_TAG_lexical_block ]
!319 = metadata !{i32 365, i32 9, metadata !320, null}
!320 = metadata !{i32 786443, metadata !318, i32 364, i32 5, metadata !60, i32 7} ; [ DW_TAG_lexical_block ]
!321 = metadata !{i32 366, i32 9, metadata !320, null}
!322 = metadata !{i32 367, i32 9, metadata !320, null}
!323 = metadata !{i32 368, i32 9, metadata !320, null}
!324 = metadata !{i32 368, i32 21, metadata !320, null}
!325 = metadata !{i32 369, i32 14, metadata !320, null}
!326 = metadata !{i32 369, i32 49, metadata !320, null}
!327 = metadata !{i32 370, i32 5, metadata !320, null}
!328 = metadata !{i32 363, i32 34, metadata !318, null}
!329 = metadata !{i32 371, i32 5, metadata !312, null}
!330 = metadata !{i32 372, i32 5, metadata !312, null}
!331 = metadata !{i32 373, i32 5, metadata !312, null}
!332 = metadata !{i32 374, i32 5, metadata !312, null}
!333 = metadata !{i32 375, i32 1, metadata !312, null}
!334 = metadata !{i32 786689, metadata !93, metadata !"buf", metadata !60, i32 16777434, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!335 = metadata !{i32 218, i32 42, metadata !93, null}
!336 = metadata !{i32 786689, metadata !93, metadata !"key", metadata !60, i32 33554650, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!337 = metadata !{i32 218, i32 56, metadata !93, null}
!338 = metadata !{i32 786689, metadata !93, metadata !"cpk", metadata !60, i32 50331866, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!339 = metadata !{i32 218, i32 70, metadata !93, null}
!340 = metadata !{i32 786688, metadata !341, metadata !"i", metadata !60, i32 220, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!341 = metadata !{i32 786443, metadata !93, i32 219, i32 1, metadata !60, i32 27} ; [ DW_TAG_lexical_block ]
!342 = metadata !{i32 220, i32 22, metadata !341, null}
!343 = metadata !{i32 220, i32 28, metadata !341, null}
!344 = metadata !{i32 222, i32 5, metadata !341, null}
!345 = metadata !{i32 222, i32 17, metadata !341, null}
!346 = metadata !{i32 223, i32 1, metadata !341, null}
!347 = metadata !{i32 786689, metadata !92, metadata !"buf", metadata !60, i32 16777410, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!348 = metadata !{i32 194, i32 35, metadata !92, null}
!349 = metadata !{i32 786688, metadata !350, metadata !"i", metadata !60, i32 196, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!350 = metadata !{i32 786443, metadata !92, i32 195, i32 1, metadata !60, i32 26} ; [ DW_TAG_lexical_block ]
!351 = metadata !{i32 196, i32 22, metadata !350, null}
!352 = metadata !{i32 196, i32 28, metadata !350, null}
!353 = metadata !{i32 198, i32 5, metadata !350, null}
!354 = metadata !{i32 198, i32 17, metadata !350, null}
!355 = metadata !{i32 199, i32 1, metadata !350, null}
!356 = metadata !{i32 786689, metadata !91, metadata !"buf", metadata !60, i32 16777443, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!357 = metadata !{i32 227, i32 36, metadata !91, null}
!358 = metadata !{i32 786688, metadata !359, metadata !"i", metadata !60, i32 229, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!359 = metadata !{i32 786443, metadata !91, i32 228, i32 1, metadata !60, i32 25} ; [ DW_TAG_lexical_block ]
!360 = metadata !{i32 229, i32 22, metadata !359, null}
!361 = metadata !{i32 786688, metadata !359, metadata !"j", metadata !60, i32 229, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!362 = metadata !{i32 229, i32 25, metadata !359, null}
!363 = metadata !{i32 231, i32 5, metadata !359, null}
!364 = metadata !{i32 232, i32 5, metadata !359, null}
!365 = metadata !{i32 233, i32 5, metadata !359, null}
!366 = metadata !{i32 234, i32 5, metadata !359, null}
!367 = metadata !{i32 236, i32 1, metadata !359, null}
!368 = metadata !{i32 786689, metadata !90, metadata !"buf", metadata !60, i32 16777467, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!369 = metadata !{i32 251, i32 37, metadata !90, null}
!370 = metadata !{i32 786688, metadata !371, metadata !"i", metadata !60, i32 253, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!371 = metadata !{i32 786443, metadata !90, i32 252, i32 1, metadata !60, i32 22} ; [ DW_TAG_lexical_block ]
!372 = metadata !{i32 253, i32 22, metadata !371, null}
!373 = metadata !{i32 786688, metadata !371, metadata !"a", metadata !60, i32 253, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!374 = metadata !{i32 253, i32 25, metadata !371, null}
!375 = metadata !{i32 786688, metadata !371, metadata !"b", metadata !60, i32 253, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!376 = metadata !{i32 253, i32 28, metadata !371, null}
!377 = metadata !{i32 786688, metadata !371, metadata !"c", metadata !60, i32 253, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!378 = metadata !{i32 253, i32 31, metadata !371, null}
!379 = metadata !{i32 786688, metadata !371, metadata !"d", metadata !60, i32 253, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!380 = metadata !{i32 253, i32 34, metadata !371, null}
!381 = metadata !{i32 786688, metadata !371, metadata !"e", metadata !60, i32 253, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!382 = metadata !{i32 253, i32 37, metadata !371, null}
!383 = metadata !{i32 255, i32 10, metadata !384, null}
!384 = metadata !{i32 786443, metadata !371, i32 255, i32 5, metadata !60, i32 23} ; [ DW_TAG_lexical_block ]
!385 = metadata !{i32 257, i32 9, metadata !386, null}
!386 = metadata !{i32 786443, metadata !384, i32 256, i32 5, metadata !60, i32 24} ; [ DW_TAG_lexical_block ]
!387 = metadata !{i32 258, i32 9, metadata !386, null}
!388 = metadata !{i32 259, i32 9, metadata !386, null}
!389 = metadata !{i32 260, i32 9, metadata !386, null}
!390 = metadata !{i32 261, i32 9, metadata !386, null}
!391 = metadata !{i32 262, i32 9, metadata !386, null}
!392 = metadata !{i32 262, i32 23, metadata !386, null}
!393 = metadata !{i32 263, i32 9, metadata !386, null}
!394 = metadata !{i32 263, i32 27, metadata !386, null}
!395 = metadata !{i32 264, i32 9, metadata !386, null}
!396 = metadata !{i32 264, i32 27, metadata !386, null}
!397 = metadata !{i32 265, i32 9, metadata !386, null}
!398 = metadata !{i32 265, i32 27, metadata !386, null}
!399 = metadata !{i32 266, i32 5, metadata !386, null}
!400 = metadata !{i32 255, i32 25, metadata !384, null}
!401 = metadata !{i32 267, i32 1, metadata !371, null}
!402 = metadata !{i32 786689, metadata !89, metadata !"buf", metadata !60, i32 16777426, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!403 = metadata !{i32 210, i32 38, metadata !89, null}
!404 = metadata !{i32 786689, metadata !89, metadata !"key", metadata !60, i32 33554642, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!405 = metadata !{i32 210, i32 52, metadata !89, null}
!406 = metadata !{i32 786688, metadata !407, metadata !"i", metadata !60, i32 212, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!407 = metadata !{i32 786443, metadata !89, i32 211, i32 1, metadata !60, i32 21} ; [ DW_TAG_lexical_block ]
!408 = metadata !{i32 212, i32 22, metadata !407, null}
!409 = metadata !{i32 212, i32 28, metadata !407, null}
!410 = metadata !{i32 214, i32 5, metadata !407, null}
!411 = metadata !{i32 214, i32 17, metadata !407, null}
!412 = metadata !{i32 215, i32 1, metadata !407, null}
!413 = metadata !{i32 786689, metadata !77, metadata !"ctx", metadata !60, i32 16777594, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!414 = metadata !{i32 378, i32 35, metadata !77, null}
!415 = metadata !{i32 786689, metadata !77, metadata !"buf", metadata !60, i32 33554810, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!416 = metadata !{i32 378, i32 49, metadata !77, null}
!417 = metadata !{i32 786688, metadata !418, metadata !"i", metadata !60, i32 380, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!418 = metadata !{i32 786443, metadata !77, i32 379, i32 1, metadata !60, i32 8} ; [ DW_TAG_lexical_block ]
!419 = metadata !{i32 380, i32 13, metadata !418, null}
!420 = metadata !{i32 786688, metadata !418, metadata !"rcon", metadata !60, i32 380, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!421 = metadata !{i32 380, i32 16, metadata !418, null}
!422 = metadata !{i32 382, i32 5, metadata !418, null}
!423 = metadata !{i32 383, i32 5, metadata !418, null}
!424 = metadata !{i32 384, i32 5, metadata !418, null}
!425 = metadata !{i32 386, i32 10, metadata !426, null}
!426 = metadata !{i32 786443, metadata !418, i32 386, i32 5, metadata !60, i32 9} ; [ DW_TAG_lexical_block ]
!427 = metadata !{i32 388, i32 9, metadata !428, null}
!428 = metadata !{i32 786443, metadata !426, i32 387, i32 5, metadata !60, i32 10} ; [ DW_TAG_lexical_block ]
!429 = metadata !{i32 390, i32 13, metadata !430, null}
!430 = metadata !{i32 786443, metadata !428, i32 389, i32 9, metadata !60, i32 11} ; [ DW_TAG_lexical_block ]
!431 = metadata !{i32 391, i32 13, metadata !430, null}
!432 = metadata !{i32 392, i32 9, metadata !430, null}
!433 = metadata !{i32 393, i32 14, metadata !428, null}
!434 = metadata !{i32 394, i32 9, metadata !428, null}
!435 = metadata !{i32 395, i32 9, metadata !428, null}
!436 = metadata !{i32 396, i32 9, metadata !428, null}
!437 = metadata !{i32 397, i32 5, metadata !428, null}
!438 = metadata !{i32 398, i32 5, metadata !418, null}
!439 = metadata !{i32 399, i32 1, metadata !418, null}
!440 = metadata !{i32 786689, metadata !88, metadata !"buf", metadata !60, i32 16777455, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!441 = metadata !{i32 239, i32 40, metadata !88, null}
!442 = metadata !{i32 786688, metadata !443, metadata !"i", metadata !60, i32 241, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!443 = metadata !{i32 786443, metadata !88, i32 240, i32 1, metadata !60, i32 20} ; [ DW_TAG_lexical_block ]
!444 = metadata !{i32 241, i32 22, metadata !443, null}
!445 = metadata !{i32 786688, metadata !443, metadata !"j", metadata !60, i32 241, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!446 = metadata !{i32 241, i32 25, metadata !443, null}
!447 = metadata !{i32 243, i32 5, metadata !443, null}
!448 = metadata !{i32 244, i32 5, metadata !443, null}
!449 = metadata !{i32 245, i32 5, metadata !443, null}
!450 = metadata !{i32 246, i32 5, metadata !443, null}
!451 = metadata !{i32 248, i32 1, metadata !443, null}
!452 = metadata !{i32 786689, metadata !87, metadata !"buf", metadata !60, i32 16777418, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!453 = metadata !{i32 202, i32 39, metadata !87, null}
!454 = metadata !{i32 786688, metadata !455, metadata !"i", metadata !60, i32 204, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!455 = metadata !{i32 786443, metadata !87, i32 203, i32 1, metadata !60, i32 19} ; [ DW_TAG_lexical_block ]
!456 = metadata !{i32 204, i32 22, metadata !455, null}
!457 = metadata !{i32 204, i32 28, metadata !455, null}
!458 = metadata !{i32 206, i32 5, metadata !455, null}
!459 = metadata !{i32 206, i32 17, metadata !455, null}
!460 = metadata !{i32 207, i32 1, metadata !455, null}
!461 = metadata !{i32 786689, metadata !84, metadata !"k", metadata !60, i32 16777531, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!462 = metadata !{i32 315, i32 32, metadata !84, null}
!463 = metadata !{i32 786689, metadata !84, metadata !"rc", metadata !60, i32 33554747, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!464 = metadata !{i32 315, i32 44, metadata !84, null}
!465 = metadata !{i32 786688, metadata !466, metadata !"i", metadata !60, i32 317, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!466 = metadata !{i32 786443, metadata !84, i32 316, i32 1, metadata !60, i32 16} ; [ DW_TAG_lexical_block ]
!467 = metadata !{i32 317, i32 13, metadata !466, null}
!468 = metadata !{i32 319, i32 9, metadata !469, null}
!469 = metadata !{i32 786443, metadata !466, i32 319, i32 5, metadata !60, i32 17} ; [ DW_TAG_lexical_block ]
!470 = metadata !{i32 319, i32 33, metadata !469, null}
!471 = metadata !{i32 319, i32 25, metadata !469, null}
!472 = metadata !{i32 322, i32 5, metadata !466, null}
!473 = metadata !{i32 323, i32 5, metadata !466, null}
!474 = metadata !{i32 324, i32 5, metadata !466, null}
!475 = metadata !{i32 325, i32 5, metadata !466, null}
!476 = metadata !{i32 327, i32 9, metadata !477, null}
!477 = metadata !{i32 786443, metadata !466, i32 327, i32 5, metadata !60, i32 18} ; [ DW_TAG_lexical_block ]
!478 = metadata !{i32 327, i32 32, metadata !477, null}
!479 = metadata !{i32 327, i32 24, metadata !477, null}
!480 = metadata !{i32 330, i32 5, metadata !466, null}
!481 = metadata !{i32 331, i32 5, metadata !466, null}
!482 = metadata !{i32 332, i32 5, metadata !466, null}
!483 = metadata !{i32 333, i32 5, metadata !466, null}
!484 = metadata !{i32 334, i32 5, metadata !466, null}
!485 = metadata !{i32 335, i32 1, metadata !466, null}
!486 = metadata !{i32 786689, metadata !78, metadata !"buf", metadata !60, i32 16777486, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!487 = metadata !{i32 270, i32 34, metadata !78, null}
!488 = metadata !{i32 786688, metadata !489, metadata !"i", metadata !60, i32 272, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!489 = metadata !{i32 786443, metadata !78, i32 271, i32 1, metadata !60, i32 12} ; [ DW_TAG_lexical_block ]
!490 = metadata !{i32 272, i32 22, metadata !489, null}
!491 = metadata !{i32 786688, metadata !489, metadata !"a", metadata !60, i32 272, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!492 = metadata !{i32 272, i32 25, metadata !489, null}
!493 = metadata !{i32 786688, metadata !489, metadata !"b", metadata !60, i32 272, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!494 = metadata !{i32 272, i32 28, metadata !489, null}
!495 = metadata !{i32 786688, metadata !489, metadata !"c", metadata !60, i32 272, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!496 = metadata !{i32 272, i32 31, metadata !489, null}
!497 = metadata !{i32 786688, metadata !489, metadata !"d", metadata !60, i32 272, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!498 = metadata !{i32 272, i32 34, metadata !489, null}
!499 = metadata !{i32 786688, metadata !489, metadata !"e", metadata !60, i32 272, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!500 = metadata !{i32 272, i32 37, metadata !489, null}
!501 = metadata !{i32 786688, metadata !489, metadata !"x", metadata !60, i32 272, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!502 = metadata !{i32 272, i32 40, metadata !489, null}
!503 = metadata !{i32 786688, metadata !489, metadata !"y", metadata !60, i32 272, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!504 = metadata !{i32 272, i32 43, metadata !489, null}
!505 = metadata !{i32 786688, metadata !489, metadata !"z", metadata !60, i32 272, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!506 = metadata !{i32 272, i32 46, metadata !489, null}
!507 = metadata !{i32 274, i32 10, metadata !508, null}
!508 = metadata !{i32 786443, metadata !489, i32 274, i32 5, metadata !60, i32 13} ; [ DW_TAG_lexical_block ]
!509 = metadata !{i32 276, i32 9, metadata !510, null}
!510 = metadata !{i32 786443, metadata !508, i32 275, i32 5, metadata !60, i32 14} ; [ DW_TAG_lexical_block ]
!511 = metadata !{i32 277, i32 9, metadata !510, null}
!512 = metadata !{i32 278, i32 9, metadata !510, null}
!513 = metadata !{i32 279, i32 9, metadata !510, null}
!514 = metadata !{i32 280, i32 9, metadata !510, null}
!515 = metadata !{i32 281, i32 13, metadata !510, null}
!516 = metadata !{i32 282, i32 9, metadata !510, null}
!517 = metadata !{i32 282, i32 26, metadata !510, null}
!518 = metadata !{i32 283, i32 9, metadata !510, null}
!519 = metadata !{i32 283, i32 26, metadata !510, null}
!520 = metadata !{i32 284, i32 9, metadata !510, null}
!521 = metadata !{i32 284, i32 23, metadata !510, null}
!522 = metadata !{i32 285, i32 9, metadata !510, null}
!523 = metadata !{i32 285, i32 27, metadata !510, null}
!524 = metadata !{i32 286, i32 9, metadata !510, null}
!525 = metadata !{i32 286, i32 27, metadata !510, null}
!526 = metadata !{i32 287, i32 9, metadata !510, null}
!527 = metadata !{i32 287, i32 27, metadata !510, null}
!528 = metadata !{i32 288, i32 5, metadata !510, null}
!529 = metadata !{i32 274, i32 25, metadata !508, null}
!530 = metadata !{i32 289, i32 1, metadata !489, null}
!531 = metadata !{i32 786689, metadata !81, metadata !"x", metadata !60, i32 16777403, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!532 = metadata !{i32 187, i32 33, metadata !81, null}
!533 = metadata !{i32 786688, metadata !534, metadata !"y", metadata !60, i32 189, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!534 = metadata !{i32 786443, metadata !81, i32 188, i32 1, metadata !60, i32 15} ; [ DW_TAG_lexical_block ]
!535 = metadata !{i32 189, i32 13, metadata !534, null}
!536 = metadata !{i32 189, i32 34, metadata !534, null}
!537 = metadata !{i32 190, i32 5, metadata !534, null}
