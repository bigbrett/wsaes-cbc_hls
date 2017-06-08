; ModuleID = '/home/brett/Thesis/Vivado_WS/aescbc/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xorv = internal unnamed_addr global [16 x i8] zeroinitializer, align 16 ; [#uses=5 type=[16 x i8]*]
@sboxinv = internal unnamed_addr constant [256 x i8] c"R\09j\D506\A58\BF@\A3\9E\81\F3\D7\FB|\E39\82\9B/\FF\874\8ECD\C4\DE\E9\CBT{\942\A6\C2#=\EEL\95\0BB\FA\C3N\08.\A1f(\D9$\B2v[\A2Im\8B\D1%r\F8\F6d\86h\98\16\D4\A4\5C\CC]e\B6\92lpHP\FD\ED\B9\DA^\15FW\A7\8D\9D\84\90\D8\AB\00\8C\BC\D3\0A\F7\E4X\05\B8\B3E\06\D0,\1E\8F\CA?\0F\02\C1\AF\BD\03\01\13\8Ak:\91\11AOg\DC\EA\97\F2\CF\CE\F0\B4\E6s\96\ACt\22\E7\AD5\85\E2\F97\E8\1Cu\DFnG\F1\1Aq\1D)\C5\89o\B7b\0E\AA\18\BE\1B\FCV>K\C6\D2y \9A\DB\C0\FEx\CDZ\F4\1F\DD\A83\88\07\C71\B1\12\10Y'\80\EC_`Q\7F\A9\19\B5J\0D-\E5z\9F\93\C9\9C\EF\A0\E0;M\AE*\F5\B0\C8\EB\BB<\83S\99a\17+\04~\BAw\D6&\E1i\14cU!\0C}", align 16 ; [#uses=2 type=[256 x i8]*]
@sbox = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 16 ; [#uses=18 type=[256 x i8]*]
@lastbuf = internal unnamed_addr global [16 x i8] zeroinitializer, align 16 ; [#uses=2 type=[16 x i8]*]
@key = internal unnamed_addr global [32 x i8] zeroinitializer, align 16 ; [#uses=2 type=[32 x i8]*]
@iv = internal unnamed_addr global [16 x i8] zeroinitializer, align 16 ; [#uses=2 type=[16 x i8]*]
@ctx.key = internal global [32 x i8] zeroinitializer ; [#uses=44 type=[32 x i8]*]
@ctx.enckey = internal unnamed_addr global [32 x i8] zeroinitializer ; [#uses=3 type=[32 x i8]*]
@ctx.deckey = internal global [32 x i8] zeroinitializer ; [#uses=4 type=[32 x i8]*]
@aescbc.str = internal unnamed_addr constant [7 x i8] c"aescbc\00" ; [#uses=1 type=[7 x i8]*]
@.str7 = private unnamed_addr constant [17 x i8] c"loop_dataoutclr2\00", align 1 ; [#uses=1 type=[17 x i8]*]
@.str6 = private unnamed_addr constant [12 x i8] c"loop_setkey\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str5 = private unnamed_addr constant [17 x i8] c"loop_dataoutclr1\00", align 1 ; [#uses=1 type=[17 x i8]*]
@.str4 = private unnamed_addr constant [11 x i8] c"loop_setiv\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str3 = private unnamed_addr constant [15 x i8] c"loop_xorvreset\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str2 = private unnamed_addr constant [17 x i8] c"loop_dataoutclr0\00", align 1 ; [#uses=1 type=[17 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=24 type=[1 x i8]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=4 type=[10 x i8]*]

; [#uses=127]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @aescbc(i3 zeroext %mode, [32 x i8]* %data_in, [16 x i8]* %data_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i3 %mode) nounwind, !map !107
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %data_in) nounwind, !map !113
  call void (...)* @_ssdm_op_SpecBitsMap([16 x i8]* %data_out) nounwind, !map !119
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @aescbc.str) nounwind
  %buf = alloca [16 x i8], align 16               ; [#uses=10 type=[16 x i8]*]
  call void @llvm.dbg.value(metadata !{i3 %mode}, i64 0, metadata !125), !dbg !126 ; [debug line = 8:26] [debug variable = mode]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %data_in}, i64 0, metadata !127), !dbg !129 ; [debug line = 9:12] [debug variable = data_in]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %data_out}, i64 0, metadata !130), !dbg !132 ; [debug line = 10:12] [debug variable = data_out]
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %data_in, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 32, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %data_out, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i3 %mode, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !133 ; [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !135 ; [debug line = 17:1]
  call void @llvm.dbg.declare(metadata !{[16 x i8]* %buf}, metadata !136), !dbg !137 ; [debug line = 21:10] [debug variable = buf]
  switch i3 %mode, label %.loopexit [
    i3 0, label %.preheader15.preheader
    i3 1, label %.preheader13.preheader
    i3 2, label %.preheader9.preheader
    i3 3, label %.preheader4.preheader
    i3 -4, label %.preheader1.preheader
  ], !dbg !138                                    ; [debug line = 29:5]

.preheader15.preheader:                           ; preds = %0
  br label %.preheader15, !dbg !139               ; [debug line = 33:7]

.preheader13.preheader:                           ; preds = %0
  br label %.preheader13, !dbg !142               ; [debug line = 45:10]

.preheader9.preheader:                            ; preds = %0
  br label %.preheader9, !dbg !144                ; [debug line = 61:10]

.preheader4.preheader:                            ; preds = %0
  br label %.preheader4, !dbg !146                ; [debug line = 81:7]

.preheader1.preheader:                            ; preds = %0
  br label %.preheader1, !dbg !148                ; [debug line = 91:7]

.preheader15:                                     ; preds = %2, %.preheader15.preheader
  %i = phi i5 [ %i.13, %2 ], [ 0, %.preheader15.preheader ] ; [#uses=3 type=i5]
  %tmp.3 = icmp eq i5 %i, -16, !dbg !139          ; [#uses=1 type=i1] [debug line = 33:7]
  %1 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.3, label %.preheader14.preheader, label %2, !dbg !139 ; [debug line = 33:7]

.preheader14.preheader:                           ; preds = %.preheader15
  br label %.preheader14, !dbg !150               ; [debug line = 37:7]

; <label>:2                                       ; preds = %.preheader15
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @.str2) nounwind, !dbg !152 ; [debug line = 34:7]
  %tmp.8 = zext i5 %i to i64, !dbg !152           ; [#uses=1 type=i64] [debug line = 34:7]
  %data_out.addr = getelementptr [16 x i8]* %data_out, i64 0, i64 %tmp.8, !dbg !152 ; [#uses=1 type=i8*] [debug line = 34:7]
  store i8 0, i8* %data_out.addr, align 1, !dbg !152 ; [debug line = 34:7]
  %i.13 = add i5 %i, 1, !dbg !154                 ; [#uses=1 type=i5] [debug line = 33:18]
  call void @llvm.dbg.value(metadata !{i5 %i.13}, i64 0, metadata !155), !dbg !154 ; [debug line = 33:18] [debug variable = i]
  br label %.preheader15, !dbg !154               ; [debug line = 33:18]

.preheader14:                                     ; preds = %4, %.preheader14.preheader
  %i.1 = phi i5 [ %i.19, %4 ], [ 0, %.preheader14.preheader ] ; [#uses=3 type=i5]
  %tmp.10 = icmp eq i5 %i.1, -16, !dbg !150       ; [#uses=1 type=i1] [debug line = 37:7]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.10, label %.preheader38.preheader, label %4, !dbg !150 ; [debug line = 37:7]

.preheader38.preheader:                           ; preds = %.preheader14
  br label %.preheader38, !dbg !156               ; [debug line = 344:10@40:3]

; <label>:4                                       ; preds = %.preheader14
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str3) nounwind, !dbg !172 ; [debug line = 38:7]
  %tmp.15 = zext i5 %i.1 to i64, !dbg !172        ; [#uses=2 type=i64] [debug line = 38:7]
  %iv.addr.1 = getelementptr inbounds [16 x i8]* @iv, i64 0, i64 %tmp.15, !dbg !172 ; [#uses=1 type=i8*] [debug line = 38:7]
  %iv.load = load i8* %iv.addr.1, align 1, !dbg !172 ; [#uses=1 type=i8] [debug line = 38:7]
  %xorv.addr = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.15, !dbg !172 ; [#uses=1 type=i8*] [debug line = 38:7]
  store i8 %iv.load, i8* %xorv.addr, align 1, !dbg !172 ; [debug line = 38:7]
  %i.19 = add i5 %i.1, 1, !dbg !174               ; [#uses=1 type=i5] [debug line = 37:18]
  call void @llvm.dbg.value(metadata !{i5 %i.19}, i64 0, metadata !155), !dbg !174 ; [debug line = 37:18] [debug variable = i]
  br label %.preheader14, !dbg !174               ; [debug line = 37:18]

.preheader38:                                     ; preds = %6, %.preheader38.preheader
  %i.i = phi i6 [ %i.29, %6 ], [ 0, %.preheader38.preheader ] ; [#uses=3 type=i6]
  %tmp.i = icmp eq i6 %i.i, -32, !dbg !156        ; [#uses=1 type=i1] [debug line = 344:10@40:3]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.i, label %.preheader.i.preheader, label %6, !dbg !156 ; [debug line = 344:10@40:3]

.preheader.i.preheader:                           ; preds = %.preheader38
  br label %.preheader.i, !dbg !175               ; [debug line = 345:10@40:3]

; <label>:6                                       ; preds = %.preheader38
  %tmp..i = zext i6 %i.i to i64, !dbg !177        ; [#uses=3 type=i64] [debug line = 344:44@40:3]
  %key.addr.1 = getelementptr [32 x i8]* @key, i64 0, i64 %tmp..i, !dbg !177 ; [#uses=1 type=i8*] [debug line = 344:44@40:3]
  %key.load = load i8* %key.addr.1, align 1, !dbg !177 ; [#uses=2 type=i8] [debug line = 344:44@40:3]
  %ctx.deckey.addr = getelementptr [32 x i8]* @ctx.deckey, i64 0, i64 %tmp..i, !dbg !177 ; [#uses=1 type=i8*] [debug line = 344:44@40:3]
  store i8 %key.load, i8* %ctx.deckey.addr, align 1, !dbg !177 ; [debug line = 344:44@40:3]
  %ctx.enckey.addr = getelementptr [32 x i8]* @ctx.enckey, i64 0, i64 %tmp..i, !dbg !177 ; [#uses=1 type=i8*] [debug line = 344:44@40:3]
  store i8 %key.load, i8* %ctx.enckey.addr, align 1, !dbg !177 ; [debug line = 344:44@40:3]
  %i.29 = add i6 %i.i, 1, !dbg !178               ; [#uses=1 type=i6] [debug line = 344:39@40:3]
  call void @llvm.dbg.value(metadata !{i6 %i.29}, i64 0, metadata !179) nounwind, !dbg !178 ; [debug line = 344:39@40:3] [debug variable = i]
  br label %.preheader38, !dbg !178               ; [debug line = 344:39@40:3]

.preheader.i:                                     ; preds = %8, %.preheader.i.preheader
  %rcon.i = phi i8 [ %rcon, %8 ], [ 1, %.preheader.i.preheader ] ; [#uses=1 type=i8]
  %i.30 = phi i3 [ %phitmp.i, %8 ], [ -1, %.preheader.i.preheader ] ; [#uses=2 type=i3]
  call void @llvm.dbg.value(metadata !{i3 %i.30}, i64 0, metadata !179) nounwind, !dbg !175 ; [debug line = 345:10@40:3] [debug variable = i]
  %tmp.90.i = icmp eq i3 %i.30, 0, !dbg !175      ; [#uses=1 type=i1] [debug line = 345:10@40:3]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.90.i, label %.loopexit.loopexit24, label %8, !dbg !175 ; [debug line = 345:10@40:3]

; <label>:8                                       ; preds = %.preheader.i
  %rcon = call fastcc i8 @aes_expandEncKey([32 x i8]* @ctx.deckey, i8 %rcon.i) nounwind, !dbg !180 ; [#uses=1 type=i8] [debug line = 345:23@40:3]
  call void @llvm.dbg.value(metadata !{i8 %rcon}, i64 0, metadata !181) nounwind, !dbg !180 ; [debug line = 345:23@40:3] [debug variable = rcon]
  %phitmp.i = add i3 %i.30, -1, !dbg !180         ; [#uses=1 type=i3] [debug line = 345:23@40:3]
  br label %.preheader.i, !dbg !180               ; [debug line = 345:23@40:3]

.preheader13:                                     ; preds = %10, %.preheader13.preheader
  %i.2 = phi i5 [ %i.15, %10 ], [ 0, %.preheader13.preheader ] ; [#uses=3 type=i5]
  %tmp.4 = icmp eq i5 %i.2, -16, !dbg !142        ; [#uses=1 type=i1] [debug line = 45:10]
  %9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.4, label %.preheader12.preheader, label %10, !dbg !142 ; [debug line = 45:10]

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12, !dbg !182               ; [debug line = 48:10]

; <label>:10                                      ; preds = %.preheader13
  %tmp. = zext i5 %i.2 to i64, !dbg !184          ; [#uses=2 type=i64] [debug line = 46:7]
  %data_in.addr = getelementptr [32 x i8]* %data_in, i64 0, i64 %tmp., !dbg !184 ; [#uses=1 type=i8*] [debug line = 46:7]
  %data_in.load = load i8* %data_in.addr, align 1, !dbg !184 ; [#uses=1 type=i8] [debug line = 46:7]
  %buf.addr = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp., !dbg !184 ; [#uses=1 type=i8*] [debug line = 46:7]
  store i8 %data_in.load, i8* %buf.addr, align 1, !dbg !184 ; [debug line = 46:7]
  %i.15 = add i5 %i.2, 1, !dbg !185               ; [#uses=1 type=i5] [debug line = 45:21]
  call void @llvm.dbg.value(metadata !{i5 %i.15}, i64 0, metadata !155), !dbg !185 ; [debug line = 45:21] [debug variable = i]
  br label %.preheader13, !dbg !185               ; [debug line = 45:21]

.preheader12:                                     ; preds = %12, %.preheader12.preheader
  %i.3 = phi i5 [ %i.20, %12 ], [ 0, %.preheader12.preheader ] ; [#uses=3 type=i5]
  %tmp.11 = icmp eq i5 %i.3, -16, !dbg !182       ; [#uses=1 type=i1] [debug line = 48:10]
  %11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.11, label %13, label %12, !dbg !182  ; [debug line = 48:10]

; <label>:12                                      ; preds = %.preheader12
  %tmp.16 = zext i5 %i.3 to i64, !dbg !186        ; [#uses=2 type=i64] [debug line = 49:7]
  %buf.addr.2 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.16, !dbg !186 ; [#uses=2 type=i8*] [debug line = 49:7]
  %buf.load = load i8* %buf.addr.2, align 1, !dbg !186 ; [#uses=1 type=i8] [debug line = 49:7]
  %xorv.addr.1 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.16, !dbg !186 ; [#uses=1 type=i8*] [debug line = 49:7]
  %xorv.load = load i8* %xorv.addr.1, align 1, !dbg !186 ; [#uses=1 type=i8] [debug line = 49:7]
  %tmp.17 = xor i8 %xorv.load, %buf.load, !dbg !186 ; [#uses=1 type=i8] [debug line = 49:7]
  store i8 %tmp.17, i8* %buf.addr.2, align 1, !dbg !186 ; [debug line = 49:7]
  %i.20 = add i5 %i.3, 1, !dbg !187               ; [#uses=1 type=i5] [debug line = 48:21]
  call void @llvm.dbg.value(metadata !{i5 %i.20}, i64 0, metadata !155), !dbg !187 ; [debug line = 48:21] [debug variable = i]
  br label %.preheader12, !dbg !187               ; [debug line = 48:21]

; <label>:13                                      ; preds = %.preheader12
  call fastcc void @aes_encrypt_ecb([16 x i8]* %buf) nounwind, !dbg !188 ; [debug line = 51:6]
  br label %14, !dbg !189                         ; [debug line = 53:10]

; <label>:14                                      ; preds = %16, %13
  %i.4 = phi i5 [ 0, %13 ], [ %i.24, %16 ]        ; [#uses=3 type=i5]
  %tmp.21 = icmp eq i5 %i.4, -16, !dbg !189       ; [#uses=1 type=i1] [debug line = 53:10]
  %15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.21, label %.preheader10.preheader, label %16, !dbg !189 ; [debug line = 53:10]

.preheader10.preheader:                           ; preds = %14
  br label %.preheader10, !dbg !191               ; [debug line = 56:10]

; <label>:16                                      ; preds = %14
  %tmp.23 = zext i5 %i.4 to i64, !dbg !193        ; [#uses=2 type=i64] [debug line = 54:7]
  %buf.addr.4 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.23, !dbg !193 ; [#uses=1 type=i8*] [debug line = 54:7]
  %buf.load.2 = load i8* %buf.addr.4, align 1, !dbg !193 ; [#uses=1 type=i8] [debug line = 54:7]
  %xorv.addr.2 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.23, !dbg !193 ; [#uses=1 type=i8*] [debug line = 54:7]
  store i8 %buf.load.2, i8* %xorv.addr.2, align 1, !dbg !193 ; [debug line = 54:7]
  %i.24 = add i5 %i.4, 1, !dbg !194               ; [#uses=1 type=i5] [debug line = 53:21]
  call void @llvm.dbg.value(metadata !{i5 %i.24}, i64 0, metadata !155), !dbg !194 ; [debug line = 53:21] [debug variable = i]
  br label %14, !dbg !194                         ; [debug line = 53:21]

.preheader10:                                     ; preds = %18, %.preheader10.preheader
  %i.5 = phi i5 [ %i.26, %18 ], [ 0, %.preheader10.preheader ] ; [#uses=3 type=i5]
  %tmp.26 = icmp eq i5 %i.5, -16, !dbg !191       ; [#uses=1 type=i1] [debug line = 56:10]
  %17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.26, label %.loopexit.loopexit23, label %18, !dbg !191 ; [debug line = 56:10]

; <label>:18                                      ; preds = %.preheader10
  %tmp.28 = zext i5 %i.5 to i64, !dbg !195        ; [#uses=2 type=i64] [debug line = 57:7]
  %buf.addr.6 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.28, !dbg !195 ; [#uses=1 type=i8*] [debug line = 57:7]
  %buf.load.4 = load i8* %buf.addr.6, align 1, !dbg !195 ; [#uses=1 type=i8] [debug line = 57:7]
  %data_out.addr.3 = getelementptr [16 x i8]* %data_out, i64 0, i64 %tmp.28, !dbg !195 ; [#uses=1 type=i8*] [debug line = 57:7]
  store i8 %buf.load.4, i8* %data_out.addr.3, align 1, !dbg !195 ; [debug line = 57:7]
  %i.26 = add i5 %i.5, 1, !dbg !196               ; [#uses=1 type=i5] [debug line = 56:21]
  call void @llvm.dbg.value(metadata !{i5 %i.26}, i64 0, metadata !155), !dbg !196 ; [debug line = 56:21] [debug variable = i]
  br label %.preheader10, !dbg !196               ; [debug line = 56:21]

.preheader9:                                      ; preds = %20, %.preheader9.preheader
  %i.6 = phi i5 [ %i.16, %20 ], [ 0, %.preheader9.preheader ] ; [#uses=3 type=i5]
  %tmp.5 = icmp eq i5 %i.6, -16, !dbg !144        ; [#uses=1 type=i1] [debug line = 61:10]
  %19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.5, label %.preheader8.preheader, label %20, !dbg !144 ; [debug line = 61:10]

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8, !dbg !197                ; [debug line = 64:10]

; <label>:20                                      ; preds = %.preheader9
  %tmp.1 = zext i5 %i.6 to i64, !dbg !199         ; [#uses=2 type=i64] [debug line = 62:7]
  %data_in.addr.1 = getelementptr [32 x i8]* %data_in, i64 0, i64 %tmp.1, !dbg !199 ; [#uses=1 type=i8*] [debug line = 62:7]
  %data_in.load.1 = load i8* %data_in.addr.1, align 1, !dbg !199 ; [#uses=1 type=i8] [debug line = 62:7]
  %buf.addr.1 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.1, !dbg !199 ; [#uses=1 type=i8*] [debug line = 62:7]
  store i8 %data_in.load.1, i8* %buf.addr.1, align 1, !dbg !199 ; [debug line = 62:7]
  %i.16 = add i5 %i.6, 1, !dbg !200               ; [#uses=1 type=i5] [debug line = 61:21]
  call void @llvm.dbg.value(metadata !{i5 %i.16}, i64 0, metadata !155), !dbg !200 ; [debug line = 61:21] [debug variable = i]
  br label %.preheader9, !dbg !200                ; [debug line = 61:21]

.preheader8:                                      ; preds = %22, %.preheader8.preheader
  %i.7 = phi i5 [ %i.21, %22 ], [ 0, %.preheader8.preheader ] ; [#uses=3 type=i5]
  %tmp.12 = icmp eq i5 %i.7, -16, !dbg !197       ; [#uses=1 type=i1] [debug line = 64:10]
  %21 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.12, label %23, label %22, !dbg !197  ; [debug line = 64:10]

; <label>:22                                      ; preds = %.preheader8
  %tmp.18 = zext i5 %i.7 to i64, !dbg !201        ; [#uses=2 type=i64] [debug line = 65:7]
  %buf.addr.3 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.18, !dbg !201 ; [#uses=1 type=i8*] [debug line = 65:7]
  %buf.load.1 = load i8* %buf.addr.3, align 1, !dbg !201 ; [#uses=1 type=i8] [debug line = 65:7]
  %lastbuf.addr = getelementptr inbounds [16 x i8]* @lastbuf, i64 0, i64 %tmp.18, !dbg !201 ; [#uses=1 type=i8*] [debug line = 65:7]
  store i8 %buf.load.1, i8* %lastbuf.addr, align 1, !dbg !201 ; [debug line = 65:7]
  %i.21 = add i5 %i.7, 1, !dbg !202               ; [#uses=1 type=i5] [debug line = 64:21]
  call void @llvm.dbg.value(metadata !{i5 %i.21}, i64 0, metadata !155), !dbg !202 ; [debug line = 64:21] [debug variable = i]
  br label %.preheader8, !dbg !202                ; [debug line = 64:21]

; <label>:23                                      ; preds = %.preheader8
  call fastcc void @aes_decrypt_ecb([16 x i8]* %buf) nounwind, !dbg !203 ; [debug line = 67:6]
  br label %24, !dbg !204                         ; [debug line = 69:10]

; <label>:24                                      ; preds = %26, %23
  %i.8 = phi i5 [ 0, %23 ], [ %i.25, %26 ]        ; [#uses=3 type=i5]
  %tmp.22 = icmp eq i5 %i.8, -16, !dbg !204       ; [#uses=1 type=i1] [debug line = 69:10]
  %25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.22, label %.preheader7.preheader, label %26, !dbg !204 ; [debug line = 69:10]

.preheader7.preheader:                            ; preds = %24
  br label %.preheader7, !dbg !206                ; [debug line = 72:10]

; <label>:26                                      ; preds = %24
  %tmp.24 = zext i5 %i.8 to i64, !dbg !208        ; [#uses=2 type=i64] [debug line = 70:7]
  %buf.addr.5 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.24, !dbg !208 ; [#uses=2 type=i8*] [debug line = 70:7]
  %buf.load.3 = load i8* %buf.addr.5, align 1, !dbg !208 ; [#uses=1 type=i8] [debug line = 70:7]
  %xorv.addr.3 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.24, !dbg !208 ; [#uses=1 type=i8*] [debug line = 70:7]
  %xorv.load.1 = load i8* %xorv.addr.3, align 1, !dbg !208 ; [#uses=1 type=i8] [debug line = 70:7]
  %tmp.25 = xor i8 %xorv.load.1, %buf.load.3, !dbg !208 ; [#uses=1 type=i8] [debug line = 70:7]
  store i8 %tmp.25, i8* %buf.addr.5, align 1, !dbg !208 ; [debug line = 70:7]
  %i.25 = add i5 %i.8, 1, !dbg !209               ; [#uses=1 type=i5] [debug line = 69:21]
  call void @llvm.dbg.value(metadata !{i5 %i.25}, i64 0, metadata !155), !dbg !209 ; [debug line = 69:21] [debug variable = i]
  br label %24, !dbg !209                         ; [debug line = 69:21]

.preheader7:                                      ; preds = %28, %.preheader7.preheader
  %i.9 = phi i5 [ %i.27, %28 ], [ 0, %.preheader7.preheader ] ; [#uses=3 type=i5]
  %tmp.27 = icmp eq i5 %i.9, -16, !dbg !206       ; [#uses=1 type=i1] [debug line = 72:10]
  %27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.27, label %.preheader5.preheader, label %28, !dbg !206 ; [debug line = 72:10]

.preheader5.preheader:                            ; preds = %.preheader7
  br label %.preheader5, !dbg !210                ; [debug line = 75:10]

; <label>:28                                      ; preds = %.preheader7
  %tmp.29 = zext i5 %i.9 to i64, !dbg !212        ; [#uses=2 type=i64] [debug line = 73:7]
  %lastbuf.addr.1 = getelementptr inbounds [16 x i8]* @lastbuf, i64 0, i64 %tmp.29, !dbg !212 ; [#uses=1 type=i8*] [debug line = 73:7]
  %lastbuf.load = load i8* %lastbuf.addr.1, align 1, !dbg !212 ; [#uses=1 type=i8] [debug line = 73:7]
  %xorv.addr.4 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.29, !dbg !212 ; [#uses=1 type=i8*] [debug line = 73:7]
  store i8 %lastbuf.load, i8* %xorv.addr.4, align 1, !dbg !212 ; [debug line = 73:7]
  %i.27 = add i5 %i.9, 1, !dbg !213               ; [#uses=1 type=i5] [debug line = 72:21]
  call void @llvm.dbg.value(metadata !{i5 %i.27}, i64 0, metadata !155), !dbg !213 ; [debug line = 72:21] [debug variable = i]
  br label %.preheader7, !dbg !213                ; [debug line = 72:21]

.preheader5:                                      ; preds = %30, %.preheader5.preheader
  %i.10 = phi i5 [ %i.28, %30 ], [ 0, %.preheader5.preheader ] ; [#uses=3 type=i5]
  %tmp.30 = icmp eq i5 %i.10, -16, !dbg !210      ; [#uses=1 type=i1] [debug line = 75:10]
  %29 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.30, label %.loopexit.loopexit22, label %30, !dbg !210 ; [debug line = 75:10]

; <label>:30                                      ; preds = %.preheader5
  %tmp.31 = zext i5 %i.10 to i64, !dbg !214       ; [#uses=2 type=i64] [debug line = 76:7]
  %buf.addr.7 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.31, !dbg !214 ; [#uses=1 type=i8*] [debug line = 76:7]
  %buf.load.5 = load i8* %buf.addr.7, align 1, !dbg !214 ; [#uses=1 type=i8] [debug line = 76:7]
  %data_out.addr.4 = getelementptr [16 x i8]* %data_out, i64 0, i64 %tmp.31, !dbg !214 ; [#uses=1 type=i8*] [debug line = 76:7]
  store i8 %buf.load.5, i8* %data_out.addr.4, align 1, !dbg !214 ; [debug line = 76:7]
  %i.28 = add i5 %i.10, 1, !dbg !215              ; [#uses=1 type=i5] [debug line = 75:21]
  call void @llvm.dbg.value(metadata !{i5 %i.28}, i64 0, metadata !155), !dbg !215 ; [debug line = 75:21] [debug variable = i]
  br label %.preheader5, !dbg !215                ; [debug line = 75:21]

.preheader4:                                      ; preds = %32, %.preheader4.preheader
  %i. = phi i5 [ %i.17, %32 ], [ 0, %.preheader4.preheader ] ; [#uses=3 type=i5]
  %tmp.6 = icmp eq i5 %i., -16, !dbg !146         ; [#uses=1 type=i1] [debug line = 81:7]
  %31 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.6, label %.preheader2.preheader, label %32, !dbg !146 ; [debug line = 81:7]

.preheader2.preheader:                            ; preds = %.preheader4
  br label %.preheader2, !dbg !216                ; [debug line = 85:7]

; <label>:32                                      ; preds = %.preheader4
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @.str4) nounwind, !dbg !218 ; [debug line = 82:7]
  %tmp.2 = zext i5 %i. to i64, !dbg !218          ; [#uses=2 type=i64] [debug line = 82:7]
  %data_in.addr.2 = getelementptr [32 x i8]* %data_in, i64 0, i64 %tmp.2, !dbg !218 ; [#uses=1 type=i8*] [debug line = 82:7]
  %data_in.load.2 = load i8* %data_in.addr.2, align 1, !dbg !218 ; [#uses=1 type=i8] [debug line = 82:7]
  %iv.addr = getelementptr inbounds [16 x i8]* @iv, i64 0, i64 %tmp.2, !dbg !218 ; [#uses=1 type=i8*] [debug line = 82:7]
  store i8 %data_in.load.2, i8* %iv.addr, align 1, !dbg !218 ; [debug line = 82:7]
  %i.17 = add i5 %i., 1, !dbg !220                ; [#uses=1 type=i5] [debug line = 81:18]
  call void @llvm.dbg.value(metadata !{i5 %i.17}, i64 0, metadata !155), !dbg !220 ; [debug line = 81:18] [debug variable = i]
  br label %.preheader4, !dbg !220                ; [debug line = 81:18]

.preheader2:                                      ; preds = %34, %.preheader2.preheader
  %i.12 = phi i5 [ %i.22, %34 ], [ 0, %.preheader2.preheader ] ; [#uses=3 type=i5]
  %tmp.13 = icmp eq i5 %i.12, -16, !dbg !216      ; [#uses=1 type=i1] [debug line = 85:7]
  %33 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.13, label %.loopexit.loopexit21, label %34, !dbg !216 ; [debug line = 85:7]

; <label>:34                                      ; preds = %.preheader2
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @.str5) nounwind, !dbg !221 ; [debug line = 86:4]
  %tmp.19 = zext i5 %i.12 to i64, !dbg !221       ; [#uses=1 type=i64] [debug line = 86:4]
  %data_out.addr.1 = getelementptr [16 x i8]* %data_out, i64 0, i64 %tmp.19, !dbg !221 ; [#uses=1 type=i8*] [debug line = 86:4]
  store i8 0, i8* %data_out.addr.1, align 1, !dbg !221 ; [debug line = 86:4]
  %i.22 = add i5 %i.12, 1, !dbg !223              ; [#uses=1 type=i5] [debug line = 85:18]
  call void @llvm.dbg.value(metadata !{i5 %i.22}, i64 0, metadata !155), !dbg !223 ; [debug line = 85:18] [debug variable = i]
  br label %.preheader2, !dbg !223                ; [debug line = 85:18]

.preheader1:                                      ; preds = %36, %.preheader1.preheader
  %i.11 = phi i6 [ %i.18, %36 ], [ 0, %.preheader1.preheader ] ; [#uses=3 type=i6]
  %tmp.7 = icmp eq i6 %i.11, -32, !dbg !148       ; [#uses=1 type=i1] [debug line = 91:7]
  %35 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.7, label %.preheader.preheader, label %36, !dbg !148 ; [debug line = 91:7]

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader, !dbg !224                 ; [debug line = 95:7]

; <label>:36                                      ; preds = %.preheader1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str6) nounwind, !dbg !226 ; [debug line = 92:4]
  %tmp.9 = zext i6 %i.11 to i64, !dbg !226        ; [#uses=2 type=i64] [debug line = 92:4]
  %data_in.addr.3 = getelementptr [32 x i8]* %data_in, i64 0, i64 %tmp.9, !dbg !226 ; [#uses=1 type=i8*] [debug line = 92:4]
  %data_in.load.3 = load i8* %data_in.addr.3, align 1, !dbg !226 ; [#uses=1 type=i8] [debug line = 92:4]
  %key.addr = getelementptr inbounds [32 x i8]* @key, i64 0, i64 %tmp.9, !dbg !226 ; [#uses=1 type=i8*] [debug line = 92:4]
  store i8 %data_in.load.3, i8* %key.addr, align 1, !dbg !226 ; [debug line = 92:4]
  %i.18 = add i6 %i.11, 1, !dbg !228              ; [#uses=1 type=i6] [debug line = 91:18]
  call void @llvm.dbg.value(metadata !{i6 %i.18}, i64 0, metadata !155), !dbg !228 ; [debug line = 91:18] [debug variable = i]
  br label %.preheader1, !dbg !228                ; [debug line = 91:18]

.preheader:                                       ; preds = %38, %.preheader.preheader
  %i.14 = phi i5 [ %i.23, %38 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i5]
  %tmp.14 = icmp eq i5 %i.14, -16, !dbg !224      ; [#uses=1 type=i1] [debug line = 95:7]
  %37 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.14, label %.loopexit.loopexit, label %38, !dbg !224 ; [debug line = 95:7]

; <label>:38                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @.str7) nounwind, !dbg !229 ; [debug line = 96:4]
  %tmp.20 = zext i5 %i.14 to i64, !dbg !229       ; [#uses=1 type=i64] [debug line = 96:4]
  %data_out.addr.2 = getelementptr [16 x i8]* %data_out, i64 0, i64 %tmp.20, !dbg !229 ; [#uses=1 type=i8*] [debug line = 96:4]
  store i8 0, i8* %data_out.addr.2, align 1, !dbg !229 ; [debug line = 96:4]
  %i.23 = add i5 %i.14, 1, !dbg !231              ; [#uses=1 type=i5] [debug line = 95:18]
  call void @llvm.dbg.value(metadata !{i5 %i.23}, i64 0, metadata !155), !dbg !231 ; [debug line = 95:18] [debug variable = i]
  br label %.preheader, !dbg !231                 ; [debug line = 95:18]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit.loopexit21:                             ; preds = %.preheader2
  br label %.loopexit

.loopexit.loopexit22:                             ; preds = %.preheader5
  br label %.loopexit

.loopexit.loopexit23:                             ; preds = %.preheader10
  br label %.loopexit

.loopexit.loopexit24:                             ; preds = %.preheader.i
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit24, %.loopexit.loopexit23, %.loopexit.loopexit22, %.loopexit.loopexit21, %.loopexit.loopexit, %0
  ret void, !dbg !232                             ; [debug line = 99:1]
}

; [#uses=1]
define internal fastcc void @aes_mixColumns_inv([16 x i8]* nocapture %buf) {
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !233), !dbg !238 ; [debug line = 270:34] [debug variable = buf]
  br label %1, !dbg !239                          ; [debug line = 274:10]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ 0, %0 ], [ %i.31, %3 ]            ; [#uses=4 type=i5]
  %tmp = icmp sgt i5 %i, -1, !dbg !239            ; [#uses=1 type=i1] [debug line = 274:10]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %tmp, label %3, label %4, !dbg !239       ; [debug line = 274:10]

; <label>:3                                       ; preds = %1
  %tmp. = zext i5 %i to i64, !dbg !242            ; [#uses=1 type=i64] [debug line = 276:9]
  %buf.addr = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp., !dbg !242 ; [#uses=2 type=i8*] [debug line = 276:9]
  %a = load i8* %buf.addr, align 1, !dbg !242     ; [#uses=4 type=i8] [debug line = 276:9]
  call void @llvm.dbg.value(metadata !{i8 %a}, i64 0, metadata !244), !dbg !242 ; [debug line = 276:9] [debug variable = a]
  %tmp.32.cast = trunc i5 %i to i4, !dbg !245     ; [#uses=3 type=i4] [debug line = 277:9]
  %tmp.32 = or i4 %tmp.32.cast, 1, !dbg !245      ; [#uses=1 type=i4] [debug line = 277:9]
  %tmp.33 = zext i4 %tmp.32 to i64, !dbg !245     ; [#uses=1 type=i64] [debug line = 277:9]
  %buf.addr.8 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp.33, !dbg !245 ; [#uses=2 type=i8*] [debug line = 277:9]
  %b = load i8* %buf.addr.8, align 1, !dbg !245   ; [#uses=4 type=i8] [debug line = 277:9]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !246), !dbg !245 ; [debug line = 277:9] [debug variable = b]
  %tmp.34 = or i4 %tmp.32.cast, 2, !dbg !247      ; [#uses=1 type=i4] [debug line = 278:9]
  %tmp.35 = zext i4 %tmp.34 to i64, !dbg !247     ; [#uses=1 type=i64] [debug line = 278:9]
  %buf.addr.9 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp.35, !dbg !247 ; [#uses=2 type=i8*] [debug line = 278:9]
  %c = load i8* %buf.addr.9, align 1, !dbg !247   ; [#uses=5 type=i8] [debug line = 278:9]
  call void @llvm.dbg.value(metadata !{i8 %c}, i64 0, metadata !248), !dbg !247 ; [debug line = 278:9] [debug variable = c]
  %tmp.36 = or i4 %tmp.32.cast, 3, !dbg !249      ; [#uses=1 type=i4] [debug line = 279:9]
  %tmp.37 = zext i4 %tmp.36 to i64, !dbg !249     ; [#uses=1 type=i64] [debug line = 279:9]
  %buf.addr.10 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp.37, !dbg !249 ; [#uses=2 type=i8*] [debug line = 279:9]
  %d = load i8* %buf.addr.10, align 1, !dbg !249  ; [#uses=5 type=i8] [debug line = 279:9]
  call void @llvm.dbg.value(metadata !{i8 %d}, i64 0, metadata !250), !dbg !249 ; [debug line = 279:9] [debug variable = d]
  %x.assign.5 = xor i8 %b, %a, !dbg !251          ; [#uses=3 type=i8] [debug line = 280:9]
  %tmp1 = xor i8 %d, %x.assign.5, !dbg !251       ; [#uses=1 type=i8] [debug line = 280:9]
  %e = xor i8 %tmp1, %c, !dbg !251                ; [#uses=4 type=i8] [debug line = 280:9]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !252), !dbg !251 ; [debug line = 280:9] [debug variable = e]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !253), !dbg !258 ; [debug line = 187:33@281:13] [debug variable = x]
  %y.1 = shl i8 %e, 1, !dbg !259                  ; [#uses=2 type=i8] [debug line = 189:34@281:13]
  call void @llvm.dbg.value(metadata !{i8 %y.1}, i64 0, metadata !261), !dbg !259 ; [debug line = 189:34@281:13] [debug variable = y]
  %tmp.i = icmp slt i8 %e, 0, !dbg !262           ; [#uses=1 type=i1] [debug line = 190:5@281:13]
  %tmp.1.i = xor i8 %y.1, 27, !dbg !262           ; [#uses=1 type=i8] [debug line = 190:5@281:13]
  %y.19 = select i1 %tmp.i, i8 %tmp.1.i, i8 %y.1, !dbg !262 ; [#uses=2 type=i8] [debug line = 190:5@281:13]
  call void @llvm.dbg.value(metadata !{i8 %y.19}, i64 0, metadata !261), !dbg !262 ; [debug line = 190:5@281:13] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %y.19}, i64 0, metadata !263), !dbg !257 ; [debug line = 281:13] [debug variable = z]
  %tmp2 = xor i8 %a, %y.19, !dbg !264             ; [#uses=1 type=i8] [debug line = 282:26]
  %x.assign.1 = xor i8 %tmp2, %c, !dbg !264       ; [#uses=2 type=i8] [debug line = 282:26]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.1}, i64 0, metadata !265), !dbg !266 ; [debug line = 187:33@282:26] [debug variable = x]
  %y.3 = shl i8 %x.assign.1, 1, !dbg !267         ; [#uses=2 type=i8] [debug line = 189:34@282:26]
  call void @llvm.dbg.value(metadata !{i8 %y.3}, i64 0, metadata !268), !dbg !267 ; [debug line = 189:34@282:26] [debug variable = y]
  %tmp.i9 = icmp slt i8 %x.assign.1, 0, !dbg !269 ; [#uses=1 type=i1] [debug line = 190:5@282:26]
  %tmp.1.i1 = xor i8 %y.3, 27, !dbg !269          ; [#uses=1 type=i8] [debug line = 190:5@282:26]
  %y.20 = select i1 %tmp.i9, i8 %tmp.1.i1, i8 %y.3, !dbg !269 ; [#uses=2 type=i8] [debug line = 190:5@282:26]
  call void @llvm.dbg.value(metadata !{i8 %y.20}, i64 0, metadata !268), !dbg !269 ; [debug line = 190:5@282:26] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %y.20}, i64 0, metadata !265), !dbg !266 ; [debug line = 187:33@282:26] [debug variable = x]
  %y.5 = shl i8 %y.20, 1, !dbg !267               ; [#uses=2 type=i8] [debug line = 189:34@282:26]
  call void @llvm.dbg.value(metadata !{i8 %y.5}, i64 0, metadata !268), !dbg !267 ; [debug line = 189:34@282:26] [debug variable = y]
  %tmp.i1 = icmp slt i8 %y.20, 0, !dbg !269       ; [#uses=1 type=i1] [debug line = 190:5@282:26]
  %tmp.1.i2 = xor i8 %y.5, 27, !dbg !269          ; [#uses=1 type=i8] [debug line = 190:5@282:26]
  %y.6 = select i1 %tmp.i1, i8 %tmp.1.i2, i8 %y.5, !dbg !269 ; [#uses=1 type=i8] [debug line = 190:5@282:26]
  call void @llvm.dbg.value(metadata !{i8 %y.6}, i64 0, metadata !268), !dbg !269 ; [debug line = 190:5@282:26] [debug variable = y]
  %x = xor i8 %y.6, %e, !dbg !264                 ; [#uses=2 type=i8] [debug line = 282:26]
  call void @llvm.dbg.value(metadata !{i8 %x}, i64 0, metadata !270), !dbg !264 ; [debug line = 282:26] [debug variable = x]
  %tmp3 = xor i8 %b, %y.19, !dbg !271             ; [#uses=1 type=i8] [debug line = 283:26]
  %x.assign.3 = xor i8 %tmp3, %d, !dbg !271       ; [#uses=2 type=i8] [debug line = 283:26]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.3}, i64 0, metadata !272), !dbg !273 ; [debug line = 187:33@283:26] [debug variable = x]
  %y.7 = shl i8 %x.assign.3, 1, !dbg !274         ; [#uses=2 type=i8] [debug line = 189:34@283:26]
  call void @llvm.dbg.value(metadata !{i8 %y.7}, i64 0, metadata !275), !dbg !274 ; [debug line = 189:34@283:26] [debug variable = y]
  %tmp.i2 = icmp slt i8 %x.assign.3, 0, !dbg !276 ; [#uses=1 type=i1] [debug line = 190:5@283:26]
  %tmp.1.i3 = xor i8 %y.7, 27, !dbg !276          ; [#uses=1 type=i8] [debug line = 190:5@283:26]
  %y.21 = select i1 %tmp.i2, i8 %tmp.1.i3, i8 %y.7, !dbg !276 ; [#uses=2 type=i8] [debug line = 190:5@283:26]
  call void @llvm.dbg.value(metadata !{i8 %y.21}, i64 0, metadata !275), !dbg !276 ; [debug line = 190:5@283:26] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %y.21}, i64 0, metadata !272), !dbg !273 ; [debug line = 187:33@283:26] [debug variable = x]
  %y.9 = shl i8 %y.21, 1, !dbg !274               ; [#uses=2 type=i8] [debug line = 189:34@283:26]
  call void @llvm.dbg.value(metadata !{i8 %y.9}, i64 0, metadata !275), !dbg !274 ; [debug line = 189:34@283:26] [debug variable = y]
  %tmp.i3 = icmp slt i8 %y.21, 0, !dbg !276       ; [#uses=1 type=i1] [debug line = 190:5@283:26]
  %tmp.1.i4 = xor i8 %y.9, 27, !dbg !276          ; [#uses=1 type=i8] [debug line = 190:5@283:26]
  %y.10 = select i1 %tmp.i3, i8 %tmp.1.i4, i8 %y.9, !dbg !276 ; [#uses=1 type=i8] [debug line = 190:5@283:26]
  call void @llvm.dbg.value(metadata !{i8 %y.10}, i64 0, metadata !275), !dbg !276 ; [debug line = 190:5@283:26] [debug variable = y]
  %y = xor i8 %y.10, %e, !dbg !271                ; [#uses=2 type=i8] [debug line = 283:26]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !277), !dbg !271 ; [debug line = 283:26] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.5}, i64 0, metadata !278), !dbg !280 ; [debug line = 187:33@284:23] [debug variable = x]
  %y.11 = shl i8 %x.assign.5, 1, !dbg !281        ; [#uses=2 type=i8] [debug line = 189:34@284:23]
  call void @llvm.dbg.value(metadata !{i8 %y.11}, i64 0, metadata !282), !dbg !281 ; [debug line = 189:34@284:23] [debug variable = y]
  %tmp.i4 = icmp slt i8 %x.assign.5, 0, !dbg !283 ; [#uses=1 type=i1] [debug line = 190:5@284:23]
  %tmp.1.i5 = xor i8 %y.11, 27, !dbg !283         ; [#uses=1 type=i8] [debug line = 190:5@284:23]
  %y.12 = select i1 %tmp.i4, i8 %tmp.1.i5, i8 %y.11, !dbg !283 ; [#uses=1 type=i8] [debug line = 190:5@284:23]
  call void @llvm.dbg.value(metadata !{i8 %y.12}, i64 0, metadata !282), !dbg !283 ; [debug line = 190:5@284:23] [debug variable = y]
  %tmp4 = xor i8 %y.12, %x, !dbg !279             ; [#uses=1 type=i8] [debug line = 284:23]
  %tmp.38 = xor i8 %tmp4, %a, !dbg !279           ; [#uses=1 type=i8] [debug line = 284:23]
  store i8 %tmp.38, i8* %buf.addr, align 1, !dbg !279 ; [debug line = 284:23]
  %x.assign.6 = xor i8 %c, %b, !dbg !284          ; [#uses=2 type=i8] [debug line = 285:27]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.6}, i64 0, metadata !285), !dbg !286 ; [debug line = 187:33@285:27] [debug variable = x]
  %y.13 = shl i8 %x.assign.6, 1, !dbg !287        ; [#uses=2 type=i8] [debug line = 189:34@285:27]
  call void @llvm.dbg.value(metadata !{i8 %y.13}, i64 0, metadata !288), !dbg !287 ; [debug line = 189:34@285:27] [debug variable = y]
  %tmp.i5 = icmp slt i8 %x.assign.6, 0, !dbg !289 ; [#uses=1 type=i1] [debug line = 190:5@285:27]
  %tmp.1.i6 = xor i8 %y.13, 27, !dbg !289         ; [#uses=1 type=i8] [debug line = 190:5@285:27]
  %y.14 = select i1 %tmp.i5, i8 %tmp.1.i6, i8 %y.13, !dbg !289 ; [#uses=1 type=i8] [debug line = 190:5@285:27]
  call void @llvm.dbg.value(metadata !{i8 %y.14}, i64 0, metadata !288), !dbg !289 ; [debug line = 190:5@285:27] [debug variable = y]
  %tmp5 = xor i8 %y.14, %y, !dbg !284             ; [#uses=1 type=i8] [debug line = 285:27]
  %tmp.39 = xor i8 %tmp5, %b, !dbg !284           ; [#uses=1 type=i8] [debug line = 285:27]
  store i8 %tmp.39, i8* %buf.addr.8, align 1, !dbg !284 ; [debug line = 285:27]
  %x.assign.7 = xor i8 %d, %c, !dbg !290          ; [#uses=2 type=i8] [debug line = 286:27]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.7}, i64 0, metadata !291), !dbg !292 ; [debug line = 187:33@286:27] [debug variable = x]
  %y.15 = shl i8 %x.assign.7, 1, !dbg !293        ; [#uses=2 type=i8] [debug line = 189:34@286:27]
  call void @llvm.dbg.value(metadata !{i8 %y.15}, i64 0, metadata !294), !dbg !293 ; [debug line = 189:34@286:27] [debug variable = y]
  %tmp.i6 = icmp slt i8 %x.assign.7, 0, !dbg !295 ; [#uses=1 type=i1] [debug line = 190:5@286:27]
  %tmp.1.i7 = xor i8 %y.15, 27, !dbg !295         ; [#uses=1 type=i8] [debug line = 190:5@286:27]
  %y.16 = select i1 %tmp.i6, i8 %tmp.1.i7, i8 %y.15, !dbg !295 ; [#uses=1 type=i8] [debug line = 190:5@286:27]
  call void @llvm.dbg.value(metadata !{i8 %y.16}, i64 0, metadata !294), !dbg !295 ; [debug line = 190:5@286:27] [debug variable = y]
  %tmp6 = xor i8 %y.16, %x, !dbg !290             ; [#uses=1 type=i8] [debug line = 286:27]
  %tmp.40 = xor i8 %tmp6, %c, !dbg !290           ; [#uses=1 type=i8] [debug line = 286:27]
  store i8 %tmp.40, i8* %buf.addr.9, align 1, !dbg !290 ; [debug line = 286:27]
  %x.assign.8 = xor i8 %d, %a, !dbg !296          ; [#uses=2 type=i8] [debug line = 287:27]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.8}, i64 0, metadata !297), !dbg !298 ; [debug line = 187:33@287:27] [debug variable = x]
  %y.17 = shl i8 %x.assign.8, 1, !dbg !299        ; [#uses=2 type=i8] [debug line = 189:34@287:27]
  call void @llvm.dbg.value(metadata !{i8 %y.17}, i64 0, metadata !300), !dbg !299 ; [debug line = 189:34@287:27] [debug variable = y]
  %tmp.i7 = icmp slt i8 %x.assign.8, 0, !dbg !301 ; [#uses=1 type=i1] [debug line = 190:5@287:27]
  %tmp.1.i8 = xor i8 %y.17, 27, !dbg !301         ; [#uses=1 type=i8] [debug line = 190:5@287:27]
  %y.18 = select i1 %tmp.i7, i8 %tmp.1.i8, i8 %y.17, !dbg !301 ; [#uses=1 type=i8] [debug line = 190:5@287:27]
  call void @llvm.dbg.value(metadata !{i8 %y.18}, i64 0, metadata !300), !dbg !301 ; [debug line = 190:5@287:27] [debug variable = y]
  %tmp7 = xor i8 %y.18, %y, !dbg !296             ; [#uses=1 type=i8] [debug line = 287:27]
  %tmp.41 = xor i8 %tmp7, %d, !dbg !296           ; [#uses=1 type=i8] [debug line = 287:27]
  store i8 %tmp.41, i8* %buf.addr.10, align 1, !dbg !296 ; [debug line = 287:27]
  %i.31 = add i5 %i, 4, !dbg !302                 ; [#uses=1 type=i5] [debug line = 274:25]
  call void @llvm.dbg.value(metadata !{i5 %i.31}, i64 0, metadata !303), !dbg !302 ; [debug line = 274:25] [debug variable = i]
  br label %1, !dbg !302                          ; [debug line = 274:25]

; <label>:4                                       ; preds = %1
  ret void, !dbg !304                             ; [debug line = 289:1]
}

; [#uses=3]
define internal fastcc i8 @aes_expandEncKey([32 x i8]* %k, i8 %rc.read) {
  %k.addr = getelementptr [32 x i8]* %k, i64 0, i64 0 ; [#uses=2 type=i8*]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %k}, i64 0, metadata !305), !dbg !310 ; [debug line = 292:39] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i8 %rc.read}, i64 0, metadata !311), !dbg !312 ; [debug line = 292:51] [debug variable = rc]
  %k.addr.1 = getelementptr [32 x i8]* %k, i64 0, i64 29, !dbg !313 ; [#uses=1 type=i8*] [debug line = 296:5]
  %k.load = load i8* %k.addr.1, align 1, !dbg !313 ; [#uses=1 type=i8] [debug line = 296:5]
  %tmp = zext i8 %k.load to i64, !dbg !313        ; [#uses=1 type=i64] [debug line = 296:5]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp, !dbg !313 ; [#uses=1 type=i8*] [debug line = 296:5]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !313 ; [#uses=1 type=i8] [debug line = 296:5]
  %k.load.1 = load i8* %k.addr, align 1, !dbg !313 ; [#uses=1 type=i8] [debug line = 296:5]
  %tmp1 = xor i8 %k.load.1, %rc.read, !dbg !313   ; [#uses=1 type=i8] [debug line = 296:5]
  %tmp. = xor i8 %tmp1, %sbox.load, !dbg !313     ; [#uses=1 type=i8] [debug line = 296:5]
  store i8 %tmp., i8* %k.addr, align 1, !dbg !313 ; [debug line = 296:5]
  %k.addr.2 = getelementptr [32 x i8]* %k, i64 0, i64 30, !dbg !315 ; [#uses=1 type=i8*] [debug line = 297:5]
  %k.load.2 = load i8* %k.addr.2, align 1, !dbg !315 ; [#uses=1 type=i8] [debug line = 297:5]
  %tmp.42 = zext i8 %k.load.2 to i64, !dbg !315   ; [#uses=1 type=i64] [debug line = 297:5]
  %sbox.addr.1 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.42, !dbg !315 ; [#uses=1 type=i8*] [debug line = 297:5]
  %sbox.load.1 = load i8* %sbox.addr.1, align 1, !dbg !315 ; [#uses=1 type=i8] [debug line = 297:5]
  %k.addr.3 = getelementptr [32 x i8]* %k, i64 0, i64 1, !dbg !315 ; [#uses=2 type=i8*] [debug line = 297:5]
  %k.load.3 = load i8* %k.addr.3, align 1, !dbg !315 ; [#uses=1 type=i8] [debug line = 297:5]
  %tmp.43 = xor i8 %k.load.3, %sbox.load.1, !dbg !315 ; [#uses=1 type=i8] [debug line = 297:5]
  store i8 %tmp.43, i8* %k.addr.3, align 1, !dbg !315 ; [debug line = 297:5]
  %k.addr.4 = getelementptr [32 x i8]* %k, i64 0, i64 31, !dbg !316 ; [#uses=1 type=i8*] [debug line = 298:5]
  %k.load.4 = load i8* %k.addr.4, align 1, !dbg !316 ; [#uses=1 type=i8] [debug line = 298:5]
  %tmp.44 = zext i8 %k.load.4 to i64, !dbg !316   ; [#uses=1 type=i64] [debug line = 298:5]
  %sbox.addr.2 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.44, !dbg !316 ; [#uses=1 type=i8*] [debug line = 298:5]
  %sbox.load.2 = load i8* %sbox.addr.2, align 1, !dbg !316 ; [#uses=1 type=i8] [debug line = 298:5]
  %k.addr.5 = getelementptr [32 x i8]* %k, i64 0, i64 2, !dbg !316 ; [#uses=2 type=i8*] [debug line = 298:5]
  %k.load.5 = load i8* %k.addr.5, align 1, !dbg !316 ; [#uses=1 type=i8] [debug line = 298:5]
  %tmp.45 = xor i8 %k.load.5, %sbox.load.2, !dbg !316 ; [#uses=1 type=i8] [debug line = 298:5]
  store i8 %tmp.45, i8* %k.addr.5, align 1, !dbg !316 ; [debug line = 298:5]
  %k.addr.6 = getelementptr [32 x i8]* %k, i64 0, i64 28, !dbg !317 ; [#uses=1 type=i8*] [debug line = 299:5]
  %k.load.6 = load i8* %k.addr.6, align 1, !dbg !317 ; [#uses=1 type=i8] [debug line = 299:5]
  %tmp.46 = zext i8 %k.load.6 to i64, !dbg !317   ; [#uses=1 type=i64] [debug line = 299:5]
  %sbox.addr.3 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.46, !dbg !317 ; [#uses=1 type=i8*] [debug line = 299:5]
  %sbox.load.3 = load i8* %sbox.addr.3, align 1, !dbg !317 ; [#uses=1 type=i8] [debug line = 299:5]
  %k.addr.7 = getelementptr [32 x i8]* %k, i64 0, i64 3, !dbg !317 ; [#uses=2 type=i8*] [debug line = 299:5]
  %k.load.7 = load i8* %k.addr.7, align 1, !dbg !317 ; [#uses=1 type=i8] [debug line = 299:5]
  %tmp.47 = xor i8 %k.load.7, %sbox.load.3, !dbg !317 ; [#uses=1 type=i8] [debug line = 299:5]
  store i8 %tmp.47, i8* %k.addr.7, align 1, !dbg !317 ; [debug line = 299:5]
  call void @llvm.dbg.value(metadata !{i8 %rc.read}, i64 0, metadata !318), !dbg !320 ; [debug line = 187:33@300:11] [debug variable = x]
  %y = shl i8 %rc.read, 1, !dbg !321              ; [#uses=2 type=i8] [debug line = 189:34@300:11]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !322), !dbg !321 ; [debug line = 189:34@300:11] [debug variable = y]
  %tmp.i = icmp slt i8 %rc.read, 0, !dbg !323     ; [#uses=1 type=i1] [debug line = 190:5@300:11]
  %tmp.1.i = xor i8 %y, 27, !dbg !323             ; [#uses=1 type=i8] [debug line = 190:5@300:11]
  %y.22 = select i1 %tmp.i, i8 %tmp.1.i, i8 %y, !dbg !323 ; [#uses=1 type=i8] [debug line = 190:5@300:11]
  call void @llvm.dbg.value(metadata !{i8 %y.22}, i64 0, metadata !322), !dbg !323 ; [debug line = 190:5@300:11] [debug variable = y]
  br label %1, !dbg !324                          ; [debug line = 302:9]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ 4, %0 ], [ %i.32, %3 ]            ; [#uses=4 type=i5]
  %tmp.48 = icmp sgt i5 %i, -1, !dbg !324         ; [#uses=1 type=i1] [debug line = 302:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp.48, label %3, label %4, !dbg !324    ; [debug line = 302:9]

; <label>:3                                       ; preds = %1
  %tmp.64.cast = trunc i5 %i to i4, !dbg !326     ; [#uses=7 type=i4] [debug line = 302:32]
  %tmp.49 = add i4 %tmp.64.cast, -4, !dbg !326    ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp.50 = zext i4 %tmp.49 to i64, !dbg !326     ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.8 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.50, !dbg !326 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k.load.8 = load i8* %k.addr.8, align 1, !dbg !326 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp.51 = zext i5 %i to i64, !dbg !326          ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.9 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.51, !dbg !326 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k.load.9 = load i8* %k.addr.9, align 1, !dbg !326 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp.52 = xor i8 %k.load.9, %k.load.8, !dbg !326 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp.52, i8* %k.addr.9, align 1, !dbg !326 ; [debug line = 302:32]
  %tmp.53 = add i4 %tmp.64.cast, -3, !dbg !326    ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp.54 = zext i4 %tmp.53 to i64, !dbg !326     ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.10 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.54, !dbg !326 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k.load.10 = load i8* %k.addr.10, align 1, !dbg !326 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp.55 = or i4 %tmp.64.cast, 1, !dbg !326      ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp.56 = zext i4 %tmp.55 to i64, !dbg !326     ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.11 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.56, !dbg !326 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k.load.11 = load i8* %k.addr.11, align 1, !dbg !326 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp.57 = xor i8 %k.load.11, %k.load.10, !dbg !326 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp.57, i8* %k.addr.11, align 1, !dbg !326 ; [debug line = 302:32]
  %tmp.58 = add i4 %tmp.64.cast, -2, !dbg !326    ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp.59 = zext i4 %tmp.58 to i64, !dbg !326     ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.12 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.59, !dbg !326 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k.load.12 = load i8* %k.addr.12, align 1, !dbg !326 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp.60 = or i4 %tmp.64.cast, 2, !dbg !326      ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp.61 = zext i4 %tmp.60 to i64, !dbg !326     ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.13 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.61, !dbg !326 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k.load.13 = load i8* %k.addr.13, align 1, !dbg !326 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp.62 = xor i8 %k.load.13, %k.load.12, !dbg !326 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp.62, i8* %k.addr.13, align 1, !dbg !326 ; [debug line = 302:32]
  %tmp.63 = add i4 %tmp.64.cast, -1, !dbg !326    ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp.64 = zext i4 %tmp.63 to i64, !dbg !326     ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.14 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.64, !dbg !326 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k.load.14 = load i8* %k.addr.14, align 1, !dbg !326 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp.65 = or i4 %tmp.64.cast, 3, !dbg !326      ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp.66 = zext i4 %tmp.65 to i64, !dbg !326     ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.15 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.66, !dbg !326 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k.load.15 = load i8* %k.addr.15, align 1, !dbg !326 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp.67 = xor i8 %k.load.15, %k.load.14, !dbg !326 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp.67, i8* %k.addr.15, align 1, !dbg !326 ; [debug line = 302:32]
  %i.32 = add i5 %i, 4, !dbg !327                 ; [#uses=1 type=i5] [debug line = 302:24]
  call void @llvm.dbg.value(metadata !{i5 %i.32}, i64 0, metadata !328), !dbg !327 ; [debug line = 302:24] [debug variable = i]
  br label %1, !dbg !327                          ; [debug line = 302:24]

; <label>:4                                       ; preds = %1
  %k.addr.16 = getelementptr [32 x i8]* %k, i64 0, i64 12, !dbg !329 ; [#uses=1 type=i8*] [debug line = 304:5]
  %k.load.16 = load i8* %k.addr.16, align 1, !dbg !329 ; [#uses=1 type=i8] [debug line = 304:5]
  %tmp.68 = zext i8 %k.load.16 to i64, !dbg !329  ; [#uses=1 type=i64] [debug line = 304:5]
  %sbox.addr.4 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.68, !dbg !329 ; [#uses=1 type=i8*] [debug line = 304:5]
  %sbox.load.4 = load i8* %sbox.addr.4, align 1, !dbg !329 ; [#uses=1 type=i8] [debug line = 304:5]
  %k.addr.17 = getelementptr [32 x i8]* %k, i64 0, i64 16, !dbg !329 ; [#uses=2 type=i8*] [debug line = 304:5]
  %k.load.17 = load i8* %k.addr.17, align 1, !dbg !329 ; [#uses=1 type=i8] [debug line = 304:5]
  %tmp.69 = xor i8 %k.load.17, %sbox.load.4, !dbg !329 ; [#uses=1 type=i8] [debug line = 304:5]
  store i8 %tmp.69, i8* %k.addr.17, align 1, !dbg !329 ; [debug line = 304:5]
  %k.addr.18 = getelementptr [32 x i8]* %k, i64 0, i64 13, !dbg !330 ; [#uses=1 type=i8*] [debug line = 305:5]
  %k.load.18 = load i8* %k.addr.18, align 1, !dbg !330 ; [#uses=1 type=i8] [debug line = 305:5]
  %tmp.70 = zext i8 %k.load.18 to i64, !dbg !330  ; [#uses=1 type=i64] [debug line = 305:5]
  %sbox.addr.5 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.70, !dbg !330 ; [#uses=1 type=i8*] [debug line = 305:5]
  %sbox.load.5 = load i8* %sbox.addr.5, align 1, !dbg !330 ; [#uses=1 type=i8] [debug line = 305:5]
  %k.addr.19 = getelementptr [32 x i8]* %k, i64 0, i64 17, !dbg !330 ; [#uses=2 type=i8*] [debug line = 305:5]
  %k.load.19 = load i8* %k.addr.19, align 1, !dbg !330 ; [#uses=1 type=i8] [debug line = 305:5]
  %tmp.71 = xor i8 %k.load.19, %sbox.load.5, !dbg !330 ; [#uses=1 type=i8] [debug line = 305:5]
  store i8 %tmp.71, i8* %k.addr.19, align 1, !dbg !330 ; [debug line = 305:5]
  %k.addr.20 = getelementptr [32 x i8]* %k, i64 0, i64 14, !dbg !331 ; [#uses=1 type=i8*] [debug line = 306:5]
  %k.load.20 = load i8* %k.addr.20, align 1, !dbg !331 ; [#uses=1 type=i8] [debug line = 306:5]
  %tmp.72 = zext i8 %k.load.20 to i64, !dbg !331  ; [#uses=1 type=i64] [debug line = 306:5]
  %sbox.addr.6 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.72, !dbg !331 ; [#uses=1 type=i8*] [debug line = 306:5]
  %sbox.load.6 = load i8* %sbox.addr.6, align 1, !dbg !331 ; [#uses=1 type=i8] [debug line = 306:5]
  %k.addr.21 = getelementptr [32 x i8]* %k, i64 0, i64 18, !dbg !331 ; [#uses=2 type=i8*] [debug line = 306:5]
  %k.load.21 = load i8* %k.addr.21, align 1, !dbg !331 ; [#uses=1 type=i8] [debug line = 306:5]
  %tmp.73 = xor i8 %k.load.21, %sbox.load.6, !dbg !331 ; [#uses=1 type=i8] [debug line = 306:5]
  store i8 %tmp.73, i8* %k.addr.21, align 1, !dbg !331 ; [debug line = 306:5]
  %k.addr.22 = getelementptr [32 x i8]* %k, i64 0, i64 15, !dbg !332 ; [#uses=1 type=i8*] [debug line = 307:5]
  %k.load.22 = load i8* %k.addr.22, align 1, !dbg !332 ; [#uses=1 type=i8] [debug line = 307:5]
  %tmp.74 = zext i8 %k.load.22 to i64, !dbg !332  ; [#uses=1 type=i64] [debug line = 307:5]
  %sbox.addr.7 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.74, !dbg !332 ; [#uses=1 type=i8*] [debug line = 307:5]
  %sbox.load.7 = load i8* %sbox.addr.7, align 1, !dbg !332 ; [#uses=1 type=i8] [debug line = 307:5]
  %k.addr.23 = getelementptr [32 x i8]* %k, i64 0, i64 19, !dbg !332 ; [#uses=2 type=i8*] [debug line = 307:5]
  %k.load.23 = load i8* %k.addr.23, align 1, !dbg !332 ; [#uses=1 type=i8] [debug line = 307:5]
  %tmp.75 = xor i8 %k.load.23, %sbox.load.7, !dbg !332 ; [#uses=1 type=i8] [debug line = 307:5]
  store i8 %tmp.75, i8* %k.addr.23, align 1, !dbg !332 ; [debug line = 307:5]
  br label %5, !dbg !333                          ; [debug line = 309:9]

; <label>:5                                       ; preds = %7, %4
  %i.1 = phi i6 [ 20, %4 ], [ %i.33, %7 ]         ; [#uses=4 type=i6]
  %tmp.76 = icmp sgt i6 %i.1, -1, !dbg !333       ; [#uses=1 type=i1] [debug line = 309:9]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp.76, label %7, label %8, !dbg !333    ; [debug line = 309:9]

; <label>:7                                       ; preds = %5
  %tmp.93.cast = trunc i6 %i.1 to i5, !dbg !335   ; [#uses=7 type=i5] [debug line = 309:33]
  %tmp.77 = add i5 %tmp.93.cast, -4, !dbg !335    ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp.78 = zext i5 %tmp.77 to i64, !dbg !335     ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.24 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.78, !dbg !335 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k.load.24 = load i8* %k.addr.24, align 1, !dbg !335 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp.79 = zext i6 %i.1 to i64, !dbg !335        ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.25 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.79, !dbg !335 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k.load.25 = load i8* %k.addr.25, align 1, !dbg !335 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp.80 = xor i8 %k.load.25, %k.load.24, !dbg !335 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp.80, i8* %k.addr.25, align 1, !dbg !335 ; [debug line = 309:33]
  %tmp.81 = add i5 %tmp.93.cast, -3, !dbg !335    ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp.82 = zext i5 %tmp.81 to i64, !dbg !335     ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.26 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.82, !dbg !335 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k.load.26 = load i8* %k.addr.26, align 1, !dbg !335 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp.83 = or i5 %tmp.93.cast, 1, !dbg !335      ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp.84 = zext i5 %tmp.83 to i64, !dbg !335     ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.27 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.84, !dbg !335 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k.load.27 = load i8* %k.addr.27, align 1, !dbg !335 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp.85 = xor i8 %k.load.27, %k.load.26, !dbg !335 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp.85, i8* %k.addr.27, align 1, !dbg !335 ; [debug line = 309:33]
  %tmp.86 = add i5 %tmp.93.cast, -2, !dbg !335    ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp.87 = zext i5 %tmp.86 to i64, !dbg !335     ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.28 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.87, !dbg !335 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k.load.28 = load i8* %k.addr.28, align 1, !dbg !335 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp.88 = or i5 %tmp.93.cast, 2, !dbg !335      ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp.89 = zext i5 %tmp.88 to i64, !dbg !335     ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.29 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.89, !dbg !335 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k.load.29 = load i8* %k.addr.29, align 1, !dbg !335 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp.90 = xor i8 %k.load.29, %k.load.28, !dbg !335 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp.90, i8* %k.addr.29, align 1, !dbg !335 ; [debug line = 309:33]
  %tmp.91 = add i5 %tmp.93.cast, -1, !dbg !335    ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp.92 = zext i5 %tmp.91 to i64, !dbg !335     ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.30 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.92, !dbg !335 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k.load.30 = load i8* %k.addr.30, align 1, !dbg !335 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp.93 = or i5 %tmp.93.cast, 3, !dbg !335      ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp.94 = zext i5 %tmp.93 to i64, !dbg !335     ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.31 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.94, !dbg !335 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k.load.31 = load i8* %k.addr.31, align 1, !dbg !335 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp.95 = xor i8 %k.load.31, %k.load.30, !dbg !335 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp.95, i8* %k.addr.31, align 1, !dbg !335 ; [debug line = 309:33]
  %i.33 = add i6 %i.1, 4, !dbg !336               ; [#uses=1 type=i6] [debug line = 309:25]
  call void @llvm.dbg.value(metadata !{i6 %i.33}, i64 0, metadata !328), !dbg !336 ; [debug line = 309:25] [debug variable = i]
  br label %5, !dbg !336                          ; [debug line = 309:25]

; <label>:8                                       ; preds = %5
  ret i8 %y.22, !dbg !337                         ; [debug line = 312:1]
}

; [#uses=1]
define internal fastcc i8 @aes_expandDecKey(i8 %rc.read) {
  call void @llvm.dbg.value(metadata !{i8 %rc.read}, i64 0, metadata !338), !dbg !340 ; [debug line = 315:44] [debug variable = rc]
  br label %1, !dbg !341                          ; [debug line = 319:9]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ -4, %0 ], [ %i.34, %3 ]           ; [#uses=10 type=i5]
  %tmp = icmp ugt i5 %i, -16, !dbg !341           ; [#uses=1 type=i1] [debug line = 319:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp, label %3, label %4, !dbg !341       ; [debug line = 319:9]

; <label>:3                                       ; preds = %1
  %tmp. = add i5 %i, -4, !dbg !344                ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp.96 = zext i5 %tmp. to i64, !dbg !344       ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx.key.addr = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.96, !dbg !344 ; [#uses=1 type=i8*] [debug line = 319:33]
  %ctx.key.load = load i8* %ctx.key.addr, align 4, !dbg !344 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp.97 = zext i5 %i to i64, !dbg !344          ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx.key.addr.1 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.97, !dbg !344 ; [#uses=2 type=i8*] [debug line = 319:33]
  %ctx.key.load.1 = load i8* %ctx.key.addr.1, align 4, !dbg !344 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp.98 = xor i8 %ctx.key.load.1, %ctx.key.load, !dbg !344 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp.98, i8* %ctx.key.addr.1, align 4, !dbg !344 ; [debug line = 319:33]
  %tmp.99 = add i5 %i, -3, !dbg !344              ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp.100 = zext i5 %tmp.99 to i64, !dbg !344    ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx.key.addr.2 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.100, !dbg !344 ; [#uses=1 type=i8*] [debug line = 319:33]
  %ctx.key.load.2 = load i8* %ctx.key.addr.2, align 1, !dbg !344 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp.101 = or i5 %i, 1, !dbg !344               ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp.102 = zext i5 %tmp.101 to i64, !dbg !344   ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx.key.addr.3 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.102, !dbg !344 ; [#uses=2 type=i8*] [debug line = 319:33]
  %ctx.key.load.3 = load i8* %ctx.key.addr.3, align 1, !dbg !344 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp.103 = xor i8 %ctx.key.load.3, %ctx.key.load.2, !dbg !344 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp.103, i8* %ctx.key.addr.3, align 1, !dbg !344 ; [debug line = 319:33]
  %tmp.104 = add i5 %i, -2, !dbg !344             ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp.105 = zext i5 %tmp.104 to i64, !dbg !344   ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx.key.addr.4 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.105, !dbg !344 ; [#uses=1 type=i8*] [debug line = 319:33]
  %ctx.key.load.4 = load i8* %ctx.key.addr.4, align 2, !dbg !344 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp.106 = or i5 %i, 2, !dbg !344               ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp.107 = zext i5 %tmp.106 to i64, !dbg !344   ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx.key.addr.5 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.107, !dbg !344 ; [#uses=2 type=i8*] [debug line = 319:33]
  %ctx.key.load.5 = load i8* %ctx.key.addr.5, align 2, !dbg !344 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp.108 = xor i8 %ctx.key.load.5, %ctx.key.load.4, !dbg !344 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp.108, i8* %ctx.key.addr.5, align 2, !dbg !344 ; [debug line = 319:33]
  %tmp.109 = add i5 %i, -1, !dbg !344             ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp.110 = zext i5 %tmp.109 to i64, !dbg !344   ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx.key.addr.6 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.110, !dbg !344 ; [#uses=1 type=i8*] [debug line = 319:33]
  %ctx.key.load.6 = load i8* %ctx.key.addr.6, align 1, !dbg !344 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp.111 = or i5 %i, 3, !dbg !344               ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp.112 = zext i5 %tmp.111 to i64, !dbg !344   ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx.key.addr.7 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.112, !dbg !344 ; [#uses=2 type=i8*] [debug line = 319:33]
  %ctx.key.load.7 = load i8* %ctx.key.addr.7, align 1, !dbg !344 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp.113 = xor i8 %ctx.key.load.7, %ctx.key.load.6, !dbg !344 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp.113, i8* %ctx.key.addr.7, align 1, !dbg !344 ; [debug line = 319:33]
  %i.34 = add i5 %i, -4, !dbg !345                ; [#uses=1 type=i5] [debug line = 319:25]
  call void @llvm.dbg.value(metadata !{i5 %i.34}, i64 0, metadata !346), !dbg !345 ; [debug line = 319:25] [debug variable = i]
  br label %1, !dbg !345                          ; [debug line = 319:25]

; <label>:4                                       ; preds = %1
  %ctx.key.load.8 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 12), align 4, !dbg !347 ; [#uses=1 type=i8] [debug line = 322:5]
  %tmp.114 = zext i8 %ctx.key.load.8 to i64, !dbg !347 ; [#uses=1 type=i64] [debug line = 322:5]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.114, !dbg !347 ; [#uses=1 type=i8*] [debug line = 322:5]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !347 ; [#uses=1 type=i8] [debug line = 322:5]
  %ctx.key.load.9 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 16), align 16, !dbg !347 ; [#uses=1 type=i8] [debug line = 322:5]
  %tmp.115 = xor i8 %ctx.key.load.9, %sbox.load, !dbg !347 ; [#uses=1 type=i8] [debug line = 322:5]
  store i8 %tmp.115, i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 16), align 16, !dbg !347 ; [debug line = 322:5]
  %ctx.key.load.10 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 13), align 1, !dbg !348 ; [#uses=1 type=i8] [debug line = 323:5]
  %tmp.116 = zext i8 %ctx.key.load.10 to i64, !dbg !348 ; [#uses=1 type=i64] [debug line = 323:5]
  %sbox.addr.8 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.116, !dbg !348 ; [#uses=1 type=i8*] [debug line = 323:5]
  %sbox.load.8 = load i8* %sbox.addr.8, align 1, !dbg !348 ; [#uses=1 type=i8] [debug line = 323:5]
  %ctx.key.load.11 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 17), align 1, !dbg !348 ; [#uses=1 type=i8] [debug line = 323:5]
  %tmp.117 = xor i8 %ctx.key.load.11, %sbox.load.8, !dbg !348 ; [#uses=1 type=i8] [debug line = 323:5]
  store i8 %tmp.117, i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 17), align 1, !dbg !348 ; [debug line = 323:5]
  %ctx.key.load.12 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 14), align 2, !dbg !349 ; [#uses=1 type=i8] [debug line = 324:5]
  %tmp.118 = zext i8 %ctx.key.load.12 to i64, !dbg !349 ; [#uses=1 type=i64] [debug line = 324:5]
  %sbox.addr.9 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.118, !dbg !349 ; [#uses=1 type=i8*] [debug line = 324:5]
  %sbox.load.9 = load i8* %sbox.addr.9, align 1, !dbg !349 ; [#uses=1 type=i8] [debug line = 324:5]
  %ctx.key.load.13 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 18), align 2, !dbg !349 ; [#uses=1 type=i8] [debug line = 324:5]
  %tmp.119 = xor i8 %ctx.key.load.13, %sbox.load.9, !dbg !349 ; [#uses=1 type=i8] [debug line = 324:5]
  store i8 %tmp.119, i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 18), align 2, !dbg !349 ; [debug line = 324:5]
  %ctx.key.load.14 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 15), align 1, !dbg !350 ; [#uses=1 type=i8] [debug line = 325:5]
  %tmp.120 = zext i8 %ctx.key.load.14 to i64, !dbg !350 ; [#uses=1 type=i64] [debug line = 325:5]
  %sbox.addr.10 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.120, !dbg !350 ; [#uses=1 type=i8*] [debug line = 325:5]
  %sbox.load.10 = load i8* %sbox.addr.10, align 1, !dbg !350 ; [#uses=1 type=i8] [debug line = 325:5]
  %ctx.key.load.15 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 19), align 1, !dbg !350 ; [#uses=1 type=i8] [debug line = 325:5]
  %tmp.121 = xor i8 %ctx.key.load.15, %sbox.load.10, !dbg !350 ; [#uses=1 type=i8] [debug line = 325:5]
  store i8 %tmp.121, i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 19), align 1, !dbg !350 ; [debug line = 325:5]
  br label %5, !dbg !351                          ; [debug line = 327:9]

; <label>:5                                       ; preds = %7, %4
  %i.1 = phi i4 [ -4, %4 ], [ %i., %7 ]           ; [#uses=8 type=i4]
  %tmp.122 = icmp eq i4 %i.1, 0, !dbg !351        ; [#uses=1 type=i1] [debug line = 327:9]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp.122, label %8, label %7, !dbg !351   ; [debug line = 327:9]

; <label>:7                                       ; preds = %5
  %tmp.154.cast = zext i4 %i.1 to i5, !dbg !353   ; [#uses=3 type=i5] [debug line = 327:32]
  %tmp.133 = add i5 %tmp.154.cast, -4, !dbg !353  ; [#uses=1 type=i5] [debug line = 327:32]
  %tmp.134 = sext i5 %tmp.133 to i64, !dbg !353   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx.key.addr.8 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.134, !dbg !353 ; [#uses=1 type=i8*] [debug line = 327:32]
  %ctx.key.load.24 = load i8* %ctx.key.addr.8, align 4, !dbg !353 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp.135 = zext i4 %i.1 to i64, !dbg !353       ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx.key.addr.9 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.135, !dbg !353 ; [#uses=2 type=i8*] [debug line = 327:32]
  %ctx.key.load.25 = load i8* %ctx.key.addr.9, align 4, !dbg !353 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp.136 = xor i8 %ctx.key.load.25, %ctx.key.load.24, !dbg !353 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp.136, i8* %ctx.key.addr.9, align 4, !dbg !353 ; [debug line = 327:32]
  %tmp.137 = add i5 %tmp.154.cast, -3, !dbg !353  ; [#uses=1 type=i5] [debug line = 327:32]
  %tmp.138 = sext i5 %tmp.137 to i64, !dbg !353   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx.key.addr.10 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.138, !dbg !353 ; [#uses=1 type=i8*] [debug line = 327:32]
  %ctx.key.load.26 = load i8* %ctx.key.addr.10, align 1, !dbg !353 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp.139 = or i4 %i.1, 1, !dbg !353             ; [#uses=1 type=i4] [debug line = 327:32]
  %tmp.140 = zext i4 %tmp.139 to i64, !dbg !353   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx.key.addr.11 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.140, !dbg !353 ; [#uses=2 type=i8*] [debug line = 327:32]
  %ctx.key.load.27 = load i8* %ctx.key.addr.11, align 1, !dbg !353 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp.141 = xor i8 %ctx.key.load.27, %ctx.key.load.26, !dbg !353 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp.141, i8* %ctx.key.addr.11, align 1, !dbg !353 ; [debug line = 327:32]
  %tmp.142 = add i5 %tmp.154.cast, -2, !dbg !353  ; [#uses=1 type=i5] [debug line = 327:32]
  %tmp.143 = sext i5 %tmp.142 to i64, !dbg !353   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx.key.addr.12 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.143, !dbg !353 ; [#uses=1 type=i8*] [debug line = 327:32]
  %ctx.key.load.28 = load i8* %ctx.key.addr.12, align 2, !dbg !353 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp.144 = or i4 %i.1, 2, !dbg !353             ; [#uses=1 type=i4] [debug line = 327:32]
  %tmp.145 = zext i4 %tmp.144 to i64, !dbg !353   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx.key.addr.13 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.145, !dbg !353 ; [#uses=2 type=i8*] [debug line = 327:32]
  %ctx.key.load.29 = load i8* %ctx.key.addr.13, align 2, !dbg !353 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp.146 = xor i8 %ctx.key.load.29, %ctx.key.load.28, !dbg !353 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp.146, i8* %ctx.key.addr.13, align 2, !dbg !353 ; [debug line = 327:32]
  %tmp.147 = add i4 %i.1, -1, !dbg !353           ; [#uses=1 type=i4] [debug line = 327:32]
  %tmp.148 = zext i4 %tmp.147 to i64, !dbg !353   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx.key.addr.14 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.148, !dbg !353 ; [#uses=1 type=i8*] [debug line = 327:32]
  %ctx.key.load.30 = load i8* %ctx.key.addr.14, align 1, !dbg !353 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp.149 = or i4 %i.1, 3, !dbg !353             ; [#uses=1 type=i4] [debug line = 327:32]
  %tmp.150 = zext i4 %tmp.149 to i64, !dbg !353   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx.key.addr.15 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.150, !dbg !353 ; [#uses=2 type=i8*] [debug line = 327:32]
  %ctx.key.load.31 = load i8* %ctx.key.addr.15, align 1, !dbg !353 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp.151 = xor i8 %ctx.key.load.31, %ctx.key.load.30, !dbg !353 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp.151, i8* %ctx.key.addr.15, align 1, !dbg !353 ; [debug line = 327:32]
  %i. = add i4 %i.1, -4, !dbg !354                ; [#uses=1 type=i4] [debug line = 327:24]
  br label %5, !dbg !354                          ; [debug line = 327:24]

; <label>:8                                       ; preds = %5
  %tmp.123 = lshr i8 %rc.read, 1, !dbg !355       ; [#uses=1 type=i8] [debug line = 330:5]
  %rc.read.cast = trunc i8 %rc.read to i1, !dbg !355 ; [#uses=1 type=i1] [debug line = 330:5]
  %tmp.124 = select i1 %rc.read.cast, i8 -115, i8 0, !dbg !355 ; [#uses=1 type=i8] [debug line = 330:5]
  %rc.write.assign = xor i8 %tmp.124, %tmp.123, !dbg !355 ; [#uses=2 type=i8] [debug line = 330:5]
  %ctx.key.load.16 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 29), align 1, !dbg !356 ; [#uses=1 type=i8] [debug line = 331:5]
  %tmp.125 = zext i8 %ctx.key.load.16 to i64, !dbg !356 ; [#uses=1 type=i64] [debug line = 331:5]
  %sbox.addr.11 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.125, !dbg !356 ; [#uses=1 type=i8*] [debug line = 331:5]
  %sbox.load.11 = load i8* %sbox.addr.11, align 1, !dbg !356 ; [#uses=1 type=i8] [debug line = 331:5]
  %ctx.key.load.17 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 0), align 16, !dbg !356 ; [#uses=1 type=i8] [debug line = 331:5]
  %tmp1 = xor i8 %ctx.key.load.17, %rc.write.assign, !dbg !356 ; [#uses=1 type=i8] [debug line = 331:5]
  %tmp.126 = xor i8 %tmp1, %sbox.load.11, !dbg !356 ; [#uses=1 type=i8] [debug line = 331:5]
  store i8 %tmp.126, i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 0), align 16, !dbg !356 ; [debug line = 331:5]
  %ctx.key.load.18 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 30), align 2, !dbg !357 ; [#uses=1 type=i8] [debug line = 332:5]
  %tmp.127 = zext i8 %ctx.key.load.18 to i64, !dbg !357 ; [#uses=1 type=i64] [debug line = 332:5]
  %sbox.addr.12 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.127, !dbg !357 ; [#uses=1 type=i8*] [debug line = 332:5]
  %sbox.load.12 = load i8* %sbox.addr.12, align 1, !dbg !357 ; [#uses=1 type=i8] [debug line = 332:5]
  %ctx.key.load.19 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 1), align 1, !dbg !357 ; [#uses=1 type=i8] [debug line = 332:5]
  %tmp.128 = xor i8 %ctx.key.load.19, %sbox.load.12, !dbg !357 ; [#uses=1 type=i8] [debug line = 332:5]
  store i8 %tmp.128, i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 1), align 1, !dbg !357 ; [debug line = 332:5]
  %ctx.key.load.20 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 31), align 1, !dbg !358 ; [#uses=1 type=i8] [debug line = 333:5]
  %tmp.129 = zext i8 %ctx.key.load.20 to i64, !dbg !358 ; [#uses=1 type=i64] [debug line = 333:5]
  %sbox.addr.13 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.129, !dbg !358 ; [#uses=1 type=i8*] [debug line = 333:5]
  %sbox.load.13 = load i8* %sbox.addr.13, align 1, !dbg !358 ; [#uses=1 type=i8] [debug line = 333:5]
  %ctx.key.load.21 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 2), align 2, !dbg !358 ; [#uses=1 type=i8] [debug line = 333:5]
  %tmp.130 = xor i8 %ctx.key.load.21, %sbox.load.13, !dbg !358 ; [#uses=1 type=i8] [debug line = 333:5]
  store i8 %tmp.130, i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 2), align 2, !dbg !358 ; [debug line = 333:5]
  %ctx.key.load.22 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 28), align 4, !dbg !359 ; [#uses=1 type=i8] [debug line = 334:5]
  %tmp.131 = zext i8 %ctx.key.load.22 to i64, !dbg !359 ; [#uses=1 type=i64] [debug line = 334:5]
  %sbox.addr.14 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.131, !dbg !359 ; [#uses=1 type=i8*] [debug line = 334:5]
  %sbox.load.14 = load i8* %sbox.addr.14, align 1, !dbg !359 ; [#uses=1 type=i8] [debug line = 334:5]
  %ctx.key.load.23 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 3), align 1, !dbg !359 ; [#uses=1 type=i8] [debug line = 334:5]
  %tmp.132 = xor i8 %ctx.key.load.23, %sbox.load.14, !dbg !359 ; [#uses=1 type=i8] [debug line = 334:5]
  store i8 %tmp.132, i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 3), align 1, !dbg !359 ; [debug line = 334:5]
  call void @llvm.dbg.value(metadata !{i8 %rc.write.assign}, i64 0, metadata !360), !dbg !340 ; [debug line = 315:44] [debug variable = rc]
  ret i8 %rc.write.assign, !dbg !361              ; [debug line = 335:1]
}

; [#uses=1]
define internal fastcc void @aes_encrypt_ecb([16 x i8]* nocapture %buf) {
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !362), !dbg !364 ; [debug line = 358:49] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !365), !dbg !371 ; [debug line = 218:42@362:5] [debug variable = buf]
  br label %1, !dbg !372                          ; [debug line = 222:5@362:5]

; <label>:1                                       ; preds = %3, %0
  %i.i = phi i5 [ -16, %0 ], [ %i.35, %3 ]        ; [#uses=3 type=i5]
  %i.35 = add i5 %i.i, -1, !dbg !372              ; [#uses=2 type=i5] [debug line = 222:5@362:5]
  %i.36.cast = sext i5 %i.35 to i8, !dbg !372     ; [#uses=1 type=i8] [debug line = 222:5@362:5]
  call void @llvm.dbg.value(metadata !{i5 %i.35}, i64 0, metadata !374), !dbg !372 ; [debug line = 222:5@362:5] [debug variable = i]
  %tmp.i = icmp eq i5 %i.i, 0, !dbg !372          ; [#uses=1 type=i1] [debug line = 222:5@362:5]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp.i, label %aes_addRoundKey_cpy.exit.preheader, label %3, !dbg !372 ; [debug line = 222:5@362:5]

aes_addRoundKey_cpy.exit.preheader:               ; preds = %1
  %buf.addr = getelementptr [16 x i8]* %buf, i64 0, i64 1, !dbg !375 ; [#uses=4 type=i8*] [debug line = 231:5@366:9]
  %buf.addr.11 = getelementptr [16 x i8]* %buf, i64 0, i64 5, !dbg !375 ; [#uses=4 type=i8*] [debug line = 231:5@366:9]
  %buf.addr.12 = getelementptr [16 x i8]* %buf, i64 0, i64 9, !dbg !375 ; [#uses=4 type=i8*] [debug line = 231:5@366:9]
  %buf.addr.13 = getelementptr [16 x i8]* %buf, i64 0, i64 13, !dbg !375 ; [#uses=4 type=i8*] [debug line = 231:5@366:9]
  %buf.addr.14 = getelementptr [16 x i8]* %buf, i64 0, i64 10, !dbg !381 ; [#uses=4 type=i8*] [debug line = 232:5@366:9]
  %buf.addr.15 = getelementptr [16 x i8]* %buf, i64 0, i64 2, !dbg !381 ; [#uses=4 type=i8*] [debug line = 232:5@366:9]
  %buf.addr.16 = getelementptr [16 x i8]* %buf, i64 0, i64 3, !dbg !382 ; [#uses=4 type=i8*] [debug line = 233:5@366:9]
  %buf.addr.17 = getelementptr [16 x i8]* %buf, i64 0, i64 15, !dbg !382 ; [#uses=4 type=i8*] [debug line = 233:5@366:9]
  %buf.addr.18 = getelementptr [16 x i8]* %buf, i64 0, i64 11, !dbg !382 ; [#uses=4 type=i8*] [debug line = 233:5@366:9]
  %buf.addr.19 = getelementptr [16 x i8]* %buf, i64 0, i64 7, !dbg !382 ; [#uses=4 type=i8*] [debug line = 233:5@366:9]
  %buf.addr.20 = getelementptr [16 x i8]* %buf, i64 0, i64 14, !dbg !383 ; [#uses=4 type=i8*] [debug line = 234:5@366:9]
  %buf.addr.21 = getelementptr [16 x i8]* %buf, i64 0, i64 6, !dbg !383 ; [#uses=4 type=i8*] [debug line = 234:5@366:9]
  br label %aes_addRoundKey_cpy.exit, !dbg !384   ; [debug line = 363:9]

; <label>:3                                       ; preds = %1
  %tmp..i = zext i8 %i.36.cast to i64, !dbg !385  ; [#uses=3 type=i64] [debug line = 222:17@362:5]
  %ctx.enckey.addr = getelementptr [32 x i8]* @ctx.enckey, i64 0, i64 %tmp..i, !dbg !385 ; [#uses=1 type=i8*] [debug line = 222:17@362:5]
  %ctx.enckey.load = load i8* %ctx.enckey.addr, align 1, !dbg !385 ; [#uses=2 type=i8] [debug line = 222:17@362:5]
  %ctx.key.addr = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp..i, !dbg !385 ; [#uses=1 type=i8*] [debug line = 222:17@362:5]
  store i8 %ctx.enckey.load, i8* %ctx.key.addr, align 1, !dbg !385 ; [debug line = 222:17@362:5]
  %buf.addr.22 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp..i, !dbg !385 ; [#uses=2 type=i8*] [debug line = 222:17@362:5]
  %buf.load = load i8* %buf.addr.22, align 1, !dbg !385 ; [#uses=1 type=i8] [debug line = 222:17@362:5]
  %tmp.211.i = xor i8 %buf.load, %ctx.enckey.load, !dbg !385 ; [#uses=1 type=i8] [debug line = 222:17@362:5]
  store i8 %tmp.211.i, i8* %buf.addr.22, align 1, !dbg !385 ; [debug line = 222:17@362:5]
  %tmp.213.i = add i5 %i.i, 15, !dbg !385         ; [#uses=1 type=i5] [debug line = 222:17@362:5]
  %tmp.214.i = zext i5 %tmp.213.i to i64, !dbg !385 ; [#uses=2 type=i64] [debug line = 222:17@362:5]
  %ctx.enckey.addr.1 = getelementptr [32 x i8]* @ctx.enckey, i64 0, i64 %tmp.214.i, !dbg !385 ; [#uses=1 type=i8*] [debug line = 222:17@362:5]
  %ctx.enckey.load.1 = load i8* %ctx.enckey.addr.1, align 1, !dbg !385 ; [#uses=1 type=i8] [debug line = 222:17@362:5]
  %ctx.key.addr.16 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.214.i, !dbg !385 ; [#uses=1 type=i8*] [debug line = 222:17@362:5]
  store i8 %ctx.enckey.load.1, i8* %ctx.key.addr.16, align 1, !dbg !385 ; [debug line = 222:17@362:5]
  br label %1, !dbg !385                          ; [debug line = 222:17@362:5]

aes_addRoundKey_cpy.exit:                         ; preds = %12, %aes_addRoundKey_cpy.exit.preheader
  %rcon = phi i8 [ %rcon.1, %12 ], [ 1, %aes_addRoundKey_cpy.exit.preheader ] ; [#uses=3 type=i8]
  %i = phi i4 [ %i.43, %12 ], [ 1, %aes_addRoundKey_cpy.exit.preheader ] ; [#uses=3 type=i4]
  %i.cast4 = trunc i4 %i to i1, !dbg !384         ; [#uses=1 type=i1] [debug line = 363:9]
  %exitcond = icmp eq i4 %i, -2, !dbg !384        ; [#uses=1 type=i1] [debug line = 363:9]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 13, i64 13, i64 13) ; [#uses=0 type=i32]
  br i1 %exitcond, label %.preheader.preheader, label %.preheader50.preheader, !dbg !384 ; [debug line = 363:9]

.preheader50.preheader:                           ; preds = %aes_addRoundKey_cpy.exit
  br label %.preheader50, !dbg !386               ; [debug line = 198:5@365:9]

.preheader.preheader:                             ; preds = %aes_addRoundKey_cpy.exit
  %rcon.lcssa = phi i8 [ %rcon, %aes_addRoundKey_cpy.exit ] ; [#uses=1 type=i8]
  br label %.preheader, !dbg !390                 ; [debug line = 198:5@371:5]

.preheader50:                                     ; preds = %6, %.preheader50.preheader
  %i.i4 = phi i5 [ %i.37, %6 ], [ -16, %.preheader50.preheader ] ; [#uses=2 type=i5]
  %i.37 = add i5 %i.i4, -1, !dbg !386             ; [#uses=2 type=i5] [debug line = 198:5@365:9]
  %i.38.cast = sext i5 %i.37 to i8, !dbg !386     ; [#uses=1 type=i8] [debug line = 198:5@365:9]
  call void @llvm.dbg.value(metadata !{i5 %i.37}, i64 0, metadata !392), !dbg !386 ; [debug line = 198:5@365:9] [debug variable = i]
  %tmp.i5 = icmp eq i5 %i.i4, 0, !dbg !386        ; [#uses=1 type=i1] [debug line = 198:5@365:9]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp.i5, label %aes_subBytes.exit, label %6, !dbg !386 ; [debug line = 198:5@365:9]

; <label>:6                                       ; preds = %.preheader50
  %tmp..i6 = zext i8 %i.38.cast to i64, !dbg !393 ; [#uses=1 type=i64] [debug line = 198:17@365:9]
  %buf.addr.24 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp..i6, !dbg !393 ; [#uses=2 type=i8*] [debug line = 198:17@365:9]
  %buf.load.31 = load i8* %buf.addr.24, align 1, !dbg !393 ; [#uses=1 type=i8] [debug line = 198:17@365:9]
  %tmp.33.i = zext i8 %buf.load.31 to i64, !dbg !393 ; [#uses=1 type=i64] [debug line = 198:17@365:9]
  %sbox.addr.15 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.33.i, !dbg !393 ; [#uses=1 type=i8*] [debug line = 198:17@365:9]
  %sbox.load.15 = load i8* %sbox.addr.15, align 1, !dbg !393 ; [#uses=1 type=i8] [debug line = 198:17@365:9]
  store i8 %sbox.load.15, i8* %buf.addr.24, align 1, !dbg !393 ; [debug line = 198:17@365:9]
  br label %.preheader50, !dbg !393               ; [debug line = 198:17@365:9]

aes_subBytes.exit:                                ; preds = %.preheader50
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !394), !dbg !395 ; [debug line = 227:36@366:9] [debug variable = buf]
  %i.40 = load i8* %buf.addr, align 1, !dbg !375  ; [#uses=1 type=i8] [debug line = 231:5@366:9]
  call void @llvm.dbg.value(metadata !{i8 %i.40}, i64 0, metadata !396), !dbg !375 ; [debug line = 231:5@366:9] [debug variable = i]
  %buf.load.20 = load i8* %buf.addr.11, align 1, !dbg !375 ; [#uses=1 type=i8] [debug line = 231:5@366:9]
  store i8 %buf.load.20, i8* %buf.addr, align 1, !dbg !375 ; [debug line = 231:5@366:9]
  %buf.load.21 = load i8* %buf.addr.12, align 1, !dbg !375 ; [#uses=1 type=i8] [debug line = 231:5@366:9]
  store i8 %buf.load.21, i8* %buf.addr.11, align 1, !dbg !375 ; [debug line = 231:5@366:9]
  %buf.load.22 = load i8* %buf.addr.13, align 1, !dbg !375 ; [#uses=1 type=i8] [debug line = 231:5@366:9]
  store i8 %buf.load.22, i8* %buf.addr.12, align 1, !dbg !375 ; [debug line = 231:5@366:9]
  store i8 %i.40, i8* %buf.addr.13, align 1, !dbg !375 ; [debug line = 231:5@366:9]
  %i.41 = load i8* %buf.addr.14, align 1, !dbg !381 ; [#uses=1 type=i8] [debug line = 232:5@366:9]
  call void @llvm.dbg.value(metadata !{i8 %i.41}, i64 0, metadata !396), !dbg !381 ; [debug line = 232:5@366:9] [debug variable = i]
  %buf.load.24 = load i8* %buf.addr.15, align 1, !dbg !381 ; [#uses=1 type=i8] [debug line = 232:5@366:9]
  store i8 %buf.load.24, i8* %buf.addr.14, align 1, !dbg !381 ; [debug line = 232:5@366:9]
  store i8 %i.41, i8* %buf.addr.15, align 1, !dbg !381 ; [debug line = 232:5@366:9]
  %j.2 = load i8* %buf.addr.16, align 1, !dbg !382 ; [#uses=1 type=i8] [debug line = 233:5@366:9]
  call void @llvm.dbg.value(metadata !{i8 %j.2}, i64 0, metadata !397), !dbg !382 ; [debug line = 233:5@366:9] [debug variable = j]
  %buf.load.26 = load i8* %buf.addr.17, align 1, !dbg !382 ; [#uses=1 type=i8] [debug line = 233:5@366:9]
  store i8 %buf.load.26, i8* %buf.addr.16, align 1, !dbg !382 ; [debug line = 233:5@366:9]
  %buf.load.27 = load i8* %buf.addr.18, align 1, !dbg !382 ; [#uses=1 type=i8] [debug line = 233:5@366:9]
  store i8 %buf.load.27, i8* %buf.addr.17, align 1, !dbg !382 ; [debug line = 233:5@366:9]
  %buf.load.28 = load i8* %buf.addr.19, align 1, !dbg !382 ; [#uses=1 type=i8] [debug line = 233:5@366:9]
  store i8 %buf.load.28, i8* %buf.addr.18, align 1, !dbg !382 ; [debug line = 233:5@366:9]
  store i8 %j.2, i8* %buf.addr.19, align 1, !dbg !382 ; [debug line = 233:5@366:9]
  %j.3 = load i8* %buf.addr.20, align 1, !dbg !383 ; [#uses=1 type=i8] [debug line = 234:5@366:9]
  call void @llvm.dbg.value(metadata !{i8 %j.3}, i64 0, metadata !397), !dbg !383 ; [debug line = 234:5@366:9] [debug variable = j]
  %buf.load.30 = load i8* %buf.addr.21, align 1, !dbg !383 ; [#uses=1 type=i8] [debug line = 234:5@366:9]
  store i8 %buf.load.30, i8* %buf.addr.20, align 1, !dbg !383 ; [debug line = 234:5@366:9]
  store i8 %j.3, i8* %buf.addr.21, align 1, !dbg !383 ; [debug line = 234:5@366:9]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !398), !dbg !401 ; [debug line = 251:37@367:9] [debug variable = buf]
  br label %7, !dbg !402                          ; [debug line = 255:10@367:9]

; <label>:7                                       ; preds = %9, %aes_subBytes.exit
  %i.i2 = phi i5 [ 0, %aes_subBytes.exit ], [ %i.42, %9 ] ; [#uses=4 type=i5]
  %tmp.i9 = icmp sgt i5 %i.i2, -1, !dbg !402      ; [#uses=1 type=i1] [debug line = 255:10@367:9]
  %8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %tmp.i9, label %9, label %aes_mixColumns.exit, !dbg !402 ; [debug line = 255:10@367:9]

; <label>:9                                       ; preds = %7
  %tmp..i2 = zext i5 %i.i2 to i64, !dbg !405      ; [#uses=1 type=i64] [debug line = 257:9@367:9]
  %buf.addr.25 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp..i2, !dbg !405 ; [#uses=2 type=i8*] [debug line = 257:9@367:9]
  %a = load i8* %buf.addr.25, align 1, !dbg !405  ; [#uses=3 type=i8] [debug line = 257:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %a}, i64 0, metadata !407), !dbg !405 ; [debug line = 257:9@367:9] [debug variable = a]
  %tmp.66.i.cast = trunc i5 %i.i2 to i4, !dbg !408 ; [#uses=3 type=i4] [debug line = 258:9@367:9]
  %tmp.67.i = or i4 %tmp.66.i.cast, 1, !dbg !408  ; [#uses=1 type=i4] [debug line = 258:9@367:9]
  %tmp.68.i = zext i4 %tmp.67.i to i64, !dbg !408 ; [#uses=1 type=i64] [debug line = 258:9@367:9]
  %buf.addr.26 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp.68.i, !dbg !408 ; [#uses=2 type=i8*] [debug line = 258:9@367:9]
  %b = load i8* %buf.addr.26, align 1, !dbg !408  ; [#uses=3 type=i8] [debug line = 258:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !409), !dbg !408 ; [debug line = 258:9@367:9] [debug variable = b]
  %tmp.69.i = or i4 %tmp.66.i.cast, 2, !dbg !410  ; [#uses=1 type=i4] [debug line = 259:9@367:9]
  %tmp.70.i = zext i4 %tmp.69.i to i64, !dbg !410 ; [#uses=1 type=i64] [debug line = 259:9@367:9]
  %buf.addr.27 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp.70.i, !dbg !410 ; [#uses=2 type=i8*] [debug line = 259:9@367:9]
  %c = load i8* %buf.addr.27, align 1, !dbg !410  ; [#uses=4 type=i8] [debug line = 259:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %c}, i64 0, metadata !411), !dbg !410 ; [debug line = 259:9@367:9] [debug variable = c]
  %tmp.71.i = or i4 %tmp.66.i.cast, 3, !dbg !412  ; [#uses=1 type=i4] [debug line = 260:9@367:9]
  %tmp.72.i = zext i4 %tmp.71.i to i64, !dbg !412 ; [#uses=1 type=i64] [debug line = 260:9@367:9]
  %buf.addr.28 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp.72.i, !dbg !412 ; [#uses=2 type=i8*] [debug line = 260:9@367:9]
  %d = load i8* %buf.addr.28, align 1, !dbg !412  ; [#uses=3 type=i8] [debug line = 260:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %d}, i64 0, metadata !413), !dbg !412 ; [debug line = 260:9@367:9] [debug variable = d]
  %x.assign = xor i8 %b, %a, !dbg !414            ; [#uses=3 type=i8] [debug line = 261:9@367:9]
  %tmp.74.i = xor i8 %c, %x.assign, !dbg !414     ; [#uses=2 type=i8] [debug line = 261:9@367:9]
  %e = xor i8 %d, %tmp.74.i, !dbg !414            ; [#uses=3 type=i8] [debug line = 261:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !415), !dbg !414 ; [debug line = 261:9@367:9] [debug variable = e]
  call void @llvm.dbg.value(metadata !{i8 %x.assign}, i64 0, metadata !416), !dbg !418 ; [debug line = 187:33@262:23@367:9] [debug variable = x]
  %y = shl i8 %x.assign, 1, !dbg !419             ; [#uses=2 type=i8] [debug line = 189:34@262:23@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !420), !dbg !419 ; [debug line = 189:34@262:23@367:9] [debug variable = y]
  %tmp.i.i = icmp slt i8 %x.assign, 0, !dbg !421  ; [#uses=1 type=i1] [debug line = 190:5@262:23@367:9]
  %tmp.1.i.i = xor i8 %y, 27, !dbg !421           ; [#uses=1 type=i8] [debug line = 190:5@262:23@367:9]
  %y.23 = select i1 %tmp.i.i, i8 %tmp.1.i.i, i8 %y, !dbg !421 ; [#uses=1 type=i8] [debug line = 190:5@262:23@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y.23}, i64 0, metadata !420), !dbg !421 ; [debug line = 190:5@262:23@367:9] [debug variable = y]
  %tmp1 = xor i8 %y.23, %e, !dbg !417             ; [#uses=1 type=i8] [debug line = 262:23@367:9]
  %tmp.77.i = xor i8 %tmp1, %a, !dbg !417         ; [#uses=1 type=i8] [debug line = 262:23@367:9]
  store i8 %tmp.77.i, i8* %buf.addr.25, align 1, !dbg !417 ; [debug line = 262:23@367:9]
  %x.assign.9 = xor i8 %c, %b, !dbg !422          ; [#uses=2 type=i8] [debug line = 263:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.9}, i64 0, metadata !423), !dbg !424 ; [debug line = 187:33@263:27@367:9] [debug variable = x]
  %y.24 = shl i8 %x.assign.9, 1, !dbg !425        ; [#uses=2 type=i8] [debug line = 189:34@263:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y.24}, i64 0, metadata !426), !dbg !425 ; [debug line = 189:34@263:27@367:9] [debug variable = y]
  %tmp.i9.i = icmp slt i8 %x.assign.9, 0, !dbg !427 ; [#uses=1 type=i1] [debug line = 190:5@263:27@367:9]
  %tmp.1.i10.i = xor i8 %y.24, 27, !dbg !427      ; [#uses=1 type=i8] [debug line = 190:5@263:27@367:9]
  %y.25 = select i1 %tmp.i9.i, i8 %tmp.1.i10.i, i8 %y.24, !dbg !427 ; [#uses=1 type=i8] [debug line = 190:5@263:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y.25}, i64 0, metadata !426), !dbg !427 ; [debug line = 190:5@263:27@367:9] [debug variable = y]
  %tmp2 = xor i8 %y.25, %e, !dbg !422             ; [#uses=1 type=i8] [debug line = 263:27@367:9]
  %tmp.81.i = xor i8 %tmp2, %b, !dbg !422         ; [#uses=1 type=i8] [debug line = 263:27@367:9]
  store i8 %tmp.81.i, i8* %buf.addr.26, align 1, !dbg !422 ; [debug line = 263:27@367:9]
  %x.assign.10 = xor i8 %d, %c, !dbg !428         ; [#uses=2 type=i8] [debug line = 264:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.10}, i64 0, metadata !429), !dbg !430 ; [debug line = 187:33@264:27@367:9] [debug variable = x]
  %y.26 = shl i8 %x.assign.10, 1, !dbg !431       ; [#uses=2 type=i8] [debug line = 189:34@264:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y.26}, i64 0, metadata !432), !dbg !431 ; [debug line = 189:34@264:27@367:9] [debug variable = y]
  %tmp.i13.i = icmp slt i8 %x.assign.10, 0, !dbg !433 ; [#uses=1 type=i1] [debug line = 190:5@264:27@367:9]
  %tmp.1.i14.i = xor i8 %y.26, 27, !dbg !433      ; [#uses=1 type=i8] [debug line = 190:5@264:27@367:9]
  %y.27 = select i1 %tmp.i13.i, i8 %tmp.1.i14.i, i8 %y.26, !dbg !433 ; [#uses=1 type=i8] [debug line = 190:5@264:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y.27}, i64 0, metadata !432), !dbg !433 ; [debug line = 190:5@264:27@367:9] [debug variable = y]
  %tmp3 = xor i8 %y.27, %e, !dbg !428             ; [#uses=1 type=i8] [debug line = 264:27@367:9]
  %tmp.85.i = xor i8 %tmp3, %c, !dbg !428         ; [#uses=1 type=i8] [debug line = 264:27@367:9]
  store i8 %tmp.85.i, i8* %buf.addr.27, align 1, !dbg !428 ; [debug line = 264:27@367:9]
  %x.assign.11 = xor i8 %d, %a, !dbg !434         ; [#uses=2 type=i8] [debug line = 265:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.11}, i64 0, metadata !435), !dbg !436 ; [debug line = 187:33@265:27@367:9] [debug variable = x]
  %y.28 = shl i8 %x.assign.11, 1, !dbg !437       ; [#uses=2 type=i8] [debug line = 189:34@265:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y.28}, i64 0, metadata !438), !dbg !437 ; [debug line = 189:34@265:27@367:9] [debug variable = y]
  %tmp.i17.i = icmp slt i8 %x.assign.11, 0, !dbg !439 ; [#uses=1 type=i1] [debug line = 190:5@265:27@367:9]
  %tmp.1.i18.i = xor i8 %y.28, 27, !dbg !439      ; [#uses=1 type=i8] [debug line = 190:5@265:27@367:9]
  %y.29 = select i1 %tmp.i17.i, i8 %tmp.1.i18.i, i8 %y.28, !dbg !439 ; [#uses=1 type=i8] [debug line = 190:5@265:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y.29}, i64 0, metadata !438), !dbg !439 ; [debug line = 190:5@265:27@367:9] [debug variable = y]
  %tmp.89.i = xor i8 %y.29, %tmp.74.i, !dbg !434  ; [#uses=1 type=i8] [debug line = 265:27@367:9]
  store i8 %tmp.89.i, i8* %buf.addr.28, align 1, !dbg !434 ; [debug line = 265:27@367:9]
  %i.42 = add i5 %i.i2, 4, !dbg !440              ; [#uses=1 type=i5] [debug line = 255:25@367:9]
  call void @llvm.dbg.value(metadata !{i5 %i.42}, i64 0, metadata !441), !dbg !440 ; [debug line = 255:25@367:9] [debug variable = i]
  br label %7, !dbg !440                          ; [debug line = 255:25@367:9]

aes_mixColumns.exit:                              ; preds = %7
  br i1 %i.cast4, label %10, label %11, !dbg !442 ; [debug line = 368:9]

; <label>:10                                      ; preds = %aes_mixColumns.exit
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx.key, i6 16), !dbg !443 ; [debug line = 368:21]
  br label %12, !dbg !443                         ; [debug line = 368:21]

; <label>:11                                      ; preds = %aes_mixColumns.exit
  %rcon.2 = call fastcc i8 @aes_expandEncKey([32 x i8]* @ctx.key, i8 %rcon), !dbg !444 ; [#uses=1 type=i8] [debug line = 369:14]
  call void @llvm.dbg.value(metadata !{i8 %rcon.2}, i64 0, metadata !445), !dbg !444 ; [debug line = 369:14] [debug variable = rcon]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx.key, i6 0), !dbg !446 ; [debug line = 369:49]
  br label %12

; <label>:12                                      ; preds = %11, %10
  %rcon.1 = phi i8 [ %rcon.2, %11 ], [ %rcon, %10 ] ; [#uses=1 type=i8]
  %i.43 = add i4 %i, 1, !dbg !447                 ; [#uses=1 type=i4] [debug line = 363:34]
  call void @llvm.dbg.value(metadata !{i4 %i.43}, i64 0, metadata !448), !dbg !447 ; [debug line = 363:34] [debug variable = i]
  br label %aes_addRoundKey_cpy.exit, !dbg !447   ; [debug line = 363:34]

.preheader:                                       ; preds = %14, %.preheader.preheader
  %i.i1 = phi i5 [ %i.36, %14 ], [ -16, %.preheader.preheader ] ; [#uses=2 type=i5]
  %i.36 = add i5 %i.i1, -1, !dbg !390             ; [#uses=2 type=i5] [debug line = 198:5@371:5]
  %i.37.cast = sext i5 %i.36 to i8, !dbg !390     ; [#uses=1 type=i8] [debug line = 198:5@371:5]
  call void @llvm.dbg.value(metadata !{i5 %i.36}, i64 0, metadata !449), !dbg !390 ; [debug line = 198:5@371:5] [debug variable = i]
  %tmp.i8 = icmp eq i5 %i.i1, 0, !dbg !390        ; [#uses=1 type=i1] [debug line = 198:5@371:5]
  %13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp.i8, label %aes_subBytes.exit25, label %14, !dbg !390 ; [debug line = 198:5@371:5]

; <label>:14                                      ; preds = %.preheader
  %tmp..i1 = zext i8 %i.37.cast to i64, !dbg !450 ; [#uses=1 type=i64] [debug line = 198:17@371:5]
  %buf.addr.23 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp..i1, !dbg !450 ; [#uses=2 type=i8*] [debug line = 198:17@371:5]
  %buf.load.18 = load i8* %buf.addr.23, align 1, !dbg !450 ; [#uses=1 type=i8] [debug line = 198:17@371:5]
  %tmp.33.i1 = zext i8 %buf.load.18 to i64, !dbg !450 ; [#uses=1 type=i64] [debug line = 198:17@371:5]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.33.i1, !dbg !450 ; [#uses=1 type=i8*] [debug line = 198:17@371:5]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !450 ; [#uses=1 type=i8] [debug line = 198:17@371:5]
  store i8 %sbox.load, i8* %buf.addr.23, align 1, !dbg !450 ; [debug line = 198:17@371:5]
  br label %.preheader, !dbg !450                 ; [debug line = 198:17@371:5]

aes_subBytes.exit25:                              ; preds = %.preheader
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !451), !dbg !453 ; [debug line = 227:36@372:5] [debug variable = buf]
  %i.38 = load i8* %buf.addr, align 1, !dbg !454  ; [#uses=1 type=i8] [debug line = 231:5@372:5]
  call void @llvm.dbg.value(metadata !{i8 %i.38}, i64 0, metadata !455), !dbg !454 ; [debug line = 231:5@372:5] [debug variable = i]
  %buf.load.7 = load i8* %buf.addr.11, align 1, !dbg !454 ; [#uses=1 type=i8] [debug line = 231:5@372:5]
  store i8 %buf.load.7, i8* %buf.addr, align 1, !dbg !454 ; [debug line = 231:5@372:5]
  %buf.load.8 = load i8* %buf.addr.12, align 1, !dbg !454 ; [#uses=1 type=i8] [debug line = 231:5@372:5]
  store i8 %buf.load.8, i8* %buf.addr.11, align 1, !dbg !454 ; [debug line = 231:5@372:5]
  %buf.load.9 = load i8* %buf.addr.13, align 1, !dbg !454 ; [#uses=1 type=i8] [debug line = 231:5@372:5]
  store i8 %buf.load.9, i8* %buf.addr.12, align 1, !dbg !454 ; [debug line = 231:5@372:5]
  store i8 %i.38, i8* %buf.addr.13, align 1, !dbg !454 ; [debug line = 231:5@372:5]
  %i.39 = load i8* %buf.addr.14, align 1, !dbg !456 ; [#uses=1 type=i8] [debug line = 232:5@372:5]
  call void @llvm.dbg.value(metadata !{i8 %i.39}, i64 0, metadata !455), !dbg !456 ; [debug line = 232:5@372:5] [debug variable = i]
  %buf.load.11 = load i8* %buf.addr.15, align 1, !dbg !456 ; [#uses=1 type=i8] [debug line = 232:5@372:5]
  store i8 %buf.load.11, i8* %buf.addr.14, align 1, !dbg !456 ; [debug line = 232:5@372:5]
  store i8 %i.39, i8* %buf.addr.15, align 1, !dbg !456 ; [debug line = 232:5@372:5]
  %j = load i8* %buf.addr.16, align 1, !dbg !457  ; [#uses=1 type=i8] [debug line = 233:5@372:5]
  call void @llvm.dbg.value(metadata !{i8 %j}, i64 0, metadata !458), !dbg !457 ; [debug line = 233:5@372:5] [debug variable = j]
  %buf.load.13 = load i8* %buf.addr.17, align 1, !dbg !457 ; [#uses=1 type=i8] [debug line = 233:5@372:5]
  store i8 %buf.load.13, i8* %buf.addr.16, align 1, !dbg !457 ; [debug line = 233:5@372:5]
  %buf.load.14 = load i8* %buf.addr.18, align 1, !dbg !457 ; [#uses=1 type=i8] [debug line = 233:5@372:5]
  store i8 %buf.load.14, i8* %buf.addr.17, align 1, !dbg !457 ; [debug line = 233:5@372:5]
  %buf.load.15 = load i8* %buf.addr.19, align 1, !dbg !457 ; [#uses=1 type=i8] [debug line = 233:5@372:5]
  store i8 %buf.load.15, i8* %buf.addr.18, align 1, !dbg !457 ; [debug line = 233:5@372:5]
  store i8 %j, i8* %buf.addr.19, align 1, !dbg !457 ; [debug line = 233:5@372:5]
  %j.1 = load i8* %buf.addr.20, align 1, !dbg !459 ; [#uses=1 type=i8] [debug line = 234:5@372:5]
  call void @llvm.dbg.value(metadata !{i8 %j.1}, i64 0, metadata !458), !dbg !459 ; [debug line = 234:5@372:5] [debug variable = j]
  %buf.load.17 = load i8* %buf.addr.21, align 1, !dbg !459 ; [#uses=1 type=i8] [debug line = 234:5@372:5]
  store i8 %buf.load.17, i8* %buf.addr.20, align 1, !dbg !459 ; [debug line = 234:5@372:5]
  store i8 %j.1, i8* %buf.addr.21, align 1, !dbg !459 ; [debug line = 234:5@372:5]
  %call.ret1 = call fastcc i8 @aes_expandEncKey([32 x i8]* @ctx.key, i8 %rcon.lcssa), !dbg !460 ; [#uses=0 type=i8] [debug line = 373:5]
  call void @llvm.dbg.value(metadata !{i8 %call.ret1}, i64 0, metadata !445), !dbg !460 ; [debug line = 373:5] [debug variable = rcon]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx.key, i6 0), !dbg !461 ; [debug line = 374:5]
  ret void, !dbg !462                             ; [debug line = 375:1]
}

; [#uses=1]
define internal fastcc void @aes_decrypt_ecb([16 x i8]* nocapture %buf) {
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !463), !dbg !465 ; [debug line = 378:49] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !466), !dbg !469 ; [debug line = 218:42@382:5] [debug variable = buf]
  br label %1, !dbg !470                          ; [debug line = 222:5@382:5]

; <label>:1                                       ; preds = %3, %0
  %i.i = phi i5 [ -16, %0 ], [ %i.44, %3 ]        ; [#uses=3 type=i5]
  %i.44 = add i5 %i.i, -1, !dbg !470              ; [#uses=2 type=i5] [debug line = 222:5@382:5]
  %i.46.cast = sext i5 %i.44 to i8, !dbg !470     ; [#uses=1 type=i8] [debug line = 222:5@382:5]
  call void @llvm.dbg.value(metadata !{i5 %i.44}, i64 0, metadata !471), !dbg !470 ; [debug line = 222:5@382:5] [debug variable = i]
  %tmp.i = icmp eq i5 %i.i, 0, !dbg !470          ; [#uses=1 type=i1] [debug line = 222:5@382:5]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp.i, label %aes_addRoundKey_cpy.exit, label %3, !dbg !470 ; [debug line = 222:5@382:5]

; <label>:3                                       ; preds = %1
  %tmp..i = zext i8 %i.46.cast to i64, !dbg !472  ; [#uses=3 type=i64] [debug line = 222:17@382:5]
  %ctx.deckey.addr = getelementptr [32 x i8]* @ctx.deckey, i64 0, i64 %tmp..i, !dbg !472 ; [#uses=1 type=i8*] [debug line = 222:17@382:5]
  %ctx.deckey.load = load i8* %ctx.deckey.addr, align 1, !dbg !472 ; [#uses=2 type=i8] [debug line = 222:17@382:5]
  %ctx.key.addr = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp..i, !dbg !472 ; [#uses=1 type=i8*] [debug line = 222:17@382:5]
  store i8 %ctx.deckey.load, i8* %ctx.key.addr, align 1, !dbg !472 ; [debug line = 222:17@382:5]
  %buf.addr.40 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp..i, !dbg !472 ; [#uses=2 type=i8*] [debug line = 222:17@382:5]
  %buf.load.46 = load i8* %buf.addr.40, align 1, !dbg !472 ; [#uses=1 type=i8] [debug line = 222:17@382:5]
  %tmp.211.i = xor i8 %buf.load.46, %ctx.deckey.load, !dbg !472 ; [#uses=1 type=i8] [debug line = 222:17@382:5]
  store i8 %tmp.211.i, i8* %buf.addr.40, align 1, !dbg !472 ; [debug line = 222:17@382:5]
  %tmp.213.i = add i5 %i.i, 15, !dbg !472         ; [#uses=1 type=i5] [debug line = 222:17@382:5]
  %tmp.214.i = zext i5 %tmp.213.i to i64, !dbg !472 ; [#uses=2 type=i64] [debug line = 222:17@382:5]
  %ctx.deckey.addr.1 = getelementptr [32 x i8]* @ctx.deckey, i64 0, i64 %tmp.214.i, !dbg !472 ; [#uses=1 type=i8*] [debug line = 222:17@382:5]
  %ctx.deckey.load.1 = load i8* %ctx.deckey.addr.1, align 1, !dbg !472 ; [#uses=1 type=i8] [debug line = 222:17@382:5]
  %ctx.key.addr.17 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.214.i, !dbg !472 ; [#uses=1 type=i8*] [debug line = 222:17@382:5]
  store i8 %ctx.deckey.load.1, i8* %ctx.key.addr.17, align 1, !dbg !472 ; [debug line = 222:17@382:5]
  br label %1, !dbg !472                          ; [debug line = 222:17@382:5]

aes_addRoundKey_cpy.exit:                         ; preds = %1
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !473), !dbg !476 ; [debug line = 239:40@383:5] [debug variable = buf]
  %buf.addr = getelementptr [16 x i8]* %buf, i64 0, i64 1, !dbg !477 ; [#uses=4 type=i8*] [debug line = 243:5@383:5]
  %i.45 = load i8* %buf.addr, align 1, !dbg !477  ; [#uses=1 type=i8] [debug line = 243:5@383:5]
  call void @llvm.dbg.value(metadata !{i8 %i.45}, i64 0, metadata !479), !dbg !477 ; [debug line = 243:5@383:5] [debug variable = i]
  %buf.addr.29 = getelementptr [16 x i8]* %buf, i64 0, i64 13, !dbg !477 ; [#uses=4 type=i8*] [debug line = 243:5@383:5]
  %buf.load = load i8* %buf.addr.29, align 1, !dbg !477 ; [#uses=1 type=i8] [debug line = 243:5@383:5]
  store i8 %buf.load, i8* %buf.addr, align 1, !dbg !477 ; [debug line = 243:5@383:5]
  %buf.addr.30 = getelementptr [16 x i8]* %buf, i64 0, i64 9, !dbg !477 ; [#uses=4 type=i8*] [debug line = 243:5@383:5]
  %buf.load.36 = load i8* %buf.addr.30, align 1, !dbg !477 ; [#uses=1 type=i8] [debug line = 243:5@383:5]
  store i8 %buf.load.36, i8* %buf.addr.29, align 1, !dbg !477 ; [debug line = 243:5@383:5]
  %buf.addr.31 = getelementptr [16 x i8]* %buf, i64 0, i64 5, !dbg !477 ; [#uses=4 type=i8*] [debug line = 243:5@383:5]
  %buf.load.37 = load i8* %buf.addr.31, align 1, !dbg !477 ; [#uses=1 type=i8] [debug line = 243:5@383:5]
  store i8 %buf.load.37, i8* %buf.addr.30, align 1, !dbg !477 ; [debug line = 243:5@383:5]
  store i8 %i.45, i8* %buf.addr.31, align 1, !dbg !477 ; [debug line = 243:5@383:5]
  %buf.addr.32 = getelementptr [16 x i8]* %buf, i64 0, i64 2, !dbg !480 ; [#uses=4 type=i8*] [debug line = 244:5@383:5]
  %i.46 = load i8* %buf.addr.32, align 1, !dbg !480 ; [#uses=1 type=i8] [debug line = 244:5@383:5]
  call void @llvm.dbg.value(metadata !{i8 %i.46}, i64 0, metadata !479), !dbg !480 ; [debug line = 244:5@383:5] [debug variable = i]
  %buf.addr.33 = getelementptr [16 x i8]* %buf, i64 0, i64 10, !dbg !480 ; [#uses=4 type=i8*] [debug line = 244:5@383:5]
  %buf.load.39 = load i8* %buf.addr.33, align 1, !dbg !480 ; [#uses=1 type=i8] [debug line = 244:5@383:5]
  store i8 %buf.load.39, i8* %buf.addr.32, align 1, !dbg !480 ; [debug line = 244:5@383:5]
  store i8 %i.46, i8* %buf.addr.33, align 1, !dbg !480 ; [debug line = 244:5@383:5]
  %buf.addr.34 = getelementptr [16 x i8]* %buf, i64 0, i64 3, !dbg !481 ; [#uses=4 type=i8*] [debug line = 245:5@383:5]
  %j = load i8* %buf.addr.34, align 1, !dbg !481  ; [#uses=1 type=i8] [debug line = 245:5@383:5]
  call void @llvm.dbg.value(metadata !{i8 %j}, i64 0, metadata !482), !dbg !481 ; [debug line = 245:5@383:5] [debug variable = j]
  %buf.addr.35 = getelementptr [16 x i8]* %buf, i64 0, i64 7, !dbg !481 ; [#uses=4 type=i8*] [debug line = 245:5@383:5]
  %buf.load.41 = load i8* %buf.addr.35, align 1, !dbg !481 ; [#uses=1 type=i8] [debug line = 245:5@383:5]
  store i8 %buf.load.41, i8* %buf.addr.34, align 1, !dbg !481 ; [debug line = 245:5@383:5]
  %buf.addr.36 = getelementptr [16 x i8]* %buf, i64 0, i64 11, !dbg !481 ; [#uses=4 type=i8*] [debug line = 245:5@383:5]
  %buf.load.42 = load i8* %buf.addr.36, align 1, !dbg !481 ; [#uses=1 type=i8] [debug line = 245:5@383:5]
  store i8 %buf.load.42, i8* %buf.addr.35, align 1, !dbg !481 ; [debug line = 245:5@383:5]
  %buf.addr.37 = getelementptr [16 x i8]* %buf, i64 0, i64 15, !dbg !481 ; [#uses=4 type=i8*] [debug line = 245:5@383:5]
  %buf.load.43 = load i8* %buf.addr.37, align 1, !dbg !481 ; [#uses=1 type=i8] [debug line = 245:5@383:5]
  store i8 %buf.load.43, i8* %buf.addr.36, align 1, !dbg !481 ; [debug line = 245:5@383:5]
  store i8 %j, i8* %buf.addr.37, align 1, !dbg !481 ; [debug line = 245:5@383:5]
  %buf.addr.38 = getelementptr [16 x i8]* %buf, i64 0, i64 6, !dbg !483 ; [#uses=4 type=i8*] [debug line = 246:5@383:5]
  %j.4 = load i8* %buf.addr.38, align 1, !dbg !483 ; [#uses=1 type=i8] [debug line = 246:5@383:5]
  call void @llvm.dbg.value(metadata !{i8 %j.4}, i64 0, metadata !482), !dbg !483 ; [debug line = 246:5@383:5] [debug variable = j]
  %buf.addr.39 = getelementptr [16 x i8]* %buf, i64 0, i64 14, !dbg !483 ; [#uses=4 type=i8*] [debug line = 246:5@383:5]
  %buf.load.45 = load i8* %buf.addr.39, align 1, !dbg !483 ; [#uses=1 type=i8] [debug line = 246:5@383:5]
  store i8 %buf.load.45, i8* %buf.addr.38, align 1, !dbg !483 ; [debug line = 246:5@383:5]
  store i8 %j.4, i8* %buf.addr.39, align 1, !dbg !483 ; [debug line = 246:5@383:5]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !484), !dbg !487 ; [debug line = 202:39@384:5] [debug variable = buf]
  br label %4, !dbg !488                          ; [debug line = 206:5@384:5]

; <label>:4                                       ; preds = %6, %aes_addRoundKey_cpy.exit
  %i.i5 = phi i5 [ -16, %aes_addRoundKey_cpy.exit ], [ %i.47, %6 ] ; [#uses=2 type=i5]
  %i.47 = add i5 %i.i5, -1, !dbg !488             ; [#uses=2 type=i5] [debug line = 206:5@384:5]
  %i.49.cast = sext i5 %i.47 to i8, !dbg !488     ; [#uses=1 type=i8] [debug line = 206:5@384:5]
  call void @llvm.dbg.value(metadata !{i5 %i.47}, i64 0, metadata !490), !dbg !488 ; [debug line = 206:5@384:5] [debug variable = i]
  %tmp.i6 = icmp eq i5 %i.i5, 0, !dbg !488        ; [#uses=1 type=i1] [debug line = 206:5@384:5]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp.i6, label %aes_subBytes_inv.exit.preheader, label %6, !dbg !488 ; [debug line = 206:5@384:5]

aes_subBytes_inv.exit.preheader:                  ; preds = %4
  br label %aes_subBytes_inv.exit, !dbg !491      ; [debug line = 386:10]

; <label>:6                                       ; preds = %4
  %tmp..i7 = zext i8 %i.49.cast to i64, !dbg !493 ; [#uses=1 type=i64] [debug line = 206:17@384:5]
  %buf.addr.41 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp..i7, !dbg !493 ; [#uses=2 type=i8*] [debug line = 206:17@384:5]
  %buf.load.47 = load i8* %buf.addr.41, align 1, !dbg !493 ; [#uses=1 type=i8] [debug line = 206:17@384:5]
  %tmp.32.i = zext i8 %buf.load.47 to i64, !dbg !493 ; [#uses=1 type=i64] [debug line = 206:17@384:5]
  %sboxinv.addr = getelementptr inbounds [256 x i8]* @sboxinv, i64 0, i64 %tmp.32.i, !dbg !493 ; [#uses=1 type=i8*] [debug line = 206:17@384:5]
  %sboxinv.load = load i8* %sboxinv.addr, align 1, !dbg !493 ; [#uses=1 type=i8] [debug line = 206:17@384:5]
  store i8 %sboxinv.load, i8* %buf.addr.41, align 1, !dbg !493 ; [debug line = 206:17@384:5]
  br label %4, !dbg !493                          ; [debug line = 206:17@384:5]

aes_subBytes_inv.exit:                            ; preds = %aes_subBytes_inv.exit43, %aes_subBytes_inv.exit.preheader
  %rcon = phi i8 [ %rcon.1, %aes_subBytes_inv.exit43 ], [ -128, %aes_subBytes_inv.exit.preheader ] ; [#uses=2 type=i8]
  %i = phi i4 [ %phitmp, %aes_subBytes_inv.exit43 ], [ -3, %aes_subBytes_inv.exit.preheader ] ; [#uses=3 type=i4]
  %i.cast1 = trunc i4 %i to i1, !dbg !491         ; [#uses=1 type=i1] [debug line = 386:10]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !494), !dbg !491 ; [debug line = 386:10] [debug variable = i]
  %tmp = icmp eq i4 %i, 0, !dbg !491              ; [#uses=1 type=i1] [debug line = 386:10]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 13, i64 13, i64 13) ; [#uses=0 type=i32]
  br i1 %tmp, label %15, label %8, !dbg !491      ; [debug line = 386:10]

; <label>:8                                       ; preds = %aes_subBytes_inv.exit
  br i1 %i.cast1, label %9, label %10, !dbg !495  ; [debug line = 388:9]

; <label>:9                                       ; preds = %8
  %rcon.3 = call fastcc i8 @aes_expandDecKey(i8 %rcon), !dbg !497 ; [#uses=1 type=i8] [debug line = 390:13]
  call void @llvm.dbg.value(metadata !{i8 %rcon.3}, i64 0, metadata !499), !dbg !497 ; [debug line = 390:13] [debug variable = rcon]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx.key, i6 16), !dbg !500 ; [debug line = 391:13]
  br label %11, !dbg !501                         ; [debug line = 392:9]

; <label>:10                                      ; preds = %8
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx.key, i6 0), !dbg !502 ; [debug line = 393:14]
  br label %11

; <label>:11                                      ; preds = %10, %9
  %rcon.1 = phi i8 [ %rcon, %10 ], [ %rcon.3, %9 ] ; [#uses=1 type=i8]
  call fastcc void @aes_mixColumns_inv([16 x i8]* %buf), !dbg !503 ; [debug line = 394:9]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !504), !dbg !506 ; [debug line = 239:40@395:9] [debug variable = buf]
  %i.48 = load i8* %buf.addr, align 1, !dbg !507  ; [#uses=1 type=i8] [debug line = 243:5@395:9]
  call void @llvm.dbg.value(metadata !{i8 %i.48}, i64 0, metadata !508), !dbg !507 ; [debug line = 243:5@395:9] [debug variable = i]
  %buf.load.49 = load i8* %buf.addr.29, align 1, !dbg !507 ; [#uses=1 type=i8] [debug line = 243:5@395:9]
  store i8 %buf.load.49, i8* %buf.addr, align 1, !dbg !507 ; [debug line = 243:5@395:9]
  %buf.load.50 = load i8* %buf.addr.30, align 1, !dbg !507 ; [#uses=1 type=i8] [debug line = 243:5@395:9]
  store i8 %buf.load.50, i8* %buf.addr.29, align 1, !dbg !507 ; [debug line = 243:5@395:9]
  %buf.load.51 = load i8* %buf.addr.31, align 1, !dbg !507 ; [#uses=1 type=i8] [debug line = 243:5@395:9]
  store i8 %buf.load.51, i8* %buf.addr.30, align 1, !dbg !507 ; [debug line = 243:5@395:9]
  store i8 %i.48, i8* %buf.addr.31, align 1, !dbg !507 ; [debug line = 243:5@395:9]
  %i.49 = load i8* %buf.addr.32, align 1, !dbg !509 ; [#uses=1 type=i8] [debug line = 244:5@395:9]
  call void @llvm.dbg.value(metadata !{i8 %i.49}, i64 0, metadata !508), !dbg !509 ; [debug line = 244:5@395:9] [debug variable = i]
  %buf.load.53 = load i8* %buf.addr.33, align 1, !dbg !509 ; [#uses=1 type=i8] [debug line = 244:5@395:9]
  store i8 %buf.load.53, i8* %buf.addr.32, align 1, !dbg !509 ; [debug line = 244:5@395:9]
  store i8 %i.49, i8* %buf.addr.33, align 1, !dbg !509 ; [debug line = 244:5@395:9]
  %j.5 = load i8* %buf.addr.34, align 1, !dbg !510 ; [#uses=1 type=i8] [debug line = 245:5@395:9]
  call void @llvm.dbg.value(metadata !{i8 %j.5}, i64 0, metadata !511), !dbg !510 ; [debug line = 245:5@395:9] [debug variable = j]
  %buf.load.55 = load i8* %buf.addr.35, align 1, !dbg !510 ; [#uses=1 type=i8] [debug line = 245:5@395:9]
  store i8 %buf.load.55, i8* %buf.addr.34, align 1, !dbg !510 ; [debug line = 245:5@395:9]
  %buf.load.56 = load i8* %buf.addr.36, align 1, !dbg !510 ; [#uses=1 type=i8] [debug line = 245:5@395:9]
  store i8 %buf.load.56, i8* %buf.addr.35, align 1, !dbg !510 ; [debug line = 245:5@395:9]
  %buf.load.57 = load i8* %buf.addr.37, align 1, !dbg !510 ; [#uses=1 type=i8] [debug line = 245:5@395:9]
  store i8 %buf.load.57, i8* %buf.addr.36, align 1, !dbg !510 ; [debug line = 245:5@395:9]
  store i8 %j.5, i8* %buf.addr.37, align 1, !dbg !510 ; [debug line = 245:5@395:9]
  %j.6 = load i8* %buf.addr.38, align 1, !dbg !512 ; [#uses=1 type=i8] [debug line = 246:5@395:9]
  call void @llvm.dbg.value(metadata !{i8 %j.6}, i64 0, metadata !511), !dbg !512 ; [debug line = 246:5@395:9] [debug variable = j]
  %buf.load.59 = load i8* %buf.addr.39, align 1, !dbg !512 ; [#uses=1 type=i8] [debug line = 246:5@395:9]
  store i8 %buf.load.59, i8* %buf.addr.38, align 1, !dbg !512 ; [debug line = 246:5@395:9]
  store i8 %j.6, i8* %buf.addr.39, align 1, !dbg !512 ; [debug line = 246:5@395:9]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !513), !dbg !515 ; [debug line = 202:39@396:9] [debug variable = buf]
  br label %12, !dbg !516                         ; [debug line = 206:5@396:9]

; <label>:12                                      ; preds = %14, %11
  %i.i3 = phi i5 [ -16, %11 ], [ %i.50, %14 ]     ; [#uses=2 type=i5]
  %i.50 = add i5 %i.i3, -1, !dbg !516             ; [#uses=2 type=i5] [debug line = 206:5@396:9]
  %i.52.cast = sext i5 %i.50 to i8, !dbg !516     ; [#uses=1 type=i8] [debug line = 206:5@396:9]
  call void @llvm.dbg.value(metadata !{i5 %i.50}, i64 0, metadata !517), !dbg !516 ; [debug line = 206:5@396:9] [debug variable = i]
  %tmp.i1 = icmp eq i5 %i.i3, 0, !dbg !516        ; [#uses=1 type=i1] [debug line = 206:5@396:9]
  %13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp.i1, label %aes_subBytes_inv.exit43, label %14, !dbg !516 ; [debug line = 206:5@396:9]

; <label>:14                                      ; preds = %12
  %tmp..i3 = zext i8 %i.52.cast to i64, !dbg !518 ; [#uses=1 type=i64] [debug line = 206:17@396:9]
  %buf.addr.42 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp..i3, !dbg !518 ; [#uses=2 type=i8*] [debug line = 206:17@396:9]
  %buf.load.60 = load i8* %buf.addr.42, align 1, !dbg !518 ; [#uses=1 type=i8] [debug line = 206:17@396:9]
  %tmp.32.i1 = zext i8 %buf.load.60 to i64, !dbg !518 ; [#uses=1 type=i64] [debug line = 206:17@396:9]
  %sboxinv.addr.1 = getelementptr inbounds [256 x i8]* @sboxinv, i64 0, i64 %tmp.32.i1, !dbg !518 ; [#uses=1 type=i8*] [debug line = 206:17@396:9]
  %sboxinv.load.1 = load i8* %sboxinv.addr.1, align 1, !dbg !518 ; [#uses=1 type=i8] [debug line = 206:17@396:9]
  store i8 %sboxinv.load.1, i8* %buf.addr.42, align 1, !dbg !518 ; [debug line = 206:17@396:9]
  br label %12, !dbg !518                         ; [debug line = 206:17@396:9]

aes_subBytes_inv.exit43:                          ; preds = %12
  %phitmp = add i4 %i, -1, !dbg !519              ; [#uses=1 type=i4] [debug line = 397:5]
  br label %aes_subBytes_inv.exit, !dbg !519      ; [debug line = 397:5]

; <label>:15                                      ; preds = %aes_subBytes_inv.exit
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx.key, i6 0), !dbg !520 ; [debug line = 398:5]
  ret void, !dbg !521                             ; [debug line = 399:1]
}

; [#uses=6]
define internal fastcc void @aes_addRoundKey([16 x i8]* nocapture %buf, [32 x i8]* nocapture %key, i6 %key.offset) {
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !522), !dbg !524 ; [debug line = 210:38] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %key}, i64 0, metadata !525), !dbg !526 ; [debug line = 210:52] [debug variable = key]
  br label %1, !dbg !527                          ; [debug line = 214:5]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ -16, %0 ], [ %i.51, %3 ]          ; [#uses=2 type=i5]
  %i.51 = add i5 %i, -1, !dbg !527                ; [#uses=3 type=i5] [debug line = 214:5]
  %i.53.cast = sext i5 %i.51 to i8, !dbg !527     ; [#uses=1 type=i8] [debug line = 214:5]
  call void @llvm.dbg.value(metadata !{i5 %i.51}, i64 0, metadata !529), !dbg !527 ; [debug line = 214:5] [debug variable = i]
  %tmp = icmp eq i5 %i, 0, !dbg !527              ; [#uses=1 type=i1] [debug line = 214:5]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp, label %4, label %3, !dbg !527       ; [debug line = 214:5]

; <label>:3                                       ; preds = %1
  %tmp. = zext i8 %i.53.cast to i64, !dbg !530    ; [#uses=1 type=i64] [debug line = 214:17]
  %key.offset.cast = trunc i6 %key.offset to i5   ; [#uses=1 type=i5]
  %sum = add i5 %key.offset.cast, %i.51           ; [#uses=1 type=i5]
  %sum.cast = zext i5 %sum to i64                 ; [#uses=1 type=i64]
  %key.addr = getelementptr [32 x i8]* %key, i64 0, i64 %sum.cast, !dbg !530 ; [#uses=1 type=i8*] [debug line = 214:17]
  %key.load = load i8* %key.addr, align 1, !dbg !530 ; [#uses=1 type=i8] [debug line = 214:17]
  %buf.addr = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp., !dbg !530 ; [#uses=2 type=i8*] [debug line = 214:17]
  %buf.load = load i8* %buf.addr, align 1, !dbg !530 ; [#uses=1 type=i8] [debug line = 214:17]
  %tmp.152 = xor i8 %buf.load, %key.load, !dbg !530 ; [#uses=1 type=i8] [debug line = 214:17]
  store i8 %tmp.152, i8* %buf.addr, align 1, !dbg !530 ; [debug line = 214:17]
  br label %1, !dbg !530                          ; [debug line = 214:17]

; <label>:4                                       ; preds = %1
  ret void, !dbg !531                             ; [debug line = 215:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=32]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=6]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=4]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=0]
declare void @_ssdm_SpecKeepAssert(...)

!opencl.kernels = !{!0, !7, !13, !19, !19, !21, !24, !28, !21, !21, !31, !21, !21, !21, !33, !28}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!37, !50}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"ciphermode_t", metadata !"uint8_t*", metadata !"uint8_t*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"mode", metadata !"data_in", metadata !"data_out"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"aes_context*", metadata !"uint8_t*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"k"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"aes_context*"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"ctx"}
!19 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !20, metadata !6}
!20 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"buf"}
!21 = metadata !{null, metadata !14, metadata !15, metadata !22, metadata !17, metadata !23, metadata !6}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*"}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"buf"}
!24 = metadata !{null, metadata !25, metadata !15, metadata !26, metadata !17, metadata !27, metadata !6}
!25 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t"}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!28 = metadata !{null, metadata !8, metadata !9, metadata !29, metadata !11, metadata !30, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint8_t*"}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"k", metadata !"rc"}
!31 = metadata !{null, metadata !8, metadata !9, metadata !29, metadata !11, metadata !32, metadata !6}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"key"}
!33 = metadata !{null, metadata !34, metadata !2, metadata !35, metadata !4, metadata !36, metadata !6}
!34 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint8_t*", metadata !"uint8_t*"}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"key", metadata !"cpk"}
!37 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/brett/Thesis/Vivado_WS/aescbc/solution1/.autopilot/db/aesecb.pragma.2.c", metadata !"/home/brett/Thesis/Vivado_WS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !38} ; [ DW_TAG_compile_unit ]
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !40, metadata !49}
!40 = metadata !{i32 786484, i32 0, null, metadata !"sbox", metadata !"sbox", metadata !"", metadata !41, i32 47, metadata !42, i32 1, i32 1, [256 x i8]* @sbox} ; [ DW_TAG_variable ]
!41 = metadata !{i32 786473, metadata !"aescbc/src/aesecb.c", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!42 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !43, metadata !47, i32 0, i32 0} ; [ DW_TAG_array_type ]
!43 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_const_type ]
!44 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !45, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_typedef ]
!45 = metadata !{i32 786473, metadata !"aescbc/src/aesecb.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!46 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!47 = metadata !{metadata !48}
!48 = metadata !{i32 786465, i64 0, i64 255}      ; [ DW_TAG_subrange_type ]
!49 = metadata !{i32 786484, i32 0, null, metadata !"sboxinv", metadata !"sboxinv", metadata !"", metadata !41, i32 82, metadata !42, i32 1, i32 1, [256 x i8]* @sboxinv} ; [ DW_TAG_variable ]
!50 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/brett/Thesis/Vivado_WS/aescbc/solution1/.autopilot/db/aescbc.pragma.2.c", metadata !"/home/brett/Thesis/Vivado_WS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !51} ; [ DW_TAG_compile_unit ]
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !53, metadata !74, metadata !75, metadata !86, metadata !87, metadata !90, metadata !91, metadata !94, metadata !97, metadata !99, metadata !102, metadata !103, metadata !104}
!53 = metadata !{i32 786484, i32 0, metadata !54, metadata !"lastbuf", metadata !"lastbuf", metadata !"", metadata !55, i32 22, metadata !71, i32 1, i32 1, [16 x i8]* @lastbuf} ; [ DW_TAG_variable ]
!54 = metadata !{i32 786478, i32 0, metadata !55, metadata !"aescbc", metadata !"aescbc", metadata !"", metadata !55, i32 8, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !69, i32 11} ; [ DW_TAG_subprogram ]
!55 = metadata !{i32 786473, metadata !"aescbc/src/aescbc.c", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!56 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!57 = metadata !{null, metadata !58, metadata !67, metadata !67}
!58 = metadata !{i32 786454, null, metadata !"ciphermode_t", metadata !55, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ]
!59 = metadata !{i32 786436, null, metadata !"", metadata !60, i32 8, i64 3, i64 4, i32 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!60 = metadata !{i32 786473, metadata !"aescbc/src/aescbc.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!61 = metadata !{metadata !62, metadata !63, metadata !64, metadata !65, metadata !66}
!62 = metadata !{i32 786472, metadata !"RESET", i64 0} ; [ DW_TAG_enumerator ]
!63 = metadata !{i32 786472, metadata !"ENCRYPT", i64 1} ; [ DW_TAG_enumerator ]
!64 = metadata !{i32 786472, metadata !"DECRYPT", i64 2} ; [ DW_TAG_enumerator ]
!65 = metadata !{i32 786472, metadata !"SET_IV", i64 3} ; [ DW_TAG_enumerator ]
!66 = metadata !{i32 786472, metadata !"SET_KEY", i64 4} ; [ DW_TAG_enumerator ]
!67 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ]
!68 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !55, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_typedef ]
!69 = metadata !{metadata !70}
!70 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!71 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !68, metadata !72, i32 0, i32 0} ; [ DW_TAG_array_type ]
!72 = metadata !{metadata !73}
!73 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!74 = metadata !{i32 786484, i32 0, metadata !54, metadata !"xorv", metadata !"xorv", metadata !"", metadata !55, i32 24, metadata !71, i32 1, i32 1, [16 x i8]* @xorv} ; [ DW_TAG_variable ]
!75 = metadata !{i32 790546, i32 0, null, metadata !"ctx.enckey", metadata !"ctx.enckey", metadata !"ctx.enckey", metadata !55, i32 26, metadata !76, i32 1, i32 1, [32 x i8]* @ctx.enckey} ; [ DW_TAG_variable_field ]
!76 = metadata !{i32 786452, null, metadata !"", metadata !45, i32 29, i64 256, i64 8, i32 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!77 = metadata !{metadata !78}
!78 = metadata !{i32 786445, metadata !79, metadata !"enckey", metadata !45, i32 31, i64 256, i64 8, i64 256, i32 0, metadata !82} ; [ DW_TAG_member ]
!79 = metadata !{i32 786451, null, metadata !"", metadata !45, i32 29, i64 768, i64 8, i32 0, i32 0, null, metadata !80, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!80 = metadata !{metadata !81, metadata !78, metadata !85}
!81 = metadata !{i32 786445, metadata !79, metadata !"key", metadata !45, i32 30, i64 256, i64 8, i64 0, i32 0, metadata !82} ; [ DW_TAG_member ]
!82 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !68, metadata !83, i32 0, i32 0} ; [ DW_TAG_array_type ]
!83 = metadata !{metadata !84}
!84 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!85 = metadata !{i32 786445, metadata !79, metadata !"deckey", metadata !45, i32 32, i64 256, i64 8, i64 512, i32 0, metadata !82} ; [ DW_TAG_member ]
!86 = metadata !{i32 786484, i32 0, metadata !54, metadata !"key", metadata !"key", metadata !"", metadata !55, i32 25, metadata !82, i32 1, i32 1, [32 x i8]* @key} ; [ DW_TAG_variable ]
!87 = metadata !{i32 790546, i32 0, null, metadata !"ctx.deckey", metadata !"ctx.deckey", metadata !"ctx.deckey", metadata !55, i32 26, metadata !88, i32 1, i32 1, [32 x i8]* @ctx.deckey} ; [ DW_TAG_variable_field ]
!88 = metadata !{i32 786452, null, metadata !"", metadata !45, i32 29, i64 256, i64 8, i32 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!89 = metadata !{metadata !85}
!90 = metadata !{i32 786484, i32 0, metadata !54, metadata !"iv", metadata !"iv", metadata !"", metadata !55, i32 23, metadata !71, i32 1, i32 1, [16 x i8]* @iv} ; [ DW_TAG_variable ]
!91 = metadata !{i32 790546, i32 0, null, metadata !"ctx.key", metadata !"ctx.key", metadata !"ctx.key", metadata !55, i32 26, metadata !92, i32 1, i32 1, [32 x i8]* @ctx.key} ; [ DW_TAG_variable_field ]
!92 = metadata !{i32 786452, null, metadata !"", metadata !45, i32 29, i64 256, i64 8, i32 0, i32 0, null, metadata !93, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!93 = metadata !{metadata !81}
!94 = metadata !{i32 786484, i32 0, metadata !54, metadata !"zeros", metadata !"zeros", metadata !"", metadata !55, i32 19, metadata !95, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!95 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !96, metadata !72, i32 0, i32 0} ; [ DW_TAG_array_type ]
!96 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_const_type ]
!97 = metadata !{i32 786484, i32 0, metadata !54, metadata !"ctx", metadata !"ctx", metadata !"", metadata !55, i32 26, metadata !98, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!98 = metadata !{i32 786454, null, metadata !"aes_context", metadata !55, i32 33, i64 0, i64 0, i64 0, i32 0, metadata !79} ; [ DW_TAG_typedef ]
!99 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !100, i32 315, metadata !101, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!100 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!101 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !100, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!102 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !100, i32 316, metadata !101, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!103 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !100, i32 317, metadata !101, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!104 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !105, i32 26, metadata !106, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!105 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!106 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!107 = metadata !{metadata !108}
!108 = metadata !{i32 0, i32 2, metadata !109}
!109 = metadata !{metadata !110}
!110 = metadata !{metadata !"mode", metadata !111, metadata !"enum ", i32 0, i32 2}
!111 = metadata !{metadata !112}
!112 = metadata !{i32 0, i32 0, i32 0}
!113 = metadata !{metadata !114}
!114 = metadata !{i32 0, i32 7, metadata !115}
!115 = metadata !{metadata !116}
!116 = metadata !{metadata !"data_in", metadata !117, metadata !"unsigned char", i32 0, i32 7}
!117 = metadata !{metadata !118}
!118 = metadata !{i32 0, i32 31, i32 1}
!119 = metadata !{metadata !120}
!120 = metadata !{i32 0, i32 7, metadata !121}
!121 = metadata !{metadata !122}
!122 = metadata !{metadata !"data_out", metadata !123, metadata !"unsigned char", i32 0, i32 7}
!123 = metadata !{metadata !124}
!124 = metadata !{i32 0, i32 15, i32 1}
!125 = metadata !{i32 786689, metadata !54, metadata !"mode", metadata !55, i32 16777224, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!126 = metadata !{i32 8, i32 26, metadata !54, null}
!127 = metadata !{i32 786689, metadata !54, metadata !"data_in", null, i32 9, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!128 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !68, metadata !83, i32 0, i32 0} ; [ DW_TAG_array_type ]
!129 = metadata !{i32 9, i32 12, metadata !54, null}
!130 = metadata !{i32 786689, metadata !54, metadata !"data_out", null, i32 10, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!131 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !68, metadata !72, i32 0, i32 0} ; [ DW_TAG_array_type ]
!132 = metadata !{i32 10, i32 12, metadata !54, null}
!133 = metadata !{i32 16, i32 1, metadata !134, null}
!134 = metadata !{i32 786443, metadata !54, i32 11, i32 1, metadata !55, i32 0} ; [ DW_TAG_lexical_block ]
!135 = metadata !{i32 17, i32 1, metadata !134, null}
!136 = metadata !{i32 786688, metadata !134, metadata !"buf", metadata !55, i32 21, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!137 = metadata !{i32 21, i32 10, metadata !134, null}
!138 = metadata !{i32 29, i32 5, metadata !134, null}
!139 = metadata !{i32 33, i32 7, metadata !140, null}
!140 = metadata !{i32 786443, metadata !141, i32 33, i32 3, metadata !55, i32 2} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 786443, metadata !134, i32 29, i32 20, metadata !55, i32 1} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 45, i32 10, metadata !143, null}
!143 = metadata !{i32 786443, metadata !141, i32 45, i32 6, metadata !55, i32 6} ; [ DW_TAG_lexical_block ]
!144 = metadata !{i32 61, i32 10, metadata !145, null}
!145 = metadata !{i32 786443, metadata !141, i32 61, i32 6, metadata !55, i32 10} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 81, i32 7, metadata !147, null}
!147 = metadata !{i32 786443, metadata !141, i32 81, i32 3, metadata !55, i32 15} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 91, i32 7, metadata !149, null}
!149 = metadata !{i32 786443, metadata !141, i32 91, i32 3, metadata !55, i32 19} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 37, i32 7, metadata !151, null}
!151 = metadata !{i32 786443, metadata !141, i32 37, i32 3, metadata !55, i32 4} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 34, i32 7, metadata !153, null}
!153 = metadata !{i32 786443, metadata !140, i32 34, i32 7, metadata !55, i32 3} ; [ DW_TAG_lexical_block ]
!154 = metadata !{i32 33, i32 18, metadata !140, null}
!155 = metadata !{i32 786688, metadata !134, metadata !"i", metadata !55, i32 27, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!156 = metadata !{i32 344, i32 10, metadata !157, metadata !171}
!157 = metadata !{i32 786443, metadata !158, i32 344, i32 5, metadata !41, i32 1} ; [ DW_TAG_lexical_block ]
!158 = metadata !{i32 786443, metadata !159, i32 340, i32 1, metadata !41, i32 0} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 786478, i32 0, metadata !41, metadata !"aes_init", metadata !"aes_init", metadata !"", metadata !41, i32 339, metadata !160, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !69, i32 340} ; [ DW_TAG_subprogram ]
!160 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !161, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!161 = metadata !{null, metadata !162, metadata !170}
!162 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !163} ; [ DW_TAG_pointer_type ]
!163 = metadata !{i32 786454, null, metadata !"aes_context", metadata !41, i32 33, i64 0, i64 0, i64 0, i32 0, metadata !164} ; [ DW_TAG_typedef ]
!164 = metadata !{i32 786451, null, metadata !"", metadata !45, i32 29, i64 768, i64 8, i32 0, i32 0, null, metadata !165, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!165 = metadata !{metadata !166, metadata !168, metadata !169}
!166 = metadata !{i32 786445, metadata !164, metadata !"key", metadata !45, i32 30, i64 256, i64 8, i64 0, i32 0, metadata !167} ; [ DW_TAG_member ]
!167 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !44, metadata !83, i32 0, i32 0} ; [ DW_TAG_array_type ]
!168 = metadata !{i32 786445, metadata !164, metadata !"enckey", metadata !45, i32 31, i64 256, i64 8, i64 256, i32 0, metadata !167} ; [ DW_TAG_member ]
!169 = metadata !{i32 786445, metadata !164, metadata !"deckey", metadata !45, i32 32, i64 256, i64 8, i64 512, i32 0, metadata !167} ; [ DW_TAG_member ]
!170 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ]
!171 = metadata !{i32 40, i32 3, metadata !141, null}
!172 = metadata !{i32 38, i32 7, metadata !173, null}
!173 = metadata !{i32 786443, metadata !151, i32 38, i32 7, metadata !55, i32 5} ; [ DW_TAG_lexical_block ]
!174 = metadata !{i32 37, i32 18, metadata !151, null}
!175 = metadata !{i32 345, i32 10, metadata !176, metadata !171}
!176 = metadata !{i32 786443, metadata !158, i32 345, i32 5, metadata !41, i32 2} ; [ DW_TAG_lexical_block ]
!177 = metadata !{i32 344, i32 44, metadata !157, metadata !171}
!178 = metadata !{i32 344, i32 39, metadata !157, metadata !171}
!179 = metadata !{i32 786688, metadata !158, metadata !"i", metadata !41, i32 342, metadata !44, i32 0, metadata !171} ; [ DW_TAG_auto_variable ]
!180 = metadata !{i32 345, i32 23, metadata !176, metadata !171}
!181 = metadata !{i32 786688, metadata !158, metadata !"rcon", metadata !41, i32 341, metadata !44, i32 0, metadata !171} ; [ DW_TAG_auto_variable ]
!182 = metadata !{i32 48, i32 10, metadata !183, null}
!183 = metadata !{i32 786443, metadata !141, i32 48, i32 6, metadata !55, i32 7} ; [ DW_TAG_lexical_block ]
!184 = metadata !{i32 46, i32 7, metadata !143, null}
!185 = metadata !{i32 45, i32 21, metadata !143, null}
!186 = metadata !{i32 49, i32 7, metadata !183, null}
!187 = metadata !{i32 48, i32 21, metadata !183, null}
!188 = metadata !{i32 51, i32 6, metadata !141, null}
!189 = metadata !{i32 53, i32 10, metadata !190, null}
!190 = metadata !{i32 786443, metadata !141, i32 53, i32 6, metadata !55, i32 8} ; [ DW_TAG_lexical_block ]
!191 = metadata !{i32 56, i32 10, metadata !192, null}
!192 = metadata !{i32 786443, metadata !141, i32 56, i32 6, metadata !55, i32 9} ; [ DW_TAG_lexical_block ]
!193 = metadata !{i32 54, i32 7, metadata !190, null}
!194 = metadata !{i32 53, i32 21, metadata !190, null}
!195 = metadata !{i32 57, i32 7, metadata !192, null}
!196 = metadata !{i32 56, i32 21, metadata !192, null}
!197 = metadata !{i32 64, i32 10, metadata !198, null}
!198 = metadata !{i32 786443, metadata !141, i32 64, i32 6, metadata !55, i32 11} ; [ DW_TAG_lexical_block ]
!199 = metadata !{i32 62, i32 7, metadata !145, null}
!200 = metadata !{i32 61, i32 21, metadata !145, null}
!201 = metadata !{i32 65, i32 7, metadata !198, null}
!202 = metadata !{i32 64, i32 21, metadata !198, null}
!203 = metadata !{i32 67, i32 6, metadata !141, null}
!204 = metadata !{i32 69, i32 10, metadata !205, null}
!205 = metadata !{i32 786443, metadata !141, i32 69, i32 6, metadata !55, i32 12} ; [ DW_TAG_lexical_block ]
!206 = metadata !{i32 72, i32 10, metadata !207, null}
!207 = metadata !{i32 786443, metadata !141, i32 72, i32 6, metadata !55, i32 13} ; [ DW_TAG_lexical_block ]
!208 = metadata !{i32 70, i32 7, metadata !205, null}
!209 = metadata !{i32 69, i32 21, metadata !205, null}
!210 = metadata !{i32 75, i32 10, metadata !211, null}
!211 = metadata !{i32 786443, metadata !141, i32 75, i32 6, metadata !55, i32 14} ; [ DW_TAG_lexical_block ]
!212 = metadata !{i32 73, i32 7, metadata !207, null}
!213 = metadata !{i32 72, i32 21, metadata !207, null}
!214 = metadata !{i32 76, i32 7, metadata !211, null}
!215 = metadata !{i32 75, i32 21, metadata !211, null}
!216 = metadata !{i32 85, i32 7, metadata !217, null}
!217 = metadata !{i32 786443, metadata !141, i32 85, i32 3, metadata !55, i32 17} ; [ DW_TAG_lexical_block ]
!218 = metadata !{i32 82, i32 7, metadata !219, null}
!219 = metadata !{i32 786443, metadata !147, i32 82, i32 7, metadata !55, i32 16} ; [ DW_TAG_lexical_block ]
!220 = metadata !{i32 81, i32 18, metadata !147, null}
!221 = metadata !{i32 86, i32 4, metadata !222, null}
!222 = metadata !{i32 786443, metadata !217, i32 86, i32 4, metadata !55, i32 18} ; [ DW_TAG_lexical_block ]
!223 = metadata !{i32 85, i32 18, metadata !217, null}
!224 = metadata !{i32 95, i32 7, metadata !225, null}
!225 = metadata !{i32 786443, metadata !141, i32 95, i32 3, metadata !55, i32 21} ; [ DW_TAG_lexical_block ]
!226 = metadata !{i32 92, i32 4, metadata !227, null}
!227 = metadata !{i32 786443, metadata !149, i32 92, i32 4, metadata !55, i32 20} ; [ DW_TAG_lexical_block ]
!228 = metadata !{i32 91, i32 18, metadata !149, null}
!229 = metadata !{i32 96, i32 4, metadata !230, null}
!230 = metadata !{i32 786443, metadata !225, i32 96, i32 4, metadata !55, i32 22} ; [ DW_TAG_lexical_block ]
!231 = metadata !{i32 95, i32 18, metadata !225, null}
!232 = metadata !{i32 99, i32 1, metadata !134, null}
!233 = metadata !{i32 786689, metadata !234, metadata !"buf", null, i32 270, metadata !237, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!234 = metadata !{i32 786478, i32 0, metadata !41, metadata !"aes_mixColumns_inv", metadata !"aes_mixColumns_inv", metadata !"", metadata !41, i32 270, metadata !235, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !69, i32 271} ; [ DW_TAG_subprogram ]
!235 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !236, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!236 = metadata !{null, metadata !170}
!237 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !44, metadata !72, i32 0, i32 0} ; [ DW_TAG_array_type ]
!238 = metadata !{i32 270, i32 34, metadata !234, null}
!239 = metadata !{i32 274, i32 10, metadata !240, null}
!240 = metadata !{i32 786443, metadata !241, i32 274, i32 5, metadata !41, i32 13} ; [ DW_TAG_lexical_block ]
!241 = metadata !{i32 786443, metadata !234, i32 271, i32 1, metadata !41, i32 12} ; [ DW_TAG_lexical_block ]
!242 = metadata !{i32 276, i32 9, metadata !243, null}
!243 = metadata !{i32 786443, metadata !240, i32 275, i32 5, metadata !41, i32 14} ; [ DW_TAG_lexical_block ]
!244 = metadata !{i32 786688, metadata !241, metadata !"a", metadata !41, i32 272, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!245 = metadata !{i32 277, i32 9, metadata !243, null}
!246 = metadata !{i32 786688, metadata !241, metadata !"b", metadata !41, i32 272, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!247 = metadata !{i32 278, i32 9, metadata !243, null}
!248 = metadata !{i32 786688, metadata !241, metadata !"c", metadata !41, i32 272, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!249 = metadata !{i32 279, i32 9, metadata !243, null}
!250 = metadata !{i32 786688, metadata !241, metadata !"d", metadata !41, i32 272, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!251 = metadata !{i32 280, i32 9, metadata !243, null}
!252 = metadata !{i32 786688, metadata !241, metadata !"e", metadata !41, i32 272, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!253 = metadata !{i32 786689, metadata !254, metadata !"x", metadata !41, i32 16777403, metadata !44, i32 0, metadata !257} ; [ DW_TAG_arg_variable ]
!254 = metadata !{i32 786478, i32 0, metadata !41, metadata !"rj_xtime", metadata !"rj_xtime", metadata !"", metadata !41, i32 187, metadata !255, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !69, i32 188} ; [ DW_TAG_subprogram ]
!255 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !256, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!256 = metadata !{metadata !44, metadata !44}
!257 = metadata !{i32 281, i32 13, metadata !243, null}
!258 = metadata !{i32 187, i32 33, metadata !254, metadata !257}
!259 = metadata !{i32 189, i32 34, metadata !260, metadata !257}
!260 = metadata !{i32 786443, metadata !254, i32 188, i32 1, metadata !41, i32 15} ; [ DW_TAG_lexical_block ]
!261 = metadata !{i32 786688, metadata !260, metadata !"y", metadata !41, i32 189, metadata !44, i32 0, metadata !257} ; [ DW_TAG_auto_variable ]
!262 = metadata !{i32 190, i32 5, metadata !260, metadata !257}
!263 = metadata !{i32 786688, metadata !241, metadata !"z", metadata !41, i32 272, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!264 = metadata !{i32 282, i32 26, metadata !243, null}
!265 = metadata !{i32 786689, metadata !254, metadata !"x", metadata !41, i32 16777403, metadata !44, i32 0, metadata !264} ; [ DW_TAG_arg_variable ]
!266 = metadata !{i32 187, i32 33, metadata !254, metadata !264}
!267 = metadata !{i32 189, i32 34, metadata !260, metadata !264}
!268 = metadata !{i32 786688, metadata !260, metadata !"y", metadata !41, i32 189, metadata !44, i32 0, metadata !264} ; [ DW_TAG_auto_variable ]
!269 = metadata !{i32 190, i32 5, metadata !260, metadata !264}
!270 = metadata !{i32 786688, metadata !241, metadata !"x", metadata !41, i32 272, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!271 = metadata !{i32 283, i32 26, metadata !243, null}
!272 = metadata !{i32 786689, metadata !254, metadata !"x", metadata !41, i32 16777403, metadata !44, i32 0, metadata !271} ; [ DW_TAG_arg_variable ]
!273 = metadata !{i32 187, i32 33, metadata !254, metadata !271}
!274 = metadata !{i32 189, i32 34, metadata !260, metadata !271}
!275 = metadata !{i32 786688, metadata !260, metadata !"y", metadata !41, i32 189, metadata !44, i32 0, metadata !271} ; [ DW_TAG_auto_variable ]
!276 = metadata !{i32 190, i32 5, metadata !260, metadata !271}
!277 = metadata !{i32 786688, metadata !241, metadata !"y", metadata !41, i32 272, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!278 = metadata !{i32 786689, metadata !254, metadata !"x", metadata !41, i32 16777403, metadata !44, i32 0, metadata !279} ; [ DW_TAG_arg_variable ]
!279 = metadata !{i32 284, i32 23, metadata !243, null}
!280 = metadata !{i32 187, i32 33, metadata !254, metadata !279}
!281 = metadata !{i32 189, i32 34, metadata !260, metadata !279}
!282 = metadata !{i32 786688, metadata !260, metadata !"y", metadata !41, i32 189, metadata !44, i32 0, metadata !279} ; [ DW_TAG_auto_variable ]
!283 = metadata !{i32 190, i32 5, metadata !260, metadata !279}
!284 = metadata !{i32 285, i32 27, metadata !243, null}
!285 = metadata !{i32 786689, metadata !254, metadata !"x", metadata !41, i32 16777403, metadata !44, i32 0, metadata !284} ; [ DW_TAG_arg_variable ]
!286 = metadata !{i32 187, i32 33, metadata !254, metadata !284}
!287 = metadata !{i32 189, i32 34, metadata !260, metadata !284}
!288 = metadata !{i32 786688, metadata !260, metadata !"y", metadata !41, i32 189, metadata !44, i32 0, metadata !284} ; [ DW_TAG_auto_variable ]
!289 = metadata !{i32 190, i32 5, metadata !260, metadata !284}
!290 = metadata !{i32 286, i32 27, metadata !243, null}
!291 = metadata !{i32 786689, metadata !254, metadata !"x", metadata !41, i32 16777403, metadata !44, i32 0, metadata !290} ; [ DW_TAG_arg_variable ]
!292 = metadata !{i32 187, i32 33, metadata !254, metadata !290}
!293 = metadata !{i32 189, i32 34, metadata !260, metadata !290}
!294 = metadata !{i32 786688, metadata !260, metadata !"y", metadata !41, i32 189, metadata !44, i32 0, metadata !290} ; [ DW_TAG_auto_variable ]
!295 = metadata !{i32 190, i32 5, metadata !260, metadata !290}
!296 = metadata !{i32 287, i32 27, metadata !243, null}
!297 = metadata !{i32 786689, metadata !254, metadata !"x", metadata !41, i32 16777403, metadata !44, i32 0, metadata !296} ; [ DW_TAG_arg_variable ]
!298 = metadata !{i32 187, i32 33, metadata !254, metadata !296}
!299 = metadata !{i32 189, i32 34, metadata !260, metadata !296}
!300 = metadata !{i32 786688, metadata !260, metadata !"y", metadata !41, i32 189, metadata !44, i32 0, metadata !296} ; [ DW_TAG_auto_variable ]
!301 = metadata !{i32 190, i32 5, metadata !260, metadata !296}
!302 = metadata !{i32 274, i32 25, metadata !240, null}
!303 = metadata !{i32 786688, metadata !241, metadata !"i", metadata !41, i32 272, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!304 = metadata !{i32 289, i32 1, metadata !241, null}
!305 = metadata !{i32 786689, metadata !306, metadata !"k", null, i32 292, metadata !309, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!306 = metadata !{i32 786478, i32 0, metadata !41, metadata !"aes_expandEncKey", metadata !"aes_expandEncKey", metadata !"", metadata !41, i32 292, metadata !307, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !69, i32 293} ; [ DW_TAG_subprogram ]
!307 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !308, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!308 = metadata !{null, metadata !170, metadata !170}
!309 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !44, metadata !83, i32 0, i32 0} ; [ DW_TAG_array_type ]
!310 = metadata !{i32 292, i32 39, metadata !306, null}
!311 = metadata !{i32 790532, metadata !306, metadata !"rc", null, i32 292, metadata !170, i32 0, i32 0} ; [ DW_TAG_arg_variable_ro ]
!312 = metadata !{i32 292, i32 51, metadata !306, null}
!313 = metadata !{i32 296, i32 5, metadata !314, null}
!314 = metadata !{i32 786443, metadata !306, i32 293, i32 1, metadata !41, i32 28} ; [ DW_TAG_lexical_block ]
!315 = metadata !{i32 297, i32 5, metadata !314, null}
!316 = metadata !{i32 298, i32 5, metadata !314, null}
!317 = metadata !{i32 299, i32 5, metadata !314, null}
!318 = metadata !{i32 786689, metadata !254, metadata !"x", metadata !41, i32 16777403, metadata !44, i32 0, metadata !319} ; [ DW_TAG_arg_variable ]
!319 = metadata !{i32 300, i32 11, metadata !314, null}
!320 = metadata !{i32 187, i32 33, metadata !254, metadata !319}
!321 = metadata !{i32 189, i32 34, metadata !260, metadata !319}
!322 = metadata !{i32 786688, metadata !260, metadata !"y", metadata !41, i32 189, metadata !44, i32 0, metadata !319} ; [ DW_TAG_auto_variable ]
!323 = metadata !{i32 190, i32 5, metadata !260, metadata !319}
!324 = metadata !{i32 302, i32 9, metadata !325, null}
!325 = metadata !{i32 786443, metadata !314, i32 302, i32 5, metadata !41, i32 29} ; [ DW_TAG_lexical_block ]
!326 = metadata !{i32 302, i32 32, metadata !325, null}
!327 = metadata !{i32 302, i32 24, metadata !325, null}
!328 = metadata !{i32 786688, metadata !314, metadata !"i", metadata !41, i32 294, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!329 = metadata !{i32 304, i32 5, metadata !314, null}
!330 = metadata !{i32 305, i32 5, metadata !314, null}
!331 = metadata !{i32 306, i32 5, metadata !314, null}
!332 = metadata !{i32 307, i32 5, metadata !314, null}
!333 = metadata !{i32 309, i32 9, metadata !334, null}
!334 = metadata !{i32 786443, metadata !314, i32 309, i32 5, metadata !41, i32 30} ; [ DW_TAG_lexical_block ]
!335 = metadata !{i32 309, i32 33, metadata !334, null}
!336 = metadata !{i32 309, i32 25, metadata !334, null}
!337 = metadata !{i32 312, i32 1, metadata !314, null}
!338 = metadata !{i32 790532, metadata !339, metadata !"rc", null, i32 315, metadata !170, i32 0, i32 0} ; [ DW_TAG_arg_variable_ro ]
!339 = metadata !{i32 786478, i32 0, metadata !41, metadata !"aes_expandDecKey", metadata !"aes_expandDecKey", metadata !"", metadata !41, i32 315, metadata !307, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !69, i32 316} ; [ DW_TAG_subprogram ]
!340 = metadata !{i32 315, i32 44, metadata !339, null}
!341 = metadata !{i32 319, i32 9, metadata !342, null}
!342 = metadata !{i32 786443, metadata !343, i32 319, i32 5, metadata !41, i32 17} ; [ DW_TAG_lexical_block ]
!343 = metadata !{i32 786443, metadata !339, i32 316, i32 1, metadata !41, i32 16} ; [ DW_TAG_lexical_block ]
!344 = metadata !{i32 319, i32 33, metadata !342, null}
!345 = metadata !{i32 319, i32 25, metadata !342, null}
!346 = metadata !{i32 786688, metadata !343, metadata !"i", metadata !41, i32 317, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!347 = metadata !{i32 322, i32 5, metadata !343, null}
!348 = metadata !{i32 323, i32 5, metadata !343, null}
!349 = metadata !{i32 324, i32 5, metadata !343, null}
!350 = metadata !{i32 325, i32 5, metadata !343, null}
!351 = metadata !{i32 327, i32 9, metadata !352, null}
!352 = metadata !{i32 786443, metadata !343, i32 327, i32 5, metadata !41, i32 18} ; [ DW_TAG_lexical_block ]
!353 = metadata !{i32 327, i32 32, metadata !352, null}
!354 = metadata !{i32 327, i32 24, metadata !352, null}
!355 = metadata !{i32 330, i32 5, metadata !343, null}
!356 = metadata !{i32 331, i32 5, metadata !343, null}
!357 = metadata !{i32 332, i32 5, metadata !343, null}
!358 = metadata !{i32 333, i32 5, metadata !343, null}
!359 = metadata !{i32 334, i32 5, metadata !343, null}
!360 = metadata !{i32 790534, metadata !339, metadata !"rc", null, i32 315, metadata !170, i32 0, i32 0} ; [ DW_TAG_arg_variable_wo ]
!361 = metadata !{i32 335, i32 1, metadata !343, null}
!362 = metadata !{i32 786689, metadata !363, metadata !"buf", null, i32 358, metadata !237, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!363 = metadata !{i32 786478, i32 0, metadata !41, metadata !"aes_encrypt_ecb", metadata !"aes_encrypt_ecb", metadata !"", metadata !41, i32 358, metadata !160, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !69, i32 359} ; [ DW_TAG_subprogram ]
!364 = metadata !{i32 358, i32 49, metadata !363, null}
!365 = metadata !{i32 786689, metadata !366, metadata !"buf", null, i32 218, metadata !237, i32 0, metadata !369} ; [ DW_TAG_arg_variable ]
!366 = metadata !{i32 786478, i32 0, metadata !41, metadata !"aes_addRoundKey_cpy", metadata !"aes_addRoundKey_cpy", metadata !"", metadata !41, i32 218, metadata !367, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !69, i32 219} ; [ DW_TAG_subprogram ]
!367 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !368, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!368 = metadata !{null, metadata !170, metadata !170, metadata !170}
!369 = metadata !{i32 362, i32 5, metadata !370, null}
!370 = metadata !{i32 786443, metadata !363, i32 359, i32 1, metadata !41, i32 5} ; [ DW_TAG_lexical_block ]
!371 = metadata !{i32 218, i32 42, metadata !366, metadata !369}
!372 = metadata !{i32 222, i32 5, metadata !373, metadata !369}
!373 = metadata !{i32 786443, metadata !366, i32 219, i32 1, metadata !41, i32 27} ; [ DW_TAG_lexical_block ]
!374 = metadata !{i32 786688, metadata !373, metadata !"i", metadata !41, i32 220, metadata !44, i32 0, metadata !369} ; [ DW_TAG_auto_variable ]
!375 = metadata !{i32 231, i32 5, metadata !376, metadata !378}
!376 = metadata !{i32 786443, metadata !377, i32 228, i32 1, metadata !41, i32 25} ; [ DW_TAG_lexical_block ]
!377 = metadata !{i32 786478, i32 0, metadata !41, metadata !"aes_shiftRows", metadata !"aes_shiftRows", metadata !"", metadata !41, i32 227, metadata !235, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !69, i32 228} ; [ DW_TAG_subprogram ]
!378 = metadata !{i32 366, i32 9, metadata !379, null}
!379 = metadata !{i32 786443, metadata !380, i32 364, i32 5, metadata !41, i32 7} ; [ DW_TAG_lexical_block ]
!380 = metadata !{i32 786443, metadata !370, i32 363, i32 5, metadata !41, i32 6} ; [ DW_TAG_lexical_block ]
!381 = metadata !{i32 232, i32 5, metadata !376, metadata !378}
!382 = metadata !{i32 233, i32 5, metadata !376, metadata !378}
!383 = metadata !{i32 234, i32 5, metadata !376, metadata !378}
!384 = metadata !{i32 363, i32 9, metadata !380, null}
!385 = metadata !{i32 222, i32 17, metadata !373, metadata !369}
!386 = metadata !{i32 198, i32 5, metadata !387, metadata !389}
!387 = metadata !{i32 786443, metadata !388, i32 195, i32 1, metadata !41, i32 26} ; [ DW_TAG_lexical_block ]
!388 = metadata !{i32 786478, i32 0, metadata !41, metadata !"aes_subBytes", metadata !"aes_subBytes", metadata !"", metadata !41, i32 194, metadata !235, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !69, i32 195} ; [ DW_TAG_subprogram ]
!389 = metadata !{i32 365, i32 9, metadata !379, null}
!390 = metadata !{i32 198, i32 5, metadata !387, metadata !391}
!391 = metadata !{i32 371, i32 5, metadata !370, null}
!392 = metadata !{i32 786688, metadata !387, metadata !"i", metadata !41, i32 196, metadata !44, i32 0, metadata !389} ; [ DW_TAG_auto_variable ]
!393 = metadata !{i32 198, i32 17, metadata !387, metadata !389}
!394 = metadata !{i32 786689, metadata !377, metadata !"buf", null, i32 227, metadata !237, i32 0, metadata !378} ; [ DW_TAG_arg_variable ]
!395 = metadata !{i32 227, i32 36, metadata !377, metadata !378}
!396 = metadata !{i32 786688, metadata !376, metadata !"i", metadata !41, i32 229, metadata !44, i32 0, metadata !378} ; [ DW_TAG_auto_variable ]
!397 = metadata !{i32 786688, metadata !376, metadata !"j", metadata !41, i32 229, metadata !44, i32 0, metadata !378} ; [ DW_TAG_auto_variable ]
!398 = metadata !{i32 786689, metadata !399, metadata !"buf", null, i32 251, metadata !237, i32 0, metadata !400} ; [ DW_TAG_arg_variable ]
!399 = metadata !{i32 786478, i32 0, metadata !41, metadata !"aes_mixColumns", metadata !"aes_mixColumns", metadata !"", metadata !41, i32 251, metadata !235, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !69, i32 252} ; [ DW_TAG_subprogram ]
!400 = metadata !{i32 367, i32 9, metadata !379, null}
!401 = metadata !{i32 251, i32 37, metadata !399, metadata !400}
!402 = metadata !{i32 255, i32 10, metadata !403, metadata !400}
!403 = metadata !{i32 786443, metadata !404, i32 255, i32 5, metadata !41, i32 23} ; [ DW_TAG_lexical_block ]
!404 = metadata !{i32 786443, metadata !399, i32 252, i32 1, metadata !41, i32 22} ; [ DW_TAG_lexical_block ]
!405 = metadata !{i32 257, i32 9, metadata !406, metadata !400}
!406 = metadata !{i32 786443, metadata !403, i32 256, i32 5, metadata !41, i32 24} ; [ DW_TAG_lexical_block ]
!407 = metadata !{i32 786688, metadata !404, metadata !"a", metadata !41, i32 253, metadata !44, i32 0, metadata !400} ; [ DW_TAG_auto_variable ]
!408 = metadata !{i32 258, i32 9, metadata !406, metadata !400}
!409 = metadata !{i32 786688, metadata !404, metadata !"b", metadata !41, i32 253, metadata !44, i32 0, metadata !400} ; [ DW_TAG_auto_variable ]
!410 = metadata !{i32 259, i32 9, metadata !406, metadata !400}
!411 = metadata !{i32 786688, metadata !404, metadata !"c", metadata !41, i32 253, metadata !44, i32 0, metadata !400} ; [ DW_TAG_auto_variable ]
!412 = metadata !{i32 260, i32 9, metadata !406, metadata !400}
!413 = metadata !{i32 786688, metadata !404, metadata !"d", metadata !41, i32 253, metadata !44, i32 0, metadata !400} ; [ DW_TAG_auto_variable ]
!414 = metadata !{i32 261, i32 9, metadata !406, metadata !400}
!415 = metadata !{i32 786688, metadata !404, metadata !"e", metadata !41, i32 253, metadata !44, i32 0, metadata !400} ; [ DW_TAG_auto_variable ]
!416 = metadata !{i32 786689, metadata !254, metadata !"x", metadata !41, i32 16777403, metadata !44, i32 0, metadata !417} ; [ DW_TAG_arg_variable ]
!417 = metadata !{i32 262, i32 23, metadata !406, metadata !400}
!418 = metadata !{i32 187, i32 33, metadata !254, metadata !417}
!419 = metadata !{i32 189, i32 34, metadata !260, metadata !417}
!420 = metadata !{i32 786688, metadata !260, metadata !"y", metadata !41, i32 189, metadata !44, i32 0, metadata !417} ; [ DW_TAG_auto_variable ]
!421 = metadata !{i32 190, i32 5, metadata !260, metadata !417}
!422 = metadata !{i32 263, i32 27, metadata !406, metadata !400}
!423 = metadata !{i32 786689, metadata !254, metadata !"x", metadata !41, i32 16777403, metadata !44, i32 0, metadata !422} ; [ DW_TAG_arg_variable ]
!424 = metadata !{i32 187, i32 33, metadata !254, metadata !422}
!425 = metadata !{i32 189, i32 34, metadata !260, metadata !422}
!426 = metadata !{i32 786688, metadata !260, metadata !"y", metadata !41, i32 189, metadata !44, i32 0, metadata !422} ; [ DW_TAG_auto_variable ]
!427 = metadata !{i32 190, i32 5, metadata !260, metadata !422}
!428 = metadata !{i32 264, i32 27, metadata !406, metadata !400}
!429 = metadata !{i32 786689, metadata !254, metadata !"x", metadata !41, i32 16777403, metadata !44, i32 0, metadata !428} ; [ DW_TAG_arg_variable ]
!430 = metadata !{i32 187, i32 33, metadata !254, metadata !428}
!431 = metadata !{i32 189, i32 34, metadata !260, metadata !428}
!432 = metadata !{i32 786688, metadata !260, metadata !"y", metadata !41, i32 189, metadata !44, i32 0, metadata !428} ; [ DW_TAG_auto_variable ]
!433 = metadata !{i32 190, i32 5, metadata !260, metadata !428}
!434 = metadata !{i32 265, i32 27, metadata !406, metadata !400}
!435 = metadata !{i32 786689, metadata !254, metadata !"x", metadata !41, i32 16777403, metadata !44, i32 0, metadata !434} ; [ DW_TAG_arg_variable ]
!436 = metadata !{i32 187, i32 33, metadata !254, metadata !434}
!437 = metadata !{i32 189, i32 34, metadata !260, metadata !434}
!438 = metadata !{i32 786688, metadata !260, metadata !"y", metadata !41, i32 189, metadata !44, i32 0, metadata !434} ; [ DW_TAG_auto_variable ]
!439 = metadata !{i32 190, i32 5, metadata !260, metadata !434}
!440 = metadata !{i32 255, i32 25, metadata !403, metadata !400}
!441 = metadata !{i32 786688, metadata !404, metadata !"i", metadata !41, i32 253, metadata !44, i32 0, metadata !400} ; [ DW_TAG_auto_variable ]
!442 = metadata !{i32 368, i32 9, metadata !379, null}
!443 = metadata !{i32 368, i32 21, metadata !379, null}
!444 = metadata !{i32 369, i32 14, metadata !379, null}
!445 = metadata !{i32 786688, metadata !370, metadata !"rcon", metadata !41, i32 360, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!446 = metadata !{i32 369, i32 49, metadata !379, null}
!447 = metadata !{i32 363, i32 34, metadata !380, null}
!448 = metadata !{i32 786688, metadata !370, metadata !"i", metadata !41, i32 360, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!449 = metadata !{i32 786688, metadata !387, metadata !"i", metadata !41, i32 196, metadata !44, i32 0, metadata !391} ; [ DW_TAG_auto_variable ]
!450 = metadata !{i32 198, i32 17, metadata !387, metadata !391}
!451 = metadata !{i32 786689, metadata !377, metadata !"buf", null, i32 227, metadata !237, i32 0, metadata !452} ; [ DW_TAG_arg_variable ]
!452 = metadata !{i32 372, i32 5, metadata !370, null}
!453 = metadata !{i32 227, i32 36, metadata !377, metadata !452}
!454 = metadata !{i32 231, i32 5, metadata !376, metadata !452}
!455 = metadata !{i32 786688, metadata !376, metadata !"i", metadata !41, i32 229, metadata !44, i32 0, metadata !452} ; [ DW_TAG_auto_variable ]
!456 = metadata !{i32 232, i32 5, metadata !376, metadata !452}
!457 = metadata !{i32 233, i32 5, metadata !376, metadata !452}
!458 = metadata !{i32 786688, metadata !376, metadata !"j", metadata !41, i32 229, metadata !44, i32 0, metadata !452} ; [ DW_TAG_auto_variable ]
!459 = metadata !{i32 234, i32 5, metadata !376, metadata !452}
!460 = metadata !{i32 373, i32 5, metadata !370, null}
!461 = metadata !{i32 374, i32 5, metadata !370, null}
!462 = metadata !{i32 375, i32 1, metadata !370, null}
!463 = metadata !{i32 786689, metadata !464, metadata !"buf", null, i32 378, metadata !237, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!464 = metadata !{i32 786478, i32 0, metadata !41, metadata !"aes_decrypt_ecb", metadata !"aes_decrypt_ecb", metadata !"", metadata !41, i32 378, metadata !160, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !69, i32 379} ; [ DW_TAG_subprogram ]
!465 = metadata !{i32 378, i32 49, metadata !464, null}
!466 = metadata !{i32 786689, metadata !366, metadata !"buf", null, i32 218, metadata !237, i32 0, metadata !467} ; [ DW_TAG_arg_variable ]
!467 = metadata !{i32 382, i32 5, metadata !468, null}
!468 = metadata !{i32 786443, metadata !464, i32 379, i32 1, metadata !41, i32 8} ; [ DW_TAG_lexical_block ]
!469 = metadata !{i32 218, i32 42, metadata !366, metadata !467}
!470 = metadata !{i32 222, i32 5, metadata !373, metadata !467}
!471 = metadata !{i32 786688, metadata !373, metadata !"i", metadata !41, i32 220, metadata !44, i32 0, metadata !467} ; [ DW_TAG_auto_variable ]
!472 = metadata !{i32 222, i32 17, metadata !373, metadata !467}
!473 = metadata !{i32 786689, metadata !474, metadata !"buf", null, i32 239, metadata !237, i32 0, metadata !475} ; [ DW_TAG_arg_variable ]
!474 = metadata !{i32 786478, i32 0, metadata !41, metadata !"aes_shiftRows_inv", metadata !"aes_shiftRows_inv", metadata !"", metadata !41, i32 239, metadata !235, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !69, i32 240} ; [ DW_TAG_subprogram ]
!475 = metadata !{i32 383, i32 5, metadata !468, null}
!476 = metadata !{i32 239, i32 40, metadata !474, metadata !475}
!477 = metadata !{i32 243, i32 5, metadata !478, metadata !475}
!478 = metadata !{i32 786443, metadata !474, i32 240, i32 1, metadata !41, i32 20} ; [ DW_TAG_lexical_block ]
!479 = metadata !{i32 786688, metadata !478, metadata !"i", metadata !41, i32 241, metadata !44, i32 0, metadata !475} ; [ DW_TAG_auto_variable ]
!480 = metadata !{i32 244, i32 5, metadata !478, metadata !475}
!481 = metadata !{i32 245, i32 5, metadata !478, metadata !475}
!482 = metadata !{i32 786688, metadata !478, metadata !"j", metadata !41, i32 241, metadata !44, i32 0, metadata !475} ; [ DW_TAG_auto_variable ]
!483 = metadata !{i32 246, i32 5, metadata !478, metadata !475}
!484 = metadata !{i32 786689, metadata !485, metadata !"buf", null, i32 202, metadata !237, i32 0, metadata !486} ; [ DW_TAG_arg_variable ]
!485 = metadata !{i32 786478, i32 0, metadata !41, metadata !"aes_subBytes_inv", metadata !"aes_subBytes_inv", metadata !"", metadata !41, i32 202, metadata !235, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !69, i32 203} ; [ DW_TAG_subprogram ]
!486 = metadata !{i32 384, i32 5, metadata !468, null}
!487 = metadata !{i32 202, i32 39, metadata !485, metadata !486}
!488 = metadata !{i32 206, i32 5, metadata !489, metadata !486}
!489 = metadata !{i32 786443, metadata !485, i32 203, i32 1, metadata !41, i32 19} ; [ DW_TAG_lexical_block ]
!490 = metadata !{i32 786688, metadata !489, metadata !"i", metadata !41, i32 204, metadata !44, i32 0, metadata !486} ; [ DW_TAG_auto_variable ]
!491 = metadata !{i32 386, i32 10, metadata !492, null}
!492 = metadata !{i32 786443, metadata !468, i32 386, i32 5, metadata !41, i32 9} ; [ DW_TAG_lexical_block ]
!493 = metadata !{i32 206, i32 17, metadata !489, metadata !486}
!494 = metadata !{i32 786688, metadata !468, metadata !"i", metadata !41, i32 380, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!495 = metadata !{i32 388, i32 9, metadata !496, null}
!496 = metadata !{i32 786443, metadata !492, i32 387, i32 5, metadata !41, i32 10} ; [ DW_TAG_lexical_block ]
!497 = metadata !{i32 390, i32 13, metadata !498, null}
!498 = metadata !{i32 786443, metadata !496, i32 389, i32 9, metadata !41, i32 11} ; [ DW_TAG_lexical_block ]
!499 = metadata !{i32 786688, metadata !468, metadata !"rcon", metadata !41, i32 380, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!500 = metadata !{i32 391, i32 13, metadata !498, null}
!501 = metadata !{i32 392, i32 9, metadata !498, null}
!502 = metadata !{i32 393, i32 14, metadata !496, null}
!503 = metadata !{i32 394, i32 9, metadata !496, null}
!504 = metadata !{i32 786689, metadata !474, metadata !"buf", null, i32 239, metadata !237, i32 0, metadata !505} ; [ DW_TAG_arg_variable ]
!505 = metadata !{i32 395, i32 9, metadata !496, null}
!506 = metadata !{i32 239, i32 40, metadata !474, metadata !505}
!507 = metadata !{i32 243, i32 5, metadata !478, metadata !505}
!508 = metadata !{i32 786688, metadata !478, metadata !"i", metadata !41, i32 241, metadata !44, i32 0, metadata !505} ; [ DW_TAG_auto_variable ]
!509 = metadata !{i32 244, i32 5, metadata !478, metadata !505}
!510 = metadata !{i32 245, i32 5, metadata !478, metadata !505}
!511 = metadata !{i32 786688, metadata !478, metadata !"j", metadata !41, i32 241, metadata !44, i32 0, metadata !505} ; [ DW_TAG_auto_variable ]
!512 = metadata !{i32 246, i32 5, metadata !478, metadata !505}
!513 = metadata !{i32 786689, metadata !485, metadata !"buf", null, i32 202, metadata !237, i32 0, metadata !514} ; [ DW_TAG_arg_variable ]
!514 = metadata !{i32 396, i32 9, metadata !496, null}
!515 = metadata !{i32 202, i32 39, metadata !485, metadata !514}
!516 = metadata !{i32 206, i32 5, metadata !489, metadata !514}
!517 = metadata !{i32 786688, metadata !489, metadata !"i", metadata !41, i32 204, metadata !44, i32 0, metadata !514} ; [ DW_TAG_auto_variable ]
!518 = metadata !{i32 206, i32 17, metadata !489, metadata !514}
!519 = metadata !{i32 397, i32 5, metadata !496, null}
!520 = metadata !{i32 398, i32 5, metadata !468, null}
!521 = metadata !{i32 399, i32 1, metadata !468, null}
!522 = metadata !{i32 786689, metadata !523, metadata !"buf", null, i32 210, metadata !237, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!523 = metadata !{i32 786478, i32 0, metadata !41, metadata !"aes_addRoundKey", metadata !"aes_addRoundKey", metadata !"", metadata !41, i32 210, metadata !307, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !69, i32 211} ; [ DW_TAG_subprogram ]
!524 = metadata !{i32 210, i32 38, metadata !523, null}
!525 = metadata !{i32 786689, metadata !523, metadata !"key", null, i32 210, metadata !309, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!526 = metadata !{i32 210, i32 52, metadata !523, null}
!527 = metadata !{i32 214, i32 5, metadata !528, null}
!528 = metadata !{i32 786443, metadata !523, i32 211, i32 1, metadata !41, i32 21} ; [ DW_TAG_lexical_block ]
!529 = metadata !{i32 786688, metadata !528, metadata !"i", metadata !41, i32 212, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!530 = metadata !{i32 214, i32 17, metadata !528, null}
!531 = metadata !{i32 215, i32 1, metadata !528, null}
