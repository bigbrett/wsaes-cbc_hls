; ModuleID = '/home/jd/workspace/aes256cbc/solution1/.autopilot/db/a.g.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aes256_context = type { [32 x i8], [32 x i8], [32 x i8] }
%struct._IO_FILE_plus = type opaque

@sbox = internal constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 16 ; [#uses=17 type=[256 x i8]*]
@sboxinv = internal constant [256 x i8] c"R\09j\D506\A58\BF@\A3\9E\81\F3\D7\FB|\E39\82\9B/\FF\874\8ECD\C4\DE\E9\CBT{\942\A6\C2#=\EEL\95\0BB\FA\C3N\08.\A1f(\D9$\B2v[\A2Im\8B\D1%r\F8\F6d\86h\98\16\D4\A4\5C\CC]e\B6\92lpHP\FD\ED\B9\DA^\15FW\A7\8D\9D\84\90\D8\AB\00\8C\BC\D3\0A\F7\E4X\05\B8\B3E\06\D0,\1E\8F\CA?\0F\02\C1\AF\BD\03\01\13\8Ak:\91\11AOg\DC\EA\97\F2\CF\CE\F0\B4\E6s\96\ACt\22\E7\AD5\85\E2\F97\E8\1Cu\DFnG\F1\1Aq\1D)\C5\89o\B7b\0E\AA\18\BE\1B\FCV>K\C6\D2y \9A\DB\C0\FEx\CDZ\F4\1F\DD\A83\88\07\C71\B1\12\10Y'\80\EC_`Q\7F\A9\19\B5J\0D-\E5z\9F\93\C9\9C\EF\A0\E0;M\AE*\F5\B0\C8\EB\BB<\83S\99a\17+\04~\BAw\D6&\E1i\14cU!\0C}", align 16 ; [#uses=1 type=[256 x i8]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [3 x i8] c"p0\00", align 1 ; [#uses=1 type=[3 x i8]*]
@.str3 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@aes256cbc.lastbuf = internal global [16 x i8] zeroinitializer, align 16 ; [#uses=2 type=[16 x i8]*]
@aes256cbc.iv = internal global [16 x i8] zeroinitializer, align 16 ; [#uses=2 type=[16 x i8]*]
@aes256cbc.xorv = internal global [16 x i8] zeroinitializer, align 16 ; [#uses=5 type=[16 x i8]*]
@aes256cbc.key = internal global [32 x i8] zeroinitializer, align 16 ; [#uses=1 type=[32 x i8]*]
@aes256cbc.ctx = internal global %struct.aes256_context zeroinitializer, align 1 ; [#uses=3 type=%struct.aes256_context*]
@_IO_2_1_stdin_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@_IO_2_1_stdout_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@_IO_2_1_stderr_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@sys_nerr = external global i32                   ; [#uses=0 type=i32*]

; [#uses=1]
define void @aes256_init(%struct.aes256_context* %ctx, i8* %k) nounwind uwtable {
  %1 = alloca %struct.aes256_context*, align 8    ; [#uses=4 type=%struct.aes256_context**]
  %2 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %rcon = alloca i8, align 1                      ; [#uses=2 type=i8*]
  %i = alloca i8, align 1                         ; [#uses=10 type=i8*]
  store %struct.aes256_context* %ctx, %struct.aes256_context** %1, align 8
  call void @llvm.dbg.declare(metadata !{%struct.aes256_context** %1}, metadata !146), !dbg !147 ; [debug line = 339:34] [debug variable = ctx]
  store i8* %k, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !148), !dbg !149 ; [debug line = 339:54] [debug variable = k]
  call void @llvm.dbg.declare(metadata !{i8* %rcon}, metadata !150), !dbg !152 ; [debug line = 341:19] [debug variable = rcon]
  store i8 1, i8* %rcon, align 1, !dbg !153       ; [debug line = 341:27]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !154), !dbg !155 ; [debug line = 342:28] [debug variable = i]
  store i8 0, i8* %i, align 1, !dbg !156          ; [debug line = 344:10]
  br label %3, !dbg !156                          ; [debug line = 344:10]

; <label>:3                                       ; preds = %23, %0
  %4 = load i8* %i, align 1, !dbg !156            ; [#uses=1 type=i8] [debug line = 344:10]
  %5 = zext i8 %4 to i64, !dbg !156               ; [#uses=1 type=i64] [debug line = 344:10]
  %6 = icmp ult i64 %5, 32, !dbg !156             ; [#uses=1 type=i1] [debug line = 344:10]
  br i1 %6, label %7, label %26, !dbg !156        ; [debug line = 344:10]

; <label>:7                                       ; preds = %3
  %8 = load i8* %i, align 1, !dbg !158            ; [#uses=1 type=i8] [debug line = 344:44]
  %9 = zext i8 %8 to i64, !dbg !158               ; [#uses=1 type=i64] [debug line = 344:44]
  %10 = load i8** %2, align 8, !dbg !158          ; [#uses=1 type=i8*] [debug line = 344:44]
  %11 = getelementptr inbounds i8* %10, i64 %9, !dbg !158 ; [#uses=1 type=i8*] [debug line = 344:44]
  %12 = load i8* %11, align 1, !dbg !158          ; [#uses=2 type=i8] [debug line = 344:44]
  %13 = load i8* %i, align 1, !dbg !158           ; [#uses=1 type=i8] [debug line = 344:44]
  %14 = zext i8 %13 to i64, !dbg !158             ; [#uses=1 type=i64] [debug line = 344:44]
  %15 = load %struct.aes256_context** %1, align 8, !dbg !158 ; [#uses=1 type=%struct.aes256_context*] [debug line = 344:44]
  %16 = getelementptr inbounds %struct.aes256_context* %15, i32 0, i32 2, !dbg !158 ; [#uses=1 type=[32 x i8]*] [debug line = 344:44]
  %17 = getelementptr inbounds [32 x i8]* %16, i32 0, i64 %14, !dbg !158 ; [#uses=1 type=i8*] [debug line = 344:44]
  store i8 %12, i8* %17, align 1, !dbg !158       ; [debug line = 344:44]
  %18 = load i8* %i, align 1, !dbg !158           ; [#uses=1 type=i8] [debug line = 344:44]
  %19 = zext i8 %18 to i64, !dbg !158             ; [#uses=1 type=i64] [debug line = 344:44]
  %20 = load %struct.aes256_context** %1, align 8, !dbg !158 ; [#uses=1 type=%struct.aes256_context*] [debug line = 344:44]
  %21 = getelementptr inbounds %struct.aes256_context* %20, i32 0, i32 1, !dbg !158 ; [#uses=1 type=[32 x i8]*] [debug line = 344:44]
  %22 = getelementptr inbounds [32 x i8]* %21, i32 0, i64 %19, !dbg !158 ; [#uses=1 type=i8*] [debug line = 344:44]
  store i8 %12, i8* %22, align 1, !dbg !158       ; [debug line = 344:44]
  br label %23, !dbg !158                         ; [debug line = 344:44]

; <label>:23                                      ; preds = %7
  %24 = load i8* %i, align 1, !dbg !159           ; [#uses=1 type=i8] [debug line = 344:39]
  %25 = add i8 %24, 1, !dbg !159                  ; [#uses=1 type=i8] [debug line = 344:39]
  store i8 %25, i8* %i, align 1, !dbg !159        ; [debug line = 344:39]
  br label %3, !dbg !159                          ; [debug line = 344:39]

; <label>:26                                      ; preds = %3
  store i8 8, i8* %i, align 1, !dbg !160          ; [debug line = 345:10]
  br label %27, !dbg !160                         ; [debug line = 345:10]

; <label>:27                                      ; preds = %31, %26
  %28 = load i8* %i, align 1, !dbg !160           ; [#uses=1 type=i8] [debug line = 345:10]
  %29 = add i8 %28, -1, !dbg !160                 ; [#uses=2 type=i8] [debug line = 345:10]
  store i8 %29, i8* %i, align 1, !dbg !160        ; [debug line = 345:10]
  %30 = icmp ne i8 %29, 0, !dbg !160              ; [#uses=1 type=i1] [debug line = 345:10]
  br i1 %30, label %31, label %35, !dbg !160      ; [debug line = 345:10]

; <label>:31                                      ; preds = %27
  %32 = load %struct.aes256_context** %1, align 8, !dbg !162 ; [#uses=1 type=%struct.aes256_context*] [debug line = 345:23]
  %33 = getelementptr inbounds %struct.aes256_context* %32, i32 0, i32 2, !dbg !162 ; [#uses=1 type=[32 x i8]*] [debug line = 345:23]
  %34 = getelementptr inbounds [32 x i8]* %33, i32 0, i32 0, !dbg !162 ; [#uses=1 type=i8*] [debug line = 345:23]
  call void @aes_expandEncKey(i8* %34, i8* %rcon), !dbg !162 ; [debug line = 345:23]
  br label %27, !dbg !162                         ; [debug line = 345:23]

; <label>:35                                      ; preds = %27
  ret void, !dbg !163                             ; [debug line = 346:1]
}

; [#uses=62]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=3]
define internal void @aes_expandEncKey(i8* %k, i8* %rc) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=33 type=i8**]
  %2 = alloca i8*, align 8                        ; [#uses=4 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=24 type=i8*]
  store i8* %k, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !164), !dbg !165 ; [debug line = 292:45] [debug variable = k]
  store i8* %rc, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !166), !dbg !167 ; [debug line = 292:63] [debug variable = rc]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !168), !dbg !170 ; [debug line = 294:28] [debug variable = i]
  %3 = load i8** %1, align 8, !dbg !171           ; [#uses=1 type=i8*] [debug line = 296:5]
  %4 = getelementptr inbounds i8* %3, i64 29, !dbg !171 ; [#uses=1 type=i8*] [debug line = 296:5]
  %5 = load i8* %4, align 1, !dbg !171            ; [#uses=1 type=i8] [debug line = 296:5]
  %6 = zext i8 %5 to i64, !dbg !171               ; [#uses=1 type=i64] [debug line = 296:5]
  %7 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %6, !dbg !171 ; [#uses=1 type=i8*] [debug line = 296:5]
  %8 = load i8* %7, align 1, !dbg !171            ; [#uses=1 type=i8] [debug line = 296:5]
  %9 = zext i8 %8 to i32, !dbg !171               ; [#uses=1 type=i32] [debug line = 296:5]
  %10 = load i8** %2, align 8, !dbg !171          ; [#uses=1 type=i8*] [debug line = 296:5]
  %11 = load i8* %10, align 1, !dbg !171          ; [#uses=1 type=i8] [debug line = 296:5]
  %12 = zext i8 %11 to i32, !dbg !171             ; [#uses=1 type=i32] [debug line = 296:5]
  %13 = xor i32 %9, %12, !dbg !171                ; [#uses=1 type=i32] [debug line = 296:5]
  %14 = load i8** %1, align 8, !dbg !171          ; [#uses=1 type=i8*] [debug line = 296:5]
  %15 = getelementptr inbounds i8* %14, i64 0, !dbg !171 ; [#uses=2 type=i8*] [debug line = 296:5]
  %16 = load i8* %15, align 1, !dbg !171          ; [#uses=1 type=i8] [debug line = 296:5]
  %17 = zext i8 %16 to i32, !dbg !171             ; [#uses=1 type=i32] [debug line = 296:5]
  %18 = xor i32 %17, %13, !dbg !171               ; [#uses=1 type=i32] [debug line = 296:5]
  %19 = trunc i32 %18 to i8, !dbg !171            ; [#uses=1 type=i8] [debug line = 296:5]
  store i8 %19, i8* %15, align 1, !dbg !171       ; [debug line = 296:5]
  %20 = load i8** %1, align 8, !dbg !172          ; [#uses=1 type=i8*] [debug line = 297:5]
  %21 = getelementptr inbounds i8* %20, i64 30, !dbg !172 ; [#uses=1 type=i8*] [debug line = 297:5]
  %22 = load i8* %21, align 1, !dbg !172          ; [#uses=1 type=i8] [debug line = 297:5]
  %23 = zext i8 %22 to i64, !dbg !172             ; [#uses=1 type=i64] [debug line = 297:5]
  %24 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %23, !dbg !172 ; [#uses=1 type=i8*] [debug line = 297:5]
  %25 = load i8* %24, align 1, !dbg !172          ; [#uses=1 type=i8] [debug line = 297:5]
  %26 = zext i8 %25 to i32, !dbg !172             ; [#uses=1 type=i32] [debug line = 297:5]
  %27 = load i8** %1, align 8, !dbg !172          ; [#uses=1 type=i8*] [debug line = 297:5]
  %28 = getelementptr inbounds i8* %27, i64 1, !dbg !172 ; [#uses=2 type=i8*] [debug line = 297:5]
  %29 = load i8* %28, align 1, !dbg !172          ; [#uses=1 type=i8] [debug line = 297:5]
  %30 = zext i8 %29 to i32, !dbg !172             ; [#uses=1 type=i32] [debug line = 297:5]
  %31 = xor i32 %30, %26, !dbg !172               ; [#uses=1 type=i32] [debug line = 297:5]
  %32 = trunc i32 %31 to i8, !dbg !172            ; [#uses=1 type=i8] [debug line = 297:5]
  store i8 %32, i8* %28, align 1, !dbg !172       ; [debug line = 297:5]
  %33 = load i8** %1, align 8, !dbg !173          ; [#uses=1 type=i8*] [debug line = 298:5]
  %34 = getelementptr inbounds i8* %33, i64 31, !dbg !173 ; [#uses=1 type=i8*] [debug line = 298:5]
  %35 = load i8* %34, align 1, !dbg !173          ; [#uses=1 type=i8] [debug line = 298:5]
  %36 = zext i8 %35 to i64, !dbg !173             ; [#uses=1 type=i64] [debug line = 298:5]
  %37 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %36, !dbg !173 ; [#uses=1 type=i8*] [debug line = 298:5]
  %38 = load i8* %37, align 1, !dbg !173          ; [#uses=1 type=i8] [debug line = 298:5]
  %39 = zext i8 %38 to i32, !dbg !173             ; [#uses=1 type=i32] [debug line = 298:5]
  %40 = load i8** %1, align 8, !dbg !173          ; [#uses=1 type=i8*] [debug line = 298:5]
  %41 = getelementptr inbounds i8* %40, i64 2, !dbg !173 ; [#uses=2 type=i8*] [debug line = 298:5]
  %42 = load i8* %41, align 1, !dbg !173          ; [#uses=1 type=i8] [debug line = 298:5]
  %43 = zext i8 %42 to i32, !dbg !173             ; [#uses=1 type=i32] [debug line = 298:5]
  %44 = xor i32 %43, %39, !dbg !173               ; [#uses=1 type=i32] [debug line = 298:5]
  %45 = trunc i32 %44 to i8, !dbg !173            ; [#uses=1 type=i8] [debug line = 298:5]
  store i8 %45, i8* %41, align 1, !dbg !173       ; [debug line = 298:5]
  %46 = load i8** %1, align 8, !dbg !174          ; [#uses=1 type=i8*] [debug line = 299:5]
  %47 = getelementptr inbounds i8* %46, i64 28, !dbg !174 ; [#uses=1 type=i8*] [debug line = 299:5]
  %48 = load i8* %47, align 1, !dbg !174          ; [#uses=1 type=i8] [debug line = 299:5]
  %49 = zext i8 %48 to i64, !dbg !174             ; [#uses=1 type=i64] [debug line = 299:5]
  %50 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %49, !dbg !174 ; [#uses=1 type=i8*] [debug line = 299:5]
  %51 = load i8* %50, align 1, !dbg !174          ; [#uses=1 type=i8] [debug line = 299:5]
  %52 = zext i8 %51 to i32, !dbg !174             ; [#uses=1 type=i32] [debug line = 299:5]
  %53 = load i8** %1, align 8, !dbg !174          ; [#uses=1 type=i8*] [debug line = 299:5]
  %54 = getelementptr inbounds i8* %53, i64 3, !dbg !174 ; [#uses=2 type=i8*] [debug line = 299:5]
  %55 = load i8* %54, align 1, !dbg !174          ; [#uses=1 type=i8] [debug line = 299:5]
  %56 = zext i8 %55 to i32, !dbg !174             ; [#uses=1 type=i32] [debug line = 299:5]
  %57 = xor i32 %56, %52, !dbg !174               ; [#uses=1 type=i32] [debug line = 299:5]
  %58 = trunc i32 %57 to i8, !dbg !174            ; [#uses=1 type=i8] [debug line = 299:5]
  store i8 %58, i8* %54, align 1, !dbg !174       ; [debug line = 299:5]
  %59 = load i8** %2, align 8, !dbg !175          ; [#uses=1 type=i8*] [debug line = 300:11]
  %60 = load i8* %59, align 1, !dbg !175          ; [#uses=1 type=i8] [debug line = 300:11]
  %61 = call zeroext i8 @rj_xtime(i8 zeroext %60), !dbg !175 ; [#uses=1 type=i8] [debug line = 300:11]
  %62 = load i8** %2, align 8, !dbg !175          ; [#uses=1 type=i8*] [debug line = 300:11]
  store i8 %61, i8* %62, align 1, !dbg !175       ; [debug line = 300:11]
  store i8 4, i8* %i, align 1, !dbg !176          ; [debug line = 302:9]
  br label %63, !dbg !176                         ; [debug line = 302:9]

; <label>:63                                      ; preds = %138, %0
  %64 = load i8* %i, align 1, !dbg !176           ; [#uses=1 type=i8] [debug line = 302:9]
  %65 = zext i8 %64 to i32, !dbg !176             ; [#uses=1 type=i32] [debug line = 302:9]
  %66 = icmp slt i32 %65, 16, !dbg !176           ; [#uses=1 type=i1] [debug line = 302:9]
  br i1 %66, label %67, label %143, !dbg !176     ; [debug line = 302:9]

; <label>:67                                      ; preds = %63
  %68 = load i8* %i, align 1, !dbg !178           ; [#uses=1 type=i8] [debug line = 302:32]
  %69 = zext i8 %68 to i32, !dbg !178             ; [#uses=1 type=i32] [debug line = 302:32]
  %70 = sub nsw i32 %69, 4, !dbg !178             ; [#uses=1 type=i32] [debug line = 302:32]
  %71 = sext i32 %70 to i64, !dbg !178            ; [#uses=1 type=i64] [debug line = 302:32]
  %72 = load i8** %1, align 8, !dbg !178          ; [#uses=1 type=i8*] [debug line = 302:32]
  %73 = getelementptr inbounds i8* %72, i64 %71, !dbg !178 ; [#uses=1 type=i8*] [debug line = 302:32]
  %74 = load i8* %73, align 1, !dbg !178          ; [#uses=1 type=i8] [debug line = 302:32]
  %75 = zext i8 %74 to i32, !dbg !178             ; [#uses=1 type=i32] [debug line = 302:32]
  %76 = load i8* %i, align 1, !dbg !178           ; [#uses=1 type=i8] [debug line = 302:32]
  %77 = zext i8 %76 to i64, !dbg !178             ; [#uses=1 type=i64] [debug line = 302:32]
  %78 = load i8** %1, align 8, !dbg !178          ; [#uses=1 type=i8*] [debug line = 302:32]
  %79 = getelementptr inbounds i8* %78, i64 %77, !dbg !178 ; [#uses=2 type=i8*] [debug line = 302:32]
  %80 = load i8* %79, align 1, !dbg !178          ; [#uses=1 type=i8] [debug line = 302:32]
  %81 = zext i8 %80 to i32, !dbg !178             ; [#uses=1 type=i32] [debug line = 302:32]
  %82 = xor i32 %81, %75, !dbg !178               ; [#uses=1 type=i32] [debug line = 302:32]
  %83 = trunc i32 %82 to i8, !dbg !178            ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %83, i8* %79, align 1, !dbg !178       ; [debug line = 302:32]
  %84 = load i8* %i, align 1, !dbg !178           ; [#uses=1 type=i8] [debug line = 302:32]
  %85 = zext i8 %84 to i32, !dbg !178             ; [#uses=1 type=i32] [debug line = 302:32]
  %86 = sub nsw i32 %85, 3, !dbg !178             ; [#uses=1 type=i32] [debug line = 302:32]
  %87 = sext i32 %86 to i64, !dbg !178            ; [#uses=1 type=i64] [debug line = 302:32]
  %88 = load i8** %1, align 8, !dbg !178          ; [#uses=1 type=i8*] [debug line = 302:32]
  %89 = getelementptr inbounds i8* %88, i64 %87, !dbg !178 ; [#uses=1 type=i8*] [debug line = 302:32]
  %90 = load i8* %89, align 1, !dbg !178          ; [#uses=1 type=i8] [debug line = 302:32]
  %91 = zext i8 %90 to i32, !dbg !178             ; [#uses=1 type=i32] [debug line = 302:32]
  %92 = load i8* %i, align 1, !dbg !178           ; [#uses=1 type=i8] [debug line = 302:32]
  %93 = zext i8 %92 to i32, !dbg !178             ; [#uses=1 type=i32] [debug line = 302:32]
  %94 = add nsw i32 %93, 1, !dbg !178             ; [#uses=1 type=i32] [debug line = 302:32]
  %95 = sext i32 %94 to i64, !dbg !178            ; [#uses=1 type=i64] [debug line = 302:32]
  %96 = load i8** %1, align 8, !dbg !178          ; [#uses=1 type=i8*] [debug line = 302:32]
  %97 = getelementptr inbounds i8* %96, i64 %95, !dbg !178 ; [#uses=2 type=i8*] [debug line = 302:32]
  %98 = load i8* %97, align 1, !dbg !178          ; [#uses=1 type=i8] [debug line = 302:32]
  %99 = zext i8 %98 to i32, !dbg !178             ; [#uses=1 type=i32] [debug line = 302:32]
  %100 = xor i32 %99, %91, !dbg !178              ; [#uses=1 type=i32] [debug line = 302:32]
  %101 = trunc i32 %100 to i8, !dbg !178          ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %101, i8* %97, align 1, !dbg !178      ; [debug line = 302:32]
  %102 = load i8* %i, align 1, !dbg !178          ; [#uses=1 type=i8] [debug line = 302:32]
  %103 = zext i8 %102 to i32, !dbg !178           ; [#uses=1 type=i32] [debug line = 302:32]
  %104 = sub nsw i32 %103, 2, !dbg !178           ; [#uses=1 type=i32] [debug line = 302:32]
  %105 = sext i32 %104 to i64, !dbg !178          ; [#uses=1 type=i64] [debug line = 302:32]
  %106 = load i8** %1, align 8, !dbg !178         ; [#uses=1 type=i8*] [debug line = 302:32]
  %107 = getelementptr inbounds i8* %106, i64 %105, !dbg !178 ; [#uses=1 type=i8*] [debug line = 302:32]
  %108 = load i8* %107, align 1, !dbg !178        ; [#uses=1 type=i8] [debug line = 302:32]
  %109 = zext i8 %108 to i32, !dbg !178           ; [#uses=1 type=i32] [debug line = 302:32]
  %110 = load i8* %i, align 1, !dbg !178          ; [#uses=1 type=i8] [debug line = 302:32]
  %111 = zext i8 %110 to i32, !dbg !178           ; [#uses=1 type=i32] [debug line = 302:32]
  %112 = add nsw i32 %111, 2, !dbg !178           ; [#uses=1 type=i32] [debug line = 302:32]
  %113 = sext i32 %112 to i64, !dbg !178          ; [#uses=1 type=i64] [debug line = 302:32]
  %114 = load i8** %1, align 8, !dbg !178         ; [#uses=1 type=i8*] [debug line = 302:32]
  %115 = getelementptr inbounds i8* %114, i64 %113, !dbg !178 ; [#uses=2 type=i8*] [debug line = 302:32]
  %116 = load i8* %115, align 1, !dbg !178        ; [#uses=1 type=i8] [debug line = 302:32]
  %117 = zext i8 %116 to i32, !dbg !178           ; [#uses=1 type=i32] [debug line = 302:32]
  %118 = xor i32 %117, %109, !dbg !178            ; [#uses=1 type=i32] [debug line = 302:32]
  %119 = trunc i32 %118 to i8, !dbg !178          ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %119, i8* %115, align 1, !dbg !178     ; [debug line = 302:32]
  %120 = load i8* %i, align 1, !dbg !178          ; [#uses=1 type=i8] [debug line = 302:32]
  %121 = zext i8 %120 to i32, !dbg !178           ; [#uses=1 type=i32] [debug line = 302:32]
  %122 = sub nsw i32 %121, 1, !dbg !178           ; [#uses=1 type=i32] [debug line = 302:32]
  %123 = sext i32 %122 to i64, !dbg !178          ; [#uses=1 type=i64] [debug line = 302:32]
  %124 = load i8** %1, align 8, !dbg !178         ; [#uses=1 type=i8*] [debug line = 302:32]
  %125 = getelementptr inbounds i8* %124, i64 %123, !dbg !178 ; [#uses=1 type=i8*] [debug line = 302:32]
  %126 = load i8* %125, align 1, !dbg !178        ; [#uses=1 type=i8] [debug line = 302:32]
  %127 = zext i8 %126 to i32, !dbg !178           ; [#uses=1 type=i32] [debug line = 302:32]
  %128 = load i8* %i, align 1, !dbg !178          ; [#uses=1 type=i8] [debug line = 302:32]
  %129 = zext i8 %128 to i32, !dbg !178           ; [#uses=1 type=i32] [debug line = 302:32]
  %130 = add nsw i32 %129, 3, !dbg !178           ; [#uses=1 type=i32] [debug line = 302:32]
  %131 = sext i32 %130 to i64, !dbg !178          ; [#uses=1 type=i64] [debug line = 302:32]
  %132 = load i8** %1, align 8, !dbg !178         ; [#uses=1 type=i8*] [debug line = 302:32]
  %133 = getelementptr inbounds i8* %132, i64 %131, !dbg !178 ; [#uses=2 type=i8*] [debug line = 302:32]
  %134 = load i8* %133, align 1, !dbg !178        ; [#uses=1 type=i8] [debug line = 302:32]
  %135 = zext i8 %134 to i32, !dbg !178           ; [#uses=1 type=i32] [debug line = 302:32]
  %136 = xor i32 %135, %127, !dbg !178            ; [#uses=1 type=i32] [debug line = 302:32]
  %137 = trunc i32 %136 to i8, !dbg !178          ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %137, i8* %133, align 1, !dbg !178     ; [debug line = 302:32]
  br label %138, !dbg !178                        ; [debug line = 302:32]

; <label>:138                                     ; preds = %67
  %139 = load i8* %i, align 1, !dbg !179          ; [#uses=1 type=i8] [debug line = 302:24]
  %140 = zext i8 %139 to i32, !dbg !179           ; [#uses=1 type=i32] [debug line = 302:24]
  %141 = add nsw i32 %140, 4, !dbg !179           ; [#uses=1 type=i32] [debug line = 302:24]
  %142 = trunc i32 %141 to i8, !dbg !179          ; [#uses=1 type=i8] [debug line = 302:24]
  store i8 %142, i8* %i, align 1, !dbg !179       ; [debug line = 302:24]
  br label %63, !dbg !179                         ; [debug line = 302:24]

; <label>:143                                     ; preds = %63
  %144 = load i8** %1, align 8, !dbg !180         ; [#uses=1 type=i8*] [debug line = 304:5]
  %145 = getelementptr inbounds i8* %144, i64 12, !dbg !180 ; [#uses=1 type=i8*] [debug line = 304:5]
  %146 = load i8* %145, align 1, !dbg !180        ; [#uses=1 type=i8] [debug line = 304:5]
  %147 = zext i8 %146 to i64, !dbg !180           ; [#uses=1 type=i64] [debug line = 304:5]
  %148 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %147, !dbg !180 ; [#uses=1 type=i8*] [debug line = 304:5]
  %149 = load i8* %148, align 1, !dbg !180        ; [#uses=1 type=i8] [debug line = 304:5]
  %150 = zext i8 %149 to i32, !dbg !180           ; [#uses=1 type=i32] [debug line = 304:5]
  %151 = load i8** %1, align 8, !dbg !180         ; [#uses=1 type=i8*] [debug line = 304:5]
  %152 = getelementptr inbounds i8* %151, i64 16, !dbg !180 ; [#uses=2 type=i8*] [debug line = 304:5]
  %153 = load i8* %152, align 1, !dbg !180        ; [#uses=1 type=i8] [debug line = 304:5]
  %154 = zext i8 %153 to i32, !dbg !180           ; [#uses=1 type=i32] [debug line = 304:5]
  %155 = xor i32 %154, %150, !dbg !180            ; [#uses=1 type=i32] [debug line = 304:5]
  %156 = trunc i32 %155 to i8, !dbg !180          ; [#uses=1 type=i8] [debug line = 304:5]
  store i8 %156, i8* %152, align 1, !dbg !180     ; [debug line = 304:5]
  %157 = load i8** %1, align 8, !dbg !181         ; [#uses=1 type=i8*] [debug line = 305:5]
  %158 = getelementptr inbounds i8* %157, i64 13, !dbg !181 ; [#uses=1 type=i8*] [debug line = 305:5]
  %159 = load i8* %158, align 1, !dbg !181        ; [#uses=1 type=i8] [debug line = 305:5]
  %160 = zext i8 %159 to i64, !dbg !181           ; [#uses=1 type=i64] [debug line = 305:5]
  %161 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %160, !dbg !181 ; [#uses=1 type=i8*] [debug line = 305:5]
  %162 = load i8* %161, align 1, !dbg !181        ; [#uses=1 type=i8] [debug line = 305:5]
  %163 = zext i8 %162 to i32, !dbg !181           ; [#uses=1 type=i32] [debug line = 305:5]
  %164 = load i8** %1, align 8, !dbg !181         ; [#uses=1 type=i8*] [debug line = 305:5]
  %165 = getelementptr inbounds i8* %164, i64 17, !dbg !181 ; [#uses=2 type=i8*] [debug line = 305:5]
  %166 = load i8* %165, align 1, !dbg !181        ; [#uses=1 type=i8] [debug line = 305:5]
  %167 = zext i8 %166 to i32, !dbg !181           ; [#uses=1 type=i32] [debug line = 305:5]
  %168 = xor i32 %167, %163, !dbg !181            ; [#uses=1 type=i32] [debug line = 305:5]
  %169 = trunc i32 %168 to i8, !dbg !181          ; [#uses=1 type=i8] [debug line = 305:5]
  store i8 %169, i8* %165, align 1, !dbg !181     ; [debug line = 305:5]
  %170 = load i8** %1, align 8, !dbg !182         ; [#uses=1 type=i8*] [debug line = 306:5]
  %171 = getelementptr inbounds i8* %170, i64 14, !dbg !182 ; [#uses=1 type=i8*] [debug line = 306:5]
  %172 = load i8* %171, align 1, !dbg !182        ; [#uses=1 type=i8] [debug line = 306:5]
  %173 = zext i8 %172 to i64, !dbg !182           ; [#uses=1 type=i64] [debug line = 306:5]
  %174 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %173, !dbg !182 ; [#uses=1 type=i8*] [debug line = 306:5]
  %175 = load i8* %174, align 1, !dbg !182        ; [#uses=1 type=i8] [debug line = 306:5]
  %176 = zext i8 %175 to i32, !dbg !182           ; [#uses=1 type=i32] [debug line = 306:5]
  %177 = load i8** %1, align 8, !dbg !182         ; [#uses=1 type=i8*] [debug line = 306:5]
  %178 = getelementptr inbounds i8* %177, i64 18, !dbg !182 ; [#uses=2 type=i8*] [debug line = 306:5]
  %179 = load i8* %178, align 1, !dbg !182        ; [#uses=1 type=i8] [debug line = 306:5]
  %180 = zext i8 %179 to i32, !dbg !182           ; [#uses=1 type=i32] [debug line = 306:5]
  %181 = xor i32 %180, %176, !dbg !182            ; [#uses=1 type=i32] [debug line = 306:5]
  %182 = trunc i32 %181 to i8, !dbg !182          ; [#uses=1 type=i8] [debug line = 306:5]
  store i8 %182, i8* %178, align 1, !dbg !182     ; [debug line = 306:5]
  %183 = load i8** %1, align 8, !dbg !183         ; [#uses=1 type=i8*] [debug line = 307:5]
  %184 = getelementptr inbounds i8* %183, i64 15, !dbg !183 ; [#uses=1 type=i8*] [debug line = 307:5]
  %185 = load i8* %184, align 1, !dbg !183        ; [#uses=1 type=i8] [debug line = 307:5]
  %186 = zext i8 %185 to i64, !dbg !183           ; [#uses=1 type=i64] [debug line = 307:5]
  %187 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %186, !dbg !183 ; [#uses=1 type=i8*] [debug line = 307:5]
  %188 = load i8* %187, align 1, !dbg !183        ; [#uses=1 type=i8] [debug line = 307:5]
  %189 = zext i8 %188 to i32, !dbg !183           ; [#uses=1 type=i32] [debug line = 307:5]
  %190 = load i8** %1, align 8, !dbg !183         ; [#uses=1 type=i8*] [debug line = 307:5]
  %191 = getelementptr inbounds i8* %190, i64 19, !dbg !183 ; [#uses=2 type=i8*] [debug line = 307:5]
  %192 = load i8* %191, align 1, !dbg !183        ; [#uses=1 type=i8] [debug line = 307:5]
  %193 = zext i8 %192 to i32, !dbg !183           ; [#uses=1 type=i32] [debug line = 307:5]
  %194 = xor i32 %193, %189, !dbg !183            ; [#uses=1 type=i32] [debug line = 307:5]
  %195 = trunc i32 %194 to i8, !dbg !183          ; [#uses=1 type=i8] [debug line = 307:5]
  store i8 %195, i8* %191, align 1, !dbg !183     ; [debug line = 307:5]
  store i8 20, i8* %i, align 1, !dbg !184         ; [debug line = 309:9]
  br label %196, !dbg !184                        ; [debug line = 309:9]

; <label>:196                                     ; preds = %271, %143
  %197 = load i8* %i, align 1, !dbg !184          ; [#uses=1 type=i8] [debug line = 309:9]
  %198 = zext i8 %197 to i32, !dbg !184           ; [#uses=1 type=i32] [debug line = 309:9]
  %199 = icmp slt i32 %198, 32, !dbg !184         ; [#uses=1 type=i1] [debug line = 309:9]
  br i1 %199, label %200, label %276, !dbg !184   ; [debug line = 309:9]

; <label>:200                                     ; preds = %196
  %201 = load i8* %i, align 1, !dbg !186          ; [#uses=1 type=i8] [debug line = 309:33]
  %202 = zext i8 %201 to i32, !dbg !186           ; [#uses=1 type=i32] [debug line = 309:33]
  %203 = sub nsw i32 %202, 4, !dbg !186           ; [#uses=1 type=i32] [debug line = 309:33]
  %204 = sext i32 %203 to i64, !dbg !186          ; [#uses=1 type=i64] [debug line = 309:33]
  %205 = load i8** %1, align 8, !dbg !186         ; [#uses=1 type=i8*] [debug line = 309:33]
  %206 = getelementptr inbounds i8* %205, i64 %204, !dbg !186 ; [#uses=1 type=i8*] [debug line = 309:33]
  %207 = load i8* %206, align 1, !dbg !186        ; [#uses=1 type=i8] [debug line = 309:33]
  %208 = zext i8 %207 to i32, !dbg !186           ; [#uses=1 type=i32] [debug line = 309:33]
  %209 = load i8* %i, align 1, !dbg !186          ; [#uses=1 type=i8] [debug line = 309:33]
  %210 = zext i8 %209 to i64, !dbg !186           ; [#uses=1 type=i64] [debug line = 309:33]
  %211 = load i8** %1, align 8, !dbg !186         ; [#uses=1 type=i8*] [debug line = 309:33]
  %212 = getelementptr inbounds i8* %211, i64 %210, !dbg !186 ; [#uses=2 type=i8*] [debug line = 309:33]
  %213 = load i8* %212, align 1, !dbg !186        ; [#uses=1 type=i8] [debug line = 309:33]
  %214 = zext i8 %213 to i32, !dbg !186           ; [#uses=1 type=i32] [debug line = 309:33]
  %215 = xor i32 %214, %208, !dbg !186            ; [#uses=1 type=i32] [debug line = 309:33]
  %216 = trunc i32 %215 to i8, !dbg !186          ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %216, i8* %212, align 1, !dbg !186     ; [debug line = 309:33]
  %217 = load i8* %i, align 1, !dbg !186          ; [#uses=1 type=i8] [debug line = 309:33]
  %218 = zext i8 %217 to i32, !dbg !186           ; [#uses=1 type=i32] [debug line = 309:33]
  %219 = sub nsw i32 %218, 3, !dbg !186           ; [#uses=1 type=i32] [debug line = 309:33]
  %220 = sext i32 %219 to i64, !dbg !186          ; [#uses=1 type=i64] [debug line = 309:33]
  %221 = load i8** %1, align 8, !dbg !186         ; [#uses=1 type=i8*] [debug line = 309:33]
  %222 = getelementptr inbounds i8* %221, i64 %220, !dbg !186 ; [#uses=1 type=i8*] [debug line = 309:33]
  %223 = load i8* %222, align 1, !dbg !186        ; [#uses=1 type=i8] [debug line = 309:33]
  %224 = zext i8 %223 to i32, !dbg !186           ; [#uses=1 type=i32] [debug line = 309:33]
  %225 = load i8* %i, align 1, !dbg !186          ; [#uses=1 type=i8] [debug line = 309:33]
  %226 = zext i8 %225 to i32, !dbg !186           ; [#uses=1 type=i32] [debug line = 309:33]
  %227 = add nsw i32 %226, 1, !dbg !186           ; [#uses=1 type=i32] [debug line = 309:33]
  %228 = sext i32 %227 to i64, !dbg !186          ; [#uses=1 type=i64] [debug line = 309:33]
  %229 = load i8** %1, align 8, !dbg !186         ; [#uses=1 type=i8*] [debug line = 309:33]
  %230 = getelementptr inbounds i8* %229, i64 %228, !dbg !186 ; [#uses=2 type=i8*] [debug line = 309:33]
  %231 = load i8* %230, align 1, !dbg !186        ; [#uses=1 type=i8] [debug line = 309:33]
  %232 = zext i8 %231 to i32, !dbg !186           ; [#uses=1 type=i32] [debug line = 309:33]
  %233 = xor i32 %232, %224, !dbg !186            ; [#uses=1 type=i32] [debug line = 309:33]
  %234 = trunc i32 %233 to i8, !dbg !186          ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %234, i8* %230, align 1, !dbg !186     ; [debug line = 309:33]
  %235 = load i8* %i, align 1, !dbg !186          ; [#uses=1 type=i8] [debug line = 309:33]
  %236 = zext i8 %235 to i32, !dbg !186           ; [#uses=1 type=i32] [debug line = 309:33]
  %237 = sub nsw i32 %236, 2, !dbg !186           ; [#uses=1 type=i32] [debug line = 309:33]
  %238 = sext i32 %237 to i64, !dbg !186          ; [#uses=1 type=i64] [debug line = 309:33]
  %239 = load i8** %1, align 8, !dbg !186         ; [#uses=1 type=i8*] [debug line = 309:33]
  %240 = getelementptr inbounds i8* %239, i64 %238, !dbg !186 ; [#uses=1 type=i8*] [debug line = 309:33]
  %241 = load i8* %240, align 1, !dbg !186        ; [#uses=1 type=i8] [debug line = 309:33]
  %242 = zext i8 %241 to i32, !dbg !186           ; [#uses=1 type=i32] [debug line = 309:33]
  %243 = load i8* %i, align 1, !dbg !186          ; [#uses=1 type=i8] [debug line = 309:33]
  %244 = zext i8 %243 to i32, !dbg !186           ; [#uses=1 type=i32] [debug line = 309:33]
  %245 = add nsw i32 %244, 2, !dbg !186           ; [#uses=1 type=i32] [debug line = 309:33]
  %246 = sext i32 %245 to i64, !dbg !186          ; [#uses=1 type=i64] [debug line = 309:33]
  %247 = load i8** %1, align 8, !dbg !186         ; [#uses=1 type=i8*] [debug line = 309:33]
  %248 = getelementptr inbounds i8* %247, i64 %246, !dbg !186 ; [#uses=2 type=i8*] [debug line = 309:33]
  %249 = load i8* %248, align 1, !dbg !186        ; [#uses=1 type=i8] [debug line = 309:33]
  %250 = zext i8 %249 to i32, !dbg !186           ; [#uses=1 type=i32] [debug line = 309:33]
  %251 = xor i32 %250, %242, !dbg !186            ; [#uses=1 type=i32] [debug line = 309:33]
  %252 = trunc i32 %251 to i8, !dbg !186          ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %252, i8* %248, align 1, !dbg !186     ; [debug line = 309:33]
  %253 = load i8* %i, align 1, !dbg !186          ; [#uses=1 type=i8] [debug line = 309:33]
  %254 = zext i8 %253 to i32, !dbg !186           ; [#uses=1 type=i32] [debug line = 309:33]
  %255 = sub nsw i32 %254, 1, !dbg !186           ; [#uses=1 type=i32] [debug line = 309:33]
  %256 = sext i32 %255 to i64, !dbg !186          ; [#uses=1 type=i64] [debug line = 309:33]
  %257 = load i8** %1, align 8, !dbg !186         ; [#uses=1 type=i8*] [debug line = 309:33]
  %258 = getelementptr inbounds i8* %257, i64 %256, !dbg !186 ; [#uses=1 type=i8*] [debug line = 309:33]
  %259 = load i8* %258, align 1, !dbg !186        ; [#uses=1 type=i8] [debug line = 309:33]
  %260 = zext i8 %259 to i32, !dbg !186           ; [#uses=1 type=i32] [debug line = 309:33]
  %261 = load i8* %i, align 1, !dbg !186          ; [#uses=1 type=i8] [debug line = 309:33]
  %262 = zext i8 %261 to i32, !dbg !186           ; [#uses=1 type=i32] [debug line = 309:33]
  %263 = add nsw i32 %262, 3, !dbg !186           ; [#uses=1 type=i32] [debug line = 309:33]
  %264 = sext i32 %263 to i64, !dbg !186          ; [#uses=1 type=i64] [debug line = 309:33]
  %265 = load i8** %1, align 8, !dbg !186         ; [#uses=1 type=i8*] [debug line = 309:33]
  %266 = getelementptr inbounds i8* %265, i64 %264, !dbg !186 ; [#uses=2 type=i8*] [debug line = 309:33]
  %267 = load i8* %266, align 1, !dbg !186        ; [#uses=1 type=i8] [debug line = 309:33]
  %268 = zext i8 %267 to i32, !dbg !186           ; [#uses=1 type=i32] [debug line = 309:33]
  %269 = xor i32 %268, %260, !dbg !186            ; [#uses=1 type=i32] [debug line = 309:33]
  %270 = trunc i32 %269 to i8, !dbg !186          ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %270, i8* %266, align 1, !dbg !186     ; [debug line = 309:33]
  br label %271, !dbg !186                        ; [debug line = 309:33]

; <label>:271                                     ; preds = %200
  %272 = load i8* %i, align 1, !dbg !187          ; [#uses=1 type=i8] [debug line = 309:25]
  %273 = zext i8 %272 to i32, !dbg !187           ; [#uses=1 type=i32] [debug line = 309:25]
  %274 = add nsw i32 %273, 4, !dbg !187           ; [#uses=1 type=i32] [debug line = 309:25]
  %275 = trunc i32 %274 to i8, !dbg !187          ; [#uses=1 type=i8] [debug line = 309:25]
  store i8 %275, i8* %i, align 1, !dbg !187       ; [debug line = 309:25]
  br label %196, !dbg !187                        ; [debug line = 309:25]

; <label>:276                                     ; preds = %196
  ret void, !dbg !188                             ; [debug line = 312:1]
}

; [#uses=0]
define void @aes256_done(%struct.aes256_context* %ctx) nounwind uwtable {
  %1 = alloca %struct.aes256_context*, align 8    ; [#uses=4 type=%struct.aes256_context**]
  %i = alloca i8, align 1                         ; [#uses=7 type=i8*]
  store %struct.aes256_context* %ctx, %struct.aes256_context** %1, align 8
  call void @llvm.dbg.declare(metadata !{%struct.aes256_context** %1}, metadata !189), !dbg !190 ; [debug line = 349:34] [debug variable = ctx]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !191), !dbg !193 ; [debug line = 351:28] [debug variable = i]
  store i8 0, i8* %i, align 1, !dbg !194          ; [debug line = 353:10]
  br label %2, !dbg !194                          ; [debug line = 353:10]

; <label>:2                                       ; preds = %22, %0
  %3 = load i8* %i, align 1, !dbg !194            ; [#uses=1 type=i8] [debug line = 353:10]
  %4 = zext i8 %3 to i64, !dbg !194               ; [#uses=1 type=i64] [debug line = 353:10]
  %5 = icmp ult i64 %4, 32, !dbg !194             ; [#uses=1 type=i1] [debug line = 353:10]
  br i1 %5, label %6, label %25, !dbg !194        ; [debug line = 353:10]

; <label>:6                                       ; preds = %2
  %7 = load i8* %i, align 1, !dbg !196            ; [#uses=1 type=i8] [debug line = 354:9]
  %8 = zext i8 %7 to i64, !dbg !196               ; [#uses=1 type=i64] [debug line = 354:9]
  %9 = load %struct.aes256_context** %1, align 8, !dbg !196 ; [#uses=1 type=%struct.aes256_context*] [debug line = 354:9]
  %10 = getelementptr inbounds %struct.aes256_context* %9, i32 0, i32 2, !dbg !196 ; [#uses=1 type=[32 x i8]*] [debug line = 354:9]
  %11 = getelementptr inbounds [32 x i8]* %10, i32 0, i64 %8, !dbg !196 ; [#uses=1 type=i8*] [debug line = 354:9]
  store i8 0, i8* %11, align 1, !dbg !196         ; [debug line = 354:9]
  %12 = load i8* %i, align 1, !dbg !196           ; [#uses=1 type=i8] [debug line = 354:9]
  %13 = zext i8 %12 to i64, !dbg !196             ; [#uses=1 type=i64] [debug line = 354:9]
  %14 = load %struct.aes256_context** %1, align 8, !dbg !196 ; [#uses=1 type=%struct.aes256_context*] [debug line = 354:9]
  %15 = getelementptr inbounds %struct.aes256_context* %14, i32 0, i32 1, !dbg !196 ; [#uses=1 type=[32 x i8]*] [debug line = 354:9]
  %16 = getelementptr inbounds [32 x i8]* %15, i32 0, i64 %13, !dbg !196 ; [#uses=1 type=i8*] [debug line = 354:9]
  store i8 0, i8* %16, align 1, !dbg !196         ; [debug line = 354:9]
  %17 = load i8* %i, align 1, !dbg !196           ; [#uses=1 type=i8] [debug line = 354:9]
  %18 = zext i8 %17 to i64, !dbg !196             ; [#uses=1 type=i64] [debug line = 354:9]
  %19 = load %struct.aes256_context** %1, align 8, !dbg !196 ; [#uses=1 type=%struct.aes256_context*] [debug line = 354:9]
  %20 = getelementptr inbounds %struct.aes256_context* %19, i32 0, i32 0, !dbg !196 ; [#uses=1 type=[32 x i8]*] [debug line = 354:9]
  %21 = getelementptr inbounds [32 x i8]* %20, i32 0, i64 %18, !dbg !196 ; [#uses=1 type=i8*] [debug line = 354:9]
  store i8 0, i8* %21, align 1, !dbg !196         ; [debug line = 354:9]
  br label %22, !dbg !196                         ; [debug line = 354:9]

; <label>:22                                      ; preds = %6
  %23 = load i8* %i, align 1, !dbg !197           ; [#uses=1 type=i8] [debug line = 353:39]
  %24 = add i8 %23, 1, !dbg !197                  ; [#uses=1 type=i8] [debug line = 353:39]
  store i8 %24, i8* %i, align 1, !dbg !197        ; [debug line = 353:39]
  br label %2, !dbg !197                          ; [debug line = 353:39]

; <label>:25                                      ; preds = %2
  ret void, !dbg !198                             ; [debug line = 355:1]
}

; [#uses=1]
define void @aes256_encrypt_ecb(%struct.aes256_context* %ctx, i8* %buf) nounwind uwtable {
  %1 = alloca %struct.aes256_context*, align 8    ; [#uses=8 type=%struct.aes256_context**]
  %2 = alloca i8*, align 8                        ; [#uses=10 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=5 type=i8*]
  %rcon = alloca i8, align 1                      ; [#uses=3 type=i8*]
  store %struct.aes256_context* %ctx, %struct.aes256_context** %1, align 8
  call void @llvm.dbg.declare(metadata !{%struct.aes256_context** %1}, metadata !199), !dbg !200 ; [debug line = 358:41] [debug variable = ctx]
  store i8* %buf, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !201), !dbg !202 ; [debug line = 358:61] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !203), !dbg !205 ; [debug line = 360:19] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i8* %rcon}, metadata !206), !dbg !207 ; [debug line = 360:22] [debug variable = rcon]
  %3 = load i8** %2, align 8, !dbg !208           ; [#uses=1 type=i8*] [debug line = 362:5]
  %4 = load %struct.aes256_context** %1, align 8, !dbg !208 ; [#uses=1 type=%struct.aes256_context*] [debug line = 362:5]
  %5 = getelementptr inbounds %struct.aes256_context* %4, i32 0, i32 1, !dbg !208 ; [#uses=1 type=[32 x i8]*] [debug line = 362:5]
  %6 = getelementptr inbounds [32 x i8]* %5, i32 0, i32 0, !dbg !208 ; [#uses=1 type=i8*] [debug line = 362:5]
  %7 = load %struct.aes256_context** %1, align 8, !dbg !208 ; [#uses=1 type=%struct.aes256_context*] [debug line = 362:5]
  %8 = getelementptr inbounds %struct.aes256_context* %7, i32 0, i32 0, !dbg !208 ; [#uses=1 type=[32 x i8]*] [debug line = 362:5]
  %9 = getelementptr inbounds [32 x i8]* %8, i32 0, i32 0, !dbg !208 ; [#uses=1 type=i8*] [debug line = 362:5]
  call void @aes_addRoundKey_cpy(i8* %3, i8* %6, i8* %9), !dbg !208 ; [debug line = 362:5]
  store i8 1, i8* %i, align 1, !dbg !209          ; [debug line = 363:9]
  store i8 1, i8* %rcon, align 1, !dbg !209       ; [debug line = 363:9]
  br label %10, !dbg !209                         ; [debug line = 363:9]

; <label>:10                                      ; preds = %36, %0
  %11 = load i8* %i, align 1, !dbg !209           ; [#uses=1 type=i8] [debug line = 363:9]
  %12 = zext i8 %11 to i32, !dbg !209             ; [#uses=1 type=i32] [debug line = 363:9]
  %13 = icmp slt i32 %12, 14, !dbg !209           ; [#uses=1 type=i1] [debug line = 363:9]
  br i1 %13, label %14, label %39, !dbg !209      ; [debug line = 363:9]

; <label>:14                                      ; preds = %10
  %15 = load i8** %2, align 8, !dbg !211          ; [#uses=1 type=i8*] [debug line = 365:9]
  call void @aes_subBytes(i8* %15), !dbg !211     ; [debug line = 365:9]
  %16 = load i8** %2, align 8, !dbg !213          ; [#uses=1 type=i8*] [debug line = 366:9]
  call void @aes_shiftRows(i8* %16), !dbg !213    ; [debug line = 366:9]
  %17 = load i8** %2, align 8, !dbg !214          ; [#uses=1 type=i8*] [debug line = 367:9]
  call void @aes_mixColumns(i8* %17), !dbg !214   ; [debug line = 367:9]
  %18 = load i8* %i, align 1, !dbg !215           ; [#uses=1 type=i8] [debug line = 368:9]
  %19 = zext i8 %18 to i32, !dbg !215             ; [#uses=1 type=i32] [debug line = 368:9]
  %20 = and i32 %19, 1, !dbg !215                 ; [#uses=1 type=i32] [debug line = 368:9]
  %21 = icmp ne i32 %20, 0, !dbg !215             ; [#uses=1 type=i1] [debug line = 368:9]
  br i1 %21, label %22, label %27, !dbg !215      ; [debug line = 368:9]

; <label>:22                                      ; preds = %14
  %23 = load i8** %2, align 8, !dbg !216          ; [#uses=1 type=i8*] [debug line = 368:21]
  %24 = load %struct.aes256_context** %1, align 8, !dbg !216 ; [#uses=1 type=%struct.aes256_context*] [debug line = 368:21]
  %25 = getelementptr inbounds %struct.aes256_context* %24, i32 0, i32 0, !dbg !216 ; [#uses=1 type=[32 x i8]*] [debug line = 368:21]
  %26 = getelementptr inbounds [32 x i8]* %25, i32 0, i64 16, !dbg !216 ; [#uses=1 type=i8*] [debug line = 368:21]
  call void @aes_addRoundKey(i8* %23, i8* %26), !dbg !216 ; [debug line = 368:21]
  br label %35, !dbg !216                         ; [debug line = 368:21]

; <label>:27                                      ; preds = %14
  %28 = load %struct.aes256_context** %1, align 8, !dbg !217 ; [#uses=1 type=%struct.aes256_context*] [debug line = 369:14]
  %29 = getelementptr inbounds %struct.aes256_context* %28, i32 0, i32 0, !dbg !217 ; [#uses=1 type=[32 x i8]*] [debug line = 369:14]
  %30 = getelementptr inbounds [32 x i8]* %29, i32 0, i32 0, !dbg !217 ; [#uses=1 type=i8*] [debug line = 369:14]
  call void @aes_expandEncKey(i8* %30, i8* %rcon), !dbg !217 ; [debug line = 369:14]
  %31 = load i8** %2, align 8, !dbg !218          ; [#uses=1 type=i8*] [debug line = 369:49]
  %32 = load %struct.aes256_context** %1, align 8, !dbg !218 ; [#uses=1 type=%struct.aes256_context*] [debug line = 369:49]
  %33 = getelementptr inbounds %struct.aes256_context* %32, i32 0, i32 0, !dbg !218 ; [#uses=1 type=[32 x i8]*] [debug line = 369:49]
  %34 = getelementptr inbounds [32 x i8]* %33, i32 0, i32 0, !dbg !218 ; [#uses=1 type=i8*] [debug line = 369:49]
  call void @aes_addRoundKey(i8* %31, i8* %34), !dbg !218 ; [debug line = 369:49]
  br label %35

; <label>:35                                      ; preds = %27, %22
  br label %36, !dbg !219                         ; [debug line = 370:5]

; <label>:36                                      ; preds = %35
  %37 = load i8* %i, align 1, !dbg !220           ; [#uses=1 type=i8] [debug line = 363:34]
  %38 = add i8 %37, 1, !dbg !220                  ; [#uses=1 type=i8] [debug line = 363:34]
  store i8 %38, i8* %i, align 1, !dbg !220        ; [debug line = 363:34]
  br label %10, !dbg !220                         ; [debug line = 363:34]

; <label>:39                                      ; preds = %10
  %40 = load i8** %2, align 8, !dbg !221          ; [#uses=1 type=i8*] [debug line = 371:5]
  call void @aes_subBytes(i8* %40), !dbg !221     ; [debug line = 371:5]
  %41 = load i8** %2, align 8, !dbg !222          ; [#uses=1 type=i8*] [debug line = 372:5]
  call void @aes_shiftRows(i8* %41), !dbg !222    ; [debug line = 372:5]
  %42 = load %struct.aes256_context** %1, align 8, !dbg !223 ; [#uses=1 type=%struct.aes256_context*] [debug line = 373:5]
  %43 = getelementptr inbounds %struct.aes256_context* %42, i32 0, i32 0, !dbg !223 ; [#uses=1 type=[32 x i8]*] [debug line = 373:5]
  %44 = getelementptr inbounds [32 x i8]* %43, i32 0, i32 0, !dbg !223 ; [#uses=1 type=i8*] [debug line = 373:5]
  call void @aes_expandEncKey(i8* %44, i8* %rcon), !dbg !223 ; [debug line = 373:5]
  %45 = load i8** %2, align 8, !dbg !224          ; [#uses=1 type=i8*] [debug line = 374:5]
  %46 = load %struct.aes256_context** %1, align 8, !dbg !224 ; [#uses=1 type=%struct.aes256_context*] [debug line = 374:5]
  %47 = getelementptr inbounds %struct.aes256_context* %46, i32 0, i32 0, !dbg !224 ; [#uses=1 type=[32 x i8]*] [debug line = 374:5]
  %48 = getelementptr inbounds [32 x i8]* %47, i32 0, i32 0, !dbg !224 ; [#uses=1 type=i8*] [debug line = 374:5]
  call void @aes_addRoundKey(i8* %45, i8* %48), !dbg !224 ; [debug line = 374:5]
  ret void, !dbg !225                             ; [debug line = 375:1]
}

; [#uses=2]
define internal void @aes_addRoundKey_cpy(i8* %buf, i8* %key, i8* %cpk) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %2 = alloca i8*, align 8                        ; [#uses=3 type=i8**]
  %3 = alloca i8*, align 8                        ; [#uses=3 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=8 type=i8*]
  store i8* %buf, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !226), !dbg !227 ; [debug line = 218:48] [debug variable = buf]
  store i8* %key, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !228), !dbg !229 ; [debug line = 218:68] [debug variable = key]
  store i8* %cpk, i8** %3, align 8
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !230), !dbg !231 ; [debug line = 218:88] [debug variable = cpk]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !232), !dbg !234 ; [debug line = 220:28] [debug variable = i]
  store i8 16, i8* %i, align 1, !dbg !235         ; [debug line = 220:34]
  br label %4, !dbg !236                          ; [debug line = 222:5]

; <label>:4                                       ; preds = %8, %0
  %5 = load i8* %i, align 1, !dbg !236            ; [#uses=2 type=i8] [debug line = 222:5]
  %6 = add i8 %5, -1, !dbg !236                   ; [#uses=1 type=i8] [debug line = 222:5]
  store i8 %6, i8* %i, align 1, !dbg !236         ; [debug line = 222:5]
  %7 = icmp ne i8 %5, 0, !dbg !236                ; [#uses=1 type=i1] [debug line = 222:5]
  br i1 %7, label %8, label %40, !dbg !236        ; [debug line = 222:5]

; <label>:8                                       ; preds = %4
  %9 = load i8* %i, align 1, !dbg !237            ; [#uses=1 type=i8] [debug line = 222:17]
  %10 = zext i8 %9 to i64, !dbg !237              ; [#uses=1 type=i64] [debug line = 222:17]
  %11 = load i8** %2, align 8, !dbg !237          ; [#uses=1 type=i8*] [debug line = 222:17]
  %12 = getelementptr inbounds i8* %11, i64 %10, !dbg !237 ; [#uses=1 type=i8*] [debug line = 222:17]
  %13 = load i8* %12, align 1, !dbg !237          ; [#uses=2 type=i8] [debug line = 222:17]
  %14 = load i8* %i, align 1, !dbg !237           ; [#uses=1 type=i8] [debug line = 222:17]
  %15 = zext i8 %14 to i64, !dbg !237             ; [#uses=1 type=i64] [debug line = 222:17]
  %16 = load i8** %3, align 8, !dbg !237          ; [#uses=1 type=i8*] [debug line = 222:17]
  %17 = getelementptr inbounds i8* %16, i64 %15, !dbg !237 ; [#uses=1 type=i8*] [debug line = 222:17]
  store i8 %13, i8* %17, align 1, !dbg !237       ; [debug line = 222:17]
  %18 = zext i8 %13 to i32, !dbg !237             ; [#uses=1 type=i32] [debug line = 222:17]
  %19 = load i8* %i, align 1, !dbg !237           ; [#uses=1 type=i8] [debug line = 222:17]
  %20 = zext i8 %19 to i64, !dbg !237             ; [#uses=1 type=i64] [debug line = 222:17]
  %21 = load i8** %1, align 8, !dbg !237          ; [#uses=1 type=i8*] [debug line = 222:17]
  %22 = getelementptr inbounds i8* %21, i64 %20, !dbg !237 ; [#uses=2 type=i8*] [debug line = 222:17]
  %23 = load i8* %22, align 1, !dbg !237          ; [#uses=1 type=i8] [debug line = 222:17]
  %24 = zext i8 %23 to i32, !dbg !237             ; [#uses=1 type=i32] [debug line = 222:17]
  %25 = xor i32 %24, %18, !dbg !237               ; [#uses=1 type=i32] [debug line = 222:17]
  %26 = trunc i32 %25 to i8, !dbg !237            ; [#uses=1 type=i8] [debug line = 222:17]
  store i8 %26, i8* %22, align 1, !dbg !237       ; [debug line = 222:17]
  %27 = load i8* %i, align 1, !dbg !237           ; [#uses=1 type=i8] [debug line = 222:17]
  %28 = zext i8 %27 to i32, !dbg !237             ; [#uses=1 type=i32] [debug line = 222:17]
  %29 = add nsw i32 16, %28, !dbg !237            ; [#uses=1 type=i32] [debug line = 222:17]
  %30 = sext i32 %29 to i64, !dbg !237            ; [#uses=1 type=i64] [debug line = 222:17]
  %31 = load i8** %2, align 8, !dbg !237          ; [#uses=1 type=i8*] [debug line = 222:17]
  %32 = getelementptr inbounds i8* %31, i64 %30, !dbg !237 ; [#uses=1 type=i8*] [debug line = 222:17]
  %33 = load i8* %32, align 1, !dbg !237          ; [#uses=1 type=i8] [debug line = 222:17]
  %34 = load i8* %i, align 1, !dbg !237           ; [#uses=1 type=i8] [debug line = 222:17]
  %35 = zext i8 %34 to i32, !dbg !237             ; [#uses=1 type=i32] [debug line = 222:17]
  %36 = add nsw i32 16, %35, !dbg !237            ; [#uses=1 type=i32] [debug line = 222:17]
  %37 = sext i32 %36 to i64, !dbg !237            ; [#uses=1 type=i64] [debug line = 222:17]
  %38 = load i8** %3, align 8, !dbg !237          ; [#uses=1 type=i8*] [debug line = 222:17]
  %39 = getelementptr inbounds i8* %38, i64 %37, !dbg !237 ; [#uses=1 type=i8*] [debug line = 222:17]
  store i8 %33, i8* %39, align 1, !dbg !237       ; [debug line = 222:17]
  br label %4, !dbg !237                          ; [debug line = 222:17]

; <label>:40                                      ; preds = %4
  ret void, !dbg !238                             ; [debug line = 223:1]
}

; [#uses=2]
define internal void @aes_subBytes(i8* %buf) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=3 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=5 type=i8*]
  store i8* %buf, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !239), !dbg !240 ; [debug line = 194:41] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !241), !dbg !243 ; [debug line = 196:28] [debug variable = i]
  store i8 16, i8* %i, align 1, !dbg !244         ; [debug line = 196:34]
  br label %2, !dbg !245                          ; [debug line = 198:5]

; <label>:2                                       ; preds = %6, %0
  %3 = load i8* %i, align 1, !dbg !245            ; [#uses=2 type=i8] [debug line = 198:5]
  %4 = add i8 %3, -1, !dbg !245                   ; [#uses=1 type=i8] [debug line = 198:5]
  store i8 %4, i8* %i, align 1, !dbg !245         ; [debug line = 198:5]
  %5 = icmp ne i8 %3, 0, !dbg !245                ; [#uses=1 type=i1] [debug line = 198:5]
  br i1 %5, label %6, label %19, !dbg !245        ; [debug line = 198:5]

; <label>:6                                       ; preds = %2
  %7 = load i8* %i, align 1, !dbg !246            ; [#uses=1 type=i8] [debug line = 198:17]
  %8 = zext i8 %7 to i64, !dbg !246               ; [#uses=1 type=i64] [debug line = 198:17]
  %9 = load i8** %1, align 8, !dbg !246           ; [#uses=1 type=i8*] [debug line = 198:17]
  %10 = getelementptr inbounds i8* %9, i64 %8, !dbg !246 ; [#uses=1 type=i8*] [debug line = 198:17]
  %11 = load i8* %10, align 1, !dbg !246          ; [#uses=1 type=i8] [debug line = 198:17]
  %12 = zext i8 %11 to i64, !dbg !246             ; [#uses=1 type=i64] [debug line = 198:17]
  %13 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %12, !dbg !246 ; [#uses=1 type=i8*] [debug line = 198:17]
  %14 = load i8* %13, align 1, !dbg !246          ; [#uses=1 type=i8] [debug line = 198:17]
  %15 = load i8* %i, align 1, !dbg !246           ; [#uses=1 type=i8] [debug line = 198:17]
  %16 = zext i8 %15 to i64, !dbg !246             ; [#uses=1 type=i64] [debug line = 198:17]
  %17 = load i8** %1, align 8, !dbg !246          ; [#uses=1 type=i8*] [debug line = 198:17]
  %18 = getelementptr inbounds i8* %17, i64 %16, !dbg !246 ; [#uses=1 type=i8*] [debug line = 198:17]
  store i8 %14, i8* %18, align 1, !dbg !246       ; [debug line = 198:17]
  br label %2, !dbg !246                          ; [debug line = 198:17]

; <label>:19                                      ; preds = %2
  ret void, !dbg !247                             ; [debug line = 199:1]
}

; [#uses=2]
define internal void @aes_shiftRows(i8* %buf) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=25 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=4 type=i8*]
  %j = alloca i8, align 1                         ; [#uses=4 type=i8*]
  store i8* %buf, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !248), !dbg !249 ; [debug line = 227:42] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !250), !dbg !252 ; [debug line = 229:28] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i8* %j}, metadata !253), !dbg !254 ; [debug line = 229:31] [debug variable = j]
  %2 = load i8** %1, align 8, !dbg !255           ; [#uses=1 type=i8*] [debug line = 231:5]
  %3 = getelementptr inbounds i8* %2, i64 1, !dbg !255 ; [#uses=1 type=i8*] [debug line = 231:5]
  %4 = load i8* %3, align 1, !dbg !255            ; [#uses=1 type=i8] [debug line = 231:5]
  store i8 %4, i8* %i, align 1, !dbg !255         ; [debug line = 231:5]
  %5 = load i8** %1, align 8, !dbg !255           ; [#uses=1 type=i8*] [debug line = 231:5]
  %6 = getelementptr inbounds i8* %5, i64 5, !dbg !255 ; [#uses=1 type=i8*] [debug line = 231:5]
  %7 = load i8* %6, align 1, !dbg !255            ; [#uses=1 type=i8] [debug line = 231:5]
  %8 = load i8** %1, align 8, !dbg !255           ; [#uses=1 type=i8*] [debug line = 231:5]
  %9 = getelementptr inbounds i8* %8, i64 1, !dbg !255 ; [#uses=1 type=i8*] [debug line = 231:5]
  store i8 %7, i8* %9, align 1, !dbg !255         ; [debug line = 231:5]
  %10 = load i8** %1, align 8, !dbg !255          ; [#uses=1 type=i8*] [debug line = 231:5]
  %11 = getelementptr inbounds i8* %10, i64 9, !dbg !255 ; [#uses=1 type=i8*] [debug line = 231:5]
  %12 = load i8* %11, align 1, !dbg !255          ; [#uses=1 type=i8] [debug line = 231:5]
  %13 = load i8** %1, align 8, !dbg !255          ; [#uses=1 type=i8*] [debug line = 231:5]
  %14 = getelementptr inbounds i8* %13, i64 5, !dbg !255 ; [#uses=1 type=i8*] [debug line = 231:5]
  store i8 %12, i8* %14, align 1, !dbg !255       ; [debug line = 231:5]
  %15 = load i8** %1, align 8, !dbg !255          ; [#uses=1 type=i8*] [debug line = 231:5]
  %16 = getelementptr inbounds i8* %15, i64 13, !dbg !255 ; [#uses=1 type=i8*] [debug line = 231:5]
  %17 = load i8* %16, align 1, !dbg !255          ; [#uses=1 type=i8] [debug line = 231:5]
  %18 = load i8** %1, align 8, !dbg !255          ; [#uses=1 type=i8*] [debug line = 231:5]
  %19 = getelementptr inbounds i8* %18, i64 9, !dbg !255 ; [#uses=1 type=i8*] [debug line = 231:5]
  store i8 %17, i8* %19, align 1, !dbg !255       ; [debug line = 231:5]
  %20 = load i8* %i, align 1, !dbg !255           ; [#uses=1 type=i8] [debug line = 231:5]
  %21 = load i8** %1, align 8, !dbg !255          ; [#uses=1 type=i8*] [debug line = 231:5]
  %22 = getelementptr inbounds i8* %21, i64 13, !dbg !255 ; [#uses=1 type=i8*] [debug line = 231:5]
  store i8 %20, i8* %22, align 1, !dbg !255       ; [debug line = 231:5]
  %23 = load i8** %1, align 8, !dbg !256          ; [#uses=1 type=i8*] [debug line = 232:5]
  %24 = getelementptr inbounds i8* %23, i64 10, !dbg !256 ; [#uses=1 type=i8*] [debug line = 232:5]
  %25 = load i8* %24, align 1, !dbg !256          ; [#uses=1 type=i8] [debug line = 232:5]
  store i8 %25, i8* %i, align 1, !dbg !256        ; [debug line = 232:5]
  %26 = load i8** %1, align 8, !dbg !256          ; [#uses=1 type=i8*] [debug line = 232:5]
  %27 = getelementptr inbounds i8* %26, i64 2, !dbg !256 ; [#uses=1 type=i8*] [debug line = 232:5]
  %28 = load i8* %27, align 1, !dbg !256          ; [#uses=1 type=i8] [debug line = 232:5]
  %29 = load i8** %1, align 8, !dbg !256          ; [#uses=1 type=i8*] [debug line = 232:5]
  %30 = getelementptr inbounds i8* %29, i64 10, !dbg !256 ; [#uses=1 type=i8*] [debug line = 232:5]
  store i8 %28, i8* %30, align 1, !dbg !256       ; [debug line = 232:5]
  %31 = load i8* %i, align 1, !dbg !256           ; [#uses=1 type=i8] [debug line = 232:5]
  %32 = load i8** %1, align 8, !dbg !256          ; [#uses=1 type=i8*] [debug line = 232:5]
  %33 = getelementptr inbounds i8* %32, i64 2, !dbg !256 ; [#uses=1 type=i8*] [debug line = 232:5]
  store i8 %31, i8* %33, align 1, !dbg !256       ; [debug line = 232:5]
  %34 = load i8** %1, align 8, !dbg !257          ; [#uses=1 type=i8*] [debug line = 233:5]
  %35 = getelementptr inbounds i8* %34, i64 3, !dbg !257 ; [#uses=1 type=i8*] [debug line = 233:5]
  %36 = load i8* %35, align 1, !dbg !257          ; [#uses=1 type=i8] [debug line = 233:5]
  store i8 %36, i8* %j, align 1, !dbg !257        ; [debug line = 233:5]
  %37 = load i8** %1, align 8, !dbg !257          ; [#uses=1 type=i8*] [debug line = 233:5]
  %38 = getelementptr inbounds i8* %37, i64 15, !dbg !257 ; [#uses=1 type=i8*] [debug line = 233:5]
  %39 = load i8* %38, align 1, !dbg !257          ; [#uses=1 type=i8] [debug line = 233:5]
  %40 = load i8** %1, align 8, !dbg !257          ; [#uses=1 type=i8*] [debug line = 233:5]
  %41 = getelementptr inbounds i8* %40, i64 3, !dbg !257 ; [#uses=1 type=i8*] [debug line = 233:5]
  store i8 %39, i8* %41, align 1, !dbg !257       ; [debug line = 233:5]
  %42 = load i8** %1, align 8, !dbg !257          ; [#uses=1 type=i8*] [debug line = 233:5]
  %43 = getelementptr inbounds i8* %42, i64 11, !dbg !257 ; [#uses=1 type=i8*] [debug line = 233:5]
  %44 = load i8* %43, align 1, !dbg !257          ; [#uses=1 type=i8] [debug line = 233:5]
  %45 = load i8** %1, align 8, !dbg !257          ; [#uses=1 type=i8*] [debug line = 233:5]
  %46 = getelementptr inbounds i8* %45, i64 15, !dbg !257 ; [#uses=1 type=i8*] [debug line = 233:5]
  store i8 %44, i8* %46, align 1, !dbg !257       ; [debug line = 233:5]
  %47 = load i8** %1, align 8, !dbg !257          ; [#uses=1 type=i8*] [debug line = 233:5]
  %48 = getelementptr inbounds i8* %47, i64 7, !dbg !257 ; [#uses=1 type=i8*] [debug line = 233:5]
  %49 = load i8* %48, align 1, !dbg !257          ; [#uses=1 type=i8] [debug line = 233:5]
  %50 = load i8** %1, align 8, !dbg !257          ; [#uses=1 type=i8*] [debug line = 233:5]
  %51 = getelementptr inbounds i8* %50, i64 11, !dbg !257 ; [#uses=1 type=i8*] [debug line = 233:5]
  store i8 %49, i8* %51, align 1, !dbg !257       ; [debug line = 233:5]
  %52 = load i8* %j, align 1, !dbg !257           ; [#uses=1 type=i8] [debug line = 233:5]
  %53 = load i8** %1, align 8, !dbg !257          ; [#uses=1 type=i8*] [debug line = 233:5]
  %54 = getelementptr inbounds i8* %53, i64 7, !dbg !257 ; [#uses=1 type=i8*] [debug line = 233:5]
  store i8 %52, i8* %54, align 1, !dbg !257       ; [debug line = 233:5]
  %55 = load i8** %1, align 8, !dbg !258          ; [#uses=1 type=i8*] [debug line = 234:5]
  %56 = getelementptr inbounds i8* %55, i64 14, !dbg !258 ; [#uses=1 type=i8*] [debug line = 234:5]
  %57 = load i8* %56, align 1, !dbg !258          ; [#uses=1 type=i8] [debug line = 234:5]
  store i8 %57, i8* %j, align 1, !dbg !258        ; [debug line = 234:5]
  %58 = load i8** %1, align 8, !dbg !258          ; [#uses=1 type=i8*] [debug line = 234:5]
  %59 = getelementptr inbounds i8* %58, i64 6, !dbg !258 ; [#uses=1 type=i8*] [debug line = 234:5]
  %60 = load i8* %59, align 1, !dbg !258          ; [#uses=1 type=i8] [debug line = 234:5]
  %61 = load i8** %1, align 8, !dbg !258          ; [#uses=1 type=i8*] [debug line = 234:5]
  %62 = getelementptr inbounds i8* %61, i64 14, !dbg !258 ; [#uses=1 type=i8*] [debug line = 234:5]
  store i8 %60, i8* %62, align 1, !dbg !258       ; [debug line = 234:5]
  %63 = load i8* %j, align 1, !dbg !258           ; [#uses=1 type=i8] [debug line = 234:5]
  %64 = load i8** %1, align 8, !dbg !258          ; [#uses=1 type=i8*] [debug line = 234:5]
  %65 = getelementptr inbounds i8* %64, i64 6, !dbg !258 ; [#uses=1 type=i8*] [debug line = 234:5]
  store i8 %63, i8* %65, align 1, !dbg !258       ; [debug line = 234:5]
  ret void, !dbg !259                             ; [debug line = 236:1]
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
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !260), !dbg !261 ; [debug line = 251:43] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !262), !dbg !264 ; [debug line = 253:28] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i8* %a}, metadata !265), !dbg !266 ; [debug line = 253:31] [debug variable = a]
  call void @llvm.dbg.declare(metadata !{i8* %b}, metadata !267), !dbg !268 ; [debug line = 253:34] [debug variable = b]
  call void @llvm.dbg.declare(metadata !{i8* %c}, metadata !269), !dbg !270 ; [debug line = 253:37] [debug variable = c]
  call void @llvm.dbg.declare(metadata !{i8* %d}, metadata !271), !dbg !272 ; [debug line = 253:40] [debug variable = d]
  call void @llvm.dbg.declare(metadata !{i8* %e}, metadata !273), !dbg !274 ; [debug line = 253:43] [debug variable = e]
  store i8 0, i8* %i, align 1, !dbg !275          ; [debug line = 255:10]
  br label %2, !dbg !275                          ; [debug line = 255:10]

; <label>:2                                       ; preds = %127, %0
  %3 = load i8* %i, align 1, !dbg !275            ; [#uses=1 type=i8] [debug line = 255:10]
  %4 = zext i8 %3 to i32, !dbg !275               ; [#uses=1 type=i32] [debug line = 255:10]
  %5 = icmp slt i32 %4, 16, !dbg !275             ; [#uses=1 type=i1] [debug line = 255:10]
  br i1 %5, label %6, label %132, !dbg !275       ; [debug line = 255:10]

; <label>:6                                       ; preds = %2
  %7 = load i8* %i, align 1, !dbg !277            ; [#uses=1 type=i8] [debug line = 257:9]
  %8 = zext i8 %7 to i64, !dbg !277               ; [#uses=1 type=i64] [debug line = 257:9]
  %9 = load i8** %1, align 8, !dbg !277           ; [#uses=1 type=i8*] [debug line = 257:9]
  %10 = getelementptr inbounds i8* %9, i64 %8, !dbg !277 ; [#uses=1 type=i8*] [debug line = 257:9]
  %11 = load i8* %10, align 1, !dbg !277          ; [#uses=1 type=i8] [debug line = 257:9]
  store i8 %11, i8* %a, align 1, !dbg !277        ; [debug line = 257:9]
  %12 = load i8* %i, align 1, !dbg !279           ; [#uses=1 type=i8] [debug line = 258:9]
  %13 = zext i8 %12 to i32, !dbg !279             ; [#uses=1 type=i32] [debug line = 258:9]
  %14 = add nsw i32 %13, 1, !dbg !279             ; [#uses=1 type=i32] [debug line = 258:9]
  %15 = sext i32 %14 to i64, !dbg !279            ; [#uses=1 type=i64] [debug line = 258:9]
  %16 = load i8** %1, align 8, !dbg !279          ; [#uses=1 type=i8*] [debug line = 258:9]
  %17 = getelementptr inbounds i8* %16, i64 %15, !dbg !279 ; [#uses=1 type=i8*] [debug line = 258:9]
  %18 = load i8* %17, align 1, !dbg !279          ; [#uses=1 type=i8] [debug line = 258:9]
  store i8 %18, i8* %b, align 1, !dbg !279        ; [debug line = 258:9]
  %19 = load i8* %i, align 1, !dbg !280           ; [#uses=1 type=i8] [debug line = 259:9]
  %20 = zext i8 %19 to i32, !dbg !280             ; [#uses=1 type=i32] [debug line = 259:9]
  %21 = add nsw i32 %20, 2, !dbg !280             ; [#uses=1 type=i32] [debug line = 259:9]
  %22 = sext i32 %21 to i64, !dbg !280            ; [#uses=1 type=i64] [debug line = 259:9]
  %23 = load i8** %1, align 8, !dbg !280          ; [#uses=1 type=i8*] [debug line = 259:9]
  %24 = getelementptr inbounds i8* %23, i64 %22, !dbg !280 ; [#uses=1 type=i8*] [debug line = 259:9]
  %25 = load i8* %24, align 1, !dbg !280          ; [#uses=1 type=i8] [debug line = 259:9]
  store i8 %25, i8* %c, align 1, !dbg !280        ; [debug line = 259:9]
  %26 = load i8* %i, align 1, !dbg !281           ; [#uses=1 type=i8] [debug line = 260:9]
  %27 = zext i8 %26 to i32, !dbg !281             ; [#uses=1 type=i32] [debug line = 260:9]
  %28 = add nsw i32 %27, 3, !dbg !281             ; [#uses=1 type=i32] [debug line = 260:9]
  %29 = sext i32 %28 to i64, !dbg !281            ; [#uses=1 type=i64] [debug line = 260:9]
  %30 = load i8** %1, align 8, !dbg !281          ; [#uses=1 type=i8*] [debug line = 260:9]
  %31 = getelementptr inbounds i8* %30, i64 %29, !dbg !281 ; [#uses=1 type=i8*] [debug line = 260:9]
  %32 = load i8* %31, align 1, !dbg !281          ; [#uses=1 type=i8] [debug line = 260:9]
  store i8 %32, i8* %d, align 1, !dbg !281        ; [debug line = 260:9]
  %33 = load i8* %a, align 1, !dbg !282           ; [#uses=1 type=i8] [debug line = 261:9]
  %34 = zext i8 %33 to i32, !dbg !282             ; [#uses=1 type=i32] [debug line = 261:9]
  %35 = load i8* %b, align 1, !dbg !282           ; [#uses=1 type=i8] [debug line = 261:9]
  %36 = zext i8 %35 to i32, !dbg !282             ; [#uses=1 type=i32] [debug line = 261:9]
  %37 = xor i32 %34, %36, !dbg !282               ; [#uses=1 type=i32] [debug line = 261:9]
  %38 = load i8* %c, align 1, !dbg !282           ; [#uses=1 type=i8] [debug line = 261:9]
  %39 = zext i8 %38 to i32, !dbg !282             ; [#uses=1 type=i32] [debug line = 261:9]
  %40 = xor i32 %37, %39, !dbg !282               ; [#uses=1 type=i32] [debug line = 261:9]
  %41 = load i8* %d, align 1, !dbg !282           ; [#uses=1 type=i8] [debug line = 261:9]
  %42 = zext i8 %41 to i32, !dbg !282             ; [#uses=1 type=i32] [debug line = 261:9]
  %43 = xor i32 %40, %42, !dbg !282               ; [#uses=1 type=i32] [debug line = 261:9]
  %44 = trunc i32 %43 to i8, !dbg !282            ; [#uses=1 type=i8] [debug line = 261:9]
  store i8 %44, i8* %e, align 1, !dbg !282        ; [debug line = 261:9]
  %45 = load i8* %e, align 1, !dbg !283           ; [#uses=1 type=i8] [debug line = 262:9]
  %46 = zext i8 %45 to i32, !dbg !283             ; [#uses=1 type=i32] [debug line = 262:9]
  %47 = load i8* %a, align 1, !dbg !284           ; [#uses=1 type=i8] [debug line = 262:23]
  %48 = zext i8 %47 to i32, !dbg !284             ; [#uses=1 type=i32] [debug line = 262:23]
  %49 = load i8* %b, align 1, !dbg !284           ; [#uses=1 type=i8] [debug line = 262:23]
  %50 = zext i8 %49 to i32, !dbg !284             ; [#uses=1 type=i32] [debug line = 262:23]
  %51 = xor i32 %48, %50, !dbg !284               ; [#uses=1 type=i32] [debug line = 262:23]
  %52 = trunc i32 %51 to i8, !dbg !284            ; [#uses=1 type=i8] [debug line = 262:23]
  %53 = call zeroext i8 @rj_xtime(i8 zeroext %52), !dbg !284 ; [#uses=1 type=i8] [debug line = 262:23]
  %54 = zext i8 %53 to i32, !dbg !284             ; [#uses=1 type=i32] [debug line = 262:23]
  %55 = xor i32 %46, %54, !dbg !284               ; [#uses=1 type=i32] [debug line = 262:23]
  %56 = load i8* %i, align 1, !dbg !284           ; [#uses=1 type=i8] [debug line = 262:23]
  %57 = zext i8 %56 to i64, !dbg !284             ; [#uses=1 type=i64] [debug line = 262:23]
  %58 = load i8** %1, align 8, !dbg !284          ; [#uses=1 type=i8*] [debug line = 262:23]
  %59 = getelementptr inbounds i8* %58, i64 %57, !dbg !284 ; [#uses=2 type=i8*] [debug line = 262:23]
  %60 = load i8* %59, align 1, !dbg !284          ; [#uses=1 type=i8] [debug line = 262:23]
  %61 = zext i8 %60 to i32, !dbg !284             ; [#uses=1 type=i32] [debug line = 262:23]
  %62 = xor i32 %61, %55, !dbg !284               ; [#uses=1 type=i32] [debug line = 262:23]
  %63 = trunc i32 %62 to i8, !dbg !284            ; [#uses=1 type=i8] [debug line = 262:23]
  store i8 %63, i8* %59, align 1, !dbg !284       ; [debug line = 262:23]
  %64 = load i8* %e, align 1, !dbg !285           ; [#uses=1 type=i8] [debug line = 263:9]
  %65 = zext i8 %64 to i32, !dbg !285             ; [#uses=1 type=i32] [debug line = 263:9]
  %66 = load i8* %b, align 1, !dbg !286           ; [#uses=1 type=i8] [debug line = 263:27]
  %67 = zext i8 %66 to i32, !dbg !286             ; [#uses=1 type=i32] [debug line = 263:27]
  %68 = load i8* %c, align 1, !dbg !286           ; [#uses=1 type=i8] [debug line = 263:27]
  %69 = zext i8 %68 to i32, !dbg !286             ; [#uses=1 type=i32] [debug line = 263:27]
  %70 = xor i32 %67, %69, !dbg !286               ; [#uses=1 type=i32] [debug line = 263:27]
  %71 = trunc i32 %70 to i8, !dbg !286            ; [#uses=1 type=i8] [debug line = 263:27]
  %72 = call zeroext i8 @rj_xtime(i8 zeroext %71), !dbg !286 ; [#uses=1 type=i8] [debug line = 263:27]
  %73 = zext i8 %72 to i32, !dbg !286             ; [#uses=1 type=i32] [debug line = 263:27]
  %74 = xor i32 %65, %73, !dbg !286               ; [#uses=1 type=i32] [debug line = 263:27]
  %75 = load i8* %i, align 1, !dbg !286           ; [#uses=1 type=i8] [debug line = 263:27]
  %76 = zext i8 %75 to i32, !dbg !286             ; [#uses=1 type=i32] [debug line = 263:27]
  %77 = add nsw i32 %76, 1, !dbg !286             ; [#uses=1 type=i32] [debug line = 263:27]
  %78 = sext i32 %77 to i64, !dbg !286            ; [#uses=1 type=i64] [debug line = 263:27]
  %79 = load i8** %1, align 8, !dbg !286          ; [#uses=1 type=i8*] [debug line = 263:27]
  %80 = getelementptr inbounds i8* %79, i64 %78, !dbg !286 ; [#uses=2 type=i8*] [debug line = 263:27]
  %81 = load i8* %80, align 1, !dbg !286          ; [#uses=1 type=i8] [debug line = 263:27]
  %82 = zext i8 %81 to i32, !dbg !286             ; [#uses=1 type=i32] [debug line = 263:27]
  %83 = xor i32 %82, %74, !dbg !286               ; [#uses=1 type=i32] [debug line = 263:27]
  %84 = trunc i32 %83 to i8, !dbg !286            ; [#uses=1 type=i8] [debug line = 263:27]
  store i8 %84, i8* %80, align 1, !dbg !286       ; [debug line = 263:27]
  %85 = load i8* %e, align 1, !dbg !287           ; [#uses=1 type=i8] [debug line = 264:9]
  %86 = zext i8 %85 to i32, !dbg !287             ; [#uses=1 type=i32] [debug line = 264:9]
  %87 = load i8* %c, align 1, !dbg !288           ; [#uses=1 type=i8] [debug line = 264:27]
  %88 = zext i8 %87 to i32, !dbg !288             ; [#uses=1 type=i32] [debug line = 264:27]
  %89 = load i8* %d, align 1, !dbg !288           ; [#uses=1 type=i8] [debug line = 264:27]
  %90 = zext i8 %89 to i32, !dbg !288             ; [#uses=1 type=i32] [debug line = 264:27]
  %91 = xor i32 %88, %90, !dbg !288               ; [#uses=1 type=i32] [debug line = 264:27]
  %92 = trunc i32 %91 to i8, !dbg !288            ; [#uses=1 type=i8] [debug line = 264:27]
  %93 = call zeroext i8 @rj_xtime(i8 zeroext %92), !dbg !288 ; [#uses=1 type=i8] [debug line = 264:27]
  %94 = zext i8 %93 to i32, !dbg !288             ; [#uses=1 type=i32] [debug line = 264:27]
  %95 = xor i32 %86, %94, !dbg !288               ; [#uses=1 type=i32] [debug line = 264:27]
  %96 = load i8* %i, align 1, !dbg !288           ; [#uses=1 type=i8] [debug line = 264:27]
  %97 = zext i8 %96 to i32, !dbg !288             ; [#uses=1 type=i32] [debug line = 264:27]
  %98 = add nsw i32 %97, 2, !dbg !288             ; [#uses=1 type=i32] [debug line = 264:27]
  %99 = sext i32 %98 to i64, !dbg !288            ; [#uses=1 type=i64] [debug line = 264:27]
  %100 = load i8** %1, align 8, !dbg !288         ; [#uses=1 type=i8*] [debug line = 264:27]
  %101 = getelementptr inbounds i8* %100, i64 %99, !dbg !288 ; [#uses=2 type=i8*] [debug line = 264:27]
  %102 = load i8* %101, align 1, !dbg !288        ; [#uses=1 type=i8] [debug line = 264:27]
  %103 = zext i8 %102 to i32, !dbg !288           ; [#uses=1 type=i32] [debug line = 264:27]
  %104 = xor i32 %103, %95, !dbg !288             ; [#uses=1 type=i32] [debug line = 264:27]
  %105 = trunc i32 %104 to i8, !dbg !288          ; [#uses=1 type=i8] [debug line = 264:27]
  store i8 %105, i8* %101, align 1, !dbg !288     ; [debug line = 264:27]
  %106 = load i8* %e, align 1, !dbg !289          ; [#uses=1 type=i8] [debug line = 265:9]
  %107 = zext i8 %106 to i32, !dbg !289           ; [#uses=1 type=i32] [debug line = 265:9]
  %108 = load i8* %d, align 1, !dbg !290          ; [#uses=1 type=i8] [debug line = 265:27]
  %109 = zext i8 %108 to i32, !dbg !290           ; [#uses=1 type=i32] [debug line = 265:27]
  %110 = load i8* %a, align 1, !dbg !290          ; [#uses=1 type=i8] [debug line = 265:27]
  %111 = zext i8 %110 to i32, !dbg !290           ; [#uses=1 type=i32] [debug line = 265:27]
  %112 = xor i32 %109, %111, !dbg !290            ; [#uses=1 type=i32] [debug line = 265:27]
  %113 = trunc i32 %112 to i8, !dbg !290          ; [#uses=1 type=i8] [debug line = 265:27]
  %114 = call zeroext i8 @rj_xtime(i8 zeroext %113), !dbg !290 ; [#uses=1 type=i8] [debug line = 265:27]
  %115 = zext i8 %114 to i32, !dbg !290           ; [#uses=1 type=i32] [debug line = 265:27]
  %116 = xor i32 %107, %115, !dbg !290            ; [#uses=1 type=i32] [debug line = 265:27]
  %117 = load i8* %i, align 1, !dbg !290          ; [#uses=1 type=i8] [debug line = 265:27]
  %118 = zext i8 %117 to i32, !dbg !290           ; [#uses=1 type=i32] [debug line = 265:27]
  %119 = add nsw i32 %118, 3, !dbg !290           ; [#uses=1 type=i32] [debug line = 265:27]
  %120 = sext i32 %119 to i64, !dbg !290          ; [#uses=1 type=i64] [debug line = 265:27]
  %121 = load i8** %1, align 8, !dbg !290         ; [#uses=1 type=i8*] [debug line = 265:27]
  %122 = getelementptr inbounds i8* %121, i64 %120, !dbg !290 ; [#uses=2 type=i8*] [debug line = 265:27]
  %123 = load i8* %122, align 1, !dbg !290        ; [#uses=1 type=i8] [debug line = 265:27]
  %124 = zext i8 %123 to i32, !dbg !290           ; [#uses=1 type=i32] [debug line = 265:27]
  %125 = xor i32 %124, %116, !dbg !290            ; [#uses=1 type=i32] [debug line = 265:27]
  %126 = trunc i32 %125 to i8, !dbg !290          ; [#uses=1 type=i8] [debug line = 265:27]
  store i8 %126, i8* %122, align 1, !dbg !290     ; [debug line = 265:27]
  br label %127, !dbg !291                        ; [debug line = 266:5]

; <label>:127                                     ; preds = %6
  %128 = load i8* %i, align 1, !dbg !292          ; [#uses=1 type=i8] [debug line = 255:25]
  %129 = zext i8 %128 to i32, !dbg !292           ; [#uses=1 type=i32] [debug line = 255:25]
  %130 = add nsw i32 %129, 4, !dbg !292           ; [#uses=1 type=i32] [debug line = 255:25]
  %131 = trunc i32 %130 to i8, !dbg !292          ; [#uses=1 type=i8] [debug line = 255:25]
  store i8 %131, i8* %i, align 1, !dbg !292       ; [debug line = 255:25]
  br label %2, !dbg !292                          ; [debug line = 255:25]

; <label>:132                                     ; preds = %2
  ret void, !dbg !293                             ; [debug line = 267:1]
}

; [#uses=6]
define internal void @aes_addRoundKey(i8* %buf, i8* %key) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %2 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=5 type=i8*]
  store i8* %buf, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !294), !dbg !295 ; [debug line = 210:44] [debug variable = buf]
  store i8* %key, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !296), !dbg !297 ; [debug line = 210:64] [debug variable = key]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !298), !dbg !300 ; [debug line = 212:28] [debug variable = i]
  store i8 16, i8* %i, align 1, !dbg !301         ; [debug line = 212:34]
  br label %3, !dbg !302                          ; [debug line = 214:5]

; <label>:3                                       ; preds = %7, %0
  %4 = load i8* %i, align 1, !dbg !302            ; [#uses=2 type=i8] [debug line = 214:5]
  %5 = add i8 %4, -1, !dbg !302                   ; [#uses=1 type=i8] [debug line = 214:5]
  store i8 %5, i8* %i, align 1, !dbg !302         ; [debug line = 214:5]
  %6 = icmp ne i8 %4, 0, !dbg !302                ; [#uses=1 type=i1] [debug line = 214:5]
  br i1 %6, label %7, label %22, !dbg !302        ; [debug line = 214:5]

; <label>:7                                       ; preds = %3
  %8 = load i8* %i, align 1, !dbg !303            ; [#uses=1 type=i8] [debug line = 214:17]
  %9 = zext i8 %8 to i64, !dbg !303               ; [#uses=1 type=i64] [debug line = 214:17]
  %10 = load i8** %2, align 8, !dbg !303          ; [#uses=1 type=i8*] [debug line = 214:17]
  %11 = getelementptr inbounds i8* %10, i64 %9, !dbg !303 ; [#uses=1 type=i8*] [debug line = 214:17]
  %12 = load i8* %11, align 1, !dbg !303          ; [#uses=1 type=i8] [debug line = 214:17]
  %13 = zext i8 %12 to i32, !dbg !303             ; [#uses=1 type=i32] [debug line = 214:17]
  %14 = load i8* %i, align 1, !dbg !303           ; [#uses=1 type=i8] [debug line = 214:17]
  %15 = zext i8 %14 to i64, !dbg !303             ; [#uses=1 type=i64] [debug line = 214:17]
  %16 = load i8** %1, align 8, !dbg !303          ; [#uses=1 type=i8*] [debug line = 214:17]
  %17 = getelementptr inbounds i8* %16, i64 %15, !dbg !303 ; [#uses=2 type=i8*] [debug line = 214:17]
  %18 = load i8* %17, align 1, !dbg !303          ; [#uses=1 type=i8] [debug line = 214:17]
  %19 = zext i8 %18 to i32, !dbg !303             ; [#uses=1 type=i32] [debug line = 214:17]
  %20 = xor i32 %19, %13, !dbg !303               ; [#uses=1 type=i32] [debug line = 214:17]
  %21 = trunc i32 %20 to i8, !dbg !303            ; [#uses=1 type=i8] [debug line = 214:17]
  store i8 %21, i8* %17, align 1, !dbg !303       ; [debug line = 214:17]
  br label %3, !dbg !303                          ; [debug line = 214:17]

; <label>:22                                      ; preds = %3
  ret void, !dbg !304                             ; [debug line = 215:1]
}

; [#uses=1]
define void @aes256_decrypt_ecb(%struct.aes256_context* %ctx, i8* %buf) nounwind uwtable {
  %1 = alloca %struct.aes256_context*, align 8    ; [#uses=7 type=%struct.aes256_context**]
  %2 = alloca i8*, align 8                        ; [#uses=10 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=4 type=i8*]
  %rcon = alloca i8, align 1                      ; [#uses=2 type=i8*]
  store %struct.aes256_context* %ctx, %struct.aes256_context** %1, align 8
  call void @llvm.dbg.declare(metadata !{%struct.aes256_context** %1}, metadata !305), !dbg !306 ; [debug line = 378:41] [debug variable = ctx]
  store i8* %buf, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !307), !dbg !308 ; [debug line = 378:61] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !309), !dbg !311 ; [debug line = 380:19] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i8* %rcon}, metadata !312), !dbg !313 ; [debug line = 380:22] [debug variable = rcon]
  %3 = load i8** %2, align 8, !dbg !314           ; [#uses=1 type=i8*] [debug line = 382:5]
  %4 = load %struct.aes256_context** %1, align 8, !dbg !314 ; [#uses=1 type=%struct.aes256_context*] [debug line = 382:5]
  %5 = getelementptr inbounds %struct.aes256_context* %4, i32 0, i32 2, !dbg !314 ; [#uses=1 type=[32 x i8]*] [debug line = 382:5]
  %6 = getelementptr inbounds [32 x i8]* %5, i32 0, i32 0, !dbg !314 ; [#uses=1 type=i8*] [debug line = 382:5]
  %7 = load %struct.aes256_context** %1, align 8, !dbg !314 ; [#uses=1 type=%struct.aes256_context*] [debug line = 382:5]
  %8 = getelementptr inbounds %struct.aes256_context* %7, i32 0, i32 0, !dbg !314 ; [#uses=1 type=[32 x i8]*] [debug line = 382:5]
  %9 = getelementptr inbounds [32 x i8]* %8, i32 0, i32 0, !dbg !314 ; [#uses=1 type=i8*] [debug line = 382:5]
  call void @aes_addRoundKey_cpy(i8* %3, i8* %6, i8* %9), !dbg !314 ; [debug line = 382:5]
  %10 = load i8** %2, align 8, !dbg !315          ; [#uses=1 type=i8*] [debug line = 383:5]
  call void @aes_shiftRows_inv(i8* %10), !dbg !315 ; [debug line = 383:5]
  %11 = load i8** %2, align 8, !dbg !316          ; [#uses=1 type=i8*] [debug line = 384:5]
  call void @aes_subBytes_inv(i8* %11), !dbg !316 ; [debug line = 384:5]
  store i8 14, i8* %i, align 1, !dbg !317         ; [debug line = 386:10]
  store i8 -128, i8* %rcon, align 1, !dbg !317    ; [debug line = 386:10]
  br label %12, !dbg !317                         ; [debug line = 386:10]

; <label>:12                                      ; preds = %34, %0
  %13 = load i8* %i, align 1, !dbg !317           ; [#uses=1 type=i8] [debug line = 386:10]
  %14 = add i8 %13, -1, !dbg !317                 ; [#uses=2 type=i8] [debug line = 386:10]
  store i8 %14, i8* %i, align 1, !dbg !317        ; [debug line = 386:10]
  %15 = icmp ne i8 %14, 0, !dbg !317              ; [#uses=1 type=i1] [debug line = 386:10]
  br i1 %15, label %16, label %38, !dbg !317      ; [debug line = 386:10]

; <label>:16                                      ; preds = %12
  %17 = load i8* %i, align 1, !dbg !319           ; [#uses=1 type=i8] [debug line = 388:9]
  %18 = zext i8 %17 to i32, !dbg !319             ; [#uses=1 type=i32] [debug line = 388:9]
  %19 = and i32 %18, 1, !dbg !319                 ; [#uses=1 type=i32] [debug line = 388:9]
  %20 = icmp ne i32 %19, 0, !dbg !319             ; [#uses=1 type=i1] [debug line = 388:9]
  br i1 %20, label %21, label %29, !dbg !319      ; [debug line = 388:9]

; <label>:21                                      ; preds = %16
  %22 = load %struct.aes256_context** %1, align 8, !dbg !321 ; [#uses=1 type=%struct.aes256_context*] [debug line = 390:13]
  %23 = getelementptr inbounds %struct.aes256_context* %22, i32 0, i32 0, !dbg !321 ; [#uses=1 type=[32 x i8]*] [debug line = 390:13]
  %24 = getelementptr inbounds [32 x i8]* %23, i32 0, i32 0, !dbg !321 ; [#uses=1 type=i8*] [debug line = 390:13]
  call void @aes_expandDecKey(i8* %24, i8* %rcon), !dbg !321 ; [debug line = 390:13]
  %25 = load i8** %2, align 8, !dbg !323          ; [#uses=1 type=i8*] [debug line = 391:13]
  %26 = load %struct.aes256_context** %1, align 8, !dbg !323 ; [#uses=1 type=%struct.aes256_context*] [debug line = 391:13]
  %27 = getelementptr inbounds %struct.aes256_context* %26, i32 0, i32 0, !dbg !323 ; [#uses=1 type=[32 x i8]*] [debug line = 391:13]
  %28 = getelementptr inbounds [32 x i8]* %27, i32 0, i64 16, !dbg !323 ; [#uses=1 type=i8*] [debug line = 391:13]
  call void @aes_addRoundKey(i8* %25, i8* %28), !dbg !323 ; [debug line = 391:13]
  br label %34, !dbg !324                         ; [debug line = 392:9]

; <label>:29                                      ; preds = %16
  %30 = load i8** %2, align 8, !dbg !325          ; [#uses=1 type=i8*] [debug line = 393:14]
  %31 = load %struct.aes256_context** %1, align 8, !dbg !325 ; [#uses=1 type=%struct.aes256_context*] [debug line = 393:14]
  %32 = getelementptr inbounds %struct.aes256_context* %31, i32 0, i32 0, !dbg !325 ; [#uses=1 type=[32 x i8]*] [debug line = 393:14]
  %33 = getelementptr inbounds [32 x i8]* %32, i32 0, i32 0, !dbg !325 ; [#uses=1 type=i8*] [debug line = 393:14]
  call void @aes_addRoundKey(i8* %30, i8* %33), !dbg !325 ; [debug line = 393:14]
  br label %34

; <label>:34                                      ; preds = %29, %21
  %35 = load i8** %2, align 8, !dbg !326          ; [#uses=1 type=i8*] [debug line = 394:9]
  call void @aes_mixColumns_inv(i8* %35), !dbg !326 ; [debug line = 394:9]
  %36 = load i8** %2, align 8, !dbg !327          ; [#uses=1 type=i8*] [debug line = 395:9]
  call void @aes_shiftRows_inv(i8* %36), !dbg !327 ; [debug line = 395:9]
  %37 = load i8** %2, align 8, !dbg !328          ; [#uses=1 type=i8*] [debug line = 396:9]
  call void @aes_subBytes_inv(i8* %37), !dbg !328 ; [debug line = 396:9]
  br label %12, !dbg !329                         ; [debug line = 397:5]

; <label>:38                                      ; preds = %12
  %39 = load i8** %2, align 8, !dbg !330          ; [#uses=1 type=i8*] [debug line = 398:5]
  %40 = load %struct.aes256_context** %1, align 8, !dbg !330 ; [#uses=1 type=%struct.aes256_context*] [debug line = 398:5]
  %41 = getelementptr inbounds %struct.aes256_context* %40, i32 0, i32 0, !dbg !330 ; [#uses=1 type=[32 x i8]*] [debug line = 398:5]
  %42 = getelementptr inbounds [32 x i8]* %41, i32 0, i32 0, !dbg !330 ; [#uses=1 type=i8*] [debug line = 398:5]
  call void @aes_addRoundKey(i8* %39, i8* %42), !dbg !330 ; [debug line = 398:5]
  ret void, !dbg !331                             ; [debug line = 399:1]
}

; [#uses=2]
define internal void @aes_shiftRows_inv(i8* %buf) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=25 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=4 type=i8*]
  %j = alloca i8, align 1                         ; [#uses=4 type=i8*]
  store i8* %buf, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !332), !dbg !333 ; [debug line = 239:46] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !334), !dbg !336 ; [debug line = 241:28] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i8* %j}, metadata !337), !dbg !338 ; [debug line = 241:31] [debug variable = j]
  %2 = load i8** %1, align 8, !dbg !339           ; [#uses=1 type=i8*] [debug line = 243:5]
  %3 = getelementptr inbounds i8* %2, i64 1, !dbg !339 ; [#uses=1 type=i8*] [debug line = 243:5]
  %4 = load i8* %3, align 1, !dbg !339            ; [#uses=1 type=i8] [debug line = 243:5]
  store i8 %4, i8* %i, align 1, !dbg !339         ; [debug line = 243:5]
  %5 = load i8** %1, align 8, !dbg !339           ; [#uses=1 type=i8*] [debug line = 243:5]
  %6 = getelementptr inbounds i8* %5, i64 13, !dbg !339 ; [#uses=1 type=i8*] [debug line = 243:5]
  %7 = load i8* %6, align 1, !dbg !339            ; [#uses=1 type=i8] [debug line = 243:5]
  %8 = load i8** %1, align 8, !dbg !339           ; [#uses=1 type=i8*] [debug line = 243:5]
  %9 = getelementptr inbounds i8* %8, i64 1, !dbg !339 ; [#uses=1 type=i8*] [debug line = 243:5]
  store i8 %7, i8* %9, align 1, !dbg !339         ; [debug line = 243:5]
  %10 = load i8** %1, align 8, !dbg !339          ; [#uses=1 type=i8*] [debug line = 243:5]
  %11 = getelementptr inbounds i8* %10, i64 9, !dbg !339 ; [#uses=1 type=i8*] [debug line = 243:5]
  %12 = load i8* %11, align 1, !dbg !339          ; [#uses=1 type=i8] [debug line = 243:5]
  %13 = load i8** %1, align 8, !dbg !339          ; [#uses=1 type=i8*] [debug line = 243:5]
  %14 = getelementptr inbounds i8* %13, i64 13, !dbg !339 ; [#uses=1 type=i8*] [debug line = 243:5]
  store i8 %12, i8* %14, align 1, !dbg !339       ; [debug line = 243:5]
  %15 = load i8** %1, align 8, !dbg !339          ; [#uses=1 type=i8*] [debug line = 243:5]
  %16 = getelementptr inbounds i8* %15, i64 5, !dbg !339 ; [#uses=1 type=i8*] [debug line = 243:5]
  %17 = load i8* %16, align 1, !dbg !339          ; [#uses=1 type=i8] [debug line = 243:5]
  %18 = load i8** %1, align 8, !dbg !339          ; [#uses=1 type=i8*] [debug line = 243:5]
  %19 = getelementptr inbounds i8* %18, i64 9, !dbg !339 ; [#uses=1 type=i8*] [debug line = 243:5]
  store i8 %17, i8* %19, align 1, !dbg !339       ; [debug line = 243:5]
  %20 = load i8* %i, align 1, !dbg !339           ; [#uses=1 type=i8] [debug line = 243:5]
  %21 = load i8** %1, align 8, !dbg !339          ; [#uses=1 type=i8*] [debug line = 243:5]
  %22 = getelementptr inbounds i8* %21, i64 5, !dbg !339 ; [#uses=1 type=i8*] [debug line = 243:5]
  store i8 %20, i8* %22, align 1, !dbg !339       ; [debug line = 243:5]
  %23 = load i8** %1, align 8, !dbg !340          ; [#uses=1 type=i8*] [debug line = 244:5]
  %24 = getelementptr inbounds i8* %23, i64 2, !dbg !340 ; [#uses=1 type=i8*] [debug line = 244:5]
  %25 = load i8* %24, align 1, !dbg !340          ; [#uses=1 type=i8] [debug line = 244:5]
  store i8 %25, i8* %i, align 1, !dbg !340        ; [debug line = 244:5]
  %26 = load i8** %1, align 8, !dbg !340          ; [#uses=1 type=i8*] [debug line = 244:5]
  %27 = getelementptr inbounds i8* %26, i64 10, !dbg !340 ; [#uses=1 type=i8*] [debug line = 244:5]
  %28 = load i8* %27, align 1, !dbg !340          ; [#uses=1 type=i8] [debug line = 244:5]
  %29 = load i8** %1, align 8, !dbg !340          ; [#uses=1 type=i8*] [debug line = 244:5]
  %30 = getelementptr inbounds i8* %29, i64 2, !dbg !340 ; [#uses=1 type=i8*] [debug line = 244:5]
  store i8 %28, i8* %30, align 1, !dbg !340       ; [debug line = 244:5]
  %31 = load i8* %i, align 1, !dbg !340           ; [#uses=1 type=i8] [debug line = 244:5]
  %32 = load i8** %1, align 8, !dbg !340          ; [#uses=1 type=i8*] [debug line = 244:5]
  %33 = getelementptr inbounds i8* %32, i64 10, !dbg !340 ; [#uses=1 type=i8*] [debug line = 244:5]
  store i8 %31, i8* %33, align 1, !dbg !340       ; [debug line = 244:5]
  %34 = load i8** %1, align 8, !dbg !341          ; [#uses=1 type=i8*] [debug line = 245:5]
  %35 = getelementptr inbounds i8* %34, i64 3, !dbg !341 ; [#uses=1 type=i8*] [debug line = 245:5]
  %36 = load i8* %35, align 1, !dbg !341          ; [#uses=1 type=i8] [debug line = 245:5]
  store i8 %36, i8* %j, align 1, !dbg !341        ; [debug line = 245:5]
  %37 = load i8** %1, align 8, !dbg !341          ; [#uses=1 type=i8*] [debug line = 245:5]
  %38 = getelementptr inbounds i8* %37, i64 7, !dbg !341 ; [#uses=1 type=i8*] [debug line = 245:5]
  %39 = load i8* %38, align 1, !dbg !341          ; [#uses=1 type=i8] [debug line = 245:5]
  %40 = load i8** %1, align 8, !dbg !341          ; [#uses=1 type=i8*] [debug line = 245:5]
  %41 = getelementptr inbounds i8* %40, i64 3, !dbg !341 ; [#uses=1 type=i8*] [debug line = 245:5]
  store i8 %39, i8* %41, align 1, !dbg !341       ; [debug line = 245:5]
  %42 = load i8** %1, align 8, !dbg !341          ; [#uses=1 type=i8*] [debug line = 245:5]
  %43 = getelementptr inbounds i8* %42, i64 11, !dbg !341 ; [#uses=1 type=i8*] [debug line = 245:5]
  %44 = load i8* %43, align 1, !dbg !341          ; [#uses=1 type=i8] [debug line = 245:5]
  %45 = load i8** %1, align 8, !dbg !341          ; [#uses=1 type=i8*] [debug line = 245:5]
  %46 = getelementptr inbounds i8* %45, i64 7, !dbg !341 ; [#uses=1 type=i8*] [debug line = 245:5]
  store i8 %44, i8* %46, align 1, !dbg !341       ; [debug line = 245:5]
  %47 = load i8** %1, align 8, !dbg !341          ; [#uses=1 type=i8*] [debug line = 245:5]
  %48 = getelementptr inbounds i8* %47, i64 15, !dbg !341 ; [#uses=1 type=i8*] [debug line = 245:5]
  %49 = load i8* %48, align 1, !dbg !341          ; [#uses=1 type=i8] [debug line = 245:5]
  %50 = load i8** %1, align 8, !dbg !341          ; [#uses=1 type=i8*] [debug line = 245:5]
  %51 = getelementptr inbounds i8* %50, i64 11, !dbg !341 ; [#uses=1 type=i8*] [debug line = 245:5]
  store i8 %49, i8* %51, align 1, !dbg !341       ; [debug line = 245:5]
  %52 = load i8* %j, align 1, !dbg !341           ; [#uses=1 type=i8] [debug line = 245:5]
  %53 = load i8** %1, align 8, !dbg !341          ; [#uses=1 type=i8*] [debug line = 245:5]
  %54 = getelementptr inbounds i8* %53, i64 15, !dbg !341 ; [#uses=1 type=i8*] [debug line = 245:5]
  store i8 %52, i8* %54, align 1, !dbg !341       ; [debug line = 245:5]
  %55 = load i8** %1, align 8, !dbg !342          ; [#uses=1 type=i8*] [debug line = 246:5]
  %56 = getelementptr inbounds i8* %55, i64 6, !dbg !342 ; [#uses=1 type=i8*] [debug line = 246:5]
  %57 = load i8* %56, align 1, !dbg !342          ; [#uses=1 type=i8] [debug line = 246:5]
  store i8 %57, i8* %j, align 1, !dbg !342        ; [debug line = 246:5]
  %58 = load i8** %1, align 8, !dbg !342          ; [#uses=1 type=i8*] [debug line = 246:5]
  %59 = getelementptr inbounds i8* %58, i64 14, !dbg !342 ; [#uses=1 type=i8*] [debug line = 246:5]
  %60 = load i8* %59, align 1, !dbg !342          ; [#uses=1 type=i8] [debug line = 246:5]
  %61 = load i8** %1, align 8, !dbg !342          ; [#uses=1 type=i8*] [debug line = 246:5]
  %62 = getelementptr inbounds i8* %61, i64 6, !dbg !342 ; [#uses=1 type=i8*] [debug line = 246:5]
  store i8 %60, i8* %62, align 1, !dbg !342       ; [debug line = 246:5]
  %63 = load i8* %j, align 1, !dbg !342           ; [#uses=1 type=i8] [debug line = 246:5]
  %64 = load i8** %1, align 8, !dbg !342          ; [#uses=1 type=i8*] [debug line = 246:5]
  %65 = getelementptr inbounds i8* %64, i64 14, !dbg !342 ; [#uses=1 type=i8*] [debug line = 246:5]
  store i8 %63, i8* %65, align 1, !dbg !342       ; [debug line = 246:5]
  ret void, !dbg !343                             ; [debug line = 248:1]
}

; [#uses=2]
define internal void @aes_subBytes_inv(i8* %buf) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=3 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=5 type=i8*]
  store i8* %buf, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !344), !dbg !345 ; [debug line = 202:45] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !346), !dbg !348 ; [debug line = 204:28] [debug variable = i]
  store i8 16, i8* %i, align 1, !dbg !349         ; [debug line = 204:34]
  br label %2, !dbg !350                          ; [debug line = 206:5]

; <label>:2                                       ; preds = %6, %0
  %3 = load i8* %i, align 1, !dbg !350            ; [#uses=2 type=i8] [debug line = 206:5]
  %4 = add i8 %3, -1, !dbg !350                   ; [#uses=1 type=i8] [debug line = 206:5]
  store i8 %4, i8* %i, align 1, !dbg !350         ; [debug line = 206:5]
  %5 = icmp ne i8 %3, 0, !dbg !350                ; [#uses=1 type=i1] [debug line = 206:5]
  br i1 %5, label %6, label %19, !dbg !350        ; [debug line = 206:5]

; <label>:6                                       ; preds = %2
  %7 = load i8* %i, align 1, !dbg !351            ; [#uses=1 type=i8] [debug line = 206:17]
  %8 = zext i8 %7 to i64, !dbg !351               ; [#uses=1 type=i64] [debug line = 206:17]
  %9 = load i8** %1, align 8, !dbg !351           ; [#uses=1 type=i8*] [debug line = 206:17]
  %10 = getelementptr inbounds i8* %9, i64 %8, !dbg !351 ; [#uses=1 type=i8*] [debug line = 206:17]
  %11 = load i8* %10, align 1, !dbg !351          ; [#uses=1 type=i8] [debug line = 206:17]
  %12 = zext i8 %11 to i64, !dbg !351             ; [#uses=1 type=i64] [debug line = 206:17]
  %13 = getelementptr inbounds [256 x i8]* @sboxinv, i32 0, i64 %12, !dbg !351 ; [#uses=1 type=i8*] [debug line = 206:17]
  %14 = load i8* %13, align 1, !dbg !351          ; [#uses=1 type=i8] [debug line = 206:17]
  %15 = load i8* %i, align 1, !dbg !351           ; [#uses=1 type=i8] [debug line = 206:17]
  %16 = zext i8 %15 to i64, !dbg !351             ; [#uses=1 type=i64] [debug line = 206:17]
  %17 = load i8** %1, align 8, !dbg !351          ; [#uses=1 type=i8*] [debug line = 206:17]
  %18 = getelementptr inbounds i8* %17, i64 %16, !dbg !351 ; [#uses=1 type=i8*] [debug line = 206:17]
  store i8 %14, i8* %18, align 1, !dbg !351       ; [debug line = 206:17]
  br label %2, !dbg !351                          ; [debug line = 206:17]

; <label>:19                                      ; preds = %2
  ret void, !dbg !352                             ; [debug line = 207:1]
}

; [#uses=1]
define internal void @aes_expandDecKey(i8* %k, i8* %rc) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=33 type=i8**]
  %2 = alloca i8*, align 8                        ; [#uses=5 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=24 type=i8*]
  store i8* %k, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !353), !dbg !354 ; [debug line = 315:38] [debug variable = k]
  store i8* %rc, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !355), !dbg !356 ; [debug line = 315:56] [debug variable = rc]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !357), !dbg !359 ; [debug line = 317:19] [debug variable = i]
  store i8 28, i8* %i, align 1, !dbg !360         ; [debug line = 319:9]
  br label %3, !dbg !360                          ; [debug line = 319:9]

; <label>:3                                       ; preds = %80, %0
  %4 = load i8* %i, align 1, !dbg !360            ; [#uses=1 type=i8] [debug line = 319:9]
  %5 = zext i8 %4 to i32, !dbg !360               ; [#uses=1 type=i32] [debug line = 319:9]
  %6 = icmp sgt i32 %5, 16, !dbg !360             ; [#uses=1 type=i1] [debug line = 319:9]
  br i1 %6, label %7, label %85, !dbg !360        ; [debug line = 319:9]

; <label>:7                                       ; preds = %3
  %8 = load i8* %i, align 1, !dbg !362            ; [#uses=1 type=i8] [debug line = 319:33]
  %9 = zext i8 %8 to i32, !dbg !362               ; [#uses=1 type=i32] [debug line = 319:33]
  %10 = sub nsw i32 %9, 4, !dbg !362              ; [#uses=1 type=i32] [debug line = 319:33]
  %11 = sext i32 %10 to i64, !dbg !362            ; [#uses=1 type=i64] [debug line = 319:33]
  %12 = load i8** %1, align 8, !dbg !362          ; [#uses=1 type=i8*] [debug line = 319:33]
  %13 = getelementptr inbounds i8* %12, i64 %11, !dbg !362 ; [#uses=1 type=i8*] [debug line = 319:33]
  %14 = load i8* %13, align 1, !dbg !362          ; [#uses=1 type=i8] [debug line = 319:33]
  %15 = zext i8 %14 to i32, !dbg !362             ; [#uses=1 type=i32] [debug line = 319:33]
  %16 = load i8* %i, align 1, !dbg !362           ; [#uses=1 type=i8] [debug line = 319:33]
  %17 = zext i8 %16 to i32, !dbg !362             ; [#uses=1 type=i32] [debug line = 319:33]
  %18 = add nsw i32 %17, 0, !dbg !362             ; [#uses=1 type=i32] [debug line = 319:33]
  %19 = sext i32 %18 to i64, !dbg !362            ; [#uses=1 type=i64] [debug line = 319:33]
  %20 = load i8** %1, align 8, !dbg !362          ; [#uses=1 type=i8*] [debug line = 319:33]
  %21 = getelementptr inbounds i8* %20, i64 %19, !dbg !362 ; [#uses=2 type=i8*] [debug line = 319:33]
  %22 = load i8* %21, align 1, !dbg !362          ; [#uses=1 type=i8] [debug line = 319:33]
  %23 = zext i8 %22 to i32, !dbg !362             ; [#uses=1 type=i32] [debug line = 319:33]
  %24 = xor i32 %23, %15, !dbg !362               ; [#uses=1 type=i32] [debug line = 319:33]
  %25 = trunc i32 %24 to i8, !dbg !362            ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %25, i8* %21, align 1, !dbg !362       ; [debug line = 319:33]
  %26 = load i8* %i, align 1, !dbg !362           ; [#uses=1 type=i8] [debug line = 319:33]
  %27 = zext i8 %26 to i32, !dbg !362             ; [#uses=1 type=i32] [debug line = 319:33]
  %28 = sub nsw i32 %27, 3, !dbg !362             ; [#uses=1 type=i32] [debug line = 319:33]
  %29 = sext i32 %28 to i64, !dbg !362            ; [#uses=1 type=i64] [debug line = 319:33]
  %30 = load i8** %1, align 8, !dbg !362          ; [#uses=1 type=i8*] [debug line = 319:33]
  %31 = getelementptr inbounds i8* %30, i64 %29, !dbg !362 ; [#uses=1 type=i8*] [debug line = 319:33]
  %32 = load i8* %31, align 1, !dbg !362          ; [#uses=1 type=i8] [debug line = 319:33]
  %33 = zext i8 %32 to i32, !dbg !362             ; [#uses=1 type=i32] [debug line = 319:33]
  %34 = load i8* %i, align 1, !dbg !362           ; [#uses=1 type=i8] [debug line = 319:33]
  %35 = zext i8 %34 to i32, !dbg !362             ; [#uses=1 type=i32] [debug line = 319:33]
  %36 = add nsw i32 %35, 1, !dbg !362             ; [#uses=1 type=i32] [debug line = 319:33]
  %37 = sext i32 %36 to i64, !dbg !362            ; [#uses=1 type=i64] [debug line = 319:33]
  %38 = load i8** %1, align 8, !dbg !362          ; [#uses=1 type=i8*] [debug line = 319:33]
  %39 = getelementptr inbounds i8* %38, i64 %37, !dbg !362 ; [#uses=2 type=i8*] [debug line = 319:33]
  %40 = load i8* %39, align 1, !dbg !362          ; [#uses=1 type=i8] [debug line = 319:33]
  %41 = zext i8 %40 to i32, !dbg !362             ; [#uses=1 type=i32] [debug line = 319:33]
  %42 = xor i32 %41, %33, !dbg !362               ; [#uses=1 type=i32] [debug line = 319:33]
  %43 = trunc i32 %42 to i8, !dbg !362            ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %43, i8* %39, align 1, !dbg !362       ; [debug line = 319:33]
  %44 = load i8* %i, align 1, !dbg !362           ; [#uses=1 type=i8] [debug line = 319:33]
  %45 = zext i8 %44 to i32, !dbg !362             ; [#uses=1 type=i32] [debug line = 319:33]
  %46 = sub nsw i32 %45, 2, !dbg !362             ; [#uses=1 type=i32] [debug line = 319:33]
  %47 = sext i32 %46 to i64, !dbg !362            ; [#uses=1 type=i64] [debug line = 319:33]
  %48 = load i8** %1, align 8, !dbg !362          ; [#uses=1 type=i8*] [debug line = 319:33]
  %49 = getelementptr inbounds i8* %48, i64 %47, !dbg !362 ; [#uses=1 type=i8*] [debug line = 319:33]
  %50 = load i8* %49, align 1, !dbg !362          ; [#uses=1 type=i8] [debug line = 319:33]
  %51 = zext i8 %50 to i32, !dbg !362             ; [#uses=1 type=i32] [debug line = 319:33]
  %52 = load i8* %i, align 1, !dbg !362           ; [#uses=1 type=i8] [debug line = 319:33]
  %53 = zext i8 %52 to i32, !dbg !362             ; [#uses=1 type=i32] [debug line = 319:33]
  %54 = add nsw i32 %53, 2, !dbg !362             ; [#uses=1 type=i32] [debug line = 319:33]
  %55 = sext i32 %54 to i64, !dbg !362            ; [#uses=1 type=i64] [debug line = 319:33]
  %56 = load i8** %1, align 8, !dbg !362          ; [#uses=1 type=i8*] [debug line = 319:33]
  %57 = getelementptr inbounds i8* %56, i64 %55, !dbg !362 ; [#uses=2 type=i8*] [debug line = 319:33]
  %58 = load i8* %57, align 1, !dbg !362          ; [#uses=1 type=i8] [debug line = 319:33]
  %59 = zext i8 %58 to i32, !dbg !362             ; [#uses=1 type=i32] [debug line = 319:33]
  %60 = xor i32 %59, %51, !dbg !362               ; [#uses=1 type=i32] [debug line = 319:33]
  %61 = trunc i32 %60 to i8, !dbg !362            ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %61, i8* %57, align 1, !dbg !362       ; [debug line = 319:33]
  %62 = load i8* %i, align 1, !dbg !362           ; [#uses=1 type=i8] [debug line = 319:33]
  %63 = zext i8 %62 to i32, !dbg !362             ; [#uses=1 type=i32] [debug line = 319:33]
  %64 = sub nsw i32 %63, 1, !dbg !362             ; [#uses=1 type=i32] [debug line = 319:33]
  %65 = sext i32 %64 to i64, !dbg !362            ; [#uses=1 type=i64] [debug line = 319:33]
  %66 = load i8** %1, align 8, !dbg !362          ; [#uses=1 type=i8*] [debug line = 319:33]
  %67 = getelementptr inbounds i8* %66, i64 %65, !dbg !362 ; [#uses=1 type=i8*] [debug line = 319:33]
  %68 = load i8* %67, align 1, !dbg !362          ; [#uses=1 type=i8] [debug line = 319:33]
  %69 = zext i8 %68 to i32, !dbg !362             ; [#uses=1 type=i32] [debug line = 319:33]
  %70 = load i8* %i, align 1, !dbg !362           ; [#uses=1 type=i8] [debug line = 319:33]
  %71 = zext i8 %70 to i32, !dbg !362             ; [#uses=1 type=i32] [debug line = 319:33]
  %72 = add nsw i32 %71, 3, !dbg !362             ; [#uses=1 type=i32] [debug line = 319:33]
  %73 = sext i32 %72 to i64, !dbg !362            ; [#uses=1 type=i64] [debug line = 319:33]
  %74 = load i8** %1, align 8, !dbg !362          ; [#uses=1 type=i8*] [debug line = 319:33]
  %75 = getelementptr inbounds i8* %74, i64 %73, !dbg !362 ; [#uses=2 type=i8*] [debug line = 319:33]
  %76 = load i8* %75, align 1, !dbg !362          ; [#uses=1 type=i8] [debug line = 319:33]
  %77 = zext i8 %76 to i32, !dbg !362             ; [#uses=1 type=i32] [debug line = 319:33]
  %78 = xor i32 %77, %69, !dbg !362               ; [#uses=1 type=i32] [debug line = 319:33]
  %79 = trunc i32 %78 to i8, !dbg !362            ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %79, i8* %75, align 1, !dbg !362       ; [debug line = 319:33]
  br label %80, !dbg !362                         ; [debug line = 319:33]

; <label>:80                                      ; preds = %7
  %81 = load i8* %i, align 1, !dbg !363           ; [#uses=1 type=i8] [debug line = 319:25]
  %82 = zext i8 %81 to i32, !dbg !363             ; [#uses=1 type=i32] [debug line = 319:25]
  %83 = sub nsw i32 %82, 4, !dbg !363             ; [#uses=1 type=i32] [debug line = 319:25]
  %84 = trunc i32 %83 to i8, !dbg !363            ; [#uses=1 type=i8] [debug line = 319:25]
  store i8 %84, i8* %i, align 1, !dbg !363        ; [debug line = 319:25]
  br label %3, !dbg !363                          ; [debug line = 319:25]

; <label>:85                                      ; preds = %3
  %86 = load i8** %1, align 8, !dbg !364          ; [#uses=1 type=i8*] [debug line = 322:5]
  %87 = getelementptr inbounds i8* %86, i64 12, !dbg !364 ; [#uses=1 type=i8*] [debug line = 322:5]
  %88 = load i8* %87, align 1, !dbg !364          ; [#uses=1 type=i8] [debug line = 322:5]
  %89 = zext i8 %88 to i64, !dbg !364             ; [#uses=1 type=i64] [debug line = 322:5]
  %90 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %89, !dbg !364 ; [#uses=1 type=i8*] [debug line = 322:5]
  %91 = load i8* %90, align 1, !dbg !364          ; [#uses=1 type=i8] [debug line = 322:5]
  %92 = zext i8 %91 to i32, !dbg !364             ; [#uses=1 type=i32] [debug line = 322:5]
  %93 = load i8** %1, align 8, !dbg !364          ; [#uses=1 type=i8*] [debug line = 322:5]
  %94 = getelementptr inbounds i8* %93, i64 16, !dbg !364 ; [#uses=2 type=i8*] [debug line = 322:5]
  %95 = load i8* %94, align 1, !dbg !364          ; [#uses=1 type=i8] [debug line = 322:5]
  %96 = zext i8 %95 to i32, !dbg !364             ; [#uses=1 type=i32] [debug line = 322:5]
  %97 = xor i32 %96, %92, !dbg !364               ; [#uses=1 type=i32] [debug line = 322:5]
  %98 = trunc i32 %97 to i8, !dbg !364            ; [#uses=1 type=i8] [debug line = 322:5]
  store i8 %98, i8* %94, align 1, !dbg !364       ; [debug line = 322:5]
  %99 = load i8** %1, align 8, !dbg !365          ; [#uses=1 type=i8*] [debug line = 323:5]
  %100 = getelementptr inbounds i8* %99, i64 13, !dbg !365 ; [#uses=1 type=i8*] [debug line = 323:5]
  %101 = load i8* %100, align 1, !dbg !365        ; [#uses=1 type=i8] [debug line = 323:5]
  %102 = zext i8 %101 to i64, !dbg !365           ; [#uses=1 type=i64] [debug line = 323:5]
  %103 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %102, !dbg !365 ; [#uses=1 type=i8*] [debug line = 323:5]
  %104 = load i8* %103, align 1, !dbg !365        ; [#uses=1 type=i8] [debug line = 323:5]
  %105 = zext i8 %104 to i32, !dbg !365           ; [#uses=1 type=i32] [debug line = 323:5]
  %106 = load i8** %1, align 8, !dbg !365         ; [#uses=1 type=i8*] [debug line = 323:5]
  %107 = getelementptr inbounds i8* %106, i64 17, !dbg !365 ; [#uses=2 type=i8*] [debug line = 323:5]
  %108 = load i8* %107, align 1, !dbg !365        ; [#uses=1 type=i8] [debug line = 323:5]
  %109 = zext i8 %108 to i32, !dbg !365           ; [#uses=1 type=i32] [debug line = 323:5]
  %110 = xor i32 %109, %105, !dbg !365            ; [#uses=1 type=i32] [debug line = 323:5]
  %111 = trunc i32 %110 to i8, !dbg !365          ; [#uses=1 type=i8] [debug line = 323:5]
  store i8 %111, i8* %107, align 1, !dbg !365     ; [debug line = 323:5]
  %112 = load i8** %1, align 8, !dbg !366         ; [#uses=1 type=i8*] [debug line = 324:5]
  %113 = getelementptr inbounds i8* %112, i64 14, !dbg !366 ; [#uses=1 type=i8*] [debug line = 324:5]
  %114 = load i8* %113, align 1, !dbg !366        ; [#uses=1 type=i8] [debug line = 324:5]
  %115 = zext i8 %114 to i64, !dbg !366           ; [#uses=1 type=i64] [debug line = 324:5]
  %116 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %115, !dbg !366 ; [#uses=1 type=i8*] [debug line = 324:5]
  %117 = load i8* %116, align 1, !dbg !366        ; [#uses=1 type=i8] [debug line = 324:5]
  %118 = zext i8 %117 to i32, !dbg !366           ; [#uses=1 type=i32] [debug line = 324:5]
  %119 = load i8** %1, align 8, !dbg !366         ; [#uses=1 type=i8*] [debug line = 324:5]
  %120 = getelementptr inbounds i8* %119, i64 18, !dbg !366 ; [#uses=2 type=i8*] [debug line = 324:5]
  %121 = load i8* %120, align 1, !dbg !366        ; [#uses=1 type=i8] [debug line = 324:5]
  %122 = zext i8 %121 to i32, !dbg !366           ; [#uses=1 type=i32] [debug line = 324:5]
  %123 = xor i32 %122, %118, !dbg !366            ; [#uses=1 type=i32] [debug line = 324:5]
  %124 = trunc i32 %123 to i8, !dbg !366          ; [#uses=1 type=i8] [debug line = 324:5]
  store i8 %124, i8* %120, align 1, !dbg !366     ; [debug line = 324:5]
  %125 = load i8** %1, align 8, !dbg !367         ; [#uses=1 type=i8*] [debug line = 325:5]
  %126 = getelementptr inbounds i8* %125, i64 15, !dbg !367 ; [#uses=1 type=i8*] [debug line = 325:5]
  %127 = load i8* %126, align 1, !dbg !367        ; [#uses=1 type=i8] [debug line = 325:5]
  %128 = zext i8 %127 to i64, !dbg !367           ; [#uses=1 type=i64] [debug line = 325:5]
  %129 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %128, !dbg !367 ; [#uses=1 type=i8*] [debug line = 325:5]
  %130 = load i8* %129, align 1, !dbg !367        ; [#uses=1 type=i8] [debug line = 325:5]
  %131 = zext i8 %130 to i32, !dbg !367           ; [#uses=1 type=i32] [debug line = 325:5]
  %132 = load i8** %1, align 8, !dbg !367         ; [#uses=1 type=i8*] [debug line = 325:5]
  %133 = getelementptr inbounds i8* %132, i64 19, !dbg !367 ; [#uses=2 type=i8*] [debug line = 325:5]
  %134 = load i8* %133, align 1, !dbg !367        ; [#uses=1 type=i8] [debug line = 325:5]
  %135 = zext i8 %134 to i32, !dbg !367           ; [#uses=1 type=i32] [debug line = 325:5]
  %136 = xor i32 %135, %131, !dbg !367            ; [#uses=1 type=i32] [debug line = 325:5]
  %137 = trunc i32 %136 to i8, !dbg !367          ; [#uses=1 type=i8] [debug line = 325:5]
  store i8 %137, i8* %133, align 1, !dbg !367     ; [debug line = 325:5]
  store i8 12, i8* %i, align 1, !dbg !368         ; [debug line = 327:9]
  br label %138, !dbg !368                        ; [debug line = 327:9]

; <label>:138                                     ; preds = %215, %85
  %139 = load i8* %i, align 1, !dbg !368          ; [#uses=1 type=i8] [debug line = 327:9]
  %140 = zext i8 %139 to i32, !dbg !368           ; [#uses=1 type=i32] [debug line = 327:9]
  %141 = icmp sgt i32 %140, 0, !dbg !368          ; [#uses=1 type=i1] [debug line = 327:9]
  br i1 %141, label %142, label %220, !dbg !368   ; [debug line = 327:9]

; <label>:142                                     ; preds = %138
  %143 = load i8* %i, align 1, !dbg !370          ; [#uses=1 type=i8] [debug line = 327:32]
  %144 = zext i8 %143 to i32, !dbg !370           ; [#uses=1 type=i32] [debug line = 327:32]
  %145 = sub nsw i32 %144, 4, !dbg !370           ; [#uses=1 type=i32] [debug line = 327:32]
  %146 = sext i32 %145 to i64, !dbg !370          ; [#uses=1 type=i64] [debug line = 327:32]
  %147 = load i8** %1, align 8, !dbg !370         ; [#uses=1 type=i8*] [debug line = 327:32]
  %148 = getelementptr inbounds i8* %147, i64 %146, !dbg !370 ; [#uses=1 type=i8*] [debug line = 327:32]
  %149 = load i8* %148, align 1, !dbg !370        ; [#uses=1 type=i8] [debug line = 327:32]
  %150 = zext i8 %149 to i32, !dbg !370           ; [#uses=1 type=i32] [debug line = 327:32]
  %151 = load i8* %i, align 1, !dbg !370          ; [#uses=1 type=i8] [debug line = 327:32]
  %152 = zext i8 %151 to i32, !dbg !370           ; [#uses=1 type=i32] [debug line = 327:32]
  %153 = add nsw i32 %152, 0, !dbg !370           ; [#uses=1 type=i32] [debug line = 327:32]
  %154 = sext i32 %153 to i64, !dbg !370          ; [#uses=1 type=i64] [debug line = 327:32]
  %155 = load i8** %1, align 8, !dbg !370         ; [#uses=1 type=i8*] [debug line = 327:32]
  %156 = getelementptr inbounds i8* %155, i64 %154, !dbg !370 ; [#uses=2 type=i8*] [debug line = 327:32]
  %157 = load i8* %156, align 1, !dbg !370        ; [#uses=1 type=i8] [debug line = 327:32]
  %158 = zext i8 %157 to i32, !dbg !370           ; [#uses=1 type=i32] [debug line = 327:32]
  %159 = xor i32 %158, %150, !dbg !370            ; [#uses=1 type=i32] [debug line = 327:32]
  %160 = trunc i32 %159 to i8, !dbg !370          ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %160, i8* %156, align 1, !dbg !370     ; [debug line = 327:32]
  %161 = load i8* %i, align 1, !dbg !370          ; [#uses=1 type=i8] [debug line = 327:32]
  %162 = zext i8 %161 to i32, !dbg !370           ; [#uses=1 type=i32] [debug line = 327:32]
  %163 = sub nsw i32 %162, 3, !dbg !370           ; [#uses=1 type=i32] [debug line = 327:32]
  %164 = sext i32 %163 to i64, !dbg !370          ; [#uses=1 type=i64] [debug line = 327:32]
  %165 = load i8** %1, align 8, !dbg !370         ; [#uses=1 type=i8*] [debug line = 327:32]
  %166 = getelementptr inbounds i8* %165, i64 %164, !dbg !370 ; [#uses=1 type=i8*] [debug line = 327:32]
  %167 = load i8* %166, align 1, !dbg !370        ; [#uses=1 type=i8] [debug line = 327:32]
  %168 = zext i8 %167 to i32, !dbg !370           ; [#uses=1 type=i32] [debug line = 327:32]
  %169 = load i8* %i, align 1, !dbg !370          ; [#uses=1 type=i8] [debug line = 327:32]
  %170 = zext i8 %169 to i32, !dbg !370           ; [#uses=1 type=i32] [debug line = 327:32]
  %171 = add nsw i32 %170, 1, !dbg !370           ; [#uses=1 type=i32] [debug line = 327:32]
  %172 = sext i32 %171 to i64, !dbg !370          ; [#uses=1 type=i64] [debug line = 327:32]
  %173 = load i8** %1, align 8, !dbg !370         ; [#uses=1 type=i8*] [debug line = 327:32]
  %174 = getelementptr inbounds i8* %173, i64 %172, !dbg !370 ; [#uses=2 type=i8*] [debug line = 327:32]
  %175 = load i8* %174, align 1, !dbg !370        ; [#uses=1 type=i8] [debug line = 327:32]
  %176 = zext i8 %175 to i32, !dbg !370           ; [#uses=1 type=i32] [debug line = 327:32]
  %177 = xor i32 %176, %168, !dbg !370            ; [#uses=1 type=i32] [debug line = 327:32]
  %178 = trunc i32 %177 to i8, !dbg !370          ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %178, i8* %174, align 1, !dbg !370     ; [debug line = 327:32]
  %179 = load i8* %i, align 1, !dbg !370          ; [#uses=1 type=i8] [debug line = 327:32]
  %180 = zext i8 %179 to i32, !dbg !370           ; [#uses=1 type=i32] [debug line = 327:32]
  %181 = sub nsw i32 %180, 2, !dbg !370           ; [#uses=1 type=i32] [debug line = 327:32]
  %182 = sext i32 %181 to i64, !dbg !370          ; [#uses=1 type=i64] [debug line = 327:32]
  %183 = load i8** %1, align 8, !dbg !370         ; [#uses=1 type=i8*] [debug line = 327:32]
  %184 = getelementptr inbounds i8* %183, i64 %182, !dbg !370 ; [#uses=1 type=i8*] [debug line = 327:32]
  %185 = load i8* %184, align 1, !dbg !370        ; [#uses=1 type=i8] [debug line = 327:32]
  %186 = zext i8 %185 to i32, !dbg !370           ; [#uses=1 type=i32] [debug line = 327:32]
  %187 = load i8* %i, align 1, !dbg !370          ; [#uses=1 type=i8] [debug line = 327:32]
  %188 = zext i8 %187 to i32, !dbg !370           ; [#uses=1 type=i32] [debug line = 327:32]
  %189 = add nsw i32 %188, 2, !dbg !370           ; [#uses=1 type=i32] [debug line = 327:32]
  %190 = sext i32 %189 to i64, !dbg !370          ; [#uses=1 type=i64] [debug line = 327:32]
  %191 = load i8** %1, align 8, !dbg !370         ; [#uses=1 type=i8*] [debug line = 327:32]
  %192 = getelementptr inbounds i8* %191, i64 %190, !dbg !370 ; [#uses=2 type=i8*] [debug line = 327:32]
  %193 = load i8* %192, align 1, !dbg !370        ; [#uses=1 type=i8] [debug line = 327:32]
  %194 = zext i8 %193 to i32, !dbg !370           ; [#uses=1 type=i32] [debug line = 327:32]
  %195 = xor i32 %194, %186, !dbg !370            ; [#uses=1 type=i32] [debug line = 327:32]
  %196 = trunc i32 %195 to i8, !dbg !370          ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %196, i8* %192, align 1, !dbg !370     ; [debug line = 327:32]
  %197 = load i8* %i, align 1, !dbg !370          ; [#uses=1 type=i8] [debug line = 327:32]
  %198 = zext i8 %197 to i32, !dbg !370           ; [#uses=1 type=i32] [debug line = 327:32]
  %199 = sub nsw i32 %198, 1, !dbg !370           ; [#uses=1 type=i32] [debug line = 327:32]
  %200 = sext i32 %199 to i64, !dbg !370          ; [#uses=1 type=i64] [debug line = 327:32]
  %201 = load i8** %1, align 8, !dbg !370         ; [#uses=1 type=i8*] [debug line = 327:32]
  %202 = getelementptr inbounds i8* %201, i64 %200, !dbg !370 ; [#uses=1 type=i8*] [debug line = 327:32]
  %203 = load i8* %202, align 1, !dbg !370        ; [#uses=1 type=i8] [debug line = 327:32]
  %204 = zext i8 %203 to i32, !dbg !370           ; [#uses=1 type=i32] [debug line = 327:32]
  %205 = load i8* %i, align 1, !dbg !370          ; [#uses=1 type=i8] [debug line = 327:32]
  %206 = zext i8 %205 to i32, !dbg !370           ; [#uses=1 type=i32] [debug line = 327:32]
  %207 = add nsw i32 %206, 3, !dbg !370           ; [#uses=1 type=i32] [debug line = 327:32]
  %208 = sext i32 %207 to i64, !dbg !370          ; [#uses=1 type=i64] [debug line = 327:32]
  %209 = load i8** %1, align 8, !dbg !370         ; [#uses=1 type=i8*] [debug line = 327:32]
  %210 = getelementptr inbounds i8* %209, i64 %208, !dbg !370 ; [#uses=2 type=i8*] [debug line = 327:32]
  %211 = load i8* %210, align 1, !dbg !370        ; [#uses=1 type=i8] [debug line = 327:32]
  %212 = zext i8 %211 to i32, !dbg !370           ; [#uses=1 type=i32] [debug line = 327:32]
  %213 = xor i32 %212, %204, !dbg !370            ; [#uses=1 type=i32] [debug line = 327:32]
  %214 = trunc i32 %213 to i8, !dbg !370          ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %214, i8* %210, align 1, !dbg !370     ; [debug line = 327:32]
  br label %215, !dbg !370                        ; [debug line = 327:32]

; <label>:215                                     ; preds = %142
  %216 = load i8* %i, align 1, !dbg !371          ; [#uses=1 type=i8] [debug line = 327:24]
  %217 = zext i8 %216 to i32, !dbg !371           ; [#uses=1 type=i32] [debug line = 327:24]
  %218 = sub nsw i32 %217, 4, !dbg !371           ; [#uses=1 type=i32] [debug line = 327:24]
  %219 = trunc i32 %218 to i8, !dbg !371          ; [#uses=1 type=i8] [debug line = 327:24]
  store i8 %219, i8* %i, align 1, !dbg !371       ; [debug line = 327:24]
  br label %138, !dbg !371                        ; [debug line = 327:24]

; <label>:220                                     ; preds = %138
  %221 = load i8** %2, align 8, !dbg !372         ; [#uses=1 type=i8*] [debug line = 330:5]
  %222 = load i8* %221, align 1, !dbg !372        ; [#uses=1 type=i8] [debug line = 330:5]
  %223 = zext i8 %222 to i32, !dbg !372           ; [#uses=1 type=i32] [debug line = 330:5]
  %224 = ashr i32 %223, 1, !dbg !372              ; [#uses=1 type=i32] [debug line = 330:5]
  %225 = load i8** %2, align 8, !dbg !372         ; [#uses=1 type=i8*] [debug line = 330:5]
  %226 = load i8* %225, align 1, !dbg !372        ; [#uses=1 type=i8] [debug line = 330:5]
  %227 = zext i8 %226 to i32, !dbg !372           ; [#uses=1 type=i32] [debug line = 330:5]
  %228 = and i32 %227, 1, !dbg !372               ; [#uses=1 type=i32] [debug line = 330:5]
  %229 = icmp ne i32 %228, 0, !dbg !372           ; [#uses=1 type=i1] [debug line = 330:5]
  %230 = select i1 %229, i32 141, i32 0, !dbg !372 ; [#uses=1 type=i32] [debug line = 330:5]
  %231 = xor i32 %224, %230, !dbg !372            ; [#uses=1 type=i32] [debug line = 330:5]
  %232 = trunc i32 %231 to i8, !dbg !372          ; [#uses=1 type=i8] [debug line = 330:5]
  %233 = load i8** %2, align 8, !dbg !372         ; [#uses=1 type=i8*] [debug line = 330:5]
  store i8 %232, i8* %233, align 1, !dbg !372     ; [debug line = 330:5]
  %234 = load i8** %1, align 8, !dbg !373         ; [#uses=1 type=i8*] [debug line = 331:5]
  %235 = getelementptr inbounds i8* %234, i64 29, !dbg !373 ; [#uses=1 type=i8*] [debug line = 331:5]
  %236 = load i8* %235, align 1, !dbg !373        ; [#uses=1 type=i8] [debug line = 331:5]
  %237 = zext i8 %236 to i64, !dbg !373           ; [#uses=1 type=i64] [debug line = 331:5]
  %238 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %237, !dbg !373 ; [#uses=1 type=i8*] [debug line = 331:5]
  %239 = load i8* %238, align 1, !dbg !373        ; [#uses=1 type=i8] [debug line = 331:5]
  %240 = zext i8 %239 to i32, !dbg !373           ; [#uses=1 type=i32] [debug line = 331:5]
  %241 = load i8** %2, align 8, !dbg !373         ; [#uses=1 type=i8*] [debug line = 331:5]
  %242 = load i8* %241, align 1, !dbg !373        ; [#uses=1 type=i8] [debug line = 331:5]
  %243 = zext i8 %242 to i32, !dbg !373           ; [#uses=1 type=i32] [debug line = 331:5]
  %244 = xor i32 %240, %243, !dbg !373            ; [#uses=1 type=i32] [debug line = 331:5]
  %245 = load i8** %1, align 8, !dbg !373         ; [#uses=1 type=i8*] [debug line = 331:5]
  %246 = getelementptr inbounds i8* %245, i64 0, !dbg !373 ; [#uses=2 type=i8*] [debug line = 331:5]
  %247 = load i8* %246, align 1, !dbg !373        ; [#uses=1 type=i8] [debug line = 331:5]
  %248 = zext i8 %247 to i32, !dbg !373           ; [#uses=1 type=i32] [debug line = 331:5]
  %249 = xor i32 %248, %244, !dbg !373            ; [#uses=1 type=i32] [debug line = 331:5]
  %250 = trunc i32 %249 to i8, !dbg !373          ; [#uses=1 type=i8] [debug line = 331:5]
  store i8 %250, i8* %246, align 1, !dbg !373     ; [debug line = 331:5]
  %251 = load i8** %1, align 8, !dbg !374         ; [#uses=1 type=i8*] [debug line = 332:5]
  %252 = getelementptr inbounds i8* %251, i64 30, !dbg !374 ; [#uses=1 type=i8*] [debug line = 332:5]
  %253 = load i8* %252, align 1, !dbg !374        ; [#uses=1 type=i8] [debug line = 332:5]
  %254 = zext i8 %253 to i64, !dbg !374           ; [#uses=1 type=i64] [debug line = 332:5]
  %255 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %254, !dbg !374 ; [#uses=1 type=i8*] [debug line = 332:5]
  %256 = load i8* %255, align 1, !dbg !374        ; [#uses=1 type=i8] [debug line = 332:5]
  %257 = zext i8 %256 to i32, !dbg !374           ; [#uses=1 type=i32] [debug line = 332:5]
  %258 = load i8** %1, align 8, !dbg !374         ; [#uses=1 type=i8*] [debug line = 332:5]
  %259 = getelementptr inbounds i8* %258, i64 1, !dbg !374 ; [#uses=2 type=i8*] [debug line = 332:5]
  %260 = load i8* %259, align 1, !dbg !374        ; [#uses=1 type=i8] [debug line = 332:5]
  %261 = zext i8 %260 to i32, !dbg !374           ; [#uses=1 type=i32] [debug line = 332:5]
  %262 = xor i32 %261, %257, !dbg !374            ; [#uses=1 type=i32] [debug line = 332:5]
  %263 = trunc i32 %262 to i8, !dbg !374          ; [#uses=1 type=i8] [debug line = 332:5]
  store i8 %263, i8* %259, align 1, !dbg !374     ; [debug line = 332:5]
  %264 = load i8** %1, align 8, !dbg !375         ; [#uses=1 type=i8*] [debug line = 333:5]
  %265 = getelementptr inbounds i8* %264, i64 31, !dbg !375 ; [#uses=1 type=i8*] [debug line = 333:5]
  %266 = load i8* %265, align 1, !dbg !375        ; [#uses=1 type=i8] [debug line = 333:5]
  %267 = zext i8 %266 to i64, !dbg !375           ; [#uses=1 type=i64] [debug line = 333:5]
  %268 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %267, !dbg !375 ; [#uses=1 type=i8*] [debug line = 333:5]
  %269 = load i8* %268, align 1, !dbg !375        ; [#uses=1 type=i8] [debug line = 333:5]
  %270 = zext i8 %269 to i32, !dbg !375           ; [#uses=1 type=i32] [debug line = 333:5]
  %271 = load i8** %1, align 8, !dbg !375         ; [#uses=1 type=i8*] [debug line = 333:5]
  %272 = getelementptr inbounds i8* %271, i64 2, !dbg !375 ; [#uses=2 type=i8*] [debug line = 333:5]
  %273 = load i8* %272, align 1, !dbg !375        ; [#uses=1 type=i8] [debug line = 333:5]
  %274 = zext i8 %273 to i32, !dbg !375           ; [#uses=1 type=i32] [debug line = 333:5]
  %275 = xor i32 %274, %270, !dbg !375            ; [#uses=1 type=i32] [debug line = 333:5]
  %276 = trunc i32 %275 to i8, !dbg !375          ; [#uses=1 type=i8] [debug line = 333:5]
  store i8 %276, i8* %272, align 1, !dbg !375     ; [debug line = 333:5]
  %277 = load i8** %1, align 8, !dbg !376         ; [#uses=1 type=i8*] [debug line = 334:5]
  %278 = getelementptr inbounds i8* %277, i64 28, !dbg !376 ; [#uses=1 type=i8*] [debug line = 334:5]
  %279 = load i8* %278, align 1, !dbg !376        ; [#uses=1 type=i8] [debug line = 334:5]
  %280 = zext i8 %279 to i64, !dbg !376           ; [#uses=1 type=i64] [debug line = 334:5]
  %281 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i64 %280, !dbg !376 ; [#uses=1 type=i8*] [debug line = 334:5]
  %282 = load i8* %281, align 1, !dbg !376        ; [#uses=1 type=i8] [debug line = 334:5]
  %283 = zext i8 %282 to i32, !dbg !376           ; [#uses=1 type=i32] [debug line = 334:5]
  %284 = load i8** %1, align 8, !dbg !376         ; [#uses=1 type=i8*] [debug line = 334:5]
  %285 = getelementptr inbounds i8* %284, i64 3, !dbg !376 ; [#uses=2 type=i8*] [debug line = 334:5]
  %286 = load i8* %285, align 1, !dbg !376        ; [#uses=1 type=i8] [debug line = 334:5]
  %287 = zext i8 %286 to i32, !dbg !376           ; [#uses=1 type=i32] [debug line = 334:5]
  %288 = xor i32 %287, %283, !dbg !376            ; [#uses=1 type=i32] [debug line = 334:5]
  %289 = trunc i32 %288 to i8, !dbg !376          ; [#uses=1 type=i8] [debug line = 334:5]
  store i8 %289, i8* %285, align 1, !dbg !376     ; [debug line = 334:5]
  ret void, !dbg !377                             ; [debug line = 335:1]
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
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !378), !dbg !379 ; [debug line = 270:40] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !380), !dbg !382 ; [debug line = 272:28] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i8* %a}, metadata !383), !dbg !384 ; [debug line = 272:31] [debug variable = a]
  call void @llvm.dbg.declare(metadata !{i8* %b}, metadata !385), !dbg !386 ; [debug line = 272:34] [debug variable = b]
  call void @llvm.dbg.declare(metadata !{i8* %c}, metadata !387), !dbg !388 ; [debug line = 272:37] [debug variable = c]
  call void @llvm.dbg.declare(metadata !{i8* %d}, metadata !389), !dbg !390 ; [debug line = 272:40] [debug variable = d]
  call void @llvm.dbg.declare(metadata !{i8* %e}, metadata !391), !dbg !392 ; [debug line = 272:43] [debug variable = e]
  call void @llvm.dbg.declare(metadata !{i8* %x}, metadata !393), !dbg !394 ; [debug line = 272:46] [debug variable = x]
  call void @llvm.dbg.declare(metadata !{i8* %y}, metadata !395), !dbg !396 ; [debug line = 272:49] [debug variable = y]
  call void @llvm.dbg.declare(metadata !{i8* %z}, metadata !397), !dbg !398 ; [debug line = 272:52] [debug variable = z]
  store i8 0, i8* %i, align 1, !dbg !399          ; [debug line = 274:10]
  br label %2, !dbg !399                          ; [debug line = 274:10]

; <label>:2                                       ; preds = %161, %0
  %3 = load i8* %i, align 1, !dbg !399            ; [#uses=1 type=i8] [debug line = 274:10]
  %4 = zext i8 %3 to i32, !dbg !399               ; [#uses=1 type=i32] [debug line = 274:10]
  %5 = icmp slt i32 %4, 16, !dbg !399             ; [#uses=1 type=i1] [debug line = 274:10]
  br i1 %5, label %6, label %166, !dbg !399       ; [debug line = 274:10]

; <label>:6                                       ; preds = %2
  %7 = load i8* %i, align 1, !dbg !401            ; [#uses=1 type=i8] [debug line = 276:9]
  %8 = zext i8 %7 to i64, !dbg !401               ; [#uses=1 type=i64] [debug line = 276:9]
  %9 = load i8** %1, align 8, !dbg !401           ; [#uses=1 type=i8*] [debug line = 276:9]
  %10 = getelementptr inbounds i8* %9, i64 %8, !dbg !401 ; [#uses=1 type=i8*] [debug line = 276:9]
  %11 = load i8* %10, align 1, !dbg !401          ; [#uses=1 type=i8] [debug line = 276:9]
  store i8 %11, i8* %a, align 1, !dbg !401        ; [debug line = 276:9]
  %12 = load i8* %i, align 1, !dbg !403           ; [#uses=1 type=i8] [debug line = 277:9]
  %13 = zext i8 %12 to i32, !dbg !403             ; [#uses=1 type=i32] [debug line = 277:9]
  %14 = add nsw i32 %13, 1, !dbg !403             ; [#uses=1 type=i32] [debug line = 277:9]
  %15 = sext i32 %14 to i64, !dbg !403            ; [#uses=1 type=i64] [debug line = 277:9]
  %16 = load i8** %1, align 8, !dbg !403          ; [#uses=1 type=i8*] [debug line = 277:9]
  %17 = getelementptr inbounds i8* %16, i64 %15, !dbg !403 ; [#uses=1 type=i8*] [debug line = 277:9]
  %18 = load i8* %17, align 1, !dbg !403          ; [#uses=1 type=i8] [debug line = 277:9]
  store i8 %18, i8* %b, align 1, !dbg !403        ; [debug line = 277:9]
  %19 = load i8* %i, align 1, !dbg !404           ; [#uses=1 type=i8] [debug line = 278:9]
  %20 = zext i8 %19 to i32, !dbg !404             ; [#uses=1 type=i32] [debug line = 278:9]
  %21 = add nsw i32 %20, 2, !dbg !404             ; [#uses=1 type=i32] [debug line = 278:9]
  %22 = sext i32 %21 to i64, !dbg !404            ; [#uses=1 type=i64] [debug line = 278:9]
  %23 = load i8** %1, align 8, !dbg !404          ; [#uses=1 type=i8*] [debug line = 278:9]
  %24 = getelementptr inbounds i8* %23, i64 %22, !dbg !404 ; [#uses=1 type=i8*] [debug line = 278:9]
  %25 = load i8* %24, align 1, !dbg !404          ; [#uses=1 type=i8] [debug line = 278:9]
  store i8 %25, i8* %c, align 1, !dbg !404        ; [debug line = 278:9]
  %26 = load i8* %i, align 1, !dbg !405           ; [#uses=1 type=i8] [debug line = 279:9]
  %27 = zext i8 %26 to i32, !dbg !405             ; [#uses=1 type=i32] [debug line = 279:9]
  %28 = add nsw i32 %27, 3, !dbg !405             ; [#uses=1 type=i32] [debug line = 279:9]
  %29 = sext i32 %28 to i64, !dbg !405            ; [#uses=1 type=i64] [debug line = 279:9]
  %30 = load i8** %1, align 8, !dbg !405          ; [#uses=1 type=i8*] [debug line = 279:9]
  %31 = getelementptr inbounds i8* %30, i64 %29, !dbg !405 ; [#uses=1 type=i8*] [debug line = 279:9]
  %32 = load i8* %31, align 1, !dbg !405          ; [#uses=1 type=i8] [debug line = 279:9]
  store i8 %32, i8* %d, align 1, !dbg !405        ; [debug line = 279:9]
  %33 = load i8* %a, align 1, !dbg !406           ; [#uses=1 type=i8] [debug line = 280:9]
  %34 = zext i8 %33 to i32, !dbg !406             ; [#uses=1 type=i32] [debug line = 280:9]
  %35 = load i8* %b, align 1, !dbg !406           ; [#uses=1 type=i8] [debug line = 280:9]
  %36 = zext i8 %35 to i32, !dbg !406             ; [#uses=1 type=i32] [debug line = 280:9]
  %37 = xor i32 %34, %36, !dbg !406               ; [#uses=1 type=i32] [debug line = 280:9]
  %38 = load i8* %c, align 1, !dbg !406           ; [#uses=1 type=i8] [debug line = 280:9]
  %39 = zext i8 %38 to i32, !dbg !406             ; [#uses=1 type=i32] [debug line = 280:9]
  %40 = xor i32 %37, %39, !dbg !406               ; [#uses=1 type=i32] [debug line = 280:9]
  %41 = load i8* %d, align 1, !dbg !406           ; [#uses=1 type=i8] [debug line = 280:9]
  %42 = zext i8 %41 to i32, !dbg !406             ; [#uses=1 type=i32] [debug line = 280:9]
  %43 = xor i32 %40, %42, !dbg !406               ; [#uses=1 type=i32] [debug line = 280:9]
  %44 = trunc i32 %43 to i8, !dbg !406            ; [#uses=1 type=i8] [debug line = 280:9]
  store i8 %44, i8* %e, align 1, !dbg !406        ; [debug line = 280:9]
  %45 = load i8* %e, align 1, !dbg !407           ; [#uses=1 type=i8] [debug line = 281:13]
  %46 = call zeroext i8 @rj_xtime(i8 zeroext %45), !dbg !407 ; [#uses=1 type=i8] [debug line = 281:13]
  store i8 %46, i8* %z, align 1, !dbg !407        ; [debug line = 281:13]
  %47 = load i8* %e, align 1, !dbg !408           ; [#uses=1 type=i8] [debug line = 282:9]
  %48 = zext i8 %47 to i32, !dbg !408             ; [#uses=1 type=i32] [debug line = 282:9]
  %49 = load i8* %z, align 1, !dbg !409           ; [#uses=1 type=i8] [debug line = 282:26]
  %50 = zext i8 %49 to i32, !dbg !409             ; [#uses=1 type=i32] [debug line = 282:26]
  %51 = load i8* %a, align 1, !dbg !409           ; [#uses=1 type=i8] [debug line = 282:26]
  %52 = zext i8 %51 to i32, !dbg !409             ; [#uses=1 type=i32] [debug line = 282:26]
  %53 = xor i32 %50, %52, !dbg !409               ; [#uses=1 type=i32] [debug line = 282:26]
  %54 = load i8* %c, align 1, !dbg !409           ; [#uses=1 type=i8] [debug line = 282:26]
  %55 = zext i8 %54 to i32, !dbg !409             ; [#uses=1 type=i32] [debug line = 282:26]
  %56 = xor i32 %53, %55, !dbg !409               ; [#uses=1 type=i32] [debug line = 282:26]
  %57 = trunc i32 %56 to i8, !dbg !409            ; [#uses=1 type=i8] [debug line = 282:26]
  %58 = call zeroext i8 @rj_xtime(i8 zeroext %57), !dbg !409 ; [#uses=1 type=i8] [debug line = 282:26]
  %59 = call zeroext i8 @rj_xtime(i8 zeroext %58), !dbg !409 ; [#uses=1 type=i8] [debug line = 282:26]
  %60 = zext i8 %59 to i32, !dbg !409             ; [#uses=1 type=i32] [debug line = 282:26]
  %61 = xor i32 %48, %60, !dbg !409               ; [#uses=1 type=i32] [debug line = 282:26]
  %62 = trunc i32 %61 to i8, !dbg !409            ; [#uses=1 type=i8] [debug line = 282:26]
  store i8 %62, i8* %x, align 1, !dbg !409        ; [debug line = 282:26]
  %63 = load i8* %e, align 1, !dbg !410           ; [#uses=1 type=i8] [debug line = 283:9]
  %64 = zext i8 %63 to i32, !dbg !410             ; [#uses=1 type=i32] [debug line = 283:9]
  %65 = load i8* %z, align 1, !dbg !411           ; [#uses=1 type=i8] [debug line = 283:26]
  %66 = zext i8 %65 to i32, !dbg !411             ; [#uses=1 type=i32] [debug line = 283:26]
  %67 = load i8* %b, align 1, !dbg !411           ; [#uses=1 type=i8] [debug line = 283:26]
  %68 = zext i8 %67 to i32, !dbg !411             ; [#uses=1 type=i32] [debug line = 283:26]
  %69 = xor i32 %66, %68, !dbg !411               ; [#uses=1 type=i32] [debug line = 283:26]
  %70 = load i8* %d, align 1, !dbg !411           ; [#uses=1 type=i8] [debug line = 283:26]
  %71 = zext i8 %70 to i32, !dbg !411             ; [#uses=1 type=i32] [debug line = 283:26]
  %72 = xor i32 %69, %71, !dbg !411               ; [#uses=1 type=i32] [debug line = 283:26]
  %73 = trunc i32 %72 to i8, !dbg !411            ; [#uses=1 type=i8] [debug line = 283:26]
  %74 = call zeroext i8 @rj_xtime(i8 zeroext %73), !dbg !411 ; [#uses=1 type=i8] [debug line = 283:26]
  %75 = call zeroext i8 @rj_xtime(i8 zeroext %74), !dbg !411 ; [#uses=1 type=i8] [debug line = 283:26]
  %76 = zext i8 %75 to i32, !dbg !411             ; [#uses=1 type=i32] [debug line = 283:26]
  %77 = xor i32 %64, %76, !dbg !411               ; [#uses=1 type=i32] [debug line = 283:26]
  %78 = trunc i32 %77 to i8, !dbg !411            ; [#uses=1 type=i8] [debug line = 283:26]
  store i8 %78, i8* %y, align 1, !dbg !411        ; [debug line = 283:26]
  %79 = load i8* %x, align 1, !dbg !412           ; [#uses=1 type=i8] [debug line = 284:9]
  %80 = zext i8 %79 to i32, !dbg !412             ; [#uses=1 type=i32] [debug line = 284:9]
  %81 = load i8* %a, align 1, !dbg !413           ; [#uses=1 type=i8] [debug line = 284:23]
  %82 = zext i8 %81 to i32, !dbg !413             ; [#uses=1 type=i32] [debug line = 284:23]
  %83 = load i8* %b, align 1, !dbg !413           ; [#uses=1 type=i8] [debug line = 284:23]
  %84 = zext i8 %83 to i32, !dbg !413             ; [#uses=1 type=i32] [debug line = 284:23]
  %85 = xor i32 %82, %84, !dbg !413               ; [#uses=1 type=i32] [debug line = 284:23]
  %86 = trunc i32 %85 to i8, !dbg !413            ; [#uses=1 type=i8] [debug line = 284:23]
  %87 = call zeroext i8 @rj_xtime(i8 zeroext %86), !dbg !413 ; [#uses=1 type=i8] [debug line = 284:23]
  %88 = zext i8 %87 to i32, !dbg !413             ; [#uses=1 type=i32] [debug line = 284:23]
  %89 = xor i32 %80, %88, !dbg !413               ; [#uses=1 type=i32] [debug line = 284:23]
  %90 = load i8* %i, align 1, !dbg !413           ; [#uses=1 type=i8] [debug line = 284:23]
  %91 = zext i8 %90 to i64, !dbg !413             ; [#uses=1 type=i64] [debug line = 284:23]
  %92 = load i8** %1, align 8, !dbg !413          ; [#uses=1 type=i8*] [debug line = 284:23]
  %93 = getelementptr inbounds i8* %92, i64 %91, !dbg !413 ; [#uses=2 type=i8*] [debug line = 284:23]
  %94 = load i8* %93, align 1, !dbg !413          ; [#uses=1 type=i8] [debug line = 284:23]
  %95 = zext i8 %94 to i32, !dbg !413             ; [#uses=1 type=i32] [debug line = 284:23]
  %96 = xor i32 %95, %89, !dbg !413               ; [#uses=1 type=i32] [debug line = 284:23]
  %97 = trunc i32 %96 to i8, !dbg !413            ; [#uses=1 type=i8] [debug line = 284:23]
  store i8 %97, i8* %93, align 1, !dbg !413       ; [debug line = 284:23]
  %98 = load i8* %y, align 1, !dbg !414           ; [#uses=1 type=i8] [debug line = 285:9]
  %99 = zext i8 %98 to i32, !dbg !414             ; [#uses=1 type=i32] [debug line = 285:9]
  %100 = load i8* %b, align 1, !dbg !415          ; [#uses=1 type=i8] [debug line = 285:27]
  %101 = zext i8 %100 to i32, !dbg !415           ; [#uses=1 type=i32] [debug line = 285:27]
  %102 = load i8* %c, align 1, !dbg !415          ; [#uses=1 type=i8] [debug line = 285:27]
  %103 = zext i8 %102 to i32, !dbg !415           ; [#uses=1 type=i32] [debug line = 285:27]
  %104 = xor i32 %101, %103, !dbg !415            ; [#uses=1 type=i32] [debug line = 285:27]
  %105 = trunc i32 %104 to i8, !dbg !415          ; [#uses=1 type=i8] [debug line = 285:27]
  %106 = call zeroext i8 @rj_xtime(i8 zeroext %105), !dbg !415 ; [#uses=1 type=i8] [debug line = 285:27]
  %107 = zext i8 %106 to i32, !dbg !415           ; [#uses=1 type=i32] [debug line = 285:27]
  %108 = xor i32 %99, %107, !dbg !415             ; [#uses=1 type=i32] [debug line = 285:27]
  %109 = load i8* %i, align 1, !dbg !415          ; [#uses=1 type=i8] [debug line = 285:27]
  %110 = zext i8 %109 to i32, !dbg !415           ; [#uses=1 type=i32] [debug line = 285:27]
  %111 = add nsw i32 %110, 1, !dbg !415           ; [#uses=1 type=i32] [debug line = 285:27]
  %112 = sext i32 %111 to i64, !dbg !415          ; [#uses=1 type=i64] [debug line = 285:27]
  %113 = load i8** %1, align 8, !dbg !415         ; [#uses=1 type=i8*] [debug line = 285:27]
  %114 = getelementptr inbounds i8* %113, i64 %112, !dbg !415 ; [#uses=2 type=i8*] [debug line = 285:27]
  %115 = load i8* %114, align 1, !dbg !415        ; [#uses=1 type=i8] [debug line = 285:27]
  %116 = zext i8 %115 to i32, !dbg !415           ; [#uses=1 type=i32] [debug line = 285:27]
  %117 = xor i32 %116, %108, !dbg !415            ; [#uses=1 type=i32] [debug line = 285:27]
  %118 = trunc i32 %117 to i8, !dbg !415          ; [#uses=1 type=i8] [debug line = 285:27]
  store i8 %118, i8* %114, align 1, !dbg !415     ; [debug line = 285:27]
  %119 = load i8* %x, align 1, !dbg !416          ; [#uses=1 type=i8] [debug line = 286:9]
  %120 = zext i8 %119 to i32, !dbg !416           ; [#uses=1 type=i32] [debug line = 286:9]
  %121 = load i8* %c, align 1, !dbg !417          ; [#uses=1 type=i8] [debug line = 286:27]
  %122 = zext i8 %121 to i32, !dbg !417           ; [#uses=1 type=i32] [debug line = 286:27]
  %123 = load i8* %d, align 1, !dbg !417          ; [#uses=1 type=i8] [debug line = 286:27]
  %124 = zext i8 %123 to i32, !dbg !417           ; [#uses=1 type=i32] [debug line = 286:27]
  %125 = xor i32 %122, %124, !dbg !417            ; [#uses=1 type=i32] [debug line = 286:27]
  %126 = trunc i32 %125 to i8, !dbg !417          ; [#uses=1 type=i8] [debug line = 286:27]
  %127 = call zeroext i8 @rj_xtime(i8 zeroext %126), !dbg !417 ; [#uses=1 type=i8] [debug line = 286:27]
  %128 = zext i8 %127 to i32, !dbg !417           ; [#uses=1 type=i32] [debug line = 286:27]
  %129 = xor i32 %120, %128, !dbg !417            ; [#uses=1 type=i32] [debug line = 286:27]
  %130 = load i8* %i, align 1, !dbg !417          ; [#uses=1 type=i8] [debug line = 286:27]
  %131 = zext i8 %130 to i32, !dbg !417           ; [#uses=1 type=i32] [debug line = 286:27]
  %132 = add nsw i32 %131, 2, !dbg !417           ; [#uses=1 type=i32] [debug line = 286:27]
  %133 = sext i32 %132 to i64, !dbg !417          ; [#uses=1 type=i64] [debug line = 286:27]
  %134 = load i8** %1, align 8, !dbg !417         ; [#uses=1 type=i8*] [debug line = 286:27]
  %135 = getelementptr inbounds i8* %134, i64 %133, !dbg !417 ; [#uses=2 type=i8*] [debug line = 286:27]
  %136 = load i8* %135, align 1, !dbg !417        ; [#uses=1 type=i8] [debug line = 286:27]
  %137 = zext i8 %136 to i32, !dbg !417           ; [#uses=1 type=i32] [debug line = 286:27]
  %138 = xor i32 %137, %129, !dbg !417            ; [#uses=1 type=i32] [debug line = 286:27]
  %139 = trunc i32 %138 to i8, !dbg !417          ; [#uses=1 type=i8] [debug line = 286:27]
  store i8 %139, i8* %135, align 1, !dbg !417     ; [debug line = 286:27]
  %140 = load i8* %y, align 1, !dbg !418          ; [#uses=1 type=i8] [debug line = 287:9]
  %141 = zext i8 %140 to i32, !dbg !418           ; [#uses=1 type=i32] [debug line = 287:9]
  %142 = load i8* %d, align 1, !dbg !419          ; [#uses=1 type=i8] [debug line = 287:27]
  %143 = zext i8 %142 to i32, !dbg !419           ; [#uses=1 type=i32] [debug line = 287:27]
  %144 = load i8* %a, align 1, !dbg !419          ; [#uses=1 type=i8] [debug line = 287:27]
  %145 = zext i8 %144 to i32, !dbg !419           ; [#uses=1 type=i32] [debug line = 287:27]
  %146 = xor i32 %143, %145, !dbg !419            ; [#uses=1 type=i32] [debug line = 287:27]
  %147 = trunc i32 %146 to i8, !dbg !419          ; [#uses=1 type=i8] [debug line = 287:27]
  %148 = call zeroext i8 @rj_xtime(i8 zeroext %147), !dbg !419 ; [#uses=1 type=i8] [debug line = 287:27]
  %149 = zext i8 %148 to i32, !dbg !419           ; [#uses=1 type=i32] [debug line = 287:27]
  %150 = xor i32 %141, %149, !dbg !419            ; [#uses=1 type=i32] [debug line = 287:27]
  %151 = load i8* %i, align 1, !dbg !419          ; [#uses=1 type=i8] [debug line = 287:27]
  %152 = zext i8 %151 to i32, !dbg !419           ; [#uses=1 type=i32] [debug line = 287:27]
  %153 = add nsw i32 %152, 3, !dbg !419           ; [#uses=1 type=i32] [debug line = 287:27]
  %154 = sext i32 %153 to i64, !dbg !419          ; [#uses=1 type=i64] [debug line = 287:27]
  %155 = load i8** %1, align 8, !dbg !419         ; [#uses=1 type=i8*] [debug line = 287:27]
  %156 = getelementptr inbounds i8* %155, i64 %154, !dbg !419 ; [#uses=2 type=i8*] [debug line = 287:27]
  %157 = load i8* %156, align 1, !dbg !419        ; [#uses=1 type=i8] [debug line = 287:27]
  %158 = zext i8 %157 to i32, !dbg !419           ; [#uses=1 type=i32] [debug line = 287:27]
  %159 = xor i32 %158, %150, !dbg !419            ; [#uses=1 type=i32] [debug line = 287:27]
  %160 = trunc i32 %159 to i8, !dbg !419          ; [#uses=1 type=i8] [debug line = 287:27]
  store i8 %160, i8* %156, align 1, !dbg !419     ; [debug line = 287:27]
  br label %161, !dbg !420                        ; [debug line = 288:5]

; <label>:161                                     ; preds = %6
  %162 = load i8* %i, align 1, !dbg !421          ; [#uses=1 type=i8] [debug line = 274:25]
  %163 = zext i8 %162 to i32, !dbg !421           ; [#uses=1 type=i32] [debug line = 274:25]
  %164 = add nsw i32 %163, 4, !dbg !421           ; [#uses=1 type=i32] [debug line = 274:25]
  %165 = trunc i32 %164 to i8, !dbg !421          ; [#uses=1 type=i8] [debug line = 274:25]
  store i8 %165, i8* %i, align 1, !dbg !421       ; [debug line = 274:25]
  br label %2, !dbg !421                          ; [debug line = 274:25]

; <label>:166                                     ; preds = %2
  ret void, !dbg !422                             ; [debug line = 289:1]
}

; [#uses=14]
define internal zeroext i8 @rj_xtime(i8 zeroext %x) nounwind uwtable {
  %1 = alloca i8, align 1                         ; [#uses=3 type=i8*]
  %y = alloca i8, align 1                         ; [#uses=3 type=i8*]
  store i8 %x, i8* %1, align 1
  call void @llvm.dbg.declare(metadata !{i8* %1}, metadata !423), !dbg !424 ; [debug line = 187:45] [debug variable = x]
  call void @llvm.dbg.declare(metadata !{i8* %y}, metadata !425), !dbg !427 ; [debug line = 189:19] [debug variable = y]
  %2 = load i8* %1, align 1, !dbg !428            ; [#uses=1 type=i8] [debug line = 189:46]
  %3 = zext i8 %2 to i32, !dbg !428               ; [#uses=1 type=i32] [debug line = 189:46]
  %4 = shl i32 %3, 1, !dbg !428                   ; [#uses=1 type=i32] [debug line = 189:46]
  %5 = trunc i32 %4 to i8, !dbg !428              ; [#uses=1 type=i8] [debug line = 189:46]
  store i8 %5, i8* %y, align 1, !dbg !428         ; [debug line = 189:46]
  %6 = load i8* %1, align 1, !dbg !429            ; [#uses=1 type=i8] [debug line = 190:5]
  %7 = zext i8 %6 to i32, !dbg !429               ; [#uses=1 type=i32] [debug line = 190:5]
  %8 = and i32 %7, 128, !dbg !429                 ; [#uses=1 type=i32] [debug line = 190:5]
  %9 = icmp ne i32 %8, 0, !dbg !429               ; [#uses=1 type=i1] [debug line = 190:5]
  br i1 %9, label %10, label %14, !dbg !429       ; [debug line = 190:5]

; <label>:10                                      ; preds = %0
  %11 = load i8* %y, align 1, !dbg !429           ; [#uses=1 type=i8] [debug line = 190:5]
  %12 = zext i8 %11 to i32, !dbg !429             ; [#uses=1 type=i32] [debug line = 190:5]
  %13 = xor i32 %12, 27, !dbg !429                ; [#uses=1 type=i32] [debug line = 190:5]
  br label %17, !dbg !429                         ; [debug line = 190:5]

; <label>:14                                      ; preds = %0
  %15 = load i8* %y, align 1, !dbg !429           ; [#uses=1 type=i8] [debug line = 190:5]
  %16 = zext i8 %15 to i32, !dbg !429             ; [#uses=1 type=i32] [debug line = 190:5]
  br label %17, !dbg !429                         ; [debug line = 190:5]

; <label>:17                                      ; preds = %14, %10
  %18 = phi i32 [ %13, %10 ], [ %16, %14 ], !dbg !429 ; [#uses=1 type=i32] [debug line = 190:5]
  %19 = trunc i32 %18 to i8, !dbg !429            ; [#uses=1 type=i8] [debug line = 190:5]
  ret i8 %19, !dbg !429                           ; [debug line = 190:5]
}

; [#uses=0]
define void @aes256cbc(i8* %memptr, i3 zeroext %mode, i32 %inbuf_addr, i32 %outbuf_addr) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=8 type=i8**]
  %2 = alloca i3, align 1                         ; [#uses=3 type=i3*]
  %3 = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %4 = alloca i32, align 4                        ; [#uses=4 type=i32*]
  %buf = alloca [16 x i8], align 16               ; [#uses=12 type=[16 x i8]*]
  %i = alloca i8, align 1                         ; [#uses=38 type=i8*]
  store i8* %memptr, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !430), !dbg !431 ; [debug line = 8:31] [debug variable = memptr]
  store i3 %mode, i3* %2, align 1
  call void @llvm.dbg.declare(metadata !{i3* %2}, metadata !432), !dbg !433 ; [debug line = 8:52] [debug variable = mode]
  store i32 %inbuf_addr, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !434), !dbg !435 ; [debug line = 8:67] [debug variable = inbuf_addr]
  store i32 %outbuf_addr, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !436), !dbg !437 ; [debug line = 8:88] [debug variable = outbuf_addr]
  %5 = load i32* %4, align 4, !dbg !438           ; [#uses=1 type=i32] [debug line = 9:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %5, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !438 ; [debug line = 9:1]
  %6 = load i32* %3, align 4, !dbg !440           ; [#uses=1 type=i32] [debug line = 10:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %6, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !440 ; [debug line = 10:1]
  %7 = load i8** %1, align 8, !dbg !441           ; [#uses=1 type=i8*] [debug line = 11:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %7, i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 64, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !441 ; [debug line = 11:1]
  %8 = load i3* %2, align 1, !dbg !442            ; [#uses=1 type=i3] [debug line = 12:1]
  %9 = zext i3 %8 to i32, !dbg !442               ; [#uses=1 type=i32] [debug line = 12:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %9, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !442 ; [debug line = 12:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !443 ; [debug line = 13:1]
  call void @llvm.dbg.declare(metadata !{[16 x i8]* %buf}, metadata !444), !dbg !445 ; [debug line = 15:16] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !446), !dbg !447 ; [debug line = 21:19] [debug variable = i]
  %10 = load i3* %2, align 1, !dbg !448           ; [#uses=1 type=i3] [debug line = 23:5]
  %11 = zext i3 %10 to i32, !dbg !448             ; [#uses=1 type=i32] [debug line = 23:5]
  switch i32 %11, label %159 [
    i32 0, label %12
    i32 1, label %29
    i32 2, label %81
    i32 3, label %149
    i32 4, label %154
  ], !dbg !448                                    ; [debug line = 23:5]

; <label>:12                                      ; preds = %0
  store i8 0, i8* %i, align 1, !dbg !449          ; [debug line = 25:10]
  br label %13, !dbg !449                         ; [debug line = 25:10]

; <label>:13                                      ; preds = %25, %12
  %14 = load i8* %i, align 1, !dbg !449           ; [#uses=1 type=i8] [debug line = 25:10]
  %15 = zext i8 %14 to i32, !dbg !449             ; [#uses=1 type=i32] [debug line = 25:10]
  %16 = icmp slt i32 %15, 16, !dbg !449           ; [#uses=1 type=i1] [debug line = 25:10]
  br i1 %16, label %17, label %28, !dbg !449      ; [debug line = 25:10]

; <label>:17                                      ; preds = %13
  %18 = load i8* %i, align 1, !dbg !452           ; [#uses=1 type=i8] [debug line = 25:26]
  %19 = zext i8 %18 to i64, !dbg !452             ; [#uses=1 type=i64] [debug line = 25:26]
  %20 = getelementptr inbounds [16 x i8]* @aes256cbc.iv, i32 0, i64 %19, !dbg !452 ; [#uses=1 type=i8*] [debug line = 25:26]
  %21 = load i8* %20, align 1, !dbg !452          ; [#uses=1 type=i8] [debug line = 25:26]
  %22 = load i8* %i, align 1, !dbg !452           ; [#uses=1 type=i8] [debug line = 25:26]
  %23 = zext i8 %22 to i64, !dbg !452             ; [#uses=1 type=i64] [debug line = 25:26]
  %24 = getelementptr inbounds [16 x i8]* @aes256cbc.xorv, i32 0, i64 %23, !dbg !452 ; [#uses=1 type=i8*] [debug line = 25:26]
  store i8 %21, i8* %24, align 1, !dbg !452       ; [debug line = 25:26]
  br label %25, !dbg !454                         ; [debug line = 25:43]

; <label>:25                                      ; preds = %17
  %26 = load i8* %i, align 1, !dbg !455           ; [#uses=1 type=i8] [debug line = 25:19]
  %27 = add i8 %26, 1, !dbg !455                  ; [#uses=1 type=i8] [debug line = 25:19]
  store i8 %27, i8* %i, align 1, !dbg !455        ; [debug line = 25:19]
  br label %13, !dbg !455                         ; [debug line = 25:19]

; <label>:28                                      ; preds = %13
  call void @aes256_init(%struct.aes256_context* @aes256cbc.ctx, i8* getelementptr inbounds ([32 x i8]* @aes256cbc.key, i32 0, i32 0)), !dbg !456 ; [debug line = 26:6]
  br label %159, !dbg !457                        ; [debug line = 27:6]

; <label>:29                                      ; preds = %0
  %30 = getelementptr inbounds [16 x i8]* %buf, i32 0, i32 0, !dbg !458 ; [#uses=1 type=i8*] [debug line = 29:6]
  %31 = load i8** %1, align 8, !dbg !458          ; [#uses=1 type=i8*] [debug line = 29:6]
  %32 = load i32* %3, align 4, !dbg !458          ; [#uses=1 type=i32] [debug line = 29:6]
  %33 = zext i32 %32 to i64, !dbg !458            ; [#uses=1 type=i64] [debug line = 29:6]
  %34 = getelementptr inbounds i8* %31, i64 %33, !dbg !458 ; [#uses=1 type=i8*] [debug line = 29:6]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %34, i64 16, i32 1, i1 false), !dbg !458 ; [debug line = 29:6]
  store i8 0, i8* %i, align 1, !dbg !459          ; [debug line = 31:10]
  br label %35, !dbg !459                         ; [debug line = 31:10]

; <label>:35                                      ; preds = %55, %29
  %36 = load i8* %i, align 1, !dbg !459           ; [#uses=1 type=i8] [debug line = 31:10]
  %37 = zext i8 %36 to i32, !dbg !459             ; [#uses=1 type=i32] [debug line = 31:10]
  %38 = icmp slt i32 %37, 16, !dbg !459           ; [#uses=1 type=i1] [debug line = 31:10]
  br i1 %38, label %39, label %58, !dbg !459      ; [debug line = 31:10]

; <label>:39                                      ; preds = %35
  %40 = load i8* %i, align 1, !dbg !461           ; [#uses=1 type=i8] [debug line = 32:7]
  %41 = zext i8 %40 to i64, !dbg !461             ; [#uses=1 type=i64] [debug line = 32:7]
  %42 = getelementptr inbounds [16 x i8]* %buf, i32 0, i64 %41, !dbg !461 ; [#uses=1 type=i8*] [debug line = 32:7]
  %43 = load i8* %42, align 1, !dbg !461          ; [#uses=1 type=i8] [debug line = 32:7]
  %44 = zext i8 %43 to i32, !dbg !461             ; [#uses=1 type=i32] [debug line = 32:7]
  %45 = load i8* %i, align 1, !dbg !461           ; [#uses=1 type=i8] [debug line = 32:7]
  %46 = zext i8 %45 to i64, !dbg !461             ; [#uses=1 type=i64] [debug line = 32:7]
  %47 = getelementptr inbounds [16 x i8]* @aes256cbc.xorv, i32 0, i64 %46, !dbg !461 ; [#uses=1 type=i8*] [debug line = 32:7]
  %48 = load i8* %47, align 1, !dbg !461          ; [#uses=1 type=i8] [debug line = 32:7]
  %49 = zext i8 %48 to i32, !dbg !461             ; [#uses=1 type=i32] [debug line = 32:7]
  %50 = xor i32 %44, %49, !dbg !461               ; [#uses=1 type=i32] [debug line = 32:7]
  %51 = trunc i32 %50 to i8, !dbg !461            ; [#uses=1 type=i8] [debug line = 32:7]
  %52 = load i8* %i, align 1, !dbg !461           ; [#uses=1 type=i8] [debug line = 32:7]
  %53 = zext i8 %52 to i64, !dbg !461             ; [#uses=1 type=i64] [debug line = 32:7]
  %54 = getelementptr inbounds [16 x i8]* %buf, i32 0, i64 %53, !dbg !461 ; [#uses=1 type=i8*] [debug line = 32:7]
  store i8 %51, i8* %54, align 1, !dbg !461       ; [debug line = 32:7]
  br label %55, !dbg !463                         ; [debug line = 33:6]

; <label>:55                                      ; preds = %39
  %56 = load i8* %i, align 1, !dbg !464           ; [#uses=1 type=i8] [debug line = 31:21]
  %57 = add i8 %56, 1, !dbg !464                  ; [#uses=1 type=i8] [debug line = 31:21]
  store i8 %57, i8* %i, align 1, !dbg !464        ; [debug line = 31:21]
  br label %35, !dbg !464                         ; [debug line = 31:21]

; <label>:58                                      ; preds = %35
  %59 = getelementptr inbounds [16 x i8]* %buf, i32 0, i32 0, !dbg !465 ; [#uses=1 type=i8*] [debug line = 35:6]
  call void @aes256_encrypt_ecb(%struct.aes256_context* @aes256cbc.ctx, i8* %59), !dbg !465 ; [debug line = 35:6]
  store i8 0, i8* %i, align 1, !dbg !466          ; [debug line = 37:10]
  br label %60, !dbg !466                         ; [debug line = 37:10]

; <label>:60                                      ; preds = %72, %58
  %61 = load i8* %i, align 1, !dbg !466           ; [#uses=1 type=i8] [debug line = 37:10]
  %62 = zext i8 %61 to i32, !dbg !466             ; [#uses=1 type=i32] [debug line = 37:10]
  %63 = icmp slt i32 %62, 16, !dbg !466           ; [#uses=1 type=i1] [debug line = 37:10]
  br i1 %63, label %64, label %75, !dbg !466      ; [debug line = 37:10]

; <label>:64                                      ; preds = %60
  %65 = load i8* %i, align 1, !dbg !468           ; [#uses=1 type=i8] [debug line = 37:26]
  %66 = zext i8 %65 to i64, !dbg !468             ; [#uses=1 type=i64] [debug line = 37:26]
  %67 = getelementptr inbounds [16 x i8]* %buf, i32 0, i64 %66, !dbg !468 ; [#uses=1 type=i8*] [debug line = 37:26]
  %68 = load i8* %67, align 1, !dbg !468          ; [#uses=1 type=i8] [debug line = 37:26]
  %69 = load i8* %i, align 1, !dbg !468           ; [#uses=1 type=i8] [debug line = 37:26]
  %70 = zext i8 %69 to i64, !dbg !468             ; [#uses=1 type=i64] [debug line = 37:26]
  %71 = getelementptr inbounds [16 x i8]* @aes256cbc.xorv, i32 0, i64 %70, !dbg !468 ; [#uses=1 type=i8*] [debug line = 37:26]
  store i8 %68, i8* %71, align 1, !dbg !468       ; [debug line = 37:26]
  br label %72, !dbg !470                         ; [debug line = 37:44]

; <label>:72                                      ; preds = %64
  %73 = load i8* %i, align 1, !dbg !471           ; [#uses=1 type=i8] [debug line = 37:19]
  %74 = add i8 %73, 1, !dbg !471                  ; [#uses=1 type=i8] [debug line = 37:19]
  store i8 %74, i8* %i, align 1, !dbg !471        ; [debug line = 37:19]
  br label %60, !dbg !471                         ; [debug line = 37:19]

; <label>:75                                      ; preds = %60
  %76 = load i8** %1, align 8, !dbg !472          ; [#uses=1 type=i8*] [debug line = 39:6]
  %77 = load i32* %4, align 4, !dbg !472          ; [#uses=1 type=i32] [debug line = 39:6]
  %78 = zext i32 %77 to i64, !dbg !472            ; [#uses=1 type=i64] [debug line = 39:6]
  %79 = getelementptr inbounds i8* %76, i64 %78, !dbg !472 ; [#uses=1 type=i8*] [debug line = 39:6]
  %80 = getelementptr inbounds [16 x i8]* %buf, i32 0, i32 0, !dbg !472 ; [#uses=1 type=i8*] [debug line = 39:6]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 16, i32 1, i1 false), !dbg !472 ; [debug line = 39:6]
  br label %159, !dbg !473                        ; [debug line = 40:6]

; <label>:81                                      ; preds = %0
  %82 = getelementptr inbounds [16 x i8]* %buf, i32 0, i32 0, !dbg !474 ; [#uses=1 type=i8*] [debug line = 42:6]
  %83 = load i8** %1, align 8, !dbg !474          ; [#uses=1 type=i8*] [debug line = 42:6]
  %84 = load i32* %3, align 4, !dbg !474          ; [#uses=1 type=i32] [debug line = 42:6]
  %85 = zext i32 %84 to i64, !dbg !474            ; [#uses=1 type=i64] [debug line = 42:6]
  %86 = getelementptr inbounds i8* %83, i64 %85, !dbg !474 ; [#uses=1 type=i8*] [debug line = 42:6]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %86, i64 16, i32 1, i1 false), !dbg !474 ; [debug line = 42:6]
  store i8 0, i8* %i, align 1, !dbg !475          ; [debug line = 44:10]
  br label %87, !dbg !475                         ; [debug line = 44:10]

; <label>:87                                      ; preds = %99, %81
  %88 = load i8* %i, align 1, !dbg !475           ; [#uses=1 type=i8] [debug line = 44:10]
  %89 = zext i8 %88 to i32, !dbg !475             ; [#uses=1 type=i32] [debug line = 44:10]
  %90 = icmp slt i32 %89, 16, !dbg !475           ; [#uses=1 type=i1] [debug line = 44:10]
  br i1 %90, label %91, label %102, !dbg !475     ; [debug line = 44:10]

; <label>:91                                      ; preds = %87
  %92 = load i8* %i, align 1, !dbg !477           ; [#uses=1 type=i8] [debug line = 44:26]
  %93 = zext i8 %92 to i64, !dbg !477             ; [#uses=1 type=i64] [debug line = 44:26]
  %94 = getelementptr inbounds [16 x i8]* %buf, i32 0, i64 %93, !dbg !477 ; [#uses=1 type=i8*] [debug line = 44:26]
  %95 = load i8* %94, align 1, !dbg !477          ; [#uses=1 type=i8] [debug line = 44:26]
  %96 = load i8* %i, align 1, !dbg !477           ; [#uses=1 type=i8] [debug line = 44:26]
  %97 = zext i8 %96 to i64, !dbg !477             ; [#uses=1 type=i64] [debug line = 44:26]
  %98 = getelementptr inbounds [16 x i8]* @aes256cbc.lastbuf, i32 0, i64 %97, !dbg !477 ; [#uses=1 type=i8*] [debug line = 44:26]
  store i8 %95, i8* %98, align 1, !dbg !477       ; [debug line = 44:26]
  br label %99, !dbg !479                         ; [debug line = 44:47]

; <label>:99                                      ; preds = %91
  %100 = load i8* %i, align 1, !dbg !480          ; [#uses=1 type=i8] [debug line = 44:19]
  %101 = add i8 %100, 1, !dbg !480                ; [#uses=1 type=i8] [debug line = 44:19]
  store i8 %101, i8* %i, align 1, !dbg !480       ; [debug line = 44:19]
  br label %87, !dbg !480                         ; [debug line = 44:19]

; <label>:102                                     ; preds = %87
  %103 = getelementptr inbounds [16 x i8]* %buf, i32 0, i32 0, !dbg !481 ; [#uses=1 type=i8*] [debug line = 46:6]
  call void @aes256_decrypt_ecb(%struct.aes256_context* @aes256cbc.ctx, i8* %103), !dbg !481 ; [debug line = 46:6]
  store i8 0, i8* %i, align 1, !dbg !482          ; [debug line = 48:10]
  br label %104, !dbg !482                        ; [debug line = 48:10]

; <label>:104                                     ; preds = %124, %102
  %105 = load i8* %i, align 1, !dbg !482          ; [#uses=1 type=i8] [debug line = 48:10]
  %106 = zext i8 %105 to i32, !dbg !482           ; [#uses=1 type=i32] [debug line = 48:10]
  %107 = icmp slt i32 %106, 16, !dbg !482         ; [#uses=1 type=i1] [debug line = 48:10]
  br i1 %107, label %108, label %127, !dbg !482   ; [debug line = 48:10]

; <label>:108                                     ; preds = %104
  %109 = load i8* %i, align 1, !dbg !484          ; [#uses=1 type=i8] [debug line = 49:7]
  %110 = zext i8 %109 to i64, !dbg !484           ; [#uses=1 type=i64] [debug line = 49:7]
  %111 = getelementptr inbounds [16 x i8]* %buf, i32 0, i64 %110, !dbg !484 ; [#uses=1 type=i8*] [debug line = 49:7]
  %112 = load i8* %111, align 1, !dbg !484        ; [#uses=1 type=i8] [debug line = 49:7]
  %113 = zext i8 %112 to i32, !dbg !484           ; [#uses=1 type=i32] [debug line = 49:7]
  %114 = load i8* %i, align 1, !dbg !484          ; [#uses=1 type=i8] [debug line = 49:7]
  %115 = zext i8 %114 to i64, !dbg !484           ; [#uses=1 type=i64] [debug line = 49:7]
  %116 = getelementptr inbounds [16 x i8]* @aes256cbc.xorv, i32 0, i64 %115, !dbg !484 ; [#uses=1 type=i8*] [debug line = 49:7]
  %117 = load i8* %116, align 1, !dbg !484        ; [#uses=1 type=i8] [debug line = 49:7]
  %118 = zext i8 %117 to i32, !dbg !484           ; [#uses=1 type=i32] [debug line = 49:7]
  %119 = xor i32 %113, %118, !dbg !484            ; [#uses=1 type=i32] [debug line = 49:7]
  %120 = trunc i32 %119 to i8, !dbg !484          ; [#uses=1 type=i8] [debug line = 49:7]
  %121 = load i8* %i, align 1, !dbg !484          ; [#uses=1 type=i8] [debug line = 49:7]
  %122 = zext i8 %121 to i64, !dbg !484           ; [#uses=1 type=i64] [debug line = 49:7]
  %123 = getelementptr inbounds [16 x i8]* %buf, i32 0, i64 %122, !dbg !484 ; [#uses=1 type=i8*] [debug line = 49:7]
  store i8 %120, i8* %123, align 1, !dbg !484     ; [debug line = 49:7]
  br label %124, !dbg !486                        ; [debug line = 50:6]

; <label>:124                                     ; preds = %108
  %125 = load i8* %i, align 1, !dbg !487          ; [#uses=1 type=i8] [debug line = 48:21]
  %126 = add i8 %125, 1, !dbg !487                ; [#uses=1 type=i8] [debug line = 48:21]
  store i8 %126, i8* %i, align 1, !dbg !487       ; [debug line = 48:21]
  br label %104, !dbg !487                        ; [debug line = 48:21]

; <label>:127                                     ; preds = %104
  store i8 0, i8* %i, align 1, !dbg !488          ; [debug line = 52:10]
  br label %128, !dbg !488                        ; [debug line = 52:10]

; <label>:128                                     ; preds = %140, %127
  %129 = load i8* %i, align 1, !dbg !488          ; [#uses=1 type=i8] [debug line = 52:10]
  %130 = zext i8 %129 to i32, !dbg !488           ; [#uses=1 type=i32] [debug line = 52:10]
  %131 = icmp slt i32 %130, 16, !dbg !488         ; [#uses=1 type=i1] [debug line = 52:10]
  br i1 %131, label %132, label %143, !dbg !488   ; [debug line = 52:10]

; <label>:132                                     ; preds = %128
  %133 = load i8* %i, align 1, !dbg !490          ; [#uses=1 type=i8] [debug line = 52:26]
  %134 = zext i8 %133 to i64, !dbg !490           ; [#uses=1 type=i64] [debug line = 52:26]
  %135 = getelementptr inbounds [16 x i8]* @aes256cbc.lastbuf, i32 0, i64 %134, !dbg !490 ; [#uses=1 type=i8*] [debug line = 52:26]
  %136 = load i8* %135, align 1, !dbg !490        ; [#uses=1 type=i8] [debug line = 52:26]
  %137 = load i8* %i, align 1, !dbg !490          ; [#uses=1 type=i8] [debug line = 52:26]
  %138 = zext i8 %137 to i64, !dbg !490           ; [#uses=1 type=i64] [debug line = 52:26]
  %139 = getelementptr inbounds [16 x i8]* @aes256cbc.xorv, i32 0, i64 %138, !dbg !490 ; [#uses=1 type=i8*] [debug line = 52:26]
  store i8 %136, i8* %139, align 1, !dbg !490     ; [debug line = 52:26]
  br label %140, !dbg !492                        ; [debug line = 52:48]

; <label>:140                                     ; preds = %132
  %141 = load i8* %i, align 1, !dbg !493          ; [#uses=1 type=i8] [debug line = 52:19]
  %142 = add i8 %141, 1, !dbg !493                ; [#uses=1 type=i8] [debug line = 52:19]
  store i8 %142, i8* %i, align 1, !dbg !493       ; [debug line = 52:19]
  br label %128, !dbg !493                        ; [debug line = 52:19]

; <label>:143                                     ; preds = %128
  %144 = load i8** %1, align 8, !dbg !494         ; [#uses=1 type=i8*] [debug line = 54:6]
  %145 = load i32* %4, align 4, !dbg !494         ; [#uses=1 type=i32] [debug line = 54:6]
  %146 = zext i32 %145 to i64, !dbg !494          ; [#uses=1 type=i64] [debug line = 54:6]
  %147 = getelementptr inbounds i8* %144, i64 %146, !dbg !494 ; [#uses=1 type=i8*] [debug line = 54:6]
  %148 = getelementptr inbounds [16 x i8]* %buf, i32 0, i32 0, !dbg !494 ; [#uses=1 type=i8*] [debug line = 54:6]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %147, i8* %148, i64 16, i32 1, i1 false), !dbg !494 ; [debug line = 54:6]
  br label %159, !dbg !495                        ; [debug line = 55:6]

; <label>:149                                     ; preds = %0
  %150 = load i8** %1, align 8, !dbg !496         ; [#uses=1 type=i8*] [debug line = 57:6]
  %151 = load i32* %3, align 4, !dbg !496         ; [#uses=1 type=i32] [debug line = 57:6]
  %152 = zext i32 %151 to i64, !dbg !496          ; [#uses=1 type=i64] [debug line = 57:6]
  %153 = getelementptr inbounds i8* %150, i64 %152, !dbg !496 ; [#uses=1 type=i8*] [debug line = 57:6]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([16 x i8]* @aes256cbc.iv, i32 0, i32 0), i8* %153, i64 16, i32 1, i1 false), !dbg !496 ; [debug line = 57:6]
  br label %159, !dbg !497                        ; [debug line = 58:6]

; <label>:154                                     ; preds = %0
  %155 = load i8** %1, align 8, !dbg !498         ; [#uses=1 type=i8*] [debug line = 60:6]
  %156 = load i32* %3, align 4, !dbg !498         ; [#uses=1 type=i32] [debug line = 60:6]
  %157 = zext i32 %156 to i64, !dbg !498          ; [#uses=1 type=i64] [debug line = 60:6]
  %158 = getelementptr inbounds i8* %155, i64 %157, !dbg !498 ; [#uses=1 type=i8*] [debug line = 60:6]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([32 x i8]* @aes256cbc.key, i32 0, i32 0), i8* %158, i64 32, i32 1, i1 false), !dbg !498 ; [debug line = 60:6]
  br label %159, !dbg !499                        ; [debug line = 61:6]

; <label>:159                                     ; preds = %154, %149, %143, %75, %28, %0
  ret void, !dbg !500                             ; [debug line = 63:1]
}

; [#uses=5]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=6]
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

!llvm.dbg.cu = !{!0, !56}
!opencl.kernels = !{!100, !107, !113, !115, !116, !119, !123, !126, !127, !128, !130, !131, !132, !133, !139, !140}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/jd/workspace/aes256cbc/solution1/.autopilot/db/aes256ecb.pragma.2.c", metadata !"/home/jd/workspace", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !48} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !24, metadata !27, metadata !28, metadata !29, metadata !32, metadata !35, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !47}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"aes256_init", metadata !"aes256_init", metadata !"", metadata !6, i32 339, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.aes256_context*, i8*)* @aes256_init, null, null, metadata !22, i32 340} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"aes256cbc/src/aes256ecb.c", metadata !"/home/jd/workspace", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !21}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786454, null, metadata !"aes256_context", metadata !6, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 786451, null, metadata !"", metadata !12, i32 28, i64 768, i64 8, i32 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!12 = metadata !{i32 786473, metadata !"aes256cbc/src/aes256ecb.h", metadata !"/home/jd/workspace", null} ; [ DW_TAG_file_type ]
!13 = metadata !{metadata !14, metadata !19, metadata !20}
!14 = metadata !{i32 786445, metadata !11, metadata !"key", metadata !12, i32 29, i64 256, i64 8, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ]
!15 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !16, metadata !17, i32 0, i32 0} ; [ DW_TAG_array_type ]
!16 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!19 = metadata !{i32 786445, metadata !11, metadata !"enckey", metadata !12, i32 30, i64 256, i64 8, i64 256, i32 0, metadata !15} ; [ DW_TAG_member ]
!20 = metadata !{i32 786445, metadata !11, metadata !"deckey", metadata !12, i32 31, i64 256, i64 8, i64 512, i32 0, metadata !15} ; [ DW_TAG_member ]
!21 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!24 = metadata !{i32 786478, i32 0, metadata !6, metadata !"aes256_done", metadata !"aes256_done", metadata !"", metadata !6, i32 349, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.aes256_context*)* @aes256_done, null, null, metadata !22, i32 350} ; [ DW_TAG_subprogram ]
!25 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!26 = metadata !{null, metadata !9}
!27 = metadata !{i32 786478, i32 0, metadata !6, metadata !"aes256_encrypt_ecb", metadata !"aes256_encrypt_ecb", metadata !"", metadata !6, i32 358, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.aes256_context*, i8*)* @aes256_encrypt_ecb, null, null, metadata !22, i32 359} ; [ DW_TAG_subprogram ]
!28 = metadata !{i32 786478, i32 0, metadata !6, metadata !"aes256_decrypt_ecb", metadata !"aes256_decrypt_ecb", metadata !"", metadata !6, i32 378, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.aes256_context*, i8*)* @aes256_decrypt_ecb, null, null, metadata !22, i32 379} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786478, i32 0, metadata !6, metadata !"aes_mixColumns_inv", metadata !"aes_mixColumns_inv", metadata !"", metadata !6, i32 270, metadata !30, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_mixColumns_inv, null, null, metadata !22, i32 271} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!31 = metadata !{null, metadata !21}
!32 = metadata !{i32 786478, i32 0, metadata !6, metadata !"rj_xtime", metadata !"rj_xtime", metadata !"", metadata !6, i32 187, metadata !33, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i8)* @rj_xtime, null, null, metadata !22, i32 188} ; [ DW_TAG_subprogram ]
!33 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!34 = metadata !{metadata !16, metadata !16}
!35 = metadata !{i32 786478, i32 0, metadata !6, metadata !"aes_expandDecKey", metadata !"aes_expandDecKey", metadata !"", metadata !6, i32 315, metadata !36, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*)* @aes_expandDecKey, null, null, metadata !22, i32 316} ; [ DW_TAG_subprogram ]
!36 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!37 = metadata !{null, metadata !21, metadata !21}
!38 = metadata !{i32 786478, i32 0, metadata !6, metadata !"aes_subBytes_inv", metadata !"aes_subBytes_inv", metadata !"", metadata !6, i32 202, metadata !30, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_subBytes_inv, null, null, metadata !22, i32 203} ; [ DW_TAG_subprogram ]
!39 = metadata !{i32 786478, i32 0, metadata !6, metadata !"aes_shiftRows_inv", metadata !"aes_shiftRows_inv", metadata !"", metadata !6, i32 239, metadata !30, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_shiftRows_inv, null, null, metadata !22, i32 240} ; [ DW_TAG_subprogram ]
!40 = metadata !{i32 786478, i32 0, metadata !6, metadata !"aes_addRoundKey", metadata !"aes_addRoundKey", metadata !"", metadata !6, i32 210, metadata !36, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*)* @aes_addRoundKey, null, null, metadata !22, i32 211} ; [ DW_TAG_subprogram ]
!41 = metadata !{i32 786478, i32 0, metadata !6, metadata !"aes_mixColumns", metadata !"aes_mixColumns", metadata !"", metadata !6, i32 251, metadata !30, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_mixColumns, null, null, metadata !22, i32 252} ; [ DW_TAG_subprogram ]
!42 = metadata !{i32 786478, i32 0, metadata !6, metadata !"aes_shiftRows", metadata !"aes_shiftRows", metadata !"", metadata !6, i32 227, metadata !30, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_shiftRows, null, null, metadata !22, i32 228} ; [ DW_TAG_subprogram ]
!43 = metadata !{i32 786478, i32 0, metadata !6, metadata !"aes_subBytes", metadata !"aes_subBytes", metadata !"", metadata !6, i32 194, metadata !30, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_subBytes, null, null, metadata !22, i32 195} ; [ DW_TAG_subprogram ]
!44 = metadata !{i32 786478, i32 0, metadata !6, metadata !"aes_addRoundKey_cpy", metadata !"aes_addRoundKey_cpy", metadata !"", metadata !6, i32 218, metadata !45, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i8*)* @aes_addRoundKey_cpy, null, null, metadata !22, i32 219} ; [ DW_TAG_subprogram ]
!45 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!46 = metadata !{null, metadata !21, metadata !21, metadata !21}
!47 = metadata !{i32 786478, i32 0, metadata !6, metadata !"aes_expandEncKey", metadata !"aes_expandEncKey", metadata !"", metadata !6, i32 292, metadata !36, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*)* @aes_expandEncKey, null, null, metadata !22, i32 293} ; [ DW_TAG_subprogram ]
!48 = metadata !{metadata !49}
!49 = metadata !{metadata !50, metadata !55}
!50 = metadata !{i32 786484, i32 0, null, metadata !"sbox", metadata !"sbox", metadata !"", metadata !6, i32 47, metadata !51, i32 1, i32 1, [256 x i8]* @sbox} ; [ DW_TAG_variable ]
!51 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !52, metadata !53, i32 0, i32 0} ; [ DW_TAG_array_type ]
!52 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_const_type ]
!53 = metadata !{metadata !54}
!54 = metadata !{i32 786465, i64 0, i64 255}      ; [ DW_TAG_subrange_type ]
!55 = metadata !{i32 786484, i32 0, null, metadata !"sboxinv", metadata !"sboxinv", metadata !"", metadata !6, i32 82, metadata !51, i32 1, i32 1, [256 x i8]* @sboxinv} ; [ DW_TAG_variable ]
!56 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/jd/workspace/aes256cbc/solution1/.autopilot/db/aes256cbc.pragma.2.c", metadata !"/home/jd/workspace", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !57, metadata !1, metadata !67, metadata !76} ; [ DW_TAG_compile_unit ]
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !59}
!59 = metadata !{i32 786436, null, metadata !"", metadata !60, i32 5, i64 3, i64 4, i32 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!60 = metadata !{i32 786473, metadata !"aes256cbc/src/aes256cbc.h", metadata !"/home/jd/workspace", null} ; [ DW_TAG_file_type ]
!61 = metadata !{metadata !62, metadata !63, metadata !64, metadata !65, metadata !66}
!62 = metadata !{i32 786472, metadata !"RESET", i64 0} ; [ DW_TAG_enumerator ]
!63 = metadata !{i32 786472, metadata !"ENCRYPT", i64 1} ; [ DW_TAG_enumerator ]
!64 = metadata !{i32 786472, metadata !"DECRYPT", i64 2} ; [ DW_TAG_enumerator ]
!65 = metadata !{i32 786472, metadata !"SET_IV", i64 3} ; [ DW_TAG_enumerator ]
!66 = metadata !{i32 786472, metadata !"SET_KEY", i64 4} ; [ DW_TAG_enumerator ]
!67 = metadata !{metadata !68}
!68 = metadata !{metadata !69}
!69 = metadata !{i32 786478, i32 0, metadata !70, metadata !"aes256cbc", metadata !"aes256cbc", metadata !"", metadata !70, i32 8, metadata !71, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i3, i32, i32)* @aes256cbc, null, null, metadata !22, i32 8} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 786473, metadata !"aes256cbc/src/aes256cbc.c", metadata !"/home/jd/workspace", null} ; [ DW_TAG_file_type ]
!71 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{null, metadata !21, metadata !73, metadata !74, metadata !74}
!73 = metadata !{i32 786454, null, metadata !"ciphermode_t", metadata !70, i32 5, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ]
!74 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !70, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ]
!75 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!76 = metadata !{metadata !77}
!77 = metadata !{metadata !78, metadata !82, metadata !83, metadata !84, metadata !85, metadata !92, metadata !95, metadata !96, metadata !97}
!78 = metadata !{i32 786484, i32 0, metadata !69, metadata !"lastbuf", metadata !"lastbuf", metadata !"", metadata !70, i32 16, metadata !79, i32 1, i32 1, [16 x i8]* @aes256cbc.lastbuf} ; [ DW_TAG_variable ]
!79 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !16, metadata !80, i32 0, i32 0} ; [ DW_TAG_array_type ]
!80 = metadata !{metadata !81}
!81 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!82 = metadata !{i32 786484, i32 0, metadata !69, metadata !"iv", metadata !"iv", metadata !"", metadata !70, i32 17, metadata !79, i32 1, i32 1, [16 x i8]* @aes256cbc.iv} ; [ DW_TAG_variable ]
!83 = metadata !{i32 786484, i32 0, metadata !69, metadata !"xorv", metadata !"xorv", metadata !"", metadata !70, i32 18, metadata !79, i32 1, i32 1, [16 x i8]* @aes256cbc.xorv} ; [ DW_TAG_variable ]
!84 = metadata !{i32 786484, i32 0, metadata !69, metadata !"key", metadata !"key", metadata !"", metadata !70, i32 19, metadata !15, i32 1, i32 1, [32 x i8]* @aes256cbc.key} ; [ DW_TAG_variable ]
!85 = metadata !{i32 786484, i32 0, metadata !69, metadata !"ctx", metadata !"ctx", metadata !"", metadata !70, i32 20, metadata !86, i32 1, i32 1, %struct.aes256_context* @aes256cbc.ctx} ; [ DW_TAG_variable ]
!86 = metadata !{i32 786454, null, metadata !"aes256_context", metadata !70, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_typedef ]
!87 = metadata !{i32 786451, null, metadata !"", metadata !12, i32 28, i64 768, i64 8, i32 0, i32 0, null, metadata !88, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!88 = metadata !{metadata !89, metadata !90, metadata !91}
!89 = metadata !{i32 786445, metadata !87, metadata !"key", metadata !12, i32 29, i64 256, i64 8, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ]
!90 = metadata !{i32 786445, metadata !87, metadata !"enckey", metadata !12, i32 30, i64 256, i64 8, i64 256, i32 0, metadata !15} ; [ DW_TAG_member ]
!91 = metadata !{i32 786445, metadata !87, metadata !"deckey", metadata !12, i32 31, i64 256, i64 8, i64 512, i32 0, metadata !15} ; [ DW_TAG_member ]
!92 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !93, i32 320, metadata !94, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stdin_} ; [ DW_TAG_variable ]
!93 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/jd/workspace", null} ; [ DW_TAG_file_type ]
!94 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !93, i32 318, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!95 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !93, i32 321, metadata !94, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stdout_} ; [ DW_TAG_variable ]
!96 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !93, i32 322, metadata !94, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stderr_} ; [ DW_TAG_variable ]
!97 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !98, i32 26, metadata !99, i32 0, i32 1, i32* @sys_nerr} ; [ DW_TAG_variable ]
!98 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/jd/workspace", null} ; [ DW_TAG_file_type ]
!99 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!100 = metadata !{void (%struct.aes256_context*, i8*)* @aes256_init, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106}
!101 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!102 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!103 = metadata !{metadata !"kernel_arg_type", metadata !"aes256_context*", metadata !"uchar*"}
!104 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!105 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"k"}
!106 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!107 = metadata !{void (%struct.aes256_context*)* @aes256_done, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !106}
!108 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!109 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!110 = metadata !{metadata !"kernel_arg_type", metadata !"aes256_context*"}
!111 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!112 = metadata !{metadata !"kernel_arg_name", metadata !"ctx"}
!113 = metadata !{void (%struct.aes256_context*, i8*)* @aes256_encrypt_ecb, metadata !101, metadata !102, metadata !103, metadata !104, metadata !114, metadata !106}
!114 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"buf"}
!115 = metadata !{void (%struct.aes256_context*, i8*)* @aes256_decrypt_ecb, metadata !101, metadata !102, metadata !103, metadata !104, metadata !114, metadata !106}
!116 = metadata !{void (i8*)* @aes_mixColumns_inv, metadata !108, metadata !109, metadata !117, metadata !111, metadata !118, metadata !106}
!117 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*"}
!118 = metadata !{metadata !"kernel_arg_name", metadata !"buf"}
!119 = metadata !{i8 (i8)* @rj_xtime, metadata !120, metadata !109, metadata !121, metadata !111, metadata !122, metadata !106}
!120 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!121 = metadata !{metadata !"kernel_arg_type", metadata !"uchar"}
!122 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!123 = metadata !{void (i8*, i8*)* @aes_expandDecKey, metadata !101, metadata !102, metadata !124, metadata !104, metadata !125, metadata !106}
!124 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*"}
!125 = metadata !{metadata !"kernel_arg_name", metadata !"k", metadata !"rc"}
!126 = metadata !{void (i8*)* @aes_subBytes_inv, metadata !108, metadata !109, metadata !117, metadata !111, metadata !118, metadata !106}
!127 = metadata !{void (i8*)* @aes_shiftRows_inv, metadata !108, metadata !109, metadata !117, metadata !111, metadata !118, metadata !106}
!128 = metadata !{void (i8*, i8*)* @aes_addRoundKey, metadata !101, metadata !102, metadata !124, metadata !104, metadata !129, metadata !106}
!129 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"key"}
!130 = metadata !{void (i8*)* @aes_mixColumns, metadata !108, metadata !109, metadata !117, metadata !111, metadata !118, metadata !106}
!131 = metadata !{void (i8*)* @aes_shiftRows, metadata !108, metadata !109, metadata !117, metadata !111, metadata !118, metadata !106}
!132 = metadata !{void (i8*)* @aes_subBytes, metadata !108, metadata !109, metadata !117, metadata !111, metadata !118, metadata !106}
!133 = metadata !{void (i8*, i8*, i8*)* @aes_addRoundKey_cpy, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !106}
!134 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!135 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!136 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"uchar*"}
!137 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!138 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"key", metadata !"cpk"}
!139 = metadata !{void (i8*, i8*)* @aes_expandEncKey, metadata !101, metadata !102, metadata !124, metadata !104, metadata !125, metadata !106}
!140 = metadata !{void (i8*, i3, i32, i32)* @aes256cbc, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !106}
!141 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 0}
!142 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!143 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"ciphermode_t", metadata !"uint32_t", metadata !"uint32_t"}
!144 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!145 = metadata !{metadata !"kernel_arg_name", metadata !"memptr", metadata !"mode", metadata !"inbuf_addr", metadata !"outbuf_addr"}
!146 = metadata !{i32 786689, metadata !5, metadata !"ctx", metadata !6, i32 16777555, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!147 = metadata !{i32 339, i32 34, metadata !5, null}
!148 = metadata !{i32 786689, metadata !5, metadata !"k", metadata !6, i32 33554771, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!149 = metadata !{i32 339, i32 54, metadata !5, null}
!150 = metadata !{i32 786688, metadata !151, metadata !"rcon", metadata !6, i32 341, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!151 = metadata !{i32 786443, metadata !5, i32 340, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 341, i32 19, metadata !151, null}
!153 = metadata !{i32 341, i32 27, metadata !151, null}
!154 = metadata !{i32 786688, metadata !151, metadata !"i", metadata !6, i32 342, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!155 = metadata !{i32 342, i32 28, metadata !151, null}
!156 = metadata !{i32 344, i32 10, metadata !157, null}
!157 = metadata !{i32 786443, metadata !151, i32 344, i32 5, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!158 = metadata !{i32 344, i32 44, metadata !157, null}
!159 = metadata !{i32 344, i32 39, metadata !157, null}
!160 = metadata !{i32 345, i32 10, metadata !161, null}
!161 = metadata !{i32 786443, metadata !151, i32 345, i32 5, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 345, i32 23, metadata !161, null}
!163 = metadata !{i32 346, i32 1, metadata !151, null}
!164 = metadata !{i32 786689, metadata !47, metadata !"k", metadata !6, i32 16777508, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!165 = metadata !{i32 292, i32 45, metadata !47, null}
!166 = metadata !{i32 786689, metadata !47, metadata !"rc", metadata !6, i32 33554724, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!167 = metadata !{i32 292, i32 63, metadata !47, null}
!168 = metadata !{i32 786688, metadata !169, metadata !"i", metadata !6, i32 294, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!169 = metadata !{i32 786443, metadata !47, i32 293, i32 1, metadata !6, i32 28} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 294, i32 28, metadata !169, null}
!171 = metadata !{i32 296, i32 5, metadata !169, null}
!172 = metadata !{i32 297, i32 5, metadata !169, null}
!173 = metadata !{i32 298, i32 5, metadata !169, null}
!174 = metadata !{i32 299, i32 5, metadata !169, null}
!175 = metadata !{i32 300, i32 11, metadata !169, null}
!176 = metadata !{i32 302, i32 9, metadata !177, null}
!177 = metadata !{i32 786443, metadata !169, i32 302, i32 5, metadata !6, i32 29} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 302, i32 32, metadata !177, null}
!179 = metadata !{i32 302, i32 24, metadata !177, null}
!180 = metadata !{i32 304, i32 5, metadata !169, null}
!181 = metadata !{i32 305, i32 5, metadata !169, null}
!182 = metadata !{i32 306, i32 5, metadata !169, null}
!183 = metadata !{i32 307, i32 5, metadata !169, null}
!184 = metadata !{i32 309, i32 9, metadata !185, null}
!185 = metadata !{i32 786443, metadata !169, i32 309, i32 5, metadata !6, i32 30} ; [ DW_TAG_lexical_block ]
!186 = metadata !{i32 309, i32 33, metadata !185, null}
!187 = metadata !{i32 309, i32 25, metadata !185, null}
!188 = metadata !{i32 312, i32 1, metadata !169, null}
!189 = metadata !{i32 786689, metadata !24, metadata !"ctx", metadata !6, i32 16777565, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!190 = metadata !{i32 349, i32 34, metadata !24, null}
!191 = metadata !{i32 786688, metadata !192, metadata !"i", metadata !6, i32 351, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!192 = metadata !{i32 786443, metadata !24, i32 350, i32 1, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!193 = metadata !{i32 351, i32 28, metadata !192, null}
!194 = metadata !{i32 353, i32 10, metadata !195, null}
!195 = metadata !{i32 786443, metadata !192, i32 353, i32 5, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!196 = metadata !{i32 354, i32 9, metadata !195, null}
!197 = metadata !{i32 353, i32 39, metadata !195, null}
!198 = metadata !{i32 355, i32 1, metadata !192, null}
!199 = metadata !{i32 786689, metadata !27, metadata !"ctx", metadata !6, i32 16777574, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!200 = metadata !{i32 358, i32 41, metadata !27, null}
!201 = metadata !{i32 786689, metadata !27, metadata !"buf", metadata !6, i32 33554790, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!202 = metadata !{i32 358, i32 61, metadata !27, null}
!203 = metadata !{i32 786688, metadata !204, metadata !"i", metadata !6, i32 360, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!204 = metadata !{i32 786443, metadata !27, i32 359, i32 1, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!205 = metadata !{i32 360, i32 19, metadata !204, null}
!206 = metadata !{i32 786688, metadata !204, metadata !"rcon", metadata !6, i32 360, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!207 = metadata !{i32 360, i32 22, metadata !204, null}
!208 = metadata !{i32 362, i32 5, metadata !204, null}
!209 = metadata !{i32 363, i32 9, metadata !210, null}
!210 = metadata !{i32 786443, metadata !204, i32 363, i32 5, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!211 = metadata !{i32 365, i32 9, metadata !212, null}
!212 = metadata !{i32 786443, metadata !210, i32 364, i32 5, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!213 = metadata !{i32 366, i32 9, metadata !212, null}
!214 = metadata !{i32 367, i32 9, metadata !212, null}
!215 = metadata !{i32 368, i32 9, metadata !212, null}
!216 = metadata !{i32 368, i32 21, metadata !212, null}
!217 = metadata !{i32 369, i32 14, metadata !212, null}
!218 = metadata !{i32 369, i32 49, metadata !212, null}
!219 = metadata !{i32 370, i32 5, metadata !212, null}
!220 = metadata !{i32 363, i32 34, metadata !210, null}
!221 = metadata !{i32 371, i32 5, metadata !204, null}
!222 = metadata !{i32 372, i32 5, metadata !204, null}
!223 = metadata !{i32 373, i32 5, metadata !204, null}
!224 = metadata !{i32 374, i32 5, metadata !204, null}
!225 = metadata !{i32 375, i32 1, metadata !204, null}
!226 = metadata !{i32 786689, metadata !44, metadata !"buf", metadata !6, i32 16777434, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!227 = metadata !{i32 218, i32 48, metadata !44, null}
!228 = metadata !{i32 786689, metadata !44, metadata !"key", metadata !6, i32 33554650, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!229 = metadata !{i32 218, i32 68, metadata !44, null}
!230 = metadata !{i32 786689, metadata !44, metadata !"cpk", metadata !6, i32 50331866, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!231 = metadata !{i32 218, i32 88, metadata !44, null}
!232 = metadata !{i32 786688, metadata !233, metadata !"i", metadata !6, i32 220, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!233 = metadata !{i32 786443, metadata !44, i32 219, i32 1, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!234 = metadata !{i32 220, i32 28, metadata !233, null}
!235 = metadata !{i32 220, i32 34, metadata !233, null}
!236 = metadata !{i32 222, i32 5, metadata !233, null}
!237 = metadata !{i32 222, i32 17, metadata !233, null}
!238 = metadata !{i32 223, i32 1, metadata !233, null}
!239 = metadata !{i32 786689, metadata !43, metadata !"buf", metadata !6, i32 16777410, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!240 = metadata !{i32 194, i32 41, metadata !43, null}
!241 = metadata !{i32 786688, metadata !242, metadata !"i", metadata !6, i32 196, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!242 = metadata !{i32 786443, metadata !43, i32 195, i32 1, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!243 = metadata !{i32 196, i32 28, metadata !242, null}
!244 = metadata !{i32 196, i32 34, metadata !242, null}
!245 = metadata !{i32 198, i32 5, metadata !242, null}
!246 = metadata !{i32 198, i32 17, metadata !242, null}
!247 = metadata !{i32 199, i32 1, metadata !242, null}
!248 = metadata !{i32 786689, metadata !42, metadata !"buf", metadata !6, i32 16777443, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!249 = metadata !{i32 227, i32 42, metadata !42, null}
!250 = metadata !{i32 786688, metadata !251, metadata !"i", metadata !6, i32 229, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!251 = metadata !{i32 786443, metadata !42, i32 228, i32 1, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!252 = metadata !{i32 229, i32 28, metadata !251, null}
!253 = metadata !{i32 786688, metadata !251, metadata !"j", metadata !6, i32 229, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!254 = metadata !{i32 229, i32 31, metadata !251, null}
!255 = metadata !{i32 231, i32 5, metadata !251, null}
!256 = metadata !{i32 232, i32 5, metadata !251, null}
!257 = metadata !{i32 233, i32 5, metadata !251, null}
!258 = metadata !{i32 234, i32 5, metadata !251, null}
!259 = metadata !{i32 236, i32 1, metadata !251, null}
!260 = metadata !{i32 786689, metadata !41, metadata !"buf", metadata !6, i32 16777467, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!261 = metadata !{i32 251, i32 43, metadata !41, null}
!262 = metadata !{i32 786688, metadata !263, metadata !"i", metadata !6, i32 253, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!263 = metadata !{i32 786443, metadata !41, i32 252, i32 1, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!264 = metadata !{i32 253, i32 28, metadata !263, null}
!265 = metadata !{i32 786688, metadata !263, metadata !"a", metadata !6, i32 253, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!266 = metadata !{i32 253, i32 31, metadata !263, null}
!267 = metadata !{i32 786688, metadata !263, metadata !"b", metadata !6, i32 253, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!268 = metadata !{i32 253, i32 34, metadata !263, null}
!269 = metadata !{i32 786688, metadata !263, metadata !"c", metadata !6, i32 253, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!270 = metadata !{i32 253, i32 37, metadata !263, null}
!271 = metadata !{i32 786688, metadata !263, metadata !"d", metadata !6, i32 253, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!272 = metadata !{i32 253, i32 40, metadata !263, null}
!273 = metadata !{i32 786688, metadata !263, metadata !"e", metadata !6, i32 253, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!274 = metadata !{i32 253, i32 43, metadata !263, null}
!275 = metadata !{i32 255, i32 10, metadata !276, null}
!276 = metadata !{i32 786443, metadata !263, i32 255, i32 5, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!277 = metadata !{i32 257, i32 9, metadata !278, null}
!278 = metadata !{i32 786443, metadata !276, i32 256, i32 5, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!279 = metadata !{i32 258, i32 9, metadata !278, null}
!280 = metadata !{i32 259, i32 9, metadata !278, null}
!281 = metadata !{i32 260, i32 9, metadata !278, null}
!282 = metadata !{i32 261, i32 9, metadata !278, null}
!283 = metadata !{i32 262, i32 9, metadata !278, null}
!284 = metadata !{i32 262, i32 23, metadata !278, null}
!285 = metadata !{i32 263, i32 9, metadata !278, null}
!286 = metadata !{i32 263, i32 27, metadata !278, null}
!287 = metadata !{i32 264, i32 9, metadata !278, null}
!288 = metadata !{i32 264, i32 27, metadata !278, null}
!289 = metadata !{i32 265, i32 9, metadata !278, null}
!290 = metadata !{i32 265, i32 27, metadata !278, null}
!291 = metadata !{i32 266, i32 5, metadata !278, null}
!292 = metadata !{i32 255, i32 25, metadata !276, null}
!293 = metadata !{i32 267, i32 1, metadata !263, null}
!294 = metadata !{i32 786689, metadata !40, metadata !"buf", metadata !6, i32 16777426, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!295 = metadata !{i32 210, i32 44, metadata !40, null}
!296 = metadata !{i32 786689, metadata !40, metadata !"key", metadata !6, i32 33554642, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!297 = metadata !{i32 210, i32 64, metadata !40, null}
!298 = metadata !{i32 786688, metadata !299, metadata !"i", metadata !6, i32 212, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!299 = metadata !{i32 786443, metadata !40, i32 211, i32 1, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!300 = metadata !{i32 212, i32 28, metadata !299, null}
!301 = metadata !{i32 212, i32 34, metadata !299, null}
!302 = metadata !{i32 214, i32 5, metadata !299, null}
!303 = metadata !{i32 214, i32 17, metadata !299, null}
!304 = metadata !{i32 215, i32 1, metadata !299, null}
!305 = metadata !{i32 786689, metadata !28, metadata !"ctx", metadata !6, i32 16777594, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!306 = metadata !{i32 378, i32 41, metadata !28, null}
!307 = metadata !{i32 786689, metadata !28, metadata !"buf", metadata !6, i32 33554810, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!308 = metadata !{i32 378, i32 61, metadata !28, null}
!309 = metadata !{i32 786688, metadata !310, metadata !"i", metadata !6, i32 380, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!310 = metadata !{i32 786443, metadata !28, i32 379, i32 1, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!311 = metadata !{i32 380, i32 19, metadata !310, null}
!312 = metadata !{i32 786688, metadata !310, metadata !"rcon", metadata !6, i32 380, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!313 = metadata !{i32 380, i32 22, metadata !310, null}
!314 = metadata !{i32 382, i32 5, metadata !310, null}
!315 = metadata !{i32 383, i32 5, metadata !310, null}
!316 = metadata !{i32 384, i32 5, metadata !310, null}
!317 = metadata !{i32 386, i32 10, metadata !318, null}
!318 = metadata !{i32 786443, metadata !310, i32 386, i32 5, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!319 = metadata !{i32 388, i32 9, metadata !320, null}
!320 = metadata !{i32 786443, metadata !318, i32 387, i32 5, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!321 = metadata !{i32 390, i32 13, metadata !322, null}
!322 = metadata !{i32 786443, metadata !320, i32 389, i32 9, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!323 = metadata !{i32 391, i32 13, metadata !322, null}
!324 = metadata !{i32 392, i32 9, metadata !322, null}
!325 = metadata !{i32 393, i32 14, metadata !320, null}
!326 = metadata !{i32 394, i32 9, metadata !320, null}
!327 = metadata !{i32 395, i32 9, metadata !320, null}
!328 = metadata !{i32 396, i32 9, metadata !320, null}
!329 = metadata !{i32 397, i32 5, metadata !320, null}
!330 = metadata !{i32 398, i32 5, metadata !310, null}
!331 = metadata !{i32 399, i32 1, metadata !310, null}
!332 = metadata !{i32 786689, metadata !39, metadata !"buf", metadata !6, i32 16777455, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!333 = metadata !{i32 239, i32 46, metadata !39, null}
!334 = metadata !{i32 786688, metadata !335, metadata !"i", metadata !6, i32 241, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!335 = metadata !{i32 786443, metadata !39, i32 240, i32 1, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!336 = metadata !{i32 241, i32 28, metadata !335, null}
!337 = metadata !{i32 786688, metadata !335, metadata !"j", metadata !6, i32 241, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!338 = metadata !{i32 241, i32 31, metadata !335, null}
!339 = metadata !{i32 243, i32 5, metadata !335, null}
!340 = metadata !{i32 244, i32 5, metadata !335, null}
!341 = metadata !{i32 245, i32 5, metadata !335, null}
!342 = metadata !{i32 246, i32 5, metadata !335, null}
!343 = metadata !{i32 248, i32 1, metadata !335, null}
!344 = metadata !{i32 786689, metadata !38, metadata !"buf", metadata !6, i32 16777418, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!345 = metadata !{i32 202, i32 45, metadata !38, null}
!346 = metadata !{i32 786688, metadata !347, metadata !"i", metadata !6, i32 204, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!347 = metadata !{i32 786443, metadata !38, i32 203, i32 1, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!348 = metadata !{i32 204, i32 28, metadata !347, null}
!349 = metadata !{i32 204, i32 34, metadata !347, null}
!350 = metadata !{i32 206, i32 5, metadata !347, null}
!351 = metadata !{i32 206, i32 17, metadata !347, null}
!352 = metadata !{i32 207, i32 1, metadata !347, null}
!353 = metadata !{i32 786689, metadata !35, metadata !"k", metadata !6, i32 16777531, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!354 = metadata !{i32 315, i32 38, metadata !35, null}
!355 = metadata !{i32 786689, metadata !35, metadata !"rc", metadata !6, i32 33554747, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!356 = metadata !{i32 315, i32 56, metadata !35, null}
!357 = metadata !{i32 786688, metadata !358, metadata !"i", metadata !6, i32 317, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!358 = metadata !{i32 786443, metadata !35, i32 316, i32 1, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!359 = metadata !{i32 317, i32 19, metadata !358, null}
!360 = metadata !{i32 319, i32 9, metadata !361, null}
!361 = metadata !{i32 786443, metadata !358, i32 319, i32 5, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!362 = metadata !{i32 319, i32 33, metadata !361, null}
!363 = metadata !{i32 319, i32 25, metadata !361, null}
!364 = metadata !{i32 322, i32 5, metadata !358, null}
!365 = metadata !{i32 323, i32 5, metadata !358, null}
!366 = metadata !{i32 324, i32 5, metadata !358, null}
!367 = metadata !{i32 325, i32 5, metadata !358, null}
!368 = metadata !{i32 327, i32 9, metadata !369, null}
!369 = metadata !{i32 786443, metadata !358, i32 327, i32 5, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!370 = metadata !{i32 327, i32 32, metadata !369, null}
!371 = metadata !{i32 327, i32 24, metadata !369, null}
!372 = metadata !{i32 330, i32 5, metadata !358, null}
!373 = metadata !{i32 331, i32 5, metadata !358, null}
!374 = metadata !{i32 332, i32 5, metadata !358, null}
!375 = metadata !{i32 333, i32 5, metadata !358, null}
!376 = metadata !{i32 334, i32 5, metadata !358, null}
!377 = metadata !{i32 335, i32 1, metadata !358, null}
!378 = metadata !{i32 786689, metadata !29, metadata !"buf", metadata !6, i32 16777486, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!379 = metadata !{i32 270, i32 40, metadata !29, null}
!380 = metadata !{i32 786688, metadata !381, metadata !"i", metadata !6, i32 272, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!381 = metadata !{i32 786443, metadata !29, i32 271, i32 1, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!382 = metadata !{i32 272, i32 28, metadata !381, null}
!383 = metadata !{i32 786688, metadata !381, metadata !"a", metadata !6, i32 272, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!384 = metadata !{i32 272, i32 31, metadata !381, null}
!385 = metadata !{i32 786688, metadata !381, metadata !"b", metadata !6, i32 272, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!386 = metadata !{i32 272, i32 34, metadata !381, null}
!387 = metadata !{i32 786688, metadata !381, metadata !"c", metadata !6, i32 272, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!388 = metadata !{i32 272, i32 37, metadata !381, null}
!389 = metadata !{i32 786688, metadata !381, metadata !"d", metadata !6, i32 272, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!390 = metadata !{i32 272, i32 40, metadata !381, null}
!391 = metadata !{i32 786688, metadata !381, metadata !"e", metadata !6, i32 272, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!392 = metadata !{i32 272, i32 43, metadata !381, null}
!393 = metadata !{i32 786688, metadata !381, metadata !"x", metadata !6, i32 272, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!394 = metadata !{i32 272, i32 46, metadata !381, null}
!395 = metadata !{i32 786688, metadata !381, metadata !"y", metadata !6, i32 272, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!396 = metadata !{i32 272, i32 49, metadata !381, null}
!397 = metadata !{i32 786688, metadata !381, metadata !"z", metadata !6, i32 272, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!398 = metadata !{i32 272, i32 52, metadata !381, null}
!399 = metadata !{i32 274, i32 10, metadata !400, null}
!400 = metadata !{i32 786443, metadata !381, i32 274, i32 5, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!401 = metadata !{i32 276, i32 9, metadata !402, null}
!402 = metadata !{i32 786443, metadata !400, i32 275, i32 5, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!403 = metadata !{i32 277, i32 9, metadata !402, null}
!404 = metadata !{i32 278, i32 9, metadata !402, null}
!405 = metadata !{i32 279, i32 9, metadata !402, null}
!406 = metadata !{i32 280, i32 9, metadata !402, null}
!407 = metadata !{i32 281, i32 13, metadata !402, null}
!408 = metadata !{i32 282, i32 9, metadata !402, null}
!409 = metadata !{i32 282, i32 26, metadata !402, null}
!410 = metadata !{i32 283, i32 9, metadata !402, null}
!411 = metadata !{i32 283, i32 26, metadata !402, null}
!412 = metadata !{i32 284, i32 9, metadata !402, null}
!413 = metadata !{i32 284, i32 23, metadata !402, null}
!414 = metadata !{i32 285, i32 9, metadata !402, null}
!415 = metadata !{i32 285, i32 27, metadata !402, null}
!416 = metadata !{i32 286, i32 9, metadata !402, null}
!417 = metadata !{i32 286, i32 27, metadata !402, null}
!418 = metadata !{i32 287, i32 9, metadata !402, null}
!419 = metadata !{i32 287, i32 27, metadata !402, null}
!420 = metadata !{i32 288, i32 5, metadata !402, null}
!421 = metadata !{i32 274, i32 25, metadata !400, null}
!422 = metadata !{i32 289, i32 1, metadata !381, null}
!423 = metadata !{i32 786689, metadata !32, metadata !"x", metadata !6, i32 16777403, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!424 = metadata !{i32 187, i32 45, metadata !32, null}
!425 = metadata !{i32 786688, metadata !426, metadata !"y", metadata !6, i32 189, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!426 = metadata !{i32 786443, metadata !32, i32 188, i32 1, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!427 = metadata !{i32 189, i32 19, metadata !426, null}
!428 = metadata !{i32 189, i32 46, metadata !426, null}
!429 = metadata !{i32 190, i32 5, metadata !426, null}
!430 = metadata !{i32 786689, metadata !69, metadata !"memptr", metadata !70, i32 16777224, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!431 = metadata !{i32 8, i32 31, metadata !69, null}
!432 = metadata !{i32 786689, metadata !69, metadata !"mode", metadata !70, i32 33554440, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!433 = metadata !{i32 8, i32 52, metadata !69, null}
!434 = metadata !{i32 786689, metadata !69, metadata !"inbuf_addr", metadata !70, i32 50331656, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!435 = metadata !{i32 8, i32 67, metadata !69, null}
!436 = metadata !{i32 786689, metadata !69, metadata !"outbuf_addr", metadata !70, i32 67108872, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!437 = metadata !{i32 8, i32 88, metadata !69, null}
!438 = metadata !{i32 9, i32 1, metadata !439, null}
!439 = metadata !{i32 786443, metadata !69, i32 8, i32 101, metadata !70, i32 0} ; [ DW_TAG_lexical_block ]
!440 = metadata !{i32 10, i32 1, metadata !439, null}
!441 = metadata !{i32 11, i32 1, metadata !439, null}
!442 = metadata !{i32 12, i32 1, metadata !439, null}
!443 = metadata !{i32 13, i32 1, metadata !439, null}
!444 = metadata !{i32 786688, metadata !439, metadata !"buf", metadata !70, i32 15, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!445 = metadata !{i32 15, i32 16, metadata !439, null}
!446 = metadata !{i32 786688, metadata !439, metadata !"i", metadata !70, i32 21, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!447 = metadata !{i32 21, i32 19, metadata !439, null}
!448 = metadata !{i32 23, i32 5, metadata !439, null}
!449 = metadata !{i32 25, i32 10, metadata !450, null}
!450 = metadata !{i32 786443, metadata !451, i32 25, i32 6, metadata !70, i32 2} ; [ DW_TAG_lexical_block ]
!451 = metadata !{i32 786443, metadata !439, i32 23, i32 20, metadata !70, i32 1} ; [ DW_TAG_lexical_block ]
!452 = metadata !{i32 25, i32 26, metadata !453, null}
!453 = metadata !{i32 786443, metadata !450, i32 25, i32 24, metadata !70, i32 3} ; [ DW_TAG_lexical_block ]
!454 = metadata !{i32 25, i32 43, metadata !453, null}
!455 = metadata !{i32 25, i32 19, metadata !450, null}
!456 = metadata !{i32 26, i32 6, metadata !451, null}
!457 = metadata !{i32 27, i32 6, metadata !451, null}
!458 = metadata !{i32 29, i32 6, metadata !451, null}
!459 = metadata !{i32 31, i32 10, metadata !460, null}
!460 = metadata !{i32 786443, metadata !451, i32 31, i32 6, metadata !70, i32 4} ; [ DW_TAG_lexical_block ]
!461 = metadata !{i32 32, i32 7, metadata !462, null}
!462 = metadata !{i32 786443, metadata !460, i32 31, i32 26, metadata !70, i32 5} ; [ DW_TAG_lexical_block ]
!463 = metadata !{i32 33, i32 6, metadata !462, null}
!464 = metadata !{i32 31, i32 21, metadata !460, null}
!465 = metadata !{i32 35, i32 6, metadata !451, null}
!466 = metadata !{i32 37, i32 10, metadata !467, null}
!467 = metadata !{i32 786443, metadata !451, i32 37, i32 6, metadata !70, i32 6} ; [ DW_TAG_lexical_block ]
!468 = metadata !{i32 37, i32 26, metadata !469, null}
!469 = metadata !{i32 786443, metadata !467, i32 37, i32 24, metadata !70, i32 7} ; [ DW_TAG_lexical_block ]
!470 = metadata !{i32 37, i32 44, metadata !469, null}
!471 = metadata !{i32 37, i32 19, metadata !467, null}
!472 = metadata !{i32 39, i32 6, metadata !451, null}
!473 = metadata !{i32 40, i32 6, metadata !451, null}
!474 = metadata !{i32 42, i32 6, metadata !451, null}
!475 = metadata !{i32 44, i32 10, metadata !476, null}
!476 = metadata !{i32 786443, metadata !451, i32 44, i32 6, metadata !70, i32 8} ; [ DW_TAG_lexical_block ]
!477 = metadata !{i32 44, i32 26, metadata !478, null}
!478 = metadata !{i32 786443, metadata !476, i32 44, i32 24, metadata !70, i32 9} ; [ DW_TAG_lexical_block ]
!479 = metadata !{i32 44, i32 47, metadata !478, null}
!480 = metadata !{i32 44, i32 19, metadata !476, null}
!481 = metadata !{i32 46, i32 6, metadata !451, null}
!482 = metadata !{i32 48, i32 10, metadata !483, null}
!483 = metadata !{i32 786443, metadata !451, i32 48, i32 6, metadata !70, i32 10} ; [ DW_TAG_lexical_block ]
!484 = metadata !{i32 49, i32 7, metadata !485, null}
!485 = metadata !{i32 786443, metadata !483, i32 48, i32 26, metadata !70, i32 11} ; [ DW_TAG_lexical_block ]
!486 = metadata !{i32 50, i32 6, metadata !485, null}
!487 = metadata !{i32 48, i32 21, metadata !483, null}
!488 = metadata !{i32 52, i32 10, metadata !489, null}
!489 = metadata !{i32 786443, metadata !451, i32 52, i32 6, metadata !70, i32 12} ; [ DW_TAG_lexical_block ]
!490 = metadata !{i32 52, i32 26, metadata !491, null}
!491 = metadata !{i32 786443, metadata !489, i32 52, i32 24, metadata !70, i32 13} ; [ DW_TAG_lexical_block ]
!492 = metadata !{i32 52, i32 48, metadata !491, null}
!493 = metadata !{i32 52, i32 19, metadata !489, null}
!494 = metadata !{i32 54, i32 6, metadata !451, null}
!495 = metadata !{i32 55, i32 6, metadata !451, null}
!496 = metadata !{i32 57, i32 6, metadata !451, null}
!497 = metadata !{i32 58, i32 6, metadata !451, null}
!498 = metadata !{i32 60, i32 6, metadata !451, null}
!499 = metadata !{i32 61, i32 6, metadata !451, null}
!500 = metadata !{i32 63, i32 1, metadata !439, null}
