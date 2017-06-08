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
@.str9 = private unnamed_addr constant [14 x i8] c"aescbc_label0\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str8 = private unnamed_addr constant [14 x i8] c"aescbc_label9\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str7 = private unnamed_addr constant [14 x i8] c"aescbc_label7\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str6 = private unnamed_addr constant [14 x i8] c"aescbc_label1\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str5 = private unnamed_addr constant [15 x i8] c"aescbc_label11\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str4 = private unnamed_addr constant [15 x i8] c"aescbc_label10\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str3 = private unnamed_addr constant [14 x i8] c"aescbc_label4\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str2 = private unnamed_addr constant [15 x i8] c"aescbc_label12\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str14 = private unnamed_addr constant [14 x i8] c"aescbc_label6\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str13 = private unnamed_addr constant [14 x i8] c"aescbc_label8\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str12 = private unnamed_addr constant [14 x i8] c"aescbc_label5\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str11 = private unnamed_addr constant [14 x i8] c"aescbc_label3\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str10 = private unnamed_addr constant [14 x i8] c"aescbc_label2\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=36 type=[1 x i8]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=6 type=[10 x i8]*]

; [#uses=127]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @aescbc([16 x i8]* %data_in, [16 x i8]* %data_out, i3 zeroext %mode, [32 x i8]* %key_in, [16 x i8]* %iv_in) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([16 x i8]* %data_in) nounwind, !map !106
  call void (...)* @_ssdm_op_SpecBitsMap([16 x i8]* %data_out) nounwind, !map !112
  call void (...)* @_ssdm_op_SpecBitsMap(i3 %mode) nounwind, !map !116
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %key_in) nounwind, !map !122
  call void (...)* @_ssdm_op_SpecBitsMap([16 x i8]* %iv_in) nounwind, !map !128
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @aescbc.str) nounwind
  %buf = alloca [16 x i8], align 16               ; [#uses=10 type=[16 x i8]*]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %data_in}, i64 0, metadata !132), !dbg !134 ; [debug line = 8:21] [debug variable = data_in]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %data_out}, i64 0, metadata !135), !dbg !136 ; [debug line = 9:12] [debug variable = data_out]
  call void @llvm.dbg.value(metadata !{i3 %mode}, i64 0, metadata !137), !dbg !138 ; [debug line = 10:20] [debug variable = mode]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %key_in}, i64 0, metadata !139), !dbg !141 ; [debug line = 11:12] [debug variable = key_in]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %iv_in}, i64 0, metadata !142), !dbg !143 ; [debug line = 12:12] [debug variable = iv_in]
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %key_in, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 32, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %iv_in, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %data_in, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %data_out, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i3 %mode, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !144 ; [debug line = 18:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !146 ; [debug line = 19:1]
  call void @llvm.dbg.declare(metadata !{[16 x i8]* %buf}, metadata !147), !dbg !148 ; [debug line = 21:10] [debug variable = buf]
  switch i3 %mode, label %.loopexit [
    i3 0, label %.preheader11.preheader
    i3 1, label %.preheader7.preheader
    i3 2, label %.preheader3.preheader
  ], !dbg !149                                    ; [debug line = 29:5]

.preheader11.preheader:                           ; preds = %0
  br label %.preheader11, !dbg !150               ; [debug line = 32:25]

.preheader7.preheader:                            ; preds = %0
  br label %.preheader7, !dbg !153                ; [debug line = 45:25]

.preheader3.preheader:                            ; preds = %0
  br label %.preheader3, !dbg !155                ; [debug line = 61:24]

.preheader11:                                     ; preds = %2, %.preheader11.preheader
  %i = phi i5 [ %i.12, %2 ], [ 0, %.preheader11.preheader ] ; [#uses=3 type=i5]
  %tmp.3 = icmp eq i5 %i, -16, !dbg !150          ; [#uses=1 type=i1] [debug line = 32:25]
  %1 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.3, label %.preheader10.preheader, label %2, !dbg !150 ; [debug line = 32:25]

.preheader10.preheader:                           ; preds = %.preheader11
  br label %.preheader10, !dbg !157               ; [debug line = 34:21]

; <label>:2                                       ; preds = %.preheader11
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str2) nounwind, !dbg !159 ; [debug line = 33:7]
  %tmp.6 = zext i5 %i to i64, !dbg !159           ; [#uses=1 type=i64] [debug line = 33:7]
  %data_out.addr = getelementptr [16 x i8]* %data_out, i64 0, i64 %tmp.6, !dbg !159 ; [#uses=1 type=i8*] [debug line = 33:7]
  store i8 0, i8* %data_out.addr, align 1, !dbg !159 ; [debug line = 33:7]
  %i.12 = add i5 %i, 1, !dbg !161                 ; [#uses=1 type=i5] [debug line = 32:36]
  call void @llvm.dbg.value(metadata !{i5 %i.12}, i64 0, metadata !162), !dbg !161 ; [debug line = 32:36] [debug variable = i]
  br label %.preheader11, !dbg !161               ; [debug line = 32:36]

.preheader10:                                     ; preds = %4, %.preheader10.preheader
  %i.1 = phi i6 [ %i.15, %4 ], [ 0, %.preheader10.preheader ] ; [#uses=3 type=i6]
  %tmp.1 = icmp eq i6 %i.1, -32, !dbg !157        ; [#uses=1 type=i1] [debug line = 34:21]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.1, label %.preheader9.preheader, label %4, !dbg !157 ; [debug line = 34:21]

.preheader9.preheader:                            ; preds = %.preheader10
  br label %.preheader9, !dbg !163                ; [debug line = 36:25]

; <label>:4                                       ; preds = %.preheader10
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @.str3) nounwind, !dbg !165 ; [debug line = 35:4]
  %tmp.9 = zext i6 %i.1 to i64, !dbg !165         ; [#uses=2 type=i64] [debug line = 35:4]
  %key_in.addr = getelementptr [32 x i8]* %key_in, i64 0, i64 %tmp.9, !dbg !165 ; [#uses=1 type=i8*] [debug line = 35:4]
  %key_in.load = load i8* %key_in.addr, align 1, !dbg !165 ; [#uses=1 type=i8] [debug line = 35:4]
  %key.addr = getelementptr inbounds [32 x i8]* @key, i64 0, i64 %tmp.9, !dbg !165 ; [#uses=1 type=i8*] [debug line = 35:4]
  store i8 %key_in.load, i8* %key.addr, align 1, !dbg !165 ; [debug line = 35:4]
  %i.15 = add i6 %i.1, 1, !dbg !167               ; [#uses=1 type=i6] [debug line = 34:32]
  call void @llvm.dbg.value(metadata !{i6 %i.15}, i64 0, metadata !162), !dbg !167 ; [debug line = 34:32] [debug variable = i]
  br label %.preheader10, !dbg !167               ; [debug line = 34:32]

.preheader9:                                      ; preds = %6, %.preheader9.preheader
  %i.2 = phi i5 [ %i.18, %6 ], [ 0, %.preheader9.preheader ] ; [#uses=3 type=i5]
  %tmp.13 = icmp eq i5 %i.2, -16, !dbg !163       ; [#uses=1 type=i1] [debug line = 36:25]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.13, label %.preheader8.preheader, label %6, !dbg !163 ; [debug line = 36:25]

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8, !dbg !168                ; [debug line = 38:25]

; <label>:6                                       ; preds = %.preheader9
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str4) nounwind, !dbg !170 ; [debug line = 37:7]
  %tmp.16 = zext i5 %i.2 to i64, !dbg !170        ; [#uses=2 type=i64] [debug line = 37:7]
  %iv_in.addr = getelementptr [16 x i8]* %iv_in, i64 0, i64 %tmp.16, !dbg !170 ; [#uses=1 type=i8*] [debug line = 37:7]
  %iv_in.load = load i8* %iv_in.addr, align 1, !dbg !170 ; [#uses=1 type=i8] [debug line = 37:7]
  %iv.addr = getelementptr inbounds [16 x i8]* @iv, i64 0, i64 %tmp.16, !dbg !170 ; [#uses=1 type=i8*] [debug line = 37:7]
  store i8 %iv_in.load, i8* %iv.addr, align 1, !dbg !170 ; [debug line = 37:7]
  %i.18 = add i5 %i.2, 1, !dbg !172               ; [#uses=1 type=i5] [debug line = 36:36]
  call void @llvm.dbg.value(metadata !{i5 %i.18}, i64 0, metadata !162), !dbg !172 ; [debug line = 36:36] [debug variable = i]
  br label %.preheader9, !dbg !172                ; [debug line = 36:36]

.preheader8:                                      ; preds = %8, %.preheader8.preheader
  %i.3 = phi i5 [ %i.21, %8 ], [ 0, %.preheader8.preheader ] ; [#uses=3 type=i5]
  %tmp.20 = icmp eq i5 %i.3, -16, !dbg !168       ; [#uses=1 type=i1] [debug line = 38:25]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.20, label %.preheader24.preheader, label %8, !dbg !168 ; [debug line = 38:25]

.preheader24.preheader:                           ; preds = %.preheader8
  br label %.preheader24, !dbg !173               ; [debug line = 344:10@40:6]

; <label>:8                                       ; preds = %.preheader8
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str5) nounwind, !dbg !189 ; [debug line = 39:7]
  %tmp.23 = zext i5 %i.3 to i64, !dbg !189        ; [#uses=2 type=i64] [debug line = 39:7]
  %iv.addr.1 = getelementptr inbounds [16 x i8]* @iv, i64 0, i64 %tmp.23, !dbg !189 ; [#uses=1 type=i8*] [debug line = 39:7]
  %iv.load = load i8* %iv.addr.1, align 1, !dbg !189 ; [#uses=1 type=i8] [debug line = 39:7]
  %xorv.addr.3 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.23, !dbg !189 ; [#uses=1 type=i8*] [debug line = 39:7]
  store i8 %iv.load, i8* %xorv.addr.3, align 1, !dbg !189 ; [debug line = 39:7]
  %i.21 = add i5 %i.3, 1, !dbg !191               ; [#uses=1 type=i5] [debug line = 38:36]
  call void @llvm.dbg.value(metadata !{i5 %i.21}, i64 0, metadata !162), !dbg !191 ; [debug line = 38:36] [debug variable = i]
  br label %.preheader8, !dbg !191                ; [debug line = 38:36]

.preheader24:                                     ; preds = %10, %.preheader24.preheader
  %i.i = phi i6 [ %i.25, %10 ], [ 0, %.preheader24.preheader ] ; [#uses=3 type=i6]
  %tmp.i = icmp eq i6 %i.i, -32, !dbg !173        ; [#uses=1 type=i1] [debug line = 344:10@40:6]
  %9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.i, label %.preheader.i.preheader, label %10, !dbg !173 ; [debug line = 344:10@40:6]

.preheader.i.preheader:                           ; preds = %.preheader24
  br label %.preheader.i, !dbg !192               ; [debug line = 345:10@40:6]

; <label>:10                                      ; preds = %.preheader24
  %tmp..i = zext i6 %i.i to i64, !dbg !194        ; [#uses=3 type=i64] [debug line = 344:44@40:6]
  %key.addr.1 = getelementptr [32 x i8]* @key, i64 0, i64 %tmp..i, !dbg !194 ; [#uses=1 type=i8*] [debug line = 344:44@40:6]
  %key.load = load i8* %key.addr.1, align 1, !dbg !194 ; [#uses=2 type=i8] [debug line = 344:44@40:6]
  %ctx.deckey.addr = getelementptr [32 x i8]* @ctx.deckey, i64 0, i64 %tmp..i, !dbg !194 ; [#uses=1 type=i8*] [debug line = 344:44@40:6]
  store i8 %key.load, i8* %ctx.deckey.addr, align 1, !dbg !194 ; [debug line = 344:44@40:6]
  %ctx.enckey.addr = getelementptr [32 x i8]* @ctx.enckey, i64 0, i64 %tmp..i, !dbg !194 ; [#uses=1 type=i8*] [debug line = 344:44@40:6]
  store i8 %key.load, i8* %ctx.enckey.addr, align 1, !dbg !194 ; [debug line = 344:44@40:6]
  %i.25 = add i6 %i.i, 1, !dbg !195               ; [#uses=1 type=i6] [debug line = 344:39@40:6]
  call void @llvm.dbg.value(metadata !{i6 %i.25}, i64 0, metadata !196) nounwind, !dbg !195 ; [debug line = 344:39@40:6] [debug variable = i]
  br label %.preheader24, !dbg !195               ; [debug line = 344:39@40:6]

.preheader.i:                                     ; preds = %12, %.preheader.i.preheader
  %rcon.i = phi i8 [ %rcon, %12 ], [ 1, %.preheader.i.preheader ] ; [#uses=1 type=i8]
  %i.26 = phi i3 [ %phitmp.i, %12 ], [ -1, %.preheader.i.preheader ] ; [#uses=2 type=i3]
  call void @llvm.dbg.value(metadata !{i3 %i.26}, i64 0, metadata !196) nounwind, !dbg !192 ; [debug line = 345:10@40:6] [debug variable = i]
  %tmp.86.i = icmp eq i3 %i.26, 0, !dbg !192      ; [#uses=1 type=i1] [debug line = 345:10@40:6]
  %11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.86.i, label %.loopexit.loopexit18, label %12, !dbg !192 ; [debug line = 345:10@40:6]

; <label>:12                                      ; preds = %.preheader.i
  %rcon = call fastcc i8 @aes_expandEncKey([32 x i8]* @ctx.deckey, i8 %rcon.i) nounwind, !dbg !197 ; [#uses=1 type=i8] [debug line = 345:23@40:6]
  call void @llvm.dbg.value(metadata !{i8 %rcon}, i64 0, metadata !198) nounwind, !dbg !197 ; [debug line = 345:23@40:6] [debug variable = rcon]
  %phitmp.i = add i3 %i.26, -1, !dbg !197         ; [#uses=1 type=i3] [debug line = 345:23@40:6]
  br label %.preheader.i, !dbg !197               ; [debug line = 345:23@40:6]

.preheader7:                                      ; preds = %14, %.preheader7.preheader
  %i.4 = phi i5 [ %i.13, %14 ], [ 0, %.preheader7.preheader ] ; [#uses=3 type=i5]
  %tmp.4 = icmp eq i5 %i.4, -16, !dbg !153        ; [#uses=1 type=i1] [debug line = 45:25]
  %13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.4, label %.preheader6.preheader, label %14, !dbg !153 ; [debug line = 45:25]

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6, !dbg !199                ; [debug line = 48:24]

; <label>:14                                      ; preds = %.preheader7
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @.str6) nounwind, !dbg !201 ; [debug line = 46:7]
  %tmp.8 = zext i5 %i.4 to i64, !dbg !201         ; [#uses=2 type=i64] [debug line = 46:7]
  %data_in.addr = getelementptr [16 x i8]* %data_in, i64 0, i64 %tmp.8, !dbg !201 ; [#uses=1 type=i8*] [debug line = 46:7]
  %data_in.load = load i8* %data_in.addr, align 1, !dbg !201 ; [#uses=1 type=i8] [debug line = 46:7]
  %buf.addr = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.8, !dbg !201 ; [#uses=1 type=i8*] [debug line = 46:7]
  store i8 %data_in.load, i8* %buf.addr, align 1, !dbg !201 ; [debug line = 46:7]
  %i.13 = add i5 %i.4, 1, !dbg !203               ; [#uses=1 type=i5] [debug line = 45:36]
  call void @llvm.dbg.value(metadata !{i5 %i.13}, i64 0, metadata !162), !dbg !203 ; [debug line = 45:36] [debug variable = i]
  br label %.preheader7, !dbg !203                ; [debug line = 45:36]

.preheader6:                                      ; preds = %16, %.preheader6.preheader
  %i.5 = phi i5 [ %i.16, %16 ], [ 0, %.preheader6.preheader ] ; [#uses=3 type=i5]
  %tmp.2 = icmp eq i5 %i.5, -16, !dbg !199        ; [#uses=1 type=i1] [debug line = 48:24]
  %15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.2, label %17, label %16, !dbg !199   ; [debug line = 48:24]

; <label>:16                                      ; preds = %.preheader6
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @.str7) nounwind, !dbg !204 ; [debug line = 49:7]
  %tmp.10 = zext i5 %i.5 to i64, !dbg !204        ; [#uses=2 type=i64] [debug line = 49:7]
  %buf.addr.2 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.10, !dbg !204 ; [#uses=2 type=i8*] [debug line = 49:7]
  %buf.load = load i8* %buf.addr.2, align 1, !dbg !204 ; [#uses=1 type=i8] [debug line = 49:7]
  %xorv.addr = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.10, !dbg !204 ; [#uses=1 type=i8*] [debug line = 49:7]
  %xorv.load = load i8* %xorv.addr, align 1, !dbg !204 ; [#uses=1 type=i8] [debug line = 49:7]
  %tmp.11 = xor i8 %xorv.load, %buf.load, !dbg !204 ; [#uses=1 type=i8] [debug line = 49:7]
  store i8 %tmp.11, i8* %buf.addr.2, align 1, !dbg !204 ; [debug line = 49:7]
  %i.16 = add i5 %i.5, 1, !dbg !206               ; [#uses=1 type=i5] [debug line = 48:35]
  call void @llvm.dbg.value(metadata !{i5 %i.16}, i64 0, metadata !162), !dbg !206 ; [debug line = 48:35] [debug variable = i]
  br label %.preheader6, !dbg !206                ; [debug line = 48:35]

; <label>:17                                      ; preds = %.preheader6
  call fastcc void @aes_encrypt_ecb([16 x i8]* %buf) nounwind, !dbg !207 ; [debug line = 51:6]
  br label %18, !dbg !208                         ; [debug line = 53:24]

; <label>:18                                      ; preds = %20, %17
  %i.6 = phi i5 [ 0, %17 ], [ %i.19, %20 ]        ; [#uses=3 type=i5]
  %tmp.14 = icmp eq i5 %i.6, -16, !dbg !208       ; [#uses=1 type=i1] [debug line = 53:24]
  %19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.14, label %.preheader4.preheader, label %20, !dbg !208 ; [debug line = 53:24]

.preheader4.preheader:                            ; preds = %18
  br label %.preheader4, !dbg !210                ; [debug line = 56:24]

; <label>:20                                      ; preds = %18
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @.str8) nounwind, !dbg !212 ; [debug line = 54:7]
  %tmp.17 = zext i5 %i.6 to i64, !dbg !212        ; [#uses=2 type=i64] [debug line = 54:7]
  %buf.addr.4 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.17, !dbg !212 ; [#uses=1 type=i8*] [debug line = 54:7]
  %buf.load.2 = load i8* %buf.addr.4, align 1, !dbg !212 ; [#uses=1 type=i8] [debug line = 54:7]
  %xorv.addr.1 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.17, !dbg !212 ; [#uses=1 type=i8*] [debug line = 54:7]
  store i8 %buf.load.2, i8* %xorv.addr.1, align 1, !dbg !212 ; [debug line = 54:7]
  %i.19 = add i5 %i.6, 1, !dbg !214               ; [#uses=1 type=i5] [debug line = 53:35]
  call void @llvm.dbg.value(metadata !{i5 %i.19}, i64 0, metadata !162), !dbg !214 ; [debug line = 53:35] [debug variable = i]
  br label %18, !dbg !214                         ; [debug line = 53:35]

.preheader4:                                      ; preds = %22, %.preheader4.preheader
  %i.7 = phi i5 [ %i.22, %22 ], [ 0, %.preheader4.preheader ] ; [#uses=3 type=i5]
  %tmp.21 = icmp eq i5 %i.7, -16, !dbg !210       ; [#uses=1 type=i1] [debug line = 56:24]
  %21 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.21, label %.loopexit.loopexit17, label %22, !dbg !210 ; [debug line = 56:24]

; <label>:22                                      ; preds = %.preheader4
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @.str9) nounwind, !dbg !215 ; [debug line = 57:7]
  %tmp.24 = zext i5 %i.7 to i64, !dbg !215        ; [#uses=2 type=i64] [debug line = 57:7]
  %buf.addr.6 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.24, !dbg !215 ; [#uses=1 type=i8*] [debug line = 57:7]
  %buf.load.4 = load i8* %buf.addr.6, align 1, !dbg !215 ; [#uses=1 type=i8] [debug line = 57:7]
  %data_out.addr.1 = getelementptr [16 x i8]* %data_out, i64 0, i64 %tmp.24, !dbg !215 ; [#uses=1 type=i8*] [debug line = 57:7]
  store i8 %buf.load.4, i8* %data_out.addr.1, align 1, !dbg !215 ; [debug line = 57:7]
  %i.22 = add i5 %i.7, 1, !dbg !217               ; [#uses=1 type=i5] [debug line = 56:35]
  call void @llvm.dbg.value(metadata !{i5 %i.22}, i64 0, metadata !162), !dbg !217 ; [debug line = 56:35] [debug variable = i]
  br label %.preheader4, !dbg !217                ; [debug line = 56:35]

.preheader3:                                      ; preds = %24, %.preheader3.preheader
  %i.8 = phi i5 [ %i.14, %24 ], [ 0, %.preheader3.preheader ] ; [#uses=3 type=i5]
  %tmp.5 = icmp eq i5 %i.8, -16, !dbg !155        ; [#uses=1 type=i1] [debug line = 61:24]
  %23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.5, label %.preheader2.preheader, label %24, !dbg !155 ; [debug line = 61:24]

.preheader2.preheader:                            ; preds = %.preheader3
  br label %.preheader2, !dbg !218                ; [debug line = 64:24]

; <label>:24                                      ; preds = %.preheader3
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @.str10) nounwind, !dbg !220 ; [debug line = 62:7]
  %tmp. = zext i5 %i.8 to i64, !dbg !220          ; [#uses=2 type=i64] [debug line = 62:7]
  %data_in.addr.1 = getelementptr [16 x i8]* %data_in, i64 0, i64 %tmp., !dbg !220 ; [#uses=1 type=i8*] [debug line = 62:7]
  %data_in.load.1 = load i8* %data_in.addr.1, align 1, !dbg !220 ; [#uses=1 type=i8] [debug line = 62:7]
  %buf.addr.1 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp., !dbg !220 ; [#uses=1 type=i8*] [debug line = 62:7]
  store i8 %data_in.load.1, i8* %buf.addr.1, align 1, !dbg !220 ; [debug line = 62:7]
  %i.14 = add i5 %i.8, 1, !dbg !222               ; [#uses=1 type=i5] [debug line = 61:35]
  call void @llvm.dbg.value(metadata !{i5 %i.14}, i64 0, metadata !162), !dbg !222 ; [debug line = 61:35] [debug variable = i]
  br label %.preheader3, !dbg !222                ; [debug line = 61:35]

.preheader2:                                      ; preds = %26, %.preheader2.preheader
  %i.9 = phi i5 [ %i.17, %26 ], [ 0, %.preheader2.preheader ] ; [#uses=3 type=i5]
  %tmp.7 = icmp eq i5 %i.9, -16, !dbg !218        ; [#uses=1 type=i1] [debug line = 64:24]
  %25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.7, label %27, label %26, !dbg !218   ; [debug line = 64:24]

; <label>:26                                      ; preds = %.preheader2
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @.str11) nounwind, !dbg !223 ; [debug line = 65:7]
  %tmp.12 = zext i5 %i.9 to i64, !dbg !223        ; [#uses=2 type=i64] [debug line = 65:7]
  %buf.addr.3 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.12, !dbg !223 ; [#uses=1 type=i8*] [debug line = 65:7]
  %buf.load.1 = load i8* %buf.addr.3, align 1, !dbg !223 ; [#uses=1 type=i8] [debug line = 65:7]
  %lastbuf.addr = getelementptr inbounds [16 x i8]* @lastbuf, i64 0, i64 %tmp.12, !dbg !223 ; [#uses=1 type=i8*] [debug line = 65:7]
  store i8 %buf.load.1, i8* %lastbuf.addr, align 1, !dbg !223 ; [debug line = 65:7]
  %i.17 = add i5 %i.9, 1, !dbg !225               ; [#uses=1 type=i5] [debug line = 64:35]
  call void @llvm.dbg.value(metadata !{i5 %i.17}, i64 0, metadata !162), !dbg !225 ; [debug line = 64:35] [debug variable = i]
  br label %.preheader2, !dbg !225                ; [debug line = 64:35]

; <label>:27                                      ; preds = %.preheader2
  call fastcc void @aes_decrypt_ecb([16 x i8]* %buf) nounwind, !dbg !226 ; [debug line = 67:6]
  br label %28, !dbg !227                         ; [debug line = 69:24]

; <label>:28                                      ; preds = %30, %27
  %i. = phi i5 [ 0, %27 ], [ %i.20, %30 ]         ; [#uses=3 type=i5]
  %tmp.15 = icmp eq i5 %i., -16, !dbg !227        ; [#uses=1 type=i1] [debug line = 69:24]
  %29 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.15, label %.preheader1.preheader, label %30, !dbg !227 ; [debug line = 69:24]

.preheader1.preheader:                            ; preds = %28
  br label %.preheader1, !dbg !229                ; [debug line = 72:24]

; <label>:30                                      ; preds = %28
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @.str12) nounwind, !dbg !231 ; [debug line = 70:7]
  %tmp.18 = zext i5 %i. to i64, !dbg !231         ; [#uses=2 type=i64] [debug line = 70:7]
  %buf.addr.5 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.18, !dbg !231 ; [#uses=2 type=i8*] [debug line = 70:7]
  %buf.load.3 = load i8* %buf.addr.5, align 1, !dbg !231 ; [#uses=1 type=i8] [debug line = 70:7]
  %xorv.addr.2 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.18, !dbg !231 ; [#uses=1 type=i8*] [debug line = 70:7]
  %xorv.load.1 = load i8* %xorv.addr.2, align 1, !dbg !231 ; [#uses=1 type=i8] [debug line = 70:7]
  %tmp.19 = xor i8 %xorv.load.1, %buf.load.3, !dbg !231 ; [#uses=1 type=i8] [debug line = 70:7]
  store i8 %tmp.19, i8* %buf.addr.5, align 1, !dbg !231 ; [debug line = 70:7]
  %i.20 = add i5 %i., 1, !dbg !233                ; [#uses=1 type=i5] [debug line = 69:35]
  call void @llvm.dbg.value(metadata !{i5 %i.20}, i64 0, metadata !162), !dbg !233 ; [debug line = 69:35] [debug variable = i]
  br label %28, !dbg !233                         ; [debug line = 69:35]

.preheader1:                                      ; preds = %32, %.preheader1.preheader
  %i.10 = phi i5 [ %i.23, %32 ], [ 0, %.preheader1.preheader ] ; [#uses=3 type=i5]
  %tmp.22 = icmp eq i5 %i.10, -16, !dbg !229      ; [#uses=1 type=i1] [debug line = 72:24]
  %31 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.22, label %.preheader.preheader, label %32, !dbg !229 ; [debug line = 72:24]

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader, !dbg !234                 ; [debug line = 75:24]

; <label>:32                                      ; preds = %.preheader1
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @.str13) nounwind, !dbg !236 ; [debug line = 73:7]
  %tmp.25 = zext i5 %i.10 to i64, !dbg !236       ; [#uses=2 type=i64] [debug line = 73:7]
  %lastbuf.addr.1 = getelementptr inbounds [16 x i8]* @lastbuf, i64 0, i64 %tmp.25, !dbg !236 ; [#uses=1 type=i8*] [debug line = 73:7]
  %lastbuf.load = load i8* %lastbuf.addr.1, align 1, !dbg !236 ; [#uses=1 type=i8] [debug line = 73:7]
  %xorv.addr.4 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.25, !dbg !236 ; [#uses=1 type=i8*] [debug line = 73:7]
  store i8 %lastbuf.load, i8* %xorv.addr.4, align 1, !dbg !236 ; [debug line = 73:7]
  %i.23 = add i5 %i.10, 1, !dbg !238              ; [#uses=1 type=i5] [debug line = 72:35]
  call void @llvm.dbg.value(metadata !{i5 %i.23}, i64 0, metadata !162), !dbg !238 ; [debug line = 72:35] [debug variable = i]
  br label %.preheader1, !dbg !238                ; [debug line = 72:35]

.preheader:                                       ; preds = %34, %.preheader.preheader
  %i.11 = phi i5 [ %i.24, %34 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i5]
  %tmp.26 = icmp eq i5 %i.11, -16, !dbg !234      ; [#uses=1 type=i1] [debug line = 75:24]
  %33 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.26, label %.loopexit.loopexit, label %34, !dbg !234 ; [debug line = 75:24]

; <label>:34                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @.str14) nounwind, !dbg !239 ; [debug line = 76:7]
  %tmp.27 = zext i5 %i.11 to i64, !dbg !239       ; [#uses=2 type=i64] [debug line = 76:7]
  %buf.addr.7 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.27, !dbg !239 ; [#uses=1 type=i8*] [debug line = 76:7]
  %buf.load.5 = load i8* %buf.addr.7, align 1, !dbg !239 ; [#uses=1 type=i8] [debug line = 76:7]
  %data_out.addr.2 = getelementptr [16 x i8]* %data_out, i64 0, i64 %tmp.27, !dbg !239 ; [#uses=1 type=i8*] [debug line = 76:7]
  store i8 %buf.load.5, i8* %data_out.addr.2, align 1, !dbg !239 ; [debug line = 76:7]
  %i.24 = add i5 %i.11, 1, !dbg !241              ; [#uses=1 type=i5] [debug line = 75:35]
  call void @llvm.dbg.value(metadata !{i5 %i.24}, i64 0, metadata !162), !dbg !241 ; [debug line = 75:35] [debug variable = i]
  br label %.preheader, !dbg !241                 ; [debug line = 75:35]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit.loopexit17:                             ; preds = %.preheader4
  br label %.loopexit

.loopexit.loopexit18:                             ; preds = %.preheader.i
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit18, %.loopexit.loopexit17, %.loopexit.loopexit, %0
  ret void, !dbg !242                             ; [debug line = 87:1]
}

; [#uses=1]
define internal fastcc void @aes_mixColumns_inv([16 x i8]* nocapture %buf) {
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !243), !dbg !248 ; [debug line = 270:34] [debug variable = buf]
  br label %1, !dbg !249                          ; [debug line = 274:10]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ 0, %0 ], [ %i.27, %3 ]            ; [#uses=4 type=i5]
  %tmp = icmp sgt i5 %i, -1, !dbg !249            ; [#uses=1 type=i1] [debug line = 274:10]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %tmp, label %3, label %4, !dbg !249       ; [debug line = 274:10]

; <label>:3                                       ; preds = %1
  %tmp. = zext i5 %i to i64, !dbg !252            ; [#uses=1 type=i64] [debug line = 276:9]
  %buf.addr = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp., !dbg !252 ; [#uses=2 type=i8*] [debug line = 276:9]
  %a = load i8* %buf.addr, align 1, !dbg !252     ; [#uses=4 type=i8] [debug line = 276:9]
  call void @llvm.dbg.value(metadata !{i8 %a}, i64 0, metadata !254), !dbg !252 ; [debug line = 276:9] [debug variable = a]
  %tmp.28.cast = trunc i5 %i to i4, !dbg !255     ; [#uses=3 type=i4] [debug line = 277:9]
  %tmp.28 = or i4 %tmp.28.cast, 1, !dbg !255      ; [#uses=1 type=i4] [debug line = 277:9]
  %tmp.29 = zext i4 %tmp.28 to i64, !dbg !255     ; [#uses=1 type=i64] [debug line = 277:9]
  %buf.addr.8 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp.29, !dbg !255 ; [#uses=2 type=i8*] [debug line = 277:9]
  %b = load i8* %buf.addr.8, align 1, !dbg !255   ; [#uses=4 type=i8] [debug line = 277:9]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !256), !dbg !255 ; [debug line = 277:9] [debug variable = b]
  %tmp.30 = or i4 %tmp.28.cast, 2, !dbg !257      ; [#uses=1 type=i4] [debug line = 278:9]
  %tmp.31 = zext i4 %tmp.30 to i64, !dbg !257     ; [#uses=1 type=i64] [debug line = 278:9]
  %buf.addr.9 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp.31, !dbg !257 ; [#uses=2 type=i8*] [debug line = 278:9]
  %c = load i8* %buf.addr.9, align 1, !dbg !257   ; [#uses=5 type=i8] [debug line = 278:9]
  call void @llvm.dbg.value(metadata !{i8 %c}, i64 0, metadata !258), !dbg !257 ; [debug line = 278:9] [debug variable = c]
  %tmp.32 = or i4 %tmp.28.cast, 3, !dbg !259      ; [#uses=1 type=i4] [debug line = 279:9]
  %tmp.33 = zext i4 %tmp.32 to i64, !dbg !259     ; [#uses=1 type=i64] [debug line = 279:9]
  %buf.addr.10 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp.33, !dbg !259 ; [#uses=2 type=i8*] [debug line = 279:9]
  %d = load i8* %buf.addr.10, align 1, !dbg !259  ; [#uses=5 type=i8] [debug line = 279:9]
  call void @llvm.dbg.value(metadata !{i8 %d}, i64 0, metadata !260), !dbg !259 ; [debug line = 279:9] [debug variable = d]
  %x.assign.5 = xor i8 %b, %a, !dbg !261          ; [#uses=3 type=i8] [debug line = 280:9]
  %tmp1 = xor i8 %d, %x.assign.5, !dbg !261       ; [#uses=1 type=i8] [debug line = 280:9]
  %e = xor i8 %tmp1, %c, !dbg !261                ; [#uses=4 type=i8] [debug line = 280:9]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !262), !dbg !261 ; [debug line = 280:9] [debug variable = e]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !263), !dbg !268 ; [debug line = 187:33@281:13] [debug variable = x]
  %y.1 = shl i8 %e, 1, !dbg !269                  ; [#uses=2 type=i8] [debug line = 189:34@281:13]
  call void @llvm.dbg.value(metadata !{i8 %y.1}, i64 0, metadata !271), !dbg !269 ; [debug line = 189:34@281:13] [debug variable = y]
  %tmp.i = icmp slt i8 %e, 0, !dbg !272           ; [#uses=1 type=i1] [debug line = 190:5@281:13]
  %tmp.1.i = xor i8 %y.1, 27, !dbg !272           ; [#uses=1 type=i8] [debug line = 190:5@281:13]
  %y.19 = select i1 %tmp.i, i8 %tmp.1.i, i8 %y.1, !dbg !272 ; [#uses=2 type=i8] [debug line = 190:5@281:13]
  call void @llvm.dbg.value(metadata !{i8 %y.19}, i64 0, metadata !271), !dbg !272 ; [debug line = 190:5@281:13] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %y.19}, i64 0, metadata !273), !dbg !267 ; [debug line = 281:13] [debug variable = z]
  %tmp2 = xor i8 %a, %y.19, !dbg !274             ; [#uses=1 type=i8] [debug line = 282:26]
  %x.assign.1 = xor i8 %tmp2, %c, !dbg !274       ; [#uses=2 type=i8] [debug line = 282:26]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.1}, i64 0, metadata !275), !dbg !276 ; [debug line = 187:33@282:26] [debug variable = x]
  %y.3 = shl i8 %x.assign.1, 1, !dbg !277         ; [#uses=2 type=i8] [debug line = 189:34@282:26]
  call void @llvm.dbg.value(metadata !{i8 %y.3}, i64 0, metadata !278), !dbg !277 ; [debug line = 189:34@282:26] [debug variable = y]
  %tmp.i9 = icmp slt i8 %x.assign.1, 0, !dbg !279 ; [#uses=1 type=i1] [debug line = 190:5@282:26]
  %tmp.1.i1 = xor i8 %y.3, 27, !dbg !279          ; [#uses=1 type=i8] [debug line = 190:5@282:26]
  %y.20 = select i1 %tmp.i9, i8 %tmp.1.i1, i8 %y.3, !dbg !279 ; [#uses=2 type=i8] [debug line = 190:5@282:26]
  call void @llvm.dbg.value(metadata !{i8 %y.20}, i64 0, metadata !278), !dbg !279 ; [debug line = 190:5@282:26] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %y.20}, i64 0, metadata !275), !dbg !276 ; [debug line = 187:33@282:26] [debug variable = x]
  %y.5 = shl i8 %y.20, 1, !dbg !277               ; [#uses=2 type=i8] [debug line = 189:34@282:26]
  call void @llvm.dbg.value(metadata !{i8 %y.5}, i64 0, metadata !278), !dbg !277 ; [debug line = 189:34@282:26] [debug variable = y]
  %tmp.i1 = icmp slt i8 %y.20, 0, !dbg !279       ; [#uses=1 type=i1] [debug line = 190:5@282:26]
  %tmp.1.i2 = xor i8 %y.5, 27, !dbg !279          ; [#uses=1 type=i8] [debug line = 190:5@282:26]
  %y.6 = select i1 %tmp.i1, i8 %tmp.1.i2, i8 %y.5, !dbg !279 ; [#uses=1 type=i8] [debug line = 190:5@282:26]
  call void @llvm.dbg.value(metadata !{i8 %y.6}, i64 0, metadata !278), !dbg !279 ; [debug line = 190:5@282:26] [debug variable = y]
  %x = xor i8 %y.6, %e, !dbg !274                 ; [#uses=2 type=i8] [debug line = 282:26]
  call void @llvm.dbg.value(metadata !{i8 %x}, i64 0, metadata !280), !dbg !274 ; [debug line = 282:26] [debug variable = x]
  %tmp3 = xor i8 %b, %y.19, !dbg !281             ; [#uses=1 type=i8] [debug line = 283:26]
  %x.assign.3 = xor i8 %tmp3, %d, !dbg !281       ; [#uses=2 type=i8] [debug line = 283:26]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.3}, i64 0, metadata !282), !dbg !283 ; [debug line = 187:33@283:26] [debug variable = x]
  %y.7 = shl i8 %x.assign.3, 1, !dbg !284         ; [#uses=2 type=i8] [debug line = 189:34@283:26]
  call void @llvm.dbg.value(metadata !{i8 %y.7}, i64 0, metadata !285), !dbg !284 ; [debug line = 189:34@283:26] [debug variable = y]
  %tmp.i2 = icmp slt i8 %x.assign.3, 0, !dbg !286 ; [#uses=1 type=i1] [debug line = 190:5@283:26]
  %tmp.1.i3 = xor i8 %y.7, 27, !dbg !286          ; [#uses=1 type=i8] [debug line = 190:5@283:26]
  %y.21 = select i1 %tmp.i2, i8 %tmp.1.i3, i8 %y.7, !dbg !286 ; [#uses=2 type=i8] [debug line = 190:5@283:26]
  call void @llvm.dbg.value(metadata !{i8 %y.21}, i64 0, metadata !285), !dbg !286 ; [debug line = 190:5@283:26] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %y.21}, i64 0, metadata !282), !dbg !283 ; [debug line = 187:33@283:26] [debug variable = x]
  %y.9 = shl i8 %y.21, 1, !dbg !284               ; [#uses=2 type=i8] [debug line = 189:34@283:26]
  call void @llvm.dbg.value(metadata !{i8 %y.9}, i64 0, metadata !285), !dbg !284 ; [debug line = 189:34@283:26] [debug variable = y]
  %tmp.i3 = icmp slt i8 %y.21, 0, !dbg !286       ; [#uses=1 type=i1] [debug line = 190:5@283:26]
  %tmp.1.i4 = xor i8 %y.9, 27, !dbg !286          ; [#uses=1 type=i8] [debug line = 190:5@283:26]
  %y.10 = select i1 %tmp.i3, i8 %tmp.1.i4, i8 %y.9, !dbg !286 ; [#uses=1 type=i8] [debug line = 190:5@283:26]
  call void @llvm.dbg.value(metadata !{i8 %y.10}, i64 0, metadata !285), !dbg !286 ; [debug line = 190:5@283:26] [debug variable = y]
  %y = xor i8 %y.10, %e, !dbg !281                ; [#uses=2 type=i8] [debug line = 283:26]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !287), !dbg !281 ; [debug line = 283:26] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.5}, i64 0, metadata !288), !dbg !290 ; [debug line = 187:33@284:23] [debug variable = x]
  %y.11 = shl i8 %x.assign.5, 1, !dbg !291        ; [#uses=2 type=i8] [debug line = 189:34@284:23]
  call void @llvm.dbg.value(metadata !{i8 %y.11}, i64 0, metadata !292), !dbg !291 ; [debug line = 189:34@284:23] [debug variable = y]
  %tmp.i4 = icmp slt i8 %x.assign.5, 0, !dbg !293 ; [#uses=1 type=i1] [debug line = 190:5@284:23]
  %tmp.1.i5 = xor i8 %y.11, 27, !dbg !293         ; [#uses=1 type=i8] [debug line = 190:5@284:23]
  %y.12 = select i1 %tmp.i4, i8 %tmp.1.i5, i8 %y.11, !dbg !293 ; [#uses=1 type=i8] [debug line = 190:5@284:23]
  call void @llvm.dbg.value(metadata !{i8 %y.12}, i64 0, metadata !292), !dbg !293 ; [debug line = 190:5@284:23] [debug variable = y]
  %tmp4 = xor i8 %y.12, %x, !dbg !289             ; [#uses=1 type=i8] [debug line = 284:23]
  %tmp.34 = xor i8 %tmp4, %a, !dbg !289           ; [#uses=1 type=i8] [debug line = 284:23]
  store i8 %tmp.34, i8* %buf.addr, align 1, !dbg !289 ; [debug line = 284:23]
  %x.assign.6 = xor i8 %c, %b, !dbg !294          ; [#uses=2 type=i8] [debug line = 285:27]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.6}, i64 0, metadata !295), !dbg !296 ; [debug line = 187:33@285:27] [debug variable = x]
  %y.13 = shl i8 %x.assign.6, 1, !dbg !297        ; [#uses=2 type=i8] [debug line = 189:34@285:27]
  call void @llvm.dbg.value(metadata !{i8 %y.13}, i64 0, metadata !298), !dbg !297 ; [debug line = 189:34@285:27] [debug variable = y]
  %tmp.i5 = icmp slt i8 %x.assign.6, 0, !dbg !299 ; [#uses=1 type=i1] [debug line = 190:5@285:27]
  %tmp.1.i6 = xor i8 %y.13, 27, !dbg !299         ; [#uses=1 type=i8] [debug line = 190:5@285:27]
  %y.14 = select i1 %tmp.i5, i8 %tmp.1.i6, i8 %y.13, !dbg !299 ; [#uses=1 type=i8] [debug line = 190:5@285:27]
  call void @llvm.dbg.value(metadata !{i8 %y.14}, i64 0, metadata !298), !dbg !299 ; [debug line = 190:5@285:27] [debug variable = y]
  %tmp5 = xor i8 %y.14, %y, !dbg !294             ; [#uses=1 type=i8] [debug line = 285:27]
  %tmp.35 = xor i8 %tmp5, %b, !dbg !294           ; [#uses=1 type=i8] [debug line = 285:27]
  store i8 %tmp.35, i8* %buf.addr.8, align 1, !dbg !294 ; [debug line = 285:27]
  %x.assign.7 = xor i8 %d, %c, !dbg !300          ; [#uses=2 type=i8] [debug line = 286:27]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.7}, i64 0, metadata !301), !dbg !302 ; [debug line = 187:33@286:27] [debug variable = x]
  %y.15 = shl i8 %x.assign.7, 1, !dbg !303        ; [#uses=2 type=i8] [debug line = 189:34@286:27]
  call void @llvm.dbg.value(metadata !{i8 %y.15}, i64 0, metadata !304), !dbg !303 ; [debug line = 189:34@286:27] [debug variable = y]
  %tmp.i6 = icmp slt i8 %x.assign.7, 0, !dbg !305 ; [#uses=1 type=i1] [debug line = 190:5@286:27]
  %tmp.1.i7 = xor i8 %y.15, 27, !dbg !305         ; [#uses=1 type=i8] [debug line = 190:5@286:27]
  %y.16 = select i1 %tmp.i6, i8 %tmp.1.i7, i8 %y.15, !dbg !305 ; [#uses=1 type=i8] [debug line = 190:5@286:27]
  call void @llvm.dbg.value(metadata !{i8 %y.16}, i64 0, metadata !304), !dbg !305 ; [debug line = 190:5@286:27] [debug variable = y]
  %tmp6 = xor i8 %y.16, %x, !dbg !300             ; [#uses=1 type=i8] [debug line = 286:27]
  %tmp.36 = xor i8 %tmp6, %c, !dbg !300           ; [#uses=1 type=i8] [debug line = 286:27]
  store i8 %tmp.36, i8* %buf.addr.9, align 1, !dbg !300 ; [debug line = 286:27]
  %x.assign.8 = xor i8 %d, %a, !dbg !306          ; [#uses=2 type=i8] [debug line = 287:27]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.8}, i64 0, metadata !307), !dbg !308 ; [debug line = 187:33@287:27] [debug variable = x]
  %y.17 = shl i8 %x.assign.8, 1, !dbg !309        ; [#uses=2 type=i8] [debug line = 189:34@287:27]
  call void @llvm.dbg.value(metadata !{i8 %y.17}, i64 0, metadata !310), !dbg !309 ; [debug line = 189:34@287:27] [debug variable = y]
  %tmp.i7 = icmp slt i8 %x.assign.8, 0, !dbg !311 ; [#uses=1 type=i1] [debug line = 190:5@287:27]
  %tmp.1.i8 = xor i8 %y.17, 27, !dbg !311         ; [#uses=1 type=i8] [debug line = 190:5@287:27]
  %y.18 = select i1 %tmp.i7, i8 %tmp.1.i8, i8 %y.17, !dbg !311 ; [#uses=1 type=i8] [debug line = 190:5@287:27]
  call void @llvm.dbg.value(metadata !{i8 %y.18}, i64 0, metadata !310), !dbg !311 ; [debug line = 190:5@287:27] [debug variable = y]
  %tmp7 = xor i8 %y.18, %y, !dbg !306             ; [#uses=1 type=i8] [debug line = 287:27]
  %tmp.37 = xor i8 %tmp7, %d, !dbg !306           ; [#uses=1 type=i8] [debug line = 287:27]
  store i8 %tmp.37, i8* %buf.addr.10, align 1, !dbg !306 ; [debug line = 287:27]
  %i.27 = add i5 %i, 4, !dbg !312                 ; [#uses=1 type=i5] [debug line = 274:25]
  call void @llvm.dbg.value(metadata !{i5 %i.27}, i64 0, metadata !313), !dbg !312 ; [debug line = 274:25] [debug variable = i]
  br label %1, !dbg !312                          ; [debug line = 274:25]

; <label>:4                                       ; preds = %1
  ret void, !dbg !314                             ; [debug line = 289:1]
}

; [#uses=3]
define internal fastcc i8 @aes_expandEncKey([32 x i8]* %k, i8 %rc.read) {
  %k.addr = getelementptr [32 x i8]* %k, i64 0, i64 0 ; [#uses=2 type=i8*]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %k}, i64 0, metadata !315), !dbg !320 ; [debug line = 292:39] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i8 %rc.read}, i64 0, metadata !321), !dbg !322 ; [debug line = 292:51] [debug variable = rc]
  %k.addr.1 = getelementptr [32 x i8]* %k, i64 0, i64 29, !dbg !323 ; [#uses=1 type=i8*] [debug line = 296:5]
  %k.load = load i8* %k.addr.1, align 1, !dbg !323 ; [#uses=1 type=i8] [debug line = 296:5]
  %tmp = zext i8 %k.load to i64, !dbg !323        ; [#uses=1 type=i64] [debug line = 296:5]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp, !dbg !323 ; [#uses=1 type=i8*] [debug line = 296:5]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !323 ; [#uses=1 type=i8] [debug line = 296:5]
  %k.load.1 = load i8* %k.addr, align 1, !dbg !323 ; [#uses=1 type=i8] [debug line = 296:5]
  %tmp1 = xor i8 %k.load.1, %rc.read, !dbg !323   ; [#uses=1 type=i8] [debug line = 296:5]
  %tmp. = xor i8 %tmp1, %sbox.load, !dbg !323     ; [#uses=1 type=i8] [debug line = 296:5]
  store i8 %tmp., i8* %k.addr, align 1, !dbg !323 ; [debug line = 296:5]
  %k.addr.2 = getelementptr [32 x i8]* %k, i64 0, i64 30, !dbg !325 ; [#uses=1 type=i8*] [debug line = 297:5]
  %k.load.2 = load i8* %k.addr.2, align 1, !dbg !325 ; [#uses=1 type=i8] [debug line = 297:5]
  %tmp.38 = zext i8 %k.load.2 to i64, !dbg !325   ; [#uses=1 type=i64] [debug line = 297:5]
  %sbox.addr.1 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.38, !dbg !325 ; [#uses=1 type=i8*] [debug line = 297:5]
  %sbox.load.1 = load i8* %sbox.addr.1, align 1, !dbg !325 ; [#uses=1 type=i8] [debug line = 297:5]
  %k.addr.3 = getelementptr [32 x i8]* %k, i64 0, i64 1, !dbg !325 ; [#uses=2 type=i8*] [debug line = 297:5]
  %k.load.3 = load i8* %k.addr.3, align 1, !dbg !325 ; [#uses=1 type=i8] [debug line = 297:5]
  %tmp.39 = xor i8 %k.load.3, %sbox.load.1, !dbg !325 ; [#uses=1 type=i8] [debug line = 297:5]
  store i8 %tmp.39, i8* %k.addr.3, align 1, !dbg !325 ; [debug line = 297:5]
  %k.addr.4 = getelementptr [32 x i8]* %k, i64 0, i64 31, !dbg !326 ; [#uses=1 type=i8*] [debug line = 298:5]
  %k.load.4 = load i8* %k.addr.4, align 1, !dbg !326 ; [#uses=1 type=i8] [debug line = 298:5]
  %tmp.40 = zext i8 %k.load.4 to i64, !dbg !326   ; [#uses=1 type=i64] [debug line = 298:5]
  %sbox.addr.2 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.40, !dbg !326 ; [#uses=1 type=i8*] [debug line = 298:5]
  %sbox.load.2 = load i8* %sbox.addr.2, align 1, !dbg !326 ; [#uses=1 type=i8] [debug line = 298:5]
  %k.addr.5 = getelementptr [32 x i8]* %k, i64 0, i64 2, !dbg !326 ; [#uses=2 type=i8*] [debug line = 298:5]
  %k.load.5 = load i8* %k.addr.5, align 1, !dbg !326 ; [#uses=1 type=i8] [debug line = 298:5]
  %tmp.41 = xor i8 %k.load.5, %sbox.load.2, !dbg !326 ; [#uses=1 type=i8] [debug line = 298:5]
  store i8 %tmp.41, i8* %k.addr.5, align 1, !dbg !326 ; [debug line = 298:5]
  %k.addr.6 = getelementptr [32 x i8]* %k, i64 0, i64 28, !dbg !327 ; [#uses=1 type=i8*] [debug line = 299:5]
  %k.load.6 = load i8* %k.addr.6, align 1, !dbg !327 ; [#uses=1 type=i8] [debug line = 299:5]
  %tmp.42 = zext i8 %k.load.6 to i64, !dbg !327   ; [#uses=1 type=i64] [debug line = 299:5]
  %sbox.addr.3 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.42, !dbg !327 ; [#uses=1 type=i8*] [debug line = 299:5]
  %sbox.load.3 = load i8* %sbox.addr.3, align 1, !dbg !327 ; [#uses=1 type=i8] [debug line = 299:5]
  %k.addr.7 = getelementptr [32 x i8]* %k, i64 0, i64 3, !dbg !327 ; [#uses=2 type=i8*] [debug line = 299:5]
  %k.load.7 = load i8* %k.addr.7, align 1, !dbg !327 ; [#uses=1 type=i8] [debug line = 299:5]
  %tmp.43 = xor i8 %k.load.7, %sbox.load.3, !dbg !327 ; [#uses=1 type=i8] [debug line = 299:5]
  store i8 %tmp.43, i8* %k.addr.7, align 1, !dbg !327 ; [debug line = 299:5]
  call void @llvm.dbg.value(metadata !{i8 %rc.read}, i64 0, metadata !328), !dbg !330 ; [debug line = 187:33@300:11] [debug variable = x]
  %y = shl i8 %rc.read, 1, !dbg !331              ; [#uses=2 type=i8] [debug line = 189:34@300:11]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !332), !dbg !331 ; [debug line = 189:34@300:11] [debug variable = y]
  %tmp.i = icmp slt i8 %rc.read, 0, !dbg !333     ; [#uses=1 type=i1] [debug line = 190:5@300:11]
  %tmp.1.i = xor i8 %y, 27, !dbg !333             ; [#uses=1 type=i8] [debug line = 190:5@300:11]
  %y.22 = select i1 %tmp.i, i8 %tmp.1.i, i8 %y, !dbg !333 ; [#uses=1 type=i8] [debug line = 190:5@300:11]
  call void @llvm.dbg.value(metadata !{i8 %y.22}, i64 0, metadata !332), !dbg !333 ; [debug line = 190:5@300:11] [debug variable = y]
  br label %1, !dbg !334                          ; [debug line = 302:9]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ 4, %0 ], [ %i.28, %3 ]            ; [#uses=4 type=i5]
  %tmp.44 = icmp sgt i5 %i, -1, !dbg !334         ; [#uses=1 type=i1] [debug line = 302:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp.44, label %3, label %4, !dbg !334    ; [debug line = 302:9]

; <label>:3                                       ; preds = %1
  %tmp.60.cast = trunc i5 %i to i4, !dbg !336     ; [#uses=7 type=i4] [debug line = 302:32]
  %tmp.45 = add i4 %tmp.60.cast, -4, !dbg !336    ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp.46 = zext i4 %tmp.45 to i64, !dbg !336     ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.8 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.46, !dbg !336 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k.load.8 = load i8* %k.addr.8, align 1, !dbg !336 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp.47 = zext i5 %i to i64, !dbg !336          ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.9 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.47, !dbg !336 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k.load.9 = load i8* %k.addr.9, align 1, !dbg !336 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp.48 = xor i8 %k.load.9, %k.load.8, !dbg !336 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp.48, i8* %k.addr.9, align 1, !dbg !336 ; [debug line = 302:32]
  %tmp.49 = add i4 %tmp.60.cast, -3, !dbg !336    ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp.50 = zext i4 %tmp.49 to i64, !dbg !336     ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.10 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.50, !dbg !336 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k.load.10 = load i8* %k.addr.10, align 1, !dbg !336 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp.51 = or i4 %tmp.60.cast, 1, !dbg !336      ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp.52 = zext i4 %tmp.51 to i64, !dbg !336     ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.11 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.52, !dbg !336 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k.load.11 = load i8* %k.addr.11, align 1, !dbg !336 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp.53 = xor i8 %k.load.11, %k.load.10, !dbg !336 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp.53, i8* %k.addr.11, align 1, !dbg !336 ; [debug line = 302:32]
  %tmp.54 = add i4 %tmp.60.cast, -2, !dbg !336    ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp.55 = zext i4 %tmp.54 to i64, !dbg !336     ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.12 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.55, !dbg !336 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k.load.12 = load i8* %k.addr.12, align 1, !dbg !336 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp.56 = or i4 %tmp.60.cast, 2, !dbg !336      ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp.57 = zext i4 %tmp.56 to i64, !dbg !336     ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.13 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.57, !dbg !336 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k.load.13 = load i8* %k.addr.13, align 1, !dbg !336 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp.58 = xor i8 %k.load.13, %k.load.12, !dbg !336 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp.58, i8* %k.addr.13, align 1, !dbg !336 ; [debug line = 302:32]
  %tmp.59 = add i4 %tmp.60.cast, -1, !dbg !336    ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp.60 = zext i4 %tmp.59 to i64, !dbg !336     ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.14 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.60, !dbg !336 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k.load.14 = load i8* %k.addr.14, align 1, !dbg !336 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp.61 = or i4 %tmp.60.cast, 3, !dbg !336      ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp.62 = zext i4 %tmp.61 to i64, !dbg !336     ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.15 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.62, !dbg !336 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k.load.15 = load i8* %k.addr.15, align 1, !dbg !336 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp.63 = xor i8 %k.load.15, %k.load.14, !dbg !336 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp.63, i8* %k.addr.15, align 1, !dbg !336 ; [debug line = 302:32]
  %i.28 = add i5 %i, 4, !dbg !337                 ; [#uses=1 type=i5] [debug line = 302:24]
  call void @llvm.dbg.value(metadata !{i5 %i.28}, i64 0, metadata !338), !dbg !337 ; [debug line = 302:24] [debug variable = i]
  br label %1, !dbg !337                          ; [debug line = 302:24]

; <label>:4                                       ; preds = %1
  %k.addr.16 = getelementptr [32 x i8]* %k, i64 0, i64 12, !dbg !339 ; [#uses=1 type=i8*] [debug line = 304:5]
  %k.load.16 = load i8* %k.addr.16, align 1, !dbg !339 ; [#uses=1 type=i8] [debug line = 304:5]
  %tmp.64 = zext i8 %k.load.16 to i64, !dbg !339  ; [#uses=1 type=i64] [debug line = 304:5]
  %sbox.addr.4 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.64, !dbg !339 ; [#uses=1 type=i8*] [debug line = 304:5]
  %sbox.load.4 = load i8* %sbox.addr.4, align 1, !dbg !339 ; [#uses=1 type=i8] [debug line = 304:5]
  %k.addr.17 = getelementptr [32 x i8]* %k, i64 0, i64 16, !dbg !339 ; [#uses=2 type=i8*] [debug line = 304:5]
  %k.load.17 = load i8* %k.addr.17, align 1, !dbg !339 ; [#uses=1 type=i8] [debug line = 304:5]
  %tmp.65 = xor i8 %k.load.17, %sbox.load.4, !dbg !339 ; [#uses=1 type=i8] [debug line = 304:5]
  store i8 %tmp.65, i8* %k.addr.17, align 1, !dbg !339 ; [debug line = 304:5]
  %k.addr.18 = getelementptr [32 x i8]* %k, i64 0, i64 13, !dbg !340 ; [#uses=1 type=i8*] [debug line = 305:5]
  %k.load.18 = load i8* %k.addr.18, align 1, !dbg !340 ; [#uses=1 type=i8] [debug line = 305:5]
  %tmp.66 = zext i8 %k.load.18 to i64, !dbg !340  ; [#uses=1 type=i64] [debug line = 305:5]
  %sbox.addr.5 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.66, !dbg !340 ; [#uses=1 type=i8*] [debug line = 305:5]
  %sbox.load.5 = load i8* %sbox.addr.5, align 1, !dbg !340 ; [#uses=1 type=i8] [debug line = 305:5]
  %k.addr.19 = getelementptr [32 x i8]* %k, i64 0, i64 17, !dbg !340 ; [#uses=2 type=i8*] [debug line = 305:5]
  %k.load.19 = load i8* %k.addr.19, align 1, !dbg !340 ; [#uses=1 type=i8] [debug line = 305:5]
  %tmp.67 = xor i8 %k.load.19, %sbox.load.5, !dbg !340 ; [#uses=1 type=i8] [debug line = 305:5]
  store i8 %tmp.67, i8* %k.addr.19, align 1, !dbg !340 ; [debug line = 305:5]
  %k.addr.20 = getelementptr [32 x i8]* %k, i64 0, i64 14, !dbg !341 ; [#uses=1 type=i8*] [debug line = 306:5]
  %k.load.20 = load i8* %k.addr.20, align 1, !dbg !341 ; [#uses=1 type=i8] [debug line = 306:5]
  %tmp.68 = zext i8 %k.load.20 to i64, !dbg !341  ; [#uses=1 type=i64] [debug line = 306:5]
  %sbox.addr.6 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.68, !dbg !341 ; [#uses=1 type=i8*] [debug line = 306:5]
  %sbox.load.6 = load i8* %sbox.addr.6, align 1, !dbg !341 ; [#uses=1 type=i8] [debug line = 306:5]
  %k.addr.21 = getelementptr [32 x i8]* %k, i64 0, i64 18, !dbg !341 ; [#uses=2 type=i8*] [debug line = 306:5]
  %k.load.21 = load i8* %k.addr.21, align 1, !dbg !341 ; [#uses=1 type=i8] [debug line = 306:5]
  %tmp.69 = xor i8 %k.load.21, %sbox.load.6, !dbg !341 ; [#uses=1 type=i8] [debug line = 306:5]
  store i8 %tmp.69, i8* %k.addr.21, align 1, !dbg !341 ; [debug line = 306:5]
  %k.addr.22 = getelementptr [32 x i8]* %k, i64 0, i64 15, !dbg !342 ; [#uses=1 type=i8*] [debug line = 307:5]
  %k.load.22 = load i8* %k.addr.22, align 1, !dbg !342 ; [#uses=1 type=i8] [debug line = 307:5]
  %tmp.70 = zext i8 %k.load.22 to i64, !dbg !342  ; [#uses=1 type=i64] [debug line = 307:5]
  %sbox.addr.7 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.70, !dbg !342 ; [#uses=1 type=i8*] [debug line = 307:5]
  %sbox.load.7 = load i8* %sbox.addr.7, align 1, !dbg !342 ; [#uses=1 type=i8] [debug line = 307:5]
  %k.addr.23 = getelementptr [32 x i8]* %k, i64 0, i64 19, !dbg !342 ; [#uses=2 type=i8*] [debug line = 307:5]
  %k.load.23 = load i8* %k.addr.23, align 1, !dbg !342 ; [#uses=1 type=i8] [debug line = 307:5]
  %tmp.71 = xor i8 %k.load.23, %sbox.load.7, !dbg !342 ; [#uses=1 type=i8] [debug line = 307:5]
  store i8 %tmp.71, i8* %k.addr.23, align 1, !dbg !342 ; [debug line = 307:5]
  br label %5, !dbg !343                          ; [debug line = 309:9]

; <label>:5                                       ; preds = %7, %4
  %i.1 = phi i6 [ 20, %4 ], [ %i.29, %7 ]         ; [#uses=4 type=i6]
  %tmp.72 = icmp sgt i6 %i.1, -1, !dbg !343       ; [#uses=1 type=i1] [debug line = 309:9]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp.72, label %7, label %8, !dbg !343    ; [debug line = 309:9]

; <label>:7                                       ; preds = %5
  %tmp.89.cast = trunc i6 %i.1 to i5, !dbg !345   ; [#uses=7 type=i5] [debug line = 309:33]
  %tmp.73 = add i5 %tmp.89.cast, -4, !dbg !345    ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp.74 = zext i5 %tmp.73 to i64, !dbg !345     ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.24 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.74, !dbg !345 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k.load.24 = load i8* %k.addr.24, align 1, !dbg !345 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp.75 = zext i6 %i.1 to i64, !dbg !345        ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.25 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.75, !dbg !345 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k.load.25 = load i8* %k.addr.25, align 1, !dbg !345 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp.76 = xor i8 %k.load.25, %k.load.24, !dbg !345 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp.76, i8* %k.addr.25, align 1, !dbg !345 ; [debug line = 309:33]
  %tmp.77 = add i5 %tmp.89.cast, -3, !dbg !345    ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp.78 = zext i5 %tmp.77 to i64, !dbg !345     ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.26 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.78, !dbg !345 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k.load.26 = load i8* %k.addr.26, align 1, !dbg !345 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp.79 = or i5 %tmp.89.cast, 1, !dbg !345      ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp.80 = zext i5 %tmp.79 to i64, !dbg !345     ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.27 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.80, !dbg !345 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k.load.27 = load i8* %k.addr.27, align 1, !dbg !345 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp.81 = xor i8 %k.load.27, %k.load.26, !dbg !345 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp.81, i8* %k.addr.27, align 1, !dbg !345 ; [debug line = 309:33]
  %tmp.82 = add i5 %tmp.89.cast, -2, !dbg !345    ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp.83 = zext i5 %tmp.82 to i64, !dbg !345     ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.28 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.83, !dbg !345 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k.load.28 = load i8* %k.addr.28, align 1, !dbg !345 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp.84 = or i5 %tmp.89.cast, 2, !dbg !345      ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp.85 = zext i5 %tmp.84 to i64, !dbg !345     ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.29 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.85, !dbg !345 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k.load.29 = load i8* %k.addr.29, align 1, !dbg !345 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp.86 = xor i8 %k.load.29, %k.load.28, !dbg !345 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp.86, i8* %k.addr.29, align 1, !dbg !345 ; [debug line = 309:33]
  %tmp.87 = add i5 %tmp.89.cast, -1, !dbg !345    ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp.88 = zext i5 %tmp.87 to i64, !dbg !345     ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.30 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.88, !dbg !345 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k.load.30 = load i8* %k.addr.30, align 1, !dbg !345 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp.89 = or i5 %tmp.89.cast, 3, !dbg !345      ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp.90 = zext i5 %tmp.89 to i64, !dbg !345     ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.31 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.90, !dbg !345 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k.load.31 = load i8* %k.addr.31, align 1, !dbg !345 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp.91 = xor i8 %k.load.31, %k.load.30, !dbg !345 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp.91, i8* %k.addr.31, align 1, !dbg !345 ; [debug line = 309:33]
  %i.29 = add i6 %i.1, 4, !dbg !346               ; [#uses=1 type=i6] [debug line = 309:25]
  call void @llvm.dbg.value(metadata !{i6 %i.29}, i64 0, metadata !338), !dbg !346 ; [debug line = 309:25] [debug variable = i]
  br label %5, !dbg !346                          ; [debug line = 309:25]

; <label>:8                                       ; preds = %5
  ret i8 %y.22, !dbg !347                         ; [debug line = 312:1]
}

; [#uses=1]
define internal fastcc i8 @aes_expandDecKey(i8 %rc.read) {
  call void @llvm.dbg.value(metadata !{i8 %rc.read}, i64 0, metadata !348), !dbg !350 ; [debug line = 315:44] [debug variable = rc]
  br label %1, !dbg !351                          ; [debug line = 319:9]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ -4, %0 ], [ %i.30, %3 ]           ; [#uses=10 type=i5]
  %tmp = icmp ugt i5 %i, -16, !dbg !351           ; [#uses=1 type=i1] [debug line = 319:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp, label %3, label %4, !dbg !351       ; [debug line = 319:9]

; <label>:3                                       ; preds = %1
  %tmp. = add i5 %i, -4, !dbg !354                ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp.92 = zext i5 %tmp. to i64, !dbg !354       ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx.key.addr = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.92, !dbg !354 ; [#uses=1 type=i8*] [debug line = 319:33]
  %ctx.key.load = load i8* %ctx.key.addr, align 4, !dbg !354 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp.93 = zext i5 %i to i64, !dbg !354          ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx.key.addr.1 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.93, !dbg !354 ; [#uses=2 type=i8*] [debug line = 319:33]
  %ctx.key.load.1 = load i8* %ctx.key.addr.1, align 4, !dbg !354 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp.94 = xor i8 %ctx.key.load.1, %ctx.key.load, !dbg !354 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp.94, i8* %ctx.key.addr.1, align 4, !dbg !354 ; [debug line = 319:33]
  %tmp.95 = add i5 %i, -3, !dbg !354              ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp.96 = zext i5 %tmp.95 to i64, !dbg !354     ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx.key.addr.2 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.96, !dbg !354 ; [#uses=1 type=i8*] [debug line = 319:33]
  %ctx.key.load.2 = load i8* %ctx.key.addr.2, align 1, !dbg !354 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp.97 = or i5 %i, 1, !dbg !354                ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp.98 = zext i5 %tmp.97 to i64, !dbg !354     ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx.key.addr.3 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.98, !dbg !354 ; [#uses=2 type=i8*] [debug line = 319:33]
  %ctx.key.load.3 = load i8* %ctx.key.addr.3, align 1, !dbg !354 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp.99 = xor i8 %ctx.key.load.3, %ctx.key.load.2, !dbg !354 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp.99, i8* %ctx.key.addr.3, align 1, !dbg !354 ; [debug line = 319:33]
  %tmp.100 = add i5 %i, -2, !dbg !354             ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp.101 = zext i5 %tmp.100 to i64, !dbg !354   ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx.key.addr.4 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.101, !dbg !354 ; [#uses=1 type=i8*] [debug line = 319:33]
  %ctx.key.load.4 = load i8* %ctx.key.addr.4, align 2, !dbg !354 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp.102 = or i5 %i, 2, !dbg !354               ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp.103 = zext i5 %tmp.102 to i64, !dbg !354   ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx.key.addr.5 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.103, !dbg !354 ; [#uses=2 type=i8*] [debug line = 319:33]
  %ctx.key.load.5 = load i8* %ctx.key.addr.5, align 2, !dbg !354 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp.104 = xor i8 %ctx.key.load.5, %ctx.key.load.4, !dbg !354 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp.104, i8* %ctx.key.addr.5, align 2, !dbg !354 ; [debug line = 319:33]
  %tmp.105 = add i5 %i, -1, !dbg !354             ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp.106 = zext i5 %tmp.105 to i64, !dbg !354   ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx.key.addr.6 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.106, !dbg !354 ; [#uses=1 type=i8*] [debug line = 319:33]
  %ctx.key.load.6 = load i8* %ctx.key.addr.6, align 1, !dbg !354 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp.107 = or i5 %i, 3, !dbg !354               ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp.108 = zext i5 %tmp.107 to i64, !dbg !354   ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx.key.addr.7 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.108, !dbg !354 ; [#uses=2 type=i8*] [debug line = 319:33]
  %ctx.key.load.7 = load i8* %ctx.key.addr.7, align 1, !dbg !354 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp.109 = xor i8 %ctx.key.load.7, %ctx.key.load.6, !dbg !354 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp.109, i8* %ctx.key.addr.7, align 1, !dbg !354 ; [debug line = 319:33]
  %i.30 = add i5 %i, -4, !dbg !355                ; [#uses=1 type=i5] [debug line = 319:25]
  call void @llvm.dbg.value(metadata !{i5 %i.30}, i64 0, metadata !356), !dbg !355 ; [debug line = 319:25] [debug variable = i]
  br label %1, !dbg !355                          ; [debug line = 319:25]

; <label>:4                                       ; preds = %1
  %ctx.key.load.8 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 12), align 4, !dbg !357 ; [#uses=1 type=i8] [debug line = 322:5]
  %tmp.110 = zext i8 %ctx.key.load.8 to i64, !dbg !357 ; [#uses=1 type=i64] [debug line = 322:5]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.110, !dbg !357 ; [#uses=1 type=i8*] [debug line = 322:5]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !357 ; [#uses=1 type=i8] [debug line = 322:5]
  %ctx.key.load.9 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 16), align 16, !dbg !357 ; [#uses=1 type=i8] [debug line = 322:5]
  %tmp.111 = xor i8 %ctx.key.load.9, %sbox.load, !dbg !357 ; [#uses=1 type=i8] [debug line = 322:5]
  store i8 %tmp.111, i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 16), align 16, !dbg !357 ; [debug line = 322:5]
  %ctx.key.load.10 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 13), align 1, !dbg !358 ; [#uses=1 type=i8] [debug line = 323:5]
  %tmp.112 = zext i8 %ctx.key.load.10 to i64, !dbg !358 ; [#uses=1 type=i64] [debug line = 323:5]
  %sbox.addr.8 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.112, !dbg !358 ; [#uses=1 type=i8*] [debug line = 323:5]
  %sbox.load.8 = load i8* %sbox.addr.8, align 1, !dbg !358 ; [#uses=1 type=i8] [debug line = 323:5]
  %ctx.key.load.11 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 17), align 1, !dbg !358 ; [#uses=1 type=i8] [debug line = 323:5]
  %tmp.113 = xor i8 %ctx.key.load.11, %sbox.load.8, !dbg !358 ; [#uses=1 type=i8] [debug line = 323:5]
  store i8 %tmp.113, i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 17), align 1, !dbg !358 ; [debug line = 323:5]
  %ctx.key.load.12 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 14), align 2, !dbg !359 ; [#uses=1 type=i8] [debug line = 324:5]
  %tmp.114 = zext i8 %ctx.key.load.12 to i64, !dbg !359 ; [#uses=1 type=i64] [debug line = 324:5]
  %sbox.addr.9 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.114, !dbg !359 ; [#uses=1 type=i8*] [debug line = 324:5]
  %sbox.load.9 = load i8* %sbox.addr.9, align 1, !dbg !359 ; [#uses=1 type=i8] [debug line = 324:5]
  %ctx.key.load.13 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 18), align 2, !dbg !359 ; [#uses=1 type=i8] [debug line = 324:5]
  %tmp.115 = xor i8 %ctx.key.load.13, %sbox.load.9, !dbg !359 ; [#uses=1 type=i8] [debug line = 324:5]
  store i8 %tmp.115, i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 18), align 2, !dbg !359 ; [debug line = 324:5]
  %ctx.key.load.14 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 15), align 1, !dbg !360 ; [#uses=1 type=i8] [debug line = 325:5]
  %tmp.116 = zext i8 %ctx.key.load.14 to i64, !dbg !360 ; [#uses=1 type=i64] [debug line = 325:5]
  %sbox.addr.10 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.116, !dbg !360 ; [#uses=1 type=i8*] [debug line = 325:5]
  %sbox.load.10 = load i8* %sbox.addr.10, align 1, !dbg !360 ; [#uses=1 type=i8] [debug line = 325:5]
  %ctx.key.load.15 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 19), align 1, !dbg !360 ; [#uses=1 type=i8] [debug line = 325:5]
  %tmp.117 = xor i8 %ctx.key.load.15, %sbox.load.10, !dbg !360 ; [#uses=1 type=i8] [debug line = 325:5]
  store i8 %tmp.117, i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 19), align 1, !dbg !360 ; [debug line = 325:5]
  br label %5, !dbg !361                          ; [debug line = 327:9]

; <label>:5                                       ; preds = %7, %4
  %i.1 = phi i4 [ -4, %4 ], [ %i., %7 ]           ; [#uses=8 type=i4]
  %tmp.118 = icmp eq i4 %i.1, 0, !dbg !361        ; [#uses=1 type=i1] [debug line = 327:9]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp.118, label %8, label %7, !dbg !361   ; [debug line = 327:9]

; <label>:7                                       ; preds = %5
  %tmp.150.cast = zext i4 %i.1 to i5, !dbg !363   ; [#uses=3 type=i5] [debug line = 327:32]
  %tmp.129 = add i5 %tmp.150.cast, -4, !dbg !363  ; [#uses=1 type=i5] [debug line = 327:32]
  %tmp.130 = sext i5 %tmp.129 to i64, !dbg !363   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx.key.addr.8 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.130, !dbg !363 ; [#uses=1 type=i8*] [debug line = 327:32]
  %ctx.key.load.24 = load i8* %ctx.key.addr.8, align 4, !dbg !363 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp.131 = zext i4 %i.1 to i64, !dbg !363       ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx.key.addr.9 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.131, !dbg !363 ; [#uses=2 type=i8*] [debug line = 327:32]
  %ctx.key.load.25 = load i8* %ctx.key.addr.9, align 4, !dbg !363 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp.132 = xor i8 %ctx.key.load.25, %ctx.key.load.24, !dbg !363 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp.132, i8* %ctx.key.addr.9, align 4, !dbg !363 ; [debug line = 327:32]
  %tmp.133 = add i5 %tmp.150.cast, -3, !dbg !363  ; [#uses=1 type=i5] [debug line = 327:32]
  %tmp.134 = sext i5 %tmp.133 to i64, !dbg !363   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx.key.addr.10 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.134, !dbg !363 ; [#uses=1 type=i8*] [debug line = 327:32]
  %ctx.key.load.26 = load i8* %ctx.key.addr.10, align 1, !dbg !363 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp.135 = or i4 %i.1, 1, !dbg !363             ; [#uses=1 type=i4] [debug line = 327:32]
  %tmp.136 = zext i4 %tmp.135 to i64, !dbg !363   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx.key.addr.11 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.136, !dbg !363 ; [#uses=2 type=i8*] [debug line = 327:32]
  %ctx.key.load.27 = load i8* %ctx.key.addr.11, align 1, !dbg !363 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp.137 = xor i8 %ctx.key.load.27, %ctx.key.load.26, !dbg !363 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp.137, i8* %ctx.key.addr.11, align 1, !dbg !363 ; [debug line = 327:32]
  %tmp.138 = add i5 %tmp.150.cast, -2, !dbg !363  ; [#uses=1 type=i5] [debug line = 327:32]
  %tmp.139 = sext i5 %tmp.138 to i64, !dbg !363   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx.key.addr.12 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.139, !dbg !363 ; [#uses=1 type=i8*] [debug line = 327:32]
  %ctx.key.load.28 = load i8* %ctx.key.addr.12, align 2, !dbg !363 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp.140 = or i4 %i.1, 2, !dbg !363             ; [#uses=1 type=i4] [debug line = 327:32]
  %tmp.141 = zext i4 %tmp.140 to i64, !dbg !363   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx.key.addr.13 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.141, !dbg !363 ; [#uses=2 type=i8*] [debug line = 327:32]
  %ctx.key.load.29 = load i8* %ctx.key.addr.13, align 2, !dbg !363 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp.142 = xor i8 %ctx.key.load.29, %ctx.key.load.28, !dbg !363 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp.142, i8* %ctx.key.addr.13, align 2, !dbg !363 ; [debug line = 327:32]
  %tmp.143 = add i4 %i.1, -1, !dbg !363           ; [#uses=1 type=i4] [debug line = 327:32]
  %tmp.144 = zext i4 %tmp.143 to i64, !dbg !363   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx.key.addr.14 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.144, !dbg !363 ; [#uses=1 type=i8*] [debug line = 327:32]
  %ctx.key.load.30 = load i8* %ctx.key.addr.14, align 1, !dbg !363 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp.145 = or i4 %i.1, 3, !dbg !363             ; [#uses=1 type=i4] [debug line = 327:32]
  %tmp.146 = zext i4 %tmp.145 to i64, !dbg !363   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx.key.addr.15 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.146, !dbg !363 ; [#uses=2 type=i8*] [debug line = 327:32]
  %ctx.key.load.31 = load i8* %ctx.key.addr.15, align 1, !dbg !363 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp.147 = xor i8 %ctx.key.load.31, %ctx.key.load.30, !dbg !363 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp.147, i8* %ctx.key.addr.15, align 1, !dbg !363 ; [debug line = 327:32]
  %i. = add i4 %i.1, -4, !dbg !364                ; [#uses=1 type=i4] [debug line = 327:24]
  br label %5, !dbg !364                          ; [debug line = 327:24]

; <label>:8                                       ; preds = %5
  %tmp.119 = lshr i8 %rc.read, 1, !dbg !365       ; [#uses=1 type=i8] [debug line = 330:5]
  %rc.read.cast = trunc i8 %rc.read to i1, !dbg !365 ; [#uses=1 type=i1] [debug line = 330:5]
  %tmp.120 = select i1 %rc.read.cast, i8 -115, i8 0, !dbg !365 ; [#uses=1 type=i8] [debug line = 330:5]
  %rc.write.assign = xor i8 %tmp.120, %tmp.119, !dbg !365 ; [#uses=2 type=i8] [debug line = 330:5]
  %ctx.key.load.16 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 29), align 1, !dbg !366 ; [#uses=1 type=i8] [debug line = 331:5]
  %tmp.121 = zext i8 %ctx.key.load.16 to i64, !dbg !366 ; [#uses=1 type=i64] [debug line = 331:5]
  %sbox.addr.11 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.121, !dbg !366 ; [#uses=1 type=i8*] [debug line = 331:5]
  %sbox.load.11 = load i8* %sbox.addr.11, align 1, !dbg !366 ; [#uses=1 type=i8] [debug line = 331:5]
  %ctx.key.load.17 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 0), align 16, !dbg !366 ; [#uses=1 type=i8] [debug line = 331:5]
  %tmp1 = xor i8 %ctx.key.load.17, %rc.write.assign, !dbg !366 ; [#uses=1 type=i8] [debug line = 331:5]
  %tmp.122 = xor i8 %tmp1, %sbox.load.11, !dbg !366 ; [#uses=1 type=i8] [debug line = 331:5]
  store i8 %tmp.122, i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 0), align 16, !dbg !366 ; [debug line = 331:5]
  %ctx.key.load.18 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 30), align 2, !dbg !367 ; [#uses=1 type=i8] [debug line = 332:5]
  %tmp.123 = zext i8 %ctx.key.load.18 to i64, !dbg !367 ; [#uses=1 type=i64] [debug line = 332:5]
  %sbox.addr.12 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.123, !dbg !367 ; [#uses=1 type=i8*] [debug line = 332:5]
  %sbox.load.12 = load i8* %sbox.addr.12, align 1, !dbg !367 ; [#uses=1 type=i8] [debug line = 332:5]
  %ctx.key.load.19 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 1), align 1, !dbg !367 ; [#uses=1 type=i8] [debug line = 332:5]
  %tmp.124 = xor i8 %ctx.key.load.19, %sbox.load.12, !dbg !367 ; [#uses=1 type=i8] [debug line = 332:5]
  store i8 %tmp.124, i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 1), align 1, !dbg !367 ; [debug line = 332:5]
  %ctx.key.load.20 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 31), align 1, !dbg !368 ; [#uses=1 type=i8] [debug line = 333:5]
  %tmp.125 = zext i8 %ctx.key.load.20 to i64, !dbg !368 ; [#uses=1 type=i64] [debug line = 333:5]
  %sbox.addr.13 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.125, !dbg !368 ; [#uses=1 type=i8*] [debug line = 333:5]
  %sbox.load.13 = load i8* %sbox.addr.13, align 1, !dbg !368 ; [#uses=1 type=i8] [debug line = 333:5]
  %ctx.key.load.21 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 2), align 2, !dbg !368 ; [#uses=1 type=i8] [debug line = 333:5]
  %tmp.126 = xor i8 %ctx.key.load.21, %sbox.load.13, !dbg !368 ; [#uses=1 type=i8] [debug line = 333:5]
  store i8 %tmp.126, i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 2), align 2, !dbg !368 ; [debug line = 333:5]
  %ctx.key.load.22 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 28), align 4, !dbg !369 ; [#uses=1 type=i8] [debug line = 334:5]
  %tmp.127 = zext i8 %ctx.key.load.22 to i64, !dbg !369 ; [#uses=1 type=i64] [debug line = 334:5]
  %sbox.addr.14 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.127, !dbg !369 ; [#uses=1 type=i8*] [debug line = 334:5]
  %sbox.load.14 = load i8* %sbox.addr.14, align 1, !dbg !369 ; [#uses=1 type=i8] [debug line = 334:5]
  %ctx.key.load.23 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 3), align 1, !dbg !369 ; [#uses=1 type=i8] [debug line = 334:5]
  %tmp.128 = xor i8 %ctx.key.load.23, %sbox.load.14, !dbg !369 ; [#uses=1 type=i8] [debug line = 334:5]
  store i8 %tmp.128, i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 3), align 1, !dbg !369 ; [debug line = 334:5]
  call void @llvm.dbg.value(metadata !{i8 %rc.write.assign}, i64 0, metadata !370), !dbg !350 ; [debug line = 315:44] [debug variable = rc]
  ret i8 %rc.write.assign, !dbg !371              ; [debug line = 335:1]
}

; [#uses=1]
define internal fastcc void @aes_encrypt_ecb([16 x i8]* nocapture %buf) {
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !372), !dbg !374 ; [debug line = 358:49] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !375), !dbg !381 ; [debug line = 218:42@362:5] [debug variable = buf]
  br label %1, !dbg !382                          ; [debug line = 222:5@362:5]

; <label>:1                                       ; preds = %3, %0
  %i.i = phi i5 [ -16, %0 ], [ %i.31, %3 ]        ; [#uses=3 type=i5]
  %i.31 = add i5 %i.i, -1, !dbg !382              ; [#uses=2 type=i5] [debug line = 222:5@362:5]
  %i.32.cast = sext i5 %i.31 to i8, !dbg !382     ; [#uses=1 type=i8] [debug line = 222:5@362:5]
  call void @llvm.dbg.value(metadata !{i5 %i.31}, i64 0, metadata !384), !dbg !382 ; [debug line = 222:5@362:5] [debug variable = i]
  %tmp.i = icmp eq i5 %i.i, 0, !dbg !382          ; [#uses=1 type=i1] [debug line = 222:5@362:5]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp.i, label %aes_addRoundKey_cpy.exit.preheader, label %3, !dbg !382 ; [debug line = 222:5@362:5]

aes_addRoundKey_cpy.exit.preheader:               ; preds = %1
  %buf.addr = getelementptr [16 x i8]* %buf, i64 0, i64 1, !dbg !385 ; [#uses=4 type=i8*] [debug line = 231:5@366:9]
  %buf.addr.11 = getelementptr [16 x i8]* %buf, i64 0, i64 5, !dbg !385 ; [#uses=4 type=i8*] [debug line = 231:5@366:9]
  %buf.addr.12 = getelementptr [16 x i8]* %buf, i64 0, i64 9, !dbg !385 ; [#uses=4 type=i8*] [debug line = 231:5@366:9]
  %buf.addr.13 = getelementptr [16 x i8]* %buf, i64 0, i64 13, !dbg !385 ; [#uses=4 type=i8*] [debug line = 231:5@366:9]
  %buf.addr.14 = getelementptr [16 x i8]* %buf, i64 0, i64 10, !dbg !391 ; [#uses=4 type=i8*] [debug line = 232:5@366:9]
  %buf.addr.15 = getelementptr [16 x i8]* %buf, i64 0, i64 2, !dbg !391 ; [#uses=4 type=i8*] [debug line = 232:5@366:9]
  %buf.addr.16 = getelementptr [16 x i8]* %buf, i64 0, i64 3, !dbg !392 ; [#uses=4 type=i8*] [debug line = 233:5@366:9]
  %buf.addr.17 = getelementptr [16 x i8]* %buf, i64 0, i64 15, !dbg !392 ; [#uses=4 type=i8*] [debug line = 233:5@366:9]
  %buf.addr.18 = getelementptr [16 x i8]* %buf, i64 0, i64 11, !dbg !392 ; [#uses=4 type=i8*] [debug line = 233:5@366:9]
  %buf.addr.19 = getelementptr [16 x i8]* %buf, i64 0, i64 7, !dbg !392 ; [#uses=4 type=i8*] [debug line = 233:5@366:9]
  %buf.addr.20 = getelementptr [16 x i8]* %buf, i64 0, i64 14, !dbg !393 ; [#uses=4 type=i8*] [debug line = 234:5@366:9]
  %buf.addr.21 = getelementptr [16 x i8]* %buf, i64 0, i64 6, !dbg !393 ; [#uses=4 type=i8*] [debug line = 234:5@366:9]
  br label %aes_addRoundKey_cpy.exit, !dbg !394   ; [debug line = 363:9]

; <label>:3                                       ; preds = %1
  %tmp..i = zext i8 %i.32.cast to i64, !dbg !395  ; [#uses=3 type=i64] [debug line = 222:17@362:5]
  %ctx.enckey.addr = getelementptr [32 x i8]* @ctx.enckey, i64 0, i64 %tmp..i, !dbg !395 ; [#uses=1 type=i8*] [debug line = 222:17@362:5]
  %ctx.enckey.load = load i8* %ctx.enckey.addr, align 1, !dbg !395 ; [#uses=2 type=i8] [debug line = 222:17@362:5]
  %ctx.key.addr = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp..i, !dbg !395 ; [#uses=1 type=i8*] [debug line = 222:17@362:5]
  store i8 %ctx.enckey.load, i8* %ctx.key.addr, align 1, !dbg !395 ; [debug line = 222:17@362:5]
  %buf.addr.22 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp..i, !dbg !395 ; [#uses=2 type=i8*] [debug line = 222:17@362:5]
  %buf.load = load i8* %buf.addr.22, align 1, !dbg !395 ; [#uses=1 type=i8] [debug line = 222:17@362:5]
  %tmp.207.i = xor i8 %buf.load, %ctx.enckey.load, !dbg !395 ; [#uses=1 type=i8] [debug line = 222:17@362:5]
  store i8 %tmp.207.i, i8* %buf.addr.22, align 1, !dbg !395 ; [debug line = 222:17@362:5]
  %tmp.209.i = add i5 %i.i, 15, !dbg !395         ; [#uses=1 type=i5] [debug line = 222:17@362:5]
  %tmp.210.i = zext i5 %tmp.209.i to i64, !dbg !395 ; [#uses=2 type=i64] [debug line = 222:17@362:5]
  %ctx.enckey.addr.1 = getelementptr [32 x i8]* @ctx.enckey, i64 0, i64 %tmp.210.i, !dbg !395 ; [#uses=1 type=i8*] [debug line = 222:17@362:5]
  %ctx.enckey.load.1 = load i8* %ctx.enckey.addr.1, align 1, !dbg !395 ; [#uses=1 type=i8] [debug line = 222:17@362:5]
  %ctx.key.addr.16 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.210.i, !dbg !395 ; [#uses=1 type=i8*] [debug line = 222:17@362:5]
  store i8 %ctx.enckey.load.1, i8* %ctx.key.addr.16, align 1, !dbg !395 ; [debug line = 222:17@362:5]
  br label %1, !dbg !395                          ; [debug line = 222:17@362:5]

aes_addRoundKey_cpy.exit:                         ; preds = %12, %aes_addRoundKey_cpy.exit.preheader
  %rcon = phi i8 [ %rcon.1, %12 ], [ 1, %aes_addRoundKey_cpy.exit.preheader ] ; [#uses=3 type=i8]
  %i = phi i4 [ %i.39, %12 ], [ 1, %aes_addRoundKey_cpy.exit.preheader ] ; [#uses=3 type=i4]
  %i.cast4 = trunc i4 %i to i1, !dbg !394         ; [#uses=1 type=i1] [debug line = 363:9]
  %exitcond = icmp eq i4 %i, -2, !dbg !394        ; [#uses=1 type=i1] [debug line = 363:9]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 13, i64 13, i64 13) ; [#uses=0 type=i32]
  br i1 %exitcond, label %.preheader.preheader, label %.preheader50.preheader, !dbg !394 ; [debug line = 363:9]

.preheader50.preheader:                           ; preds = %aes_addRoundKey_cpy.exit
  br label %.preheader50, !dbg !396               ; [debug line = 198:5@365:9]

.preheader.preheader:                             ; preds = %aes_addRoundKey_cpy.exit
  %rcon.lcssa = phi i8 [ %rcon, %aes_addRoundKey_cpy.exit ] ; [#uses=1 type=i8]
  br label %.preheader, !dbg !400                 ; [debug line = 198:5@371:5]

.preheader50:                                     ; preds = %6, %.preheader50.preheader
  %i.i4 = phi i5 [ %i.33, %6 ], [ -16, %.preheader50.preheader ] ; [#uses=2 type=i5]
  %i.33 = add i5 %i.i4, -1, !dbg !396             ; [#uses=2 type=i5] [debug line = 198:5@365:9]
  %i.34.cast = sext i5 %i.33 to i8, !dbg !396     ; [#uses=1 type=i8] [debug line = 198:5@365:9]
  call void @llvm.dbg.value(metadata !{i5 %i.33}, i64 0, metadata !402), !dbg !396 ; [debug line = 198:5@365:9] [debug variable = i]
  %tmp.i5 = icmp eq i5 %i.i4, 0, !dbg !396        ; [#uses=1 type=i1] [debug line = 198:5@365:9]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp.i5, label %aes_subBytes.exit, label %6, !dbg !396 ; [debug line = 198:5@365:9]

; <label>:6                                       ; preds = %.preheader50
  %tmp..i6 = zext i8 %i.34.cast to i64, !dbg !403 ; [#uses=1 type=i64] [debug line = 198:17@365:9]
  %buf.addr.24 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp..i6, !dbg !403 ; [#uses=2 type=i8*] [debug line = 198:17@365:9]
  %buf.load.31 = load i8* %buf.addr.24, align 1, !dbg !403 ; [#uses=1 type=i8] [debug line = 198:17@365:9]
  %tmp.29.i = zext i8 %buf.load.31 to i64, !dbg !403 ; [#uses=1 type=i64] [debug line = 198:17@365:9]
  %sbox.addr.15 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.29.i, !dbg !403 ; [#uses=1 type=i8*] [debug line = 198:17@365:9]
  %sbox.load.15 = load i8* %sbox.addr.15, align 1, !dbg !403 ; [#uses=1 type=i8] [debug line = 198:17@365:9]
  store i8 %sbox.load.15, i8* %buf.addr.24, align 1, !dbg !403 ; [debug line = 198:17@365:9]
  br label %.preheader50, !dbg !403               ; [debug line = 198:17@365:9]

aes_subBytes.exit:                                ; preds = %.preheader50
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !404), !dbg !405 ; [debug line = 227:36@366:9] [debug variable = buf]
  %i.36 = load i8* %buf.addr, align 1, !dbg !385  ; [#uses=1 type=i8] [debug line = 231:5@366:9]
  call void @llvm.dbg.value(metadata !{i8 %i.36}, i64 0, metadata !406), !dbg !385 ; [debug line = 231:5@366:9] [debug variable = i]
  %buf.load.20 = load i8* %buf.addr.11, align 1, !dbg !385 ; [#uses=1 type=i8] [debug line = 231:5@366:9]
  store i8 %buf.load.20, i8* %buf.addr, align 1, !dbg !385 ; [debug line = 231:5@366:9]
  %buf.load.21 = load i8* %buf.addr.12, align 1, !dbg !385 ; [#uses=1 type=i8] [debug line = 231:5@366:9]
  store i8 %buf.load.21, i8* %buf.addr.11, align 1, !dbg !385 ; [debug line = 231:5@366:9]
  %buf.load.22 = load i8* %buf.addr.13, align 1, !dbg !385 ; [#uses=1 type=i8] [debug line = 231:5@366:9]
  store i8 %buf.load.22, i8* %buf.addr.12, align 1, !dbg !385 ; [debug line = 231:5@366:9]
  store i8 %i.36, i8* %buf.addr.13, align 1, !dbg !385 ; [debug line = 231:5@366:9]
  %i.37 = load i8* %buf.addr.14, align 1, !dbg !391 ; [#uses=1 type=i8] [debug line = 232:5@366:9]
  call void @llvm.dbg.value(metadata !{i8 %i.37}, i64 0, metadata !406), !dbg !391 ; [debug line = 232:5@366:9] [debug variable = i]
  %buf.load.24 = load i8* %buf.addr.15, align 1, !dbg !391 ; [#uses=1 type=i8] [debug line = 232:5@366:9]
  store i8 %buf.load.24, i8* %buf.addr.14, align 1, !dbg !391 ; [debug line = 232:5@366:9]
  store i8 %i.37, i8* %buf.addr.15, align 1, !dbg !391 ; [debug line = 232:5@366:9]
  %j.2 = load i8* %buf.addr.16, align 1, !dbg !392 ; [#uses=1 type=i8] [debug line = 233:5@366:9]
  call void @llvm.dbg.value(metadata !{i8 %j.2}, i64 0, metadata !407), !dbg !392 ; [debug line = 233:5@366:9] [debug variable = j]
  %buf.load.26 = load i8* %buf.addr.17, align 1, !dbg !392 ; [#uses=1 type=i8] [debug line = 233:5@366:9]
  store i8 %buf.load.26, i8* %buf.addr.16, align 1, !dbg !392 ; [debug line = 233:5@366:9]
  %buf.load.27 = load i8* %buf.addr.18, align 1, !dbg !392 ; [#uses=1 type=i8] [debug line = 233:5@366:9]
  store i8 %buf.load.27, i8* %buf.addr.17, align 1, !dbg !392 ; [debug line = 233:5@366:9]
  %buf.load.28 = load i8* %buf.addr.19, align 1, !dbg !392 ; [#uses=1 type=i8] [debug line = 233:5@366:9]
  store i8 %buf.load.28, i8* %buf.addr.18, align 1, !dbg !392 ; [debug line = 233:5@366:9]
  store i8 %j.2, i8* %buf.addr.19, align 1, !dbg !392 ; [debug line = 233:5@366:9]
  %j.3 = load i8* %buf.addr.20, align 1, !dbg !393 ; [#uses=1 type=i8] [debug line = 234:5@366:9]
  call void @llvm.dbg.value(metadata !{i8 %j.3}, i64 0, metadata !407), !dbg !393 ; [debug line = 234:5@366:9] [debug variable = j]
  %buf.load.30 = load i8* %buf.addr.21, align 1, !dbg !393 ; [#uses=1 type=i8] [debug line = 234:5@366:9]
  store i8 %buf.load.30, i8* %buf.addr.20, align 1, !dbg !393 ; [debug line = 234:5@366:9]
  store i8 %j.3, i8* %buf.addr.21, align 1, !dbg !393 ; [debug line = 234:5@366:9]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !408), !dbg !411 ; [debug line = 251:37@367:9] [debug variable = buf]
  br label %7, !dbg !412                          ; [debug line = 255:10@367:9]

; <label>:7                                       ; preds = %9, %aes_subBytes.exit
  %i.i2 = phi i5 [ 0, %aes_subBytes.exit ], [ %i.38, %9 ] ; [#uses=4 type=i5]
  %tmp.i9 = icmp sgt i5 %i.i2, -1, !dbg !412      ; [#uses=1 type=i1] [debug line = 255:10@367:9]
  %8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %tmp.i9, label %9, label %aes_mixColumns.exit, !dbg !412 ; [debug line = 255:10@367:9]

; <label>:9                                       ; preds = %7
  %tmp..i2 = zext i5 %i.i2 to i64, !dbg !415      ; [#uses=1 type=i64] [debug line = 257:9@367:9]
  %buf.addr.25 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp..i2, !dbg !415 ; [#uses=2 type=i8*] [debug line = 257:9@367:9]
  %a = load i8* %buf.addr.25, align 1, !dbg !415  ; [#uses=3 type=i8] [debug line = 257:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %a}, i64 0, metadata !417), !dbg !415 ; [debug line = 257:9@367:9] [debug variable = a]
  %tmp.62.i.cast = trunc i5 %i.i2 to i4, !dbg !418 ; [#uses=3 type=i4] [debug line = 258:9@367:9]
  %tmp.63.i = or i4 %tmp.62.i.cast, 1, !dbg !418  ; [#uses=1 type=i4] [debug line = 258:9@367:9]
  %tmp.64.i = zext i4 %tmp.63.i to i64, !dbg !418 ; [#uses=1 type=i64] [debug line = 258:9@367:9]
  %buf.addr.26 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp.64.i, !dbg !418 ; [#uses=2 type=i8*] [debug line = 258:9@367:9]
  %b = load i8* %buf.addr.26, align 1, !dbg !418  ; [#uses=3 type=i8] [debug line = 258:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !419), !dbg !418 ; [debug line = 258:9@367:9] [debug variable = b]
  %tmp.65.i = or i4 %tmp.62.i.cast, 2, !dbg !420  ; [#uses=1 type=i4] [debug line = 259:9@367:9]
  %tmp.66.i = zext i4 %tmp.65.i to i64, !dbg !420 ; [#uses=1 type=i64] [debug line = 259:9@367:9]
  %buf.addr.27 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp.66.i, !dbg !420 ; [#uses=2 type=i8*] [debug line = 259:9@367:9]
  %c = load i8* %buf.addr.27, align 1, !dbg !420  ; [#uses=4 type=i8] [debug line = 259:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %c}, i64 0, metadata !421), !dbg !420 ; [debug line = 259:9@367:9] [debug variable = c]
  %tmp.67.i = or i4 %tmp.62.i.cast, 3, !dbg !422  ; [#uses=1 type=i4] [debug line = 260:9@367:9]
  %tmp.68.i = zext i4 %tmp.67.i to i64, !dbg !422 ; [#uses=1 type=i64] [debug line = 260:9@367:9]
  %buf.addr.28 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp.68.i, !dbg !422 ; [#uses=2 type=i8*] [debug line = 260:9@367:9]
  %d = load i8* %buf.addr.28, align 1, !dbg !422  ; [#uses=3 type=i8] [debug line = 260:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %d}, i64 0, metadata !423), !dbg !422 ; [debug line = 260:9@367:9] [debug variable = d]
  %x.assign = xor i8 %b, %a, !dbg !424            ; [#uses=3 type=i8] [debug line = 261:9@367:9]
  %tmp.70.i = xor i8 %c, %x.assign, !dbg !424     ; [#uses=2 type=i8] [debug line = 261:9@367:9]
  %e = xor i8 %d, %tmp.70.i, !dbg !424            ; [#uses=3 type=i8] [debug line = 261:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !425), !dbg !424 ; [debug line = 261:9@367:9] [debug variable = e]
  call void @llvm.dbg.value(metadata !{i8 %x.assign}, i64 0, metadata !426), !dbg !428 ; [debug line = 187:33@262:23@367:9] [debug variable = x]
  %y = shl i8 %x.assign, 1, !dbg !429             ; [#uses=2 type=i8] [debug line = 189:34@262:23@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !430), !dbg !429 ; [debug line = 189:34@262:23@367:9] [debug variable = y]
  %tmp.i.i = icmp slt i8 %x.assign, 0, !dbg !431  ; [#uses=1 type=i1] [debug line = 190:5@262:23@367:9]
  %tmp.1.i.i = xor i8 %y, 27, !dbg !431           ; [#uses=1 type=i8] [debug line = 190:5@262:23@367:9]
  %y.23 = select i1 %tmp.i.i, i8 %tmp.1.i.i, i8 %y, !dbg !431 ; [#uses=1 type=i8] [debug line = 190:5@262:23@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y.23}, i64 0, metadata !430), !dbg !431 ; [debug line = 190:5@262:23@367:9] [debug variable = y]
  %tmp1 = xor i8 %y.23, %e, !dbg !427             ; [#uses=1 type=i8] [debug line = 262:23@367:9]
  %tmp.73.i = xor i8 %tmp1, %a, !dbg !427         ; [#uses=1 type=i8] [debug line = 262:23@367:9]
  store i8 %tmp.73.i, i8* %buf.addr.25, align 1, !dbg !427 ; [debug line = 262:23@367:9]
  %x.assign.9 = xor i8 %c, %b, !dbg !432          ; [#uses=2 type=i8] [debug line = 263:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.9}, i64 0, metadata !433), !dbg !434 ; [debug line = 187:33@263:27@367:9] [debug variable = x]
  %y.24 = shl i8 %x.assign.9, 1, !dbg !435        ; [#uses=2 type=i8] [debug line = 189:34@263:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y.24}, i64 0, metadata !436), !dbg !435 ; [debug line = 189:34@263:27@367:9] [debug variable = y]
  %tmp.i9.i = icmp slt i8 %x.assign.9, 0, !dbg !437 ; [#uses=1 type=i1] [debug line = 190:5@263:27@367:9]
  %tmp.1.i10.i = xor i8 %y.24, 27, !dbg !437      ; [#uses=1 type=i8] [debug line = 190:5@263:27@367:9]
  %y.25 = select i1 %tmp.i9.i, i8 %tmp.1.i10.i, i8 %y.24, !dbg !437 ; [#uses=1 type=i8] [debug line = 190:5@263:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y.25}, i64 0, metadata !436), !dbg !437 ; [debug line = 190:5@263:27@367:9] [debug variable = y]
  %tmp2 = xor i8 %y.25, %e, !dbg !432             ; [#uses=1 type=i8] [debug line = 263:27@367:9]
  %tmp.77.i = xor i8 %tmp2, %b, !dbg !432         ; [#uses=1 type=i8] [debug line = 263:27@367:9]
  store i8 %tmp.77.i, i8* %buf.addr.26, align 1, !dbg !432 ; [debug line = 263:27@367:9]
  %x.assign.10 = xor i8 %d, %c, !dbg !438         ; [#uses=2 type=i8] [debug line = 264:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.10}, i64 0, metadata !439), !dbg !440 ; [debug line = 187:33@264:27@367:9] [debug variable = x]
  %y.26 = shl i8 %x.assign.10, 1, !dbg !441       ; [#uses=2 type=i8] [debug line = 189:34@264:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y.26}, i64 0, metadata !442), !dbg !441 ; [debug line = 189:34@264:27@367:9] [debug variable = y]
  %tmp.i13.i = icmp slt i8 %x.assign.10, 0, !dbg !443 ; [#uses=1 type=i1] [debug line = 190:5@264:27@367:9]
  %tmp.1.i14.i = xor i8 %y.26, 27, !dbg !443      ; [#uses=1 type=i8] [debug line = 190:5@264:27@367:9]
  %y.27 = select i1 %tmp.i13.i, i8 %tmp.1.i14.i, i8 %y.26, !dbg !443 ; [#uses=1 type=i8] [debug line = 190:5@264:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y.27}, i64 0, metadata !442), !dbg !443 ; [debug line = 190:5@264:27@367:9] [debug variable = y]
  %tmp3 = xor i8 %y.27, %e, !dbg !438             ; [#uses=1 type=i8] [debug line = 264:27@367:9]
  %tmp.81.i = xor i8 %tmp3, %c, !dbg !438         ; [#uses=1 type=i8] [debug line = 264:27@367:9]
  store i8 %tmp.81.i, i8* %buf.addr.27, align 1, !dbg !438 ; [debug line = 264:27@367:9]
  %x.assign.11 = xor i8 %d, %a, !dbg !444         ; [#uses=2 type=i8] [debug line = 265:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.11}, i64 0, metadata !445), !dbg !446 ; [debug line = 187:33@265:27@367:9] [debug variable = x]
  %y.28 = shl i8 %x.assign.11, 1, !dbg !447       ; [#uses=2 type=i8] [debug line = 189:34@265:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y.28}, i64 0, metadata !448), !dbg !447 ; [debug line = 189:34@265:27@367:9] [debug variable = y]
  %tmp.i17.i = icmp slt i8 %x.assign.11, 0, !dbg !449 ; [#uses=1 type=i1] [debug line = 190:5@265:27@367:9]
  %tmp.1.i18.i = xor i8 %y.28, 27, !dbg !449      ; [#uses=1 type=i8] [debug line = 190:5@265:27@367:9]
  %y.29 = select i1 %tmp.i17.i, i8 %tmp.1.i18.i, i8 %y.28, !dbg !449 ; [#uses=1 type=i8] [debug line = 190:5@265:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y.29}, i64 0, metadata !448), !dbg !449 ; [debug line = 190:5@265:27@367:9] [debug variable = y]
  %tmp.85.i = xor i8 %y.29, %tmp.70.i, !dbg !444  ; [#uses=1 type=i8] [debug line = 265:27@367:9]
  store i8 %tmp.85.i, i8* %buf.addr.28, align 1, !dbg !444 ; [debug line = 265:27@367:9]
  %i.38 = add i5 %i.i2, 4, !dbg !450              ; [#uses=1 type=i5] [debug line = 255:25@367:9]
  call void @llvm.dbg.value(metadata !{i5 %i.38}, i64 0, metadata !451), !dbg !450 ; [debug line = 255:25@367:9] [debug variable = i]
  br label %7, !dbg !450                          ; [debug line = 255:25@367:9]

aes_mixColumns.exit:                              ; preds = %7
  br i1 %i.cast4, label %10, label %11, !dbg !452 ; [debug line = 368:9]

; <label>:10                                      ; preds = %aes_mixColumns.exit
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx.key, i6 16), !dbg !453 ; [debug line = 368:21]
  br label %12, !dbg !453                         ; [debug line = 368:21]

; <label>:11                                      ; preds = %aes_mixColumns.exit
  %rcon.2 = call fastcc i8 @aes_expandEncKey([32 x i8]* @ctx.key, i8 %rcon), !dbg !454 ; [#uses=1 type=i8] [debug line = 369:14]
  call void @llvm.dbg.value(metadata !{i8 %rcon.2}, i64 0, metadata !455), !dbg !454 ; [debug line = 369:14] [debug variable = rcon]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx.key, i6 0), !dbg !456 ; [debug line = 369:49]
  br label %12

; <label>:12                                      ; preds = %11, %10
  %rcon.1 = phi i8 [ %rcon.2, %11 ], [ %rcon, %10 ] ; [#uses=1 type=i8]
  %i.39 = add i4 %i, 1, !dbg !457                 ; [#uses=1 type=i4] [debug line = 363:34]
  call void @llvm.dbg.value(metadata !{i4 %i.39}, i64 0, metadata !458), !dbg !457 ; [debug line = 363:34] [debug variable = i]
  br label %aes_addRoundKey_cpy.exit, !dbg !457   ; [debug line = 363:34]

.preheader:                                       ; preds = %14, %.preheader.preheader
  %i.i1 = phi i5 [ %i.32, %14 ], [ -16, %.preheader.preheader ] ; [#uses=2 type=i5]
  %i.32 = add i5 %i.i1, -1, !dbg !400             ; [#uses=2 type=i5] [debug line = 198:5@371:5]
  %i.33.cast = sext i5 %i.32 to i8, !dbg !400     ; [#uses=1 type=i8] [debug line = 198:5@371:5]
  call void @llvm.dbg.value(metadata !{i5 %i.32}, i64 0, metadata !459), !dbg !400 ; [debug line = 198:5@371:5] [debug variable = i]
  %tmp.i8 = icmp eq i5 %i.i1, 0, !dbg !400        ; [#uses=1 type=i1] [debug line = 198:5@371:5]
  %13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp.i8, label %aes_subBytes.exit25, label %14, !dbg !400 ; [debug line = 198:5@371:5]

; <label>:14                                      ; preds = %.preheader
  %tmp..i1 = zext i8 %i.33.cast to i64, !dbg !460 ; [#uses=1 type=i64] [debug line = 198:17@371:5]
  %buf.addr.23 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp..i1, !dbg !460 ; [#uses=2 type=i8*] [debug line = 198:17@371:5]
  %buf.load.18 = load i8* %buf.addr.23, align 1, !dbg !460 ; [#uses=1 type=i8] [debug line = 198:17@371:5]
  %tmp.29.i1 = zext i8 %buf.load.18 to i64, !dbg !460 ; [#uses=1 type=i64] [debug line = 198:17@371:5]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.29.i1, !dbg !460 ; [#uses=1 type=i8*] [debug line = 198:17@371:5]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !460 ; [#uses=1 type=i8] [debug line = 198:17@371:5]
  store i8 %sbox.load, i8* %buf.addr.23, align 1, !dbg !460 ; [debug line = 198:17@371:5]
  br label %.preheader, !dbg !460                 ; [debug line = 198:17@371:5]

aes_subBytes.exit25:                              ; preds = %.preheader
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !461), !dbg !463 ; [debug line = 227:36@372:5] [debug variable = buf]
  %i.34 = load i8* %buf.addr, align 1, !dbg !464  ; [#uses=1 type=i8] [debug line = 231:5@372:5]
  call void @llvm.dbg.value(metadata !{i8 %i.34}, i64 0, metadata !465), !dbg !464 ; [debug line = 231:5@372:5] [debug variable = i]
  %buf.load.7 = load i8* %buf.addr.11, align 1, !dbg !464 ; [#uses=1 type=i8] [debug line = 231:5@372:5]
  store i8 %buf.load.7, i8* %buf.addr, align 1, !dbg !464 ; [debug line = 231:5@372:5]
  %buf.load.8 = load i8* %buf.addr.12, align 1, !dbg !464 ; [#uses=1 type=i8] [debug line = 231:5@372:5]
  store i8 %buf.load.8, i8* %buf.addr.11, align 1, !dbg !464 ; [debug line = 231:5@372:5]
  %buf.load.9 = load i8* %buf.addr.13, align 1, !dbg !464 ; [#uses=1 type=i8] [debug line = 231:5@372:5]
  store i8 %buf.load.9, i8* %buf.addr.12, align 1, !dbg !464 ; [debug line = 231:5@372:5]
  store i8 %i.34, i8* %buf.addr.13, align 1, !dbg !464 ; [debug line = 231:5@372:5]
  %i.35 = load i8* %buf.addr.14, align 1, !dbg !466 ; [#uses=1 type=i8] [debug line = 232:5@372:5]
  call void @llvm.dbg.value(metadata !{i8 %i.35}, i64 0, metadata !465), !dbg !466 ; [debug line = 232:5@372:5] [debug variable = i]
  %buf.load.11 = load i8* %buf.addr.15, align 1, !dbg !466 ; [#uses=1 type=i8] [debug line = 232:5@372:5]
  store i8 %buf.load.11, i8* %buf.addr.14, align 1, !dbg !466 ; [debug line = 232:5@372:5]
  store i8 %i.35, i8* %buf.addr.15, align 1, !dbg !466 ; [debug line = 232:5@372:5]
  %j = load i8* %buf.addr.16, align 1, !dbg !467  ; [#uses=1 type=i8] [debug line = 233:5@372:5]
  call void @llvm.dbg.value(metadata !{i8 %j}, i64 0, metadata !468), !dbg !467 ; [debug line = 233:5@372:5] [debug variable = j]
  %buf.load.13 = load i8* %buf.addr.17, align 1, !dbg !467 ; [#uses=1 type=i8] [debug line = 233:5@372:5]
  store i8 %buf.load.13, i8* %buf.addr.16, align 1, !dbg !467 ; [debug line = 233:5@372:5]
  %buf.load.14 = load i8* %buf.addr.18, align 1, !dbg !467 ; [#uses=1 type=i8] [debug line = 233:5@372:5]
  store i8 %buf.load.14, i8* %buf.addr.17, align 1, !dbg !467 ; [debug line = 233:5@372:5]
  %buf.load.15 = load i8* %buf.addr.19, align 1, !dbg !467 ; [#uses=1 type=i8] [debug line = 233:5@372:5]
  store i8 %buf.load.15, i8* %buf.addr.18, align 1, !dbg !467 ; [debug line = 233:5@372:5]
  store i8 %j, i8* %buf.addr.19, align 1, !dbg !467 ; [debug line = 233:5@372:5]
  %j.1 = load i8* %buf.addr.20, align 1, !dbg !469 ; [#uses=1 type=i8] [debug line = 234:5@372:5]
  call void @llvm.dbg.value(metadata !{i8 %j.1}, i64 0, metadata !468), !dbg !469 ; [debug line = 234:5@372:5] [debug variable = j]
  %buf.load.17 = load i8* %buf.addr.21, align 1, !dbg !469 ; [#uses=1 type=i8] [debug line = 234:5@372:5]
  store i8 %buf.load.17, i8* %buf.addr.20, align 1, !dbg !469 ; [debug line = 234:5@372:5]
  store i8 %j.1, i8* %buf.addr.21, align 1, !dbg !469 ; [debug line = 234:5@372:5]
  %call.ret1 = call fastcc i8 @aes_expandEncKey([32 x i8]* @ctx.key, i8 %rcon.lcssa), !dbg !470 ; [#uses=0 type=i8] [debug line = 373:5]
  call void @llvm.dbg.value(metadata !{i8 %call.ret1}, i64 0, metadata !455), !dbg !470 ; [debug line = 373:5] [debug variable = rcon]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx.key, i6 0), !dbg !471 ; [debug line = 374:5]
  ret void, !dbg !472                             ; [debug line = 375:1]
}

; [#uses=1]
define internal fastcc void @aes_decrypt_ecb([16 x i8]* nocapture %buf) {
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !473), !dbg !475 ; [debug line = 378:49] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !476), !dbg !479 ; [debug line = 218:42@382:5] [debug variable = buf]
  br label %1, !dbg !480                          ; [debug line = 222:5@382:5]

; <label>:1                                       ; preds = %3, %0
  %i.i = phi i5 [ -16, %0 ], [ %i.40, %3 ]        ; [#uses=3 type=i5]
  %i.40 = add i5 %i.i, -1, !dbg !480              ; [#uses=2 type=i5] [debug line = 222:5@382:5]
  %i.42.cast = sext i5 %i.40 to i8, !dbg !480     ; [#uses=1 type=i8] [debug line = 222:5@382:5]
  call void @llvm.dbg.value(metadata !{i5 %i.40}, i64 0, metadata !481), !dbg !480 ; [debug line = 222:5@382:5] [debug variable = i]
  %tmp.i = icmp eq i5 %i.i, 0, !dbg !480          ; [#uses=1 type=i1] [debug line = 222:5@382:5]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp.i, label %aes_addRoundKey_cpy.exit, label %3, !dbg !480 ; [debug line = 222:5@382:5]

; <label>:3                                       ; preds = %1
  %tmp..i = zext i8 %i.42.cast to i64, !dbg !482  ; [#uses=3 type=i64] [debug line = 222:17@382:5]
  %ctx.deckey.addr = getelementptr [32 x i8]* @ctx.deckey, i64 0, i64 %tmp..i, !dbg !482 ; [#uses=1 type=i8*] [debug line = 222:17@382:5]
  %ctx.deckey.load = load i8* %ctx.deckey.addr, align 1, !dbg !482 ; [#uses=2 type=i8] [debug line = 222:17@382:5]
  %ctx.key.addr = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp..i, !dbg !482 ; [#uses=1 type=i8*] [debug line = 222:17@382:5]
  store i8 %ctx.deckey.load, i8* %ctx.key.addr, align 1, !dbg !482 ; [debug line = 222:17@382:5]
  %buf.addr.40 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp..i, !dbg !482 ; [#uses=2 type=i8*] [debug line = 222:17@382:5]
  %buf.load.46 = load i8* %buf.addr.40, align 1, !dbg !482 ; [#uses=1 type=i8] [debug line = 222:17@382:5]
  %tmp.207.i = xor i8 %buf.load.46, %ctx.deckey.load, !dbg !482 ; [#uses=1 type=i8] [debug line = 222:17@382:5]
  store i8 %tmp.207.i, i8* %buf.addr.40, align 1, !dbg !482 ; [debug line = 222:17@382:5]
  %tmp.209.i = add i5 %i.i, 15, !dbg !482         ; [#uses=1 type=i5] [debug line = 222:17@382:5]
  %tmp.210.i = zext i5 %tmp.209.i to i64, !dbg !482 ; [#uses=2 type=i64] [debug line = 222:17@382:5]
  %ctx.deckey.addr.1 = getelementptr [32 x i8]* @ctx.deckey, i64 0, i64 %tmp.210.i, !dbg !482 ; [#uses=1 type=i8*] [debug line = 222:17@382:5]
  %ctx.deckey.load.1 = load i8* %ctx.deckey.addr.1, align 1, !dbg !482 ; [#uses=1 type=i8] [debug line = 222:17@382:5]
  %ctx.key.addr.17 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.210.i, !dbg !482 ; [#uses=1 type=i8*] [debug line = 222:17@382:5]
  store i8 %ctx.deckey.load.1, i8* %ctx.key.addr.17, align 1, !dbg !482 ; [debug line = 222:17@382:5]
  br label %1, !dbg !482                          ; [debug line = 222:17@382:5]

aes_addRoundKey_cpy.exit:                         ; preds = %1
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !483), !dbg !486 ; [debug line = 239:40@383:5] [debug variable = buf]
  %buf.addr = getelementptr [16 x i8]* %buf, i64 0, i64 1, !dbg !487 ; [#uses=4 type=i8*] [debug line = 243:5@383:5]
  %i.41 = load i8* %buf.addr, align 1, !dbg !487  ; [#uses=1 type=i8] [debug line = 243:5@383:5]
  call void @llvm.dbg.value(metadata !{i8 %i.41}, i64 0, metadata !489), !dbg !487 ; [debug line = 243:5@383:5] [debug variable = i]
  %buf.addr.29 = getelementptr [16 x i8]* %buf, i64 0, i64 13, !dbg !487 ; [#uses=4 type=i8*] [debug line = 243:5@383:5]
  %buf.load = load i8* %buf.addr.29, align 1, !dbg !487 ; [#uses=1 type=i8] [debug line = 243:5@383:5]
  store i8 %buf.load, i8* %buf.addr, align 1, !dbg !487 ; [debug line = 243:5@383:5]
  %buf.addr.30 = getelementptr [16 x i8]* %buf, i64 0, i64 9, !dbg !487 ; [#uses=4 type=i8*] [debug line = 243:5@383:5]
  %buf.load.36 = load i8* %buf.addr.30, align 1, !dbg !487 ; [#uses=1 type=i8] [debug line = 243:5@383:5]
  store i8 %buf.load.36, i8* %buf.addr.29, align 1, !dbg !487 ; [debug line = 243:5@383:5]
  %buf.addr.31 = getelementptr [16 x i8]* %buf, i64 0, i64 5, !dbg !487 ; [#uses=4 type=i8*] [debug line = 243:5@383:5]
  %buf.load.37 = load i8* %buf.addr.31, align 1, !dbg !487 ; [#uses=1 type=i8] [debug line = 243:5@383:5]
  store i8 %buf.load.37, i8* %buf.addr.30, align 1, !dbg !487 ; [debug line = 243:5@383:5]
  store i8 %i.41, i8* %buf.addr.31, align 1, !dbg !487 ; [debug line = 243:5@383:5]
  %buf.addr.32 = getelementptr [16 x i8]* %buf, i64 0, i64 2, !dbg !490 ; [#uses=4 type=i8*] [debug line = 244:5@383:5]
  %i.42 = load i8* %buf.addr.32, align 1, !dbg !490 ; [#uses=1 type=i8] [debug line = 244:5@383:5]
  call void @llvm.dbg.value(metadata !{i8 %i.42}, i64 0, metadata !489), !dbg !490 ; [debug line = 244:5@383:5] [debug variable = i]
  %buf.addr.33 = getelementptr [16 x i8]* %buf, i64 0, i64 10, !dbg !490 ; [#uses=4 type=i8*] [debug line = 244:5@383:5]
  %buf.load.39 = load i8* %buf.addr.33, align 1, !dbg !490 ; [#uses=1 type=i8] [debug line = 244:5@383:5]
  store i8 %buf.load.39, i8* %buf.addr.32, align 1, !dbg !490 ; [debug line = 244:5@383:5]
  store i8 %i.42, i8* %buf.addr.33, align 1, !dbg !490 ; [debug line = 244:5@383:5]
  %buf.addr.34 = getelementptr [16 x i8]* %buf, i64 0, i64 3, !dbg !491 ; [#uses=4 type=i8*] [debug line = 245:5@383:5]
  %j = load i8* %buf.addr.34, align 1, !dbg !491  ; [#uses=1 type=i8] [debug line = 245:5@383:5]
  call void @llvm.dbg.value(metadata !{i8 %j}, i64 0, metadata !492), !dbg !491 ; [debug line = 245:5@383:5] [debug variable = j]
  %buf.addr.35 = getelementptr [16 x i8]* %buf, i64 0, i64 7, !dbg !491 ; [#uses=4 type=i8*] [debug line = 245:5@383:5]
  %buf.load.41 = load i8* %buf.addr.35, align 1, !dbg !491 ; [#uses=1 type=i8] [debug line = 245:5@383:5]
  store i8 %buf.load.41, i8* %buf.addr.34, align 1, !dbg !491 ; [debug line = 245:5@383:5]
  %buf.addr.36 = getelementptr [16 x i8]* %buf, i64 0, i64 11, !dbg !491 ; [#uses=4 type=i8*] [debug line = 245:5@383:5]
  %buf.load.42 = load i8* %buf.addr.36, align 1, !dbg !491 ; [#uses=1 type=i8] [debug line = 245:5@383:5]
  store i8 %buf.load.42, i8* %buf.addr.35, align 1, !dbg !491 ; [debug line = 245:5@383:5]
  %buf.addr.37 = getelementptr [16 x i8]* %buf, i64 0, i64 15, !dbg !491 ; [#uses=4 type=i8*] [debug line = 245:5@383:5]
  %buf.load.43 = load i8* %buf.addr.37, align 1, !dbg !491 ; [#uses=1 type=i8] [debug line = 245:5@383:5]
  store i8 %buf.load.43, i8* %buf.addr.36, align 1, !dbg !491 ; [debug line = 245:5@383:5]
  store i8 %j, i8* %buf.addr.37, align 1, !dbg !491 ; [debug line = 245:5@383:5]
  %buf.addr.38 = getelementptr [16 x i8]* %buf, i64 0, i64 6, !dbg !493 ; [#uses=4 type=i8*] [debug line = 246:5@383:5]
  %j.4 = load i8* %buf.addr.38, align 1, !dbg !493 ; [#uses=1 type=i8] [debug line = 246:5@383:5]
  call void @llvm.dbg.value(metadata !{i8 %j.4}, i64 0, metadata !492), !dbg !493 ; [debug line = 246:5@383:5] [debug variable = j]
  %buf.addr.39 = getelementptr [16 x i8]* %buf, i64 0, i64 14, !dbg !493 ; [#uses=4 type=i8*] [debug line = 246:5@383:5]
  %buf.load.45 = load i8* %buf.addr.39, align 1, !dbg !493 ; [#uses=1 type=i8] [debug line = 246:5@383:5]
  store i8 %buf.load.45, i8* %buf.addr.38, align 1, !dbg !493 ; [debug line = 246:5@383:5]
  store i8 %j.4, i8* %buf.addr.39, align 1, !dbg !493 ; [debug line = 246:5@383:5]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !494), !dbg !497 ; [debug line = 202:39@384:5] [debug variable = buf]
  br label %4, !dbg !498                          ; [debug line = 206:5@384:5]

; <label>:4                                       ; preds = %6, %aes_addRoundKey_cpy.exit
  %i.i5 = phi i5 [ -16, %aes_addRoundKey_cpy.exit ], [ %i.43, %6 ] ; [#uses=2 type=i5]
  %i.43 = add i5 %i.i5, -1, !dbg !498             ; [#uses=2 type=i5] [debug line = 206:5@384:5]
  %i.45.cast = sext i5 %i.43 to i8, !dbg !498     ; [#uses=1 type=i8] [debug line = 206:5@384:5]
  call void @llvm.dbg.value(metadata !{i5 %i.43}, i64 0, metadata !500), !dbg !498 ; [debug line = 206:5@384:5] [debug variable = i]
  %tmp.i6 = icmp eq i5 %i.i5, 0, !dbg !498        ; [#uses=1 type=i1] [debug line = 206:5@384:5]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp.i6, label %aes_subBytes_inv.exit.preheader, label %6, !dbg !498 ; [debug line = 206:5@384:5]

aes_subBytes_inv.exit.preheader:                  ; preds = %4
  br label %aes_subBytes_inv.exit, !dbg !501      ; [debug line = 386:10]

; <label>:6                                       ; preds = %4
  %tmp..i7 = zext i8 %i.45.cast to i64, !dbg !503 ; [#uses=1 type=i64] [debug line = 206:17@384:5]
  %buf.addr.41 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp..i7, !dbg !503 ; [#uses=2 type=i8*] [debug line = 206:17@384:5]
  %buf.load.47 = load i8* %buf.addr.41, align 1, !dbg !503 ; [#uses=1 type=i8] [debug line = 206:17@384:5]
  %tmp.28.i = zext i8 %buf.load.47 to i64, !dbg !503 ; [#uses=1 type=i64] [debug line = 206:17@384:5]
  %sboxinv.addr = getelementptr inbounds [256 x i8]* @sboxinv, i64 0, i64 %tmp.28.i, !dbg !503 ; [#uses=1 type=i8*] [debug line = 206:17@384:5]
  %sboxinv.load = load i8* %sboxinv.addr, align 1, !dbg !503 ; [#uses=1 type=i8] [debug line = 206:17@384:5]
  store i8 %sboxinv.load, i8* %buf.addr.41, align 1, !dbg !503 ; [debug line = 206:17@384:5]
  br label %4, !dbg !503                          ; [debug line = 206:17@384:5]

aes_subBytes_inv.exit:                            ; preds = %aes_subBytes_inv.exit43, %aes_subBytes_inv.exit.preheader
  %rcon = phi i8 [ %rcon.1, %aes_subBytes_inv.exit43 ], [ -128, %aes_subBytes_inv.exit.preheader ] ; [#uses=2 type=i8]
  %i = phi i4 [ %phitmp, %aes_subBytes_inv.exit43 ], [ -3, %aes_subBytes_inv.exit.preheader ] ; [#uses=3 type=i4]
  %i.cast1 = trunc i4 %i to i1, !dbg !501         ; [#uses=1 type=i1] [debug line = 386:10]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !504), !dbg !501 ; [debug line = 386:10] [debug variable = i]
  %tmp = icmp eq i4 %i, 0, !dbg !501              ; [#uses=1 type=i1] [debug line = 386:10]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 13, i64 13, i64 13) ; [#uses=0 type=i32]
  br i1 %tmp, label %15, label %8, !dbg !501      ; [debug line = 386:10]

; <label>:8                                       ; preds = %aes_subBytes_inv.exit
  br i1 %i.cast1, label %9, label %10, !dbg !505  ; [debug line = 388:9]

; <label>:9                                       ; preds = %8
  %rcon.3 = call fastcc i8 @aes_expandDecKey(i8 %rcon), !dbg !507 ; [#uses=1 type=i8] [debug line = 390:13]
  call void @llvm.dbg.value(metadata !{i8 %rcon.3}, i64 0, metadata !509), !dbg !507 ; [debug line = 390:13] [debug variable = rcon]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx.key, i6 16), !dbg !510 ; [debug line = 391:13]
  br label %11, !dbg !511                         ; [debug line = 392:9]

; <label>:10                                      ; preds = %8
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx.key, i6 0), !dbg !512 ; [debug line = 393:14]
  br label %11

; <label>:11                                      ; preds = %10, %9
  %rcon.1 = phi i8 [ %rcon, %10 ], [ %rcon.3, %9 ] ; [#uses=1 type=i8]
  call fastcc void @aes_mixColumns_inv([16 x i8]* %buf), !dbg !513 ; [debug line = 394:9]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !514), !dbg !516 ; [debug line = 239:40@395:9] [debug variable = buf]
  %i.44 = load i8* %buf.addr, align 1, !dbg !517  ; [#uses=1 type=i8] [debug line = 243:5@395:9]
  call void @llvm.dbg.value(metadata !{i8 %i.44}, i64 0, metadata !518), !dbg !517 ; [debug line = 243:5@395:9] [debug variable = i]
  %buf.load.49 = load i8* %buf.addr.29, align 1, !dbg !517 ; [#uses=1 type=i8] [debug line = 243:5@395:9]
  store i8 %buf.load.49, i8* %buf.addr, align 1, !dbg !517 ; [debug line = 243:5@395:9]
  %buf.load.50 = load i8* %buf.addr.30, align 1, !dbg !517 ; [#uses=1 type=i8] [debug line = 243:5@395:9]
  store i8 %buf.load.50, i8* %buf.addr.29, align 1, !dbg !517 ; [debug line = 243:5@395:9]
  %buf.load.51 = load i8* %buf.addr.31, align 1, !dbg !517 ; [#uses=1 type=i8] [debug line = 243:5@395:9]
  store i8 %buf.load.51, i8* %buf.addr.30, align 1, !dbg !517 ; [debug line = 243:5@395:9]
  store i8 %i.44, i8* %buf.addr.31, align 1, !dbg !517 ; [debug line = 243:5@395:9]
  %i.45 = load i8* %buf.addr.32, align 1, !dbg !519 ; [#uses=1 type=i8] [debug line = 244:5@395:9]
  call void @llvm.dbg.value(metadata !{i8 %i.45}, i64 0, metadata !518), !dbg !519 ; [debug line = 244:5@395:9] [debug variable = i]
  %buf.load.53 = load i8* %buf.addr.33, align 1, !dbg !519 ; [#uses=1 type=i8] [debug line = 244:5@395:9]
  store i8 %buf.load.53, i8* %buf.addr.32, align 1, !dbg !519 ; [debug line = 244:5@395:9]
  store i8 %i.45, i8* %buf.addr.33, align 1, !dbg !519 ; [debug line = 244:5@395:9]
  %j.5 = load i8* %buf.addr.34, align 1, !dbg !520 ; [#uses=1 type=i8] [debug line = 245:5@395:9]
  call void @llvm.dbg.value(metadata !{i8 %j.5}, i64 0, metadata !521), !dbg !520 ; [debug line = 245:5@395:9] [debug variable = j]
  %buf.load.55 = load i8* %buf.addr.35, align 1, !dbg !520 ; [#uses=1 type=i8] [debug line = 245:5@395:9]
  store i8 %buf.load.55, i8* %buf.addr.34, align 1, !dbg !520 ; [debug line = 245:5@395:9]
  %buf.load.56 = load i8* %buf.addr.36, align 1, !dbg !520 ; [#uses=1 type=i8] [debug line = 245:5@395:9]
  store i8 %buf.load.56, i8* %buf.addr.35, align 1, !dbg !520 ; [debug line = 245:5@395:9]
  %buf.load.57 = load i8* %buf.addr.37, align 1, !dbg !520 ; [#uses=1 type=i8] [debug line = 245:5@395:9]
  store i8 %buf.load.57, i8* %buf.addr.36, align 1, !dbg !520 ; [debug line = 245:5@395:9]
  store i8 %j.5, i8* %buf.addr.37, align 1, !dbg !520 ; [debug line = 245:5@395:9]
  %j.6 = load i8* %buf.addr.38, align 1, !dbg !522 ; [#uses=1 type=i8] [debug line = 246:5@395:9]
  call void @llvm.dbg.value(metadata !{i8 %j.6}, i64 0, metadata !521), !dbg !522 ; [debug line = 246:5@395:9] [debug variable = j]
  %buf.load.59 = load i8* %buf.addr.39, align 1, !dbg !522 ; [#uses=1 type=i8] [debug line = 246:5@395:9]
  store i8 %buf.load.59, i8* %buf.addr.38, align 1, !dbg !522 ; [debug line = 246:5@395:9]
  store i8 %j.6, i8* %buf.addr.39, align 1, !dbg !522 ; [debug line = 246:5@395:9]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !523), !dbg !525 ; [debug line = 202:39@396:9] [debug variable = buf]
  br label %12, !dbg !526                         ; [debug line = 206:5@396:9]

; <label>:12                                      ; preds = %14, %11
  %i.i3 = phi i5 [ -16, %11 ], [ %i.46, %14 ]     ; [#uses=2 type=i5]
  %i.46 = add i5 %i.i3, -1, !dbg !526             ; [#uses=2 type=i5] [debug line = 206:5@396:9]
  %i.48.cast = sext i5 %i.46 to i8, !dbg !526     ; [#uses=1 type=i8] [debug line = 206:5@396:9]
  call void @llvm.dbg.value(metadata !{i5 %i.46}, i64 0, metadata !527), !dbg !526 ; [debug line = 206:5@396:9] [debug variable = i]
  %tmp.i1 = icmp eq i5 %i.i3, 0, !dbg !526        ; [#uses=1 type=i1] [debug line = 206:5@396:9]
  %13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp.i1, label %aes_subBytes_inv.exit43, label %14, !dbg !526 ; [debug line = 206:5@396:9]

; <label>:14                                      ; preds = %12
  %tmp..i3 = zext i8 %i.48.cast to i64, !dbg !528 ; [#uses=1 type=i64] [debug line = 206:17@396:9]
  %buf.addr.42 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp..i3, !dbg !528 ; [#uses=2 type=i8*] [debug line = 206:17@396:9]
  %buf.load.60 = load i8* %buf.addr.42, align 1, !dbg !528 ; [#uses=1 type=i8] [debug line = 206:17@396:9]
  %tmp.28.i1 = zext i8 %buf.load.60 to i64, !dbg !528 ; [#uses=1 type=i64] [debug line = 206:17@396:9]
  %sboxinv.addr.1 = getelementptr inbounds [256 x i8]* @sboxinv, i64 0, i64 %tmp.28.i1, !dbg !528 ; [#uses=1 type=i8*] [debug line = 206:17@396:9]
  %sboxinv.load.1 = load i8* %sboxinv.addr.1, align 1, !dbg !528 ; [#uses=1 type=i8] [debug line = 206:17@396:9]
  store i8 %sboxinv.load.1, i8* %buf.addr.42, align 1, !dbg !528 ; [debug line = 206:17@396:9]
  br label %12, !dbg !528                         ; [debug line = 206:17@396:9]

aes_subBytes_inv.exit43:                          ; preds = %12
  %phitmp = add i4 %i, -1, !dbg !529              ; [#uses=1 type=i4] [debug line = 397:5]
  br label %aes_subBytes_inv.exit, !dbg !529      ; [debug line = 397:5]

; <label>:15                                      ; preds = %aes_subBytes_inv.exit
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx.key, i6 0), !dbg !530 ; [debug line = 398:5]
  ret void, !dbg !531                             ; [debug line = 399:1]
}

; [#uses=6]
define internal fastcc void @aes_addRoundKey([16 x i8]* nocapture %buf, [32 x i8]* nocapture %key, i6 %key.offset) {
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !532), !dbg !534 ; [debug line = 210:38] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %key}, i64 0, metadata !535), !dbg !536 ; [debug line = 210:52] [debug variable = key]
  br label %1, !dbg !537                          ; [debug line = 214:5]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ -16, %0 ], [ %i.47, %3 ]          ; [#uses=2 type=i5]
  %i.47 = add i5 %i, -1, !dbg !537                ; [#uses=3 type=i5] [debug line = 214:5]
  %i.49.cast = sext i5 %i.47 to i8, !dbg !537     ; [#uses=1 type=i8] [debug line = 214:5]
  call void @llvm.dbg.value(metadata !{i5 %i.47}, i64 0, metadata !539), !dbg !537 ; [debug line = 214:5] [debug variable = i]
  %tmp = icmp eq i5 %i, 0, !dbg !537              ; [#uses=1 type=i1] [debug line = 214:5]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp, label %4, label %3, !dbg !537       ; [debug line = 214:5]

; <label>:3                                       ; preds = %1
  %tmp. = zext i8 %i.49.cast to i64, !dbg !540    ; [#uses=1 type=i64] [debug line = 214:17]
  %key.offset.cast = trunc i6 %key.offset to i5   ; [#uses=1 type=i5]
  %sum = add i5 %key.offset.cast, %i.47           ; [#uses=1 type=i5]
  %sum.cast = zext i5 %sum to i64                 ; [#uses=1 type=i64]
  %key.addr = getelementptr [32 x i8]* %key, i64 0, i64 %sum.cast, !dbg !540 ; [#uses=1 type=i8*] [debug line = 214:17]
  %key.load = load i8* %key.addr, align 1, !dbg !540 ; [#uses=1 type=i8] [debug line = 214:17]
  %buf.addr = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp., !dbg !540 ; [#uses=2 type=i8*] [debug line = 214:17]
  %buf.load = load i8* %buf.addr, align 1, !dbg !540 ; [#uses=1 type=i8] [debug line = 214:17]
  %tmp.148 = xor i8 %buf.load, %key.load, !dbg !540 ; [#uses=1 type=i8] [debug line = 214:17]
  store i8 %tmp.148, i8* %buf.addr, align 1, !dbg !540 ; [debug line = 214:17]
  br label %1, !dbg !540                          ; [debug line = 214:17]

; <label>:4                                       ; preds = %1
  ret void, !dbg !541                             ; [debug line = 215:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=30]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=13]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=6]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=5]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=0]
declare void @_ssdm_SpecKeepAssert(...)

!opencl.kernels = !{!0, !7, !13, !19, !19, !21, !24, !28, !21, !21, !31, !21, !21, !21, !33, !28}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!39, !52}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint8_t*", metadata !"ciphermode_t", metadata !"uint8_t*", metadata !"uint8_t*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"data_in", metadata !"data_out", metadata !"mode", metadata !"key_in", metadata !"iv_in"}
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
!33 = metadata !{null, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !6}
!34 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!35 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint8_t*", metadata !"uint8_t*"}
!37 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"key", metadata !"cpk"}
!39 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/brett/Thesis/Vivado_WS/aescbc/solution1/.autopilot/db/aesecb.pragma.2.c", metadata !"/home/brett/Thesis/Vivado_WS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !40} ; [ DW_TAG_compile_unit ]
!40 = metadata !{metadata !41}
!41 = metadata !{metadata !42, metadata !51}
!42 = metadata !{i32 786484, i32 0, null, metadata !"sbox", metadata !"sbox", metadata !"", metadata !43, i32 47, metadata !44, i32 1, i32 1, [256 x i8]* @sbox} ; [ DW_TAG_variable ]
!43 = metadata !{i32 786473, metadata !"aescbc/src/aesecb.c", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!44 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !45, metadata !49, i32 0, i32 0} ; [ DW_TAG_array_type ]
!45 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_const_type ]
!46 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !47, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ]
!47 = metadata !{i32 786473, metadata !"aescbc/src/aesecb.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!48 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!49 = metadata !{metadata !50}
!50 = metadata !{i32 786465, i64 0, i64 255}      ; [ DW_TAG_subrange_type ]
!51 = metadata !{i32 786484, i32 0, null, metadata !"sboxinv", metadata !"sboxinv", metadata !"", metadata !43, i32 82, metadata !44, i32 1, i32 1, [256 x i8]* @sboxinv} ; [ DW_TAG_variable ]
!52 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/brett/Thesis/Vivado_WS/aescbc/solution1/.autopilot/db/aescbc.pragma.2.c", metadata !"/home/brett/Thesis/Vivado_WS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !53} ; [ DW_TAG_compile_unit ]
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !55, metadata !76, metadata !77, metadata !78, metadata !82, metadata !90, metadata !93, metadata !96, metadata !98, metadata !101, metadata !102, metadata !103}
!55 = metadata !{i32 786484, i32 0, metadata !56, metadata !"iv", metadata !"iv", metadata !"", metadata !57, i32 23, metadata !73, i32 1, i32 1, [16 x i8]* @iv} ; [ DW_TAG_variable ]
!56 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aescbc", metadata !"aescbc", metadata !"", metadata !57, i32 8, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !71, i32 13} ; [ DW_TAG_subprogram ]
!57 = metadata !{i32 786473, metadata !"aescbc/src/aescbc.c", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!58 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!59 = metadata !{null, metadata !60, metadata !60, metadata !62, metadata !60, metadata !60}
!60 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ]
!61 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !57, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ]
!62 = metadata !{i32 786454, null, metadata !"ciphermode_t", metadata !57, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ]
!63 = metadata !{i32 786436, null, metadata !"", metadata !64, i32 9, i64 3, i64 4, i32 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!64 = metadata !{i32 786473, metadata !"aescbc/src/aescbc.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!65 = metadata !{metadata !66, metadata !67, metadata !68, metadata !69, metadata !70}
!66 = metadata !{i32 786472, metadata !"RESET", i64 0} ; [ DW_TAG_enumerator ]
!67 = metadata !{i32 786472, metadata !"ENCRYPT", i64 1} ; [ DW_TAG_enumerator ]
!68 = metadata !{i32 786472, metadata !"DECRYPT", i64 2} ; [ DW_TAG_enumerator ]
!69 = metadata !{i32 786472, metadata !"SET_IV", i64 3} ; [ DW_TAG_enumerator ]
!70 = metadata !{i32 786472, metadata !"SET_KEY", i64 4} ; [ DW_TAG_enumerator ]
!71 = metadata !{metadata !72}
!72 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!73 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !61, metadata !74, i32 0, i32 0} ; [ DW_TAG_array_type ]
!74 = metadata !{metadata !75}
!75 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!76 = metadata !{i32 786484, i32 0, metadata !56, metadata !"xorv", metadata !"xorv", metadata !"", metadata !57, i32 24, metadata !73, i32 1, i32 1, [16 x i8]* @xorv} ; [ DW_TAG_variable ]
!77 = metadata !{i32 786484, i32 0, metadata !56, metadata !"lastbuf", metadata !"lastbuf", metadata !"", metadata !57, i32 22, metadata !73, i32 1, i32 1, [16 x i8]* @lastbuf} ; [ DW_TAG_variable ]
!78 = metadata !{i32 786484, i32 0, metadata !56, metadata !"key", metadata !"key", metadata !"", metadata !57, i32 25, metadata !79, i32 1, i32 1, [32 x i8]* @key} ; [ DW_TAG_variable ]
!79 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !61, metadata !80, i32 0, i32 0} ; [ DW_TAG_array_type ]
!80 = metadata !{metadata !81}
!81 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!82 = metadata !{i32 790546, i32 0, null, metadata !"ctx.key", metadata !"ctx.key", metadata !"ctx.key", metadata !57, i32 26, metadata !83, i32 1, i32 1, [32 x i8]* @ctx.key} ; [ DW_TAG_variable_field ]
!83 = metadata !{i32 786452, null, metadata !"", metadata !47, i32 29, i64 256, i64 8, i32 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!84 = metadata !{metadata !85}
!85 = metadata !{i32 786445, metadata !86, metadata !"key", metadata !47, i32 30, i64 256, i64 8, i64 0, i32 0, metadata !79} ; [ DW_TAG_member ]
!86 = metadata !{i32 786451, null, metadata !"", metadata !47, i32 29, i64 768, i64 8, i32 0, i32 0, null, metadata !87, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!87 = metadata !{metadata !85, metadata !88, metadata !89}
!88 = metadata !{i32 786445, metadata !86, metadata !"enckey", metadata !47, i32 31, i64 256, i64 8, i64 256, i32 0, metadata !79} ; [ DW_TAG_member ]
!89 = metadata !{i32 786445, metadata !86, metadata !"deckey", metadata !47, i32 32, i64 256, i64 8, i64 512, i32 0, metadata !79} ; [ DW_TAG_member ]
!90 = metadata !{i32 790546, i32 0, null, metadata !"ctx.enckey", metadata !"ctx.enckey", metadata !"ctx.enckey", metadata !57, i32 26, metadata !91, i32 1, i32 1, [32 x i8]* @ctx.enckey} ; [ DW_TAG_variable_field ]
!91 = metadata !{i32 786452, null, metadata !"", metadata !47, i32 29, i64 256, i64 8, i32 0, i32 0, null, metadata !92, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!92 = metadata !{metadata !88}
!93 = metadata !{i32 790546, i32 0, null, metadata !"ctx.deckey", metadata !"ctx.deckey", metadata !"ctx.deckey", metadata !57, i32 26, metadata !94, i32 1, i32 1, [32 x i8]* @ctx.deckey} ; [ DW_TAG_variable_field ]
!94 = metadata !{i32 786452, null, metadata !"", metadata !47, i32 29, i64 256, i64 8, i32 0, i32 0, null, metadata !95, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!95 = metadata !{metadata !89}
!96 = metadata !{i32 786484, i32 0, metadata !56, metadata !"ctx", metadata !"ctx", metadata !"", metadata !57, i32 26, metadata !97, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!97 = metadata !{i32 786454, null, metadata !"aes_context", metadata !57, i32 33, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ]
!98 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !99, i32 315, metadata !100, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!99 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!100 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !99, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!101 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !99, i32 316, metadata !100, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!102 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !99, i32 317, metadata !100, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!103 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !104, i32 26, metadata !105, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!104 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!105 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!106 = metadata !{metadata !107}
!107 = metadata !{i32 0, i32 7, metadata !108}
!108 = metadata !{metadata !109}
!109 = metadata !{metadata !"data_in", metadata !110, metadata !"unsigned char", i32 0, i32 7}
!110 = metadata !{metadata !111}
!111 = metadata !{i32 0, i32 15, i32 1}
!112 = metadata !{metadata !113}
!113 = metadata !{i32 0, i32 7, metadata !114}
!114 = metadata !{metadata !115}
!115 = metadata !{metadata !"data_out", metadata !110, metadata !"unsigned char", i32 0, i32 7}
!116 = metadata !{metadata !117}
!117 = metadata !{i32 0, i32 2, metadata !118}
!118 = metadata !{metadata !119}
!119 = metadata !{metadata !"mode", metadata !120, metadata !"enum ", i32 0, i32 2}
!120 = metadata !{metadata !121}
!121 = metadata !{i32 0, i32 0, i32 0}
!122 = metadata !{metadata !123}
!123 = metadata !{i32 0, i32 7, metadata !124}
!124 = metadata !{metadata !125}
!125 = metadata !{metadata !"key_in", metadata !126, metadata !"unsigned char", i32 0, i32 7}
!126 = metadata !{metadata !127}
!127 = metadata !{i32 0, i32 31, i32 1}
!128 = metadata !{metadata !129}
!129 = metadata !{i32 0, i32 7, metadata !130}
!130 = metadata !{metadata !131}
!131 = metadata !{metadata !"iv_in", metadata !110, metadata !"unsigned char", i32 0, i32 7}
!132 = metadata !{i32 786689, metadata !56, metadata !"data_in", null, i32 8, metadata !133, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!133 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !61, metadata !74, i32 0, i32 0} ; [ DW_TAG_array_type ]
!134 = metadata !{i32 8, i32 21, metadata !56, null}
!135 = metadata !{i32 786689, metadata !56, metadata !"data_out", null, i32 9, metadata !133, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!136 = metadata !{i32 9, i32 12, metadata !56, null}
!137 = metadata !{i32 786689, metadata !56, metadata !"mode", metadata !57, i32 50331658, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!138 = metadata !{i32 10, i32 20, metadata !56, null}
!139 = metadata !{i32 786689, metadata !56, metadata !"key_in", null, i32 11, metadata !140, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!140 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !61, metadata !80, i32 0, i32 0} ; [ DW_TAG_array_type ]
!141 = metadata !{i32 11, i32 12, metadata !56, null}
!142 = metadata !{i32 786689, metadata !56, metadata !"iv_in", null, i32 12, metadata !133, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!143 = metadata !{i32 12, i32 12, metadata !56, null}
!144 = metadata !{i32 18, i32 1, metadata !145, null}
!145 = metadata !{i32 786443, metadata !56, i32 13, i32 1, metadata !57, i32 0} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 19, i32 1, metadata !145, null}
!147 = metadata !{i32 786688, metadata !145, metadata !"buf", metadata !57, i32 21, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!148 = metadata !{i32 21, i32 10, metadata !145, null}
!149 = metadata !{i32 29, i32 5, metadata !145, null}
!150 = metadata !{i32 32, i32 25, metadata !151, null}
!151 = metadata !{i32 786443, metadata !152, i32 32, i32 21, metadata !57, i32 2} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 786443, metadata !145, i32 29, i32 20, metadata !57, i32 1} ; [ DW_TAG_lexical_block ]
!153 = metadata !{i32 45, i32 25, metadata !154, null}
!154 = metadata !{i32 786443, metadata !152, i32 45, i32 21, metadata !57, i32 10} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 61, i32 24, metadata !156, null}
!156 = metadata !{i32 786443, metadata !152, i32 61, i32 20, metadata !57, i32 18} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 34, i32 21, metadata !158, null}
!158 = metadata !{i32 786443, metadata !152, i32 34, i32 17, metadata !57, i32 4} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 33, i32 7, metadata !160, null}
!160 = metadata !{i32 786443, metadata !151, i32 33, i32 7, metadata !57, i32 3} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 32, i32 36, metadata !151, null}
!162 = metadata !{i32 786688, metadata !145, metadata !"i", metadata !57, i32 27, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!163 = metadata !{i32 36, i32 25, metadata !164, null}
!164 = metadata !{i32 786443, metadata !152, i32 36, i32 21, metadata !57, i32 6} ; [ DW_TAG_lexical_block ]
!165 = metadata !{i32 35, i32 4, metadata !166, null}
!166 = metadata !{i32 786443, metadata !158, i32 35, i32 4, metadata !57, i32 5} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 34, i32 32, metadata !158, null}
!168 = metadata !{i32 38, i32 25, metadata !169, null}
!169 = metadata !{i32 786443, metadata !152, i32 38, i32 21, metadata !57, i32 8} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 37, i32 7, metadata !171, null}
!171 = metadata !{i32 786443, metadata !164, i32 37, i32 7, metadata !57, i32 7} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 36, i32 36, metadata !164, null}
!173 = metadata !{i32 344, i32 10, metadata !174, metadata !188}
!174 = metadata !{i32 786443, metadata !175, i32 344, i32 5, metadata !43, i32 1} ; [ DW_TAG_lexical_block ]
!175 = metadata !{i32 786443, metadata !176, i32 340, i32 1, metadata !43, i32 0} ; [ DW_TAG_lexical_block ]
!176 = metadata !{i32 786478, i32 0, metadata !43, metadata !"aes_init", metadata !"aes_init", metadata !"", metadata !43, i32 339, metadata !177, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !71, i32 340} ; [ DW_TAG_subprogram ]
!177 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !178, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!178 = metadata !{null, metadata !179, metadata !187}
!179 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !180} ; [ DW_TAG_pointer_type ]
!180 = metadata !{i32 786454, null, metadata !"aes_context", metadata !43, i32 33, i64 0, i64 0, i64 0, i32 0, metadata !181} ; [ DW_TAG_typedef ]
!181 = metadata !{i32 786451, null, metadata !"", metadata !47, i32 29, i64 768, i64 8, i32 0, i32 0, null, metadata !182, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!182 = metadata !{metadata !183, metadata !185, metadata !186}
!183 = metadata !{i32 786445, metadata !181, metadata !"key", metadata !47, i32 30, i64 256, i64 8, i64 0, i32 0, metadata !184} ; [ DW_TAG_member ]
!184 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !46, metadata !80, i32 0, i32 0} ; [ DW_TAG_array_type ]
!185 = metadata !{i32 786445, metadata !181, metadata !"enckey", metadata !47, i32 31, i64 256, i64 8, i64 256, i32 0, metadata !184} ; [ DW_TAG_member ]
!186 = metadata !{i32 786445, metadata !181, metadata !"deckey", metadata !47, i32 32, i64 256, i64 8, i64 512, i32 0, metadata !184} ; [ DW_TAG_member ]
!187 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ]
!188 = metadata !{i32 40, i32 6, metadata !152, null}
!189 = metadata !{i32 39, i32 7, metadata !190, null}
!190 = metadata !{i32 786443, metadata !169, i32 39, i32 7, metadata !57, i32 9} ; [ DW_TAG_lexical_block ]
!191 = metadata !{i32 38, i32 36, metadata !169, null}
!192 = metadata !{i32 345, i32 10, metadata !193, metadata !188}
!193 = metadata !{i32 786443, metadata !175, i32 345, i32 5, metadata !43, i32 2} ; [ DW_TAG_lexical_block ]
!194 = metadata !{i32 344, i32 44, metadata !174, metadata !188}
!195 = metadata !{i32 344, i32 39, metadata !174, metadata !188}
!196 = metadata !{i32 786688, metadata !175, metadata !"i", metadata !43, i32 342, metadata !46, i32 0, metadata !188} ; [ DW_TAG_auto_variable ]
!197 = metadata !{i32 345, i32 23, metadata !193, metadata !188}
!198 = metadata !{i32 786688, metadata !175, metadata !"rcon", metadata !43, i32 341, metadata !46, i32 0, metadata !188} ; [ DW_TAG_auto_variable ]
!199 = metadata !{i32 48, i32 24, metadata !200, null}
!200 = metadata !{i32 786443, metadata !152, i32 48, i32 20, metadata !57, i32 12} ; [ DW_TAG_lexical_block ]
!201 = metadata !{i32 46, i32 7, metadata !202, null}
!202 = metadata !{i32 786443, metadata !154, i32 46, i32 7, metadata !57, i32 11} ; [ DW_TAG_lexical_block ]
!203 = metadata !{i32 45, i32 36, metadata !154, null}
!204 = metadata !{i32 49, i32 7, metadata !205, null}
!205 = metadata !{i32 786443, metadata !200, i32 49, i32 7, metadata !57, i32 13} ; [ DW_TAG_lexical_block ]
!206 = metadata !{i32 48, i32 35, metadata !200, null}
!207 = metadata !{i32 51, i32 6, metadata !152, null}
!208 = metadata !{i32 53, i32 24, metadata !209, null}
!209 = metadata !{i32 786443, metadata !152, i32 53, i32 20, metadata !57, i32 14} ; [ DW_TAG_lexical_block ]
!210 = metadata !{i32 56, i32 24, metadata !211, null}
!211 = metadata !{i32 786443, metadata !152, i32 56, i32 20, metadata !57, i32 16} ; [ DW_TAG_lexical_block ]
!212 = metadata !{i32 54, i32 7, metadata !213, null}
!213 = metadata !{i32 786443, metadata !209, i32 54, i32 7, metadata !57, i32 15} ; [ DW_TAG_lexical_block ]
!214 = metadata !{i32 53, i32 35, metadata !209, null}
!215 = metadata !{i32 57, i32 7, metadata !216, null}
!216 = metadata !{i32 786443, metadata !211, i32 57, i32 7, metadata !57, i32 17} ; [ DW_TAG_lexical_block ]
!217 = metadata !{i32 56, i32 35, metadata !211, null}
!218 = metadata !{i32 64, i32 24, metadata !219, null}
!219 = metadata !{i32 786443, metadata !152, i32 64, i32 20, metadata !57, i32 20} ; [ DW_TAG_lexical_block ]
!220 = metadata !{i32 62, i32 7, metadata !221, null}
!221 = metadata !{i32 786443, metadata !156, i32 62, i32 7, metadata !57, i32 19} ; [ DW_TAG_lexical_block ]
!222 = metadata !{i32 61, i32 35, metadata !156, null}
!223 = metadata !{i32 65, i32 7, metadata !224, null}
!224 = metadata !{i32 786443, metadata !219, i32 65, i32 7, metadata !57, i32 21} ; [ DW_TAG_lexical_block ]
!225 = metadata !{i32 64, i32 35, metadata !219, null}
!226 = metadata !{i32 67, i32 6, metadata !152, null}
!227 = metadata !{i32 69, i32 24, metadata !228, null}
!228 = metadata !{i32 786443, metadata !152, i32 69, i32 20, metadata !57, i32 22} ; [ DW_TAG_lexical_block ]
!229 = metadata !{i32 72, i32 24, metadata !230, null}
!230 = metadata !{i32 786443, metadata !152, i32 72, i32 20, metadata !57, i32 24} ; [ DW_TAG_lexical_block ]
!231 = metadata !{i32 70, i32 7, metadata !232, null}
!232 = metadata !{i32 786443, metadata !228, i32 70, i32 7, metadata !57, i32 23} ; [ DW_TAG_lexical_block ]
!233 = metadata !{i32 69, i32 35, metadata !228, null}
!234 = metadata !{i32 75, i32 24, metadata !235, null}
!235 = metadata !{i32 786443, metadata !152, i32 75, i32 20, metadata !57, i32 26} ; [ DW_TAG_lexical_block ]
!236 = metadata !{i32 73, i32 7, metadata !237, null}
!237 = metadata !{i32 786443, metadata !230, i32 73, i32 7, metadata !57, i32 25} ; [ DW_TAG_lexical_block ]
!238 = metadata !{i32 72, i32 35, metadata !230, null}
!239 = metadata !{i32 76, i32 7, metadata !240, null}
!240 = metadata !{i32 786443, metadata !235, i32 76, i32 7, metadata !57, i32 27} ; [ DW_TAG_lexical_block ]
!241 = metadata !{i32 75, i32 35, metadata !235, null}
!242 = metadata !{i32 87, i32 1, metadata !145, null}
!243 = metadata !{i32 786689, metadata !244, metadata !"buf", null, i32 270, metadata !247, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!244 = metadata !{i32 786478, i32 0, metadata !43, metadata !"aes_mixColumns_inv", metadata !"aes_mixColumns_inv", metadata !"", metadata !43, i32 270, metadata !245, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !71, i32 271} ; [ DW_TAG_subprogram ]
!245 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !246, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!246 = metadata !{null, metadata !187}
!247 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !46, metadata !74, i32 0, i32 0} ; [ DW_TAG_array_type ]
!248 = metadata !{i32 270, i32 34, metadata !244, null}
!249 = metadata !{i32 274, i32 10, metadata !250, null}
!250 = metadata !{i32 786443, metadata !251, i32 274, i32 5, metadata !43, i32 13} ; [ DW_TAG_lexical_block ]
!251 = metadata !{i32 786443, metadata !244, i32 271, i32 1, metadata !43, i32 12} ; [ DW_TAG_lexical_block ]
!252 = metadata !{i32 276, i32 9, metadata !253, null}
!253 = metadata !{i32 786443, metadata !250, i32 275, i32 5, metadata !43, i32 14} ; [ DW_TAG_lexical_block ]
!254 = metadata !{i32 786688, metadata !251, metadata !"a", metadata !43, i32 272, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!255 = metadata !{i32 277, i32 9, metadata !253, null}
!256 = metadata !{i32 786688, metadata !251, metadata !"b", metadata !43, i32 272, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!257 = metadata !{i32 278, i32 9, metadata !253, null}
!258 = metadata !{i32 786688, metadata !251, metadata !"c", metadata !43, i32 272, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!259 = metadata !{i32 279, i32 9, metadata !253, null}
!260 = metadata !{i32 786688, metadata !251, metadata !"d", metadata !43, i32 272, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!261 = metadata !{i32 280, i32 9, metadata !253, null}
!262 = metadata !{i32 786688, metadata !251, metadata !"e", metadata !43, i32 272, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!263 = metadata !{i32 786689, metadata !264, metadata !"x", metadata !43, i32 16777403, metadata !46, i32 0, metadata !267} ; [ DW_TAG_arg_variable ]
!264 = metadata !{i32 786478, i32 0, metadata !43, metadata !"rj_xtime", metadata !"rj_xtime", metadata !"", metadata !43, i32 187, metadata !265, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !71, i32 188} ; [ DW_TAG_subprogram ]
!265 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !266, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!266 = metadata !{metadata !46, metadata !46}
!267 = metadata !{i32 281, i32 13, metadata !253, null}
!268 = metadata !{i32 187, i32 33, metadata !264, metadata !267}
!269 = metadata !{i32 189, i32 34, metadata !270, metadata !267}
!270 = metadata !{i32 786443, metadata !264, i32 188, i32 1, metadata !43, i32 15} ; [ DW_TAG_lexical_block ]
!271 = metadata !{i32 786688, metadata !270, metadata !"y", metadata !43, i32 189, metadata !46, i32 0, metadata !267} ; [ DW_TAG_auto_variable ]
!272 = metadata !{i32 190, i32 5, metadata !270, metadata !267}
!273 = metadata !{i32 786688, metadata !251, metadata !"z", metadata !43, i32 272, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!274 = metadata !{i32 282, i32 26, metadata !253, null}
!275 = metadata !{i32 786689, metadata !264, metadata !"x", metadata !43, i32 16777403, metadata !46, i32 0, metadata !274} ; [ DW_TAG_arg_variable ]
!276 = metadata !{i32 187, i32 33, metadata !264, metadata !274}
!277 = metadata !{i32 189, i32 34, metadata !270, metadata !274}
!278 = metadata !{i32 786688, metadata !270, metadata !"y", metadata !43, i32 189, metadata !46, i32 0, metadata !274} ; [ DW_TAG_auto_variable ]
!279 = metadata !{i32 190, i32 5, metadata !270, metadata !274}
!280 = metadata !{i32 786688, metadata !251, metadata !"x", metadata !43, i32 272, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!281 = metadata !{i32 283, i32 26, metadata !253, null}
!282 = metadata !{i32 786689, metadata !264, metadata !"x", metadata !43, i32 16777403, metadata !46, i32 0, metadata !281} ; [ DW_TAG_arg_variable ]
!283 = metadata !{i32 187, i32 33, metadata !264, metadata !281}
!284 = metadata !{i32 189, i32 34, metadata !270, metadata !281}
!285 = metadata !{i32 786688, metadata !270, metadata !"y", metadata !43, i32 189, metadata !46, i32 0, metadata !281} ; [ DW_TAG_auto_variable ]
!286 = metadata !{i32 190, i32 5, metadata !270, metadata !281}
!287 = metadata !{i32 786688, metadata !251, metadata !"y", metadata !43, i32 272, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!288 = metadata !{i32 786689, metadata !264, metadata !"x", metadata !43, i32 16777403, metadata !46, i32 0, metadata !289} ; [ DW_TAG_arg_variable ]
!289 = metadata !{i32 284, i32 23, metadata !253, null}
!290 = metadata !{i32 187, i32 33, metadata !264, metadata !289}
!291 = metadata !{i32 189, i32 34, metadata !270, metadata !289}
!292 = metadata !{i32 786688, metadata !270, metadata !"y", metadata !43, i32 189, metadata !46, i32 0, metadata !289} ; [ DW_TAG_auto_variable ]
!293 = metadata !{i32 190, i32 5, metadata !270, metadata !289}
!294 = metadata !{i32 285, i32 27, metadata !253, null}
!295 = metadata !{i32 786689, metadata !264, metadata !"x", metadata !43, i32 16777403, metadata !46, i32 0, metadata !294} ; [ DW_TAG_arg_variable ]
!296 = metadata !{i32 187, i32 33, metadata !264, metadata !294}
!297 = metadata !{i32 189, i32 34, metadata !270, metadata !294}
!298 = metadata !{i32 786688, metadata !270, metadata !"y", metadata !43, i32 189, metadata !46, i32 0, metadata !294} ; [ DW_TAG_auto_variable ]
!299 = metadata !{i32 190, i32 5, metadata !270, metadata !294}
!300 = metadata !{i32 286, i32 27, metadata !253, null}
!301 = metadata !{i32 786689, metadata !264, metadata !"x", metadata !43, i32 16777403, metadata !46, i32 0, metadata !300} ; [ DW_TAG_arg_variable ]
!302 = metadata !{i32 187, i32 33, metadata !264, metadata !300}
!303 = metadata !{i32 189, i32 34, metadata !270, metadata !300}
!304 = metadata !{i32 786688, metadata !270, metadata !"y", metadata !43, i32 189, metadata !46, i32 0, metadata !300} ; [ DW_TAG_auto_variable ]
!305 = metadata !{i32 190, i32 5, metadata !270, metadata !300}
!306 = metadata !{i32 287, i32 27, metadata !253, null}
!307 = metadata !{i32 786689, metadata !264, metadata !"x", metadata !43, i32 16777403, metadata !46, i32 0, metadata !306} ; [ DW_TAG_arg_variable ]
!308 = metadata !{i32 187, i32 33, metadata !264, metadata !306}
!309 = metadata !{i32 189, i32 34, metadata !270, metadata !306}
!310 = metadata !{i32 786688, metadata !270, metadata !"y", metadata !43, i32 189, metadata !46, i32 0, metadata !306} ; [ DW_TAG_auto_variable ]
!311 = metadata !{i32 190, i32 5, metadata !270, metadata !306}
!312 = metadata !{i32 274, i32 25, metadata !250, null}
!313 = metadata !{i32 786688, metadata !251, metadata !"i", metadata !43, i32 272, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!314 = metadata !{i32 289, i32 1, metadata !251, null}
!315 = metadata !{i32 786689, metadata !316, metadata !"k", null, i32 292, metadata !319, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!316 = metadata !{i32 786478, i32 0, metadata !43, metadata !"aes_expandEncKey", metadata !"aes_expandEncKey", metadata !"", metadata !43, i32 292, metadata !317, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !71, i32 293} ; [ DW_TAG_subprogram ]
!317 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !318, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!318 = metadata !{null, metadata !187, metadata !187}
!319 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !46, metadata !80, i32 0, i32 0} ; [ DW_TAG_array_type ]
!320 = metadata !{i32 292, i32 39, metadata !316, null}
!321 = metadata !{i32 790532, metadata !316, metadata !"rc", null, i32 292, metadata !187, i32 0, i32 0} ; [ DW_TAG_arg_variable_ro ]
!322 = metadata !{i32 292, i32 51, metadata !316, null}
!323 = metadata !{i32 296, i32 5, metadata !324, null}
!324 = metadata !{i32 786443, metadata !316, i32 293, i32 1, metadata !43, i32 28} ; [ DW_TAG_lexical_block ]
!325 = metadata !{i32 297, i32 5, metadata !324, null}
!326 = metadata !{i32 298, i32 5, metadata !324, null}
!327 = metadata !{i32 299, i32 5, metadata !324, null}
!328 = metadata !{i32 786689, metadata !264, metadata !"x", metadata !43, i32 16777403, metadata !46, i32 0, metadata !329} ; [ DW_TAG_arg_variable ]
!329 = metadata !{i32 300, i32 11, metadata !324, null}
!330 = metadata !{i32 187, i32 33, metadata !264, metadata !329}
!331 = metadata !{i32 189, i32 34, metadata !270, metadata !329}
!332 = metadata !{i32 786688, metadata !270, metadata !"y", metadata !43, i32 189, metadata !46, i32 0, metadata !329} ; [ DW_TAG_auto_variable ]
!333 = metadata !{i32 190, i32 5, metadata !270, metadata !329}
!334 = metadata !{i32 302, i32 9, metadata !335, null}
!335 = metadata !{i32 786443, metadata !324, i32 302, i32 5, metadata !43, i32 29} ; [ DW_TAG_lexical_block ]
!336 = metadata !{i32 302, i32 32, metadata !335, null}
!337 = metadata !{i32 302, i32 24, metadata !335, null}
!338 = metadata !{i32 786688, metadata !324, metadata !"i", metadata !43, i32 294, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!339 = metadata !{i32 304, i32 5, metadata !324, null}
!340 = metadata !{i32 305, i32 5, metadata !324, null}
!341 = metadata !{i32 306, i32 5, metadata !324, null}
!342 = metadata !{i32 307, i32 5, metadata !324, null}
!343 = metadata !{i32 309, i32 9, metadata !344, null}
!344 = metadata !{i32 786443, metadata !324, i32 309, i32 5, metadata !43, i32 30} ; [ DW_TAG_lexical_block ]
!345 = metadata !{i32 309, i32 33, metadata !344, null}
!346 = metadata !{i32 309, i32 25, metadata !344, null}
!347 = metadata !{i32 312, i32 1, metadata !324, null}
!348 = metadata !{i32 790532, metadata !349, metadata !"rc", null, i32 315, metadata !187, i32 0, i32 0} ; [ DW_TAG_arg_variable_ro ]
!349 = metadata !{i32 786478, i32 0, metadata !43, metadata !"aes_expandDecKey", metadata !"aes_expandDecKey", metadata !"", metadata !43, i32 315, metadata !317, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !71, i32 316} ; [ DW_TAG_subprogram ]
!350 = metadata !{i32 315, i32 44, metadata !349, null}
!351 = metadata !{i32 319, i32 9, metadata !352, null}
!352 = metadata !{i32 786443, metadata !353, i32 319, i32 5, metadata !43, i32 17} ; [ DW_TAG_lexical_block ]
!353 = metadata !{i32 786443, metadata !349, i32 316, i32 1, metadata !43, i32 16} ; [ DW_TAG_lexical_block ]
!354 = metadata !{i32 319, i32 33, metadata !352, null}
!355 = metadata !{i32 319, i32 25, metadata !352, null}
!356 = metadata !{i32 786688, metadata !353, metadata !"i", metadata !43, i32 317, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!357 = metadata !{i32 322, i32 5, metadata !353, null}
!358 = metadata !{i32 323, i32 5, metadata !353, null}
!359 = metadata !{i32 324, i32 5, metadata !353, null}
!360 = metadata !{i32 325, i32 5, metadata !353, null}
!361 = metadata !{i32 327, i32 9, metadata !362, null}
!362 = metadata !{i32 786443, metadata !353, i32 327, i32 5, metadata !43, i32 18} ; [ DW_TAG_lexical_block ]
!363 = metadata !{i32 327, i32 32, metadata !362, null}
!364 = metadata !{i32 327, i32 24, metadata !362, null}
!365 = metadata !{i32 330, i32 5, metadata !353, null}
!366 = metadata !{i32 331, i32 5, metadata !353, null}
!367 = metadata !{i32 332, i32 5, metadata !353, null}
!368 = metadata !{i32 333, i32 5, metadata !353, null}
!369 = metadata !{i32 334, i32 5, metadata !353, null}
!370 = metadata !{i32 790534, metadata !349, metadata !"rc", null, i32 315, metadata !187, i32 0, i32 0} ; [ DW_TAG_arg_variable_wo ]
!371 = metadata !{i32 335, i32 1, metadata !353, null}
!372 = metadata !{i32 786689, metadata !373, metadata !"buf", null, i32 358, metadata !247, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!373 = metadata !{i32 786478, i32 0, metadata !43, metadata !"aes_encrypt_ecb", metadata !"aes_encrypt_ecb", metadata !"", metadata !43, i32 358, metadata !177, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !71, i32 359} ; [ DW_TAG_subprogram ]
!374 = metadata !{i32 358, i32 49, metadata !373, null}
!375 = metadata !{i32 786689, metadata !376, metadata !"buf", null, i32 218, metadata !247, i32 0, metadata !379} ; [ DW_TAG_arg_variable ]
!376 = metadata !{i32 786478, i32 0, metadata !43, metadata !"aes_addRoundKey_cpy", metadata !"aes_addRoundKey_cpy", metadata !"", metadata !43, i32 218, metadata !377, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !71, i32 219} ; [ DW_TAG_subprogram ]
!377 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !378, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!378 = metadata !{null, metadata !187, metadata !187, metadata !187}
!379 = metadata !{i32 362, i32 5, metadata !380, null}
!380 = metadata !{i32 786443, metadata !373, i32 359, i32 1, metadata !43, i32 5} ; [ DW_TAG_lexical_block ]
!381 = metadata !{i32 218, i32 42, metadata !376, metadata !379}
!382 = metadata !{i32 222, i32 5, metadata !383, metadata !379}
!383 = metadata !{i32 786443, metadata !376, i32 219, i32 1, metadata !43, i32 27} ; [ DW_TAG_lexical_block ]
!384 = metadata !{i32 786688, metadata !383, metadata !"i", metadata !43, i32 220, metadata !46, i32 0, metadata !379} ; [ DW_TAG_auto_variable ]
!385 = metadata !{i32 231, i32 5, metadata !386, metadata !388}
!386 = metadata !{i32 786443, metadata !387, i32 228, i32 1, metadata !43, i32 25} ; [ DW_TAG_lexical_block ]
!387 = metadata !{i32 786478, i32 0, metadata !43, metadata !"aes_shiftRows", metadata !"aes_shiftRows", metadata !"", metadata !43, i32 227, metadata !245, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !71, i32 228} ; [ DW_TAG_subprogram ]
!388 = metadata !{i32 366, i32 9, metadata !389, null}
!389 = metadata !{i32 786443, metadata !390, i32 364, i32 5, metadata !43, i32 7} ; [ DW_TAG_lexical_block ]
!390 = metadata !{i32 786443, metadata !380, i32 363, i32 5, metadata !43, i32 6} ; [ DW_TAG_lexical_block ]
!391 = metadata !{i32 232, i32 5, metadata !386, metadata !388}
!392 = metadata !{i32 233, i32 5, metadata !386, metadata !388}
!393 = metadata !{i32 234, i32 5, metadata !386, metadata !388}
!394 = metadata !{i32 363, i32 9, metadata !390, null}
!395 = metadata !{i32 222, i32 17, metadata !383, metadata !379}
!396 = metadata !{i32 198, i32 5, metadata !397, metadata !399}
!397 = metadata !{i32 786443, metadata !398, i32 195, i32 1, metadata !43, i32 26} ; [ DW_TAG_lexical_block ]
!398 = metadata !{i32 786478, i32 0, metadata !43, metadata !"aes_subBytes", metadata !"aes_subBytes", metadata !"", metadata !43, i32 194, metadata !245, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !71, i32 195} ; [ DW_TAG_subprogram ]
!399 = metadata !{i32 365, i32 9, metadata !389, null}
!400 = metadata !{i32 198, i32 5, metadata !397, metadata !401}
!401 = metadata !{i32 371, i32 5, metadata !380, null}
!402 = metadata !{i32 786688, metadata !397, metadata !"i", metadata !43, i32 196, metadata !46, i32 0, metadata !399} ; [ DW_TAG_auto_variable ]
!403 = metadata !{i32 198, i32 17, metadata !397, metadata !399}
!404 = metadata !{i32 786689, metadata !387, metadata !"buf", null, i32 227, metadata !247, i32 0, metadata !388} ; [ DW_TAG_arg_variable ]
!405 = metadata !{i32 227, i32 36, metadata !387, metadata !388}
!406 = metadata !{i32 786688, metadata !386, metadata !"i", metadata !43, i32 229, metadata !46, i32 0, metadata !388} ; [ DW_TAG_auto_variable ]
!407 = metadata !{i32 786688, metadata !386, metadata !"j", metadata !43, i32 229, metadata !46, i32 0, metadata !388} ; [ DW_TAG_auto_variable ]
!408 = metadata !{i32 786689, metadata !409, metadata !"buf", null, i32 251, metadata !247, i32 0, metadata !410} ; [ DW_TAG_arg_variable ]
!409 = metadata !{i32 786478, i32 0, metadata !43, metadata !"aes_mixColumns", metadata !"aes_mixColumns", metadata !"", metadata !43, i32 251, metadata !245, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !71, i32 252} ; [ DW_TAG_subprogram ]
!410 = metadata !{i32 367, i32 9, metadata !389, null}
!411 = metadata !{i32 251, i32 37, metadata !409, metadata !410}
!412 = metadata !{i32 255, i32 10, metadata !413, metadata !410}
!413 = metadata !{i32 786443, metadata !414, i32 255, i32 5, metadata !43, i32 23} ; [ DW_TAG_lexical_block ]
!414 = metadata !{i32 786443, metadata !409, i32 252, i32 1, metadata !43, i32 22} ; [ DW_TAG_lexical_block ]
!415 = metadata !{i32 257, i32 9, metadata !416, metadata !410}
!416 = metadata !{i32 786443, metadata !413, i32 256, i32 5, metadata !43, i32 24} ; [ DW_TAG_lexical_block ]
!417 = metadata !{i32 786688, metadata !414, metadata !"a", metadata !43, i32 253, metadata !46, i32 0, metadata !410} ; [ DW_TAG_auto_variable ]
!418 = metadata !{i32 258, i32 9, metadata !416, metadata !410}
!419 = metadata !{i32 786688, metadata !414, metadata !"b", metadata !43, i32 253, metadata !46, i32 0, metadata !410} ; [ DW_TAG_auto_variable ]
!420 = metadata !{i32 259, i32 9, metadata !416, metadata !410}
!421 = metadata !{i32 786688, metadata !414, metadata !"c", metadata !43, i32 253, metadata !46, i32 0, metadata !410} ; [ DW_TAG_auto_variable ]
!422 = metadata !{i32 260, i32 9, metadata !416, metadata !410}
!423 = metadata !{i32 786688, metadata !414, metadata !"d", metadata !43, i32 253, metadata !46, i32 0, metadata !410} ; [ DW_TAG_auto_variable ]
!424 = metadata !{i32 261, i32 9, metadata !416, metadata !410}
!425 = metadata !{i32 786688, metadata !414, metadata !"e", metadata !43, i32 253, metadata !46, i32 0, metadata !410} ; [ DW_TAG_auto_variable ]
!426 = metadata !{i32 786689, metadata !264, metadata !"x", metadata !43, i32 16777403, metadata !46, i32 0, metadata !427} ; [ DW_TAG_arg_variable ]
!427 = metadata !{i32 262, i32 23, metadata !416, metadata !410}
!428 = metadata !{i32 187, i32 33, metadata !264, metadata !427}
!429 = metadata !{i32 189, i32 34, metadata !270, metadata !427}
!430 = metadata !{i32 786688, metadata !270, metadata !"y", metadata !43, i32 189, metadata !46, i32 0, metadata !427} ; [ DW_TAG_auto_variable ]
!431 = metadata !{i32 190, i32 5, metadata !270, metadata !427}
!432 = metadata !{i32 263, i32 27, metadata !416, metadata !410}
!433 = metadata !{i32 786689, metadata !264, metadata !"x", metadata !43, i32 16777403, metadata !46, i32 0, metadata !432} ; [ DW_TAG_arg_variable ]
!434 = metadata !{i32 187, i32 33, metadata !264, metadata !432}
!435 = metadata !{i32 189, i32 34, metadata !270, metadata !432}
!436 = metadata !{i32 786688, metadata !270, metadata !"y", metadata !43, i32 189, metadata !46, i32 0, metadata !432} ; [ DW_TAG_auto_variable ]
!437 = metadata !{i32 190, i32 5, metadata !270, metadata !432}
!438 = metadata !{i32 264, i32 27, metadata !416, metadata !410}
!439 = metadata !{i32 786689, metadata !264, metadata !"x", metadata !43, i32 16777403, metadata !46, i32 0, metadata !438} ; [ DW_TAG_arg_variable ]
!440 = metadata !{i32 187, i32 33, metadata !264, metadata !438}
!441 = metadata !{i32 189, i32 34, metadata !270, metadata !438}
!442 = metadata !{i32 786688, metadata !270, metadata !"y", metadata !43, i32 189, metadata !46, i32 0, metadata !438} ; [ DW_TAG_auto_variable ]
!443 = metadata !{i32 190, i32 5, metadata !270, metadata !438}
!444 = metadata !{i32 265, i32 27, metadata !416, metadata !410}
!445 = metadata !{i32 786689, metadata !264, metadata !"x", metadata !43, i32 16777403, metadata !46, i32 0, metadata !444} ; [ DW_TAG_arg_variable ]
!446 = metadata !{i32 187, i32 33, metadata !264, metadata !444}
!447 = metadata !{i32 189, i32 34, metadata !270, metadata !444}
!448 = metadata !{i32 786688, metadata !270, metadata !"y", metadata !43, i32 189, metadata !46, i32 0, metadata !444} ; [ DW_TAG_auto_variable ]
!449 = metadata !{i32 190, i32 5, metadata !270, metadata !444}
!450 = metadata !{i32 255, i32 25, metadata !413, metadata !410}
!451 = metadata !{i32 786688, metadata !414, metadata !"i", metadata !43, i32 253, metadata !46, i32 0, metadata !410} ; [ DW_TAG_auto_variable ]
!452 = metadata !{i32 368, i32 9, metadata !389, null}
!453 = metadata !{i32 368, i32 21, metadata !389, null}
!454 = metadata !{i32 369, i32 14, metadata !389, null}
!455 = metadata !{i32 786688, metadata !380, metadata !"rcon", metadata !43, i32 360, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!456 = metadata !{i32 369, i32 49, metadata !389, null}
!457 = metadata !{i32 363, i32 34, metadata !390, null}
!458 = metadata !{i32 786688, metadata !380, metadata !"i", metadata !43, i32 360, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!459 = metadata !{i32 786688, metadata !397, metadata !"i", metadata !43, i32 196, metadata !46, i32 0, metadata !401} ; [ DW_TAG_auto_variable ]
!460 = metadata !{i32 198, i32 17, metadata !397, metadata !401}
!461 = metadata !{i32 786689, metadata !387, metadata !"buf", null, i32 227, metadata !247, i32 0, metadata !462} ; [ DW_TAG_arg_variable ]
!462 = metadata !{i32 372, i32 5, metadata !380, null}
!463 = metadata !{i32 227, i32 36, metadata !387, metadata !462}
!464 = metadata !{i32 231, i32 5, metadata !386, metadata !462}
!465 = metadata !{i32 786688, metadata !386, metadata !"i", metadata !43, i32 229, metadata !46, i32 0, metadata !462} ; [ DW_TAG_auto_variable ]
!466 = metadata !{i32 232, i32 5, metadata !386, metadata !462}
!467 = metadata !{i32 233, i32 5, metadata !386, metadata !462}
!468 = metadata !{i32 786688, metadata !386, metadata !"j", metadata !43, i32 229, metadata !46, i32 0, metadata !462} ; [ DW_TAG_auto_variable ]
!469 = metadata !{i32 234, i32 5, metadata !386, metadata !462}
!470 = metadata !{i32 373, i32 5, metadata !380, null}
!471 = metadata !{i32 374, i32 5, metadata !380, null}
!472 = metadata !{i32 375, i32 1, metadata !380, null}
!473 = metadata !{i32 786689, metadata !474, metadata !"buf", null, i32 378, metadata !247, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!474 = metadata !{i32 786478, i32 0, metadata !43, metadata !"aes_decrypt_ecb", metadata !"aes_decrypt_ecb", metadata !"", metadata !43, i32 378, metadata !177, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !71, i32 379} ; [ DW_TAG_subprogram ]
!475 = metadata !{i32 378, i32 49, metadata !474, null}
!476 = metadata !{i32 786689, metadata !376, metadata !"buf", null, i32 218, metadata !247, i32 0, metadata !477} ; [ DW_TAG_arg_variable ]
!477 = metadata !{i32 382, i32 5, metadata !478, null}
!478 = metadata !{i32 786443, metadata !474, i32 379, i32 1, metadata !43, i32 8} ; [ DW_TAG_lexical_block ]
!479 = metadata !{i32 218, i32 42, metadata !376, metadata !477}
!480 = metadata !{i32 222, i32 5, metadata !383, metadata !477}
!481 = metadata !{i32 786688, metadata !383, metadata !"i", metadata !43, i32 220, metadata !46, i32 0, metadata !477} ; [ DW_TAG_auto_variable ]
!482 = metadata !{i32 222, i32 17, metadata !383, metadata !477}
!483 = metadata !{i32 786689, metadata !484, metadata !"buf", null, i32 239, metadata !247, i32 0, metadata !485} ; [ DW_TAG_arg_variable ]
!484 = metadata !{i32 786478, i32 0, metadata !43, metadata !"aes_shiftRows_inv", metadata !"aes_shiftRows_inv", metadata !"", metadata !43, i32 239, metadata !245, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !71, i32 240} ; [ DW_TAG_subprogram ]
!485 = metadata !{i32 383, i32 5, metadata !478, null}
!486 = metadata !{i32 239, i32 40, metadata !484, metadata !485}
!487 = metadata !{i32 243, i32 5, metadata !488, metadata !485}
!488 = metadata !{i32 786443, metadata !484, i32 240, i32 1, metadata !43, i32 20} ; [ DW_TAG_lexical_block ]
!489 = metadata !{i32 786688, metadata !488, metadata !"i", metadata !43, i32 241, metadata !46, i32 0, metadata !485} ; [ DW_TAG_auto_variable ]
!490 = metadata !{i32 244, i32 5, metadata !488, metadata !485}
!491 = metadata !{i32 245, i32 5, metadata !488, metadata !485}
!492 = metadata !{i32 786688, metadata !488, metadata !"j", metadata !43, i32 241, metadata !46, i32 0, metadata !485} ; [ DW_TAG_auto_variable ]
!493 = metadata !{i32 246, i32 5, metadata !488, metadata !485}
!494 = metadata !{i32 786689, metadata !495, metadata !"buf", null, i32 202, metadata !247, i32 0, metadata !496} ; [ DW_TAG_arg_variable ]
!495 = metadata !{i32 786478, i32 0, metadata !43, metadata !"aes_subBytes_inv", metadata !"aes_subBytes_inv", metadata !"", metadata !43, i32 202, metadata !245, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !71, i32 203} ; [ DW_TAG_subprogram ]
!496 = metadata !{i32 384, i32 5, metadata !478, null}
!497 = metadata !{i32 202, i32 39, metadata !495, metadata !496}
!498 = metadata !{i32 206, i32 5, metadata !499, metadata !496}
!499 = metadata !{i32 786443, metadata !495, i32 203, i32 1, metadata !43, i32 19} ; [ DW_TAG_lexical_block ]
!500 = metadata !{i32 786688, metadata !499, metadata !"i", metadata !43, i32 204, metadata !46, i32 0, metadata !496} ; [ DW_TAG_auto_variable ]
!501 = metadata !{i32 386, i32 10, metadata !502, null}
!502 = metadata !{i32 786443, metadata !478, i32 386, i32 5, metadata !43, i32 9} ; [ DW_TAG_lexical_block ]
!503 = metadata !{i32 206, i32 17, metadata !499, metadata !496}
!504 = metadata !{i32 786688, metadata !478, metadata !"i", metadata !43, i32 380, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!505 = metadata !{i32 388, i32 9, metadata !506, null}
!506 = metadata !{i32 786443, metadata !502, i32 387, i32 5, metadata !43, i32 10} ; [ DW_TAG_lexical_block ]
!507 = metadata !{i32 390, i32 13, metadata !508, null}
!508 = metadata !{i32 786443, metadata !506, i32 389, i32 9, metadata !43, i32 11} ; [ DW_TAG_lexical_block ]
!509 = metadata !{i32 786688, metadata !478, metadata !"rcon", metadata !43, i32 380, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!510 = metadata !{i32 391, i32 13, metadata !508, null}
!511 = metadata !{i32 392, i32 9, metadata !508, null}
!512 = metadata !{i32 393, i32 14, metadata !506, null}
!513 = metadata !{i32 394, i32 9, metadata !506, null}
!514 = metadata !{i32 786689, metadata !484, metadata !"buf", null, i32 239, metadata !247, i32 0, metadata !515} ; [ DW_TAG_arg_variable ]
!515 = metadata !{i32 395, i32 9, metadata !506, null}
!516 = metadata !{i32 239, i32 40, metadata !484, metadata !515}
!517 = metadata !{i32 243, i32 5, metadata !488, metadata !515}
!518 = metadata !{i32 786688, metadata !488, metadata !"i", metadata !43, i32 241, metadata !46, i32 0, metadata !515} ; [ DW_TAG_auto_variable ]
!519 = metadata !{i32 244, i32 5, metadata !488, metadata !515}
!520 = metadata !{i32 245, i32 5, metadata !488, metadata !515}
!521 = metadata !{i32 786688, metadata !488, metadata !"j", metadata !43, i32 241, metadata !46, i32 0, metadata !515} ; [ DW_TAG_auto_variable ]
!522 = metadata !{i32 246, i32 5, metadata !488, metadata !515}
!523 = metadata !{i32 786689, metadata !495, metadata !"buf", null, i32 202, metadata !247, i32 0, metadata !524} ; [ DW_TAG_arg_variable ]
!524 = metadata !{i32 396, i32 9, metadata !506, null}
!525 = metadata !{i32 202, i32 39, metadata !495, metadata !524}
!526 = metadata !{i32 206, i32 5, metadata !499, metadata !524}
!527 = metadata !{i32 786688, metadata !499, metadata !"i", metadata !43, i32 204, metadata !46, i32 0, metadata !524} ; [ DW_TAG_auto_variable ]
!528 = metadata !{i32 206, i32 17, metadata !499, metadata !524}
!529 = metadata !{i32 397, i32 5, metadata !506, null}
!530 = metadata !{i32 398, i32 5, metadata !478, null}
!531 = metadata !{i32 399, i32 1, metadata !478, null}
!532 = metadata !{i32 786689, metadata !533, metadata !"buf", null, i32 210, metadata !247, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!533 = metadata !{i32 786478, i32 0, metadata !43, metadata !"aes_addRoundKey", metadata !"aes_addRoundKey", metadata !"", metadata !43, i32 210, metadata !317, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !71, i32 211} ; [ DW_TAG_subprogram ]
!534 = metadata !{i32 210, i32 38, metadata !533, null}
!535 = metadata !{i32 786689, metadata !533, metadata !"key", null, i32 210, metadata !319, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!536 = metadata !{i32 210, i32 52, metadata !533, null}
!537 = metadata !{i32 214, i32 5, metadata !538, null}
!538 = metadata !{i32 786443, metadata !533, i32 211, i32 1, metadata !43, i32 21} ; [ DW_TAG_lexical_block ]
!539 = metadata !{i32 786688, metadata !538, metadata !"i", metadata !43, i32 212, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!540 = metadata !{i32 214, i32 17, metadata !538, null}
!541 = metadata !{i32 215, i32 1, metadata !538, null}
