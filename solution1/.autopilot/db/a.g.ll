; ModuleID = '/home/brett/Thesis/Vivado_WS/aescbc/solution1/.autopilot/db/a.g.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aes_context = type { [32 x i8], [32 x i8], [32 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@aescbc.lastbuf = internal global [16 x i8] zeroinitializer, align 16 ; [#uses=2 type=[16 x i8]*]
@aescbc.iv = internal global [16 x i8] zeroinitializer, align 16 ; [#uses=2 type=[16 x i8]*]
@aescbc.xorv = internal global [16 x i8] zeroinitializer, align 16 ; [#uses=5 type=[16 x i8]*]
@aescbc.key = internal global [32 x i8] zeroinitializer, align 16 ; [#uses=2 type=[32 x i8]*]
@aescbc.ctx = internal global %struct.aes_context zeroinitializer, align 1 ; [#uses=3 type=%struct.aes_context*]
@.str2 = private unnamed_addr constant [15 x i8] c"aescbc_label12\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str3 = private unnamed_addr constant [14 x i8] c"aescbc_label4\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str4 = private unnamed_addr constant [15 x i8] c"aescbc_label10\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str5 = private unnamed_addr constant [15 x i8] c"aescbc_label11\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str6 = private unnamed_addr constant [14 x i8] c"aescbc_label1\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str7 = private unnamed_addr constant [14 x i8] c"aescbc_label7\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str8 = private unnamed_addr constant [14 x i8] c"aescbc_label9\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str9 = private unnamed_addr constant [14 x i8] c"aescbc_label0\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str10 = private unnamed_addr constant [14 x i8] c"aescbc_label2\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str11 = private unnamed_addr constant [14 x i8] c"aescbc_label3\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str12 = private unnamed_addr constant [14 x i8] c"aescbc_label5\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str13 = private unnamed_addr constant [14 x i8] c"aescbc_label8\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str14 = private unnamed_addr constant [14 x i8] c"aescbc_label6\00", align 1 ; [#uses=1 type=[14 x i8]*]
@_IO_2_1_stdin_ = external global %struct.aes_context ; [#uses=0 type=%struct.aes_context*]
@_IO_2_1_stdout_ = external global %struct.aes_context ; [#uses=0 type=%struct.aes_context*]
@_IO_2_1_stderr_ = external global %struct.aes_context ; [#uses=0 type=%struct.aes_context*]
@sys_nerr = external global i32                   ; [#uses=0 type=i32*]
@sbox = internal constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 16 ; [#uses=17 type=[256 x i8]*]
@sboxinv = internal constant [256 x i8] c"R\09j\D506\A58\BF@\A3\9E\81\F3\D7\FB|\E39\82\9B/\FF\874\8ECD\C4\DE\E9\CBT{\942\A6\C2#=\EEL\95\0BB\FA\C3N\08.\A1f(\D9$\B2v[\A2Im\8B\D1%r\F8\F6d\86h\98\16\D4\A4\5C\CC]e\B6\92lpHP\FD\ED\B9\DA^\15FW\A7\8D\9D\84\90\D8\AB\00\8C\BC\D3\0A\F7\E4X\05\B8\B3E\06\D0,\1E\8F\CA?\0F\02\C1\AF\BD\03\01\13\8Ak:\91\11AOg\DC\EA\97\F2\CF\CE\F0\B4\E6s\96\ACt\22\E7\AD5\85\E2\F97\E8\1Cu\DFnG\F1\1Aq\1D)\C5\89o\B7b\0E\AA\18\BE\1B\FCV>K\C6\D2y \9A\DB\C0\FEx\CDZ\F4\1F\DD\A83\88\07\C71\B1\12\10Y'\80\EC_`Q\7F\A9\19\B5J\0D-\E5z\9F\93\C9\9C\EF\A0\E0;M\AE*\F5\B0\C8\EB\BB<\83S\99a\17+\04~\BAw\D6&\E1i\14cU!\0C}", align 16 ; [#uses=1 type=[256 x i8]*]

; [#uses=0]
define void @aescbc(i8* %data_in, i8* %data_out, i3 zeroext %mode, i8* %key_in, i8* %iv_in) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=5 type=i8**]
  %2 = alloca i8*, align 8                        ; [#uses=6 type=i8**]
  %3 = alloca i3, align 1                         ; [#uses=3 type=i3*]
  %4 = alloca i8*, align 8                        ; [#uses=4 type=i8**]
  %5 = alloca i8*, align 8                        ; [#uses=4 type=i8**]
  %buf = alloca [16 x i8], align 16               ; [#uses=12 type=[16 x i8]*]
  %i = alloca i8, align 1                         ; [#uses=79 type=i8*]
  store i8* %data_in, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !148), !dbg !149 ; [debug line = 8:21] [debug variable = data_in]
  store i8* %data_out, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !150), !dbg !151 ; [debug line = 9:12] [debug variable = data_out]
  store i3 %mode, i3* %3, align 1
  call void @llvm.dbg.declare(metadata !{i3* %3}, metadata !152), !dbg !153 ; [debug line = 10:20] [debug variable = mode]
  store i8* %key_in, i8** %4, align 8
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !154), !dbg !155 ; [debug line = 11:12] [debug variable = key_in]
  store i8* %iv_in, i8** %5, align 8
  call void @llvm.dbg.declare(metadata !{i8** %5}, metadata !156), !dbg !157 ; [debug line = 12:12] [debug variable = iv_in]
  %6 = load i8** %5, align 8, !dbg !158           ; [#uses=1 type=i8*] [debug line = 13:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %6, i32 16) nounwind, !dbg !158 ; [debug line = 13:2]
  %7 = load i8** %4, align 8, !dbg !160           ; [#uses=1 type=i8*] [debug line = 13:35]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %7, i32 32) nounwind, !dbg !160 ; [debug line = 13:35]
  %8 = load i8** %2, align 8, !dbg !161           ; [#uses=1 type=i8*] [debug line = 13:69]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %8, i32 16) nounwind, !dbg !161 ; [debug line = 13:69]
  %9 = load i8** %1, align 8, !dbg !162           ; [#uses=1 type=i8*] [debug line = 13:105]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %9, i32 16) nounwind, !dbg !162 ; [debug line = 13:105]
  %10 = load i8** %4, align 8, !dbg !163          ; [#uses=1 type=i8*] [debug line = 14:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %10, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 32, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !163 ; [debug line = 14:1]
  %11 = load i8** %5, align 8, !dbg !164          ; [#uses=1 type=i8*] [debug line = 15:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %11, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !164 ; [debug line = 15:1]
  %12 = load i8** %1, align 8, !dbg !165          ; [#uses=1 type=i8*] [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %12, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !165 ; [debug line = 16:1]
  %13 = load i8** %2, align 8, !dbg !166          ; [#uses=1 type=i8*] [debug line = 17:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %13, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !166 ; [debug line = 17:1]
  %14 = load i3* %3, align 1, !dbg !167           ; [#uses=1 type=i3] [debug line = 18:1]
  %15 = zext i3 %14 to i32, !dbg !167             ; [#uses=1 type=i32] [debug line = 18:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %15, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !167 ; [debug line = 18:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !168 ; [debug line = 19:1]
  call void @llvm.dbg.declare(metadata !{[16 x i8]* %buf}, metadata !169), !dbg !170 ; [debug line = 21:10] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !171), !dbg !172 ; [debug line = 27:13] [debug variable = i]
  %16 = load i3* %3, align 1, !dbg !173           ; [#uses=1 type=i3] [debug line = 29:5]
  %17 = zext i3 %16 to i32, !dbg !173             ; [#uses=1 type=i32] [debug line = 29:5]
  switch i32 %17, label %265 [
    i32 0, label %18
    i32 1, label %86
    i32 2, label %166
    i32 3, label %263
    i32 4, label %264
  ], !dbg !173                                    ; [debug line = 29:5]

; <label>:18                                      ; preds = %0
  br label %19, !dbg !174                         ; [debug line = 29:20]

; <label>:19                                      ; preds = %18
  store i8 0, i8* %i, align 1, !dbg !176          ; [debug line = 32:25]
  br label %20, !dbg !176                         ; [debug line = 32:25]

; <label>:20                                      ; preds = %29, %19
  %21 = load i8* %i, align 1, !dbg !176           ; [#uses=1 type=i8] [debug line = 32:25]
  %22 = zext i8 %21 to i32, !dbg !176             ; [#uses=1 type=i32] [debug line = 32:25]
  %23 = icmp slt i32 %22, 16, !dbg !176           ; [#uses=1 type=i1] [debug line = 32:25]
  br i1 %23, label %24, label %32, !dbg !176      ; [debug line = 32:25]

; <label>:24                                      ; preds = %20
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !178 ; [debug line = 33:7]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !178 ; [debug line = 33:7]
  %25 = load i8* %i, align 1, !dbg !178           ; [#uses=1 type=i8] [debug line = 33:7]
  %26 = zext i8 %25 to i64, !dbg !178             ; [#uses=1 type=i64] [debug line = 33:7]
  %27 = load i8** %2, align 8, !dbg !178          ; [#uses=1 type=i8*] [debug line = 33:7]
  %28 = getelementptr inbounds i8* %27, i64 %26, !dbg !178 ; [#uses=1 type=i8*] [debug line = 33:7]
  store i8 0, i8* %28, align 1, !dbg !178         ; [debug line = 33:7]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !180 ; [debug line = 33:21]
  br label %29, !dbg !180                         ; [debug line = 33:21]

; <label>:29                                      ; preds = %24
  %30 = load i8* %i, align 1, !dbg !181           ; [#uses=1 type=i8] [debug line = 32:36]
  %31 = add i8 %30, 1, !dbg !181                  ; [#uses=1 type=i8] [debug line = 32:36]
  store i8 %31, i8* %i, align 1, !dbg !181        ; [debug line = 32:36]
  br label %20, !dbg !181                         ; [debug line = 32:36]

; <label>:32                                      ; preds = %20
  br label %33, !dbg !182                         ; [debug line = 33:21]

; <label>:33                                      ; preds = %32
  store i8 0, i8* %i, align 1, !dbg !183          ; [debug line = 34:21]
  br label %34, !dbg !183                         ; [debug line = 34:21]

; <label>:34                                      ; preds = %47, %33
  %35 = load i8* %i, align 1, !dbg !183           ; [#uses=1 type=i8] [debug line = 34:21]
  %36 = zext i8 %35 to i32, !dbg !183             ; [#uses=1 type=i32] [debug line = 34:21]
  %37 = icmp slt i32 %36, 32, !dbg !183           ; [#uses=1 type=i1] [debug line = 34:21]
  br i1 %37, label %38, label %50, !dbg !183      ; [debug line = 34:21]

; <label>:38                                      ; preds = %34
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !185 ; [debug line = 35:4]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !185 ; [debug line = 35:4]
  %39 = load i8* %i, align 1, !dbg !185           ; [#uses=1 type=i8] [debug line = 35:4]
  %40 = zext i8 %39 to i64, !dbg !185             ; [#uses=1 type=i64] [debug line = 35:4]
  %41 = load i8** %4, align 8, !dbg !185          ; [#uses=1 type=i8*] [debug line = 35:4]
  %42 = getelementptr inbounds i8* %41, i64 %40, !dbg !185 ; [#uses=1 type=i8*] [debug line = 35:4]
  %43 = load i8* %42, align 1, !dbg !185          ; [#uses=1 type=i8] [debug line = 35:4]
  %44 = load i8* %i, align 1, !dbg !185           ; [#uses=1 type=i8] [debug line = 35:4]
  %45 = zext i8 %44 to i64, !dbg !185             ; [#uses=1 type=i64] [debug line = 35:4]
  %46 = getelementptr inbounds [32 x i8]* @aescbc.key, i32 0, i64 %45, !dbg !185 ; [#uses=1 type=i8*] [debug line = 35:4]
  store i8 %43, i8* %46, align 1, !dbg !185       ; [debug line = 35:4]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !187 ; [debug line = 35:21]
  br label %47, !dbg !187                         ; [debug line = 35:21]

; <label>:47                                      ; preds = %38
  %48 = load i8* %i, align 1, !dbg !188           ; [#uses=1 type=i8] [debug line = 34:32]
  %49 = add i8 %48, 1, !dbg !188                  ; [#uses=1 type=i8] [debug line = 34:32]
  store i8 %49, i8* %i, align 1, !dbg !188        ; [debug line = 34:32]
  br label %34, !dbg !188                         ; [debug line = 34:32]

; <label>:50                                      ; preds = %34
  br label %51, !dbg !189                         ; [debug line = 35:21]

; <label>:51                                      ; preds = %50
  store i8 0, i8* %i, align 1, !dbg !190          ; [debug line = 36:25]
  br label %52, !dbg !190                         ; [debug line = 36:25]

; <label>:52                                      ; preds = %65, %51
  %53 = load i8* %i, align 1, !dbg !190           ; [#uses=1 type=i8] [debug line = 36:25]
  %54 = zext i8 %53 to i32, !dbg !190             ; [#uses=1 type=i32] [debug line = 36:25]
  %55 = icmp slt i32 %54, 16, !dbg !190           ; [#uses=1 type=i1] [debug line = 36:25]
  br i1 %55, label %56, label %68, !dbg !190      ; [debug line = 36:25]

; <label>:56                                      ; preds = %52
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !192 ; [debug line = 37:7]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !192 ; [debug line = 37:7]
  %57 = load i8* %i, align 1, !dbg !192           ; [#uses=1 type=i8] [debug line = 37:7]
  %58 = zext i8 %57 to i64, !dbg !192             ; [#uses=1 type=i64] [debug line = 37:7]
  %59 = load i8** %5, align 8, !dbg !192          ; [#uses=1 type=i8*] [debug line = 37:7]
  %60 = getelementptr inbounds i8* %59, i64 %58, !dbg !192 ; [#uses=1 type=i8*] [debug line = 37:7]
  %61 = load i8* %60, align 1, !dbg !192          ; [#uses=1 type=i8] [debug line = 37:7]
  %62 = load i8* %i, align 1, !dbg !192           ; [#uses=1 type=i8] [debug line = 37:7]
  %63 = zext i8 %62 to i64, !dbg !192             ; [#uses=1 type=i64] [debug line = 37:7]
  %64 = getelementptr inbounds [16 x i8]* @aescbc.iv, i32 0, i64 %63, !dbg !192 ; [#uses=1 type=i8*] [debug line = 37:7]
  store i8 %61, i8* %64, align 1, !dbg !192       ; [debug line = 37:7]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !194 ; [debug line = 37:22]
  br label %65, !dbg !194                         ; [debug line = 37:22]

; <label>:65                                      ; preds = %56
  %66 = load i8* %i, align 1, !dbg !195           ; [#uses=1 type=i8] [debug line = 36:36]
  %67 = add i8 %66, 1, !dbg !195                  ; [#uses=1 type=i8] [debug line = 36:36]
  store i8 %67, i8* %i, align 1, !dbg !195        ; [debug line = 36:36]
  br label %52, !dbg !195                         ; [debug line = 36:36]

; <label>:68                                      ; preds = %52
  br label %69, !dbg !196                         ; [debug line = 37:22]

; <label>:69                                      ; preds = %68
  store i8 0, i8* %i, align 1, !dbg !197          ; [debug line = 38:25]
  br label %70, !dbg !197                         ; [debug line = 38:25]

; <label>:70                                      ; preds = %82, %69
  %71 = load i8* %i, align 1, !dbg !197           ; [#uses=1 type=i8] [debug line = 38:25]
  %72 = zext i8 %71 to i32, !dbg !197             ; [#uses=1 type=i32] [debug line = 38:25]
  %73 = icmp slt i32 %72, 16, !dbg !197           ; [#uses=1 type=i1] [debug line = 38:25]
  br i1 %73, label %74, label %85, !dbg !197      ; [debug line = 38:25]

; <label>:74                                      ; preds = %70
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !199 ; [debug line = 39:7]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !199 ; [debug line = 39:7]
  %75 = load i8* %i, align 1, !dbg !199           ; [#uses=1 type=i8] [debug line = 39:7]
  %76 = zext i8 %75 to i64, !dbg !199             ; [#uses=1 type=i64] [debug line = 39:7]
  %77 = getelementptr inbounds [16 x i8]* @aescbc.iv, i32 0, i64 %76, !dbg !199 ; [#uses=1 type=i8*] [debug line = 39:7]
  %78 = load i8* %77, align 1, !dbg !199          ; [#uses=1 type=i8] [debug line = 39:7]
  %79 = load i8* %i, align 1, !dbg !199           ; [#uses=1 type=i8] [debug line = 39:7]
  %80 = zext i8 %79 to i64, !dbg !199             ; [#uses=1 type=i64] [debug line = 39:7]
  %81 = getelementptr inbounds [16 x i8]* @aescbc.xorv, i32 0, i64 %80, !dbg !199 ; [#uses=1 type=i8*] [debug line = 39:7]
  store i8 %78, i8* %81, align 1, !dbg !199       ; [debug line = 39:7]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !201 ; [debug line = 39:21]
  br label %82, !dbg !201                         ; [debug line = 39:21]

; <label>:82                                      ; preds = %74
  %83 = load i8* %i, align 1, !dbg !202           ; [#uses=1 type=i8] [debug line = 38:36]
  %84 = add i8 %83, 1, !dbg !202                  ; [#uses=1 type=i8] [debug line = 38:36]
  store i8 %84, i8* %i, align 1, !dbg !202        ; [debug line = 38:36]
  br label %70, !dbg !202                         ; [debug line = 38:36]

; <label>:85                                      ; preds = %70
  call void @aes_init(%struct.aes_context* @aescbc.ctx, i8* getelementptr inbounds ([32 x i8]* @aescbc.key, i32 0, i32 0)), !dbg !203 ; [debug line = 40:6]
  br label %265, !dbg !204                        ; [debug line = 41:6]

; <label>:86                                      ; preds = %0
  br label %87, !dbg !204                         ; [debug line = 41:6]

; <label>:87                                      ; preds = %86
  store i8 0, i8* %i, align 1, !dbg !205          ; [debug line = 45:25]
  br label %88, !dbg !205                         ; [debug line = 45:25]

; <label>:88                                      ; preds = %101, %87
  %89 = load i8* %i, align 1, !dbg !205           ; [#uses=1 type=i8] [debug line = 45:25]
  %90 = zext i8 %89 to i32, !dbg !205             ; [#uses=1 type=i32] [debug line = 45:25]
  %91 = icmp slt i32 %90, 16, !dbg !205           ; [#uses=1 type=i1] [debug line = 45:25]
  br i1 %91, label %92, label %104, !dbg !205     ; [debug line = 45:25]

; <label>:92                                      ; preds = %88
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !207 ; [debug line = 46:7]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !207 ; [debug line = 46:7]
  %93 = load i8* %i, align 1, !dbg !207           ; [#uses=1 type=i8] [debug line = 46:7]
  %94 = zext i8 %93 to i64, !dbg !207             ; [#uses=1 type=i64] [debug line = 46:7]
  %95 = load i8** %1, align 8, !dbg !207          ; [#uses=1 type=i8*] [debug line = 46:7]
  %96 = getelementptr inbounds i8* %95, i64 %94, !dbg !207 ; [#uses=1 type=i8*] [debug line = 46:7]
  %97 = load i8* %96, align 1, !dbg !207          ; [#uses=1 type=i8] [debug line = 46:7]
  %98 = load i8* %i, align 1, !dbg !207           ; [#uses=1 type=i8] [debug line = 46:7]
  %99 = zext i8 %98 to i64, !dbg !207             ; [#uses=1 type=i64] [debug line = 46:7]
  %100 = getelementptr inbounds [16 x i8]* %buf, i32 0, i64 %99, !dbg !207 ; [#uses=1 type=i8*] [debug line = 46:7]
  store i8 %97, i8* %100, align 1, !dbg !207      ; [debug line = 46:7]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !209 ; [debug line = 46:25]
  br label %101, !dbg !209                        ; [debug line = 46:25]

; <label>:101                                     ; preds = %92
  %102 = load i8* %i, align 1, !dbg !210          ; [#uses=1 type=i8] [debug line = 45:36]
  %103 = add i8 %102, 1, !dbg !210                ; [#uses=1 type=i8] [debug line = 45:36]
  store i8 %103, i8* %i, align 1, !dbg !210       ; [debug line = 45:36]
  br label %88, !dbg !210                         ; [debug line = 45:36]

; <label>:104                                     ; preds = %88
  br label %105, !dbg !211                        ; [debug line = 46:25]

; <label>:105                                     ; preds = %104
  store i8 0, i8* %i, align 1, !dbg !212          ; [debug line = 48:24]
  br label %106, !dbg !212                        ; [debug line = 48:24]

; <label>:106                                     ; preds = %126, %105
  %107 = load i8* %i, align 1, !dbg !212          ; [#uses=1 type=i8] [debug line = 48:24]
  %108 = zext i8 %107 to i32, !dbg !212           ; [#uses=1 type=i32] [debug line = 48:24]
  %109 = icmp slt i32 %108, 16, !dbg !212         ; [#uses=1 type=i1] [debug line = 48:24]
  br i1 %109, label %110, label %129, !dbg !212   ; [debug line = 48:24]

; <label>:110                                     ; preds = %106
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !214 ; [debug line = 49:7]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !214 ; [debug line = 49:7]
  %111 = load i8* %i, align 1, !dbg !214          ; [#uses=1 type=i8] [debug line = 49:7]
  %112 = zext i8 %111 to i64, !dbg !214           ; [#uses=1 type=i64] [debug line = 49:7]
  %113 = getelementptr inbounds [16 x i8]* %buf, i32 0, i64 %112, !dbg !214 ; [#uses=1 type=i8*] [debug line = 49:7]
  %114 = load i8* %113, align 1, !dbg !214        ; [#uses=1 type=i8] [debug line = 49:7]
  %115 = zext i8 %114 to i32, !dbg !214           ; [#uses=1 type=i32] [debug line = 49:7]
  %116 = load i8* %i, align 1, !dbg !214          ; [#uses=1 type=i8] [debug line = 49:7]
  %117 = zext i8 %116 to i64, !dbg !214           ; [#uses=1 type=i64] [debug line = 49:7]
  %118 = getelementptr inbounds [16 x i8]* @aescbc.xorv, i32 0, i64 %117, !dbg !214 ; [#uses=1 type=i8*] [debug line = 49:7]
  %119 = load i8* %118, align 1, !dbg !214        ; [#uses=1 type=i8] [debug line = 49:7]
  %120 = zext i8 %119 to i32, !dbg !214           ; [#uses=1 type=i32] [debug line = 49:7]
  %121 = xor i32 %115, %120, !dbg !214            ; [#uses=1 type=i32] [debug line = 49:7]
  %122 = trunc i32 %121 to i8, !dbg !214          ; [#uses=1 type=i8] [debug line = 49:7]
  %123 = load i8* %i, align 1, !dbg !214          ; [#uses=1 type=i8] [debug line = 49:7]
  %124 = zext i8 %123 to i64, !dbg !214           ; [#uses=1 type=i64] [debug line = 49:7]
  %125 = getelementptr inbounds [16 x i8]* %buf, i32 0, i64 %124, !dbg !214 ; [#uses=1 type=i8*] [debug line = 49:7]
  store i8 %122, i8* %125, align 1, !dbg !214     ; [debug line = 49:7]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !216 ; [debug line = 49:29]
  br label %126, !dbg !216                        ; [debug line = 49:29]

; <label>:126                                     ; preds = %110
  %127 = load i8* %i, align 1, !dbg !217          ; [#uses=1 type=i8] [debug line = 48:35]
  %128 = add i8 %127, 1, !dbg !217                ; [#uses=1 type=i8] [debug line = 48:35]
  store i8 %128, i8* %i, align 1, !dbg !217       ; [debug line = 48:35]
  br label %106, !dbg !217                        ; [debug line = 48:35]

; <label>:129                                     ; preds = %106
  %130 = getelementptr inbounds [16 x i8]* %buf, i32 0, i32 0, !dbg !218 ; [#uses=1 type=i8*] [debug line = 51:6]
  call void @aes_encrypt_ecb(%struct.aes_context* @aescbc.ctx, i8* %130), !dbg !218 ; [debug line = 51:6]
  br label %131, !dbg !218                        ; [debug line = 51:6]

; <label>:131                                     ; preds = %129
  store i8 0, i8* %i, align 1, !dbg !219          ; [debug line = 53:24]
  br label %132, !dbg !219                        ; [debug line = 53:24]

; <label>:132                                     ; preds = %144, %131
  %133 = load i8* %i, align 1, !dbg !219          ; [#uses=1 type=i8] [debug line = 53:24]
  %134 = zext i8 %133 to i32, !dbg !219           ; [#uses=1 type=i32] [debug line = 53:24]
  %135 = icmp slt i32 %134, 16, !dbg !219         ; [#uses=1 type=i1] [debug line = 53:24]
  br i1 %135, label %136, label %147, !dbg !219   ; [debug line = 53:24]

; <label>:136                                     ; preds = %132
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !221 ; [debug line = 54:7]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !221 ; [debug line = 54:7]
  %137 = load i8* %i, align 1, !dbg !221          ; [#uses=1 type=i8] [debug line = 54:7]
  %138 = zext i8 %137 to i64, !dbg !221           ; [#uses=1 type=i64] [debug line = 54:7]
  %139 = getelementptr inbounds [16 x i8]* %buf, i32 0, i64 %138, !dbg !221 ; [#uses=1 type=i8*] [debug line = 54:7]
  %140 = load i8* %139, align 1, !dbg !221        ; [#uses=1 type=i8] [debug line = 54:7]
  %141 = load i8* %i, align 1, !dbg !221          ; [#uses=1 type=i8] [debug line = 54:7]
  %142 = zext i8 %141 to i64, !dbg !221           ; [#uses=1 type=i64] [debug line = 54:7]
  %143 = getelementptr inbounds [16 x i8]* @aescbc.xorv, i32 0, i64 %142, !dbg !221 ; [#uses=1 type=i8*] [debug line = 54:7]
  store i8 %140, i8* %143, align 1, !dbg !221     ; [debug line = 54:7]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !223 ; [debug line = 54:22]
  br label %144, !dbg !223                        ; [debug line = 54:22]

; <label>:144                                     ; preds = %136
  %145 = load i8* %i, align 1, !dbg !224          ; [#uses=1 type=i8] [debug line = 53:35]
  %146 = add i8 %145, 1, !dbg !224                ; [#uses=1 type=i8] [debug line = 53:35]
  store i8 %146, i8* %i, align 1, !dbg !224       ; [debug line = 53:35]
  br label %132, !dbg !224                        ; [debug line = 53:35]

; <label>:147                                     ; preds = %132
  br label %148, !dbg !225                        ; [debug line = 54:22]

; <label>:148                                     ; preds = %147
  store i8 0, i8* %i, align 1, !dbg !226          ; [debug line = 56:24]
  br label %149, !dbg !226                        ; [debug line = 56:24]

; <label>:149                                     ; preds = %162, %148
  %150 = load i8* %i, align 1, !dbg !226          ; [#uses=1 type=i8] [debug line = 56:24]
  %151 = zext i8 %150 to i32, !dbg !226           ; [#uses=1 type=i32] [debug line = 56:24]
  %152 = icmp slt i32 %151, 16, !dbg !226         ; [#uses=1 type=i1] [debug line = 56:24]
  br i1 %152, label %153, label %165, !dbg !226   ; [debug line = 56:24]

; <label>:153                                     ; preds = %149
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !228 ; [debug line = 57:7]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !228 ; [debug line = 57:7]
  %154 = load i8* %i, align 1, !dbg !228          ; [#uses=1 type=i8] [debug line = 57:7]
  %155 = zext i8 %154 to i64, !dbg !228           ; [#uses=1 type=i64] [debug line = 57:7]
  %156 = getelementptr inbounds [16 x i8]* %buf, i32 0, i64 %155, !dbg !228 ; [#uses=1 type=i8*] [debug line = 57:7]
  %157 = load i8* %156, align 1, !dbg !228        ; [#uses=1 type=i8] [debug line = 57:7]
  %158 = load i8* %i, align 1, !dbg !228          ; [#uses=1 type=i8] [debug line = 57:7]
  %159 = zext i8 %158 to i64, !dbg !228           ; [#uses=1 type=i64] [debug line = 57:7]
  %160 = load i8** %2, align 8, !dbg !228         ; [#uses=1 type=i8*] [debug line = 57:7]
  %161 = getelementptr inbounds i8* %160, i64 %159, !dbg !228 ; [#uses=1 type=i8*] [debug line = 57:7]
  store i8 %157, i8* %161, align 1, !dbg !228     ; [debug line = 57:7]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !230 ; [debug line = 57:26]
  br label %162, !dbg !230                        ; [debug line = 57:26]

; <label>:162                                     ; preds = %153
  %163 = load i8* %i, align 1, !dbg !231          ; [#uses=1 type=i8] [debug line = 56:35]
  %164 = add i8 %163, 1, !dbg !231                ; [#uses=1 type=i8] [debug line = 56:35]
  store i8 %164, i8* %i, align 1, !dbg !231       ; [debug line = 56:35]
  br label %149, !dbg !231                        ; [debug line = 56:35]

; <label>:165                                     ; preds = %149
  br label %265, !dbg !232                        ; [debug line = 58:6]

; <label>:166                                     ; preds = %0
  br label %167, !dbg !232                        ; [debug line = 58:6]

; <label>:167                                     ; preds = %166
  store i8 0, i8* %i, align 1, !dbg !233          ; [debug line = 61:24]
  br label %168, !dbg !233                        ; [debug line = 61:24]

; <label>:168                                     ; preds = %181, %167
  %169 = load i8* %i, align 1, !dbg !233          ; [#uses=1 type=i8] [debug line = 61:24]
  %170 = zext i8 %169 to i32, !dbg !233           ; [#uses=1 type=i32] [debug line = 61:24]
  %171 = icmp slt i32 %170, 16, !dbg !233         ; [#uses=1 type=i1] [debug line = 61:24]
  br i1 %171, label %172, label %184, !dbg !233   ; [debug line = 61:24]

; <label>:172                                     ; preds = %168
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !235 ; [debug line = 62:7]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !235 ; [debug line = 62:7]
  %173 = load i8* %i, align 1, !dbg !235          ; [#uses=1 type=i8] [debug line = 62:7]
  %174 = zext i8 %173 to i64, !dbg !235           ; [#uses=1 type=i64] [debug line = 62:7]
  %175 = load i8** %1, align 8, !dbg !235         ; [#uses=1 type=i8*] [debug line = 62:7]
  %176 = getelementptr inbounds i8* %175, i64 %174, !dbg !235 ; [#uses=1 type=i8*] [debug line = 62:7]
  %177 = load i8* %176, align 1, !dbg !235        ; [#uses=1 type=i8] [debug line = 62:7]
  %178 = load i8* %i, align 1, !dbg !235          ; [#uses=1 type=i8] [debug line = 62:7]
  %179 = zext i8 %178 to i64, !dbg !235           ; [#uses=1 type=i64] [debug line = 62:7]
  %180 = getelementptr inbounds [16 x i8]* %buf, i32 0, i64 %179, !dbg !235 ; [#uses=1 type=i8*] [debug line = 62:7]
  store i8 %177, i8* %180, align 1, !dbg !235     ; [debug line = 62:7]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !237 ; [debug line = 62:25]
  br label %181, !dbg !237                        ; [debug line = 62:25]

; <label>:181                                     ; preds = %172
  %182 = load i8* %i, align 1, !dbg !238          ; [#uses=1 type=i8] [debug line = 61:35]
  %183 = add i8 %182, 1, !dbg !238                ; [#uses=1 type=i8] [debug line = 61:35]
  store i8 %183, i8* %i, align 1, !dbg !238       ; [debug line = 61:35]
  br label %168, !dbg !238                        ; [debug line = 61:35]

; <label>:184                                     ; preds = %168
  br label %185, !dbg !239                        ; [debug line = 62:25]

; <label>:185                                     ; preds = %184
  store i8 0, i8* %i, align 1, !dbg !240          ; [debug line = 64:24]
  br label %186, !dbg !240                        ; [debug line = 64:24]

; <label>:186                                     ; preds = %198, %185
  %187 = load i8* %i, align 1, !dbg !240          ; [#uses=1 type=i8] [debug line = 64:24]
  %188 = zext i8 %187 to i32, !dbg !240           ; [#uses=1 type=i32] [debug line = 64:24]
  %189 = icmp slt i32 %188, 16, !dbg !240         ; [#uses=1 type=i1] [debug line = 64:24]
  br i1 %189, label %190, label %201, !dbg !240   ; [debug line = 64:24]

; <label>:190                                     ; preds = %186
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !242 ; [debug line = 65:7]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !242 ; [debug line = 65:7]
  %191 = load i8* %i, align 1, !dbg !242          ; [#uses=1 type=i8] [debug line = 65:7]
  %192 = zext i8 %191 to i64, !dbg !242           ; [#uses=1 type=i64] [debug line = 65:7]
  %193 = getelementptr inbounds [16 x i8]* %buf, i32 0, i64 %192, !dbg !242 ; [#uses=1 type=i8*] [debug line = 65:7]
  %194 = load i8* %193, align 1, !dbg !242        ; [#uses=1 type=i8] [debug line = 65:7]
  %195 = load i8* %i, align 1, !dbg !242          ; [#uses=1 type=i8] [debug line = 65:7]
  %196 = zext i8 %195 to i64, !dbg !242           ; [#uses=1 type=i64] [debug line = 65:7]
  %197 = getelementptr inbounds [16 x i8]* @aescbc.lastbuf, i32 0, i64 %196, !dbg !242 ; [#uses=1 type=i8*] [debug line = 65:7]
  store i8 %194, i8* %197, align 1, !dbg !242     ; [debug line = 65:7]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !244 ; [debug line = 65:25]
  br label %198, !dbg !244                        ; [debug line = 65:25]

; <label>:198                                     ; preds = %190
  %199 = load i8* %i, align 1, !dbg !245          ; [#uses=1 type=i8] [debug line = 64:35]
  %200 = add i8 %199, 1, !dbg !245                ; [#uses=1 type=i8] [debug line = 64:35]
  store i8 %200, i8* %i, align 1, !dbg !245       ; [debug line = 64:35]
  br label %186, !dbg !245                        ; [debug line = 64:35]

; <label>:201                                     ; preds = %186
  %202 = getelementptr inbounds [16 x i8]* %buf, i32 0, i32 0, !dbg !246 ; [#uses=1 type=i8*] [debug line = 67:6]
  call void @aes_decrypt_ecb(%struct.aes_context* @aescbc.ctx, i8* %202), !dbg !246 ; [debug line = 67:6]
  br label %203, !dbg !246                        ; [debug line = 67:6]

; <label>:203                                     ; preds = %201
  store i8 0, i8* %i, align 1, !dbg !247          ; [debug line = 69:24]
  br label %204, !dbg !247                        ; [debug line = 69:24]

; <label>:204                                     ; preds = %224, %203
  %205 = load i8* %i, align 1, !dbg !247          ; [#uses=1 type=i8] [debug line = 69:24]
  %206 = zext i8 %205 to i32, !dbg !247           ; [#uses=1 type=i32] [debug line = 69:24]
  %207 = icmp slt i32 %206, 16, !dbg !247         ; [#uses=1 type=i1] [debug line = 69:24]
  br i1 %207, label %208, label %227, !dbg !247   ; [debug line = 69:24]

; <label>:208                                     ; preds = %204
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !249 ; [debug line = 70:7]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !249 ; [debug line = 70:7]
  %209 = load i8* %i, align 1, !dbg !249          ; [#uses=1 type=i8] [debug line = 70:7]
  %210 = zext i8 %209 to i64, !dbg !249           ; [#uses=1 type=i64] [debug line = 70:7]
  %211 = getelementptr inbounds [16 x i8]* %buf, i32 0, i64 %210, !dbg !249 ; [#uses=1 type=i8*] [debug line = 70:7]
  %212 = load i8* %211, align 1, !dbg !249        ; [#uses=1 type=i8] [debug line = 70:7]
  %213 = zext i8 %212 to i32, !dbg !249           ; [#uses=1 type=i32] [debug line = 70:7]
  %214 = load i8* %i, align 1, !dbg !249          ; [#uses=1 type=i8] [debug line = 70:7]
  %215 = zext i8 %214 to i64, !dbg !249           ; [#uses=1 type=i64] [debug line = 70:7]
  %216 = getelementptr inbounds [16 x i8]* @aescbc.xorv, i32 0, i64 %215, !dbg !249 ; [#uses=1 type=i8*] [debug line = 70:7]
  %217 = load i8* %216, align 1, !dbg !249        ; [#uses=1 type=i8] [debug line = 70:7]
  %218 = zext i8 %217 to i32, !dbg !249           ; [#uses=1 type=i32] [debug line = 70:7]
  %219 = xor i32 %213, %218, !dbg !249            ; [#uses=1 type=i32] [debug line = 70:7]
  %220 = trunc i32 %219 to i8, !dbg !249          ; [#uses=1 type=i8] [debug line = 70:7]
  %221 = load i8* %i, align 1, !dbg !249          ; [#uses=1 type=i8] [debug line = 70:7]
  %222 = zext i8 %221 to i64, !dbg !249           ; [#uses=1 type=i64] [debug line = 70:7]
  %223 = getelementptr inbounds [16 x i8]* %buf, i32 0, i64 %222, !dbg !249 ; [#uses=1 type=i8*] [debug line = 70:7]
  store i8 %220, i8* %223, align 1, !dbg !249     ; [debug line = 70:7]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !251 ; [debug line = 70:29]
  br label %224, !dbg !251                        ; [debug line = 70:29]

; <label>:224                                     ; preds = %208
  %225 = load i8* %i, align 1, !dbg !252          ; [#uses=1 type=i8] [debug line = 69:35]
  %226 = add i8 %225, 1, !dbg !252                ; [#uses=1 type=i8] [debug line = 69:35]
  store i8 %226, i8* %i, align 1, !dbg !252       ; [debug line = 69:35]
  br label %204, !dbg !252                        ; [debug line = 69:35]

; <label>:227                                     ; preds = %204
  br label %228, !dbg !253                        ; [debug line = 70:29]

; <label>:228                                     ; preds = %227
  store i8 0, i8* %i, align 1, !dbg !254          ; [debug line = 72:24]
  br label %229, !dbg !254                        ; [debug line = 72:24]

; <label>:229                                     ; preds = %241, %228
  %230 = load i8* %i, align 1, !dbg !254          ; [#uses=1 type=i8] [debug line = 72:24]
  %231 = zext i8 %230 to i32, !dbg !254           ; [#uses=1 type=i32] [debug line = 72:24]
  %232 = icmp slt i32 %231, 16, !dbg !254         ; [#uses=1 type=i1] [debug line = 72:24]
  br i1 %232, label %233, label %244, !dbg !254   ; [debug line = 72:24]

; <label>:233                                     ; preds = %229
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str13, i32 0, i32 0)) nounwind, !dbg !256 ; [debug line = 73:7]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str13, i32 0, i32 0)) nounwind, !dbg !256 ; [debug line = 73:7]
  %234 = load i8* %i, align 1, !dbg !256          ; [#uses=1 type=i8] [debug line = 73:7]
  %235 = zext i8 %234 to i64, !dbg !256           ; [#uses=1 type=i64] [debug line = 73:7]
  %236 = getelementptr inbounds [16 x i8]* @aescbc.lastbuf, i32 0, i64 %235, !dbg !256 ; [#uses=1 type=i8*] [debug line = 73:7]
  %237 = load i8* %236, align 1, !dbg !256        ; [#uses=1 type=i8] [debug line = 73:7]
  %238 = load i8* %i, align 1, !dbg !256          ; [#uses=1 type=i8] [debug line = 73:7]
  %239 = zext i8 %238 to i64, !dbg !256           ; [#uses=1 type=i64] [debug line = 73:7]
  %240 = getelementptr inbounds [16 x i8]* @aescbc.xorv, i32 0, i64 %239, !dbg !256 ; [#uses=1 type=i8*] [debug line = 73:7]
  store i8 %237, i8* %240, align 1, !dbg !256     ; [debug line = 73:7]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str13, i32 0, i32 0)) nounwind, !dbg !258 ; [debug line = 73:26]
  br label %241, !dbg !258                        ; [debug line = 73:26]

; <label>:241                                     ; preds = %233
  %242 = load i8* %i, align 1, !dbg !259          ; [#uses=1 type=i8] [debug line = 72:35]
  %243 = add i8 %242, 1, !dbg !259                ; [#uses=1 type=i8] [debug line = 72:35]
  store i8 %243, i8* %i, align 1, !dbg !259       ; [debug line = 72:35]
  br label %229, !dbg !259                        ; [debug line = 72:35]

; <label>:244                                     ; preds = %229
  br label %245, !dbg !260                        ; [debug line = 73:26]

; <label>:245                                     ; preds = %244
  store i8 0, i8* %i, align 1, !dbg !261          ; [debug line = 75:24]
  br label %246, !dbg !261                        ; [debug line = 75:24]

; <label>:246                                     ; preds = %259, %245
  %247 = load i8* %i, align 1, !dbg !261          ; [#uses=1 type=i8] [debug line = 75:24]
  %248 = zext i8 %247 to i32, !dbg !261           ; [#uses=1 type=i32] [debug line = 75:24]
  %249 = icmp slt i32 %248, 16, !dbg !261         ; [#uses=1 type=i1] [debug line = 75:24]
  br i1 %249, label %250, label %262, !dbg !261   ; [debug line = 75:24]

; <label>:250                                     ; preds = %246
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str14, i32 0, i32 0)) nounwind, !dbg !263 ; [debug line = 76:7]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str14, i32 0, i32 0)) nounwind, !dbg !263 ; [debug line = 76:7]
  %251 = load i8* %i, align 1, !dbg !263          ; [#uses=1 type=i8] [debug line = 76:7]
  %252 = zext i8 %251 to i64, !dbg !263           ; [#uses=1 type=i64] [debug line = 76:7]
  %253 = getelementptr inbounds [16 x i8]* %buf, i32 0, i64 %252, !dbg !263 ; [#uses=1 type=i8*] [debug line = 76:7]
  %254 = load i8* %253, align 1, !dbg !263        ; [#uses=1 type=i8] [debug line = 76:7]
  %255 = load i8* %i, align 1, !dbg !263          ; [#uses=1 type=i8] [debug line = 76:7]
  %256 = zext i8 %255 to i64, !dbg !263           ; [#uses=1 type=i64] [debug line = 76:7]
  %257 = load i8** %2, align 8, !dbg !263         ; [#uses=1 type=i8*] [debug line = 76:7]
  %258 = getelementptr inbounds i8* %257, i64 %256, !dbg !263 ; [#uses=1 type=i8*] [debug line = 76:7]
  store i8 %254, i8* %258, align 1, !dbg !263     ; [debug line = 76:7]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str14, i32 0, i32 0)) nounwind, !dbg !265 ; [debug line = 76:26]
  br label %259, !dbg !265                        ; [debug line = 76:26]

; <label>:259                                     ; preds = %250
  %260 = load i8* %i, align 1, !dbg !266          ; [#uses=1 type=i8] [debug line = 75:35]
  %261 = add i8 %260, 1, !dbg !266                ; [#uses=1 type=i8] [debug line = 75:35]
  store i8 %261, i8* %i, align 1, !dbg !266       ; [debug line = 75:35]
  br label %246, !dbg !266                        ; [debug line = 75:35]

; <label>:262                                     ; preds = %246
  br label %265, !dbg !267                        ; [debug line = 77:6]

; <label>:263                                     ; preds = %0
  br label %265, !dbg !268                        ; [debug line = 81:6]

; <label>:264                                     ; preds = %0
  br label %265, !dbg !269                        ; [debug line = 85:6]

; <label>:265                                     ; preds = %264, %263, %262, %165, %85, %0
  ret void, !dbg !270                             ; [debug line = 87:1]
}

; [#uses=63]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=4]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=6]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=13]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=13]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=13]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=1]
define void @aes_init(%struct.aes_context* %ctx, i8* %k) nounwind uwtable {
  %1 = alloca %struct.aes_context*, align 8       ; [#uses=4 type=%struct.aes_context**]
  %2 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %rcon = alloca i8, align 1                      ; [#uses=2 type=i8*]
  %i = alloca i8, align 1                         ; [#uses=10 type=i8*]
  store %struct.aes_context* %ctx, %struct.aes_context** %1, align 8
  call void @llvm.dbg.declare(metadata !{%struct.aes_context** %1}, metadata !271), !dbg !272 ; [debug line = 339:28] [debug variable = ctx]
  store i8* %k, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !273), !dbg !274 ; [debug line = 339:42] [debug variable = k]
  call void @llvm.dbg.declare(metadata !{i8* %rcon}, metadata !275), !dbg !277 ; [debug line = 341:13] [debug variable = rcon]
  store i8 1, i8* %rcon, align 1, !dbg !278       ; [debug line = 341:21]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !279), !dbg !280 ; [debug line = 342:22] [debug variable = i]
  store i8 0, i8* %i, align 1, !dbg !281          ; [debug line = 344:10]
  br label %3, !dbg !281                          ; [debug line = 344:10]

; <label>:3                                       ; preds = %23, %0
  %4 = load i8* %i, align 1, !dbg !281            ; [#uses=1 type=i8] [debug line = 344:10]
  %5 = zext i8 %4 to i64, !dbg !281               ; [#uses=1 type=i64] [debug line = 344:10]
  %6 = icmp ult i64 %5, 32, !dbg !281             ; [#uses=1 type=i1] [debug line = 344:10]
  br i1 %6, label %7, label %26, !dbg !281        ; [debug line = 344:10]

; <label>:7                                       ; preds = %3
  %8 = load i8* %i, align 1, !dbg !283            ; [#uses=1 type=i8] [debug line = 344:44]
  %9 = zext i8 %8 to i64, !dbg !283               ; [#uses=1 type=i64] [debug line = 344:44]
  %10 = load i8** %2, align 8, !dbg !283          ; [#uses=1 type=i8*] [debug line = 344:44]
  %11 = getelementptr inbounds i8* %10, i64 %9, !dbg !283 ; [#uses=1 type=i8*] [debug line = 344:44]
  %12 = load i8* %11, align 1, !dbg !283          ; [#uses=2 type=i8] [debug line = 344:44]
  %13 = load i8* %i, align 1, !dbg !283           ; [#uses=1 type=i8] [debug line = 344:44]
  %14 = zext i8 %13 to i64, !dbg !283             ; [#uses=1 type=i64] [debug line = 344:44]
  %15 = load %struct.aes_context** %1, align 8, !dbg !283 ; [#uses=1 type=%struct.aes_context*] [debug line = 344:44]
  %16 = getelementptr inbounds %struct.aes_context* %15, i32 0, i32 2, !dbg !283 ; [#uses=1 type=[32 x i8]*] [debug line = 344:44]
  %17 = getelementptr inbounds [32 x i8]* %16, i32 0, i64 %14, !dbg !283 ; [#uses=1 type=i8*] [debug line = 344:44]
  store i8 %12, i8* %17, align 1, !dbg !283       ; [debug line = 344:44]
  %18 = load i8* %i, align 1, !dbg !283           ; [#uses=1 type=i8] [debug line = 344:44]
  %19 = zext i8 %18 to i64, !dbg !283             ; [#uses=1 type=i64] [debug line = 344:44]
  %20 = load %struct.aes_context** %1, align 8, !dbg !283 ; [#uses=1 type=%struct.aes_context*] [debug line = 344:44]
  %21 = getelementptr inbounds %struct.aes_context* %20, i32 0, i32 1, !dbg !283 ; [#uses=1 type=[32 x i8]*] [debug line = 344:44]
  %22 = getelementptr inbounds [32 x i8]* %21, i32 0, i64 %19, !dbg !283 ; [#uses=1 type=i8*] [debug line = 344:44]
  store i8 %12, i8* %22, align 1, !dbg !283       ; [debug line = 344:44]
  br label %23, !dbg !283                         ; [debug line = 344:44]

; <label>:23                                      ; preds = %7
  %24 = load i8* %i, align 1, !dbg !284           ; [#uses=1 type=i8] [debug line = 344:39]
  %25 = add i8 %24, 1, !dbg !284                  ; [#uses=1 type=i8] [debug line = 344:39]
  store i8 %25, i8* %i, align 1, !dbg !284        ; [debug line = 344:39]
  br label %3, !dbg !284                          ; [debug line = 344:39]

; <label>:26                                      ; preds = %3
  store i8 8, i8* %i, align 1, !dbg !285          ; [debug line = 345:10]
  br label %27, !dbg !285                         ; [debug line = 345:10]

; <label>:27                                      ; preds = %31, %26
  %28 = load i8* %i, align 1, !dbg !285           ; [#uses=1 type=i8] [debug line = 345:10]
  %29 = add i8 %28, -1, !dbg !285                 ; [#uses=2 type=i8] [debug line = 345:10]
  store i8 %29, i8* %i, align 1, !dbg !285        ; [debug line = 345:10]
  %30 = icmp ne i8 %29, 0, !dbg !285              ; [#uses=1 type=i1] [debug line = 345:10]
  br i1 %30, label %31, label %35, !dbg !285      ; [debug line = 345:10]

; <label>:31                                      ; preds = %27
  %32 = load %struct.aes_context** %1, align 8, !dbg !287 ; [#uses=1 type=%struct.aes_context*] [debug line = 345:23]
  %33 = getelementptr inbounds %struct.aes_context* %32, i32 0, i32 2, !dbg !287 ; [#uses=1 type=[32 x i8]*] [debug line = 345:23]
  %34 = getelementptr inbounds [32 x i8]* %33, i32 0, i32 0, !dbg !287 ; [#uses=1 type=i8*] [debug line = 345:23]
  call void @aes_expandEncKey(i8* %34, i8* %rcon), !dbg !287 ; [debug line = 345:23]
  br label %27, !dbg !287                         ; [debug line = 345:23]

; <label>:35                                      ; preds = %27
  ret void, !dbg !288                             ; [debug line = 346:1]
}

; [#uses=3]
define internal void @aes_expandEncKey(i8* %k, i8* %rc) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=33 type=i8**]
  %2 = alloca i8*, align 8                        ; [#uses=4 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=24 type=i8*]
  store i8* %k, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !289), !dbg !290 ; [debug line = 292:39] [debug variable = k]
  store i8* %rc, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !291), !dbg !292 ; [debug line = 292:51] [debug variable = rc]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !293), !dbg !295 ; [debug line = 294:22] [debug variable = i]
  %3 = load i8** %1, align 8, !dbg !296           ; [#uses=1 type=i8*] [debug line = 296:5]
  %4 = getelementptr inbounds i8* %3, i64 29, !dbg !296 ; [#uses=1 type=i8*] [debug line = 296:5]
  %5 = load i8* %4, align 1, !dbg !296            ; [#uses=1 type=i8] [debug line = 296:5]
  %6 = zext i8 %5 to i64, !dbg !296               ; [#uses=1 type=i64] [debug line = 296:5]
  %7 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %6, !dbg !296 ; [#uses=1 type=i8*] [debug line = 296:5]
  %8 = load i8* %7, align 1, !dbg !296            ; [#uses=1 type=i8] [debug line = 296:5]
  %9 = zext i8 %8 to i32, !dbg !296               ; [#uses=1 type=i32] [debug line = 296:5]
  %10 = load i8** %2, align 8, !dbg !296          ; [#uses=1 type=i8*] [debug line = 296:5]
  %11 = load i8* %10, align 1, !dbg !296          ; [#uses=1 type=i8] [debug line = 296:5]
  %12 = zext i8 %11 to i32, !dbg !296             ; [#uses=1 type=i32] [debug line = 296:5]
  %13 = xor i32 %9, %12, !dbg !296                ; [#uses=1 type=i32] [debug line = 296:5]
  %14 = load i8** %1, align 8, !dbg !296          ; [#uses=1 type=i8*] [debug line = 296:5]
  %15 = getelementptr inbounds i8* %14, i64 0, !dbg !296 ; [#uses=2 type=i8*] [debug line = 296:5]
  %16 = load i8* %15, align 1, !dbg !296          ; [#uses=1 type=i8] [debug line = 296:5]
  %17 = zext i8 %16 to i32, !dbg !296             ; [#uses=1 type=i32] [debug line = 296:5]
  %18 = xor i32 %17, %13, !dbg !296               ; [#uses=1 type=i32] [debug line = 296:5]
  %19 = trunc i32 %18 to i8, !dbg !296            ; [#uses=1 type=i8] [debug line = 296:5]
  store i8 %19, i8* %15, align 1, !dbg !296       ; [debug line = 296:5]
  %20 = load i8** %1, align 8, !dbg !297          ; [#uses=1 type=i8*] [debug line = 297:5]
  %21 = getelementptr inbounds i8* %20, i64 30, !dbg !297 ; [#uses=1 type=i8*] [debug line = 297:5]
  %22 = load i8* %21, align 1, !dbg !297          ; [#uses=1 type=i8] [debug line = 297:5]
  %23 = zext i8 %22 to i64, !dbg !297             ; [#uses=1 type=i64] [debug line = 297:5]
  %24 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %23, !dbg !297 ; [#uses=1 type=i8*] [debug line = 297:5]
  %25 = load i8* %24, align 1, !dbg !297          ; [#uses=1 type=i8] [debug line = 297:5]
  %26 = zext i8 %25 to i32, !dbg !297             ; [#uses=1 type=i32] [debug line = 297:5]
  %27 = load i8** %1, align 8, !dbg !297          ; [#uses=1 type=i8*] [debug line = 297:5]
  %28 = getelementptr inbounds i8* %27, i64 1, !dbg !297 ; [#uses=2 type=i8*] [debug line = 297:5]
  %29 = load i8* %28, align 1, !dbg !297          ; [#uses=1 type=i8] [debug line = 297:5]
  %30 = zext i8 %29 to i32, !dbg !297             ; [#uses=1 type=i32] [debug line = 297:5]
  %31 = xor i32 %30, %26, !dbg !297               ; [#uses=1 type=i32] [debug line = 297:5]
  %32 = trunc i32 %31 to i8, !dbg !297            ; [#uses=1 type=i8] [debug line = 297:5]
  store i8 %32, i8* %28, align 1, !dbg !297       ; [debug line = 297:5]
  %33 = load i8** %1, align 8, !dbg !298          ; [#uses=1 type=i8*] [debug line = 298:5]
  %34 = getelementptr inbounds i8* %33, i64 31, !dbg !298 ; [#uses=1 type=i8*] [debug line = 298:5]
  %35 = load i8* %34, align 1, !dbg !298          ; [#uses=1 type=i8] [debug line = 298:5]
  %36 = zext i8 %35 to i64, !dbg !298             ; [#uses=1 type=i64] [debug line = 298:5]
  %37 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %36, !dbg !298 ; [#uses=1 type=i8*] [debug line = 298:5]
  %38 = load i8* %37, align 1, !dbg !298          ; [#uses=1 type=i8] [debug line = 298:5]
  %39 = zext i8 %38 to i32, !dbg !298             ; [#uses=1 type=i32] [debug line = 298:5]
  %40 = load i8** %1, align 8, !dbg !298          ; [#uses=1 type=i8*] [debug line = 298:5]
  %41 = getelementptr inbounds i8* %40, i64 2, !dbg !298 ; [#uses=2 type=i8*] [debug line = 298:5]
  %42 = load i8* %41, align 1, !dbg !298          ; [#uses=1 type=i8] [debug line = 298:5]
  %43 = zext i8 %42 to i32, !dbg !298             ; [#uses=1 type=i32] [debug line = 298:5]
  %44 = xor i32 %43, %39, !dbg !298               ; [#uses=1 type=i32] [debug line = 298:5]
  %45 = trunc i32 %44 to i8, !dbg !298            ; [#uses=1 type=i8] [debug line = 298:5]
  store i8 %45, i8* %41, align 1, !dbg !298       ; [debug line = 298:5]
  %46 = load i8** %1, align 8, !dbg !299          ; [#uses=1 type=i8*] [debug line = 299:5]
  %47 = getelementptr inbounds i8* %46, i64 28, !dbg !299 ; [#uses=1 type=i8*] [debug line = 299:5]
  %48 = load i8* %47, align 1, !dbg !299          ; [#uses=1 type=i8] [debug line = 299:5]
  %49 = zext i8 %48 to i64, !dbg !299             ; [#uses=1 type=i64] [debug line = 299:5]
  %50 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %49, !dbg !299 ; [#uses=1 type=i8*] [debug line = 299:5]
  %51 = load i8* %50, align 1, !dbg !299          ; [#uses=1 type=i8] [debug line = 299:5]
  %52 = zext i8 %51 to i32, !dbg !299             ; [#uses=1 type=i32] [debug line = 299:5]
  %53 = load i8** %1, align 8, !dbg !299          ; [#uses=1 type=i8*] [debug line = 299:5]
  %54 = getelementptr inbounds i8* %53, i64 3, !dbg !299 ; [#uses=2 type=i8*] [debug line = 299:5]
  %55 = load i8* %54, align 1, !dbg !299          ; [#uses=1 type=i8] [debug line = 299:5]
  %56 = zext i8 %55 to i32, !dbg !299             ; [#uses=1 type=i32] [debug line = 299:5]
  %57 = xor i32 %56, %52, !dbg !299               ; [#uses=1 type=i32] [debug line = 299:5]
  %58 = trunc i32 %57 to i8, !dbg !299            ; [#uses=1 type=i8] [debug line = 299:5]
  store i8 %58, i8* %54, align 1, !dbg !299       ; [debug line = 299:5]
  %59 = load i8** %2, align 8, !dbg !300          ; [#uses=1 type=i8*] [debug line = 300:11]
  %60 = load i8* %59, align 1, !dbg !300          ; [#uses=1 type=i8] [debug line = 300:11]
  %61 = call zeroext i8 @rj_xtime(i8 zeroext %60), !dbg !300 ; [#uses=1 type=i8] [debug line = 300:11]
  %62 = load i8** %2, align 8, !dbg !300          ; [#uses=1 type=i8*] [debug line = 300:11]
  store i8 %61, i8* %62, align 1, !dbg !300       ; [debug line = 300:11]
  store i8 4, i8* %i, align 1, !dbg !301          ; [debug line = 302:9]
  br label %63, !dbg !301                         ; [debug line = 302:9]

; <label>:63                                      ; preds = %138, %0
  %64 = load i8* %i, align 1, !dbg !301           ; [#uses=1 type=i8] [debug line = 302:9]
  %65 = zext i8 %64 to i32, !dbg !301             ; [#uses=1 type=i32] [debug line = 302:9]
  %66 = icmp slt i32 %65, 16, !dbg !301           ; [#uses=1 type=i1] [debug line = 302:9]
  br i1 %66, label %67, label %143, !dbg !301     ; [debug line = 302:9]

; <label>:67                                      ; preds = %63
  %68 = load i8* %i, align 1, !dbg !303           ; [#uses=1 type=i8] [debug line = 302:32]
  %69 = zext i8 %68 to i32, !dbg !303             ; [#uses=1 type=i32] [debug line = 302:32]
  %70 = sub nsw i32 %69, 4, !dbg !303             ; [#uses=1 type=i32] [debug line = 302:32]
  %71 = sext i32 %70 to i64, !dbg !303            ; [#uses=1 type=i64] [debug line = 302:32]
  %72 = load i8** %1, align 8, !dbg !303          ; [#uses=1 type=i8*] [debug line = 302:32]
  %73 = getelementptr inbounds i8* %72, i64 %71, !dbg !303 ; [#uses=1 type=i8*] [debug line = 302:32]
  %74 = load i8* %73, align 1, !dbg !303          ; [#uses=1 type=i8] [debug line = 302:32]
  %75 = zext i8 %74 to i32, !dbg !303             ; [#uses=1 type=i32] [debug line = 302:32]
  %76 = load i8* %i, align 1, !dbg !303           ; [#uses=1 type=i8] [debug line = 302:32]
  %77 = zext i8 %76 to i64, !dbg !303             ; [#uses=1 type=i64] [debug line = 302:32]
  %78 = load i8** %1, align 8, !dbg !303          ; [#uses=1 type=i8*] [debug line = 302:32]
  %79 = getelementptr inbounds i8* %78, i64 %77, !dbg !303 ; [#uses=2 type=i8*] [debug line = 302:32]
  %80 = load i8* %79, align 1, !dbg !303          ; [#uses=1 type=i8] [debug line = 302:32]
  %81 = zext i8 %80 to i32, !dbg !303             ; [#uses=1 type=i32] [debug line = 302:32]
  %82 = xor i32 %81, %75, !dbg !303               ; [#uses=1 type=i32] [debug line = 302:32]
  %83 = trunc i32 %82 to i8, !dbg !303            ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %83, i8* %79, align 1, !dbg !303       ; [debug line = 302:32]
  %84 = load i8* %i, align 1, !dbg !303           ; [#uses=1 type=i8] [debug line = 302:32]
  %85 = zext i8 %84 to i32, !dbg !303             ; [#uses=1 type=i32] [debug line = 302:32]
  %86 = sub nsw i32 %85, 3, !dbg !303             ; [#uses=1 type=i32] [debug line = 302:32]
  %87 = sext i32 %86 to i64, !dbg !303            ; [#uses=1 type=i64] [debug line = 302:32]
  %88 = load i8** %1, align 8, !dbg !303          ; [#uses=1 type=i8*] [debug line = 302:32]
  %89 = getelementptr inbounds i8* %88, i64 %87, !dbg !303 ; [#uses=1 type=i8*] [debug line = 302:32]
  %90 = load i8* %89, align 1, !dbg !303          ; [#uses=1 type=i8] [debug line = 302:32]
  %91 = zext i8 %90 to i32, !dbg !303             ; [#uses=1 type=i32] [debug line = 302:32]
  %92 = load i8* %i, align 1, !dbg !303           ; [#uses=1 type=i8] [debug line = 302:32]
  %93 = zext i8 %92 to i32, !dbg !303             ; [#uses=1 type=i32] [debug line = 302:32]
  %94 = add nsw i32 %93, 1, !dbg !303             ; [#uses=1 type=i32] [debug line = 302:32]
  %95 = sext i32 %94 to i64, !dbg !303            ; [#uses=1 type=i64] [debug line = 302:32]
  %96 = load i8** %1, align 8, !dbg !303          ; [#uses=1 type=i8*] [debug line = 302:32]
  %97 = getelementptr inbounds i8* %96, i64 %95, !dbg !303 ; [#uses=2 type=i8*] [debug line = 302:32]
  %98 = load i8* %97, align 1, !dbg !303          ; [#uses=1 type=i8] [debug line = 302:32]
  %99 = zext i8 %98 to i32, !dbg !303             ; [#uses=1 type=i32] [debug line = 302:32]
  %100 = xor i32 %99, %91, !dbg !303              ; [#uses=1 type=i32] [debug line = 302:32]
  %101 = trunc i32 %100 to i8, !dbg !303          ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %101, i8* %97, align 1, !dbg !303      ; [debug line = 302:32]
  %102 = load i8* %i, align 1, !dbg !303          ; [#uses=1 type=i8] [debug line = 302:32]
  %103 = zext i8 %102 to i32, !dbg !303           ; [#uses=1 type=i32] [debug line = 302:32]
  %104 = sub nsw i32 %103, 2, !dbg !303           ; [#uses=1 type=i32] [debug line = 302:32]
  %105 = sext i32 %104 to i64, !dbg !303          ; [#uses=1 type=i64] [debug line = 302:32]
  %106 = load i8** %1, align 8, !dbg !303         ; [#uses=1 type=i8*] [debug line = 302:32]
  %107 = getelementptr inbounds i8* %106, i64 %105, !dbg !303 ; [#uses=1 type=i8*] [debug line = 302:32]
  %108 = load i8* %107, align 1, !dbg !303        ; [#uses=1 type=i8] [debug line = 302:32]
  %109 = zext i8 %108 to i32, !dbg !303           ; [#uses=1 type=i32] [debug line = 302:32]
  %110 = load i8* %i, align 1, !dbg !303          ; [#uses=1 type=i8] [debug line = 302:32]
  %111 = zext i8 %110 to i32, !dbg !303           ; [#uses=1 type=i32] [debug line = 302:32]
  %112 = add nsw i32 %111, 2, !dbg !303           ; [#uses=1 type=i32] [debug line = 302:32]
  %113 = sext i32 %112 to i64, !dbg !303          ; [#uses=1 type=i64] [debug line = 302:32]
  %114 = load i8** %1, align 8, !dbg !303         ; [#uses=1 type=i8*] [debug line = 302:32]
  %115 = getelementptr inbounds i8* %114, i64 %113, !dbg !303 ; [#uses=2 type=i8*] [debug line = 302:32]
  %116 = load i8* %115, align 1, !dbg !303        ; [#uses=1 type=i8] [debug line = 302:32]
  %117 = zext i8 %116 to i32, !dbg !303           ; [#uses=1 type=i32] [debug line = 302:32]
  %118 = xor i32 %117, %109, !dbg !303            ; [#uses=1 type=i32] [debug line = 302:32]
  %119 = trunc i32 %118 to i8, !dbg !303          ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %119, i8* %115, align 1, !dbg !303     ; [debug line = 302:32]
  %120 = load i8* %i, align 1, !dbg !303          ; [#uses=1 type=i8] [debug line = 302:32]
  %121 = zext i8 %120 to i32, !dbg !303           ; [#uses=1 type=i32] [debug line = 302:32]
  %122 = sub nsw i32 %121, 1, !dbg !303           ; [#uses=1 type=i32] [debug line = 302:32]
  %123 = sext i32 %122 to i64, !dbg !303          ; [#uses=1 type=i64] [debug line = 302:32]
  %124 = load i8** %1, align 8, !dbg !303         ; [#uses=1 type=i8*] [debug line = 302:32]
  %125 = getelementptr inbounds i8* %124, i64 %123, !dbg !303 ; [#uses=1 type=i8*] [debug line = 302:32]
  %126 = load i8* %125, align 1, !dbg !303        ; [#uses=1 type=i8] [debug line = 302:32]
  %127 = zext i8 %126 to i32, !dbg !303           ; [#uses=1 type=i32] [debug line = 302:32]
  %128 = load i8* %i, align 1, !dbg !303          ; [#uses=1 type=i8] [debug line = 302:32]
  %129 = zext i8 %128 to i32, !dbg !303           ; [#uses=1 type=i32] [debug line = 302:32]
  %130 = add nsw i32 %129, 3, !dbg !303           ; [#uses=1 type=i32] [debug line = 302:32]
  %131 = sext i32 %130 to i64, !dbg !303          ; [#uses=1 type=i64] [debug line = 302:32]
  %132 = load i8** %1, align 8, !dbg !303         ; [#uses=1 type=i8*] [debug line = 302:32]
  %133 = getelementptr inbounds i8* %132, i64 %131, !dbg !303 ; [#uses=2 type=i8*] [debug line = 302:32]
  %134 = load i8* %133, align 1, !dbg !303        ; [#uses=1 type=i8] [debug line = 302:32]
  %135 = zext i8 %134 to i32, !dbg !303           ; [#uses=1 type=i32] [debug line = 302:32]
  %136 = xor i32 %135, %127, !dbg !303            ; [#uses=1 type=i32] [debug line = 302:32]
  %137 = trunc i32 %136 to i8, !dbg !303          ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %137, i8* %133, align 1, !dbg !303     ; [debug line = 302:32]
  br label %138, !dbg !303                        ; [debug line = 302:32]

; <label>:138                                     ; preds = %67
  %139 = load i8* %i, align 1, !dbg !304          ; [#uses=1 type=i8] [debug line = 302:24]
  %140 = zext i8 %139 to i32, !dbg !304           ; [#uses=1 type=i32] [debug line = 302:24]
  %141 = add nsw i32 %140, 4, !dbg !304           ; [#uses=1 type=i32] [debug line = 302:24]
  %142 = trunc i32 %141 to i8, !dbg !304          ; [#uses=1 type=i8] [debug line = 302:24]
  store i8 %142, i8* %i, align 1, !dbg !304       ; [debug line = 302:24]
  br label %63, !dbg !304                         ; [debug line = 302:24]

; <label>:143                                     ; preds = %63
  %144 = load i8** %1, align 8, !dbg !305         ; [#uses=1 type=i8*] [debug line = 304:5]
  %145 = getelementptr inbounds i8* %144, i64 12, !dbg !305 ; [#uses=1 type=i8*] [debug line = 304:5]
  %146 = load i8* %145, align 1, !dbg !305        ; [#uses=1 type=i8] [debug line = 304:5]
  %147 = zext i8 %146 to i64, !dbg !305           ; [#uses=1 type=i64] [debug line = 304:5]
  %148 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %147, !dbg !305 ; [#uses=1 type=i8*] [debug line = 304:5]
  %149 = load i8* %148, align 1, !dbg !305        ; [#uses=1 type=i8] [debug line = 304:5]
  %150 = zext i8 %149 to i32, !dbg !305           ; [#uses=1 type=i32] [debug line = 304:5]
  %151 = load i8** %1, align 8, !dbg !305         ; [#uses=1 type=i8*] [debug line = 304:5]
  %152 = getelementptr inbounds i8* %151, i64 16, !dbg !305 ; [#uses=2 type=i8*] [debug line = 304:5]
  %153 = load i8* %152, align 1, !dbg !305        ; [#uses=1 type=i8] [debug line = 304:5]
  %154 = zext i8 %153 to i32, !dbg !305           ; [#uses=1 type=i32] [debug line = 304:5]
  %155 = xor i32 %154, %150, !dbg !305            ; [#uses=1 type=i32] [debug line = 304:5]
  %156 = trunc i32 %155 to i8, !dbg !305          ; [#uses=1 type=i8] [debug line = 304:5]
  store i8 %156, i8* %152, align 1, !dbg !305     ; [debug line = 304:5]
  %157 = load i8** %1, align 8, !dbg !306         ; [#uses=1 type=i8*] [debug line = 305:5]
  %158 = getelementptr inbounds i8* %157, i64 13, !dbg !306 ; [#uses=1 type=i8*] [debug line = 305:5]
  %159 = load i8* %158, align 1, !dbg !306        ; [#uses=1 type=i8] [debug line = 305:5]
  %160 = zext i8 %159 to i64, !dbg !306           ; [#uses=1 type=i64] [debug line = 305:5]
  %161 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %160, !dbg !306 ; [#uses=1 type=i8*] [debug line = 305:5]
  %162 = load i8* %161, align 1, !dbg !306        ; [#uses=1 type=i8] [debug line = 305:5]
  %163 = zext i8 %162 to i32, !dbg !306           ; [#uses=1 type=i32] [debug line = 305:5]
  %164 = load i8** %1, align 8, !dbg !306         ; [#uses=1 type=i8*] [debug line = 305:5]
  %165 = getelementptr inbounds i8* %164, i64 17, !dbg !306 ; [#uses=2 type=i8*] [debug line = 305:5]
  %166 = load i8* %165, align 1, !dbg !306        ; [#uses=1 type=i8] [debug line = 305:5]
  %167 = zext i8 %166 to i32, !dbg !306           ; [#uses=1 type=i32] [debug line = 305:5]
  %168 = xor i32 %167, %163, !dbg !306            ; [#uses=1 type=i32] [debug line = 305:5]
  %169 = trunc i32 %168 to i8, !dbg !306          ; [#uses=1 type=i8] [debug line = 305:5]
  store i8 %169, i8* %165, align 1, !dbg !306     ; [debug line = 305:5]
  %170 = load i8** %1, align 8, !dbg !307         ; [#uses=1 type=i8*] [debug line = 306:5]
  %171 = getelementptr inbounds i8* %170, i64 14, !dbg !307 ; [#uses=1 type=i8*] [debug line = 306:5]
  %172 = load i8* %171, align 1, !dbg !307        ; [#uses=1 type=i8] [debug line = 306:5]
  %173 = zext i8 %172 to i64, !dbg !307           ; [#uses=1 type=i64] [debug line = 306:5]
  %174 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %173, !dbg !307 ; [#uses=1 type=i8*] [debug line = 306:5]
  %175 = load i8* %174, align 1, !dbg !307        ; [#uses=1 type=i8] [debug line = 306:5]
  %176 = zext i8 %175 to i32, !dbg !307           ; [#uses=1 type=i32] [debug line = 306:5]
  %177 = load i8** %1, align 8, !dbg !307         ; [#uses=1 type=i8*] [debug line = 306:5]
  %178 = getelementptr inbounds i8* %177, i64 18, !dbg !307 ; [#uses=2 type=i8*] [debug line = 306:5]
  %179 = load i8* %178, align 1, !dbg !307        ; [#uses=1 type=i8] [debug line = 306:5]
  %180 = zext i8 %179 to i32, !dbg !307           ; [#uses=1 type=i32] [debug line = 306:5]
  %181 = xor i32 %180, %176, !dbg !307            ; [#uses=1 type=i32] [debug line = 306:5]
  %182 = trunc i32 %181 to i8, !dbg !307          ; [#uses=1 type=i8] [debug line = 306:5]
  store i8 %182, i8* %178, align 1, !dbg !307     ; [debug line = 306:5]
  %183 = load i8** %1, align 8, !dbg !308         ; [#uses=1 type=i8*] [debug line = 307:5]
  %184 = getelementptr inbounds i8* %183, i64 15, !dbg !308 ; [#uses=1 type=i8*] [debug line = 307:5]
  %185 = load i8* %184, align 1, !dbg !308        ; [#uses=1 type=i8] [debug line = 307:5]
  %186 = zext i8 %185 to i64, !dbg !308           ; [#uses=1 type=i64] [debug line = 307:5]
  %187 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %186, !dbg !308 ; [#uses=1 type=i8*] [debug line = 307:5]
  %188 = load i8* %187, align 1, !dbg !308        ; [#uses=1 type=i8] [debug line = 307:5]
  %189 = zext i8 %188 to i32, !dbg !308           ; [#uses=1 type=i32] [debug line = 307:5]
  %190 = load i8** %1, align 8, !dbg !308         ; [#uses=1 type=i8*] [debug line = 307:5]
  %191 = getelementptr inbounds i8* %190, i64 19, !dbg !308 ; [#uses=2 type=i8*] [debug line = 307:5]
  %192 = load i8* %191, align 1, !dbg !308        ; [#uses=1 type=i8] [debug line = 307:5]
  %193 = zext i8 %192 to i32, !dbg !308           ; [#uses=1 type=i32] [debug line = 307:5]
  %194 = xor i32 %193, %189, !dbg !308            ; [#uses=1 type=i32] [debug line = 307:5]
  %195 = trunc i32 %194 to i8, !dbg !308          ; [#uses=1 type=i8] [debug line = 307:5]
  store i8 %195, i8* %191, align 1, !dbg !308     ; [debug line = 307:5]
  store i8 20, i8* %i, align 1, !dbg !309         ; [debug line = 309:9]
  br label %196, !dbg !309                        ; [debug line = 309:9]

; <label>:196                                     ; preds = %271, %143
  %197 = load i8* %i, align 1, !dbg !309          ; [#uses=1 type=i8] [debug line = 309:9]
  %198 = zext i8 %197 to i32, !dbg !309           ; [#uses=1 type=i32] [debug line = 309:9]
  %199 = icmp slt i32 %198, 32, !dbg !309         ; [#uses=1 type=i1] [debug line = 309:9]
  br i1 %199, label %200, label %276, !dbg !309   ; [debug line = 309:9]

; <label>:200                                     ; preds = %196
  %201 = load i8* %i, align 1, !dbg !311          ; [#uses=1 type=i8] [debug line = 309:33]
  %202 = zext i8 %201 to i32, !dbg !311           ; [#uses=1 type=i32] [debug line = 309:33]
  %203 = sub nsw i32 %202, 4, !dbg !311           ; [#uses=1 type=i32] [debug line = 309:33]
  %204 = sext i32 %203 to i64, !dbg !311          ; [#uses=1 type=i64] [debug line = 309:33]
  %205 = load i8** %1, align 8, !dbg !311         ; [#uses=1 type=i8*] [debug line = 309:33]
  %206 = getelementptr inbounds i8* %205, i64 %204, !dbg !311 ; [#uses=1 type=i8*] [debug line = 309:33]
  %207 = load i8* %206, align 1, !dbg !311        ; [#uses=1 type=i8] [debug line = 309:33]
  %208 = zext i8 %207 to i32, !dbg !311           ; [#uses=1 type=i32] [debug line = 309:33]
  %209 = load i8* %i, align 1, !dbg !311          ; [#uses=1 type=i8] [debug line = 309:33]
  %210 = zext i8 %209 to i64, !dbg !311           ; [#uses=1 type=i64] [debug line = 309:33]
  %211 = load i8** %1, align 8, !dbg !311         ; [#uses=1 type=i8*] [debug line = 309:33]
  %212 = getelementptr inbounds i8* %211, i64 %210, !dbg !311 ; [#uses=2 type=i8*] [debug line = 309:33]
  %213 = load i8* %212, align 1, !dbg !311        ; [#uses=1 type=i8] [debug line = 309:33]
  %214 = zext i8 %213 to i32, !dbg !311           ; [#uses=1 type=i32] [debug line = 309:33]
  %215 = xor i32 %214, %208, !dbg !311            ; [#uses=1 type=i32] [debug line = 309:33]
  %216 = trunc i32 %215 to i8, !dbg !311          ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %216, i8* %212, align 1, !dbg !311     ; [debug line = 309:33]
  %217 = load i8* %i, align 1, !dbg !311          ; [#uses=1 type=i8] [debug line = 309:33]
  %218 = zext i8 %217 to i32, !dbg !311           ; [#uses=1 type=i32] [debug line = 309:33]
  %219 = sub nsw i32 %218, 3, !dbg !311           ; [#uses=1 type=i32] [debug line = 309:33]
  %220 = sext i32 %219 to i64, !dbg !311          ; [#uses=1 type=i64] [debug line = 309:33]
  %221 = load i8** %1, align 8, !dbg !311         ; [#uses=1 type=i8*] [debug line = 309:33]
  %222 = getelementptr inbounds i8* %221, i64 %220, !dbg !311 ; [#uses=1 type=i8*] [debug line = 309:33]
  %223 = load i8* %222, align 1, !dbg !311        ; [#uses=1 type=i8] [debug line = 309:33]
  %224 = zext i8 %223 to i32, !dbg !311           ; [#uses=1 type=i32] [debug line = 309:33]
  %225 = load i8* %i, align 1, !dbg !311          ; [#uses=1 type=i8] [debug line = 309:33]
  %226 = zext i8 %225 to i32, !dbg !311           ; [#uses=1 type=i32] [debug line = 309:33]
  %227 = add nsw i32 %226, 1, !dbg !311           ; [#uses=1 type=i32] [debug line = 309:33]
  %228 = sext i32 %227 to i64, !dbg !311          ; [#uses=1 type=i64] [debug line = 309:33]
  %229 = load i8** %1, align 8, !dbg !311         ; [#uses=1 type=i8*] [debug line = 309:33]
  %230 = getelementptr inbounds i8* %229, i64 %228, !dbg !311 ; [#uses=2 type=i8*] [debug line = 309:33]
  %231 = load i8* %230, align 1, !dbg !311        ; [#uses=1 type=i8] [debug line = 309:33]
  %232 = zext i8 %231 to i32, !dbg !311           ; [#uses=1 type=i32] [debug line = 309:33]
  %233 = xor i32 %232, %224, !dbg !311            ; [#uses=1 type=i32] [debug line = 309:33]
  %234 = trunc i32 %233 to i8, !dbg !311          ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %234, i8* %230, align 1, !dbg !311     ; [debug line = 309:33]
  %235 = load i8* %i, align 1, !dbg !311          ; [#uses=1 type=i8] [debug line = 309:33]
  %236 = zext i8 %235 to i32, !dbg !311           ; [#uses=1 type=i32] [debug line = 309:33]
  %237 = sub nsw i32 %236, 2, !dbg !311           ; [#uses=1 type=i32] [debug line = 309:33]
  %238 = sext i32 %237 to i64, !dbg !311          ; [#uses=1 type=i64] [debug line = 309:33]
  %239 = load i8** %1, align 8, !dbg !311         ; [#uses=1 type=i8*] [debug line = 309:33]
  %240 = getelementptr inbounds i8* %239, i64 %238, !dbg !311 ; [#uses=1 type=i8*] [debug line = 309:33]
  %241 = load i8* %240, align 1, !dbg !311        ; [#uses=1 type=i8] [debug line = 309:33]
  %242 = zext i8 %241 to i32, !dbg !311           ; [#uses=1 type=i32] [debug line = 309:33]
  %243 = load i8* %i, align 1, !dbg !311          ; [#uses=1 type=i8] [debug line = 309:33]
  %244 = zext i8 %243 to i32, !dbg !311           ; [#uses=1 type=i32] [debug line = 309:33]
  %245 = add nsw i32 %244, 2, !dbg !311           ; [#uses=1 type=i32] [debug line = 309:33]
  %246 = sext i32 %245 to i64, !dbg !311          ; [#uses=1 type=i64] [debug line = 309:33]
  %247 = load i8** %1, align 8, !dbg !311         ; [#uses=1 type=i8*] [debug line = 309:33]
  %248 = getelementptr inbounds i8* %247, i64 %246, !dbg !311 ; [#uses=2 type=i8*] [debug line = 309:33]
  %249 = load i8* %248, align 1, !dbg !311        ; [#uses=1 type=i8] [debug line = 309:33]
  %250 = zext i8 %249 to i32, !dbg !311           ; [#uses=1 type=i32] [debug line = 309:33]
  %251 = xor i32 %250, %242, !dbg !311            ; [#uses=1 type=i32] [debug line = 309:33]
  %252 = trunc i32 %251 to i8, !dbg !311          ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %252, i8* %248, align 1, !dbg !311     ; [debug line = 309:33]
  %253 = load i8* %i, align 1, !dbg !311          ; [#uses=1 type=i8] [debug line = 309:33]
  %254 = zext i8 %253 to i32, !dbg !311           ; [#uses=1 type=i32] [debug line = 309:33]
  %255 = sub nsw i32 %254, 1, !dbg !311           ; [#uses=1 type=i32] [debug line = 309:33]
  %256 = sext i32 %255 to i64, !dbg !311          ; [#uses=1 type=i64] [debug line = 309:33]
  %257 = load i8** %1, align 8, !dbg !311         ; [#uses=1 type=i8*] [debug line = 309:33]
  %258 = getelementptr inbounds i8* %257, i64 %256, !dbg !311 ; [#uses=1 type=i8*] [debug line = 309:33]
  %259 = load i8* %258, align 1, !dbg !311        ; [#uses=1 type=i8] [debug line = 309:33]
  %260 = zext i8 %259 to i32, !dbg !311           ; [#uses=1 type=i32] [debug line = 309:33]
  %261 = load i8* %i, align 1, !dbg !311          ; [#uses=1 type=i8] [debug line = 309:33]
  %262 = zext i8 %261 to i32, !dbg !311           ; [#uses=1 type=i32] [debug line = 309:33]
  %263 = add nsw i32 %262, 3, !dbg !311           ; [#uses=1 type=i32] [debug line = 309:33]
  %264 = sext i32 %263 to i64, !dbg !311          ; [#uses=1 type=i64] [debug line = 309:33]
  %265 = load i8** %1, align 8, !dbg !311         ; [#uses=1 type=i8*] [debug line = 309:33]
  %266 = getelementptr inbounds i8* %265, i64 %264, !dbg !311 ; [#uses=2 type=i8*] [debug line = 309:33]
  %267 = load i8* %266, align 1, !dbg !311        ; [#uses=1 type=i8] [debug line = 309:33]
  %268 = zext i8 %267 to i32, !dbg !311           ; [#uses=1 type=i32] [debug line = 309:33]
  %269 = xor i32 %268, %260, !dbg !311            ; [#uses=1 type=i32] [debug line = 309:33]
  %270 = trunc i32 %269 to i8, !dbg !311          ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %270, i8* %266, align 1, !dbg !311     ; [debug line = 309:33]
  br label %271, !dbg !311                        ; [debug line = 309:33]

; <label>:271                                     ; preds = %200
  %272 = load i8* %i, align 1, !dbg !312          ; [#uses=1 type=i8] [debug line = 309:25]
  %273 = zext i8 %272 to i32, !dbg !312           ; [#uses=1 type=i32] [debug line = 309:25]
  %274 = add nsw i32 %273, 4, !dbg !312           ; [#uses=1 type=i32] [debug line = 309:25]
  %275 = trunc i32 %274 to i8, !dbg !312          ; [#uses=1 type=i8] [debug line = 309:25]
  store i8 %275, i8* %i, align 1, !dbg !312       ; [debug line = 309:25]
  br label %196, !dbg !312                        ; [debug line = 309:25]

; <label>:276                                     ; preds = %196
  ret void, !dbg !313                             ; [debug line = 312:1]
}

; [#uses=0]
define void @aes_done(%struct.aes_context* %ctx) nounwind uwtable {
  %1 = alloca %struct.aes_context*, align 8       ; [#uses=4 type=%struct.aes_context**]
  %i = alloca i8, align 1                         ; [#uses=7 type=i8*]
  store %struct.aes_context* %ctx, %struct.aes_context** %1, align 8
  call void @llvm.dbg.declare(metadata !{%struct.aes_context** %1}, metadata !314), !dbg !315 ; [debug line = 349:28] [debug variable = ctx]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !316), !dbg !318 ; [debug line = 351:22] [debug variable = i]
  store i8 0, i8* %i, align 1, !dbg !319          ; [debug line = 353:10]
  br label %2, !dbg !319                          ; [debug line = 353:10]

; <label>:2                                       ; preds = %22, %0
  %3 = load i8* %i, align 1, !dbg !319            ; [#uses=1 type=i8] [debug line = 353:10]
  %4 = zext i8 %3 to i64, !dbg !319               ; [#uses=1 type=i64] [debug line = 353:10]
  %5 = icmp ult i64 %4, 32, !dbg !319             ; [#uses=1 type=i1] [debug line = 353:10]
  br i1 %5, label %6, label %25, !dbg !319        ; [debug line = 353:10]

; <label>:6                                       ; preds = %2
  %7 = load i8* %i, align 1, !dbg !321            ; [#uses=1 type=i8] [debug line = 354:9]
  %8 = zext i8 %7 to i64, !dbg !321               ; [#uses=1 type=i64] [debug line = 354:9]
  %9 = load %struct.aes_context** %1, align 8, !dbg !321 ; [#uses=1 type=%struct.aes_context*] [debug line = 354:9]
  %10 = getelementptr inbounds %struct.aes_context* %9, i32 0, i32 2, !dbg !321 ; [#uses=1 type=[32 x i8]*] [debug line = 354:9]
  %11 = getelementptr inbounds [32 x i8]* %10, i32 0, i64 %8, !dbg !321 ; [#uses=1 type=i8*] [debug line = 354:9]
  store i8 0, i8* %11, align 1, !dbg !321         ; [debug line = 354:9]
  %12 = load i8* %i, align 1, !dbg !321           ; [#uses=1 type=i8] [debug line = 354:9]
  %13 = zext i8 %12 to i64, !dbg !321             ; [#uses=1 type=i64] [debug line = 354:9]
  %14 = load %struct.aes_context** %1, align 8, !dbg !321 ; [#uses=1 type=%struct.aes_context*] [debug line = 354:9]
  %15 = getelementptr inbounds %struct.aes_context* %14, i32 0, i32 1, !dbg !321 ; [#uses=1 type=[32 x i8]*] [debug line = 354:9]
  %16 = getelementptr inbounds [32 x i8]* %15, i32 0, i64 %13, !dbg !321 ; [#uses=1 type=i8*] [debug line = 354:9]
  store i8 0, i8* %16, align 1, !dbg !321         ; [debug line = 354:9]
  %17 = load i8* %i, align 1, !dbg !321           ; [#uses=1 type=i8] [debug line = 354:9]
  %18 = zext i8 %17 to i64, !dbg !321             ; [#uses=1 type=i64] [debug line = 354:9]
  %19 = load %struct.aes_context** %1, align 8, !dbg !321 ; [#uses=1 type=%struct.aes_context*] [debug line = 354:9]
  %20 = getelementptr inbounds %struct.aes_context* %19, i32 0, i32 0, !dbg !321 ; [#uses=1 type=[32 x i8]*] [debug line = 354:9]
  %21 = getelementptr inbounds [32 x i8]* %20, i32 0, i64 %18, !dbg !321 ; [#uses=1 type=i8*] [debug line = 354:9]
  store i8 0, i8* %21, align 1, !dbg !321         ; [debug line = 354:9]
  br label %22, !dbg !321                         ; [debug line = 354:9]

; <label>:22                                      ; preds = %6
  %23 = load i8* %i, align 1, !dbg !322           ; [#uses=1 type=i8] [debug line = 353:39]
  %24 = add i8 %23, 1, !dbg !322                  ; [#uses=1 type=i8] [debug line = 353:39]
  store i8 %24, i8* %i, align 1, !dbg !322        ; [debug line = 353:39]
  br label %2, !dbg !322                          ; [debug line = 353:39]

; <label>:25                                      ; preds = %2
  ret void, !dbg !323                             ; [debug line = 355:1]
}

; [#uses=1]
define void @aes_encrypt_ecb(%struct.aes_context* %ctx, i8* %buf) nounwind uwtable {
  %1 = alloca %struct.aes_context*, align 8       ; [#uses=8 type=%struct.aes_context**]
  %2 = alloca i8*, align 8                        ; [#uses=10 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=5 type=i8*]
  %rcon = alloca i8, align 1                      ; [#uses=3 type=i8*]
  store %struct.aes_context* %ctx, %struct.aes_context** %1, align 8
  call void @llvm.dbg.declare(metadata !{%struct.aes_context** %1}, metadata !324), !dbg !325 ; [debug line = 358:35] [debug variable = ctx]
  store i8* %buf, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !326), !dbg !327 ; [debug line = 358:49] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !328), !dbg !330 ; [debug line = 360:13] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i8* %rcon}, metadata !331), !dbg !332 ; [debug line = 360:16] [debug variable = rcon]
  %3 = load i8** %2, align 8, !dbg !333           ; [#uses=1 type=i8*] [debug line = 362:5]
  %4 = load %struct.aes_context** %1, align 8, !dbg !333 ; [#uses=1 type=%struct.aes_context*] [debug line = 362:5]
  %5 = getelementptr inbounds %struct.aes_context* %4, i32 0, i32 1, !dbg !333 ; [#uses=1 type=[32 x i8]*] [debug line = 362:5]
  %6 = getelementptr inbounds [32 x i8]* %5, i32 0, i32 0, !dbg !333 ; [#uses=1 type=i8*] [debug line = 362:5]
  %7 = load %struct.aes_context** %1, align 8, !dbg !333 ; [#uses=1 type=%struct.aes_context*] [debug line = 362:5]
  %8 = getelementptr inbounds %struct.aes_context* %7, i32 0, i32 0, !dbg !333 ; [#uses=1 type=[32 x i8]*] [debug line = 362:5]
  %9 = getelementptr inbounds [32 x i8]* %8, i32 0, i32 0, !dbg !333 ; [#uses=1 type=i8*] [debug line = 362:5]
  call void @aes_addRoundKey_cpy(i8* %3, i8* %6, i8* %9), !dbg !333 ; [debug line = 362:5]
  store i8 1, i8* %i, align 1, !dbg !334          ; [debug line = 363:9]
  store i8 1, i8* %rcon, align 1, !dbg !334       ; [debug line = 363:9]
  br label %10, !dbg !334                         ; [debug line = 363:9]

; <label>:10                                      ; preds = %36, %0
  %11 = load i8* %i, align 1, !dbg !334           ; [#uses=1 type=i8] [debug line = 363:9]
  %12 = zext i8 %11 to i32, !dbg !334             ; [#uses=1 type=i32] [debug line = 363:9]
  %13 = icmp slt i32 %12, 14, !dbg !334           ; [#uses=1 type=i1] [debug line = 363:9]
  br i1 %13, label %14, label %39, !dbg !334      ; [debug line = 363:9]

; <label>:14                                      ; preds = %10
  %15 = load i8** %2, align 8, !dbg !336          ; [#uses=1 type=i8*] [debug line = 365:9]
  call void @aes_subBytes(i8* %15), !dbg !336     ; [debug line = 365:9]
  %16 = load i8** %2, align 8, !dbg !338          ; [#uses=1 type=i8*] [debug line = 366:9]
  call void @aes_shiftRows(i8* %16), !dbg !338    ; [debug line = 366:9]
  %17 = load i8** %2, align 8, !dbg !339          ; [#uses=1 type=i8*] [debug line = 367:9]
  call void @aes_mixColumns(i8* %17), !dbg !339   ; [debug line = 367:9]
  %18 = load i8* %i, align 1, !dbg !340           ; [#uses=1 type=i8] [debug line = 368:9]
  %19 = zext i8 %18 to i32, !dbg !340             ; [#uses=1 type=i32] [debug line = 368:9]
  %20 = and i32 %19, 1, !dbg !340                 ; [#uses=1 type=i32] [debug line = 368:9]
  %21 = icmp ne i32 %20, 0, !dbg !340             ; [#uses=1 type=i1] [debug line = 368:9]
  br i1 %21, label %22, label %27, !dbg !340      ; [debug line = 368:9]

; <label>:22                                      ; preds = %14
  %23 = load i8** %2, align 8, !dbg !341          ; [#uses=1 type=i8*] [debug line = 368:21]
  %24 = load %struct.aes_context** %1, align 8, !dbg !341 ; [#uses=1 type=%struct.aes_context*] [debug line = 368:21]
  %25 = getelementptr inbounds %struct.aes_context* %24, i32 0, i32 0, !dbg !341 ; [#uses=1 type=[32 x i8]*] [debug line = 368:21]
  %26 = getelementptr inbounds [32 x i8]* %25, i32 0, i64 16, !dbg !341 ; [#uses=1 type=i8*] [debug line = 368:21]
  call void @aes_addRoundKey(i8* %23, i8* %26), !dbg !341 ; [debug line = 368:21]
  br label %35, !dbg !341                         ; [debug line = 368:21]

; <label>:27                                      ; preds = %14
  %28 = load %struct.aes_context** %1, align 8, !dbg !342 ; [#uses=1 type=%struct.aes_context*] [debug line = 369:14]
  %29 = getelementptr inbounds %struct.aes_context* %28, i32 0, i32 0, !dbg !342 ; [#uses=1 type=[32 x i8]*] [debug line = 369:14]
  %30 = getelementptr inbounds [32 x i8]* %29, i32 0, i32 0, !dbg !342 ; [#uses=1 type=i8*] [debug line = 369:14]
  call void @aes_expandEncKey(i8* %30, i8* %rcon), !dbg !342 ; [debug line = 369:14]
  %31 = load i8** %2, align 8, !dbg !343          ; [#uses=1 type=i8*] [debug line = 369:49]
  %32 = load %struct.aes_context** %1, align 8, !dbg !343 ; [#uses=1 type=%struct.aes_context*] [debug line = 369:49]
  %33 = getelementptr inbounds %struct.aes_context* %32, i32 0, i32 0, !dbg !343 ; [#uses=1 type=[32 x i8]*] [debug line = 369:49]
  %34 = getelementptr inbounds [32 x i8]* %33, i32 0, i32 0, !dbg !343 ; [#uses=1 type=i8*] [debug line = 369:49]
  call void @aes_addRoundKey(i8* %31, i8* %34), !dbg !343 ; [debug line = 369:49]
  br label %35

; <label>:35                                      ; preds = %27, %22
  br label %36, !dbg !344                         ; [debug line = 370:5]

; <label>:36                                      ; preds = %35
  %37 = load i8* %i, align 1, !dbg !345           ; [#uses=1 type=i8] [debug line = 363:34]
  %38 = add i8 %37, 1, !dbg !345                  ; [#uses=1 type=i8] [debug line = 363:34]
  store i8 %38, i8* %i, align 1, !dbg !345        ; [debug line = 363:34]
  br label %10, !dbg !345                         ; [debug line = 363:34]

; <label>:39                                      ; preds = %10
  %40 = load i8** %2, align 8, !dbg !346          ; [#uses=1 type=i8*] [debug line = 371:5]
  call void @aes_subBytes(i8* %40), !dbg !346     ; [debug line = 371:5]
  %41 = load i8** %2, align 8, !dbg !347          ; [#uses=1 type=i8*] [debug line = 372:5]
  call void @aes_shiftRows(i8* %41), !dbg !347    ; [debug line = 372:5]
  %42 = load %struct.aes_context** %1, align 8, !dbg !348 ; [#uses=1 type=%struct.aes_context*] [debug line = 373:5]
  %43 = getelementptr inbounds %struct.aes_context* %42, i32 0, i32 0, !dbg !348 ; [#uses=1 type=[32 x i8]*] [debug line = 373:5]
  %44 = getelementptr inbounds [32 x i8]* %43, i32 0, i32 0, !dbg !348 ; [#uses=1 type=i8*] [debug line = 373:5]
  call void @aes_expandEncKey(i8* %44, i8* %rcon), !dbg !348 ; [debug line = 373:5]
  %45 = load i8** %2, align 8, !dbg !349          ; [#uses=1 type=i8*] [debug line = 374:5]
  %46 = load %struct.aes_context** %1, align 8, !dbg !349 ; [#uses=1 type=%struct.aes_context*] [debug line = 374:5]
  %47 = getelementptr inbounds %struct.aes_context* %46, i32 0, i32 0, !dbg !349 ; [#uses=1 type=[32 x i8]*] [debug line = 374:5]
  %48 = getelementptr inbounds [32 x i8]* %47, i32 0, i32 0, !dbg !349 ; [#uses=1 type=i8*] [debug line = 374:5]
  call void @aes_addRoundKey(i8* %45, i8* %48), !dbg !349 ; [debug line = 374:5]
  ret void, !dbg !350                             ; [debug line = 375:1]
}

; [#uses=2]
define internal void @aes_addRoundKey_cpy(i8* %buf, i8* %key, i8* %cpk) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %2 = alloca i8*, align 8                        ; [#uses=3 type=i8**]
  %3 = alloca i8*, align 8                        ; [#uses=3 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=8 type=i8*]
  store i8* %buf, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !351), !dbg !352 ; [debug line = 218:42] [debug variable = buf]
  store i8* %key, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !353), !dbg !354 ; [debug line = 218:56] [debug variable = key]
  store i8* %cpk, i8** %3, align 8
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !355), !dbg !356 ; [debug line = 218:70] [debug variable = cpk]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !357), !dbg !359 ; [debug line = 220:22] [debug variable = i]
  store i8 16, i8* %i, align 1, !dbg !360         ; [debug line = 220:28]
  br label %4, !dbg !361                          ; [debug line = 222:5]

; <label>:4                                       ; preds = %8, %0
  %5 = load i8* %i, align 1, !dbg !361            ; [#uses=2 type=i8] [debug line = 222:5]
  %6 = add i8 %5, -1, !dbg !361                   ; [#uses=1 type=i8] [debug line = 222:5]
  store i8 %6, i8* %i, align 1, !dbg !361         ; [debug line = 222:5]
  %7 = icmp ne i8 %5, 0, !dbg !361                ; [#uses=1 type=i1] [debug line = 222:5]
  br i1 %7, label %8, label %40, !dbg !361        ; [debug line = 222:5]

; <label>:8                                       ; preds = %4
  %9 = load i8* %i, align 1, !dbg !362            ; [#uses=1 type=i8] [debug line = 222:17]
  %10 = zext i8 %9 to i64, !dbg !362              ; [#uses=1 type=i64] [debug line = 222:17]
  %11 = load i8** %2, align 8, !dbg !362          ; [#uses=1 type=i8*] [debug line = 222:17]
  %12 = getelementptr inbounds i8* %11, i64 %10, !dbg !362 ; [#uses=1 type=i8*] [debug line = 222:17]
  %13 = load i8* %12, align 1, !dbg !362          ; [#uses=2 type=i8] [debug line = 222:17]
  %14 = load i8* %i, align 1, !dbg !362           ; [#uses=1 type=i8] [debug line = 222:17]
  %15 = zext i8 %14 to i64, !dbg !362             ; [#uses=1 type=i64] [debug line = 222:17]
  %16 = load i8** %3, align 8, !dbg !362          ; [#uses=1 type=i8*] [debug line = 222:17]
  %17 = getelementptr inbounds i8* %16, i64 %15, !dbg !362 ; [#uses=1 type=i8*] [debug line = 222:17]
  store i8 %13, i8* %17, align 1, !dbg !362       ; [debug line = 222:17]
  %18 = zext i8 %13 to i32, !dbg !362             ; [#uses=1 type=i32] [debug line = 222:17]
  %19 = load i8* %i, align 1, !dbg !362           ; [#uses=1 type=i8] [debug line = 222:17]
  %20 = zext i8 %19 to i64, !dbg !362             ; [#uses=1 type=i64] [debug line = 222:17]
  %21 = load i8** %1, align 8, !dbg !362          ; [#uses=1 type=i8*] [debug line = 222:17]
  %22 = getelementptr inbounds i8* %21, i64 %20, !dbg !362 ; [#uses=2 type=i8*] [debug line = 222:17]
  %23 = load i8* %22, align 1, !dbg !362          ; [#uses=1 type=i8] [debug line = 222:17]
  %24 = zext i8 %23 to i32, !dbg !362             ; [#uses=1 type=i32] [debug line = 222:17]
  %25 = xor i32 %24, %18, !dbg !362               ; [#uses=1 type=i32] [debug line = 222:17]
  %26 = trunc i32 %25 to i8, !dbg !362            ; [#uses=1 type=i8] [debug line = 222:17]
  store i8 %26, i8* %22, align 1, !dbg !362       ; [debug line = 222:17]
  %27 = load i8* %i, align 1, !dbg !362           ; [#uses=1 type=i8] [debug line = 222:17]
  %28 = zext i8 %27 to i32, !dbg !362             ; [#uses=1 type=i32] [debug line = 222:17]
  %29 = add nsw i32 16, %28, !dbg !362            ; [#uses=1 type=i32] [debug line = 222:17]
  %30 = sext i32 %29 to i64, !dbg !362            ; [#uses=1 type=i64] [debug line = 222:17]
  %31 = load i8** %2, align 8, !dbg !362          ; [#uses=1 type=i8*] [debug line = 222:17]
  %32 = getelementptr inbounds i8* %31, i64 %30, !dbg !362 ; [#uses=1 type=i8*] [debug line = 222:17]
  %33 = load i8* %32, align 1, !dbg !362          ; [#uses=1 type=i8] [debug line = 222:17]
  %34 = load i8* %i, align 1, !dbg !362           ; [#uses=1 type=i8] [debug line = 222:17]
  %35 = zext i8 %34 to i32, !dbg !362             ; [#uses=1 type=i32] [debug line = 222:17]
  %36 = add nsw i32 16, %35, !dbg !362            ; [#uses=1 type=i32] [debug line = 222:17]
  %37 = sext i32 %36 to i64, !dbg !362            ; [#uses=1 type=i64] [debug line = 222:17]
  %38 = load i8** %3, align 8, !dbg !362          ; [#uses=1 type=i8*] [debug line = 222:17]
  %39 = getelementptr inbounds i8* %38, i64 %37, !dbg !362 ; [#uses=1 type=i8*] [debug line = 222:17]
  store i8 %33, i8* %39, align 1, !dbg !362       ; [debug line = 222:17]
  br label %4, !dbg !362                          ; [debug line = 222:17]

; <label>:40                                      ; preds = %4
  ret void, !dbg !363                             ; [debug line = 223:1]
}

; [#uses=2]
define internal void @aes_subBytes(i8* %buf) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=3 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=5 type=i8*]
  store i8* %buf, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !364), !dbg !365 ; [debug line = 194:35] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !366), !dbg !368 ; [debug line = 196:22] [debug variable = i]
  store i8 16, i8* %i, align 1, !dbg !369         ; [debug line = 196:28]
  br label %2, !dbg !370                          ; [debug line = 198:5]

; <label>:2                                       ; preds = %6, %0
  %3 = load i8* %i, align 1, !dbg !370            ; [#uses=2 type=i8] [debug line = 198:5]
  %4 = add i8 %3, -1, !dbg !370                   ; [#uses=1 type=i8] [debug line = 198:5]
  store i8 %4, i8* %i, align 1, !dbg !370         ; [debug line = 198:5]
  %5 = icmp ne i8 %3, 0, !dbg !370                ; [#uses=1 type=i1] [debug line = 198:5]
  br i1 %5, label %6, label %19, !dbg !370        ; [debug line = 198:5]

; <label>:6                                       ; preds = %2
  %7 = load i8* %i, align 1, !dbg !371            ; [#uses=1 type=i8] [debug line = 198:17]
  %8 = zext i8 %7 to i64, !dbg !371               ; [#uses=1 type=i64] [debug line = 198:17]
  %9 = load i8** %1, align 8, !dbg !371           ; [#uses=1 type=i8*] [debug line = 198:17]
  %10 = getelementptr inbounds i8* %9, i64 %8, !dbg !371 ; [#uses=1 type=i8*] [debug line = 198:17]
  %11 = load i8* %10, align 1, !dbg !371          ; [#uses=1 type=i8] [debug line = 198:17]
  %12 = zext i8 %11 to i64, !dbg !371             ; [#uses=1 type=i64] [debug line = 198:17]
  %13 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %12, !dbg !371 ; [#uses=1 type=i8*] [debug line = 198:17]
  %14 = load i8* %13, align 1, !dbg !371          ; [#uses=1 type=i8] [debug line = 198:17]
  %15 = load i8* %i, align 1, !dbg !371           ; [#uses=1 type=i8] [debug line = 198:17]
  %16 = zext i8 %15 to i64, !dbg !371             ; [#uses=1 type=i64] [debug line = 198:17]
  %17 = load i8** %1, align 8, !dbg !371          ; [#uses=1 type=i8*] [debug line = 198:17]
  %18 = getelementptr inbounds i8* %17, i64 %16, !dbg !371 ; [#uses=1 type=i8*] [debug line = 198:17]
  store i8 %14, i8* %18, align 1, !dbg !371       ; [debug line = 198:17]
  br label %2, !dbg !371                          ; [debug line = 198:17]

; <label>:19                                      ; preds = %2
  ret void, !dbg !372                             ; [debug line = 199:1]
}

; [#uses=2]
define internal void @aes_shiftRows(i8* %buf) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=25 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=4 type=i8*]
  %j = alloca i8, align 1                         ; [#uses=4 type=i8*]
  store i8* %buf, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !373), !dbg !374 ; [debug line = 227:36] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !375), !dbg !377 ; [debug line = 229:22] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i8* %j}, metadata !378), !dbg !379 ; [debug line = 229:25] [debug variable = j]
  %2 = load i8** %1, align 8, !dbg !380           ; [#uses=1 type=i8*] [debug line = 231:5]
  %3 = getelementptr inbounds i8* %2, i64 1, !dbg !380 ; [#uses=1 type=i8*] [debug line = 231:5]
  %4 = load i8* %3, align 1, !dbg !380            ; [#uses=1 type=i8] [debug line = 231:5]
  store i8 %4, i8* %i, align 1, !dbg !380         ; [debug line = 231:5]
  %5 = load i8** %1, align 8, !dbg !380           ; [#uses=1 type=i8*] [debug line = 231:5]
  %6 = getelementptr inbounds i8* %5, i64 5, !dbg !380 ; [#uses=1 type=i8*] [debug line = 231:5]
  %7 = load i8* %6, align 1, !dbg !380            ; [#uses=1 type=i8] [debug line = 231:5]
  %8 = load i8** %1, align 8, !dbg !380           ; [#uses=1 type=i8*] [debug line = 231:5]
  %9 = getelementptr inbounds i8* %8, i64 1, !dbg !380 ; [#uses=1 type=i8*] [debug line = 231:5]
  store i8 %7, i8* %9, align 1, !dbg !380         ; [debug line = 231:5]
  %10 = load i8** %1, align 8, !dbg !380          ; [#uses=1 type=i8*] [debug line = 231:5]
  %11 = getelementptr inbounds i8* %10, i64 9, !dbg !380 ; [#uses=1 type=i8*] [debug line = 231:5]
  %12 = load i8* %11, align 1, !dbg !380          ; [#uses=1 type=i8] [debug line = 231:5]
  %13 = load i8** %1, align 8, !dbg !380          ; [#uses=1 type=i8*] [debug line = 231:5]
  %14 = getelementptr inbounds i8* %13, i64 5, !dbg !380 ; [#uses=1 type=i8*] [debug line = 231:5]
  store i8 %12, i8* %14, align 1, !dbg !380       ; [debug line = 231:5]
  %15 = load i8** %1, align 8, !dbg !380          ; [#uses=1 type=i8*] [debug line = 231:5]
  %16 = getelementptr inbounds i8* %15, i64 13, !dbg !380 ; [#uses=1 type=i8*] [debug line = 231:5]
  %17 = load i8* %16, align 1, !dbg !380          ; [#uses=1 type=i8] [debug line = 231:5]
  %18 = load i8** %1, align 8, !dbg !380          ; [#uses=1 type=i8*] [debug line = 231:5]
  %19 = getelementptr inbounds i8* %18, i64 9, !dbg !380 ; [#uses=1 type=i8*] [debug line = 231:5]
  store i8 %17, i8* %19, align 1, !dbg !380       ; [debug line = 231:5]
  %20 = load i8* %i, align 1, !dbg !380           ; [#uses=1 type=i8] [debug line = 231:5]
  %21 = load i8** %1, align 8, !dbg !380          ; [#uses=1 type=i8*] [debug line = 231:5]
  %22 = getelementptr inbounds i8* %21, i64 13, !dbg !380 ; [#uses=1 type=i8*] [debug line = 231:5]
  store i8 %20, i8* %22, align 1, !dbg !380       ; [debug line = 231:5]
  %23 = load i8** %1, align 8, !dbg !381          ; [#uses=1 type=i8*] [debug line = 232:5]
  %24 = getelementptr inbounds i8* %23, i64 10, !dbg !381 ; [#uses=1 type=i8*] [debug line = 232:5]
  %25 = load i8* %24, align 1, !dbg !381          ; [#uses=1 type=i8] [debug line = 232:5]
  store i8 %25, i8* %i, align 1, !dbg !381        ; [debug line = 232:5]
  %26 = load i8** %1, align 8, !dbg !381          ; [#uses=1 type=i8*] [debug line = 232:5]
  %27 = getelementptr inbounds i8* %26, i64 2, !dbg !381 ; [#uses=1 type=i8*] [debug line = 232:5]
  %28 = load i8* %27, align 1, !dbg !381          ; [#uses=1 type=i8] [debug line = 232:5]
  %29 = load i8** %1, align 8, !dbg !381          ; [#uses=1 type=i8*] [debug line = 232:5]
  %30 = getelementptr inbounds i8* %29, i64 10, !dbg !381 ; [#uses=1 type=i8*] [debug line = 232:5]
  store i8 %28, i8* %30, align 1, !dbg !381       ; [debug line = 232:5]
  %31 = load i8* %i, align 1, !dbg !381           ; [#uses=1 type=i8] [debug line = 232:5]
  %32 = load i8** %1, align 8, !dbg !381          ; [#uses=1 type=i8*] [debug line = 232:5]
  %33 = getelementptr inbounds i8* %32, i64 2, !dbg !381 ; [#uses=1 type=i8*] [debug line = 232:5]
  store i8 %31, i8* %33, align 1, !dbg !381       ; [debug line = 232:5]
  %34 = load i8** %1, align 8, !dbg !382          ; [#uses=1 type=i8*] [debug line = 233:5]
  %35 = getelementptr inbounds i8* %34, i64 3, !dbg !382 ; [#uses=1 type=i8*] [debug line = 233:5]
  %36 = load i8* %35, align 1, !dbg !382          ; [#uses=1 type=i8] [debug line = 233:5]
  store i8 %36, i8* %j, align 1, !dbg !382        ; [debug line = 233:5]
  %37 = load i8** %1, align 8, !dbg !382          ; [#uses=1 type=i8*] [debug line = 233:5]
  %38 = getelementptr inbounds i8* %37, i64 15, !dbg !382 ; [#uses=1 type=i8*] [debug line = 233:5]
  %39 = load i8* %38, align 1, !dbg !382          ; [#uses=1 type=i8] [debug line = 233:5]
  %40 = load i8** %1, align 8, !dbg !382          ; [#uses=1 type=i8*] [debug line = 233:5]
  %41 = getelementptr inbounds i8* %40, i64 3, !dbg !382 ; [#uses=1 type=i8*] [debug line = 233:5]
  store i8 %39, i8* %41, align 1, !dbg !382       ; [debug line = 233:5]
  %42 = load i8** %1, align 8, !dbg !382          ; [#uses=1 type=i8*] [debug line = 233:5]
  %43 = getelementptr inbounds i8* %42, i64 11, !dbg !382 ; [#uses=1 type=i8*] [debug line = 233:5]
  %44 = load i8* %43, align 1, !dbg !382          ; [#uses=1 type=i8] [debug line = 233:5]
  %45 = load i8** %1, align 8, !dbg !382          ; [#uses=1 type=i8*] [debug line = 233:5]
  %46 = getelementptr inbounds i8* %45, i64 15, !dbg !382 ; [#uses=1 type=i8*] [debug line = 233:5]
  store i8 %44, i8* %46, align 1, !dbg !382       ; [debug line = 233:5]
  %47 = load i8** %1, align 8, !dbg !382          ; [#uses=1 type=i8*] [debug line = 233:5]
  %48 = getelementptr inbounds i8* %47, i64 7, !dbg !382 ; [#uses=1 type=i8*] [debug line = 233:5]
  %49 = load i8* %48, align 1, !dbg !382          ; [#uses=1 type=i8] [debug line = 233:5]
  %50 = load i8** %1, align 8, !dbg !382          ; [#uses=1 type=i8*] [debug line = 233:5]
  %51 = getelementptr inbounds i8* %50, i64 11, !dbg !382 ; [#uses=1 type=i8*] [debug line = 233:5]
  store i8 %49, i8* %51, align 1, !dbg !382       ; [debug line = 233:5]
  %52 = load i8* %j, align 1, !dbg !382           ; [#uses=1 type=i8] [debug line = 233:5]
  %53 = load i8** %1, align 8, !dbg !382          ; [#uses=1 type=i8*] [debug line = 233:5]
  %54 = getelementptr inbounds i8* %53, i64 7, !dbg !382 ; [#uses=1 type=i8*] [debug line = 233:5]
  store i8 %52, i8* %54, align 1, !dbg !382       ; [debug line = 233:5]
  %55 = load i8** %1, align 8, !dbg !383          ; [#uses=1 type=i8*] [debug line = 234:5]
  %56 = getelementptr inbounds i8* %55, i64 14, !dbg !383 ; [#uses=1 type=i8*] [debug line = 234:5]
  %57 = load i8* %56, align 1, !dbg !383          ; [#uses=1 type=i8] [debug line = 234:5]
  store i8 %57, i8* %j, align 1, !dbg !383        ; [debug line = 234:5]
  %58 = load i8** %1, align 8, !dbg !383          ; [#uses=1 type=i8*] [debug line = 234:5]
  %59 = getelementptr inbounds i8* %58, i64 6, !dbg !383 ; [#uses=1 type=i8*] [debug line = 234:5]
  %60 = load i8* %59, align 1, !dbg !383          ; [#uses=1 type=i8] [debug line = 234:5]
  %61 = load i8** %1, align 8, !dbg !383          ; [#uses=1 type=i8*] [debug line = 234:5]
  %62 = getelementptr inbounds i8* %61, i64 14, !dbg !383 ; [#uses=1 type=i8*] [debug line = 234:5]
  store i8 %60, i8* %62, align 1, !dbg !383       ; [debug line = 234:5]
  %63 = load i8* %j, align 1, !dbg !383           ; [#uses=1 type=i8] [debug line = 234:5]
  %64 = load i8** %1, align 8, !dbg !383          ; [#uses=1 type=i8*] [debug line = 234:5]
  %65 = getelementptr inbounds i8* %64, i64 6, !dbg !383 ; [#uses=1 type=i8*] [debug line = 234:5]
  store i8 %63, i8* %65, align 1, !dbg !383       ; [debug line = 234:5]
  ret void, !dbg !384                             ; [debug line = 236:1]
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
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !385), !dbg !386 ; [debug line = 251:37] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !387), !dbg !389 ; [debug line = 253:22] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i8* %a}, metadata !390), !dbg !391 ; [debug line = 253:25] [debug variable = a]
  call void @llvm.dbg.declare(metadata !{i8* %b}, metadata !392), !dbg !393 ; [debug line = 253:28] [debug variable = b]
  call void @llvm.dbg.declare(metadata !{i8* %c}, metadata !394), !dbg !395 ; [debug line = 253:31] [debug variable = c]
  call void @llvm.dbg.declare(metadata !{i8* %d}, metadata !396), !dbg !397 ; [debug line = 253:34] [debug variable = d]
  call void @llvm.dbg.declare(metadata !{i8* %e}, metadata !398), !dbg !399 ; [debug line = 253:37] [debug variable = e]
  store i8 0, i8* %i, align 1, !dbg !400          ; [debug line = 255:10]
  br label %2, !dbg !400                          ; [debug line = 255:10]

; <label>:2                                       ; preds = %127, %0
  %3 = load i8* %i, align 1, !dbg !400            ; [#uses=1 type=i8] [debug line = 255:10]
  %4 = zext i8 %3 to i32, !dbg !400               ; [#uses=1 type=i32] [debug line = 255:10]
  %5 = icmp slt i32 %4, 16, !dbg !400             ; [#uses=1 type=i1] [debug line = 255:10]
  br i1 %5, label %6, label %132, !dbg !400       ; [debug line = 255:10]

; <label>:6                                       ; preds = %2
  %7 = load i8* %i, align 1, !dbg !402            ; [#uses=1 type=i8] [debug line = 257:9]
  %8 = zext i8 %7 to i64, !dbg !402               ; [#uses=1 type=i64] [debug line = 257:9]
  %9 = load i8** %1, align 8, !dbg !402           ; [#uses=1 type=i8*] [debug line = 257:9]
  %10 = getelementptr inbounds i8* %9, i64 %8, !dbg !402 ; [#uses=1 type=i8*] [debug line = 257:9]
  %11 = load i8* %10, align 1, !dbg !402          ; [#uses=1 type=i8] [debug line = 257:9]
  store i8 %11, i8* %a, align 1, !dbg !402        ; [debug line = 257:9]
  %12 = load i8* %i, align 1, !dbg !404           ; [#uses=1 type=i8] [debug line = 258:9]
  %13 = zext i8 %12 to i32, !dbg !404             ; [#uses=1 type=i32] [debug line = 258:9]
  %14 = add nsw i32 %13, 1, !dbg !404             ; [#uses=1 type=i32] [debug line = 258:9]
  %15 = sext i32 %14 to i64, !dbg !404            ; [#uses=1 type=i64] [debug line = 258:9]
  %16 = load i8** %1, align 8, !dbg !404          ; [#uses=1 type=i8*] [debug line = 258:9]
  %17 = getelementptr inbounds i8* %16, i64 %15, !dbg !404 ; [#uses=1 type=i8*] [debug line = 258:9]
  %18 = load i8* %17, align 1, !dbg !404          ; [#uses=1 type=i8] [debug line = 258:9]
  store i8 %18, i8* %b, align 1, !dbg !404        ; [debug line = 258:9]
  %19 = load i8* %i, align 1, !dbg !405           ; [#uses=1 type=i8] [debug line = 259:9]
  %20 = zext i8 %19 to i32, !dbg !405             ; [#uses=1 type=i32] [debug line = 259:9]
  %21 = add nsw i32 %20, 2, !dbg !405             ; [#uses=1 type=i32] [debug line = 259:9]
  %22 = sext i32 %21 to i64, !dbg !405            ; [#uses=1 type=i64] [debug line = 259:9]
  %23 = load i8** %1, align 8, !dbg !405          ; [#uses=1 type=i8*] [debug line = 259:9]
  %24 = getelementptr inbounds i8* %23, i64 %22, !dbg !405 ; [#uses=1 type=i8*] [debug line = 259:9]
  %25 = load i8* %24, align 1, !dbg !405          ; [#uses=1 type=i8] [debug line = 259:9]
  store i8 %25, i8* %c, align 1, !dbg !405        ; [debug line = 259:9]
  %26 = load i8* %i, align 1, !dbg !406           ; [#uses=1 type=i8] [debug line = 260:9]
  %27 = zext i8 %26 to i32, !dbg !406             ; [#uses=1 type=i32] [debug line = 260:9]
  %28 = add nsw i32 %27, 3, !dbg !406             ; [#uses=1 type=i32] [debug line = 260:9]
  %29 = sext i32 %28 to i64, !dbg !406            ; [#uses=1 type=i64] [debug line = 260:9]
  %30 = load i8** %1, align 8, !dbg !406          ; [#uses=1 type=i8*] [debug line = 260:9]
  %31 = getelementptr inbounds i8* %30, i64 %29, !dbg !406 ; [#uses=1 type=i8*] [debug line = 260:9]
  %32 = load i8* %31, align 1, !dbg !406          ; [#uses=1 type=i8] [debug line = 260:9]
  store i8 %32, i8* %d, align 1, !dbg !406        ; [debug line = 260:9]
  %33 = load i8* %a, align 1, !dbg !407           ; [#uses=1 type=i8] [debug line = 261:9]
  %34 = zext i8 %33 to i32, !dbg !407             ; [#uses=1 type=i32] [debug line = 261:9]
  %35 = load i8* %b, align 1, !dbg !407           ; [#uses=1 type=i8] [debug line = 261:9]
  %36 = zext i8 %35 to i32, !dbg !407             ; [#uses=1 type=i32] [debug line = 261:9]
  %37 = xor i32 %34, %36, !dbg !407               ; [#uses=1 type=i32] [debug line = 261:9]
  %38 = load i8* %c, align 1, !dbg !407           ; [#uses=1 type=i8] [debug line = 261:9]
  %39 = zext i8 %38 to i32, !dbg !407             ; [#uses=1 type=i32] [debug line = 261:9]
  %40 = xor i32 %37, %39, !dbg !407               ; [#uses=1 type=i32] [debug line = 261:9]
  %41 = load i8* %d, align 1, !dbg !407           ; [#uses=1 type=i8] [debug line = 261:9]
  %42 = zext i8 %41 to i32, !dbg !407             ; [#uses=1 type=i32] [debug line = 261:9]
  %43 = xor i32 %40, %42, !dbg !407               ; [#uses=1 type=i32] [debug line = 261:9]
  %44 = trunc i32 %43 to i8, !dbg !407            ; [#uses=1 type=i8] [debug line = 261:9]
  store i8 %44, i8* %e, align 1, !dbg !407        ; [debug line = 261:9]
  %45 = load i8* %e, align 1, !dbg !408           ; [#uses=1 type=i8] [debug line = 262:9]
  %46 = zext i8 %45 to i32, !dbg !408             ; [#uses=1 type=i32] [debug line = 262:9]
  %47 = load i8* %a, align 1, !dbg !409           ; [#uses=1 type=i8] [debug line = 262:23]
  %48 = zext i8 %47 to i32, !dbg !409             ; [#uses=1 type=i32] [debug line = 262:23]
  %49 = load i8* %b, align 1, !dbg !409           ; [#uses=1 type=i8] [debug line = 262:23]
  %50 = zext i8 %49 to i32, !dbg !409             ; [#uses=1 type=i32] [debug line = 262:23]
  %51 = xor i32 %48, %50, !dbg !409               ; [#uses=1 type=i32] [debug line = 262:23]
  %52 = trunc i32 %51 to i8, !dbg !409            ; [#uses=1 type=i8] [debug line = 262:23]
  %53 = call zeroext i8 @rj_xtime(i8 zeroext %52), !dbg !409 ; [#uses=1 type=i8] [debug line = 262:23]
  %54 = zext i8 %53 to i32, !dbg !409             ; [#uses=1 type=i32] [debug line = 262:23]
  %55 = xor i32 %46, %54, !dbg !409               ; [#uses=1 type=i32] [debug line = 262:23]
  %56 = load i8* %i, align 1, !dbg !409           ; [#uses=1 type=i8] [debug line = 262:23]
  %57 = zext i8 %56 to i64, !dbg !409             ; [#uses=1 type=i64] [debug line = 262:23]
  %58 = load i8** %1, align 8, !dbg !409          ; [#uses=1 type=i8*] [debug line = 262:23]
  %59 = getelementptr inbounds i8* %58, i64 %57, !dbg !409 ; [#uses=2 type=i8*] [debug line = 262:23]
  %60 = load i8* %59, align 1, !dbg !409          ; [#uses=1 type=i8] [debug line = 262:23]
  %61 = zext i8 %60 to i32, !dbg !409             ; [#uses=1 type=i32] [debug line = 262:23]
  %62 = xor i32 %61, %55, !dbg !409               ; [#uses=1 type=i32] [debug line = 262:23]
  %63 = trunc i32 %62 to i8, !dbg !409            ; [#uses=1 type=i8] [debug line = 262:23]
  store i8 %63, i8* %59, align 1, !dbg !409       ; [debug line = 262:23]
  %64 = load i8* %e, align 1, !dbg !410           ; [#uses=1 type=i8] [debug line = 263:9]
  %65 = zext i8 %64 to i32, !dbg !410             ; [#uses=1 type=i32] [debug line = 263:9]
  %66 = load i8* %b, align 1, !dbg !411           ; [#uses=1 type=i8] [debug line = 263:27]
  %67 = zext i8 %66 to i32, !dbg !411             ; [#uses=1 type=i32] [debug line = 263:27]
  %68 = load i8* %c, align 1, !dbg !411           ; [#uses=1 type=i8] [debug line = 263:27]
  %69 = zext i8 %68 to i32, !dbg !411             ; [#uses=1 type=i32] [debug line = 263:27]
  %70 = xor i32 %67, %69, !dbg !411               ; [#uses=1 type=i32] [debug line = 263:27]
  %71 = trunc i32 %70 to i8, !dbg !411            ; [#uses=1 type=i8] [debug line = 263:27]
  %72 = call zeroext i8 @rj_xtime(i8 zeroext %71), !dbg !411 ; [#uses=1 type=i8] [debug line = 263:27]
  %73 = zext i8 %72 to i32, !dbg !411             ; [#uses=1 type=i32] [debug line = 263:27]
  %74 = xor i32 %65, %73, !dbg !411               ; [#uses=1 type=i32] [debug line = 263:27]
  %75 = load i8* %i, align 1, !dbg !411           ; [#uses=1 type=i8] [debug line = 263:27]
  %76 = zext i8 %75 to i32, !dbg !411             ; [#uses=1 type=i32] [debug line = 263:27]
  %77 = add nsw i32 %76, 1, !dbg !411             ; [#uses=1 type=i32] [debug line = 263:27]
  %78 = sext i32 %77 to i64, !dbg !411            ; [#uses=1 type=i64] [debug line = 263:27]
  %79 = load i8** %1, align 8, !dbg !411          ; [#uses=1 type=i8*] [debug line = 263:27]
  %80 = getelementptr inbounds i8* %79, i64 %78, !dbg !411 ; [#uses=2 type=i8*] [debug line = 263:27]
  %81 = load i8* %80, align 1, !dbg !411          ; [#uses=1 type=i8] [debug line = 263:27]
  %82 = zext i8 %81 to i32, !dbg !411             ; [#uses=1 type=i32] [debug line = 263:27]
  %83 = xor i32 %82, %74, !dbg !411               ; [#uses=1 type=i32] [debug line = 263:27]
  %84 = trunc i32 %83 to i8, !dbg !411            ; [#uses=1 type=i8] [debug line = 263:27]
  store i8 %84, i8* %80, align 1, !dbg !411       ; [debug line = 263:27]
  %85 = load i8* %e, align 1, !dbg !412           ; [#uses=1 type=i8] [debug line = 264:9]
  %86 = zext i8 %85 to i32, !dbg !412             ; [#uses=1 type=i32] [debug line = 264:9]
  %87 = load i8* %c, align 1, !dbg !413           ; [#uses=1 type=i8] [debug line = 264:27]
  %88 = zext i8 %87 to i32, !dbg !413             ; [#uses=1 type=i32] [debug line = 264:27]
  %89 = load i8* %d, align 1, !dbg !413           ; [#uses=1 type=i8] [debug line = 264:27]
  %90 = zext i8 %89 to i32, !dbg !413             ; [#uses=1 type=i32] [debug line = 264:27]
  %91 = xor i32 %88, %90, !dbg !413               ; [#uses=1 type=i32] [debug line = 264:27]
  %92 = trunc i32 %91 to i8, !dbg !413            ; [#uses=1 type=i8] [debug line = 264:27]
  %93 = call zeroext i8 @rj_xtime(i8 zeroext %92), !dbg !413 ; [#uses=1 type=i8] [debug line = 264:27]
  %94 = zext i8 %93 to i32, !dbg !413             ; [#uses=1 type=i32] [debug line = 264:27]
  %95 = xor i32 %86, %94, !dbg !413               ; [#uses=1 type=i32] [debug line = 264:27]
  %96 = load i8* %i, align 1, !dbg !413           ; [#uses=1 type=i8] [debug line = 264:27]
  %97 = zext i8 %96 to i32, !dbg !413             ; [#uses=1 type=i32] [debug line = 264:27]
  %98 = add nsw i32 %97, 2, !dbg !413             ; [#uses=1 type=i32] [debug line = 264:27]
  %99 = sext i32 %98 to i64, !dbg !413            ; [#uses=1 type=i64] [debug line = 264:27]
  %100 = load i8** %1, align 8, !dbg !413         ; [#uses=1 type=i8*] [debug line = 264:27]
  %101 = getelementptr inbounds i8* %100, i64 %99, !dbg !413 ; [#uses=2 type=i8*] [debug line = 264:27]
  %102 = load i8* %101, align 1, !dbg !413        ; [#uses=1 type=i8] [debug line = 264:27]
  %103 = zext i8 %102 to i32, !dbg !413           ; [#uses=1 type=i32] [debug line = 264:27]
  %104 = xor i32 %103, %95, !dbg !413             ; [#uses=1 type=i32] [debug line = 264:27]
  %105 = trunc i32 %104 to i8, !dbg !413          ; [#uses=1 type=i8] [debug line = 264:27]
  store i8 %105, i8* %101, align 1, !dbg !413     ; [debug line = 264:27]
  %106 = load i8* %e, align 1, !dbg !414          ; [#uses=1 type=i8] [debug line = 265:9]
  %107 = zext i8 %106 to i32, !dbg !414           ; [#uses=1 type=i32] [debug line = 265:9]
  %108 = load i8* %d, align 1, !dbg !415          ; [#uses=1 type=i8] [debug line = 265:27]
  %109 = zext i8 %108 to i32, !dbg !415           ; [#uses=1 type=i32] [debug line = 265:27]
  %110 = load i8* %a, align 1, !dbg !415          ; [#uses=1 type=i8] [debug line = 265:27]
  %111 = zext i8 %110 to i32, !dbg !415           ; [#uses=1 type=i32] [debug line = 265:27]
  %112 = xor i32 %109, %111, !dbg !415            ; [#uses=1 type=i32] [debug line = 265:27]
  %113 = trunc i32 %112 to i8, !dbg !415          ; [#uses=1 type=i8] [debug line = 265:27]
  %114 = call zeroext i8 @rj_xtime(i8 zeroext %113), !dbg !415 ; [#uses=1 type=i8] [debug line = 265:27]
  %115 = zext i8 %114 to i32, !dbg !415           ; [#uses=1 type=i32] [debug line = 265:27]
  %116 = xor i32 %107, %115, !dbg !415            ; [#uses=1 type=i32] [debug line = 265:27]
  %117 = load i8* %i, align 1, !dbg !415          ; [#uses=1 type=i8] [debug line = 265:27]
  %118 = zext i8 %117 to i32, !dbg !415           ; [#uses=1 type=i32] [debug line = 265:27]
  %119 = add nsw i32 %118, 3, !dbg !415           ; [#uses=1 type=i32] [debug line = 265:27]
  %120 = sext i32 %119 to i64, !dbg !415          ; [#uses=1 type=i64] [debug line = 265:27]
  %121 = load i8** %1, align 8, !dbg !415         ; [#uses=1 type=i8*] [debug line = 265:27]
  %122 = getelementptr inbounds i8* %121, i64 %120, !dbg !415 ; [#uses=2 type=i8*] [debug line = 265:27]
  %123 = load i8* %122, align 1, !dbg !415        ; [#uses=1 type=i8] [debug line = 265:27]
  %124 = zext i8 %123 to i32, !dbg !415           ; [#uses=1 type=i32] [debug line = 265:27]
  %125 = xor i32 %124, %116, !dbg !415            ; [#uses=1 type=i32] [debug line = 265:27]
  %126 = trunc i32 %125 to i8, !dbg !415          ; [#uses=1 type=i8] [debug line = 265:27]
  store i8 %126, i8* %122, align 1, !dbg !415     ; [debug line = 265:27]
  br label %127, !dbg !416                        ; [debug line = 266:5]

; <label>:127                                     ; preds = %6
  %128 = load i8* %i, align 1, !dbg !417          ; [#uses=1 type=i8] [debug line = 255:25]
  %129 = zext i8 %128 to i32, !dbg !417           ; [#uses=1 type=i32] [debug line = 255:25]
  %130 = add nsw i32 %129, 4, !dbg !417           ; [#uses=1 type=i32] [debug line = 255:25]
  %131 = trunc i32 %130 to i8, !dbg !417          ; [#uses=1 type=i8] [debug line = 255:25]
  store i8 %131, i8* %i, align 1, !dbg !417       ; [debug line = 255:25]
  br label %2, !dbg !417                          ; [debug line = 255:25]

; <label>:132                                     ; preds = %2
  ret void, !dbg !418                             ; [debug line = 267:1]
}

; [#uses=6]
define internal void @aes_addRoundKey(i8* %buf, i8* %key) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %2 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=5 type=i8*]
  store i8* %buf, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !419), !dbg !420 ; [debug line = 210:38] [debug variable = buf]
  store i8* %key, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !421), !dbg !422 ; [debug line = 210:52] [debug variable = key]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !423), !dbg !425 ; [debug line = 212:22] [debug variable = i]
  store i8 16, i8* %i, align 1, !dbg !426         ; [debug line = 212:28]
  br label %3, !dbg !427                          ; [debug line = 214:5]

; <label>:3                                       ; preds = %7, %0
  %4 = load i8* %i, align 1, !dbg !427            ; [#uses=2 type=i8] [debug line = 214:5]
  %5 = add i8 %4, -1, !dbg !427                   ; [#uses=1 type=i8] [debug line = 214:5]
  store i8 %5, i8* %i, align 1, !dbg !427         ; [debug line = 214:5]
  %6 = icmp ne i8 %4, 0, !dbg !427                ; [#uses=1 type=i1] [debug line = 214:5]
  br i1 %6, label %7, label %22, !dbg !427        ; [debug line = 214:5]

; <label>:7                                       ; preds = %3
  %8 = load i8* %i, align 1, !dbg !428            ; [#uses=1 type=i8] [debug line = 214:17]
  %9 = zext i8 %8 to i64, !dbg !428               ; [#uses=1 type=i64] [debug line = 214:17]
  %10 = load i8** %2, align 8, !dbg !428          ; [#uses=1 type=i8*] [debug line = 214:17]
  %11 = getelementptr inbounds i8* %10, i64 %9, !dbg !428 ; [#uses=1 type=i8*] [debug line = 214:17]
  %12 = load i8* %11, align 1, !dbg !428          ; [#uses=1 type=i8] [debug line = 214:17]
  %13 = zext i8 %12 to i32, !dbg !428             ; [#uses=1 type=i32] [debug line = 214:17]
  %14 = load i8* %i, align 1, !dbg !428           ; [#uses=1 type=i8] [debug line = 214:17]
  %15 = zext i8 %14 to i64, !dbg !428             ; [#uses=1 type=i64] [debug line = 214:17]
  %16 = load i8** %1, align 8, !dbg !428          ; [#uses=1 type=i8*] [debug line = 214:17]
  %17 = getelementptr inbounds i8* %16, i64 %15, !dbg !428 ; [#uses=2 type=i8*] [debug line = 214:17]
  %18 = load i8* %17, align 1, !dbg !428          ; [#uses=1 type=i8] [debug line = 214:17]
  %19 = zext i8 %18 to i32, !dbg !428             ; [#uses=1 type=i32] [debug line = 214:17]
  %20 = xor i32 %19, %13, !dbg !428               ; [#uses=1 type=i32] [debug line = 214:17]
  %21 = trunc i32 %20 to i8, !dbg !428            ; [#uses=1 type=i8] [debug line = 214:17]
  store i8 %21, i8* %17, align 1, !dbg !428       ; [debug line = 214:17]
  br label %3, !dbg !428                          ; [debug line = 214:17]

; <label>:22                                      ; preds = %3
  ret void, !dbg !429                             ; [debug line = 215:1]
}

; [#uses=1]
define void @aes_decrypt_ecb(%struct.aes_context* %ctx, i8* %buf) nounwind uwtable {
  %1 = alloca %struct.aes_context*, align 8       ; [#uses=7 type=%struct.aes_context**]
  %2 = alloca i8*, align 8                        ; [#uses=10 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=4 type=i8*]
  %rcon = alloca i8, align 1                      ; [#uses=2 type=i8*]
  store %struct.aes_context* %ctx, %struct.aes_context** %1, align 8
  call void @llvm.dbg.declare(metadata !{%struct.aes_context** %1}, metadata !430), !dbg !431 ; [debug line = 378:35] [debug variable = ctx]
  store i8* %buf, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !432), !dbg !433 ; [debug line = 378:49] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !434), !dbg !436 ; [debug line = 380:13] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i8* %rcon}, metadata !437), !dbg !438 ; [debug line = 380:16] [debug variable = rcon]
  %3 = load i8** %2, align 8, !dbg !439           ; [#uses=1 type=i8*] [debug line = 382:5]
  %4 = load %struct.aes_context** %1, align 8, !dbg !439 ; [#uses=1 type=%struct.aes_context*] [debug line = 382:5]
  %5 = getelementptr inbounds %struct.aes_context* %4, i32 0, i32 2, !dbg !439 ; [#uses=1 type=[32 x i8]*] [debug line = 382:5]
  %6 = getelementptr inbounds [32 x i8]* %5, i32 0, i32 0, !dbg !439 ; [#uses=1 type=i8*] [debug line = 382:5]
  %7 = load %struct.aes_context** %1, align 8, !dbg !439 ; [#uses=1 type=%struct.aes_context*] [debug line = 382:5]
  %8 = getelementptr inbounds %struct.aes_context* %7, i32 0, i32 0, !dbg !439 ; [#uses=1 type=[32 x i8]*] [debug line = 382:5]
  %9 = getelementptr inbounds [32 x i8]* %8, i32 0, i32 0, !dbg !439 ; [#uses=1 type=i8*] [debug line = 382:5]
  call void @aes_addRoundKey_cpy(i8* %3, i8* %6, i8* %9), !dbg !439 ; [debug line = 382:5]
  %10 = load i8** %2, align 8, !dbg !440          ; [#uses=1 type=i8*] [debug line = 383:5]
  call void @aes_shiftRows_inv(i8* %10), !dbg !440 ; [debug line = 383:5]
  %11 = load i8** %2, align 8, !dbg !441          ; [#uses=1 type=i8*] [debug line = 384:5]
  call void @aes_subBytes_inv(i8* %11), !dbg !441 ; [debug line = 384:5]
  store i8 14, i8* %i, align 1, !dbg !442         ; [debug line = 386:10]
  store i8 -128, i8* %rcon, align 1, !dbg !442    ; [debug line = 386:10]
  br label %12, !dbg !442                         ; [debug line = 386:10]

; <label>:12                                      ; preds = %34, %0
  %13 = load i8* %i, align 1, !dbg !442           ; [#uses=1 type=i8] [debug line = 386:10]
  %14 = add i8 %13, -1, !dbg !442                 ; [#uses=2 type=i8] [debug line = 386:10]
  store i8 %14, i8* %i, align 1, !dbg !442        ; [debug line = 386:10]
  %15 = icmp ne i8 %14, 0, !dbg !442              ; [#uses=1 type=i1] [debug line = 386:10]
  br i1 %15, label %16, label %38, !dbg !442      ; [debug line = 386:10]

; <label>:16                                      ; preds = %12
  %17 = load i8* %i, align 1, !dbg !444           ; [#uses=1 type=i8] [debug line = 388:9]
  %18 = zext i8 %17 to i32, !dbg !444             ; [#uses=1 type=i32] [debug line = 388:9]
  %19 = and i32 %18, 1, !dbg !444                 ; [#uses=1 type=i32] [debug line = 388:9]
  %20 = icmp ne i32 %19, 0, !dbg !444             ; [#uses=1 type=i1] [debug line = 388:9]
  br i1 %20, label %21, label %29, !dbg !444      ; [debug line = 388:9]

; <label>:21                                      ; preds = %16
  %22 = load %struct.aes_context** %1, align 8, !dbg !446 ; [#uses=1 type=%struct.aes_context*] [debug line = 390:13]
  %23 = getelementptr inbounds %struct.aes_context* %22, i32 0, i32 0, !dbg !446 ; [#uses=1 type=[32 x i8]*] [debug line = 390:13]
  %24 = getelementptr inbounds [32 x i8]* %23, i32 0, i32 0, !dbg !446 ; [#uses=1 type=i8*] [debug line = 390:13]
  call void @aes_expandDecKey(i8* %24, i8* %rcon), !dbg !446 ; [debug line = 390:13]
  %25 = load i8** %2, align 8, !dbg !448          ; [#uses=1 type=i8*] [debug line = 391:13]
  %26 = load %struct.aes_context** %1, align 8, !dbg !448 ; [#uses=1 type=%struct.aes_context*] [debug line = 391:13]
  %27 = getelementptr inbounds %struct.aes_context* %26, i32 0, i32 0, !dbg !448 ; [#uses=1 type=[32 x i8]*] [debug line = 391:13]
  %28 = getelementptr inbounds [32 x i8]* %27, i32 0, i64 16, !dbg !448 ; [#uses=1 type=i8*] [debug line = 391:13]
  call void @aes_addRoundKey(i8* %25, i8* %28), !dbg !448 ; [debug line = 391:13]
  br label %34, !dbg !449                         ; [debug line = 392:9]

; <label>:29                                      ; preds = %16
  %30 = load i8** %2, align 8, !dbg !450          ; [#uses=1 type=i8*] [debug line = 393:14]
  %31 = load %struct.aes_context** %1, align 8, !dbg !450 ; [#uses=1 type=%struct.aes_context*] [debug line = 393:14]
  %32 = getelementptr inbounds %struct.aes_context* %31, i32 0, i32 0, !dbg !450 ; [#uses=1 type=[32 x i8]*] [debug line = 393:14]
  %33 = getelementptr inbounds [32 x i8]* %32, i32 0, i32 0, !dbg !450 ; [#uses=1 type=i8*] [debug line = 393:14]
  call void @aes_addRoundKey(i8* %30, i8* %33), !dbg !450 ; [debug line = 393:14]
  br label %34

; <label>:34                                      ; preds = %29, %21
  %35 = load i8** %2, align 8, !dbg !451          ; [#uses=1 type=i8*] [debug line = 394:9]
  call void @aes_mixColumns_inv(i8* %35), !dbg !451 ; [debug line = 394:9]
  %36 = load i8** %2, align 8, !dbg !452          ; [#uses=1 type=i8*] [debug line = 395:9]
  call void @aes_shiftRows_inv(i8* %36), !dbg !452 ; [debug line = 395:9]
  %37 = load i8** %2, align 8, !dbg !453          ; [#uses=1 type=i8*] [debug line = 396:9]
  call void @aes_subBytes_inv(i8* %37), !dbg !453 ; [debug line = 396:9]
  br label %12, !dbg !454                         ; [debug line = 397:5]

; <label>:38                                      ; preds = %12
  %39 = load i8** %2, align 8, !dbg !455          ; [#uses=1 type=i8*] [debug line = 398:5]
  %40 = load %struct.aes_context** %1, align 8, !dbg !455 ; [#uses=1 type=%struct.aes_context*] [debug line = 398:5]
  %41 = getelementptr inbounds %struct.aes_context* %40, i32 0, i32 0, !dbg !455 ; [#uses=1 type=[32 x i8]*] [debug line = 398:5]
  %42 = getelementptr inbounds [32 x i8]* %41, i32 0, i32 0, !dbg !455 ; [#uses=1 type=i8*] [debug line = 398:5]
  call void @aes_addRoundKey(i8* %39, i8* %42), !dbg !455 ; [debug line = 398:5]
  ret void, !dbg !456                             ; [debug line = 399:1]
}

; [#uses=2]
define internal void @aes_shiftRows_inv(i8* %buf) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=25 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=4 type=i8*]
  %j = alloca i8, align 1                         ; [#uses=4 type=i8*]
  store i8* %buf, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !457), !dbg !458 ; [debug line = 239:40] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !459), !dbg !461 ; [debug line = 241:22] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i8* %j}, metadata !462), !dbg !463 ; [debug line = 241:25] [debug variable = j]
  %2 = load i8** %1, align 8, !dbg !464           ; [#uses=1 type=i8*] [debug line = 243:5]
  %3 = getelementptr inbounds i8* %2, i64 1, !dbg !464 ; [#uses=1 type=i8*] [debug line = 243:5]
  %4 = load i8* %3, align 1, !dbg !464            ; [#uses=1 type=i8] [debug line = 243:5]
  store i8 %4, i8* %i, align 1, !dbg !464         ; [debug line = 243:5]
  %5 = load i8** %1, align 8, !dbg !464           ; [#uses=1 type=i8*] [debug line = 243:5]
  %6 = getelementptr inbounds i8* %5, i64 13, !dbg !464 ; [#uses=1 type=i8*] [debug line = 243:5]
  %7 = load i8* %6, align 1, !dbg !464            ; [#uses=1 type=i8] [debug line = 243:5]
  %8 = load i8** %1, align 8, !dbg !464           ; [#uses=1 type=i8*] [debug line = 243:5]
  %9 = getelementptr inbounds i8* %8, i64 1, !dbg !464 ; [#uses=1 type=i8*] [debug line = 243:5]
  store i8 %7, i8* %9, align 1, !dbg !464         ; [debug line = 243:5]
  %10 = load i8** %1, align 8, !dbg !464          ; [#uses=1 type=i8*] [debug line = 243:5]
  %11 = getelementptr inbounds i8* %10, i64 9, !dbg !464 ; [#uses=1 type=i8*] [debug line = 243:5]
  %12 = load i8* %11, align 1, !dbg !464          ; [#uses=1 type=i8] [debug line = 243:5]
  %13 = load i8** %1, align 8, !dbg !464          ; [#uses=1 type=i8*] [debug line = 243:5]
  %14 = getelementptr inbounds i8* %13, i64 13, !dbg !464 ; [#uses=1 type=i8*] [debug line = 243:5]
  store i8 %12, i8* %14, align 1, !dbg !464       ; [debug line = 243:5]
  %15 = load i8** %1, align 8, !dbg !464          ; [#uses=1 type=i8*] [debug line = 243:5]
  %16 = getelementptr inbounds i8* %15, i64 5, !dbg !464 ; [#uses=1 type=i8*] [debug line = 243:5]
  %17 = load i8* %16, align 1, !dbg !464          ; [#uses=1 type=i8] [debug line = 243:5]
  %18 = load i8** %1, align 8, !dbg !464          ; [#uses=1 type=i8*] [debug line = 243:5]
  %19 = getelementptr inbounds i8* %18, i64 9, !dbg !464 ; [#uses=1 type=i8*] [debug line = 243:5]
  store i8 %17, i8* %19, align 1, !dbg !464       ; [debug line = 243:5]
  %20 = load i8* %i, align 1, !dbg !464           ; [#uses=1 type=i8] [debug line = 243:5]
  %21 = load i8** %1, align 8, !dbg !464          ; [#uses=1 type=i8*] [debug line = 243:5]
  %22 = getelementptr inbounds i8* %21, i64 5, !dbg !464 ; [#uses=1 type=i8*] [debug line = 243:5]
  store i8 %20, i8* %22, align 1, !dbg !464       ; [debug line = 243:5]
  %23 = load i8** %1, align 8, !dbg !465          ; [#uses=1 type=i8*] [debug line = 244:5]
  %24 = getelementptr inbounds i8* %23, i64 2, !dbg !465 ; [#uses=1 type=i8*] [debug line = 244:5]
  %25 = load i8* %24, align 1, !dbg !465          ; [#uses=1 type=i8] [debug line = 244:5]
  store i8 %25, i8* %i, align 1, !dbg !465        ; [debug line = 244:5]
  %26 = load i8** %1, align 8, !dbg !465          ; [#uses=1 type=i8*] [debug line = 244:5]
  %27 = getelementptr inbounds i8* %26, i64 10, !dbg !465 ; [#uses=1 type=i8*] [debug line = 244:5]
  %28 = load i8* %27, align 1, !dbg !465          ; [#uses=1 type=i8] [debug line = 244:5]
  %29 = load i8** %1, align 8, !dbg !465          ; [#uses=1 type=i8*] [debug line = 244:5]
  %30 = getelementptr inbounds i8* %29, i64 2, !dbg !465 ; [#uses=1 type=i8*] [debug line = 244:5]
  store i8 %28, i8* %30, align 1, !dbg !465       ; [debug line = 244:5]
  %31 = load i8* %i, align 1, !dbg !465           ; [#uses=1 type=i8] [debug line = 244:5]
  %32 = load i8** %1, align 8, !dbg !465          ; [#uses=1 type=i8*] [debug line = 244:5]
  %33 = getelementptr inbounds i8* %32, i64 10, !dbg !465 ; [#uses=1 type=i8*] [debug line = 244:5]
  store i8 %31, i8* %33, align 1, !dbg !465       ; [debug line = 244:5]
  %34 = load i8** %1, align 8, !dbg !466          ; [#uses=1 type=i8*] [debug line = 245:5]
  %35 = getelementptr inbounds i8* %34, i64 3, !dbg !466 ; [#uses=1 type=i8*] [debug line = 245:5]
  %36 = load i8* %35, align 1, !dbg !466          ; [#uses=1 type=i8] [debug line = 245:5]
  store i8 %36, i8* %j, align 1, !dbg !466        ; [debug line = 245:5]
  %37 = load i8** %1, align 8, !dbg !466          ; [#uses=1 type=i8*] [debug line = 245:5]
  %38 = getelementptr inbounds i8* %37, i64 7, !dbg !466 ; [#uses=1 type=i8*] [debug line = 245:5]
  %39 = load i8* %38, align 1, !dbg !466          ; [#uses=1 type=i8] [debug line = 245:5]
  %40 = load i8** %1, align 8, !dbg !466          ; [#uses=1 type=i8*] [debug line = 245:5]
  %41 = getelementptr inbounds i8* %40, i64 3, !dbg !466 ; [#uses=1 type=i8*] [debug line = 245:5]
  store i8 %39, i8* %41, align 1, !dbg !466       ; [debug line = 245:5]
  %42 = load i8** %1, align 8, !dbg !466          ; [#uses=1 type=i8*] [debug line = 245:5]
  %43 = getelementptr inbounds i8* %42, i64 11, !dbg !466 ; [#uses=1 type=i8*] [debug line = 245:5]
  %44 = load i8* %43, align 1, !dbg !466          ; [#uses=1 type=i8] [debug line = 245:5]
  %45 = load i8** %1, align 8, !dbg !466          ; [#uses=1 type=i8*] [debug line = 245:5]
  %46 = getelementptr inbounds i8* %45, i64 7, !dbg !466 ; [#uses=1 type=i8*] [debug line = 245:5]
  store i8 %44, i8* %46, align 1, !dbg !466       ; [debug line = 245:5]
  %47 = load i8** %1, align 8, !dbg !466          ; [#uses=1 type=i8*] [debug line = 245:5]
  %48 = getelementptr inbounds i8* %47, i64 15, !dbg !466 ; [#uses=1 type=i8*] [debug line = 245:5]
  %49 = load i8* %48, align 1, !dbg !466          ; [#uses=1 type=i8] [debug line = 245:5]
  %50 = load i8** %1, align 8, !dbg !466          ; [#uses=1 type=i8*] [debug line = 245:5]
  %51 = getelementptr inbounds i8* %50, i64 11, !dbg !466 ; [#uses=1 type=i8*] [debug line = 245:5]
  store i8 %49, i8* %51, align 1, !dbg !466       ; [debug line = 245:5]
  %52 = load i8* %j, align 1, !dbg !466           ; [#uses=1 type=i8] [debug line = 245:5]
  %53 = load i8** %1, align 8, !dbg !466          ; [#uses=1 type=i8*] [debug line = 245:5]
  %54 = getelementptr inbounds i8* %53, i64 15, !dbg !466 ; [#uses=1 type=i8*] [debug line = 245:5]
  store i8 %52, i8* %54, align 1, !dbg !466       ; [debug line = 245:5]
  %55 = load i8** %1, align 8, !dbg !467          ; [#uses=1 type=i8*] [debug line = 246:5]
  %56 = getelementptr inbounds i8* %55, i64 6, !dbg !467 ; [#uses=1 type=i8*] [debug line = 246:5]
  %57 = load i8* %56, align 1, !dbg !467          ; [#uses=1 type=i8] [debug line = 246:5]
  store i8 %57, i8* %j, align 1, !dbg !467        ; [debug line = 246:5]
  %58 = load i8** %1, align 8, !dbg !467          ; [#uses=1 type=i8*] [debug line = 246:5]
  %59 = getelementptr inbounds i8* %58, i64 14, !dbg !467 ; [#uses=1 type=i8*] [debug line = 246:5]
  %60 = load i8* %59, align 1, !dbg !467          ; [#uses=1 type=i8] [debug line = 246:5]
  %61 = load i8** %1, align 8, !dbg !467          ; [#uses=1 type=i8*] [debug line = 246:5]
  %62 = getelementptr inbounds i8* %61, i64 6, !dbg !467 ; [#uses=1 type=i8*] [debug line = 246:5]
  store i8 %60, i8* %62, align 1, !dbg !467       ; [debug line = 246:5]
  %63 = load i8* %j, align 1, !dbg !467           ; [#uses=1 type=i8] [debug line = 246:5]
  %64 = load i8** %1, align 8, !dbg !467          ; [#uses=1 type=i8*] [debug line = 246:5]
  %65 = getelementptr inbounds i8* %64, i64 14, !dbg !467 ; [#uses=1 type=i8*] [debug line = 246:5]
  store i8 %63, i8* %65, align 1, !dbg !467       ; [debug line = 246:5]
  ret void, !dbg !468                             ; [debug line = 248:1]
}

; [#uses=2]
define internal void @aes_subBytes_inv(i8* %buf) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=3 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=5 type=i8*]
  store i8* %buf, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !469), !dbg !470 ; [debug line = 202:39] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !471), !dbg !473 ; [debug line = 204:22] [debug variable = i]
  store i8 16, i8* %i, align 1, !dbg !474         ; [debug line = 204:28]
  br label %2, !dbg !475                          ; [debug line = 206:5]

; <label>:2                                       ; preds = %6, %0
  %3 = load i8* %i, align 1, !dbg !475            ; [#uses=2 type=i8] [debug line = 206:5]
  %4 = add i8 %3, -1, !dbg !475                   ; [#uses=1 type=i8] [debug line = 206:5]
  store i8 %4, i8* %i, align 1, !dbg !475         ; [debug line = 206:5]
  %5 = icmp ne i8 %3, 0, !dbg !475                ; [#uses=1 type=i1] [debug line = 206:5]
  br i1 %5, label %6, label %19, !dbg !475        ; [debug line = 206:5]

; <label>:6                                       ; preds = %2
  %7 = load i8* %i, align 1, !dbg !476            ; [#uses=1 type=i8] [debug line = 206:17]
  %8 = zext i8 %7 to i64, !dbg !476               ; [#uses=1 type=i64] [debug line = 206:17]
  %9 = load i8** %1, align 8, !dbg !476           ; [#uses=1 type=i8*] [debug line = 206:17]
  %10 = getelementptr inbounds i8* %9, i64 %8, !dbg !476 ; [#uses=1 type=i8*] [debug line = 206:17]
  %11 = load i8* %10, align 1, !dbg !476          ; [#uses=1 type=i8] [debug line = 206:17]
  %12 = zext i8 %11 to i64, !dbg !476             ; [#uses=1 type=i64] [debug line = 206:17]
  %13 = getelementptr inbounds [256 x i8]* @sboxinv, i32 0, i64 %12, !dbg !476 ; [#uses=1 type=i8*] [debug line = 206:17]
  %14 = load i8* %13, align 1, !dbg !476          ; [#uses=1 type=i8] [debug line = 206:17]
  %15 = load i8* %i, align 1, !dbg !476           ; [#uses=1 type=i8] [debug line = 206:17]
  %16 = zext i8 %15 to i64, !dbg !476             ; [#uses=1 type=i64] [debug line = 206:17]
  %17 = load i8** %1, align 8, !dbg !476          ; [#uses=1 type=i8*] [debug line = 206:17]
  %18 = getelementptr inbounds i8* %17, i64 %16, !dbg !476 ; [#uses=1 type=i8*] [debug line = 206:17]
  store i8 %14, i8* %18, align 1, !dbg !476       ; [debug line = 206:17]
  br label %2, !dbg !476                          ; [debug line = 206:17]

; <label>:19                                      ; preds = %2
  ret void, !dbg !477                             ; [debug line = 207:1]
}

; [#uses=1]
define internal void @aes_expandDecKey(i8* %k, i8* %rc) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=33 type=i8**]
  %2 = alloca i8*, align 8                        ; [#uses=5 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=24 type=i8*]
  store i8* %k, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !478), !dbg !479 ; [debug line = 315:32] [debug variable = k]
  store i8* %rc, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !480), !dbg !481 ; [debug line = 315:44] [debug variable = rc]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !482), !dbg !484 ; [debug line = 317:13] [debug variable = i]
  store i8 28, i8* %i, align 1, !dbg !485         ; [debug line = 319:9]
  br label %3, !dbg !485                          ; [debug line = 319:9]

; <label>:3                                       ; preds = %80, %0
  %4 = load i8* %i, align 1, !dbg !485            ; [#uses=1 type=i8] [debug line = 319:9]
  %5 = zext i8 %4 to i32, !dbg !485               ; [#uses=1 type=i32] [debug line = 319:9]
  %6 = icmp sgt i32 %5, 16, !dbg !485             ; [#uses=1 type=i1] [debug line = 319:9]
  br i1 %6, label %7, label %85, !dbg !485        ; [debug line = 319:9]

; <label>:7                                       ; preds = %3
  %8 = load i8* %i, align 1, !dbg !487            ; [#uses=1 type=i8] [debug line = 319:33]
  %9 = zext i8 %8 to i32, !dbg !487               ; [#uses=1 type=i32] [debug line = 319:33]
  %10 = sub nsw i32 %9, 4, !dbg !487              ; [#uses=1 type=i32] [debug line = 319:33]
  %11 = sext i32 %10 to i64, !dbg !487            ; [#uses=1 type=i64] [debug line = 319:33]
  %12 = load i8** %1, align 8, !dbg !487          ; [#uses=1 type=i8*] [debug line = 319:33]
  %13 = getelementptr inbounds i8* %12, i64 %11, !dbg !487 ; [#uses=1 type=i8*] [debug line = 319:33]
  %14 = load i8* %13, align 1, !dbg !487          ; [#uses=1 type=i8] [debug line = 319:33]
  %15 = zext i8 %14 to i32, !dbg !487             ; [#uses=1 type=i32] [debug line = 319:33]
  %16 = load i8* %i, align 1, !dbg !487           ; [#uses=1 type=i8] [debug line = 319:33]
  %17 = zext i8 %16 to i32, !dbg !487             ; [#uses=1 type=i32] [debug line = 319:33]
  %18 = add nsw i32 %17, 0, !dbg !487             ; [#uses=1 type=i32] [debug line = 319:33]
  %19 = sext i32 %18 to i64, !dbg !487            ; [#uses=1 type=i64] [debug line = 319:33]
  %20 = load i8** %1, align 8, !dbg !487          ; [#uses=1 type=i8*] [debug line = 319:33]
  %21 = getelementptr inbounds i8* %20, i64 %19, !dbg !487 ; [#uses=2 type=i8*] [debug line = 319:33]
  %22 = load i8* %21, align 1, !dbg !487          ; [#uses=1 type=i8] [debug line = 319:33]
  %23 = zext i8 %22 to i32, !dbg !487             ; [#uses=1 type=i32] [debug line = 319:33]
  %24 = xor i32 %23, %15, !dbg !487               ; [#uses=1 type=i32] [debug line = 319:33]
  %25 = trunc i32 %24 to i8, !dbg !487            ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %25, i8* %21, align 1, !dbg !487       ; [debug line = 319:33]
  %26 = load i8* %i, align 1, !dbg !487           ; [#uses=1 type=i8] [debug line = 319:33]
  %27 = zext i8 %26 to i32, !dbg !487             ; [#uses=1 type=i32] [debug line = 319:33]
  %28 = sub nsw i32 %27, 3, !dbg !487             ; [#uses=1 type=i32] [debug line = 319:33]
  %29 = sext i32 %28 to i64, !dbg !487            ; [#uses=1 type=i64] [debug line = 319:33]
  %30 = load i8** %1, align 8, !dbg !487          ; [#uses=1 type=i8*] [debug line = 319:33]
  %31 = getelementptr inbounds i8* %30, i64 %29, !dbg !487 ; [#uses=1 type=i8*] [debug line = 319:33]
  %32 = load i8* %31, align 1, !dbg !487          ; [#uses=1 type=i8] [debug line = 319:33]
  %33 = zext i8 %32 to i32, !dbg !487             ; [#uses=1 type=i32] [debug line = 319:33]
  %34 = load i8* %i, align 1, !dbg !487           ; [#uses=1 type=i8] [debug line = 319:33]
  %35 = zext i8 %34 to i32, !dbg !487             ; [#uses=1 type=i32] [debug line = 319:33]
  %36 = add nsw i32 %35, 1, !dbg !487             ; [#uses=1 type=i32] [debug line = 319:33]
  %37 = sext i32 %36 to i64, !dbg !487            ; [#uses=1 type=i64] [debug line = 319:33]
  %38 = load i8** %1, align 8, !dbg !487          ; [#uses=1 type=i8*] [debug line = 319:33]
  %39 = getelementptr inbounds i8* %38, i64 %37, !dbg !487 ; [#uses=2 type=i8*] [debug line = 319:33]
  %40 = load i8* %39, align 1, !dbg !487          ; [#uses=1 type=i8] [debug line = 319:33]
  %41 = zext i8 %40 to i32, !dbg !487             ; [#uses=1 type=i32] [debug line = 319:33]
  %42 = xor i32 %41, %33, !dbg !487               ; [#uses=1 type=i32] [debug line = 319:33]
  %43 = trunc i32 %42 to i8, !dbg !487            ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %43, i8* %39, align 1, !dbg !487       ; [debug line = 319:33]
  %44 = load i8* %i, align 1, !dbg !487           ; [#uses=1 type=i8] [debug line = 319:33]
  %45 = zext i8 %44 to i32, !dbg !487             ; [#uses=1 type=i32] [debug line = 319:33]
  %46 = sub nsw i32 %45, 2, !dbg !487             ; [#uses=1 type=i32] [debug line = 319:33]
  %47 = sext i32 %46 to i64, !dbg !487            ; [#uses=1 type=i64] [debug line = 319:33]
  %48 = load i8** %1, align 8, !dbg !487          ; [#uses=1 type=i8*] [debug line = 319:33]
  %49 = getelementptr inbounds i8* %48, i64 %47, !dbg !487 ; [#uses=1 type=i8*] [debug line = 319:33]
  %50 = load i8* %49, align 1, !dbg !487          ; [#uses=1 type=i8] [debug line = 319:33]
  %51 = zext i8 %50 to i32, !dbg !487             ; [#uses=1 type=i32] [debug line = 319:33]
  %52 = load i8* %i, align 1, !dbg !487           ; [#uses=1 type=i8] [debug line = 319:33]
  %53 = zext i8 %52 to i32, !dbg !487             ; [#uses=1 type=i32] [debug line = 319:33]
  %54 = add nsw i32 %53, 2, !dbg !487             ; [#uses=1 type=i32] [debug line = 319:33]
  %55 = sext i32 %54 to i64, !dbg !487            ; [#uses=1 type=i64] [debug line = 319:33]
  %56 = load i8** %1, align 8, !dbg !487          ; [#uses=1 type=i8*] [debug line = 319:33]
  %57 = getelementptr inbounds i8* %56, i64 %55, !dbg !487 ; [#uses=2 type=i8*] [debug line = 319:33]
  %58 = load i8* %57, align 1, !dbg !487          ; [#uses=1 type=i8] [debug line = 319:33]
  %59 = zext i8 %58 to i32, !dbg !487             ; [#uses=1 type=i32] [debug line = 319:33]
  %60 = xor i32 %59, %51, !dbg !487               ; [#uses=1 type=i32] [debug line = 319:33]
  %61 = trunc i32 %60 to i8, !dbg !487            ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %61, i8* %57, align 1, !dbg !487       ; [debug line = 319:33]
  %62 = load i8* %i, align 1, !dbg !487           ; [#uses=1 type=i8] [debug line = 319:33]
  %63 = zext i8 %62 to i32, !dbg !487             ; [#uses=1 type=i32] [debug line = 319:33]
  %64 = sub nsw i32 %63, 1, !dbg !487             ; [#uses=1 type=i32] [debug line = 319:33]
  %65 = sext i32 %64 to i64, !dbg !487            ; [#uses=1 type=i64] [debug line = 319:33]
  %66 = load i8** %1, align 8, !dbg !487          ; [#uses=1 type=i8*] [debug line = 319:33]
  %67 = getelementptr inbounds i8* %66, i64 %65, !dbg !487 ; [#uses=1 type=i8*] [debug line = 319:33]
  %68 = load i8* %67, align 1, !dbg !487          ; [#uses=1 type=i8] [debug line = 319:33]
  %69 = zext i8 %68 to i32, !dbg !487             ; [#uses=1 type=i32] [debug line = 319:33]
  %70 = load i8* %i, align 1, !dbg !487           ; [#uses=1 type=i8] [debug line = 319:33]
  %71 = zext i8 %70 to i32, !dbg !487             ; [#uses=1 type=i32] [debug line = 319:33]
  %72 = add nsw i32 %71, 3, !dbg !487             ; [#uses=1 type=i32] [debug line = 319:33]
  %73 = sext i32 %72 to i64, !dbg !487            ; [#uses=1 type=i64] [debug line = 319:33]
  %74 = load i8** %1, align 8, !dbg !487          ; [#uses=1 type=i8*] [debug line = 319:33]
  %75 = getelementptr inbounds i8* %74, i64 %73, !dbg !487 ; [#uses=2 type=i8*] [debug line = 319:33]
  %76 = load i8* %75, align 1, !dbg !487          ; [#uses=1 type=i8] [debug line = 319:33]
  %77 = zext i8 %76 to i32, !dbg !487             ; [#uses=1 type=i32] [debug line = 319:33]
  %78 = xor i32 %77, %69, !dbg !487               ; [#uses=1 type=i32] [debug line = 319:33]
  %79 = trunc i32 %78 to i8, !dbg !487            ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %79, i8* %75, align 1, !dbg !487       ; [debug line = 319:33]
  br label %80, !dbg !487                         ; [debug line = 319:33]

; <label>:80                                      ; preds = %7
  %81 = load i8* %i, align 1, !dbg !488           ; [#uses=1 type=i8] [debug line = 319:25]
  %82 = zext i8 %81 to i32, !dbg !488             ; [#uses=1 type=i32] [debug line = 319:25]
  %83 = sub nsw i32 %82, 4, !dbg !488             ; [#uses=1 type=i32] [debug line = 319:25]
  %84 = trunc i32 %83 to i8, !dbg !488            ; [#uses=1 type=i8] [debug line = 319:25]
  store i8 %84, i8* %i, align 1, !dbg !488        ; [debug line = 319:25]
  br label %3, !dbg !488                          ; [debug line = 319:25]

; <label>:85                                      ; preds = %3
  %86 = load i8** %1, align 8, !dbg !489          ; [#uses=1 type=i8*] [debug line = 322:5]
  %87 = getelementptr inbounds i8* %86, i64 12, !dbg !489 ; [#uses=1 type=i8*] [debug line = 322:5]
  %88 = load i8* %87, align 1, !dbg !489          ; [#uses=1 type=i8] [debug line = 322:5]
  %89 = zext i8 %88 to i64, !dbg !489             ; [#uses=1 type=i64] [debug line = 322:5]
  %90 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %89, !dbg !489 ; [#uses=1 type=i8*] [debug line = 322:5]
  %91 = load i8* %90, align 1, !dbg !489          ; [#uses=1 type=i8] [debug line = 322:5]
  %92 = zext i8 %91 to i32, !dbg !489             ; [#uses=1 type=i32] [debug line = 322:5]
  %93 = load i8** %1, align 8, !dbg !489          ; [#uses=1 type=i8*] [debug line = 322:5]
  %94 = getelementptr inbounds i8* %93, i64 16, !dbg !489 ; [#uses=2 type=i8*] [debug line = 322:5]
  %95 = load i8* %94, align 1, !dbg !489          ; [#uses=1 type=i8] [debug line = 322:5]
  %96 = zext i8 %95 to i32, !dbg !489             ; [#uses=1 type=i32] [debug line = 322:5]
  %97 = xor i32 %96, %92, !dbg !489               ; [#uses=1 type=i32] [debug line = 322:5]
  %98 = trunc i32 %97 to i8, !dbg !489            ; [#uses=1 type=i8] [debug line = 322:5]
  store i8 %98, i8* %94, align 1, !dbg !489       ; [debug line = 322:5]
  %99 = load i8** %1, align 8, !dbg !490          ; [#uses=1 type=i8*] [debug line = 323:5]
  %100 = getelementptr inbounds i8* %99, i64 13, !dbg !490 ; [#uses=1 type=i8*] [debug line = 323:5]
  %101 = load i8* %100, align 1, !dbg !490        ; [#uses=1 type=i8] [debug line = 323:5]
  %102 = zext i8 %101 to i64, !dbg !490           ; [#uses=1 type=i64] [debug line = 323:5]
  %103 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %102, !dbg !490 ; [#uses=1 type=i8*] [debug line = 323:5]
  %104 = load i8* %103, align 1, !dbg !490        ; [#uses=1 type=i8] [debug line = 323:5]
  %105 = zext i8 %104 to i32, !dbg !490           ; [#uses=1 type=i32] [debug line = 323:5]
  %106 = load i8** %1, align 8, !dbg !490         ; [#uses=1 type=i8*] [debug line = 323:5]
  %107 = getelementptr inbounds i8* %106, i64 17, !dbg !490 ; [#uses=2 type=i8*] [debug line = 323:5]
  %108 = load i8* %107, align 1, !dbg !490        ; [#uses=1 type=i8] [debug line = 323:5]
  %109 = zext i8 %108 to i32, !dbg !490           ; [#uses=1 type=i32] [debug line = 323:5]
  %110 = xor i32 %109, %105, !dbg !490            ; [#uses=1 type=i32] [debug line = 323:5]
  %111 = trunc i32 %110 to i8, !dbg !490          ; [#uses=1 type=i8] [debug line = 323:5]
  store i8 %111, i8* %107, align 1, !dbg !490     ; [debug line = 323:5]
  %112 = load i8** %1, align 8, !dbg !491         ; [#uses=1 type=i8*] [debug line = 324:5]
  %113 = getelementptr inbounds i8* %112, i64 14, !dbg !491 ; [#uses=1 type=i8*] [debug line = 324:5]
  %114 = load i8* %113, align 1, !dbg !491        ; [#uses=1 type=i8] [debug line = 324:5]
  %115 = zext i8 %114 to i64, !dbg !491           ; [#uses=1 type=i64] [debug line = 324:5]
  %116 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %115, !dbg !491 ; [#uses=1 type=i8*] [debug line = 324:5]
  %117 = load i8* %116, align 1, !dbg !491        ; [#uses=1 type=i8] [debug line = 324:5]
  %118 = zext i8 %117 to i32, !dbg !491           ; [#uses=1 type=i32] [debug line = 324:5]
  %119 = load i8** %1, align 8, !dbg !491         ; [#uses=1 type=i8*] [debug line = 324:5]
  %120 = getelementptr inbounds i8* %119, i64 18, !dbg !491 ; [#uses=2 type=i8*] [debug line = 324:5]
  %121 = load i8* %120, align 1, !dbg !491        ; [#uses=1 type=i8] [debug line = 324:5]
  %122 = zext i8 %121 to i32, !dbg !491           ; [#uses=1 type=i32] [debug line = 324:5]
  %123 = xor i32 %122, %118, !dbg !491            ; [#uses=1 type=i32] [debug line = 324:5]
  %124 = trunc i32 %123 to i8, !dbg !491          ; [#uses=1 type=i8] [debug line = 324:5]
  store i8 %124, i8* %120, align 1, !dbg !491     ; [debug line = 324:5]
  %125 = load i8** %1, align 8, !dbg !492         ; [#uses=1 type=i8*] [debug line = 325:5]
  %126 = getelementptr inbounds i8* %125, i64 15, !dbg !492 ; [#uses=1 type=i8*] [debug line = 325:5]
  %127 = load i8* %126, align 1, !dbg !492        ; [#uses=1 type=i8] [debug line = 325:5]
  %128 = zext i8 %127 to i64, !dbg !492           ; [#uses=1 type=i64] [debug line = 325:5]
  %129 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %128, !dbg !492 ; [#uses=1 type=i8*] [debug line = 325:5]
  %130 = load i8* %129, align 1, !dbg !492        ; [#uses=1 type=i8] [debug line = 325:5]
  %131 = zext i8 %130 to i32, !dbg !492           ; [#uses=1 type=i32] [debug line = 325:5]
  %132 = load i8** %1, align 8, !dbg !492         ; [#uses=1 type=i8*] [debug line = 325:5]
  %133 = getelementptr inbounds i8* %132, i64 19, !dbg !492 ; [#uses=2 type=i8*] [debug line = 325:5]
  %134 = load i8* %133, align 1, !dbg !492        ; [#uses=1 type=i8] [debug line = 325:5]
  %135 = zext i8 %134 to i32, !dbg !492           ; [#uses=1 type=i32] [debug line = 325:5]
  %136 = xor i32 %135, %131, !dbg !492            ; [#uses=1 type=i32] [debug line = 325:5]
  %137 = trunc i32 %136 to i8, !dbg !492          ; [#uses=1 type=i8] [debug line = 325:5]
  store i8 %137, i8* %133, align 1, !dbg !492     ; [debug line = 325:5]
  store i8 12, i8* %i, align 1, !dbg !493         ; [debug line = 327:9]
  br label %138, !dbg !493                        ; [debug line = 327:9]

; <label>:138                                     ; preds = %215, %85
  %139 = load i8* %i, align 1, !dbg !493          ; [#uses=1 type=i8] [debug line = 327:9]
  %140 = zext i8 %139 to i32, !dbg !493           ; [#uses=1 type=i32] [debug line = 327:9]
  %141 = icmp sgt i32 %140, 0, !dbg !493          ; [#uses=1 type=i1] [debug line = 327:9]
  br i1 %141, label %142, label %220, !dbg !493   ; [debug line = 327:9]

; <label>:142                                     ; preds = %138
  %143 = load i8* %i, align 1, !dbg !495          ; [#uses=1 type=i8] [debug line = 327:32]
  %144 = zext i8 %143 to i32, !dbg !495           ; [#uses=1 type=i32] [debug line = 327:32]
  %145 = sub nsw i32 %144, 4, !dbg !495           ; [#uses=1 type=i32] [debug line = 327:32]
  %146 = sext i32 %145 to i64, !dbg !495          ; [#uses=1 type=i64] [debug line = 327:32]
  %147 = load i8** %1, align 8, !dbg !495         ; [#uses=1 type=i8*] [debug line = 327:32]
  %148 = getelementptr inbounds i8* %147, i64 %146, !dbg !495 ; [#uses=1 type=i8*] [debug line = 327:32]
  %149 = load i8* %148, align 1, !dbg !495        ; [#uses=1 type=i8] [debug line = 327:32]
  %150 = zext i8 %149 to i32, !dbg !495           ; [#uses=1 type=i32] [debug line = 327:32]
  %151 = load i8* %i, align 1, !dbg !495          ; [#uses=1 type=i8] [debug line = 327:32]
  %152 = zext i8 %151 to i32, !dbg !495           ; [#uses=1 type=i32] [debug line = 327:32]
  %153 = add nsw i32 %152, 0, !dbg !495           ; [#uses=1 type=i32] [debug line = 327:32]
  %154 = sext i32 %153 to i64, !dbg !495          ; [#uses=1 type=i64] [debug line = 327:32]
  %155 = load i8** %1, align 8, !dbg !495         ; [#uses=1 type=i8*] [debug line = 327:32]
  %156 = getelementptr inbounds i8* %155, i64 %154, !dbg !495 ; [#uses=2 type=i8*] [debug line = 327:32]
  %157 = load i8* %156, align 1, !dbg !495        ; [#uses=1 type=i8] [debug line = 327:32]
  %158 = zext i8 %157 to i32, !dbg !495           ; [#uses=1 type=i32] [debug line = 327:32]
  %159 = xor i32 %158, %150, !dbg !495            ; [#uses=1 type=i32] [debug line = 327:32]
  %160 = trunc i32 %159 to i8, !dbg !495          ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %160, i8* %156, align 1, !dbg !495     ; [debug line = 327:32]
  %161 = load i8* %i, align 1, !dbg !495          ; [#uses=1 type=i8] [debug line = 327:32]
  %162 = zext i8 %161 to i32, !dbg !495           ; [#uses=1 type=i32] [debug line = 327:32]
  %163 = sub nsw i32 %162, 3, !dbg !495           ; [#uses=1 type=i32] [debug line = 327:32]
  %164 = sext i32 %163 to i64, !dbg !495          ; [#uses=1 type=i64] [debug line = 327:32]
  %165 = load i8** %1, align 8, !dbg !495         ; [#uses=1 type=i8*] [debug line = 327:32]
  %166 = getelementptr inbounds i8* %165, i64 %164, !dbg !495 ; [#uses=1 type=i8*] [debug line = 327:32]
  %167 = load i8* %166, align 1, !dbg !495        ; [#uses=1 type=i8] [debug line = 327:32]
  %168 = zext i8 %167 to i32, !dbg !495           ; [#uses=1 type=i32] [debug line = 327:32]
  %169 = load i8* %i, align 1, !dbg !495          ; [#uses=1 type=i8] [debug line = 327:32]
  %170 = zext i8 %169 to i32, !dbg !495           ; [#uses=1 type=i32] [debug line = 327:32]
  %171 = add nsw i32 %170, 1, !dbg !495           ; [#uses=1 type=i32] [debug line = 327:32]
  %172 = sext i32 %171 to i64, !dbg !495          ; [#uses=1 type=i64] [debug line = 327:32]
  %173 = load i8** %1, align 8, !dbg !495         ; [#uses=1 type=i8*] [debug line = 327:32]
  %174 = getelementptr inbounds i8* %173, i64 %172, !dbg !495 ; [#uses=2 type=i8*] [debug line = 327:32]
  %175 = load i8* %174, align 1, !dbg !495        ; [#uses=1 type=i8] [debug line = 327:32]
  %176 = zext i8 %175 to i32, !dbg !495           ; [#uses=1 type=i32] [debug line = 327:32]
  %177 = xor i32 %176, %168, !dbg !495            ; [#uses=1 type=i32] [debug line = 327:32]
  %178 = trunc i32 %177 to i8, !dbg !495          ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %178, i8* %174, align 1, !dbg !495     ; [debug line = 327:32]
  %179 = load i8* %i, align 1, !dbg !495          ; [#uses=1 type=i8] [debug line = 327:32]
  %180 = zext i8 %179 to i32, !dbg !495           ; [#uses=1 type=i32] [debug line = 327:32]
  %181 = sub nsw i32 %180, 2, !dbg !495           ; [#uses=1 type=i32] [debug line = 327:32]
  %182 = sext i32 %181 to i64, !dbg !495          ; [#uses=1 type=i64] [debug line = 327:32]
  %183 = load i8** %1, align 8, !dbg !495         ; [#uses=1 type=i8*] [debug line = 327:32]
  %184 = getelementptr inbounds i8* %183, i64 %182, !dbg !495 ; [#uses=1 type=i8*] [debug line = 327:32]
  %185 = load i8* %184, align 1, !dbg !495        ; [#uses=1 type=i8] [debug line = 327:32]
  %186 = zext i8 %185 to i32, !dbg !495           ; [#uses=1 type=i32] [debug line = 327:32]
  %187 = load i8* %i, align 1, !dbg !495          ; [#uses=1 type=i8] [debug line = 327:32]
  %188 = zext i8 %187 to i32, !dbg !495           ; [#uses=1 type=i32] [debug line = 327:32]
  %189 = add nsw i32 %188, 2, !dbg !495           ; [#uses=1 type=i32] [debug line = 327:32]
  %190 = sext i32 %189 to i64, !dbg !495          ; [#uses=1 type=i64] [debug line = 327:32]
  %191 = load i8** %1, align 8, !dbg !495         ; [#uses=1 type=i8*] [debug line = 327:32]
  %192 = getelementptr inbounds i8* %191, i64 %190, !dbg !495 ; [#uses=2 type=i8*] [debug line = 327:32]
  %193 = load i8* %192, align 1, !dbg !495        ; [#uses=1 type=i8] [debug line = 327:32]
  %194 = zext i8 %193 to i32, !dbg !495           ; [#uses=1 type=i32] [debug line = 327:32]
  %195 = xor i32 %194, %186, !dbg !495            ; [#uses=1 type=i32] [debug line = 327:32]
  %196 = trunc i32 %195 to i8, !dbg !495          ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %196, i8* %192, align 1, !dbg !495     ; [debug line = 327:32]
  %197 = load i8* %i, align 1, !dbg !495          ; [#uses=1 type=i8] [debug line = 327:32]
  %198 = zext i8 %197 to i32, !dbg !495           ; [#uses=1 type=i32] [debug line = 327:32]
  %199 = sub nsw i32 %198, 1, !dbg !495           ; [#uses=1 type=i32] [debug line = 327:32]
  %200 = sext i32 %199 to i64, !dbg !495          ; [#uses=1 type=i64] [debug line = 327:32]
  %201 = load i8** %1, align 8, !dbg !495         ; [#uses=1 type=i8*] [debug line = 327:32]
  %202 = getelementptr inbounds i8* %201, i64 %200, !dbg !495 ; [#uses=1 type=i8*] [debug line = 327:32]
  %203 = load i8* %202, align 1, !dbg !495        ; [#uses=1 type=i8] [debug line = 327:32]
  %204 = zext i8 %203 to i32, !dbg !495           ; [#uses=1 type=i32] [debug line = 327:32]
  %205 = load i8* %i, align 1, !dbg !495          ; [#uses=1 type=i8] [debug line = 327:32]
  %206 = zext i8 %205 to i32, !dbg !495           ; [#uses=1 type=i32] [debug line = 327:32]
  %207 = add nsw i32 %206, 3, !dbg !495           ; [#uses=1 type=i32] [debug line = 327:32]
  %208 = sext i32 %207 to i64, !dbg !495          ; [#uses=1 type=i64] [debug line = 327:32]
  %209 = load i8** %1, align 8, !dbg !495         ; [#uses=1 type=i8*] [debug line = 327:32]
  %210 = getelementptr inbounds i8* %209, i64 %208, !dbg !495 ; [#uses=2 type=i8*] [debug line = 327:32]
  %211 = load i8* %210, align 1, !dbg !495        ; [#uses=1 type=i8] [debug line = 327:32]
  %212 = zext i8 %211 to i32, !dbg !495           ; [#uses=1 type=i32] [debug line = 327:32]
  %213 = xor i32 %212, %204, !dbg !495            ; [#uses=1 type=i32] [debug line = 327:32]
  %214 = trunc i32 %213 to i8, !dbg !495          ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %214, i8* %210, align 1, !dbg !495     ; [debug line = 327:32]
  br label %215, !dbg !495                        ; [debug line = 327:32]

; <label>:215                                     ; preds = %142
  %216 = load i8* %i, align 1, !dbg !496          ; [#uses=1 type=i8] [debug line = 327:24]
  %217 = zext i8 %216 to i32, !dbg !496           ; [#uses=1 type=i32] [debug line = 327:24]
  %218 = sub nsw i32 %217, 4, !dbg !496           ; [#uses=1 type=i32] [debug line = 327:24]
  %219 = trunc i32 %218 to i8, !dbg !496          ; [#uses=1 type=i8] [debug line = 327:24]
  store i8 %219, i8* %i, align 1, !dbg !496       ; [debug line = 327:24]
  br label %138, !dbg !496                        ; [debug line = 327:24]

; <label>:220                                     ; preds = %138
  %221 = load i8** %2, align 8, !dbg !497         ; [#uses=1 type=i8*] [debug line = 330:5]
  %222 = load i8* %221, align 1, !dbg !497        ; [#uses=1 type=i8] [debug line = 330:5]
  %223 = zext i8 %222 to i32, !dbg !497           ; [#uses=1 type=i32] [debug line = 330:5]
  %224 = ashr i32 %223, 1, !dbg !497              ; [#uses=1 type=i32] [debug line = 330:5]
  %225 = load i8** %2, align 8, !dbg !497         ; [#uses=1 type=i8*] [debug line = 330:5]
  %226 = load i8* %225, align 1, !dbg !497        ; [#uses=1 type=i8] [debug line = 330:5]
  %227 = zext i8 %226 to i32, !dbg !497           ; [#uses=1 type=i32] [debug line = 330:5]
  %228 = and i32 %227, 1, !dbg !497               ; [#uses=1 type=i32] [debug line = 330:5]
  %229 = icmp ne i32 %228, 0, !dbg !497           ; [#uses=1 type=i1] [debug line = 330:5]
  %230 = select i1 %229, i32 141, i32 0, !dbg !497 ; [#uses=1 type=i32] [debug line = 330:5]
  %231 = xor i32 %224, %230, !dbg !497            ; [#uses=1 type=i32] [debug line = 330:5]
  %232 = trunc i32 %231 to i8, !dbg !497          ; [#uses=1 type=i8] [debug line = 330:5]
  %233 = load i8** %2, align 8, !dbg !497         ; [#uses=1 type=i8*] [debug line = 330:5]
  store i8 %232, i8* %233, align 1, !dbg !497     ; [debug line = 330:5]
  %234 = load i8** %1, align 8, !dbg !498         ; [#uses=1 type=i8*] [debug line = 331:5]
  %235 = getelementptr inbounds i8* %234, i64 29, !dbg !498 ; [#uses=1 type=i8*] [debug line = 331:5]
  %236 = load i8* %235, align 1, !dbg !498        ; [#uses=1 type=i8] [debug line = 331:5]
  %237 = zext i8 %236 to i64, !dbg !498           ; [#uses=1 type=i64] [debug line = 331:5]
  %238 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %237, !dbg !498 ; [#uses=1 type=i8*] [debug line = 331:5]
  %239 = load i8* %238, align 1, !dbg !498        ; [#uses=1 type=i8] [debug line = 331:5]
  %240 = zext i8 %239 to i32, !dbg !498           ; [#uses=1 type=i32] [debug line = 331:5]
  %241 = load i8** %2, align 8, !dbg !498         ; [#uses=1 type=i8*] [debug line = 331:5]
  %242 = load i8* %241, align 1, !dbg !498        ; [#uses=1 type=i8] [debug line = 331:5]
  %243 = zext i8 %242 to i32, !dbg !498           ; [#uses=1 type=i32] [debug line = 331:5]
  %244 = xor i32 %240, %243, !dbg !498            ; [#uses=1 type=i32] [debug line = 331:5]
  %245 = load i8** %1, align 8, !dbg !498         ; [#uses=1 type=i8*] [debug line = 331:5]
  %246 = getelementptr inbounds i8* %245, i64 0, !dbg !498 ; [#uses=2 type=i8*] [debug line = 331:5]
  %247 = load i8* %246, align 1, !dbg !498        ; [#uses=1 type=i8] [debug line = 331:5]
  %248 = zext i8 %247 to i32, !dbg !498           ; [#uses=1 type=i32] [debug line = 331:5]
  %249 = xor i32 %248, %244, !dbg !498            ; [#uses=1 type=i32] [debug line = 331:5]
  %250 = trunc i32 %249 to i8, !dbg !498          ; [#uses=1 type=i8] [debug line = 331:5]
  store i8 %250, i8* %246, align 1, !dbg !498     ; [debug line = 331:5]
  %251 = load i8** %1, align 8, !dbg !499         ; [#uses=1 type=i8*] [debug line = 332:5]
  %252 = getelementptr inbounds i8* %251, i64 30, !dbg !499 ; [#uses=1 type=i8*] [debug line = 332:5]
  %253 = load i8* %252, align 1, !dbg !499        ; [#uses=1 type=i8] [debug line = 332:5]
  %254 = zext i8 %253 to i64, !dbg !499           ; [#uses=1 type=i64] [debug line = 332:5]
  %255 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %254, !dbg !499 ; [#uses=1 type=i8*] [debug line = 332:5]
  %256 = load i8* %255, align 1, !dbg !499        ; [#uses=1 type=i8] [debug line = 332:5]
  %257 = zext i8 %256 to i32, !dbg !499           ; [#uses=1 type=i32] [debug line = 332:5]
  %258 = load i8** %1, align 8, !dbg !499         ; [#uses=1 type=i8*] [debug line = 332:5]
  %259 = getelementptr inbounds i8* %258, i64 1, !dbg !499 ; [#uses=2 type=i8*] [debug line = 332:5]
  %260 = load i8* %259, align 1, !dbg !499        ; [#uses=1 type=i8] [debug line = 332:5]
  %261 = zext i8 %260 to i32, !dbg !499           ; [#uses=1 type=i32] [debug line = 332:5]
  %262 = xor i32 %261, %257, !dbg !499            ; [#uses=1 type=i32] [debug line = 332:5]
  %263 = trunc i32 %262 to i8, !dbg !499          ; [#uses=1 type=i8] [debug line = 332:5]
  store i8 %263, i8* %259, align 1, !dbg !499     ; [debug line = 332:5]
  %264 = load i8** %1, align 8, !dbg !500         ; [#uses=1 type=i8*] [debug line = 333:5]
  %265 = getelementptr inbounds i8* %264, i64 31, !dbg !500 ; [#uses=1 type=i8*] [debug line = 333:5]
  %266 = load i8* %265, align 1, !dbg !500        ; [#uses=1 type=i8] [debug line = 333:5]
  %267 = zext i8 %266 to i64, !dbg !500           ; [#uses=1 type=i64] [debug line = 333:5]
  %268 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %267, !dbg !500 ; [#uses=1 type=i8*] [debug line = 333:5]
  %269 = load i8* %268, align 1, !dbg !500        ; [#uses=1 type=i8] [debug line = 333:5]
  %270 = zext i8 %269 to i32, !dbg !500           ; [#uses=1 type=i32] [debug line = 333:5]
  %271 = load i8** %1, align 8, !dbg !500         ; [#uses=1 type=i8*] [debug line = 333:5]
  %272 = getelementptr inbounds i8* %271, i64 2, !dbg !500 ; [#uses=2 type=i8*] [debug line = 333:5]
  %273 = load i8* %272, align 1, !dbg !500        ; [#uses=1 type=i8] [debug line = 333:5]
  %274 = zext i8 %273 to i32, !dbg !500           ; [#uses=1 type=i32] [debug line = 333:5]
  %275 = xor i32 %274, %270, !dbg !500            ; [#uses=1 type=i32] [debug line = 333:5]
  %276 = trunc i32 %275 to i8, !dbg !500          ; [#uses=1 type=i8] [debug line = 333:5]
  store i8 %276, i8* %272, align 1, !dbg !500     ; [debug line = 333:5]
  %277 = load i8** %1, align 8, !dbg !501         ; [#uses=1 type=i8*] [debug line = 334:5]
  %278 = getelementptr inbounds i8* %277, i64 28, !dbg !501 ; [#uses=1 type=i8*] [debug line = 334:5]
  %279 = load i8* %278, align 1, !dbg !501        ; [#uses=1 type=i8] [debug line = 334:5]
  %280 = zext i8 %279 to i64, !dbg !501           ; [#uses=1 type=i64] [debug line = 334:5]
  %281 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %280, !dbg !501 ; [#uses=1 type=i8*] [debug line = 334:5]
  %282 = load i8* %281, align 1, !dbg !501        ; [#uses=1 type=i8] [debug line = 334:5]
  %283 = zext i8 %282 to i32, !dbg !501           ; [#uses=1 type=i32] [debug line = 334:5]
  %284 = load i8** %1, align 8, !dbg !501         ; [#uses=1 type=i8*] [debug line = 334:5]
  %285 = getelementptr inbounds i8* %284, i64 3, !dbg !501 ; [#uses=2 type=i8*] [debug line = 334:5]
  %286 = load i8* %285, align 1, !dbg !501        ; [#uses=1 type=i8] [debug line = 334:5]
  %287 = zext i8 %286 to i32, !dbg !501           ; [#uses=1 type=i32] [debug line = 334:5]
  %288 = xor i32 %287, %283, !dbg !501            ; [#uses=1 type=i32] [debug line = 334:5]
  %289 = trunc i32 %288 to i8, !dbg !501          ; [#uses=1 type=i8] [debug line = 334:5]
  store i8 %289, i8* %285, align 1, !dbg !501     ; [debug line = 334:5]
  ret void, !dbg !502                             ; [debug line = 335:1]
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
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !503), !dbg !504 ; [debug line = 270:34] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !505), !dbg !507 ; [debug line = 272:22] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i8* %a}, metadata !508), !dbg !509 ; [debug line = 272:25] [debug variable = a]
  call void @llvm.dbg.declare(metadata !{i8* %b}, metadata !510), !dbg !511 ; [debug line = 272:28] [debug variable = b]
  call void @llvm.dbg.declare(metadata !{i8* %c}, metadata !512), !dbg !513 ; [debug line = 272:31] [debug variable = c]
  call void @llvm.dbg.declare(metadata !{i8* %d}, metadata !514), !dbg !515 ; [debug line = 272:34] [debug variable = d]
  call void @llvm.dbg.declare(metadata !{i8* %e}, metadata !516), !dbg !517 ; [debug line = 272:37] [debug variable = e]
  call void @llvm.dbg.declare(metadata !{i8* %x}, metadata !518), !dbg !519 ; [debug line = 272:40] [debug variable = x]
  call void @llvm.dbg.declare(metadata !{i8* %y}, metadata !520), !dbg !521 ; [debug line = 272:43] [debug variable = y]
  call void @llvm.dbg.declare(metadata !{i8* %z}, metadata !522), !dbg !523 ; [debug line = 272:46] [debug variable = z]
  store i8 0, i8* %i, align 1, !dbg !524          ; [debug line = 274:10]
  br label %2, !dbg !524                          ; [debug line = 274:10]

; <label>:2                                       ; preds = %161, %0
  %3 = load i8* %i, align 1, !dbg !524            ; [#uses=1 type=i8] [debug line = 274:10]
  %4 = zext i8 %3 to i32, !dbg !524               ; [#uses=1 type=i32] [debug line = 274:10]
  %5 = icmp slt i32 %4, 16, !dbg !524             ; [#uses=1 type=i1] [debug line = 274:10]
  br i1 %5, label %6, label %166, !dbg !524       ; [debug line = 274:10]

; <label>:6                                       ; preds = %2
  %7 = load i8* %i, align 1, !dbg !526            ; [#uses=1 type=i8] [debug line = 276:9]
  %8 = zext i8 %7 to i64, !dbg !526               ; [#uses=1 type=i64] [debug line = 276:9]
  %9 = load i8** %1, align 8, !dbg !526           ; [#uses=1 type=i8*] [debug line = 276:9]
  %10 = getelementptr inbounds i8* %9, i64 %8, !dbg !526 ; [#uses=1 type=i8*] [debug line = 276:9]
  %11 = load i8* %10, align 1, !dbg !526          ; [#uses=1 type=i8] [debug line = 276:9]
  store i8 %11, i8* %a, align 1, !dbg !526        ; [debug line = 276:9]
  %12 = load i8* %i, align 1, !dbg !528           ; [#uses=1 type=i8] [debug line = 277:9]
  %13 = zext i8 %12 to i32, !dbg !528             ; [#uses=1 type=i32] [debug line = 277:9]
  %14 = add nsw i32 %13, 1, !dbg !528             ; [#uses=1 type=i32] [debug line = 277:9]
  %15 = sext i32 %14 to i64, !dbg !528            ; [#uses=1 type=i64] [debug line = 277:9]
  %16 = load i8** %1, align 8, !dbg !528          ; [#uses=1 type=i8*] [debug line = 277:9]
  %17 = getelementptr inbounds i8* %16, i64 %15, !dbg !528 ; [#uses=1 type=i8*] [debug line = 277:9]
  %18 = load i8* %17, align 1, !dbg !528          ; [#uses=1 type=i8] [debug line = 277:9]
  store i8 %18, i8* %b, align 1, !dbg !528        ; [debug line = 277:9]
  %19 = load i8* %i, align 1, !dbg !529           ; [#uses=1 type=i8] [debug line = 278:9]
  %20 = zext i8 %19 to i32, !dbg !529             ; [#uses=1 type=i32] [debug line = 278:9]
  %21 = add nsw i32 %20, 2, !dbg !529             ; [#uses=1 type=i32] [debug line = 278:9]
  %22 = sext i32 %21 to i64, !dbg !529            ; [#uses=1 type=i64] [debug line = 278:9]
  %23 = load i8** %1, align 8, !dbg !529          ; [#uses=1 type=i8*] [debug line = 278:9]
  %24 = getelementptr inbounds i8* %23, i64 %22, !dbg !529 ; [#uses=1 type=i8*] [debug line = 278:9]
  %25 = load i8* %24, align 1, !dbg !529          ; [#uses=1 type=i8] [debug line = 278:9]
  store i8 %25, i8* %c, align 1, !dbg !529        ; [debug line = 278:9]
  %26 = load i8* %i, align 1, !dbg !530           ; [#uses=1 type=i8] [debug line = 279:9]
  %27 = zext i8 %26 to i32, !dbg !530             ; [#uses=1 type=i32] [debug line = 279:9]
  %28 = add nsw i32 %27, 3, !dbg !530             ; [#uses=1 type=i32] [debug line = 279:9]
  %29 = sext i32 %28 to i64, !dbg !530            ; [#uses=1 type=i64] [debug line = 279:9]
  %30 = load i8** %1, align 8, !dbg !530          ; [#uses=1 type=i8*] [debug line = 279:9]
  %31 = getelementptr inbounds i8* %30, i64 %29, !dbg !530 ; [#uses=1 type=i8*] [debug line = 279:9]
  %32 = load i8* %31, align 1, !dbg !530          ; [#uses=1 type=i8] [debug line = 279:9]
  store i8 %32, i8* %d, align 1, !dbg !530        ; [debug line = 279:9]
  %33 = load i8* %a, align 1, !dbg !531           ; [#uses=1 type=i8] [debug line = 280:9]
  %34 = zext i8 %33 to i32, !dbg !531             ; [#uses=1 type=i32] [debug line = 280:9]
  %35 = load i8* %b, align 1, !dbg !531           ; [#uses=1 type=i8] [debug line = 280:9]
  %36 = zext i8 %35 to i32, !dbg !531             ; [#uses=1 type=i32] [debug line = 280:9]
  %37 = xor i32 %34, %36, !dbg !531               ; [#uses=1 type=i32] [debug line = 280:9]
  %38 = load i8* %c, align 1, !dbg !531           ; [#uses=1 type=i8] [debug line = 280:9]
  %39 = zext i8 %38 to i32, !dbg !531             ; [#uses=1 type=i32] [debug line = 280:9]
  %40 = xor i32 %37, %39, !dbg !531               ; [#uses=1 type=i32] [debug line = 280:9]
  %41 = load i8* %d, align 1, !dbg !531           ; [#uses=1 type=i8] [debug line = 280:9]
  %42 = zext i8 %41 to i32, !dbg !531             ; [#uses=1 type=i32] [debug line = 280:9]
  %43 = xor i32 %40, %42, !dbg !531               ; [#uses=1 type=i32] [debug line = 280:9]
  %44 = trunc i32 %43 to i8, !dbg !531            ; [#uses=1 type=i8] [debug line = 280:9]
  store i8 %44, i8* %e, align 1, !dbg !531        ; [debug line = 280:9]
  %45 = load i8* %e, align 1, !dbg !532           ; [#uses=1 type=i8] [debug line = 281:13]
  %46 = call zeroext i8 @rj_xtime(i8 zeroext %45), !dbg !532 ; [#uses=1 type=i8] [debug line = 281:13]
  store i8 %46, i8* %z, align 1, !dbg !532        ; [debug line = 281:13]
  %47 = load i8* %e, align 1, !dbg !533           ; [#uses=1 type=i8] [debug line = 282:9]
  %48 = zext i8 %47 to i32, !dbg !533             ; [#uses=1 type=i32] [debug line = 282:9]
  %49 = load i8* %z, align 1, !dbg !534           ; [#uses=1 type=i8] [debug line = 282:26]
  %50 = zext i8 %49 to i32, !dbg !534             ; [#uses=1 type=i32] [debug line = 282:26]
  %51 = load i8* %a, align 1, !dbg !534           ; [#uses=1 type=i8] [debug line = 282:26]
  %52 = zext i8 %51 to i32, !dbg !534             ; [#uses=1 type=i32] [debug line = 282:26]
  %53 = xor i32 %50, %52, !dbg !534               ; [#uses=1 type=i32] [debug line = 282:26]
  %54 = load i8* %c, align 1, !dbg !534           ; [#uses=1 type=i8] [debug line = 282:26]
  %55 = zext i8 %54 to i32, !dbg !534             ; [#uses=1 type=i32] [debug line = 282:26]
  %56 = xor i32 %53, %55, !dbg !534               ; [#uses=1 type=i32] [debug line = 282:26]
  %57 = trunc i32 %56 to i8, !dbg !534            ; [#uses=1 type=i8] [debug line = 282:26]
  %58 = call zeroext i8 @rj_xtime(i8 zeroext %57), !dbg !534 ; [#uses=1 type=i8] [debug line = 282:26]
  %59 = call zeroext i8 @rj_xtime(i8 zeroext %58), !dbg !534 ; [#uses=1 type=i8] [debug line = 282:26]
  %60 = zext i8 %59 to i32, !dbg !534             ; [#uses=1 type=i32] [debug line = 282:26]
  %61 = xor i32 %48, %60, !dbg !534               ; [#uses=1 type=i32] [debug line = 282:26]
  %62 = trunc i32 %61 to i8, !dbg !534            ; [#uses=1 type=i8] [debug line = 282:26]
  store i8 %62, i8* %x, align 1, !dbg !534        ; [debug line = 282:26]
  %63 = load i8* %e, align 1, !dbg !535           ; [#uses=1 type=i8] [debug line = 283:9]
  %64 = zext i8 %63 to i32, !dbg !535             ; [#uses=1 type=i32] [debug line = 283:9]
  %65 = load i8* %z, align 1, !dbg !536           ; [#uses=1 type=i8] [debug line = 283:26]
  %66 = zext i8 %65 to i32, !dbg !536             ; [#uses=1 type=i32] [debug line = 283:26]
  %67 = load i8* %b, align 1, !dbg !536           ; [#uses=1 type=i8] [debug line = 283:26]
  %68 = zext i8 %67 to i32, !dbg !536             ; [#uses=1 type=i32] [debug line = 283:26]
  %69 = xor i32 %66, %68, !dbg !536               ; [#uses=1 type=i32] [debug line = 283:26]
  %70 = load i8* %d, align 1, !dbg !536           ; [#uses=1 type=i8] [debug line = 283:26]
  %71 = zext i8 %70 to i32, !dbg !536             ; [#uses=1 type=i32] [debug line = 283:26]
  %72 = xor i32 %69, %71, !dbg !536               ; [#uses=1 type=i32] [debug line = 283:26]
  %73 = trunc i32 %72 to i8, !dbg !536            ; [#uses=1 type=i8] [debug line = 283:26]
  %74 = call zeroext i8 @rj_xtime(i8 zeroext %73), !dbg !536 ; [#uses=1 type=i8] [debug line = 283:26]
  %75 = call zeroext i8 @rj_xtime(i8 zeroext %74), !dbg !536 ; [#uses=1 type=i8] [debug line = 283:26]
  %76 = zext i8 %75 to i32, !dbg !536             ; [#uses=1 type=i32] [debug line = 283:26]
  %77 = xor i32 %64, %76, !dbg !536               ; [#uses=1 type=i32] [debug line = 283:26]
  %78 = trunc i32 %77 to i8, !dbg !536            ; [#uses=1 type=i8] [debug line = 283:26]
  store i8 %78, i8* %y, align 1, !dbg !536        ; [debug line = 283:26]
  %79 = load i8* %x, align 1, !dbg !537           ; [#uses=1 type=i8] [debug line = 284:9]
  %80 = zext i8 %79 to i32, !dbg !537             ; [#uses=1 type=i32] [debug line = 284:9]
  %81 = load i8* %a, align 1, !dbg !538           ; [#uses=1 type=i8] [debug line = 284:23]
  %82 = zext i8 %81 to i32, !dbg !538             ; [#uses=1 type=i32] [debug line = 284:23]
  %83 = load i8* %b, align 1, !dbg !538           ; [#uses=1 type=i8] [debug line = 284:23]
  %84 = zext i8 %83 to i32, !dbg !538             ; [#uses=1 type=i32] [debug line = 284:23]
  %85 = xor i32 %82, %84, !dbg !538               ; [#uses=1 type=i32] [debug line = 284:23]
  %86 = trunc i32 %85 to i8, !dbg !538            ; [#uses=1 type=i8] [debug line = 284:23]
  %87 = call zeroext i8 @rj_xtime(i8 zeroext %86), !dbg !538 ; [#uses=1 type=i8] [debug line = 284:23]
  %88 = zext i8 %87 to i32, !dbg !538             ; [#uses=1 type=i32] [debug line = 284:23]
  %89 = xor i32 %80, %88, !dbg !538               ; [#uses=1 type=i32] [debug line = 284:23]
  %90 = load i8* %i, align 1, !dbg !538           ; [#uses=1 type=i8] [debug line = 284:23]
  %91 = zext i8 %90 to i64, !dbg !538             ; [#uses=1 type=i64] [debug line = 284:23]
  %92 = load i8** %1, align 8, !dbg !538          ; [#uses=1 type=i8*] [debug line = 284:23]
  %93 = getelementptr inbounds i8* %92, i64 %91, !dbg !538 ; [#uses=2 type=i8*] [debug line = 284:23]
  %94 = load i8* %93, align 1, !dbg !538          ; [#uses=1 type=i8] [debug line = 284:23]
  %95 = zext i8 %94 to i32, !dbg !538             ; [#uses=1 type=i32] [debug line = 284:23]
  %96 = xor i32 %95, %89, !dbg !538               ; [#uses=1 type=i32] [debug line = 284:23]
  %97 = trunc i32 %96 to i8, !dbg !538            ; [#uses=1 type=i8] [debug line = 284:23]
  store i8 %97, i8* %93, align 1, !dbg !538       ; [debug line = 284:23]
  %98 = load i8* %y, align 1, !dbg !539           ; [#uses=1 type=i8] [debug line = 285:9]
  %99 = zext i8 %98 to i32, !dbg !539             ; [#uses=1 type=i32] [debug line = 285:9]
  %100 = load i8* %b, align 1, !dbg !540          ; [#uses=1 type=i8] [debug line = 285:27]
  %101 = zext i8 %100 to i32, !dbg !540           ; [#uses=1 type=i32] [debug line = 285:27]
  %102 = load i8* %c, align 1, !dbg !540          ; [#uses=1 type=i8] [debug line = 285:27]
  %103 = zext i8 %102 to i32, !dbg !540           ; [#uses=1 type=i32] [debug line = 285:27]
  %104 = xor i32 %101, %103, !dbg !540            ; [#uses=1 type=i32] [debug line = 285:27]
  %105 = trunc i32 %104 to i8, !dbg !540          ; [#uses=1 type=i8] [debug line = 285:27]
  %106 = call zeroext i8 @rj_xtime(i8 zeroext %105), !dbg !540 ; [#uses=1 type=i8] [debug line = 285:27]
  %107 = zext i8 %106 to i32, !dbg !540           ; [#uses=1 type=i32] [debug line = 285:27]
  %108 = xor i32 %99, %107, !dbg !540             ; [#uses=1 type=i32] [debug line = 285:27]
  %109 = load i8* %i, align 1, !dbg !540          ; [#uses=1 type=i8] [debug line = 285:27]
  %110 = zext i8 %109 to i32, !dbg !540           ; [#uses=1 type=i32] [debug line = 285:27]
  %111 = add nsw i32 %110, 1, !dbg !540           ; [#uses=1 type=i32] [debug line = 285:27]
  %112 = sext i32 %111 to i64, !dbg !540          ; [#uses=1 type=i64] [debug line = 285:27]
  %113 = load i8** %1, align 8, !dbg !540         ; [#uses=1 type=i8*] [debug line = 285:27]
  %114 = getelementptr inbounds i8* %113, i64 %112, !dbg !540 ; [#uses=2 type=i8*] [debug line = 285:27]
  %115 = load i8* %114, align 1, !dbg !540        ; [#uses=1 type=i8] [debug line = 285:27]
  %116 = zext i8 %115 to i32, !dbg !540           ; [#uses=1 type=i32] [debug line = 285:27]
  %117 = xor i32 %116, %108, !dbg !540            ; [#uses=1 type=i32] [debug line = 285:27]
  %118 = trunc i32 %117 to i8, !dbg !540          ; [#uses=1 type=i8] [debug line = 285:27]
  store i8 %118, i8* %114, align 1, !dbg !540     ; [debug line = 285:27]
  %119 = load i8* %x, align 1, !dbg !541          ; [#uses=1 type=i8] [debug line = 286:9]
  %120 = zext i8 %119 to i32, !dbg !541           ; [#uses=1 type=i32] [debug line = 286:9]
  %121 = load i8* %c, align 1, !dbg !542          ; [#uses=1 type=i8] [debug line = 286:27]
  %122 = zext i8 %121 to i32, !dbg !542           ; [#uses=1 type=i32] [debug line = 286:27]
  %123 = load i8* %d, align 1, !dbg !542          ; [#uses=1 type=i8] [debug line = 286:27]
  %124 = zext i8 %123 to i32, !dbg !542           ; [#uses=1 type=i32] [debug line = 286:27]
  %125 = xor i32 %122, %124, !dbg !542            ; [#uses=1 type=i32] [debug line = 286:27]
  %126 = trunc i32 %125 to i8, !dbg !542          ; [#uses=1 type=i8] [debug line = 286:27]
  %127 = call zeroext i8 @rj_xtime(i8 zeroext %126), !dbg !542 ; [#uses=1 type=i8] [debug line = 286:27]
  %128 = zext i8 %127 to i32, !dbg !542           ; [#uses=1 type=i32] [debug line = 286:27]
  %129 = xor i32 %120, %128, !dbg !542            ; [#uses=1 type=i32] [debug line = 286:27]
  %130 = load i8* %i, align 1, !dbg !542          ; [#uses=1 type=i8] [debug line = 286:27]
  %131 = zext i8 %130 to i32, !dbg !542           ; [#uses=1 type=i32] [debug line = 286:27]
  %132 = add nsw i32 %131, 2, !dbg !542           ; [#uses=1 type=i32] [debug line = 286:27]
  %133 = sext i32 %132 to i64, !dbg !542          ; [#uses=1 type=i64] [debug line = 286:27]
  %134 = load i8** %1, align 8, !dbg !542         ; [#uses=1 type=i8*] [debug line = 286:27]
  %135 = getelementptr inbounds i8* %134, i64 %133, !dbg !542 ; [#uses=2 type=i8*] [debug line = 286:27]
  %136 = load i8* %135, align 1, !dbg !542        ; [#uses=1 type=i8] [debug line = 286:27]
  %137 = zext i8 %136 to i32, !dbg !542           ; [#uses=1 type=i32] [debug line = 286:27]
  %138 = xor i32 %137, %129, !dbg !542            ; [#uses=1 type=i32] [debug line = 286:27]
  %139 = trunc i32 %138 to i8, !dbg !542          ; [#uses=1 type=i8] [debug line = 286:27]
  store i8 %139, i8* %135, align 1, !dbg !542     ; [debug line = 286:27]
  %140 = load i8* %y, align 1, !dbg !543          ; [#uses=1 type=i8] [debug line = 287:9]
  %141 = zext i8 %140 to i32, !dbg !543           ; [#uses=1 type=i32] [debug line = 287:9]
  %142 = load i8* %d, align 1, !dbg !544          ; [#uses=1 type=i8] [debug line = 287:27]
  %143 = zext i8 %142 to i32, !dbg !544           ; [#uses=1 type=i32] [debug line = 287:27]
  %144 = load i8* %a, align 1, !dbg !544          ; [#uses=1 type=i8] [debug line = 287:27]
  %145 = zext i8 %144 to i32, !dbg !544           ; [#uses=1 type=i32] [debug line = 287:27]
  %146 = xor i32 %143, %145, !dbg !544            ; [#uses=1 type=i32] [debug line = 287:27]
  %147 = trunc i32 %146 to i8, !dbg !544          ; [#uses=1 type=i8] [debug line = 287:27]
  %148 = call zeroext i8 @rj_xtime(i8 zeroext %147), !dbg !544 ; [#uses=1 type=i8] [debug line = 287:27]
  %149 = zext i8 %148 to i32, !dbg !544           ; [#uses=1 type=i32] [debug line = 287:27]
  %150 = xor i32 %141, %149, !dbg !544            ; [#uses=1 type=i32] [debug line = 287:27]
  %151 = load i8* %i, align 1, !dbg !544          ; [#uses=1 type=i8] [debug line = 287:27]
  %152 = zext i8 %151 to i32, !dbg !544           ; [#uses=1 type=i32] [debug line = 287:27]
  %153 = add nsw i32 %152, 3, !dbg !544           ; [#uses=1 type=i32] [debug line = 287:27]
  %154 = sext i32 %153 to i64, !dbg !544          ; [#uses=1 type=i64] [debug line = 287:27]
  %155 = load i8** %1, align 8, !dbg !544         ; [#uses=1 type=i8*] [debug line = 287:27]
  %156 = getelementptr inbounds i8* %155, i64 %154, !dbg !544 ; [#uses=2 type=i8*] [debug line = 287:27]
  %157 = load i8* %156, align 1, !dbg !544        ; [#uses=1 type=i8] [debug line = 287:27]
  %158 = zext i8 %157 to i32, !dbg !544           ; [#uses=1 type=i32] [debug line = 287:27]
  %159 = xor i32 %158, %150, !dbg !544            ; [#uses=1 type=i32] [debug line = 287:27]
  %160 = trunc i32 %159 to i8, !dbg !544          ; [#uses=1 type=i8] [debug line = 287:27]
  store i8 %160, i8* %156, align 1, !dbg !544     ; [debug line = 287:27]
  br label %161, !dbg !545                        ; [debug line = 288:5]

; <label>:161                                     ; preds = %6
  %162 = load i8* %i, align 1, !dbg !546          ; [#uses=1 type=i8] [debug line = 274:25]
  %163 = zext i8 %162 to i32, !dbg !546           ; [#uses=1 type=i32] [debug line = 274:25]
  %164 = add nsw i32 %163, 4, !dbg !546           ; [#uses=1 type=i32] [debug line = 274:25]
  %165 = trunc i32 %164 to i8, !dbg !546          ; [#uses=1 type=i8] [debug line = 274:25]
  store i8 %165, i8* %i, align 1, !dbg !546       ; [debug line = 274:25]
  br label %2, !dbg !546                          ; [debug line = 274:25]

; <label>:166                                     ; preds = %2
  ret void, !dbg !547                             ; [debug line = 289:1]
}

; [#uses=14]
define internal zeroext i8 @rj_xtime(i8 zeroext %x) nounwind uwtable {
  %1 = alloca i8, align 1                         ; [#uses=3 type=i8*]
  %y = alloca i8, align 1                         ; [#uses=3 type=i8*]
  store i8 %x, i8* %1, align 1
  call void @llvm.dbg.declare(metadata !{i8* %1}, metadata !548), !dbg !549 ; [debug line = 187:33] [debug variable = x]
  call void @llvm.dbg.declare(metadata !{i8* %y}, metadata !550), !dbg !552 ; [debug line = 189:13] [debug variable = y]
  %2 = load i8* %1, align 1, !dbg !553            ; [#uses=1 type=i8] [debug line = 189:34]
  %3 = zext i8 %2 to i32, !dbg !553               ; [#uses=1 type=i32] [debug line = 189:34]
  %4 = shl i32 %3, 1, !dbg !553                   ; [#uses=1 type=i32] [debug line = 189:34]
  %5 = trunc i32 %4 to i8, !dbg !553              ; [#uses=1 type=i8] [debug line = 189:34]
  store i8 %5, i8* %y, align 1, !dbg !553         ; [debug line = 189:34]
  %6 = load i8* %1, align 1, !dbg !554            ; [#uses=1 type=i8] [debug line = 190:5]
  %7 = zext i8 %6 to i32, !dbg !554               ; [#uses=1 type=i32] [debug line = 190:5]
  %8 = and i32 %7, 128, !dbg !554                 ; [#uses=1 type=i32] [debug line = 190:5]
  %9 = icmp ne i32 %8, 0, !dbg !554               ; [#uses=1 type=i1] [debug line = 190:5]
  br i1 %9, label %10, label %14, !dbg !554       ; [debug line = 190:5]

; <label>:10                                      ; preds = %0
  %11 = load i8* %y, align 1, !dbg !554           ; [#uses=1 type=i8] [debug line = 190:5]
  %12 = zext i8 %11 to i32, !dbg !554             ; [#uses=1 type=i32] [debug line = 190:5]
  %13 = xor i32 %12, 27, !dbg !554                ; [#uses=1 type=i32] [debug line = 190:5]
  br label %17, !dbg !554                         ; [debug line = 190:5]

; <label>:14                                      ; preds = %0
  %15 = load i8* %y, align 1, !dbg !554           ; [#uses=1 type=i8] [debug line = 190:5]
  %16 = zext i8 %15 to i32, !dbg !554             ; [#uses=1 type=i32] [debug line = 190:5]
  br label %17, !dbg !554                         ; [debug line = 190:5]

; <label>:17                                      ; preds = %14, %10
  %18 = phi i32 [ %13, %10 ], [ %16, %14 ], !dbg !554 ; [#uses=1 type=i32] [debug line = 190:5]
  %19 = trunc i32 %18 to i8, !dbg !554            ; [#uses=1 type=i8] [debug line = 190:5]
  ret i8 %19, !dbg !554                           ; [debug line = 190:5]
}

!llvm.dbg.cu = !{!0, !53}
!opencl.kernels = !{!102, !109, !115, !121, !123, !124, !127, !131, !134, !135, !136, !138, !139, !140, !141, !147}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/brett/Thesis/Vivado_WS/aescbc/solution1/.autopilot/db/aescbc.pragma.2.c", metadata !"/home/brett/Thesis/Vivado_WS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !11, metadata !13, metadata !25} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, null, metadata !"", metadata !4, i32 9, i64 3, i64 4, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
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
!15 = metadata !{i32 786478, i32 0, metadata !16, metadata !"aescbc", metadata !"aescbc", metadata !"", metadata !16, i32 8, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i3, i8*, i8*)* @aescbc, null, null, metadata !23, i32 13} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786473, metadata !"aescbc/src/aescbc.c", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{null, metadata !19, metadata !19, metadata !22, metadata !19, metadata !19}
!19 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!20 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !16, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ]
!21 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!22 = metadata !{i32 786454, null, metadata !"ciphermode_t", metadata !16, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !27, metadata !31, metadata !32, metadata !33, metadata !37, metadata !45, metadata !48, metadata !49, metadata !50}
!27 = metadata !{i32 786484, i32 0, metadata !15, metadata !"lastbuf", metadata !"lastbuf", metadata !"", metadata !16, i32 22, metadata !28, i32 1, i32 1, [16 x i8]* @aescbc.lastbuf} ; [ DW_TAG_variable ]
!28 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !20, metadata !29, i32 0, i32 0} ; [ DW_TAG_array_type ]
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!31 = metadata !{i32 786484, i32 0, metadata !15, metadata !"iv", metadata !"iv", metadata !"", metadata !16, i32 23, metadata !28, i32 1, i32 1, [16 x i8]* @aescbc.iv} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786484, i32 0, metadata !15, metadata !"xorv", metadata !"xorv", metadata !"", metadata !16, i32 24, metadata !28, i32 1, i32 1, [16 x i8]* @aescbc.xorv} ; [ DW_TAG_variable ]
!33 = metadata !{i32 786484, i32 0, metadata !15, metadata !"key", metadata !"key", metadata !"", metadata !16, i32 25, metadata !34, i32 1, i32 1, [32 x i8]* @aescbc.key} ; [ DW_TAG_variable ]
!34 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !20, metadata !35, i32 0, i32 0} ; [ DW_TAG_array_type ]
!35 = metadata !{metadata !36}
!36 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!37 = metadata !{i32 786484, i32 0, metadata !15, metadata !"ctx", metadata !"ctx", metadata !"", metadata !16, i32 26, metadata !38, i32 1, i32 1, %struct.aes_context* @aescbc.ctx} ; [ DW_TAG_variable ]
!38 = metadata !{i32 786454, null, metadata !"aes_context", metadata !16, i32 33, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!39 = metadata !{i32 786451, null, metadata !"", metadata !40, i32 29, i64 768, i64 8, i32 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!40 = metadata !{i32 786473, metadata !"aescbc/src/aesecb.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!41 = metadata !{metadata !42, metadata !43, metadata !44}
!42 = metadata !{i32 786445, metadata !39, metadata !"key", metadata !40, i32 30, i64 256, i64 8, i64 0, i32 0, metadata !34} ; [ DW_TAG_member ]
!43 = metadata !{i32 786445, metadata !39, metadata !"enckey", metadata !40, i32 31, i64 256, i64 8, i64 256, i32 0, metadata !34} ; [ DW_TAG_member ]
!44 = metadata !{i32 786445, metadata !39, metadata !"deckey", metadata !40, i32 32, i64 256, i64 8, i64 512, i32 0, metadata !34} ; [ DW_TAG_member ]
!45 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !46, i32 315, metadata !47, i32 0, i32 1, %struct.aes_context* @_IO_2_1_stdin_} ; [ DW_TAG_variable ]
!46 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!47 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !46, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!48 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !46, i32 316, metadata !47, i32 0, i32 1, %struct.aes_context* @_IO_2_1_stdout_} ; [ DW_TAG_variable ]
!49 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !46, i32 317, metadata !47, i32 0, i32 1, %struct.aes_context* @_IO_2_1_stderr_} ; [ DW_TAG_variable ]
!50 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !51, i32 26, metadata !52, i32 0, i32 1, i32* @sys_nerr} ; [ DW_TAG_variable ]
!51 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!52 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!53 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/brett/Thesis/Vivado_WS/aescbc/solution1/.autopilot/db/aesecb.pragma.2.c", metadata !"/home/brett/Thesis/Vivado_WS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !11, metadata !11, metadata !54, metadata !94} ; [ DW_TAG_compile_unit ]
!54 = metadata !{metadata !55}
!55 = metadata !{metadata !56, metadata !70, metadata !73, metadata !74, metadata !75, metadata !78, metadata !81, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !93}
!56 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_init", metadata !"aes_init", metadata !"", metadata !57, i32 339, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.aes_context*, i8*)* @aes_init, null, null, metadata !23, i32 340} ; [ DW_TAG_subprogram ]
!57 = metadata !{i32 786473, metadata !"aescbc/src/aesecb.c", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!58 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!59 = metadata !{null, metadata !60, metadata !69}
!60 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ]
!61 = metadata !{i32 786454, null, metadata !"aes_context", metadata !57, i32 33, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ]
!62 = metadata !{i32 786451, null, metadata !"", metadata !40, i32 29, i64 768, i64 8, i32 0, i32 0, null, metadata !63, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!63 = metadata !{metadata !64, metadata !67, metadata !68}
!64 = metadata !{i32 786445, metadata !62, metadata !"key", metadata !40, i32 30, i64 256, i64 8, i64 0, i32 0, metadata !65} ; [ DW_TAG_member ]
!65 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !66, metadata !35, i32 0, i32 0} ; [ DW_TAG_array_type ]
!66 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !40, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ]
!67 = metadata !{i32 786445, metadata !62, metadata !"enckey", metadata !40, i32 31, i64 256, i64 8, i64 256, i32 0, metadata !65} ; [ DW_TAG_member ]
!68 = metadata !{i32 786445, metadata !62, metadata !"deckey", metadata !40, i32 32, i64 256, i64 8, i64 512, i32 0, metadata !65} ; [ DW_TAG_member ]
!69 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !66} ; [ DW_TAG_pointer_type ]
!70 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_done", metadata !"aes_done", metadata !"", metadata !57, i32 349, metadata !71, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.aes_context*)* @aes_done, null, null, metadata !23, i32 350} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{null, metadata !60}
!73 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_encrypt_ecb", metadata !"aes_encrypt_ecb", metadata !"", metadata !57, i32 358, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.aes_context*, i8*)* @aes_encrypt_ecb, null, null, metadata !23, i32 359} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_decrypt_ecb", metadata !"aes_decrypt_ecb", metadata !"", metadata !57, i32 378, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.aes_context*, i8*)* @aes_decrypt_ecb, null, null, metadata !23, i32 379} ; [ DW_TAG_subprogram ]
!75 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_mixColumns_inv", metadata !"aes_mixColumns_inv", metadata !"", metadata !57, i32 270, metadata !76, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_mixColumns_inv, null, null, metadata !23, i32 271} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!77 = metadata !{null, metadata !69}
!78 = metadata !{i32 786478, i32 0, metadata !57, metadata !"rj_xtime", metadata !"rj_xtime", metadata !"", metadata !57, i32 187, metadata !79, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i8)* @rj_xtime, null, null, metadata !23, i32 188} ; [ DW_TAG_subprogram ]
!79 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!80 = metadata !{metadata !66, metadata !66}
!81 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_expandDecKey", metadata !"aes_expandDecKey", metadata !"", metadata !57, i32 315, metadata !82, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*)* @aes_expandDecKey, null, null, metadata !23, i32 316} ; [ DW_TAG_subprogram ]
!82 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!83 = metadata !{null, metadata !69, metadata !69}
!84 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_subBytes_inv", metadata !"aes_subBytes_inv", metadata !"", metadata !57, i32 202, metadata !76, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_subBytes_inv, null, null, metadata !23, i32 203} ; [ DW_TAG_subprogram ]
!85 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_shiftRows_inv", metadata !"aes_shiftRows_inv", metadata !"", metadata !57, i32 239, metadata !76, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_shiftRows_inv, null, null, metadata !23, i32 240} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_addRoundKey", metadata !"aes_addRoundKey", metadata !"", metadata !57, i32 210, metadata !82, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*)* @aes_addRoundKey, null, null, metadata !23, i32 211} ; [ DW_TAG_subprogram ]
!87 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_mixColumns", metadata !"aes_mixColumns", metadata !"", metadata !57, i32 251, metadata !76, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_mixColumns, null, null, metadata !23, i32 252} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_shiftRows", metadata !"aes_shiftRows", metadata !"", metadata !57, i32 227, metadata !76, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_shiftRows, null, null, metadata !23, i32 228} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_subBytes", metadata !"aes_subBytes", metadata !"", metadata !57, i32 194, metadata !76, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_subBytes, null, null, metadata !23, i32 195} ; [ DW_TAG_subprogram ]
!90 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_addRoundKey_cpy", metadata !"aes_addRoundKey_cpy", metadata !"", metadata !57, i32 218, metadata !91, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i8*)* @aes_addRoundKey_cpy, null, null, metadata !23, i32 219} ; [ DW_TAG_subprogram ]
!91 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !92, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!92 = metadata !{null, metadata !69, metadata !69, metadata !69}
!93 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_expandEncKey", metadata !"aes_expandEncKey", metadata !"", metadata !57, i32 292, metadata !82, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*)* @aes_expandEncKey, null, null, metadata !23, i32 293} ; [ DW_TAG_subprogram ]
!94 = metadata !{metadata !95}
!95 = metadata !{metadata !96, metadata !101}
!96 = metadata !{i32 786484, i32 0, null, metadata !"sbox", metadata !"sbox", metadata !"", metadata !57, i32 47, metadata !97, i32 1, i32 1, [256 x i8]* @sbox} ; [ DW_TAG_variable ]
!97 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !98, metadata !99, i32 0, i32 0} ; [ DW_TAG_array_type ]
!98 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_const_type ]
!99 = metadata !{metadata !100}
!100 = metadata !{i32 786465, i64 0, i64 255}     ; [ DW_TAG_subrange_type ]
!101 = metadata !{i32 786484, i32 0, null, metadata !"sboxinv", metadata !"sboxinv", metadata !"", metadata !57, i32 82, metadata !97, i32 1, i32 1, [256 x i8]* @sboxinv} ; [ DW_TAG_variable ]
!102 = metadata !{void (i8*, i8*, i3, i8*, i8*)* @aescbc, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108}
!103 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0, i32 1, i32 1}
!104 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint8_t*", metadata !"ciphermode_t", metadata !"uint8_t*", metadata !"uint8_t*"}
!106 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!107 = metadata !{metadata !"kernel_arg_name", metadata !"data_in", metadata !"data_out", metadata !"mode", metadata !"key_in", metadata !"iv_in"}
!108 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!109 = metadata !{void (%struct.aes_context*, i8*)* @aes_init, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !108}
!110 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!111 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!112 = metadata !{metadata !"kernel_arg_type", metadata !"aes_context*", metadata !"uint8_t*"}
!113 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!114 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"k"}
!115 = metadata !{void (%struct.aes_context*)* @aes_done, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !108}
!116 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!117 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!118 = metadata !{metadata !"kernel_arg_type", metadata !"aes_context*"}
!119 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!120 = metadata !{metadata !"kernel_arg_name", metadata !"ctx"}
!121 = metadata !{void (%struct.aes_context*, i8*)* @aes_encrypt_ecb, metadata !110, metadata !111, metadata !112, metadata !113, metadata !122, metadata !108}
!122 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"buf"}
!123 = metadata !{void (%struct.aes_context*, i8*)* @aes_decrypt_ecb, metadata !110, metadata !111, metadata !112, metadata !113, metadata !122, metadata !108}
!124 = metadata !{void (i8*)* @aes_mixColumns_inv, metadata !116, metadata !117, metadata !125, metadata !119, metadata !126, metadata !108}
!125 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*"}
!126 = metadata !{metadata !"kernel_arg_name", metadata !"buf"}
!127 = metadata !{i8 (i8)* @rj_xtime, metadata !128, metadata !117, metadata !129, metadata !119, metadata !130, metadata !108}
!128 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!129 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t"}
!130 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!131 = metadata !{void (i8*, i8*)* @aes_expandDecKey, metadata !110, metadata !111, metadata !132, metadata !113, metadata !133, metadata !108}
!132 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint8_t*"}
!133 = metadata !{metadata !"kernel_arg_name", metadata !"k", metadata !"rc"}
!134 = metadata !{void (i8*)* @aes_subBytes_inv, metadata !116, metadata !117, metadata !125, metadata !119, metadata !126, metadata !108}
!135 = metadata !{void (i8*)* @aes_shiftRows_inv, metadata !116, metadata !117, metadata !125, metadata !119, metadata !126, metadata !108}
!136 = metadata !{void (i8*, i8*)* @aes_addRoundKey, metadata !110, metadata !111, metadata !132, metadata !113, metadata !137, metadata !108}
!137 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"key"}
!138 = metadata !{void (i8*)* @aes_mixColumns, metadata !116, metadata !117, metadata !125, metadata !119, metadata !126, metadata !108}
!139 = metadata !{void (i8*)* @aes_shiftRows, metadata !116, metadata !117, metadata !125, metadata !119, metadata !126, metadata !108}
!140 = metadata !{void (i8*)* @aes_subBytes, metadata !116, metadata !117, metadata !125, metadata !119, metadata !126, metadata !108}
!141 = metadata !{void (i8*, i8*, i8*)* @aes_addRoundKey_cpy, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !108}
!142 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!143 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!144 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint8_t*", metadata !"uint8_t*"}
!145 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!146 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"key", metadata !"cpk"}
!147 = metadata !{void (i8*, i8*)* @aes_expandEncKey, metadata !110, metadata !111, metadata !132, metadata !113, metadata !133, metadata !108}
!148 = metadata !{i32 786689, metadata !15, metadata !"data_in", metadata !16, i32 16777224, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!149 = metadata !{i32 8, i32 21, metadata !15, null}
!150 = metadata !{i32 786689, metadata !15, metadata !"data_out", metadata !16, i32 33554441, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!151 = metadata !{i32 9, i32 12, metadata !15, null}
!152 = metadata !{i32 786689, metadata !15, metadata !"mode", metadata !16, i32 50331658, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!153 = metadata !{i32 10, i32 20, metadata !15, null}
!154 = metadata !{i32 786689, metadata !15, metadata !"key_in", metadata !16, i32 67108875, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!155 = metadata !{i32 11, i32 12, metadata !15, null}
!156 = metadata !{i32 786689, metadata !15, metadata !"iv_in", metadata !16, i32 83886092, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!157 = metadata !{i32 12, i32 12, metadata !15, null}
!158 = metadata !{i32 13, i32 2, metadata !159, null}
!159 = metadata !{i32 786443, metadata !15, i32 13, i32 1, metadata !16, i32 0} ; [ DW_TAG_lexical_block ]
!160 = metadata !{i32 13, i32 35, metadata !159, null}
!161 = metadata !{i32 13, i32 69, metadata !159, null}
!162 = metadata !{i32 13, i32 105, metadata !159, null}
!163 = metadata !{i32 14, i32 1, metadata !159, null}
!164 = metadata !{i32 15, i32 1, metadata !159, null}
!165 = metadata !{i32 16, i32 1, metadata !159, null}
!166 = metadata !{i32 17, i32 1, metadata !159, null}
!167 = metadata !{i32 18, i32 1, metadata !159, null}
!168 = metadata !{i32 19, i32 1, metadata !159, null}
!169 = metadata !{i32 786688, metadata !159, metadata !"buf", metadata !16, i32 21, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!170 = metadata !{i32 21, i32 10, metadata !159, null}
!171 = metadata !{i32 786688, metadata !159, metadata !"i", metadata !16, i32 27, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!172 = metadata !{i32 27, i32 13, metadata !159, null}
!173 = metadata !{i32 29, i32 5, metadata !159, null}
!174 = metadata !{i32 29, i32 20, metadata !175, null}
!175 = metadata !{i32 786443, metadata !159, i32 29, i32 20, metadata !16, i32 1} ; [ DW_TAG_lexical_block ]
!176 = metadata !{i32 32, i32 25, metadata !177, null}
!177 = metadata !{i32 786443, metadata !175, i32 32, i32 21, metadata !16, i32 2} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 33, i32 7, metadata !179, null}
!179 = metadata !{i32 786443, metadata !177, i32 33, i32 7, metadata !16, i32 3} ; [ DW_TAG_lexical_block ]
!180 = metadata !{i32 33, i32 21, metadata !179, null}
!181 = metadata !{i32 32, i32 36, metadata !177, null}
!182 = metadata !{i32 33, i32 21, metadata !177, null}
!183 = metadata !{i32 34, i32 21, metadata !184, null}
!184 = metadata !{i32 786443, metadata !175, i32 34, i32 17, metadata !16, i32 4} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 35, i32 4, metadata !186, null}
!186 = metadata !{i32 786443, metadata !184, i32 35, i32 4, metadata !16, i32 5} ; [ DW_TAG_lexical_block ]
!187 = metadata !{i32 35, i32 21, metadata !186, null}
!188 = metadata !{i32 34, i32 32, metadata !184, null}
!189 = metadata !{i32 35, i32 21, metadata !184, null}
!190 = metadata !{i32 36, i32 25, metadata !191, null}
!191 = metadata !{i32 786443, metadata !175, i32 36, i32 21, metadata !16, i32 6} ; [ DW_TAG_lexical_block ]
!192 = metadata !{i32 37, i32 7, metadata !193, null}
!193 = metadata !{i32 786443, metadata !191, i32 37, i32 7, metadata !16, i32 7} ; [ DW_TAG_lexical_block ]
!194 = metadata !{i32 37, i32 22, metadata !193, null}
!195 = metadata !{i32 36, i32 36, metadata !191, null}
!196 = metadata !{i32 37, i32 22, metadata !191, null}
!197 = metadata !{i32 38, i32 25, metadata !198, null}
!198 = metadata !{i32 786443, metadata !175, i32 38, i32 21, metadata !16, i32 8} ; [ DW_TAG_lexical_block ]
!199 = metadata !{i32 39, i32 7, metadata !200, null}
!200 = metadata !{i32 786443, metadata !198, i32 39, i32 7, metadata !16, i32 9} ; [ DW_TAG_lexical_block ]
!201 = metadata !{i32 39, i32 21, metadata !200, null}
!202 = metadata !{i32 38, i32 36, metadata !198, null}
!203 = metadata !{i32 40, i32 6, metadata !175, null}
!204 = metadata !{i32 41, i32 6, metadata !175, null}
!205 = metadata !{i32 45, i32 25, metadata !206, null}
!206 = metadata !{i32 786443, metadata !175, i32 45, i32 21, metadata !16, i32 10} ; [ DW_TAG_lexical_block ]
!207 = metadata !{i32 46, i32 7, metadata !208, null}
!208 = metadata !{i32 786443, metadata !206, i32 46, i32 7, metadata !16, i32 11} ; [ DW_TAG_lexical_block ]
!209 = metadata !{i32 46, i32 25, metadata !208, null}
!210 = metadata !{i32 45, i32 36, metadata !206, null}
!211 = metadata !{i32 46, i32 25, metadata !206, null}
!212 = metadata !{i32 48, i32 24, metadata !213, null}
!213 = metadata !{i32 786443, metadata !175, i32 48, i32 20, metadata !16, i32 12} ; [ DW_TAG_lexical_block ]
!214 = metadata !{i32 49, i32 7, metadata !215, null}
!215 = metadata !{i32 786443, metadata !213, i32 49, i32 7, metadata !16, i32 13} ; [ DW_TAG_lexical_block ]
!216 = metadata !{i32 49, i32 29, metadata !215, null}
!217 = metadata !{i32 48, i32 35, metadata !213, null}
!218 = metadata !{i32 51, i32 6, metadata !175, null}
!219 = metadata !{i32 53, i32 24, metadata !220, null}
!220 = metadata !{i32 786443, metadata !175, i32 53, i32 20, metadata !16, i32 14} ; [ DW_TAG_lexical_block ]
!221 = metadata !{i32 54, i32 7, metadata !222, null}
!222 = metadata !{i32 786443, metadata !220, i32 54, i32 7, metadata !16, i32 15} ; [ DW_TAG_lexical_block ]
!223 = metadata !{i32 54, i32 22, metadata !222, null}
!224 = metadata !{i32 53, i32 35, metadata !220, null}
!225 = metadata !{i32 54, i32 22, metadata !220, null}
!226 = metadata !{i32 56, i32 24, metadata !227, null}
!227 = metadata !{i32 786443, metadata !175, i32 56, i32 20, metadata !16, i32 16} ; [ DW_TAG_lexical_block ]
!228 = metadata !{i32 57, i32 7, metadata !229, null}
!229 = metadata !{i32 786443, metadata !227, i32 57, i32 7, metadata !16, i32 17} ; [ DW_TAG_lexical_block ]
!230 = metadata !{i32 57, i32 26, metadata !229, null}
!231 = metadata !{i32 56, i32 35, metadata !227, null}
!232 = metadata !{i32 58, i32 6, metadata !175, null}
!233 = metadata !{i32 61, i32 24, metadata !234, null}
!234 = metadata !{i32 786443, metadata !175, i32 61, i32 20, metadata !16, i32 18} ; [ DW_TAG_lexical_block ]
!235 = metadata !{i32 62, i32 7, metadata !236, null}
!236 = metadata !{i32 786443, metadata !234, i32 62, i32 7, metadata !16, i32 19} ; [ DW_TAG_lexical_block ]
!237 = metadata !{i32 62, i32 25, metadata !236, null}
!238 = metadata !{i32 61, i32 35, metadata !234, null}
!239 = metadata !{i32 62, i32 25, metadata !234, null}
!240 = metadata !{i32 64, i32 24, metadata !241, null}
!241 = metadata !{i32 786443, metadata !175, i32 64, i32 20, metadata !16, i32 20} ; [ DW_TAG_lexical_block ]
!242 = metadata !{i32 65, i32 7, metadata !243, null}
!243 = metadata !{i32 786443, metadata !241, i32 65, i32 7, metadata !16, i32 21} ; [ DW_TAG_lexical_block ]
!244 = metadata !{i32 65, i32 25, metadata !243, null}
!245 = metadata !{i32 64, i32 35, metadata !241, null}
!246 = metadata !{i32 67, i32 6, metadata !175, null}
!247 = metadata !{i32 69, i32 24, metadata !248, null}
!248 = metadata !{i32 786443, metadata !175, i32 69, i32 20, metadata !16, i32 22} ; [ DW_TAG_lexical_block ]
!249 = metadata !{i32 70, i32 7, metadata !250, null}
!250 = metadata !{i32 786443, metadata !248, i32 70, i32 7, metadata !16, i32 23} ; [ DW_TAG_lexical_block ]
!251 = metadata !{i32 70, i32 29, metadata !250, null}
!252 = metadata !{i32 69, i32 35, metadata !248, null}
!253 = metadata !{i32 70, i32 29, metadata !248, null}
!254 = metadata !{i32 72, i32 24, metadata !255, null}
!255 = metadata !{i32 786443, metadata !175, i32 72, i32 20, metadata !16, i32 24} ; [ DW_TAG_lexical_block ]
!256 = metadata !{i32 73, i32 7, metadata !257, null}
!257 = metadata !{i32 786443, metadata !255, i32 73, i32 7, metadata !16, i32 25} ; [ DW_TAG_lexical_block ]
!258 = metadata !{i32 73, i32 26, metadata !257, null}
!259 = metadata !{i32 72, i32 35, metadata !255, null}
!260 = metadata !{i32 73, i32 26, metadata !255, null}
!261 = metadata !{i32 75, i32 24, metadata !262, null}
!262 = metadata !{i32 786443, metadata !175, i32 75, i32 20, metadata !16, i32 26} ; [ DW_TAG_lexical_block ]
!263 = metadata !{i32 76, i32 7, metadata !264, null}
!264 = metadata !{i32 786443, metadata !262, i32 76, i32 7, metadata !16, i32 27} ; [ DW_TAG_lexical_block ]
!265 = metadata !{i32 76, i32 26, metadata !264, null}
!266 = metadata !{i32 75, i32 35, metadata !262, null}
!267 = metadata !{i32 77, i32 6, metadata !175, null}
!268 = metadata !{i32 81, i32 6, metadata !175, null}
!269 = metadata !{i32 85, i32 6, metadata !175, null}
!270 = metadata !{i32 87, i32 1, metadata !159, null}
!271 = metadata !{i32 786689, metadata !56, metadata !"ctx", metadata !57, i32 16777555, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!272 = metadata !{i32 339, i32 28, metadata !56, null}
!273 = metadata !{i32 786689, metadata !56, metadata !"k", metadata !57, i32 33554771, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!274 = metadata !{i32 339, i32 42, metadata !56, null}
!275 = metadata !{i32 786688, metadata !276, metadata !"rcon", metadata !57, i32 341, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!276 = metadata !{i32 786443, metadata !56, i32 340, i32 1, metadata !57, i32 0} ; [ DW_TAG_lexical_block ]
!277 = metadata !{i32 341, i32 13, metadata !276, null}
!278 = metadata !{i32 341, i32 21, metadata !276, null}
!279 = metadata !{i32 786688, metadata !276, metadata !"i", metadata !57, i32 342, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!280 = metadata !{i32 342, i32 22, metadata !276, null}
!281 = metadata !{i32 344, i32 10, metadata !282, null}
!282 = metadata !{i32 786443, metadata !276, i32 344, i32 5, metadata !57, i32 1} ; [ DW_TAG_lexical_block ]
!283 = metadata !{i32 344, i32 44, metadata !282, null}
!284 = metadata !{i32 344, i32 39, metadata !282, null}
!285 = metadata !{i32 345, i32 10, metadata !286, null}
!286 = metadata !{i32 786443, metadata !276, i32 345, i32 5, metadata !57, i32 2} ; [ DW_TAG_lexical_block ]
!287 = metadata !{i32 345, i32 23, metadata !286, null}
!288 = metadata !{i32 346, i32 1, metadata !276, null}
!289 = metadata !{i32 786689, metadata !93, metadata !"k", metadata !57, i32 16777508, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!290 = metadata !{i32 292, i32 39, metadata !93, null}
!291 = metadata !{i32 786689, metadata !93, metadata !"rc", metadata !57, i32 33554724, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!292 = metadata !{i32 292, i32 51, metadata !93, null}
!293 = metadata !{i32 786688, metadata !294, metadata !"i", metadata !57, i32 294, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!294 = metadata !{i32 786443, metadata !93, i32 293, i32 1, metadata !57, i32 28} ; [ DW_TAG_lexical_block ]
!295 = metadata !{i32 294, i32 22, metadata !294, null}
!296 = metadata !{i32 296, i32 5, metadata !294, null}
!297 = metadata !{i32 297, i32 5, metadata !294, null}
!298 = metadata !{i32 298, i32 5, metadata !294, null}
!299 = metadata !{i32 299, i32 5, metadata !294, null}
!300 = metadata !{i32 300, i32 11, metadata !294, null}
!301 = metadata !{i32 302, i32 9, metadata !302, null}
!302 = metadata !{i32 786443, metadata !294, i32 302, i32 5, metadata !57, i32 29} ; [ DW_TAG_lexical_block ]
!303 = metadata !{i32 302, i32 32, metadata !302, null}
!304 = metadata !{i32 302, i32 24, metadata !302, null}
!305 = metadata !{i32 304, i32 5, metadata !294, null}
!306 = metadata !{i32 305, i32 5, metadata !294, null}
!307 = metadata !{i32 306, i32 5, metadata !294, null}
!308 = metadata !{i32 307, i32 5, metadata !294, null}
!309 = metadata !{i32 309, i32 9, metadata !310, null}
!310 = metadata !{i32 786443, metadata !294, i32 309, i32 5, metadata !57, i32 30} ; [ DW_TAG_lexical_block ]
!311 = metadata !{i32 309, i32 33, metadata !310, null}
!312 = metadata !{i32 309, i32 25, metadata !310, null}
!313 = metadata !{i32 312, i32 1, metadata !294, null}
!314 = metadata !{i32 786689, metadata !70, metadata !"ctx", metadata !57, i32 16777565, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!315 = metadata !{i32 349, i32 28, metadata !70, null}
!316 = metadata !{i32 786688, metadata !317, metadata !"i", metadata !57, i32 351, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!317 = metadata !{i32 786443, metadata !70, i32 350, i32 1, metadata !57, i32 3} ; [ DW_TAG_lexical_block ]
!318 = metadata !{i32 351, i32 22, metadata !317, null}
!319 = metadata !{i32 353, i32 10, metadata !320, null}
!320 = metadata !{i32 786443, metadata !317, i32 353, i32 5, metadata !57, i32 4} ; [ DW_TAG_lexical_block ]
!321 = metadata !{i32 354, i32 9, metadata !320, null}
!322 = metadata !{i32 353, i32 39, metadata !320, null}
!323 = metadata !{i32 355, i32 1, metadata !317, null}
!324 = metadata !{i32 786689, metadata !73, metadata !"ctx", metadata !57, i32 16777574, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!325 = metadata !{i32 358, i32 35, metadata !73, null}
!326 = metadata !{i32 786689, metadata !73, metadata !"buf", metadata !57, i32 33554790, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!327 = metadata !{i32 358, i32 49, metadata !73, null}
!328 = metadata !{i32 786688, metadata !329, metadata !"i", metadata !57, i32 360, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!329 = metadata !{i32 786443, metadata !73, i32 359, i32 1, metadata !57, i32 5} ; [ DW_TAG_lexical_block ]
!330 = metadata !{i32 360, i32 13, metadata !329, null}
!331 = metadata !{i32 786688, metadata !329, metadata !"rcon", metadata !57, i32 360, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!332 = metadata !{i32 360, i32 16, metadata !329, null}
!333 = metadata !{i32 362, i32 5, metadata !329, null}
!334 = metadata !{i32 363, i32 9, metadata !335, null}
!335 = metadata !{i32 786443, metadata !329, i32 363, i32 5, metadata !57, i32 6} ; [ DW_TAG_lexical_block ]
!336 = metadata !{i32 365, i32 9, metadata !337, null}
!337 = metadata !{i32 786443, metadata !335, i32 364, i32 5, metadata !57, i32 7} ; [ DW_TAG_lexical_block ]
!338 = metadata !{i32 366, i32 9, metadata !337, null}
!339 = metadata !{i32 367, i32 9, metadata !337, null}
!340 = metadata !{i32 368, i32 9, metadata !337, null}
!341 = metadata !{i32 368, i32 21, metadata !337, null}
!342 = metadata !{i32 369, i32 14, metadata !337, null}
!343 = metadata !{i32 369, i32 49, metadata !337, null}
!344 = metadata !{i32 370, i32 5, metadata !337, null}
!345 = metadata !{i32 363, i32 34, metadata !335, null}
!346 = metadata !{i32 371, i32 5, metadata !329, null}
!347 = metadata !{i32 372, i32 5, metadata !329, null}
!348 = metadata !{i32 373, i32 5, metadata !329, null}
!349 = metadata !{i32 374, i32 5, metadata !329, null}
!350 = metadata !{i32 375, i32 1, metadata !329, null}
!351 = metadata !{i32 786689, metadata !90, metadata !"buf", metadata !57, i32 16777434, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!352 = metadata !{i32 218, i32 42, metadata !90, null}
!353 = metadata !{i32 786689, metadata !90, metadata !"key", metadata !57, i32 33554650, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!354 = metadata !{i32 218, i32 56, metadata !90, null}
!355 = metadata !{i32 786689, metadata !90, metadata !"cpk", metadata !57, i32 50331866, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!356 = metadata !{i32 218, i32 70, metadata !90, null}
!357 = metadata !{i32 786688, metadata !358, metadata !"i", metadata !57, i32 220, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!358 = metadata !{i32 786443, metadata !90, i32 219, i32 1, metadata !57, i32 27} ; [ DW_TAG_lexical_block ]
!359 = metadata !{i32 220, i32 22, metadata !358, null}
!360 = metadata !{i32 220, i32 28, metadata !358, null}
!361 = metadata !{i32 222, i32 5, metadata !358, null}
!362 = metadata !{i32 222, i32 17, metadata !358, null}
!363 = metadata !{i32 223, i32 1, metadata !358, null}
!364 = metadata !{i32 786689, metadata !89, metadata !"buf", metadata !57, i32 16777410, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!365 = metadata !{i32 194, i32 35, metadata !89, null}
!366 = metadata !{i32 786688, metadata !367, metadata !"i", metadata !57, i32 196, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!367 = metadata !{i32 786443, metadata !89, i32 195, i32 1, metadata !57, i32 26} ; [ DW_TAG_lexical_block ]
!368 = metadata !{i32 196, i32 22, metadata !367, null}
!369 = metadata !{i32 196, i32 28, metadata !367, null}
!370 = metadata !{i32 198, i32 5, metadata !367, null}
!371 = metadata !{i32 198, i32 17, metadata !367, null}
!372 = metadata !{i32 199, i32 1, metadata !367, null}
!373 = metadata !{i32 786689, metadata !88, metadata !"buf", metadata !57, i32 16777443, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!374 = metadata !{i32 227, i32 36, metadata !88, null}
!375 = metadata !{i32 786688, metadata !376, metadata !"i", metadata !57, i32 229, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!376 = metadata !{i32 786443, metadata !88, i32 228, i32 1, metadata !57, i32 25} ; [ DW_TAG_lexical_block ]
!377 = metadata !{i32 229, i32 22, metadata !376, null}
!378 = metadata !{i32 786688, metadata !376, metadata !"j", metadata !57, i32 229, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!379 = metadata !{i32 229, i32 25, metadata !376, null}
!380 = metadata !{i32 231, i32 5, metadata !376, null}
!381 = metadata !{i32 232, i32 5, metadata !376, null}
!382 = metadata !{i32 233, i32 5, metadata !376, null}
!383 = metadata !{i32 234, i32 5, metadata !376, null}
!384 = metadata !{i32 236, i32 1, metadata !376, null}
!385 = metadata !{i32 786689, metadata !87, metadata !"buf", metadata !57, i32 16777467, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!386 = metadata !{i32 251, i32 37, metadata !87, null}
!387 = metadata !{i32 786688, metadata !388, metadata !"i", metadata !57, i32 253, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!388 = metadata !{i32 786443, metadata !87, i32 252, i32 1, metadata !57, i32 22} ; [ DW_TAG_lexical_block ]
!389 = metadata !{i32 253, i32 22, metadata !388, null}
!390 = metadata !{i32 786688, metadata !388, metadata !"a", metadata !57, i32 253, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!391 = metadata !{i32 253, i32 25, metadata !388, null}
!392 = metadata !{i32 786688, metadata !388, metadata !"b", metadata !57, i32 253, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!393 = metadata !{i32 253, i32 28, metadata !388, null}
!394 = metadata !{i32 786688, metadata !388, metadata !"c", metadata !57, i32 253, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!395 = metadata !{i32 253, i32 31, metadata !388, null}
!396 = metadata !{i32 786688, metadata !388, metadata !"d", metadata !57, i32 253, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!397 = metadata !{i32 253, i32 34, metadata !388, null}
!398 = metadata !{i32 786688, metadata !388, metadata !"e", metadata !57, i32 253, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!399 = metadata !{i32 253, i32 37, metadata !388, null}
!400 = metadata !{i32 255, i32 10, metadata !401, null}
!401 = metadata !{i32 786443, metadata !388, i32 255, i32 5, metadata !57, i32 23} ; [ DW_TAG_lexical_block ]
!402 = metadata !{i32 257, i32 9, metadata !403, null}
!403 = metadata !{i32 786443, metadata !401, i32 256, i32 5, metadata !57, i32 24} ; [ DW_TAG_lexical_block ]
!404 = metadata !{i32 258, i32 9, metadata !403, null}
!405 = metadata !{i32 259, i32 9, metadata !403, null}
!406 = metadata !{i32 260, i32 9, metadata !403, null}
!407 = metadata !{i32 261, i32 9, metadata !403, null}
!408 = metadata !{i32 262, i32 9, metadata !403, null}
!409 = metadata !{i32 262, i32 23, metadata !403, null}
!410 = metadata !{i32 263, i32 9, metadata !403, null}
!411 = metadata !{i32 263, i32 27, metadata !403, null}
!412 = metadata !{i32 264, i32 9, metadata !403, null}
!413 = metadata !{i32 264, i32 27, metadata !403, null}
!414 = metadata !{i32 265, i32 9, metadata !403, null}
!415 = metadata !{i32 265, i32 27, metadata !403, null}
!416 = metadata !{i32 266, i32 5, metadata !403, null}
!417 = metadata !{i32 255, i32 25, metadata !401, null}
!418 = metadata !{i32 267, i32 1, metadata !388, null}
!419 = metadata !{i32 786689, metadata !86, metadata !"buf", metadata !57, i32 16777426, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!420 = metadata !{i32 210, i32 38, metadata !86, null}
!421 = metadata !{i32 786689, metadata !86, metadata !"key", metadata !57, i32 33554642, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!422 = metadata !{i32 210, i32 52, metadata !86, null}
!423 = metadata !{i32 786688, metadata !424, metadata !"i", metadata !57, i32 212, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!424 = metadata !{i32 786443, metadata !86, i32 211, i32 1, metadata !57, i32 21} ; [ DW_TAG_lexical_block ]
!425 = metadata !{i32 212, i32 22, metadata !424, null}
!426 = metadata !{i32 212, i32 28, metadata !424, null}
!427 = metadata !{i32 214, i32 5, metadata !424, null}
!428 = metadata !{i32 214, i32 17, metadata !424, null}
!429 = metadata !{i32 215, i32 1, metadata !424, null}
!430 = metadata !{i32 786689, metadata !74, metadata !"ctx", metadata !57, i32 16777594, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!431 = metadata !{i32 378, i32 35, metadata !74, null}
!432 = metadata !{i32 786689, metadata !74, metadata !"buf", metadata !57, i32 33554810, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!433 = metadata !{i32 378, i32 49, metadata !74, null}
!434 = metadata !{i32 786688, metadata !435, metadata !"i", metadata !57, i32 380, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!435 = metadata !{i32 786443, metadata !74, i32 379, i32 1, metadata !57, i32 8} ; [ DW_TAG_lexical_block ]
!436 = metadata !{i32 380, i32 13, metadata !435, null}
!437 = metadata !{i32 786688, metadata !435, metadata !"rcon", metadata !57, i32 380, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!438 = metadata !{i32 380, i32 16, metadata !435, null}
!439 = metadata !{i32 382, i32 5, metadata !435, null}
!440 = metadata !{i32 383, i32 5, metadata !435, null}
!441 = metadata !{i32 384, i32 5, metadata !435, null}
!442 = metadata !{i32 386, i32 10, metadata !443, null}
!443 = metadata !{i32 786443, metadata !435, i32 386, i32 5, metadata !57, i32 9} ; [ DW_TAG_lexical_block ]
!444 = metadata !{i32 388, i32 9, metadata !445, null}
!445 = metadata !{i32 786443, metadata !443, i32 387, i32 5, metadata !57, i32 10} ; [ DW_TAG_lexical_block ]
!446 = metadata !{i32 390, i32 13, metadata !447, null}
!447 = metadata !{i32 786443, metadata !445, i32 389, i32 9, metadata !57, i32 11} ; [ DW_TAG_lexical_block ]
!448 = metadata !{i32 391, i32 13, metadata !447, null}
!449 = metadata !{i32 392, i32 9, metadata !447, null}
!450 = metadata !{i32 393, i32 14, metadata !445, null}
!451 = metadata !{i32 394, i32 9, metadata !445, null}
!452 = metadata !{i32 395, i32 9, metadata !445, null}
!453 = metadata !{i32 396, i32 9, metadata !445, null}
!454 = metadata !{i32 397, i32 5, metadata !445, null}
!455 = metadata !{i32 398, i32 5, metadata !435, null}
!456 = metadata !{i32 399, i32 1, metadata !435, null}
!457 = metadata !{i32 786689, metadata !85, metadata !"buf", metadata !57, i32 16777455, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!458 = metadata !{i32 239, i32 40, metadata !85, null}
!459 = metadata !{i32 786688, metadata !460, metadata !"i", metadata !57, i32 241, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!460 = metadata !{i32 786443, metadata !85, i32 240, i32 1, metadata !57, i32 20} ; [ DW_TAG_lexical_block ]
!461 = metadata !{i32 241, i32 22, metadata !460, null}
!462 = metadata !{i32 786688, metadata !460, metadata !"j", metadata !57, i32 241, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!463 = metadata !{i32 241, i32 25, metadata !460, null}
!464 = metadata !{i32 243, i32 5, metadata !460, null}
!465 = metadata !{i32 244, i32 5, metadata !460, null}
!466 = metadata !{i32 245, i32 5, metadata !460, null}
!467 = metadata !{i32 246, i32 5, metadata !460, null}
!468 = metadata !{i32 248, i32 1, metadata !460, null}
!469 = metadata !{i32 786689, metadata !84, metadata !"buf", metadata !57, i32 16777418, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!470 = metadata !{i32 202, i32 39, metadata !84, null}
!471 = metadata !{i32 786688, metadata !472, metadata !"i", metadata !57, i32 204, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!472 = metadata !{i32 786443, metadata !84, i32 203, i32 1, metadata !57, i32 19} ; [ DW_TAG_lexical_block ]
!473 = metadata !{i32 204, i32 22, metadata !472, null}
!474 = metadata !{i32 204, i32 28, metadata !472, null}
!475 = metadata !{i32 206, i32 5, metadata !472, null}
!476 = metadata !{i32 206, i32 17, metadata !472, null}
!477 = metadata !{i32 207, i32 1, metadata !472, null}
!478 = metadata !{i32 786689, metadata !81, metadata !"k", metadata !57, i32 16777531, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!479 = metadata !{i32 315, i32 32, metadata !81, null}
!480 = metadata !{i32 786689, metadata !81, metadata !"rc", metadata !57, i32 33554747, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!481 = metadata !{i32 315, i32 44, metadata !81, null}
!482 = metadata !{i32 786688, metadata !483, metadata !"i", metadata !57, i32 317, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!483 = metadata !{i32 786443, metadata !81, i32 316, i32 1, metadata !57, i32 16} ; [ DW_TAG_lexical_block ]
!484 = metadata !{i32 317, i32 13, metadata !483, null}
!485 = metadata !{i32 319, i32 9, metadata !486, null}
!486 = metadata !{i32 786443, metadata !483, i32 319, i32 5, metadata !57, i32 17} ; [ DW_TAG_lexical_block ]
!487 = metadata !{i32 319, i32 33, metadata !486, null}
!488 = metadata !{i32 319, i32 25, metadata !486, null}
!489 = metadata !{i32 322, i32 5, metadata !483, null}
!490 = metadata !{i32 323, i32 5, metadata !483, null}
!491 = metadata !{i32 324, i32 5, metadata !483, null}
!492 = metadata !{i32 325, i32 5, metadata !483, null}
!493 = metadata !{i32 327, i32 9, metadata !494, null}
!494 = metadata !{i32 786443, metadata !483, i32 327, i32 5, metadata !57, i32 18} ; [ DW_TAG_lexical_block ]
!495 = metadata !{i32 327, i32 32, metadata !494, null}
!496 = metadata !{i32 327, i32 24, metadata !494, null}
!497 = metadata !{i32 330, i32 5, metadata !483, null}
!498 = metadata !{i32 331, i32 5, metadata !483, null}
!499 = metadata !{i32 332, i32 5, metadata !483, null}
!500 = metadata !{i32 333, i32 5, metadata !483, null}
!501 = metadata !{i32 334, i32 5, metadata !483, null}
!502 = metadata !{i32 335, i32 1, metadata !483, null}
!503 = metadata !{i32 786689, metadata !75, metadata !"buf", metadata !57, i32 16777486, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!504 = metadata !{i32 270, i32 34, metadata !75, null}
!505 = metadata !{i32 786688, metadata !506, metadata !"i", metadata !57, i32 272, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!506 = metadata !{i32 786443, metadata !75, i32 271, i32 1, metadata !57, i32 12} ; [ DW_TAG_lexical_block ]
!507 = metadata !{i32 272, i32 22, metadata !506, null}
!508 = metadata !{i32 786688, metadata !506, metadata !"a", metadata !57, i32 272, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!509 = metadata !{i32 272, i32 25, metadata !506, null}
!510 = metadata !{i32 786688, metadata !506, metadata !"b", metadata !57, i32 272, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!511 = metadata !{i32 272, i32 28, metadata !506, null}
!512 = metadata !{i32 786688, metadata !506, metadata !"c", metadata !57, i32 272, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!513 = metadata !{i32 272, i32 31, metadata !506, null}
!514 = metadata !{i32 786688, metadata !506, metadata !"d", metadata !57, i32 272, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!515 = metadata !{i32 272, i32 34, metadata !506, null}
!516 = metadata !{i32 786688, metadata !506, metadata !"e", metadata !57, i32 272, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!517 = metadata !{i32 272, i32 37, metadata !506, null}
!518 = metadata !{i32 786688, metadata !506, metadata !"x", metadata !57, i32 272, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!519 = metadata !{i32 272, i32 40, metadata !506, null}
!520 = metadata !{i32 786688, metadata !506, metadata !"y", metadata !57, i32 272, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!521 = metadata !{i32 272, i32 43, metadata !506, null}
!522 = metadata !{i32 786688, metadata !506, metadata !"z", metadata !57, i32 272, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!523 = metadata !{i32 272, i32 46, metadata !506, null}
!524 = metadata !{i32 274, i32 10, metadata !525, null}
!525 = metadata !{i32 786443, metadata !506, i32 274, i32 5, metadata !57, i32 13} ; [ DW_TAG_lexical_block ]
!526 = metadata !{i32 276, i32 9, metadata !527, null}
!527 = metadata !{i32 786443, metadata !525, i32 275, i32 5, metadata !57, i32 14} ; [ DW_TAG_lexical_block ]
!528 = metadata !{i32 277, i32 9, metadata !527, null}
!529 = metadata !{i32 278, i32 9, metadata !527, null}
!530 = metadata !{i32 279, i32 9, metadata !527, null}
!531 = metadata !{i32 280, i32 9, metadata !527, null}
!532 = metadata !{i32 281, i32 13, metadata !527, null}
!533 = metadata !{i32 282, i32 9, metadata !527, null}
!534 = metadata !{i32 282, i32 26, metadata !527, null}
!535 = metadata !{i32 283, i32 9, metadata !527, null}
!536 = metadata !{i32 283, i32 26, metadata !527, null}
!537 = metadata !{i32 284, i32 9, metadata !527, null}
!538 = metadata !{i32 284, i32 23, metadata !527, null}
!539 = metadata !{i32 285, i32 9, metadata !527, null}
!540 = metadata !{i32 285, i32 27, metadata !527, null}
!541 = metadata !{i32 286, i32 9, metadata !527, null}
!542 = metadata !{i32 286, i32 27, metadata !527, null}
!543 = metadata !{i32 287, i32 9, metadata !527, null}
!544 = metadata !{i32 287, i32 27, metadata !527, null}
!545 = metadata !{i32 288, i32 5, metadata !527, null}
!546 = metadata !{i32 274, i32 25, metadata !525, null}
!547 = metadata !{i32 289, i32 1, metadata !506, null}
!548 = metadata !{i32 786689, metadata !78, metadata !"x", metadata !57, i32 16777403, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!549 = metadata !{i32 187, i32 33, metadata !78, null}
!550 = metadata !{i32 786688, metadata !551, metadata !"y", metadata !57, i32 189, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!551 = metadata !{i32 786443, metadata !78, i32 188, i32 1, metadata !57, i32 15} ; [ DW_TAG_lexical_block ]
!552 = metadata !{i32 189, i32 13, metadata !551, null}
!553 = metadata !{i32 189, i32 34, metadata !551, null}
!554 = metadata !{i32 190, i32 5, metadata !551, null}
