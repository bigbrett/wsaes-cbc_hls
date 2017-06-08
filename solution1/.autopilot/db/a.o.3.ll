; ModuleID = '/home/brett/Thesis/Vivado_WS/aescbc/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xorv = internal unnamed_addr global [16 x i8] zeroinitializer, align 16 ; [#uses=5 type=[16 x i8]*]
@sboxinv = internal unnamed_addr constant [256 x i8] c"R\09j\D506\A58\BF@\A3\9E\81\F3\D7\FB|\E39\82\9B/\FF\874\8ECD\C4\DE\E9\CBT{\942\A6\C2#=\EEL\95\0BB\FA\C3N\08.\A1f(\D9$\B2v[\A2Im\8B\D1%r\F8\F6d\86h\98\16\D4\A4\5C\CC]e\B6\92lpHP\FD\ED\B9\DA^\15FW\A7\8D\9D\84\90\D8\AB\00\8C\BC\D3\0A\F7\E4X\05\B8\B3E\06\D0,\1E\8F\CA?\0F\02\C1\AF\BD\03\01\13\8Ak:\91\11AOg\DC\EA\97\F2\CF\CE\F0\B4\E6s\96\ACt\22\E7\AD5\85\E2\F97\E8\1Cu\DFnG\F1\1Aq\1D)\C5\89o\B7b\0E\AA\18\BE\1B\FCV>K\C6\D2y \9A\DB\C0\FEx\CDZ\F4\1F\DD\A83\88\07\C71\B1\12\10Y'\80\EC_`Q\7F\A9\19\B5J\0D-\E5z\9F\93\C9\9C\EF\A0\E0;M\AE*\F5\B0\C8\EB\BB<\83S\99a\17+\04~\BAw\D6&\E1i\14cU!\0C}", align 16 ; [#uses=2 type=[256 x i8]*]
@sbox = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 16 ; [#uses=18 type=[256 x i8]*]
@lastbuf = internal unnamed_addr global [16 x i8] zeroinitializer, align 16 ; [#uses=2 type=[16 x i8]*]
@key = internal unnamed_addr global [32 x i8] zeroinitializer, align 16 ; [#uses=2 type=[32 x i8]*]
@iv = internal unnamed_addr global [16 x i8] zeroinitializer, align 16 ; [#uses=2 type=[16 x i8]*]
@ctx_key = internal global [32 x i8] zeroinitializer ; [#uses=44 type=[32 x i8]*]
@ctx_enckey = internal unnamed_addr global [32 x i8] zeroinitializer ; [#uses=3 type=[32 x i8]*]
@ctx_deckey = internal global [32 x i8] zeroinitializer ; [#uses=4 type=[32 x i8]*]
@aescbc_str = internal unnamed_addr constant [7 x i8] c"aescbc\00" ; [#uses=1 type=[7 x i8]*]
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00" ; [#uses=4 type=[7 x i8]*]
@p_str9 = private unnamed_addr constant [14 x i8] c"aescbc_label0\00", align 1 ; [#uses=1 type=[14 x i8]*]
@p_str8 = private unnamed_addr constant [14 x i8] c"aescbc_label9\00", align 1 ; [#uses=1 type=[14 x i8]*]
@p_str7 = private unnamed_addr constant [14 x i8] c"aescbc_label7\00", align 1 ; [#uses=1 type=[14 x i8]*]
@p_str6 = private unnamed_addr constant [14 x i8] c"aescbc_label1\00", align 1 ; [#uses=1 type=[14 x i8]*]
@p_str5 = private unnamed_addr constant [15 x i8] c"aescbc_label11\00", align 1 ; [#uses=1 type=[15 x i8]*]
@p_str4 = private unnamed_addr constant [15 x i8] c"aescbc_label10\00", align 1 ; [#uses=1 type=[15 x i8]*]
@p_str3 = private unnamed_addr constant [14 x i8] c"aescbc_label4\00", align 1 ; [#uses=1 type=[14 x i8]*]
@p_str2 = private unnamed_addr constant [15 x i8] c"aescbc_label12\00", align 1 ; [#uses=1 type=[15 x i8]*]
@p_str18 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=7 type=[1 x i8]*]
@p_str17 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=7 type=[1 x i8]*]
@p_str16 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=7 type=[1 x i8]*]
@p_str15 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=7 type=[1 x i8]*]
@p_str14 = private unnamed_addr constant [14 x i8] c"aescbc_label6\00", align 1 ; [#uses=1 type=[14 x i8]*]
@p_str13 = private unnamed_addr constant [14 x i8] c"aescbc_label8\00", align 1 ; [#uses=1 type=[14 x i8]*]
@p_str12 = private unnamed_addr constant [14 x i8] c"aescbc_label5\00", align 1 ; [#uses=1 type=[14 x i8]*]
@p_str11 = private unnamed_addr constant [14 x i8] c"aescbc_label3\00", align 1 ; [#uses=1 type=[14 x i8]*]
@p_str10 = private unnamed_addr constant [14 x i8] c"aescbc_label2\00", align 1 ; [#uses=1 type=[14 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=36 type=[1 x i8]*]
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=6 type=[10 x i8]*]

; [#uses=1]
declare i8 @llvm.part.select.i8(i8, i32, i32) nounwind readnone

; [#uses=131]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=3]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @aescbc([16 x i8]* %data_in, [16 x i8]* %data_out, i3 zeroext %mode, [32 x i8]* %key_in, [16 x i8]* %iv_in) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([16 x i8]* %data_in) nounwind, !map !39
  call void (...)* @_ssdm_op_SpecBitsMap([16 x i8]* %data_out) nounwind, !map !45
  call void (...)* @_ssdm_op_SpecBitsMap(i3 %mode) nounwind, !map !49
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %key_in) nounwind, !map !55
  call void (...)* @_ssdm_op_SpecBitsMap([16 x i8]* %iv_in) nounwind, !map !61
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @aescbc_str) nounwind
  %mode_read = call i3 @_ssdm_op_Read.s_axilite.i3(i3 %mode) nounwind ; [#uses=1 type=i3]
  call void @llvm.dbg.value(metadata !{i3 %mode_read}, i64 0, metadata !65), !dbg !84 ; [debug line = 10:20] [debug variable = mode]
  %buf = alloca [16 x i8], align 16               ; [#uses=10 type=[16 x i8]*]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %data_in}, i64 0, metadata !85), !dbg !89 ; [debug line = 8:21] [debug variable = data_in]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %data_out}, i64 0, metadata !90), !dbg !91 ; [debug line = 9:12] [debug variable = data_out]
  call void @llvm.dbg.value(metadata !{i3 %mode}, i64 0, metadata !65), !dbg !84 ; [debug line = 10:20] [debug variable = mode]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %key_in}, i64 0, metadata !92), !dbg !96 ; [debug line = 11:12] [debug variable = key_in]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %iv_in}, i64 0, metadata !97), !dbg !98 ; [debug line = 12:12] [debug variable = iv_in]
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %key_in, [1 x i8]* @p_str17, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str17, i32 -1, [1 x i8]* @p_str17, [1 x i8]* @p_str17, [1 x i8]* @p_str17, [1 x i8]* @p_str17, [1 x i8]* @p_str17) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %key_in, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 32, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty_5 = call i32 (...)* @_ssdm_op_SpecMemCore([16 x i8]* %iv_in, [1 x i8]* @p_str18, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str18, i32 -1, [1 x i8]* @p_str18, [1 x i8]* @p_str18, [1 x i8]* @p_str18, [1 x i8]* @p_str18, [1 x i8]* @p_str18) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %iv_in, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty_6 = call i32 (...)* @_ssdm_op_SpecMemCore([16 x i8]* %data_in, [1 x i8]* @p_str15, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str15, i32 -1, [1 x i8]* @p_str15, [1 x i8]* @p_str15, [1 x i8]* @p_str15, [1 x i8]* @p_str15, [1 x i8]* @p_str15) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %data_in, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty_7 = call i32 (...)* @_ssdm_op_SpecMemCore([16 x i8]* %data_out, [1 x i8]* @p_str16, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str16, i32 -1, [1 x i8]* @p_str16, [1 x i8]* @p_str16, [1 x i8]* @p_str16, [1 x i8]* @p_str16, [1 x i8]* @p_str16) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %data_out, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i3 %mode, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !99 ; [debug line = 18:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !101 ; [debug line = 19:1]
  call void @llvm.dbg.declare(metadata !{[16 x i8]* %buf}, metadata !102), !dbg !104 ; [debug line = 21:10] [debug variable = buf]
  switch i3 %mode_read, label %.loopexit [
    i3 0, label %.preheader11.preheader
    i3 1, label %.preheader7.preheader
    i3 2, label %.preheader3.preheader
  ], !dbg !105                                    ; [debug line = 29:5]

.preheader11.preheader:                           ; preds = %0
  br label %.preheader11, !dbg !106               ; [debug line = 32:25]

.preheader7.preheader:                            ; preds = %0
  br label %.preheader7, !dbg !109                ; [debug line = 45:25]

.preheader3.preheader:                            ; preds = %0
  br label %.preheader3, !dbg !111                ; [debug line = 61:24]

.preheader11:                                     ; preds = %1, %.preheader11.preheader
  %i = phi i5 [ %i_12, %1 ], [ 0, %.preheader11.preheader ] ; [#uses=3 type=i5]
  %tmp_3 = icmp eq i5 %i, -16, !dbg !106          ; [#uses=1 type=i1] [debug line = 32:25]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_12 = add i5 %i, 1, !dbg !113                 ; [#uses=1 type=i5] [debug line = 32:36]
  br i1 %tmp_3, label %.preheader10.preheader, label %1, !dbg !106 ; [debug line = 32:25]

.preheader10.preheader:                           ; preds = %.preheader11
  br label %.preheader10, !dbg !114               ; [debug line = 34:21]

; <label>:1                                       ; preds = %.preheader11
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str2) nounwind, !dbg !116 ; [debug line = 33:7]
  %tmp_6 = zext i5 %i to i64, !dbg !116           ; [#uses=1 type=i64] [debug line = 33:7]
  %data_out_addr = getelementptr [16 x i8]* %data_out, i64 0, i64 %tmp_6, !dbg !116 ; [#uses=1 type=i8*] [debug line = 33:7]
  store i8 0, i8* %data_out_addr, align 1, !dbg !116 ; [debug line = 33:7]
  call void @llvm.dbg.value(metadata !{i5 %i_12}, i64 0, metadata !118), !dbg !113 ; [debug line = 32:36] [debug variable = i]
  br label %.preheader11, !dbg !113               ; [debug line = 32:36]

.preheader10:                                     ; preds = %2, %.preheader10.preheader
  %i_1 = phi i6 [ %i_15, %2 ], [ 0, %.preheader10.preheader ] ; [#uses=3 type=i6]
  %tmp_1 = icmp eq i6 %i_1, -32, !dbg !114        ; [#uses=1 type=i1] [debug line = 34:21]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  %i_15 = add i6 %i_1, 1, !dbg !119               ; [#uses=1 type=i6] [debug line = 34:32]
  br i1 %tmp_1, label %.preheader9.preheader, label %2, !dbg !114 ; [debug line = 34:21]

.preheader9.preheader:                            ; preds = %.preheader10
  br label %.preheader9, !dbg !120                ; [debug line = 36:25]

; <label>:2                                       ; preds = %.preheader10
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str3) nounwind, !dbg !122 ; [debug line = 35:4]
  %tmp_9 = zext i6 %i_1 to i64, !dbg !122         ; [#uses=2 type=i64] [debug line = 35:4]
  %key_in_addr = getelementptr [32 x i8]* %key_in, i64 0, i64 %tmp_9, !dbg !122 ; [#uses=1 type=i8*] [debug line = 35:4]
  %key_in_load = load i8* %key_in_addr, align 1, !dbg !122 ; [#uses=1 type=i8] [debug line = 35:4]
  %key_addr = getelementptr inbounds [32 x i8]* @key, i64 0, i64 %tmp_9, !dbg !122 ; [#uses=1 type=i8*] [debug line = 35:4]
  store i8 %key_in_load, i8* %key_addr, align 1, !dbg !122 ; [debug line = 35:4]
  call void @llvm.dbg.value(metadata !{i6 %i_15}, i64 0, metadata !118), !dbg !119 ; [debug line = 34:32] [debug variable = i]
  br label %.preheader10, !dbg !119               ; [debug line = 34:32]

.preheader9:                                      ; preds = %3, %.preheader9.preheader
  %i_2 = phi i5 [ %i_18, %3 ], [ 0, %.preheader9.preheader ] ; [#uses=3 type=i5]
  %tmp_13 = icmp eq i5 %i_2, -16, !dbg !120       ; [#uses=1 type=i1] [debug line = 36:25]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_18 = add i5 %i_2, 1, !dbg !124               ; [#uses=1 type=i5] [debug line = 36:36]
  br i1 %tmp_13, label %.preheader8.preheader, label %3, !dbg !120 ; [debug line = 36:25]

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8, !dbg !125                ; [debug line = 38:25]

; <label>:3                                       ; preds = %.preheader9
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str4) nounwind, !dbg !127 ; [debug line = 37:7]
  %tmp_16 = zext i5 %i_2 to i64, !dbg !127        ; [#uses=2 type=i64] [debug line = 37:7]
  %iv_in_addr = getelementptr [16 x i8]* %iv_in, i64 0, i64 %tmp_16, !dbg !127 ; [#uses=1 type=i8*] [debug line = 37:7]
  %iv_in_load = load i8* %iv_in_addr, align 1, !dbg !127 ; [#uses=1 type=i8] [debug line = 37:7]
  %iv_addr = getelementptr inbounds [16 x i8]* @iv, i64 0, i64 %tmp_16, !dbg !127 ; [#uses=1 type=i8*] [debug line = 37:7]
  store i8 %iv_in_load, i8* %iv_addr, align 1, !dbg !127 ; [debug line = 37:7]
  call void @llvm.dbg.value(metadata !{i5 %i_18}, i64 0, metadata !118), !dbg !124 ; [debug line = 36:36] [debug variable = i]
  br label %.preheader9, !dbg !124                ; [debug line = 36:36]

.preheader8:                                      ; preds = %4, %.preheader8.preheader
  %i_3 = phi i5 [ %i_21, %4 ], [ 0, %.preheader8.preheader ] ; [#uses=3 type=i5]
  %tmp_20 = icmp eq i5 %i_3, -16, !dbg !125       ; [#uses=1 type=i1] [debug line = 38:25]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_21 = add i5 %i_3, 1, !dbg !129               ; [#uses=1 type=i5] [debug line = 38:36]
  br i1 %tmp_20, label %.preheader24.preheader, label %4, !dbg !125 ; [debug line = 38:25]

.preheader24.preheader:                           ; preds = %.preheader8
  br label %.preheader24, !dbg !130               ; [debug line = 344:10@40:6]

; <label>:4                                       ; preds = %.preheader8
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str5) nounwind, !dbg !149 ; [debug line = 39:7]
  %tmp_23 = zext i5 %i_3 to i64, !dbg !149        ; [#uses=2 type=i64] [debug line = 39:7]
  %iv_addr_1 = getelementptr inbounds [16 x i8]* @iv, i64 0, i64 %tmp_23, !dbg !149 ; [#uses=1 type=i8*] [debug line = 39:7]
  %iv_load = load i8* %iv_addr_1, align 1, !dbg !149 ; [#uses=1 type=i8] [debug line = 39:7]
  %xorv_addr_3 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_23, !dbg !149 ; [#uses=1 type=i8*] [debug line = 39:7]
  store i8 %iv_load, i8* %xorv_addr_3, align 1, !dbg !149 ; [debug line = 39:7]
  call void @llvm.dbg.value(metadata !{i5 %i_21}, i64 0, metadata !118), !dbg !129 ; [debug line = 38:36] [debug variable = i]
  br label %.preheader8, !dbg !129                ; [debug line = 38:36]

.preheader24:                                     ; preds = %5, %.preheader24.preheader
  %i_i = phi i6 [ %i_25, %5 ], [ 0, %.preheader24.preheader ] ; [#uses=3 type=i6]
  %tmp_i = icmp eq i6 %i_i, -32, !dbg !130        ; [#uses=1 type=i1] [debug line = 344:10@40:6]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  %i_25 = add i6 %i_i, 1, !dbg !151               ; [#uses=1 type=i6] [debug line = 344:39@40:6]
  br i1 %tmp_i, label %.preheader.i.preheader, label %5, !dbg !130 ; [debug line = 344:10@40:6]

.preheader.i.preheader:                           ; preds = %.preheader24
  br label %.preheader.i, !dbg !152               ; [debug line = 345:10@40:6]

; <label>:5                                       ; preds = %.preheader24
  %tmp_i_13 = zext i6 %i_i to i64, !dbg !154      ; [#uses=3 type=i64] [debug line = 344:44@40:6]
  %key_addr_1 = getelementptr [32 x i8]* @key, i64 0, i64 %tmp_i_13, !dbg !154 ; [#uses=1 type=i8*] [debug line = 344:44@40:6]
  %key_load = load i8* %key_addr_1, align 1, !dbg !154 ; [#uses=2 type=i8] [debug line = 344:44@40:6]
  %ctx_deckey_addr = getelementptr [32 x i8]* @ctx_deckey, i64 0, i64 %tmp_i_13, !dbg !154 ; [#uses=1 type=i8*] [debug line = 344:44@40:6]
  store i8 %key_load, i8* %ctx_deckey_addr, align 1, !dbg !154 ; [debug line = 344:44@40:6]
  %ctx_enckey_addr = getelementptr [32 x i8]* @ctx_enckey, i64 0, i64 %tmp_i_13, !dbg !154 ; [#uses=1 type=i8*] [debug line = 344:44@40:6]
  store i8 %key_load, i8* %ctx_enckey_addr, align 1, !dbg !154 ; [debug line = 344:44@40:6]
  call void @llvm.dbg.value(metadata !{i6 %i_25}, i64 0, metadata !155) nounwind, !dbg !151 ; [debug line = 344:39@40:6] [debug variable = i]
  br label %.preheader24, !dbg !151               ; [debug line = 344:39@40:6]

.preheader.i:                                     ; preds = %6, %.preheader.i.preheader
  %rcon_i = phi i8 [ %rcon, %6 ], [ 1, %.preheader.i.preheader ] ; [#uses=1 type=i8]
  %i_26 = phi i3 [ %phitmp_i, %6 ], [ -1, %.preheader.i.preheader ] ; [#uses=2 type=i3]
  call void @llvm.dbg.value(metadata !{i3 %i_26}, i64 0, metadata !155) nounwind, !dbg !152 ; [debug line = 345:10@40:6] [debug variable = i]
  %tmp_86_i = icmp eq i3 %i_26, 0, !dbg !152      ; [#uses=1 type=i1] [debug line = 345:10@40:6]
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) nounwind ; [#uses=0 type=i32]
  br i1 %tmp_86_i, label %.loopexit.loopexit9, label %6, !dbg !152 ; [debug line = 345:10@40:6]

; <label>:6                                       ; preds = %.preheader.i
  %rcon = call fastcc i8 @aes_expandEncKey([32 x i8]* @ctx_deckey, i8 %rcon_i) nounwind, !dbg !156 ; [#uses=1 type=i8] [debug line = 345:23@40:6]
  call void @llvm.dbg.value(metadata !{i8 %rcon}, i64 0, metadata !157) nounwind, !dbg !156 ; [debug line = 345:23@40:6] [debug variable = rcon]
  %phitmp_i = add i3 %i_26, -1, !dbg !156         ; [#uses=1 type=i3] [debug line = 345:23@40:6]
  br label %.preheader.i, !dbg !156               ; [debug line = 345:23@40:6]

.preheader7:                                      ; preds = %7, %.preheader7.preheader
  %i_4 = phi i5 [ %i_13, %7 ], [ 0, %.preheader7.preheader ] ; [#uses=3 type=i5]
  %tmp_4 = icmp eq i5 %i_4, -16, !dbg !109        ; [#uses=1 type=i1] [debug line = 45:25]
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_13 = add i5 %i_4, 1, !dbg !158               ; [#uses=1 type=i5] [debug line = 45:36]
  br i1 %tmp_4, label %.preheader6.preheader, label %7, !dbg !109 ; [debug line = 45:25]

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6, !dbg !159                ; [debug line = 48:24]

; <label>:7                                       ; preds = %.preheader7
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str6) nounwind, !dbg !161 ; [debug line = 46:7]
  %tmp_8 = zext i5 %i_4 to i64, !dbg !161         ; [#uses=2 type=i64] [debug line = 46:7]
  %data_in_addr = getelementptr [16 x i8]* %data_in, i64 0, i64 %tmp_8, !dbg !161 ; [#uses=1 type=i8*] [debug line = 46:7]
  %data_in_load = load i8* %data_in_addr, align 1, !dbg !161 ; [#uses=1 type=i8] [debug line = 46:7]
  %buf_addr = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_8, !dbg !161 ; [#uses=1 type=i8*] [debug line = 46:7]
  store i8 %data_in_load, i8* %buf_addr, align 1, !dbg !161 ; [debug line = 46:7]
  call void @llvm.dbg.value(metadata !{i5 %i_13}, i64 0, metadata !118), !dbg !158 ; [debug line = 45:36] [debug variable = i]
  br label %.preheader7, !dbg !158                ; [debug line = 45:36]

.preheader6:                                      ; preds = %8, %.preheader6.preheader
  %i_5 = phi i5 [ %i_16, %8 ], [ 0, %.preheader6.preheader ] ; [#uses=3 type=i5]
  %tmp_2 = icmp eq i5 %i_5, -16, !dbg !159        ; [#uses=1 type=i1] [debug line = 48:24]
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_16 = add i5 %i_5, 1, !dbg !163               ; [#uses=1 type=i5] [debug line = 48:35]
  br i1 %tmp_2, label %9, label %8, !dbg !159     ; [debug line = 48:24]

; <label>:8                                       ; preds = %.preheader6
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str7) nounwind, !dbg !164 ; [debug line = 49:7]
  %tmp_10 = zext i5 %i_5 to i64, !dbg !164        ; [#uses=2 type=i64] [debug line = 49:7]
  %buf_addr_2 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_10, !dbg !164 ; [#uses=2 type=i8*] [debug line = 49:7]
  %buf_load = load i8* %buf_addr_2, align 1, !dbg !164 ; [#uses=1 type=i8] [debug line = 49:7]
  %xorv_addr = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_10, !dbg !164 ; [#uses=1 type=i8*] [debug line = 49:7]
  %xorv_load = load i8* %xorv_addr, align 1, !dbg !164 ; [#uses=1 type=i8] [debug line = 49:7]
  %tmp_11 = xor i8 %xorv_load, %buf_load, !dbg !164 ; [#uses=1 type=i8] [debug line = 49:7]
  store i8 %tmp_11, i8* %buf_addr_2, align 1, !dbg !164 ; [debug line = 49:7]
  call void @llvm.dbg.value(metadata !{i5 %i_16}, i64 0, metadata !118), !dbg !163 ; [debug line = 48:35] [debug variable = i]
  br label %.preheader6, !dbg !163                ; [debug line = 48:35]

; <label>:9                                       ; preds = %.preheader6
  call fastcc void @aes_encrypt_ecb([16 x i8]* %buf) nounwind, !dbg !166 ; [debug line = 51:6]
  br label %10, !dbg !167                         ; [debug line = 53:24]

; <label>:10                                      ; preds = %11, %9
  %i_6 = phi i5 [ 0, %9 ], [ %i_19, %11 ]         ; [#uses=3 type=i5]
  %tmp_14 = icmp eq i5 %i_6, -16, !dbg !167       ; [#uses=1 type=i1] [debug line = 53:24]
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_19 = add i5 %i_6, 1, !dbg !169               ; [#uses=1 type=i5] [debug line = 53:35]
  br i1 %tmp_14, label %.preheader4.preheader, label %11, !dbg !167 ; [debug line = 53:24]

.preheader4.preheader:                            ; preds = %10
  br label %.preheader4, !dbg !170                ; [debug line = 56:24]

; <label>:11                                      ; preds = %10
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str8) nounwind, !dbg !172 ; [debug line = 54:7]
  %tmp_17 = zext i5 %i_6 to i64, !dbg !172        ; [#uses=2 type=i64] [debug line = 54:7]
  %buf_addr_4 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_17, !dbg !172 ; [#uses=1 type=i8*] [debug line = 54:7]
  %buf_load_2 = load i8* %buf_addr_4, align 1, !dbg !172 ; [#uses=1 type=i8] [debug line = 54:7]
  %xorv_addr_1 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_17, !dbg !172 ; [#uses=1 type=i8*] [debug line = 54:7]
  store i8 %buf_load_2, i8* %xorv_addr_1, align 1, !dbg !172 ; [debug line = 54:7]
  call void @llvm.dbg.value(metadata !{i5 %i_19}, i64 0, metadata !118), !dbg !169 ; [debug line = 53:35] [debug variable = i]
  br label %10, !dbg !169                         ; [debug line = 53:35]

.preheader4:                                      ; preds = %12, %.preheader4.preheader
  %i_7 = phi i5 [ %i_22, %12 ], [ 0, %.preheader4.preheader ] ; [#uses=3 type=i5]
  %tmp_21 = icmp eq i5 %i_7, -16, !dbg !170       ; [#uses=1 type=i1] [debug line = 56:24]
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_22 = add i5 %i_7, 1, !dbg !174               ; [#uses=1 type=i5] [debug line = 56:35]
  br i1 %tmp_21, label %.loopexit.loopexit8, label %12, !dbg !170 ; [debug line = 56:24]

; <label>:12                                      ; preds = %.preheader4
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str9) nounwind, !dbg !175 ; [debug line = 57:7]
  %tmp_24 = zext i5 %i_7 to i64, !dbg !175        ; [#uses=2 type=i64] [debug line = 57:7]
  %buf_addr_6 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_24, !dbg !175 ; [#uses=1 type=i8*] [debug line = 57:7]
  %buf_load_4 = load i8* %buf_addr_6, align 1, !dbg !175 ; [#uses=1 type=i8] [debug line = 57:7]
  %data_out_addr_1 = getelementptr [16 x i8]* %data_out, i64 0, i64 %tmp_24, !dbg !175 ; [#uses=1 type=i8*] [debug line = 57:7]
  store i8 %buf_load_4, i8* %data_out_addr_1, align 1, !dbg !175 ; [debug line = 57:7]
  call void @llvm.dbg.value(metadata !{i5 %i_22}, i64 0, metadata !118), !dbg !174 ; [debug line = 56:35] [debug variable = i]
  br label %.preheader4, !dbg !174                ; [debug line = 56:35]

.preheader3:                                      ; preds = %13, %.preheader3.preheader
  %i_8 = phi i5 [ %i_14, %13 ], [ 0, %.preheader3.preheader ] ; [#uses=3 type=i5]
  %tmp_5 = icmp eq i5 %i_8, -16, !dbg !111        ; [#uses=1 type=i1] [debug line = 61:24]
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_14 = add i5 %i_8, 1, !dbg !177               ; [#uses=1 type=i5] [debug line = 61:35]
  br i1 %tmp_5, label %.preheader2.preheader, label %13, !dbg !111 ; [debug line = 61:24]

.preheader2.preheader:                            ; preds = %.preheader3
  br label %.preheader2, !dbg !178                ; [debug line = 64:24]

; <label>:13                                      ; preds = %.preheader3
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str10) nounwind, !dbg !180 ; [debug line = 62:7]
  %tmp_s = zext i5 %i_8 to i64, !dbg !180         ; [#uses=2 type=i64] [debug line = 62:7]
  %data_in_addr_1 = getelementptr [16 x i8]* %data_in, i64 0, i64 %tmp_s, !dbg !180 ; [#uses=1 type=i8*] [debug line = 62:7]
  %data_in_load_1 = load i8* %data_in_addr_1, align 1, !dbg !180 ; [#uses=1 type=i8] [debug line = 62:7]
  %buf_addr_1 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_s, !dbg !180 ; [#uses=1 type=i8*] [debug line = 62:7]
  store i8 %data_in_load_1, i8* %buf_addr_1, align 1, !dbg !180 ; [debug line = 62:7]
  call void @llvm.dbg.value(metadata !{i5 %i_14}, i64 0, metadata !118), !dbg !177 ; [debug line = 61:35] [debug variable = i]
  br label %.preheader3, !dbg !177                ; [debug line = 61:35]

.preheader2:                                      ; preds = %14, %.preheader2.preheader
  %i_9 = phi i5 [ %i_17, %14 ], [ 0, %.preheader2.preheader ] ; [#uses=3 type=i5]
  %tmp_7 = icmp eq i5 %i_9, -16, !dbg !178        ; [#uses=1 type=i1] [debug line = 64:24]
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_17 = add i5 %i_9, 1, !dbg !182               ; [#uses=1 type=i5] [debug line = 64:35]
  br i1 %tmp_7, label %15, label %14, !dbg !178   ; [debug line = 64:24]

; <label>:14                                      ; preds = %.preheader2
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str11) nounwind, !dbg !183 ; [debug line = 65:7]
  %tmp_12 = zext i5 %i_9 to i64, !dbg !183        ; [#uses=2 type=i64] [debug line = 65:7]
  %buf_addr_3 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_12, !dbg !183 ; [#uses=1 type=i8*] [debug line = 65:7]
  %buf_load_1 = load i8* %buf_addr_3, align 1, !dbg !183 ; [#uses=1 type=i8] [debug line = 65:7]
  %lastbuf_addr = getelementptr inbounds [16 x i8]* @lastbuf, i64 0, i64 %tmp_12, !dbg !183 ; [#uses=1 type=i8*] [debug line = 65:7]
  store i8 %buf_load_1, i8* %lastbuf_addr, align 1, !dbg !183 ; [debug line = 65:7]
  call void @llvm.dbg.value(metadata !{i5 %i_17}, i64 0, metadata !118), !dbg !182 ; [debug line = 64:35] [debug variable = i]
  br label %.preheader2, !dbg !182                ; [debug line = 64:35]

; <label>:15                                      ; preds = %.preheader2
  call fastcc void @aes_decrypt_ecb([16 x i8]* %buf) nounwind, !dbg !185 ; [debug line = 67:6]
  br label %16, !dbg !186                         ; [debug line = 69:24]

; <label>:16                                      ; preds = %17, %15
  %i_s = phi i5 [ 0, %15 ], [ %i_20, %17 ]        ; [#uses=3 type=i5]
  %tmp_15 = icmp eq i5 %i_s, -16, !dbg !186       ; [#uses=1 type=i1] [debug line = 69:24]
  %empty_21 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_20 = add i5 %i_s, 1, !dbg !188               ; [#uses=1 type=i5] [debug line = 69:35]
  br i1 %tmp_15, label %.preheader1.preheader, label %17, !dbg !186 ; [debug line = 69:24]

.preheader1.preheader:                            ; preds = %16
  br label %.preheader1, !dbg !189                ; [debug line = 72:24]

; <label>:17                                      ; preds = %16
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str12) nounwind, !dbg !191 ; [debug line = 70:7]
  %tmp_18 = zext i5 %i_s to i64, !dbg !191        ; [#uses=2 type=i64] [debug line = 70:7]
  %buf_addr_5 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_18, !dbg !191 ; [#uses=2 type=i8*] [debug line = 70:7]
  %buf_load_3 = load i8* %buf_addr_5, align 1, !dbg !191 ; [#uses=1 type=i8] [debug line = 70:7]
  %xorv_addr_2 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_18, !dbg !191 ; [#uses=1 type=i8*] [debug line = 70:7]
  %xorv_load_1 = load i8* %xorv_addr_2, align 1, !dbg !191 ; [#uses=1 type=i8] [debug line = 70:7]
  %tmp_19 = xor i8 %xorv_load_1, %buf_load_3, !dbg !191 ; [#uses=1 type=i8] [debug line = 70:7]
  store i8 %tmp_19, i8* %buf_addr_5, align 1, !dbg !191 ; [debug line = 70:7]
  call void @llvm.dbg.value(metadata !{i5 %i_20}, i64 0, metadata !118), !dbg !188 ; [debug line = 69:35] [debug variable = i]
  br label %16, !dbg !188                         ; [debug line = 69:35]

.preheader1:                                      ; preds = %18, %.preheader1.preheader
  %i_10 = phi i5 [ %i_23, %18 ], [ 0, %.preheader1.preheader ] ; [#uses=3 type=i5]
  %tmp_22 = icmp eq i5 %i_10, -16, !dbg !189      ; [#uses=1 type=i1] [debug line = 72:24]
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_23 = add i5 %i_10, 1, !dbg !193              ; [#uses=1 type=i5] [debug line = 72:35]
  br i1 %tmp_22, label %.preheader.preheader, label %18, !dbg !189 ; [debug line = 72:24]

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader, !dbg !194                 ; [debug line = 75:24]

; <label>:18                                      ; preds = %.preheader1
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str13) nounwind, !dbg !196 ; [debug line = 73:7]
  %tmp_25 = zext i5 %i_10 to i64, !dbg !196       ; [#uses=2 type=i64] [debug line = 73:7]
  %lastbuf_addr_1 = getelementptr inbounds [16 x i8]* @lastbuf, i64 0, i64 %tmp_25, !dbg !196 ; [#uses=1 type=i8*] [debug line = 73:7]
  %lastbuf_load = load i8* %lastbuf_addr_1, align 1, !dbg !196 ; [#uses=1 type=i8] [debug line = 73:7]
  %xorv_addr_4 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_25, !dbg !196 ; [#uses=1 type=i8*] [debug line = 73:7]
  store i8 %lastbuf_load, i8* %xorv_addr_4, align 1, !dbg !196 ; [debug line = 73:7]
  call void @llvm.dbg.value(metadata !{i5 %i_23}, i64 0, metadata !118), !dbg !193 ; [debug line = 72:35] [debug variable = i]
  br label %.preheader1, !dbg !193                ; [debug line = 72:35]

.preheader:                                       ; preds = %19, %.preheader.preheader
  %i_11 = phi i5 [ %i_24, %19 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i5]
  %tmp_26 = icmp eq i5 %i_11, -16, !dbg !194      ; [#uses=1 type=i1] [debug line = 75:24]
  %empty_23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_24 = add i5 %i_11, 1, !dbg !198              ; [#uses=1 type=i5] [debug line = 75:35]
  br i1 %tmp_26, label %.loopexit.loopexit, label %19, !dbg !194 ; [debug line = 75:24]

; <label>:19                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str14) nounwind, !dbg !199 ; [debug line = 76:7]
  %tmp_27 = zext i5 %i_11 to i64, !dbg !199       ; [#uses=2 type=i64] [debug line = 76:7]
  %buf_addr_7 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_27, !dbg !199 ; [#uses=1 type=i8*] [debug line = 76:7]
  %buf_load_5 = load i8* %buf_addr_7, align 1, !dbg !199 ; [#uses=1 type=i8] [debug line = 76:7]
  %data_out_addr_2 = getelementptr [16 x i8]* %data_out, i64 0, i64 %tmp_27, !dbg !199 ; [#uses=1 type=i8*] [debug line = 76:7]
  store i8 %buf_load_5, i8* %data_out_addr_2, align 1, !dbg !199 ; [debug line = 76:7]
  call void @llvm.dbg.value(metadata !{i5 %i_24}, i64 0, metadata !118), !dbg !198 ; [debug line = 75:35] [debug variable = i]
  br label %.preheader, !dbg !198                 ; [debug line = 75:35]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit.loopexit8:                              ; preds = %.preheader4
  br label %.loopexit

.loopexit.loopexit9:                              ; preds = %.preheader.i
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit9, %.loopexit.loopexit8, %.loopexit.loopexit, %0
  ret void, !dbg !201                             ; [debug line = 87:1]
}

; [#uses=1]
define internal fastcc void @aes_mixColumns_inv([16 x i8]* nocapture %buf) {
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !202), !dbg !207 ; [debug line = 270:34] [debug variable = buf]
  br label %1, !dbg !208                          ; [debug line = 274:10]

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 0, %0 ], [ %i_27, %2 ]            ; [#uses=4 type=i5]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i, i32 4), !dbg !208 ; [#uses=1 type=i1] [debug line = 274:10]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %tmp, label %3, label %2, !dbg !208       ; [debug line = 274:10]

; <label>:2                                       ; preds = %1
  %tmp_s = zext i5 %i to i64, !dbg !211           ; [#uses=1 type=i64] [debug line = 276:9]
  %buf_addr = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_s, !dbg !211 ; [#uses=2 type=i8*] [debug line = 276:9]
  %a = load i8* %buf_addr, align 1, !dbg !211     ; [#uses=4 type=i8] [debug line = 276:9]
  call void @llvm.dbg.value(metadata !{i8 %a}, i64 0, metadata !213), !dbg !211 ; [debug line = 276:9] [debug variable = a]
  %tmp_1 = trunc i5 %i to i4, !dbg !214           ; [#uses=3 type=i4] [debug line = 277:9]
  %tmp_28 = or i4 %tmp_1, 1, !dbg !214            ; [#uses=1 type=i4] [debug line = 277:9]
  %tmp_29 = zext i4 %tmp_28 to i64, !dbg !214     ; [#uses=1 type=i64] [debug line = 277:9]
  %buf_addr_8 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_29, !dbg !214 ; [#uses=2 type=i8*] [debug line = 277:9]
  %b = load i8* %buf_addr_8, align 1, !dbg !214   ; [#uses=4 type=i8] [debug line = 277:9]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !215), !dbg !214 ; [debug line = 277:9] [debug variable = b]
  %tmp_30 = or i4 %tmp_1, 2, !dbg !216            ; [#uses=1 type=i4] [debug line = 278:9]
  %tmp_31 = zext i4 %tmp_30 to i64, !dbg !216     ; [#uses=1 type=i64] [debug line = 278:9]
  %buf_addr_9 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_31, !dbg !216 ; [#uses=2 type=i8*] [debug line = 278:9]
  %c = load i8* %buf_addr_9, align 1, !dbg !216   ; [#uses=5 type=i8] [debug line = 278:9]
  call void @llvm.dbg.value(metadata !{i8 %c}, i64 0, metadata !217), !dbg !216 ; [debug line = 278:9] [debug variable = c]
  %tmp_32 = or i4 %tmp_1, 3, !dbg !218            ; [#uses=1 type=i4] [debug line = 279:9]
  %tmp_33 = zext i4 %tmp_32 to i64, !dbg !218     ; [#uses=1 type=i64] [debug line = 279:9]
  %buf_addr_10 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_33, !dbg !218 ; [#uses=2 type=i8*] [debug line = 279:9]
  %d = load i8* %buf_addr_10, align 1, !dbg !218  ; [#uses=5 type=i8] [debug line = 279:9]
  call void @llvm.dbg.value(metadata !{i8 %d}, i64 0, metadata !219), !dbg !218 ; [debug line = 279:9] [debug variable = d]
  %x_assign_5 = xor i8 %b, %a, !dbg !220          ; [#uses=3 type=i8] [debug line = 280:9]
  %tmp1 = xor i8 %d, %x_assign_5, !dbg !220       ; [#uses=1 type=i8] [debug line = 280:9]
  %e = xor i8 %tmp1, %c, !dbg !220                ; [#uses=4 type=i8] [debug line = 280:9]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !221), !dbg !220 ; [debug line = 280:9] [debug variable = e]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !222), !dbg !227 ; [debug line = 187:33@281:13] [debug variable = x]
  %y_1 = shl i8 %e, 1, !dbg !228                  ; [#uses=2 type=i8] [debug line = 189:34@281:13]
  call void @llvm.dbg.value(metadata !{i8 %y_1}, i64 0, metadata !230), !dbg !228 ; [debug line = 189:34@281:13] [debug variable = y]
  %tmp_3 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %e, i32 7), !dbg !231 ; [#uses=1 type=i1] [debug line = 190:5@281:13]
  %tmp_1_i = xor i8 %y_1, 27, !dbg !231           ; [#uses=1 type=i8] [debug line = 190:5@281:13]
  %y_19 = select i1 %tmp_3, i8 %tmp_1_i, i8 %y_1, !dbg !231 ; [#uses=2 type=i8] [debug line = 190:5@281:13]
  call void @llvm.dbg.value(metadata !{i8 %y_19}, i64 0, metadata !230), !dbg !231 ; [debug line = 190:5@281:13] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %y_19}, i64 0, metadata !232), !dbg !226 ; [debug line = 281:13] [debug variable = z]
  %tmp2 = xor i8 %a, %y_19, !dbg !233             ; [#uses=1 type=i8] [debug line = 282:26]
  %x_assign_1 = xor i8 %tmp2, %c, !dbg !233       ; [#uses=2 type=i8] [debug line = 282:26]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_1}, i64 0, metadata !234), !dbg !235 ; [debug line = 187:33@282:26] [debug variable = x]
  %y_3 = shl i8 %x_assign_1, 1, !dbg !236         ; [#uses=2 type=i8] [debug line = 189:34@282:26]
  call void @llvm.dbg.value(metadata !{i8 %y_3}, i64 0, metadata !237), !dbg !236 ; [debug line = 189:34@282:26] [debug variable = y]
  %tmp_5 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1, i32 7), !dbg !238 ; [#uses=1 type=i1] [debug line = 190:5@282:26]
  %tmp_1_i1 = xor i8 %y_3, 27, !dbg !238          ; [#uses=1 type=i8] [debug line = 190:5@282:26]
  %y_4 = select i1 %tmp_5, i8 %tmp_1_i1, i8 %y_3, !dbg !238 ; [#uses=2 type=i8] [debug line = 190:5@282:26]
  call void @llvm.dbg.value(metadata !{i8 %y_4}, i64 0, metadata !237), !dbg !238 ; [debug line = 190:5@282:26] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %y_4}, i64 0, metadata !234), !dbg !235 ; [debug line = 187:33@282:26] [debug variable = x]
  %y_5 = shl i8 %y_4, 1, !dbg !236                ; [#uses=2 type=i8] [debug line = 189:34@282:26]
  call void @llvm.dbg.value(metadata !{i8 %y_5}, i64 0, metadata !237), !dbg !236 ; [debug line = 189:34@282:26] [debug variable = y]
  %tmp_7 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %y_4, i32 7), !dbg !238 ; [#uses=1 type=i1] [debug line = 190:5@282:26]
  %tmp_1_i2 = xor i8 %y_5, 27, !dbg !238          ; [#uses=1 type=i8] [debug line = 190:5@282:26]
  %y_6 = select i1 %tmp_7, i8 %tmp_1_i2, i8 %y_5, !dbg !238 ; [#uses=1 type=i8] [debug line = 190:5@282:26]
  call void @llvm.dbg.value(metadata !{i8 %y_6}, i64 0, metadata !237), !dbg !238 ; [debug line = 190:5@282:26] [debug variable = y]
  %x = xor i8 %y_6, %e, !dbg !233                 ; [#uses=2 type=i8] [debug line = 282:26]
  call void @llvm.dbg.value(metadata !{i8 %x}, i64 0, metadata !239), !dbg !233 ; [debug line = 282:26] [debug variable = x]
  %tmp3 = xor i8 %b, %y_19, !dbg !240             ; [#uses=1 type=i8] [debug line = 283:26]
  %x_assign_3 = xor i8 %tmp3, %d, !dbg !240       ; [#uses=2 type=i8] [debug line = 283:26]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_3}, i64 0, metadata !241), !dbg !242 ; [debug line = 187:33@283:26] [debug variable = x]
  %y_7 = shl i8 %x_assign_3, 1, !dbg !243         ; [#uses=2 type=i8] [debug line = 189:34@283:26]
  call void @llvm.dbg.value(metadata !{i8 %y_7}, i64 0, metadata !244), !dbg !243 ; [debug line = 189:34@283:26] [debug variable = y]
  %tmp_9 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3, i32 7), !dbg !245 ; [#uses=1 type=i1] [debug line = 190:5@283:26]
  %tmp_1_i3 = xor i8 %y_7, 27, !dbg !245          ; [#uses=1 type=i8] [debug line = 190:5@283:26]
  %y_8 = select i1 %tmp_9, i8 %tmp_1_i3, i8 %y_7, !dbg !245 ; [#uses=2 type=i8] [debug line = 190:5@283:26]
  call void @llvm.dbg.value(metadata !{i8 %y_8}, i64 0, metadata !244), !dbg !245 ; [debug line = 190:5@283:26] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %y_8}, i64 0, metadata !241), !dbg !242 ; [debug line = 187:33@283:26] [debug variable = x]
  %y_9 = shl i8 %y_8, 1, !dbg !243                ; [#uses=2 type=i8] [debug line = 189:34@283:26]
  call void @llvm.dbg.value(metadata !{i8 %y_9}, i64 0, metadata !244), !dbg !243 ; [debug line = 189:34@283:26] [debug variable = y]
  %tmp_11 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %y_8, i32 7), !dbg !245 ; [#uses=1 type=i1] [debug line = 190:5@283:26]
  %tmp_1_i4 = xor i8 %y_9, 27, !dbg !245          ; [#uses=1 type=i8] [debug line = 190:5@283:26]
  %y_10 = select i1 %tmp_11, i8 %tmp_1_i4, i8 %y_9, !dbg !245 ; [#uses=1 type=i8] [debug line = 190:5@283:26]
  call void @llvm.dbg.value(metadata !{i8 %y_10}, i64 0, metadata !244), !dbg !245 ; [debug line = 190:5@283:26] [debug variable = y]
  %y = xor i8 %y_10, %e, !dbg !240                ; [#uses=2 type=i8] [debug line = 283:26]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !246), !dbg !240 ; [debug line = 283:26] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_5}, i64 0, metadata !247), !dbg !249 ; [debug line = 187:33@284:23] [debug variable = x]
  %y_11 = shl i8 %x_assign_5, 1, !dbg !250        ; [#uses=2 type=i8] [debug line = 189:34@284:23]
  call void @llvm.dbg.value(metadata !{i8 %y_11}, i64 0, metadata !251), !dbg !250 ; [debug line = 189:34@284:23] [debug variable = y]
  %tmp_13 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_5, i32 7), !dbg !252 ; [#uses=1 type=i1] [debug line = 190:5@284:23]
  %tmp_1_i5 = xor i8 %y_11, 27, !dbg !252         ; [#uses=1 type=i8] [debug line = 190:5@284:23]
  %y_12 = select i1 %tmp_13, i8 %tmp_1_i5, i8 %y_11, !dbg !252 ; [#uses=1 type=i8] [debug line = 190:5@284:23]
  call void @llvm.dbg.value(metadata !{i8 %y_12}, i64 0, metadata !251), !dbg !252 ; [debug line = 190:5@284:23] [debug variable = y]
  %tmp4 = xor i8 %y_12, %x, !dbg !248             ; [#uses=1 type=i8] [debug line = 284:23]
  %tmp_34 = xor i8 %tmp4, %a, !dbg !248           ; [#uses=1 type=i8] [debug line = 284:23]
  store i8 %tmp_34, i8* %buf_addr, align 1, !dbg !248 ; [debug line = 284:23]
  %x_assign_6 = xor i8 %c, %b, !dbg !253          ; [#uses=2 type=i8] [debug line = 285:27]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_6}, i64 0, metadata !254), !dbg !255 ; [debug line = 187:33@285:27] [debug variable = x]
  %y_13 = shl i8 %x_assign_6, 1, !dbg !256        ; [#uses=2 type=i8] [debug line = 189:34@285:27]
  call void @llvm.dbg.value(metadata !{i8 %y_13}, i64 0, metadata !257), !dbg !256 ; [debug line = 189:34@285:27] [debug variable = y]
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_6, i32 7), !dbg !258 ; [#uses=1 type=i1] [debug line = 190:5@285:27]
  %tmp_1_i6 = xor i8 %y_13, 27, !dbg !258         ; [#uses=1 type=i8] [debug line = 190:5@285:27]
  %y_14 = select i1 %tmp_15, i8 %tmp_1_i6, i8 %y_13, !dbg !258 ; [#uses=1 type=i8] [debug line = 190:5@285:27]
  call void @llvm.dbg.value(metadata !{i8 %y_14}, i64 0, metadata !257), !dbg !258 ; [debug line = 190:5@285:27] [debug variable = y]
  %tmp5 = xor i8 %y_14, %y, !dbg !253             ; [#uses=1 type=i8] [debug line = 285:27]
  %tmp_35 = xor i8 %tmp5, %b, !dbg !253           ; [#uses=1 type=i8] [debug line = 285:27]
  store i8 %tmp_35, i8* %buf_addr_8, align 1, !dbg !253 ; [debug line = 285:27]
  %x_assign_7 = xor i8 %d, %c, !dbg !259          ; [#uses=2 type=i8] [debug line = 286:27]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_7}, i64 0, metadata !260), !dbg !261 ; [debug line = 187:33@286:27] [debug variable = x]
  %y_15 = shl i8 %x_assign_7, 1, !dbg !262        ; [#uses=2 type=i8] [debug line = 189:34@286:27]
  call void @llvm.dbg.value(metadata !{i8 %y_15}, i64 0, metadata !263), !dbg !262 ; [debug line = 189:34@286:27] [debug variable = y]
  %tmp_17 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_7, i32 7), !dbg !264 ; [#uses=1 type=i1] [debug line = 190:5@286:27]
  %tmp_1_i7 = xor i8 %y_15, 27, !dbg !264         ; [#uses=1 type=i8] [debug line = 190:5@286:27]
  %y_16 = select i1 %tmp_17, i8 %tmp_1_i7, i8 %y_15, !dbg !264 ; [#uses=1 type=i8] [debug line = 190:5@286:27]
  call void @llvm.dbg.value(metadata !{i8 %y_16}, i64 0, metadata !263), !dbg !264 ; [debug line = 190:5@286:27] [debug variable = y]
  %tmp6 = xor i8 %y_16, %x, !dbg !259             ; [#uses=1 type=i8] [debug line = 286:27]
  %tmp_36 = xor i8 %tmp6, %c, !dbg !259           ; [#uses=1 type=i8] [debug line = 286:27]
  store i8 %tmp_36, i8* %buf_addr_9, align 1, !dbg !259 ; [debug line = 286:27]
  %x_assign_8 = xor i8 %d, %a, !dbg !265          ; [#uses=2 type=i8] [debug line = 287:27]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_8}, i64 0, metadata !266), !dbg !267 ; [debug line = 187:33@287:27] [debug variable = x]
  %y_17 = shl i8 %x_assign_8, 1, !dbg !268        ; [#uses=2 type=i8] [debug line = 189:34@287:27]
  call void @llvm.dbg.value(metadata !{i8 %y_17}, i64 0, metadata !269), !dbg !268 ; [debug line = 189:34@287:27] [debug variable = y]
  %tmp_19 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_8, i32 7), !dbg !270 ; [#uses=1 type=i1] [debug line = 190:5@287:27]
  %tmp_1_i8 = xor i8 %y_17, 27, !dbg !270         ; [#uses=1 type=i8] [debug line = 190:5@287:27]
  %y_18 = select i1 %tmp_19, i8 %tmp_1_i8, i8 %y_17, !dbg !270 ; [#uses=1 type=i8] [debug line = 190:5@287:27]
  call void @llvm.dbg.value(metadata !{i8 %y_18}, i64 0, metadata !269), !dbg !270 ; [debug line = 190:5@287:27] [debug variable = y]
  %tmp7 = xor i8 %y_18, %y, !dbg !265             ; [#uses=1 type=i8] [debug line = 287:27]
  %tmp_37 = xor i8 %tmp7, %d, !dbg !265           ; [#uses=1 type=i8] [debug line = 287:27]
  store i8 %tmp_37, i8* %buf_addr_10, align 1, !dbg !265 ; [debug line = 287:27]
  %i_27 = add i5 4, %i, !dbg !271                 ; [#uses=1 type=i5] [debug line = 274:25]
  call void @llvm.dbg.value(metadata !{i5 %i_27}, i64 0, metadata !272), !dbg !271 ; [debug line = 274:25] [debug variable = i]
  br label %1, !dbg !271                          ; [debug line = 274:25]

; <label>:3                                       ; preds = %1
  ret void, !dbg !273                             ; [debug line = 289:1]
}

; [#uses=3]
define internal fastcc i8 @aes_expandEncKey([32 x i8]* %k, i8 %rc_read) {
  %rc_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %rc_read) ; [#uses=3 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %rc_read_1}, i64 0, metadata !274), !dbg !278 ; [debug line = 292:51] [debug variable = rc]
  call void @llvm.dbg.value(metadata !{i8 %rc_read_1}, i64 0, metadata !279), !dbg !282 ; [debug line = 187:33@300:11] [debug variable = x]
  %k_addr = getelementptr [32 x i8]* %k, i64 0, i64 0 ; [#uses=2 type=i8*]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %k}, i64 0, metadata !283), !dbg !285 ; [debug line = 292:39] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i8 %rc_read}, i64 0, metadata !274), !dbg !278 ; [debug line = 292:51] [debug variable = rc]
  %k_addr_1 = getelementptr [32 x i8]* %k, i64 0, i64 29, !dbg !286 ; [#uses=1 type=i8*] [debug line = 296:5]
  %k_load = load i8* %k_addr_1, align 1, !dbg !286 ; [#uses=1 type=i8] [debug line = 296:5]
  %tmp = zext i8 %k_load to i64, !dbg !286        ; [#uses=1 type=i64] [debug line = 296:5]
  %sbox_addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp, !dbg !286 ; [#uses=1 type=i8*] [debug line = 296:5]
  %sbox_load = load i8* %sbox_addr, align 1, !dbg !286 ; [#uses=1 type=i8] [debug line = 296:5]
  %k_load_1 = load i8* %k_addr, align 1, !dbg !286 ; [#uses=1 type=i8] [debug line = 296:5]
  %tmp1 = xor i8 %k_load_1, %rc_read_1, !dbg !286 ; [#uses=1 type=i8] [debug line = 296:5]
  %tmp_s = xor i8 %tmp1, %sbox_load, !dbg !286    ; [#uses=1 type=i8] [debug line = 296:5]
  store i8 %tmp_s, i8* %k_addr, align 1, !dbg !286 ; [debug line = 296:5]
  %k_addr_2 = getelementptr [32 x i8]* %k, i64 0, i64 30, !dbg !287 ; [#uses=1 type=i8*] [debug line = 297:5]
  %k_load_2 = load i8* %k_addr_2, align 1, !dbg !287 ; [#uses=1 type=i8] [debug line = 297:5]
  %tmp_38 = zext i8 %k_load_2 to i64, !dbg !287   ; [#uses=1 type=i64] [debug line = 297:5]
  %sbox_addr_1 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_38, !dbg !287 ; [#uses=1 type=i8*] [debug line = 297:5]
  %sbox_load_1 = load i8* %sbox_addr_1, align 1, !dbg !287 ; [#uses=1 type=i8] [debug line = 297:5]
  %k_addr_3 = getelementptr [32 x i8]* %k, i64 0, i64 1, !dbg !287 ; [#uses=2 type=i8*] [debug line = 297:5]
  %k_load_3 = load i8* %k_addr_3, align 1, !dbg !287 ; [#uses=1 type=i8] [debug line = 297:5]
  %tmp_39 = xor i8 %k_load_3, %sbox_load_1, !dbg !287 ; [#uses=1 type=i8] [debug line = 297:5]
  store i8 %tmp_39, i8* %k_addr_3, align 1, !dbg !287 ; [debug line = 297:5]
  %k_addr_4 = getelementptr [32 x i8]* %k, i64 0, i64 31, !dbg !288 ; [#uses=1 type=i8*] [debug line = 298:5]
  %k_load_4 = load i8* %k_addr_4, align 1, !dbg !288 ; [#uses=1 type=i8] [debug line = 298:5]
  %tmp_40 = zext i8 %k_load_4 to i64, !dbg !288   ; [#uses=1 type=i64] [debug line = 298:5]
  %sbox_addr_2 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_40, !dbg !288 ; [#uses=1 type=i8*] [debug line = 298:5]
  %sbox_load_2 = load i8* %sbox_addr_2, align 1, !dbg !288 ; [#uses=1 type=i8] [debug line = 298:5]
  %k_addr_5 = getelementptr [32 x i8]* %k, i64 0, i64 2, !dbg !288 ; [#uses=2 type=i8*] [debug line = 298:5]
  %k_load_5 = load i8* %k_addr_5, align 1, !dbg !288 ; [#uses=1 type=i8] [debug line = 298:5]
  %tmp_41 = xor i8 %k_load_5, %sbox_load_2, !dbg !288 ; [#uses=1 type=i8] [debug line = 298:5]
  store i8 %tmp_41, i8* %k_addr_5, align 1, !dbg !288 ; [debug line = 298:5]
  %k_addr_6 = getelementptr [32 x i8]* %k, i64 0, i64 28, !dbg !289 ; [#uses=1 type=i8*] [debug line = 299:5]
  %k_load_6 = load i8* %k_addr_6, align 1, !dbg !289 ; [#uses=1 type=i8] [debug line = 299:5]
  %tmp_42 = zext i8 %k_load_6 to i64, !dbg !289   ; [#uses=1 type=i64] [debug line = 299:5]
  %sbox_addr_3 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_42, !dbg !289 ; [#uses=1 type=i8*] [debug line = 299:5]
  %sbox_load_3 = load i8* %sbox_addr_3, align 1, !dbg !289 ; [#uses=1 type=i8] [debug line = 299:5]
  %k_addr_7 = getelementptr [32 x i8]* %k, i64 0, i64 3, !dbg !289 ; [#uses=2 type=i8*] [debug line = 299:5]
  %k_load_7 = load i8* %k_addr_7, align 1, !dbg !289 ; [#uses=1 type=i8] [debug line = 299:5]
  %tmp_43 = xor i8 %k_load_7, %sbox_load_3, !dbg !289 ; [#uses=1 type=i8] [debug line = 299:5]
  store i8 %tmp_43, i8* %k_addr_7, align 1, !dbg !289 ; [debug line = 299:5]
  call void @llvm.dbg.value(metadata !{i8 %rc_read}, i64 0, metadata !279), !dbg !282 ; [debug line = 187:33@300:11] [debug variable = x]
  %y = shl i8 %rc_read_1, 1, !dbg !290            ; [#uses=2 type=i8] [debug line = 189:34@300:11]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !291), !dbg !290 ; [debug line = 189:34@300:11] [debug variable = y]
  %tmp_21 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %rc_read_1, i32 7), !dbg !292 ; [#uses=1 type=i1] [debug line = 190:5@300:11]
  %tmp_1_i = xor i8 %y, 27, !dbg !292             ; [#uses=1 type=i8] [debug line = 190:5@300:11]
  %y_20 = select i1 %tmp_21, i8 %tmp_1_i, i8 %y, !dbg !292 ; [#uses=1 type=i8] [debug line = 190:5@300:11]
  call void @llvm.dbg.value(metadata !{i8 %y_20}, i64 0, metadata !291), !dbg !292 ; [debug line = 190:5@300:11] [debug variable = y]
  br label %1, !dbg !293                          ; [debug line = 302:9]

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 4, %0 ], [ %i_28, %2 ]            ; [#uses=4 type=i5]
  %tmp_22 = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i, i32 4), !dbg !293 ; [#uses=1 type=i1] [debug line = 302:9]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp_22, label %3, label %2, !dbg !293    ; [debug line = 302:9]

; <label>:2                                       ; preds = %1
  %tmp_23 = trunc i5 %i to i4, !dbg !295          ; [#uses=7 type=i4] [debug line = 302:32]
  %tmp_45 = add i4 -4, %tmp_23, !dbg !295         ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp_46 = zext i4 %tmp_45 to i64, !dbg !295     ; [#uses=1 type=i64] [debug line = 302:32]
  %k_addr_8 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_46, !dbg !295 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k_load_8 = load i8* %k_addr_8, align 1, !dbg !295 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp_47 = zext i5 %i to i64, !dbg !295          ; [#uses=1 type=i64] [debug line = 302:32]
  %k_addr_9 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_47, !dbg !295 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k_load_9 = load i8* %k_addr_9, align 1, !dbg !295 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp_48 = xor i8 %k_load_9, %k_load_8, !dbg !295 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp_48, i8* %k_addr_9, align 1, !dbg !295 ; [debug line = 302:32]
  %tmp_49 = add i4 -3, %tmp_23, !dbg !295         ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp_50 = zext i4 %tmp_49 to i64, !dbg !295     ; [#uses=1 type=i64] [debug line = 302:32]
  %k_addr_10 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_50, !dbg !295 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k_load_10 = load i8* %k_addr_10, align 1, !dbg !295 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp_51 = or i4 %tmp_23, 1, !dbg !295           ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp_52 = zext i4 %tmp_51 to i64, !dbg !295     ; [#uses=1 type=i64] [debug line = 302:32]
  %k_addr_11 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_52, !dbg !295 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k_load_11 = load i8* %k_addr_11, align 1, !dbg !295 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp_53 = xor i8 %k_load_11, %k_load_10, !dbg !295 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp_53, i8* %k_addr_11, align 1, !dbg !295 ; [debug line = 302:32]
  %tmp_54 = add i4 -2, %tmp_23, !dbg !295         ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp_55 = zext i4 %tmp_54 to i64, !dbg !295     ; [#uses=1 type=i64] [debug line = 302:32]
  %k_addr_12 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_55, !dbg !295 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k_load_12 = load i8* %k_addr_12, align 1, !dbg !295 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp_56 = or i4 %tmp_23, 2, !dbg !295           ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp_57 = zext i4 %tmp_56 to i64, !dbg !295     ; [#uses=1 type=i64] [debug line = 302:32]
  %k_addr_13 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_57, !dbg !295 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k_load_13 = load i8* %k_addr_13, align 1, !dbg !295 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp_58 = xor i8 %k_load_13, %k_load_12, !dbg !295 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp_58, i8* %k_addr_13, align 1, !dbg !295 ; [debug line = 302:32]
  %tmp_59 = add i4 -1, %tmp_23, !dbg !295         ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp_60 = zext i4 %tmp_59 to i64, !dbg !295     ; [#uses=1 type=i64] [debug line = 302:32]
  %k_addr_14 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_60, !dbg !295 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k_load_14 = load i8* %k_addr_14, align 1, !dbg !295 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp_61 = or i4 %tmp_23, 3, !dbg !295           ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp_62 = zext i4 %tmp_61 to i64, !dbg !295     ; [#uses=1 type=i64] [debug line = 302:32]
  %k_addr_15 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_62, !dbg !295 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k_load_15 = load i8* %k_addr_15, align 1, !dbg !295 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp_63 = xor i8 %k_load_15, %k_load_14, !dbg !295 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp_63, i8* %k_addr_15, align 1, !dbg !295 ; [debug line = 302:32]
  %i_28 = add i5 4, %i, !dbg !296                 ; [#uses=1 type=i5] [debug line = 302:24]
  call void @llvm.dbg.value(metadata !{i5 %i_28}, i64 0, metadata !297), !dbg !296 ; [debug line = 302:24] [debug variable = i]
  br label %1, !dbg !296                          ; [debug line = 302:24]

; <label>:3                                       ; preds = %1
  %k_addr_16 = getelementptr [32 x i8]* %k, i64 0, i64 12, !dbg !298 ; [#uses=1 type=i8*] [debug line = 304:5]
  %k_load_16 = load i8* %k_addr_16, align 1, !dbg !298 ; [#uses=1 type=i8] [debug line = 304:5]
  %tmp_44 = zext i8 %k_load_16 to i64, !dbg !298  ; [#uses=1 type=i64] [debug line = 304:5]
  %sbox_addr_4 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_44, !dbg !298 ; [#uses=1 type=i8*] [debug line = 304:5]
  %sbox_load_4 = load i8* %sbox_addr_4, align 1, !dbg !298 ; [#uses=1 type=i8] [debug line = 304:5]
  %k_addr_17 = getelementptr [32 x i8]* %k, i64 0, i64 16, !dbg !298 ; [#uses=2 type=i8*] [debug line = 304:5]
  %k_load_17 = load i8* %k_addr_17, align 1, !dbg !298 ; [#uses=1 type=i8] [debug line = 304:5]
  %tmp_64 = xor i8 %k_load_17, %sbox_load_4, !dbg !298 ; [#uses=1 type=i8] [debug line = 304:5]
  store i8 %tmp_64, i8* %k_addr_17, align 1, !dbg !298 ; [debug line = 304:5]
  %k_addr_18 = getelementptr [32 x i8]* %k, i64 0, i64 13, !dbg !299 ; [#uses=1 type=i8*] [debug line = 305:5]
  %k_load_18 = load i8* %k_addr_18, align 1, !dbg !299 ; [#uses=1 type=i8] [debug line = 305:5]
  %tmp_65 = zext i8 %k_load_18 to i64, !dbg !299  ; [#uses=1 type=i64] [debug line = 305:5]
  %sbox_addr_5 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_65, !dbg !299 ; [#uses=1 type=i8*] [debug line = 305:5]
  %sbox_load_5 = load i8* %sbox_addr_5, align 1, !dbg !299 ; [#uses=1 type=i8] [debug line = 305:5]
  %k_addr_19 = getelementptr [32 x i8]* %k, i64 0, i64 17, !dbg !299 ; [#uses=2 type=i8*] [debug line = 305:5]
  %k_load_19 = load i8* %k_addr_19, align 1, !dbg !299 ; [#uses=1 type=i8] [debug line = 305:5]
  %tmp_66 = xor i8 %k_load_19, %sbox_load_5, !dbg !299 ; [#uses=1 type=i8] [debug line = 305:5]
  store i8 %tmp_66, i8* %k_addr_19, align 1, !dbg !299 ; [debug line = 305:5]
  %k_addr_20 = getelementptr [32 x i8]* %k, i64 0, i64 14, !dbg !300 ; [#uses=1 type=i8*] [debug line = 306:5]
  %k_load_20 = load i8* %k_addr_20, align 1, !dbg !300 ; [#uses=1 type=i8] [debug line = 306:5]
  %tmp_67 = zext i8 %k_load_20 to i64, !dbg !300  ; [#uses=1 type=i64] [debug line = 306:5]
  %sbox_addr_6 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_67, !dbg !300 ; [#uses=1 type=i8*] [debug line = 306:5]
  %sbox_load_6 = load i8* %sbox_addr_6, align 1, !dbg !300 ; [#uses=1 type=i8] [debug line = 306:5]
  %k_addr_21 = getelementptr [32 x i8]* %k, i64 0, i64 18, !dbg !300 ; [#uses=2 type=i8*] [debug line = 306:5]
  %k_load_21 = load i8* %k_addr_21, align 1, !dbg !300 ; [#uses=1 type=i8] [debug line = 306:5]
  %tmp_68 = xor i8 %k_load_21, %sbox_load_6, !dbg !300 ; [#uses=1 type=i8] [debug line = 306:5]
  store i8 %tmp_68, i8* %k_addr_21, align 1, !dbg !300 ; [debug line = 306:5]
  %k_addr_22 = getelementptr [32 x i8]* %k, i64 0, i64 15, !dbg !301 ; [#uses=1 type=i8*] [debug line = 307:5]
  %k_load_22 = load i8* %k_addr_22, align 1, !dbg !301 ; [#uses=1 type=i8] [debug line = 307:5]
  %tmp_69 = zext i8 %k_load_22 to i64, !dbg !301  ; [#uses=1 type=i64] [debug line = 307:5]
  %sbox_addr_7 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_69, !dbg !301 ; [#uses=1 type=i8*] [debug line = 307:5]
  %sbox_load_7 = load i8* %sbox_addr_7, align 1, !dbg !301 ; [#uses=1 type=i8] [debug line = 307:5]
  %k_addr_23 = getelementptr [32 x i8]* %k, i64 0, i64 19, !dbg !301 ; [#uses=2 type=i8*] [debug line = 307:5]
  %k_load_23 = load i8* %k_addr_23, align 1, !dbg !301 ; [#uses=1 type=i8] [debug line = 307:5]
  %tmp_70 = xor i8 %k_load_23, %sbox_load_7, !dbg !301 ; [#uses=1 type=i8] [debug line = 307:5]
  store i8 %tmp_70, i8* %k_addr_23, align 1, !dbg !301 ; [debug line = 307:5]
  br label %4, !dbg !302                          ; [debug line = 309:9]

; <label>:4                                       ; preds = %5, %3
  %i_1 = phi i6 [ 20, %3 ], [ %i_29, %5 ]         ; [#uses=4 type=i6]
  %tmp_24 = call i1 @_ssdm_op_BitSelect.i1.i6.i32(i6 %i_1, i32 5), !dbg !302 ; [#uses=1 type=i1] [debug line = 309:9]
  %empty_24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp_24, label %6, label %5, !dbg !302    ; [debug line = 309:9]

; <label>:5                                       ; preds = %4
  %tmp_25 = trunc i6 %i_1 to i5, !dbg !304        ; [#uses=7 type=i5] [debug line = 309:33]
  %tmp_71 = add i5 -4, %tmp_25, !dbg !304         ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp_72 = zext i5 %tmp_71 to i64, !dbg !304     ; [#uses=1 type=i64] [debug line = 309:33]
  %k_addr_24 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_72, !dbg !304 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k_load_24 = load i8* %k_addr_24, align 1, !dbg !304 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp_73 = zext i6 %i_1 to i64, !dbg !304        ; [#uses=1 type=i64] [debug line = 309:33]
  %k_addr_25 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_73, !dbg !304 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k_load_25 = load i8* %k_addr_25, align 1, !dbg !304 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp_74 = xor i8 %k_load_25, %k_load_24, !dbg !304 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp_74, i8* %k_addr_25, align 1, !dbg !304 ; [debug line = 309:33]
  %tmp_75 = add i5 -3, %tmp_25, !dbg !304         ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp_76 = zext i5 %tmp_75 to i64, !dbg !304     ; [#uses=1 type=i64] [debug line = 309:33]
  %k_addr_26 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_76, !dbg !304 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k_load_26 = load i8* %k_addr_26, align 1, !dbg !304 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp_77 = or i5 %tmp_25, 1, !dbg !304           ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp_78 = zext i5 %tmp_77 to i64, !dbg !304     ; [#uses=1 type=i64] [debug line = 309:33]
  %k_addr_27 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_78, !dbg !304 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k_load_27 = load i8* %k_addr_27, align 1, !dbg !304 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp_79 = xor i8 %k_load_27, %k_load_26, !dbg !304 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp_79, i8* %k_addr_27, align 1, !dbg !304 ; [debug line = 309:33]
  %tmp_80 = add i5 -2, %tmp_25, !dbg !304         ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp_81 = zext i5 %tmp_80 to i64, !dbg !304     ; [#uses=1 type=i64] [debug line = 309:33]
  %k_addr_28 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_81, !dbg !304 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k_load_28 = load i8* %k_addr_28, align 1, !dbg !304 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp_82 = or i5 %tmp_25, 2, !dbg !304           ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp_83 = zext i5 %tmp_82 to i64, !dbg !304     ; [#uses=1 type=i64] [debug line = 309:33]
  %k_addr_29 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_83, !dbg !304 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k_load_29 = load i8* %k_addr_29, align 1, !dbg !304 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp_84 = xor i8 %k_load_29, %k_load_28, !dbg !304 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp_84, i8* %k_addr_29, align 1, !dbg !304 ; [debug line = 309:33]
  %tmp_85 = add i5 -1, %tmp_25, !dbg !304         ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp_86 = zext i5 %tmp_85 to i64, !dbg !304     ; [#uses=1 type=i64] [debug line = 309:33]
  %k_addr_30 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_86, !dbg !304 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k_load_30 = load i8* %k_addr_30, align 1, !dbg !304 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp_87 = or i5 %tmp_25, 3, !dbg !304           ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp_88 = zext i5 %tmp_87 to i64, !dbg !304     ; [#uses=1 type=i64] [debug line = 309:33]
  %k_addr_31 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_88, !dbg !304 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k_load_31 = load i8* %k_addr_31, align 1, !dbg !304 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp_89 = xor i8 %k_load_31, %k_load_30, !dbg !304 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp_89, i8* %k_addr_31, align 1, !dbg !304 ; [debug line = 309:33]
  %i_29 = add i6 4, %i_1, !dbg !305               ; [#uses=1 type=i6] [debug line = 309:25]
  call void @llvm.dbg.value(metadata !{i6 %i_29}, i64 0, metadata !297), !dbg !305 ; [debug line = 309:25] [debug variable = i]
  br label %4, !dbg !305                          ; [debug line = 309:25]

; <label>:6                                       ; preds = %4
  ret i8 %y_20, !dbg !306                         ; [debug line = 312:1]
}

; [#uses=1]
define internal fastcc i8 @aes_expandDecKey(i8 %rc_read) {
  %rc_read_2 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %rc_read) ; [#uses=2 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %rc_read_2}, i64 0, metadata !307), !dbg !309 ; [debug line = 315:44] [debug variable = rc]
  call void @llvm.dbg.value(metadata !{i8 %rc_read}, i64 0, metadata !307), !dbg !309 ; [debug line = 315:44] [debug variable = rc]
  br label %1, !dbg !310                          ; [debug line = 319:9]

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ -4, %0 ], [ %i_27, %2 ]           ; [#uses=9 type=i5]
  %tmp = icmp ugt i5 %i, -16, !dbg !310           ; [#uses=1 type=i1] [debug line = 319:9]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp, label %2, label %3, !dbg !310       ; [debug line = 319:9]

; <label>:2                                       ; preds = %1
  %i_27 = add i5 %i, -4, !dbg !313                ; [#uses=2 type=i5] [debug line = 319:33]
  %tmp_90 = zext i5 %i_27 to i64, !dbg !313       ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx_key_addr = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_90, !dbg !313 ; [#uses=1 type=i8*] [debug line = 319:33]
  %ctx_key_load = load i8* %ctx_key_addr, align 4, !dbg !313 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp_91 = zext i5 %i to i64, !dbg !313          ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx_key_addr_1 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_91, !dbg !313 ; [#uses=2 type=i8*] [debug line = 319:33]
  %ctx_key_load_1 = load i8* %ctx_key_addr_1, align 4, !dbg !313 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp_92 = xor i8 %ctx_key_load_1, %ctx_key_load, !dbg !313 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp_92, i8* %ctx_key_addr_1, align 4, !dbg !313 ; [debug line = 319:33]
  %tmp_93 = add i5 %i, -3, !dbg !313              ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp_94 = zext i5 %tmp_93 to i64, !dbg !313     ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx_key_addr_2 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_94, !dbg !313 ; [#uses=1 type=i8*] [debug line = 319:33]
  %ctx_key_load_2 = load i8* %ctx_key_addr_2, align 1, !dbg !313 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp_95 = or i5 %i, 1, !dbg !313                ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp_96 = zext i5 %tmp_95 to i64, !dbg !313     ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx_key_addr_3 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_96, !dbg !313 ; [#uses=2 type=i8*] [debug line = 319:33]
  %ctx_key_load_3 = load i8* %ctx_key_addr_3, align 1, !dbg !313 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp_97 = xor i8 %ctx_key_load_3, %ctx_key_load_2, !dbg !313 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp_97, i8* %ctx_key_addr_3, align 1, !dbg !313 ; [debug line = 319:33]
  %tmp_98 = add i5 %i, -2, !dbg !313              ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp_99 = zext i5 %tmp_98 to i64, !dbg !313     ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx_key_addr_4 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_99, !dbg !313 ; [#uses=1 type=i8*] [debug line = 319:33]
  %ctx_key_load_4 = load i8* %ctx_key_addr_4, align 2, !dbg !313 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp_100 = or i5 %i, 2, !dbg !313               ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp_101 = zext i5 %tmp_100 to i64, !dbg !313   ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx_key_addr_5 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_101, !dbg !313 ; [#uses=2 type=i8*] [debug line = 319:33]
  %ctx_key_load_5 = load i8* %ctx_key_addr_5, align 2, !dbg !313 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp_102 = xor i8 %ctx_key_load_5, %ctx_key_load_4, !dbg !313 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp_102, i8* %ctx_key_addr_5, align 2, !dbg !313 ; [debug line = 319:33]
  %tmp_103 = add i5 %i, -1, !dbg !313             ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp_104 = zext i5 %tmp_103 to i64, !dbg !313   ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx_key_addr_6 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_104, !dbg !313 ; [#uses=1 type=i8*] [debug line = 319:33]
  %ctx_key_load_6 = load i8* %ctx_key_addr_6, align 1, !dbg !313 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp_105 = or i5 %i, 3, !dbg !313               ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp_106 = zext i5 %tmp_105 to i64, !dbg !313   ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx_key_addr_7 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_106, !dbg !313 ; [#uses=2 type=i8*] [debug line = 319:33]
  %ctx_key_load_7 = load i8* %ctx_key_addr_7, align 1, !dbg !313 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp_107 = xor i8 %ctx_key_load_7, %ctx_key_load_6, !dbg !313 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp_107, i8* %ctx_key_addr_7, align 1, !dbg !313 ; [debug line = 319:33]
  call void @llvm.dbg.value(metadata !{i5 %i_27}, i64 0, metadata !314), !dbg !315 ; [debug line = 319:25] [debug variable = i]
  br label %1, !dbg !315                          ; [debug line = 319:25]

; <label>:3                                       ; preds = %1
  %ctx_key_load_8 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 12), align 4, !dbg !316 ; [#uses=1 type=i8] [debug line = 322:5]
  %tmp_s = zext i8 %ctx_key_load_8 to i64, !dbg !316 ; [#uses=1 type=i64] [debug line = 322:5]
  %sbox_addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_s, !dbg !316 ; [#uses=1 type=i8*] [debug line = 322:5]
  %sbox_load = load i8* %sbox_addr, align 1, !dbg !316 ; [#uses=1 type=i8] [debug line = 322:5]
  %ctx_key_load_9 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 16), align 16, !dbg !316 ; [#uses=1 type=i8] [debug line = 322:5]
  %tmp_108 = xor i8 %ctx_key_load_9, %sbox_load, !dbg !316 ; [#uses=1 type=i8] [debug line = 322:5]
  store i8 %tmp_108, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 16), align 16, !dbg !316 ; [debug line = 322:5]
  %ctx_key_load_10 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 13), align 1, !dbg !317 ; [#uses=1 type=i8] [debug line = 323:5]
  %tmp_109 = zext i8 %ctx_key_load_10 to i64, !dbg !317 ; [#uses=1 type=i64] [debug line = 323:5]
  %sbox_addr_8 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_109, !dbg !317 ; [#uses=1 type=i8*] [debug line = 323:5]
  %sbox_load_8 = load i8* %sbox_addr_8, align 1, !dbg !317 ; [#uses=1 type=i8] [debug line = 323:5]
  %ctx_key_load_11 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 17), align 1, !dbg !317 ; [#uses=1 type=i8] [debug line = 323:5]
  %tmp_110 = xor i8 %ctx_key_load_11, %sbox_load_8, !dbg !317 ; [#uses=1 type=i8] [debug line = 323:5]
  store i8 %tmp_110, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 17), align 1, !dbg !317 ; [debug line = 323:5]
  %ctx_key_load_12 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 14), align 2, !dbg !318 ; [#uses=1 type=i8] [debug line = 324:5]
  %tmp_111 = zext i8 %ctx_key_load_12 to i64, !dbg !318 ; [#uses=1 type=i64] [debug line = 324:5]
  %sbox_addr_9 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_111, !dbg !318 ; [#uses=1 type=i8*] [debug line = 324:5]
  %sbox_load_9 = load i8* %sbox_addr_9, align 1, !dbg !318 ; [#uses=1 type=i8] [debug line = 324:5]
  %ctx_key_load_13 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 18), align 2, !dbg !318 ; [#uses=1 type=i8] [debug line = 324:5]
  %tmp_112 = xor i8 %ctx_key_load_13, %sbox_load_9, !dbg !318 ; [#uses=1 type=i8] [debug line = 324:5]
  store i8 %tmp_112, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 18), align 2, !dbg !318 ; [debug line = 324:5]
  %ctx_key_load_14 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 15), align 1, !dbg !319 ; [#uses=1 type=i8] [debug line = 325:5]
  %tmp_113 = zext i8 %ctx_key_load_14 to i64, !dbg !319 ; [#uses=1 type=i64] [debug line = 325:5]
  %sbox_addr_10 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_113, !dbg !319 ; [#uses=1 type=i8*] [debug line = 325:5]
  %sbox_load_10 = load i8* %sbox_addr_10, align 1, !dbg !319 ; [#uses=1 type=i8] [debug line = 325:5]
  %ctx_key_load_15 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 19), align 1, !dbg !319 ; [#uses=1 type=i8] [debug line = 325:5]
  %tmp_114 = xor i8 %ctx_key_load_15, %sbox_load_10, !dbg !319 ; [#uses=1 type=i8] [debug line = 325:5]
  store i8 %tmp_114, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 19), align 1, !dbg !319 ; [debug line = 325:5]
  br label %4, !dbg !320                          ; [debug line = 327:9]

; <label>:4                                       ; preds = %5, %3
  %i_1 = phi i4 [ -4, %3 ], [ %i_s, %5 ]          ; [#uses=8 type=i4]
  %tmp_115 = icmp eq i4 %i_1, 0, !dbg !320        ; [#uses=1 type=i1] [debug line = 327:9]
  %empty_25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp_115, label %6, label %5, !dbg !320   ; [debug line = 327:9]

; <label>:5                                       ; preds = %4
  %tmp_150_cast = zext i4 %i_1 to i5, !dbg !322   ; [#uses=3 type=i5] [debug line = 327:32]
  %tmp_126 = add i5 %tmp_150_cast, -4, !dbg !322  ; [#uses=1 type=i5] [debug line = 327:32]
  %tmp_127 = sext i5 %tmp_126 to i64, !dbg !322   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx_key_addr_8 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_127, !dbg !322 ; [#uses=1 type=i8*] [debug line = 327:32]
  %ctx_key_load_24 = load i8* %ctx_key_addr_8, align 4, !dbg !322 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp_128 = zext i4 %i_1 to i64, !dbg !322       ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx_key_addr_9 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_128, !dbg !322 ; [#uses=2 type=i8*] [debug line = 327:32]
  %ctx_key_load_25 = load i8* %ctx_key_addr_9, align 4, !dbg !322 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp_129 = xor i8 %ctx_key_load_25, %ctx_key_load_24, !dbg !322 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp_129, i8* %ctx_key_addr_9, align 4, !dbg !322 ; [debug line = 327:32]
  %tmp_130 = add i5 %tmp_150_cast, -3, !dbg !322  ; [#uses=1 type=i5] [debug line = 327:32]
  %tmp_131 = sext i5 %tmp_130 to i64, !dbg !322   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx_key_addr_10 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_131, !dbg !322 ; [#uses=1 type=i8*] [debug line = 327:32]
  %ctx_key_load_26 = load i8* %ctx_key_addr_10, align 1, !dbg !322 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp_132 = or i4 %i_1, 1, !dbg !322             ; [#uses=1 type=i4] [debug line = 327:32]
  %tmp_133 = zext i4 %tmp_132 to i64, !dbg !322   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx_key_addr_11 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_133, !dbg !322 ; [#uses=2 type=i8*] [debug line = 327:32]
  %ctx_key_load_27 = load i8* %ctx_key_addr_11, align 1, !dbg !322 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp_134 = xor i8 %ctx_key_load_27, %ctx_key_load_26, !dbg !322 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp_134, i8* %ctx_key_addr_11, align 1, !dbg !322 ; [debug line = 327:32]
  %tmp_135 = add i5 %tmp_150_cast, -2, !dbg !322  ; [#uses=1 type=i5] [debug line = 327:32]
  %tmp_136 = sext i5 %tmp_135 to i64, !dbg !322   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx_key_addr_12 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_136, !dbg !322 ; [#uses=1 type=i8*] [debug line = 327:32]
  %ctx_key_load_28 = load i8* %ctx_key_addr_12, align 2, !dbg !322 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp_137 = or i4 %i_1, 2, !dbg !322             ; [#uses=1 type=i4] [debug line = 327:32]
  %tmp_138 = zext i4 %tmp_137 to i64, !dbg !322   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx_key_addr_13 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_138, !dbg !322 ; [#uses=2 type=i8*] [debug line = 327:32]
  %ctx_key_load_29 = load i8* %ctx_key_addr_13, align 2, !dbg !322 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp_139 = xor i8 %ctx_key_load_29, %ctx_key_load_28, !dbg !322 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp_139, i8* %ctx_key_addr_13, align 2, !dbg !322 ; [debug line = 327:32]
  %tmp_140 = add i4 %i_1, -1, !dbg !322           ; [#uses=1 type=i4] [debug line = 327:32]
  %tmp_141 = zext i4 %tmp_140 to i64, !dbg !322   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx_key_addr_14 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_141, !dbg !322 ; [#uses=1 type=i8*] [debug line = 327:32]
  %ctx_key_load_30 = load i8* %ctx_key_addr_14, align 1, !dbg !322 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp_142 = or i4 %i_1, 3, !dbg !322             ; [#uses=1 type=i4] [debug line = 327:32]
  %tmp_143 = zext i4 %tmp_142 to i64, !dbg !322   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx_key_addr_15 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_143, !dbg !322 ; [#uses=2 type=i8*] [debug line = 327:32]
  %ctx_key_load_31 = load i8* %ctx_key_addr_15, align 1, !dbg !322 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp_144 = xor i8 %ctx_key_load_31, %ctx_key_load_30, !dbg !322 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp_144, i8* %ctx_key_addr_15, align 1, !dbg !322 ; [debug line = 327:32]
  %i_s = add i4 %i_1, -4, !dbg !323               ; [#uses=1 type=i4] [debug line = 327:24]
  br label %4, !dbg !323                          ; [debug line = 327:24]

; <label>:6                                       ; preds = %4
  %tmp_116 = call i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8 %rc_read_2, i32 1, i32 7), !dbg !324 ; [#uses=1 type=i7] [debug line = 330:5]
  %tmp_11 = zext i7 %tmp_116 to i8, !dbg !324     ; [#uses=1 type=i8] [debug line = 330:5]
  %tmp_26 = trunc i8 %rc_read_2 to i1, !dbg !324  ; [#uses=1 type=i1] [debug line = 330:5]
  %tmp_117 = select i1 %tmp_26, i8 -115, i8 0, !dbg !324 ; [#uses=1 type=i8] [debug line = 330:5]
  %rc_write_assign = xor i8 %tmp_117, %tmp_11, !dbg !324 ; [#uses=2 type=i8] [debug line = 330:5]
  %ctx_key_load_16 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 29), align 1, !dbg !325 ; [#uses=1 type=i8] [debug line = 331:5]
  %tmp_118 = zext i8 %ctx_key_load_16 to i64, !dbg !325 ; [#uses=1 type=i64] [debug line = 331:5]
  %sbox_addr_11 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_118, !dbg !325 ; [#uses=1 type=i8*] [debug line = 331:5]
  %sbox_load_11 = load i8* %sbox_addr_11, align 1, !dbg !325 ; [#uses=1 type=i8] [debug line = 331:5]
  %ctx_key_load_17 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 0), align 16, !dbg !325 ; [#uses=1 type=i8] [debug line = 331:5]
  %tmp1 = xor i8 %ctx_key_load_17, %rc_write_assign, !dbg !325 ; [#uses=1 type=i8] [debug line = 331:5]
  %tmp_119 = xor i8 %tmp1, %sbox_load_11, !dbg !325 ; [#uses=1 type=i8] [debug line = 331:5]
  store i8 %tmp_119, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 0), align 16, !dbg !325 ; [debug line = 331:5]
  %ctx_key_load_18 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 30), align 2, !dbg !326 ; [#uses=1 type=i8] [debug line = 332:5]
  %tmp_120 = zext i8 %ctx_key_load_18 to i64, !dbg !326 ; [#uses=1 type=i64] [debug line = 332:5]
  %sbox_addr_12 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_120, !dbg !326 ; [#uses=1 type=i8*] [debug line = 332:5]
  %sbox_load_12 = load i8* %sbox_addr_12, align 1, !dbg !326 ; [#uses=1 type=i8] [debug line = 332:5]
  %ctx_key_load_19 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 1), align 1, !dbg !326 ; [#uses=1 type=i8] [debug line = 332:5]
  %tmp_121 = xor i8 %ctx_key_load_19, %sbox_load_12, !dbg !326 ; [#uses=1 type=i8] [debug line = 332:5]
  store i8 %tmp_121, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 1), align 1, !dbg !326 ; [debug line = 332:5]
  %ctx_key_load_20 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 31), align 1, !dbg !327 ; [#uses=1 type=i8] [debug line = 333:5]
  %tmp_122 = zext i8 %ctx_key_load_20 to i64, !dbg !327 ; [#uses=1 type=i64] [debug line = 333:5]
  %sbox_addr_13 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_122, !dbg !327 ; [#uses=1 type=i8*] [debug line = 333:5]
  %sbox_load_13 = load i8* %sbox_addr_13, align 1, !dbg !327 ; [#uses=1 type=i8] [debug line = 333:5]
  %ctx_key_load_21 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 2), align 2, !dbg !327 ; [#uses=1 type=i8] [debug line = 333:5]
  %tmp_123 = xor i8 %ctx_key_load_21, %sbox_load_13, !dbg !327 ; [#uses=1 type=i8] [debug line = 333:5]
  store i8 %tmp_123, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 2), align 2, !dbg !327 ; [debug line = 333:5]
  %ctx_key_load_22 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 28), align 4, !dbg !328 ; [#uses=1 type=i8] [debug line = 334:5]
  %tmp_124 = zext i8 %ctx_key_load_22 to i64, !dbg !328 ; [#uses=1 type=i64] [debug line = 334:5]
  %sbox_addr_14 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_124, !dbg !328 ; [#uses=1 type=i8*] [debug line = 334:5]
  %sbox_load_14 = load i8* %sbox_addr_14, align 1, !dbg !328 ; [#uses=1 type=i8] [debug line = 334:5]
  %ctx_key_load_23 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 3), align 1, !dbg !328 ; [#uses=1 type=i8] [debug line = 334:5]
  %tmp_125 = xor i8 %ctx_key_load_23, %sbox_load_14, !dbg !328 ; [#uses=1 type=i8] [debug line = 334:5]
  store i8 %tmp_125, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 3), align 1, !dbg !328 ; [debug line = 334:5]
  call void @llvm.dbg.value(metadata !{i8 %rc_write_assign}, i64 0, metadata !329), !dbg !309 ; [debug line = 315:44] [debug variable = rc]
  ret i8 %rc_write_assign, !dbg !330              ; [debug line = 335:1]
}

; [#uses=1]
define internal fastcc void @aes_encrypt_ecb([16 x i8]* nocapture %buf) {
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !331), !dbg !333 ; [debug line = 358:49] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !334), !dbg !340 ; [debug line = 218:42@362:5] [debug variable = buf]
  br label %1, !dbg !341                          ; [debug line = 222:5@362:5]

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i5 [ -16, %0 ], [ %i_30, %2 ]        ; [#uses=3 type=i5]
  %i_30 = add i5 %i_i, -1, !dbg !341              ; [#uses=2 type=i5] [debug line = 222:5@362:5]
  %i_32_cast = sext i5 %i_30 to i8, !dbg !341     ; [#uses=1 type=i8] [debug line = 222:5@362:5]
  call void @llvm.dbg.value(metadata !{i5 %i_30}, i64 0, metadata !343), !dbg !341 ; [debug line = 222:5@362:5] [debug variable = i]
  %tmp_i = icmp eq i5 %i_i, 0, !dbg !341          ; [#uses=1 type=i1] [debug line = 222:5@362:5]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp_i, label %aes_addRoundKey_cpy.exit.preheader, label %2, !dbg !341 ; [debug line = 222:5@362:5]

aes_addRoundKey_cpy.exit.preheader:               ; preds = %1
  %rcon = alloca i8                               ; [#uses=4 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %rcon}, metadata !344) ; [debug variable = rcon]
  %buf_addr = getelementptr [16 x i8]* %buf, i64 0, i64 1, !dbg !345 ; [#uses=4 type=i8*] [debug line = 231:5@366:9]
  %buf_addr_11 = getelementptr [16 x i8]* %buf, i64 0, i64 5, !dbg !345 ; [#uses=4 type=i8*] [debug line = 231:5@366:9]
  %buf_addr_12 = getelementptr [16 x i8]* %buf, i64 0, i64 9, !dbg !345 ; [#uses=4 type=i8*] [debug line = 231:5@366:9]
  %buf_addr_13 = getelementptr [16 x i8]* %buf, i64 0, i64 13, !dbg !345 ; [#uses=4 type=i8*] [debug line = 231:5@366:9]
  %buf_addr_14 = getelementptr [16 x i8]* %buf, i64 0, i64 10, !dbg !351 ; [#uses=4 type=i8*] [debug line = 232:5@366:9]
  %buf_addr_15 = getelementptr [16 x i8]* %buf, i64 0, i64 2, !dbg !351 ; [#uses=4 type=i8*] [debug line = 232:5@366:9]
  %buf_addr_16 = getelementptr [16 x i8]* %buf, i64 0, i64 3, !dbg !352 ; [#uses=4 type=i8*] [debug line = 233:5@366:9]
  %buf_addr_17 = getelementptr [16 x i8]* %buf, i64 0, i64 15, !dbg !352 ; [#uses=4 type=i8*] [debug line = 233:5@366:9]
  %buf_addr_18 = getelementptr [16 x i8]* %buf, i64 0, i64 11, !dbg !352 ; [#uses=4 type=i8*] [debug line = 233:5@366:9]
  %buf_addr_19 = getelementptr [16 x i8]* %buf, i64 0, i64 7, !dbg !352 ; [#uses=4 type=i8*] [debug line = 233:5@366:9]
  %buf_addr_20 = getelementptr [16 x i8]* %buf, i64 0, i64 14, !dbg !353 ; [#uses=4 type=i8*] [debug line = 234:5@366:9]
  %buf_addr_21 = getelementptr [16 x i8]* %buf, i64 0, i64 6, !dbg !353 ; [#uses=4 type=i8*] [debug line = 234:5@366:9]
  store i8 1, i8* %rcon
  br label %aes_addRoundKey_cpy.exit, !dbg !354   ; [debug line = 363:9]

; <label>:2                                       ; preds = %1
  %tmp_i_26 = zext i8 %i_32_cast to i64, !dbg !355 ; [#uses=3 type=i64] [debug line = 222:17@362:5]
  %ctx_enckey_addr = getelementptr [32 x i8]* @ctx_enckey, i64 0, i64 %tmp_i_26, !dbg !355 ; [#uses=1 type=i8*] [debug line = 222:17@362:5]
  %ctx_enckey_load = load i8* %ctx_enckey_addr, align 1, !dbg !355 ; [#uses=2 type=i8] [debug line = 222:17@362:5]
  %ctx_key_addr = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_i_26, !dbg !355 ; [#uses=1 type=i8*] [debug line = 222:17@362:5]
  store i8 %ctx_enckey_load, i8* %ctx_key_addr, align 1, !dbg !355 ; [debug line = 222:17@362:5]
  %buf_addr_22 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_i_26, !dbg !355 ; [#uses=2 type=i8*] [debug line = 222:17@362:5]
  %buf_load = load i8* %buf_addr_22, align 1, !dbg !355 ; [#uses=1 type=i8] [debug line = 222:17@362:5]
  %tmp_207_i = xor i8 %buf_load, %ctx_enckey_load, !dbg !355 ; [#uses=1 type=i8] [debug line = 222:17@362:5]
  store i8 %tmp_207_i, i8* %buf_addr_22, align 1, !dbg !355 ; [debug line = 222:17@362:5]
  %tmp_209_i = add i5 %i_i, 15, !dbg !355         ; [#uses=1 type=i5] [debug line = 222:17@362:5]
  %tmp_210_i = zext i5 %tmp_209_i to i64, !dbg !355 ; [#uses=2 type=i64] [debug line = 222:17@362:5]
  %ctx_enckey_addr_1 = getelementptr [32 x i8]* @ctx_enckey, i64 0, i64 %tmp_210_i, !dbg !355 ; [#uses=1 type=i8*] [debug line = 222:17@362:5]
  %ctx_enckey_load_1 = load i8* %ctx_enckey_addr_1, align 1, !dbg !355 ; [#uses=1 type=i8] [debug line = 222:17@362:5]
  %ctx_key_addr_16 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_210_i, !dbg !355 ; [#uses=1 type=i8*] [debug line = 222:17@362:5]
  store i8 %ctx_enckey_load_1, i8* %ctx_key_addr_16, align 1, !dbg !355 ; [debug line = 222:17@362:5]
  br label %1, !dbg !355                          ; [debug line = 222:17@362:5]

aes_addRoundKey_cpy.exit:                         ; preds = %8, %aes_addRoundKey_cpy.exit.preheader
  %i = phi i4 [ %i_38, %8 ], [ 1, %aes_addRoundKey_cpy.exit.preheader ] ; [#uses=3 type=i4]
  %exitcond = icmp eq i4 %i, -2, !dbg !354        ; [#uses=1 type=i1] [debug line = 363:9]
  %empty_27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 13, i64 13, i64 13) ; [#uses=0 type=i32]
  br i1 %exitcond, label %.preheader.preheader, label %.preheader50.preheader, !dbg !354 ; [debug line = 363:9]

.preheader50.preheader:                           ; preds = %aes_addRoundKey_cpy.exit
  br label %.preheader50, !dbg !356               ; [debug line = 198:5@365:9]

.preheader.preheader:                             ; preds = %aes_addRoundKey_cpy.exit
  br label %.preheader, !dbg !360                 ; [debug line = 198:5@371:5]

.preheader50:                                     ; preds = %3, %.preheader50.preheader
  %i_i4 = phi i5 [ %i_32, %3 ], [ -16, %.preheader50.preheader ] ; [#uses=2 type=i5]
  %i_32 = add i5 %i_i4, -1, !dbg !356             ; [#uses=2 type=i5] [debug line = 198:5@365:9]
  %i_34_cast = sext i5 %i_32 to i8, !dbg !356     ; [#uses=1 type=i8] [debug line = 198:5@365:9]
  call void @llvm.dbg.value(metadata !{i5 %i_32}, i64 0, metadata !362), !dbg !356 ; [debug line = 198:5@365:9] [debug variable = i]
  %tmp_i5 = icmp eq i5 %i_i4, 0, !dbg !356        ; [#uses=1 type=i1] [debug line = 198:5@365:9]
  %empty_28 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp_i5, label %aes_subBytes.exit, label %3, !dbg !356 ; [debug line = 198:5@365:9]

; <label>:3                                       ; preds = %.preheader50
  %tmp_i6 = zext i8 %i_34_cast to i64, !dbg !363  ; [#uses=1 type=i64] [debug line = 198:17@365:9]
  %buf_addr_24 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_i6, !dbg !363 ; [#uses=2 type=i8*] [debug line = 198:17@365:9]
  %buf_load_31 = load i8* %buf_addr_24, align 1, !dbg !363 ; [#uses=1 type=i8] [debug line = 198:17@365:9]
  %tmp_29_i = zext i8 %buf_load_31 to i64, !dbg !363 ; [#uses=1 type=i64] [debug line = 198:17@365:9]
  %sbox_addr_15 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_29_i, !dbg !363 ; [#uses=1 type=i8*] [debug line = 198:17@365:9]
  %sbox_load_15 = load i8* %sbox_addr_15, align 1, !dbg !363 ; [#uses=1 type=i8] [debug line = 198:17@365:9]
  store i8 %sbox_load_15, i8* %buf_addr_24, align 1, !dbg !363 ; [debug line = 198:17@365:9]
  br label %.preheader50, !dbg !363               ; [debug line = 198:17@365:9]

aes_subBytes.exit:                                ; preds = %.preheader50
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !364), !dbg !365 ; [debug line = 227:36@366:9] [debug variable = buf]
  %i_35 = load i8* %buf_addr, align 1, !dbg !345  ; [#uses=1 type=i8] [debug line = 231:5@366:9]
  call void @llvm.dbg.value(metadata !{i8 %i_35}, i64 0, metadata !366), !dbg !345 ; [debug line = 231:5@366:9] [debug variable = i]
  %buf_load_20 = load i8* %buf_addr_11, align 1, !dbg !345 ; [#uses=1 type=i8] [debug line = 231:5@366:9]
  store i8 %buf_load_20, i8* %buf_addr, align 1, !dbg !345 ; [debug line = 231:5@366:9]
  %buf_load_21 = load i8* %buf_addr_12, align 1, !dbg !345 ; [#uses=1 type=i8] [debug line = 231:5@366:9]
  store i8 %buf_load_21, i8* %buf_addr_11, align 1, !dbg !345 ; [debug line = 231:5@366:9]
  %buf_load_22 = load i8* %buf_addr_13, align 1, !dbg !345 ; [#uses=1 type=i8] [debug line = 231:5@366:9]
  store i8 %buf_load_22, i8* %buf_addr_12, align 1, !dbg !345 ; [debug line = 231:5@366:9]
  store i8 %i_35, i8* %buf_addr_13, align 1, !dbg !345 ; [debug line = 231:5@366:9]
  %i_36 = load i8* %buf_addr_14, align 1, !dbg !351 ; [#uses=1 type=i8] [debug line = 232:5@366:9]
  call void @llvm.dbg.value(metadata !{i8 %i_36}, i64 0, metadata !366), !dbg !351 ; [debug line = 232:5@366:9] [debug variable = i]
  %buf_load_24 = load i8* %buf_addr_15, align 1, !dbg !351 ; [#uses=1 type=i8] [debug line = 232:5@366:9]
  store i8 %buf_load_24, i8* %buf_addr_14, align 1, !dbg !351 ; [debug line = 232:5@366:9]
  store i8 %i_36, i8* %buf_addr_15, align 1, !dbg !351 ; [debug line = 232:5@366:9]
  %j_2 = load i8* %buf_addr_16, align 1, !dbg !352 ; [#uses=1 type=i8] [debug line = 233:5@366:9]
  call void @llvm.dbg.value(metadata !{i8 %j_2}, i64 0, metadata !367), !dbg !352 ; [debug line = 233:5@366:9] [debug variable = j]
  %buf_load_26 = load i8* %buf_addr_17, align 1, !dbg !352 ; [#uses=1 type=i8] [debug line = 233:5@366:9]
  store i8 %buf_load_26, i8* %buf_addr_16, align 1, !dbg !352 ; [debug line = 233:5@366:9]
  %buf_load_27 = load i8* %buf_addr_18, align 1, !dbg !352 ; [#uses=1 type=i8] [debug line = 233:5@366:9]
  store i8 %buf_load_27, i8* %buf_addr_17, align 1, !dbg !352 ; [debug line = 233:5@366:9]
  %buf_load_28 = load i8* %buf_addr_19, align 1, !dbg !352 ; [#uses=1 type=i8] [debug line = 233:5@366:9]
  store i8 %buf_load_28, i8* %buf_addr_18, align 1, !dbg !352 ; [debug line = 233:5@366:9]
  store i8 %j_2, i8* %buf_addr_19, align 1, !dbg !352 ; [debug line = 233:5@366:9]
  %j_3 = load i8* %buf_addr_20, align 1, !dbg !353 ; [#uses=1 type=i8] [debug line = 234:5@366:9]
  call void @llvm.dbg.value(metadata !{i8 %j_3}, i64 0, metadata !367), !dbg !353 ; [debug line = 234:5@366:9] [debug variable = j]
  %buf_load_30 = load i8* %buf_addr_21, align 1, !dbg !353 ; [#uses=1 type=i8] [debug line = 234:5@366:9]
  store i8 %buf_load_30, i8* %buf_addr_20, align 1, !dbg !353 ; [debug line = 234:5@366:9]
  store i8 %j_3, i8* %buf_addr_21, align 1, !dbg !353 ; [debug line = 234:5@366:9]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !368), !dbg !371 ; [debug line = 251:37@367:9] [debug variable = buf]
  br label %4, !dbg !372                          ; [debug line = 255:10@367:9]

; <label>:4                                       ; preds = %5, %aes_subBytes.exit
  %i_i2 = phi i5 [ 0, %aes_subBytes.exit ], [ %i_37, %5 ] ; [#uses=4 type=i5]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i_i2, i32 4), !dbg !372 ; [#uses=1 type=i1] [debug line = 255:10@367:9]
  %empty_29 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %tmp, label %aes_mixColumns.exit, label %5, !dbg !372 ; [debug line = 255:10@367:9]

; <label>:5                                       ; preds = %4
  %tmp_i2 = zext i5 %i_i2 to i64, !dbg !375       ; [#uses=1 type=i64] [debug line = 257:9@367:9]
  %buf_addr_25 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_i2, !dbg !375 ; [#uses=2 type=i8*] [debug line = 257:9@367:9]
  %a = load i8* %buf_addr_25, align 1, !dbg !375  ; [#uses=3 type=i8] [debug line = 257:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %a}, i64 0, metadata !377), !dbg !375 ; [debug line = 257:9@367:9] [debug variable = a]
  %tmp_28 = trunc i5 %i_i2 to i4, !dbg !378       ; [#uses=3 type=i4] [debug line = 258:9@367:9]
  %tmp_63_i = or i4 %tmp_28, 1, !dbg !378         ; [#uses=1 type=i4] [debug line = 258:9@367:9]
  %tmp_64_i = zext i4 %tmp_63_i to i64, !dbg !378 ; [#uses=1 type=i64] [debug line = 258:9@367:9]
  %buf_addr_26 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_64_i, !dbg !378 ; [#uses=2 type=i8*] [debug line = 258:9@367:9]
  %b = load i8* %buf_addr_26, align 1, !dbg !378  ; [#uses=3 type=i8] [debug line = 258:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !379), !dbg !378 ; [debug line = 258:9@367:9] [debug variable = b]
  %tmp_65_i = or i4 %tmp_28, 2, !dbg !380         ; [#uses=1 type=i4] [debug line = 259:9@367:9]
  %tmp_66_i = zext i4 %tmp_65_i to i64, !dbg !380 ; [#uses=1 type=i64] [debug line = 259:9@367:9]
  %buf_addr_27 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_66_i, !dbg !380 ; [#uses=2 type=i8*] [debug line = 259:9@367:9]
  %c = load i8* %buf_addr_27, align 1, !dbg !380  ; [#uses=4 type=i8] [debug line = 259:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %c}, i64 0, metadata !381), !dbg !380 ; [debug line = 259:9@367:9] [debug variable = c]
  %tmp_67_i = or i4 %tmp_28, 3, !dbg !382         ; [#uses=1 type=i4] [debug line = 260:9@367:9]
  %tmp_68_i = zext i4 %tmp_67_i to i64, !dbg !382 ; [#uses=1 type=i64] [debug line = 260:9@367:9]
  %buf_addr_28 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_68_i, !dbg !382 ; [#uses=2 type=i8*] [debug line = 260:9@367:9]
  %d = load i8* %buf_addr_28, align 1, !dbg !382  ; [#uses=3 type=i8] [debug line = 260:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %d}, i64 0, metadata !383), !dbg !382 ; [debug line = 260:9@367:9] [debug variable = d]
  %x_assign = xor i8 %b, %a, !dbg !384            ; [#uses=3 type=i8] [debug line = 261:9@367:9]
  %tmp_70_i = xor i8 %c, %x_assign, !dbg !384     ; [#uses=2 type=i8] [debug line = 261:9@367:9]
  %e = xor i8 %d, %tmp_70_i, !dbg !384            ; [#uses=3 type=i8] [debug line = 261:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !385), !dbg !384 ; [debug line = 261:9@367:9] [debug variable = e]
  call void @llvm.dbg.value(metadata !{i8 %x_assign}, i64 0, metadata !386), !dbg !388 ; [debug line = 187:33@262:23@367:9] [debug variable = x]
  %y = shl i8 %x_assign, 1, !dbg !389             ; [#uses=2 type=i8] [debug line = 189:34@262:23@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !390), !dbg !389 ; [debug line = 189:34@262:23@367:9] [debug variable = y]
  %tmp_30 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign, i32 7), !dbg !391 ; [#uses=1 type=i1] [debug line = 190:5@262:23@367:9]
  %tmp_1_i_i = xor i8 %y, 27, !dbg !391           ; [#uses=1 type=i8] [debug line = 190:5@262:23@367:9]
  %y_21 = select i1 %tmp_30, i8 %tmp_1_i_i, i8 %y, !dbg !391 ; [#uses=1 type=i8] [debug line = 190:5@262:23@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y_21}, i64 0, metadata !390), !dbg !391 ; [debug line = 190:5@262:23@367:9] [debug variable = y]
  %tmp1 = xor i8 %y_21, %e, !dbg !387             ; [#uses=1 type=i8] [debug line = 262:23@367:9]
  %tmp_73_i = xor i8 %tmp1, %a, !dbg !387         ; [#uses=1 type=i8] [debug line = 262:23@367:9]
  store i8 %tmp_73_i, i8* %buf_addr_25, align 1, !dbg !387 ; [debug line = 262:23@367:9]
  %x_assign_9 = xor i8 %c, %b, !dbg !392          ; [#uses=2 type=i8] [debug line = 263:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_9}, i64 0, metadata !393), !dbg !394 ; [debug line = 187:33@263:27@367:9] [debug variable = x]
  %y_22 = shl i8 %x_assign_9, 1, !dbg !395        ; [#uses=2 type=i8] [debug line = 189:34@263:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y_22}, i64 0, metadata !396), !dbg !395 ; [debug line = 189:34@263:27@367:9] [debug variable = y]
  %tmp_32 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_9, i32 7), !dbg !397 ; [#uses=1 type=i1] [debug line = 190:5@263:27@367:9]
  %tmp_1_i10_i = xor i8 %y_22, 27, !dbg !397      ; [#uses=1 type=i8] [debug line = 190:5@263:27@367:9]
  %y_23 = select i1 %tmp_32, i8 %tmp_1_i10_i, i8 %y_22, !dbg !397 ; [#uses=1 type=i8] [debug line = 190:5@263:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y_23}, i64 0, metadata !396), !dbg !397 ; [debug line = 190:5@263:27@367:9] [debug variable = y]
  %tmp2 = xor i8 %y_23, %e, !dbg !392             ; [#uses=1 type=i8] [debug line = 263:27@367:9]
  %tmp_77_i = xor i8 %tmp2, %b, !dbg !392         ; [#uses=1 type=i8] [debug line = 263:27@367:9]
  store i8 %tmp_77_i, i8* %buf_addr_26, align 1, !dbg !392 ; [debug line = 263:27@367:9]
  %x_assign_s = xor i8 %d, %c, !dbg !398          ; [#uses=2 type=i8] [debug line = 264:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_s}, i64 0, metadata !399), !dbg !400 ; [debug line = 187:33@264:27@367:9] [debug variable = x]
  %y_24 = shl i8 %x_assign_s, 1, !dbg !401        ; [#uses=2 type=i8] [debug line = 189:34@264:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y_24}, i64 0, metadata !402), !dbg !401 ; [debug line = 189:34@264:27@367:9] [debug variable = y]
  %tmp_34 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_s, i32 7), !dbg !403 ; [#uses=1 type=i1] [debug line = 190:5@264:27@367:9]
  %tmp_1_i14_i = xor i8 %y_24, 27, !dbg !403      ; [#uses=1 type=i8] [debug line = 190:5@264:27@367:9]
  %y_25 = select i1 %tmp_34, i8 %tmp_1_i14_i, i8 %y_24, !dbg !403 ; [#uses=1 type=i8] [debug line = 190:5@264:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y_25}, i64 0, metadata !402), !dbg !403 ; [debug line = 190:5@264:27@367:9] [debug variable = y]
  %tmp3 = xor i8 %y_25, %e, !dbg !398             ; [#uses=1 type=i8] [debug line = 264:27@367:9]
  %tmp_81_i = xor i8 %tmp3, %c, !dbg !398         ; [#uses=1 type=i8] [debug line = 264:27@367:9]
  store i8 %tmp_81_i, i8* %buf_addr_27, align 1, !dbg !398 ; [debug line = 264:27@367:9]
  %x_assign_1 = xor i8 %d, %a, !dbg !404          ; [#uses=2 type=i8] [debug line = 265:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_1}, i64 0, metadata !405), !dbg !406 ; [debug line = 187:33@265:27@367:9] [debug variable = x]
  %y_26 = shl i8 %x_assign_1, 1, !dbg !407        ; [#uses=2 type=i8] [debug line = 189:34@265:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y_26}, i64 0, metadata !408), !dbg !407 ; [debug line = 189:34@265:27@367:9] [debug variable = y]
  %tmp_36 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1, i32 7), !dbg !409 ; [#uses=1 type=i1] [debug line = 190:5@265:27@367:9]
  %tmp_1_i18_i = xor i8 %y_26, 27, !dbg !409      ; [#uses=1 type=i8] [debug line = 190:5@265:27@367:9]
  %y_27 = select i1 %tmp_36, i8 %tmp_1_i18_i, i8 %y_26, !dbg !409 ; [#uses=1 type=i8] [debug line = 190:5@265:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y_27}, i64 0, metadata !408), !dbg !409 ; [debug line = 190:5@265:27@367:9] [debug variable = y]
  %tmp_85_i = xor i8 %y_27, %tmp_70_i, !dbg !404  ; [#uses=1 type=i8] [debug line = 265:27@367:9]
  store i8 %tmp_85_i, i8* %buf_addr_28, align 1, !dbg !404 ; [debug line = 265:27@367:9]
  %i_37 = add i5 4, %i_i2, !dbg !410              ; [#uses=1 type=i5] [debug line = 255:25@367:9]
  call void @llvm.dbg.value(metadata !{i5 %i_37}, i64 0, metadata !411), !dbg !410 ; [debug line = 255:25@367:9] [debug variable = i]
  br label %4, !dbg !410                          ; [debug line = 255:25@367:9]

aes_mixColumns.exit:                              ; preds = %4
  %tmp_27 = trunc i4 %i to i1, !dbg !354          ; [#uses=1 type=i1] [debug line = 363:9]
  br i1 %tmp_27, label %6, label %7, !dbg !412    ; [debug line = 368:9]

; <label>:6                                       ; preds = %aes_mixColumns.exit
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx_key, i6 16), !dbg !413 ; [debug line = 368:21]
  br label %8, !dbg !413                          ; [debug line = 368:21]

; <label>:7                                       ; preds = %aes_mixColumns.exit
  %rcon_load_1 = load i8* %rcon, !dbg !414        ; [#uses=1 type=i8] [debug line = 369:14]
  %rcon_1 = call fastcc i8 @aes_expandEncKey([32 x i8]* @ctx_key, i8 %rcon_load_1), !dbg !414 ; [#uses=1 type=i8] [debug line = 369:14]
  call void @llvm.dbg.value(metadata !{i8 %rcon_1}, i64 0, metadata !344), !dbg !414 ; [debug line = 369:14] [debug variable = rcon]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx_key, i6 0), !dbg !415 ; [debug line = 369:49]
  store i8 %rcon_1, i8* %rcon, !dbg !414          ; [debug line = 369:14]
  br label %8

; <label>:8                                       ; preds = %7, %6
  %i_38 = add i4 %i, 1, !dbg !416                 ; [#uses=1 type=i4] [debug line = 363:34]
  call void @llvm.dbg.value(metadata !{i4 %i_38}, i64 0, metadata !417), !dbg !416 ; [debug line = 363:34] [debug variable = i]
  br label %aes_addRoundKey_cpy.exit, !dbg !416   ; [debug line = 363:34]

.preheader:                                       ; preds = %9, %.preheader.preheader
  %i_i1 = phi i5 [ %i_31, %9 ], [ -16, %.preheader.preheader ] ; [#uses=2 type=i5]
  %i_31 = add i5 %i_i1, -1, !dbg !360             ; [#uses=2 type=i5] [debug line = 198:5@371:5]
  %i_33_cast = sext i5 %i_31 to i8, !dbg !360     ; [#uses=1 type=i8] [debug line = 198:5@371:5]
  call void @llvm.dbg.value(metadata !{i5 %i_31}, i64 0, metadata !418), !dbg !360 ; [debug line = 198:5@371:5] [debug variable = i]
  %tmp_i8 = icmp eq i5 %i_i1, 0, !dbg !360        ; [#uses=1 type=i1] [debug line = 198:5@371:5]
  %empty_30 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp_i8, label %aes_subBytes.exit25, label %9, !dbg !360 ; [debug line = 198:5@371:5]

; <label>:9                                       ; preds = %.preheader
  %tmp_i1 = zext i8 %i_33_cast to i64, !dbg !419  ; [#uses=1 type=i64] [debug line = 198:17@371:5]
  %buf_addr_23 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_i1, !dbg !419 ; [#uses=2 type=i8*] [debug line = 198:17@371:5]
  %buf_load_18 = load i8* %buf_addr_23, align 1, !dbg !419 ; [#uses=1 type=i8] [debug line = 198:17@371:5]
  %tmp_29_i1 = zext i8 %buf_load_18 to i64, !dbg !419 ; [#uses=1 type=i64] [debug line = 198:17@371:5]
  %sbox_addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_29_i1, !dbg !419 ; [#uses=1 type=i8*] [debug line = 198:17@371:5]
  %sbox_load = load i8* %sbox_addr, align 1, !dbg !419 ; [#uses=1 type=i8] [debug line = 198:17@371:5]
  store i8 %sbox_load, i8* %buf_addr_23, align 1, !dbg !419 ; [debug line = 198:17@371:5]
  br label %.preheader, !dbg !419                 ; [debug line = 198:17@371:5]

aes_subBytes.exit25:                              ; preds = %.preheader
  %rcon_load = load i8* %rcon, !dbg !420          ; [#uses=1 type=i8] [debug line = 373:5]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !421), !dbg !423 ; [debug line = 227:36@372:5] [debug variable = buf]
  %i_33 = load i8* %buf_addr, align 1, !dbg !424  ; [#uses=1 type=i8] [debug line = 231:5@372:5]
  call void @llvm.dbg.value(metadata !{i8 %i_33}, i64 0, metadata !425), !dbg !424 ; [debug line = 231:5@372:5] [debug variable = i]
  %buf_load_7 = load i8* %buf_addr_11, align 1, !dbg !424 ; [#uses=1 type=i8] [debug line = 231:5@372:5]
  store i8 %buf_load_7, i8* %buf_addr, align 1, !dbg !424 ; [debug line = 231:5@372:5]
  %buf_load_8 = load i8* %buf_addr_12, align 1, !dbg !424 ; [#uses=1 type=i8] [debug line = 231:5@372:5]
  store i8 %buf_load_8, i8* %buf_addr_11, align 1, !dbg !424 ; [debug line = 231:5@372:5]
  %buf_load_9 = load i8* %buf_addr_13, align 1, !dbg !424 ; [#uses=1 type=i8] [debug line = 231:5@372:5]
  store i8 %buf_load_9, i8* %buf_addr_12, align 1, !dbg !424 ; [debug line = 231:5@372:5]
  store i8 %i_33, i8* %buf_addr_13, align 1, !dbg !424 ; [debug line = 231:5@372:5]
  %i_34 = load i8* %buf_addr_14, align 1, !dbg !426 ; [#uses=1 type=i8] [debug line = 232:5@372:5]
  call void @llvm.dbg.value(metadata !{i8 %i_34}, i64 0, metadata !425), !dbg !426 ; [debug line = 232:5@372:5] [debug variable = i]
  %buf_load_11 = load i8* %buf_addr_15, align 1, !dbg !426 ; [#uses=1 type=i8] [debug line = 232:5@372:5]
  store i8 %buf_load_11, i8* %buf_addr_14, align 1, !dbg !426 ; [debug line = 232:5@372:5]
  store i8 %i_34, i8* %buf_addr_15, align 1, !dbg !426 ; [debug line = 232:5@372:5]
  %j = load i8* %buf_addr_16, align 1, !dbg !427  ; [#uses=1 type=i8] [debug line = 233:5@372:5]
  call void @llvm.dbg.value(metadata !{i8 %j}, i64 0, metadata !428), !dbg !427 ; [debug line = 233:5@372:5] [debug variable = j]
  %buf_load_13 = load i8* %buf_addr_17, align 1, !dbg !427 ; [#uses=1 type=i8] [debug line = 233:5@372:5]
  store i8 %buf_load_13, i8* %buf_addr_16, align 1, !dbg !427 ; [debug line = 233:5@372:5]
  %buf_load_14 = load i8* %buf_addr_18, align 1, !dbg !427 ; [#uses=1 type=i8] [debug line = 233:5@372:5]
  store i8 %buf_load_14, i8* %buf_addr_17, align 1, !dbg !427 ; [debug line = 233:5@372:5]
  %buf_load_15 = load i8* %buf_addr_19, align 1, !dbg !427 ; [#uses=1 type=i8] [debug line = 233:5@372:5]
  store i8 %buf_load_15, i8* %buf_addr_18, align 1, !dbg !427 ; [debug line = 233:5@372:5]
  store i8 %j, i8* %buf_addr_19, align 1, !dbg !427 ; [debug line = 233:5@372:5]
  %j_1 = load i8* %buf_addr_20, align 1, !dbg !429 ; [#uses=1 type=i8] [debug line = 234:5@372:5]
  call void @llvm.dbg.value(metadata !{i8 %j_1}, i64 0, metadata !428), !dbg !429 ; [debug line = 234:5@372:5] [debug variable = j]
  %buf_load_17 = load i8* %buf_addr_21, align 1, !dbg !429 ; [#uses=1 type=i8] [debug line = 234:5@372:5]
  store i8 %buf_load_17, i8* %buf_addr_20, align 1, !dbg !429 ; [debug line = 234:5@372:5]
  store i8 %j_1, i8* %buf_addr_21, align 1, !dbg !429 ; [debug line = 234:5@372:5]
  %call_ret1 = call fastcc i8 @aes_expandEncKey([32 x i8]* @ctx_key, i8 %rcon_load), !dbg !420 ; [#uses=0 type=i8] [debug line = 373:5]
  call void @llvm.dbg.value(metadata !{i8 %call_ret1}, i64 0, metadata !344), !dbg !420 ; [debug line = 373:5] [debug variable = rcon]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx_key, i6 0), !dbg !430 ; [debug line = 374:5]
  ret void, !dbg !431                             ; [debug line = 375:1]
}

; [#uses=1]
define internal fastcc void @aes_decrypt_ecb([16 x i8]* nocapture %buf) {
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !432), !dbg !434 ; [debug line = 378:49] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !435), !dbg !438 ; [debug line = 218:42@382:5] [debug variable = buf]
  br label %1, !dbg !439                          ; [debug line = 222:5@382:5]

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i5 [ -16, %0 ], [ %i_39, %2 ]        ; [#uses=3 type=i5]
  %i_39 = add i5 %i_i, -1, !dbg !439              ; [#uses=2 type=i5] [debug line = 222:5@382:5]
  %i_42_cast = sext i5 %i_39 to i8, !dbg !439     ; [#uses=1 type=i8] [debug line = 222:5@382:5]
  call void @llvm.dbg.value(metadata !{i5 %i_39}, i64 0, metadata !440), !dbg !439 ; [debug line = 222:5@382:5] [debug variable = i]
  %tmp_i = icmp eq i5 %i_i, 0, !dbg !439          ; [#uses=1 type=i1] [debug line = 222:5@382:5]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp_i, label %aes_addRoundKey_cpy.exit, label %2, !dbg !439 ; [debug line = 222:5@382:5]

; <label>:2                                       ; preds = %1
  %tmp_i_31 = zext i8 %i_42_cast to i64, !dbg !441 ; [#uses=3 type=i64] [debug line = 222:17@382:5]
  %ctx_deckey_addr = getelementptr [32 x i8]* @ctx_deckey, i64 0, i64 %tmp_i_31, !dbg !441 ; [#uses=1 type=i8*] [debug line = 222:17@382:5]
  %ctx_deckey_load = load i8* %ctx_deckey_addr, align 1, !dbg !441 ; [#uses=2 type=i8] [debug line = 222:17@382:5]
  %ctx_key_addr = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_i_31, !dbg !441 ; [#uses=1 type=i8*] [debug line = 222:17@382:5]
  store i8 %ctx_deckey_load, i8* %ctx_key_addr, align 1, !dbg !441 ; [debug line = 222:17@382:5]
  %buf_addr_40 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_i_31, !dbg !441 ; [#uses=2 type=i8*] [debug line = 222:17@382:5]
  %buf_load_46 = load i8* %buf_addr_40, align 1, !dbg !441 ; [#uses=1 type=i8] [debug line = 222:17@382:5]
  %tmp_207_i = xor i8 %buf_load_46, %ctx_deckey_load, !dbg !441 ; [#uses=1 type=i8] [debug line = 222:17@382:5]
  store i8 %tmp_207_i, i8* %buf_addr_40, align 1, !dbg !441 ; [debug line = 222:17@382:5]
  %tmp_209_i = add i5 %i_i, 15, !dbg !441         ; [#uses=1 type=i5] [debug line = 222:17@382:5]
  %tmp_210_i = zext i5 %tmp_209_i to i64, !dbg !441 ; [#uses=2 type=i64] [debug line = 222:17@382:5]
  %ctx_deckey_addr_1 = getelementptr [32 x i8]* @ctx_deckey, i64 0, i64 %tmp_210_i, !dbg !441 ; [#uses=1 type=i8*] [debug line = 222:17@382:5]
  %ctx_deckey_load_1 = load i8* %ctx_deckey_addr_1, align 1, !dbg !441 ; [#uses=1 type=i8] [debug line = 222:17@382:5]
  %ctx_key_addr_17 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_210_i, !dbg !441 ; [#uses=1 type=i8*] [debug line = 222:17@382:5]
  store i8 %ctx_deckey_load_1, i8* %ctx_key_addr_17, align 1, !dbg !441 ; [debug line = 222:17@382:5]
  br label %1, !dbg !441                          ; [debug line = 222:17@382:5]

aes_addRoundKey_cpy.exit:                         ; preds = %1
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !442), !dbg !445 ; [debug line = 239:40@383:5] [debug variable = buf]
  %buf_addr = getelementptr [16 x i8]* %buf, i64 0, i64 1, !dbg !446 ; [#uses=4 type=i8*] [debug line = 243:5@383:5]
  %i_40 = load i8* %buf_addr, align 1, !dbg !446  ; [#uses=1 type=i8] [debug line = 243:5@383:5]
  call void @llvm.dbg.value(metadata !{i8 %i_40}, i64 0, metadata !448), !dbg !446 ; [debug line = 243:5@383:5] [debug variable = i]
  %buf_addr_29 = getelementptr [16 x i8]* %buf, i64 0, i64 13, !dbg !446 ; [#uses=4 type=i8*] [debug line = 243:5@383:5]
  %buf_load = load i8* %buf_addr_29, align 1, !dbg !446 ; [#uses=1 type=i8] [debug line = 243:5@383:5]
  store i8 %buf_load, i8* %buf_addr, align 1, !dbg !446 ; [debug line = 243:5@383:5]
  %buf_addr_30 = getelementptr [16 x i8]* %buf, i64 0, i64 9, !dbg !446 ; [#uses=4 type=i8*] [debug line = 243:5@383:5]
  %buf_load_36 = load i8* %buf_addr_30, align 1, !dbg !446 ; [#uses=1 type=i8] [debug line = 243:5@383:5]
  store i8 %buf_load_36, i8* %buf_addr_29, align 1, !dbg !446 ; [debug line = 243:5@383:5]
  %buf_addr_31 = getelementptr [16 x i8]* %buf, i64 0, i64 5, !dbg !446 ; [#uses=4 type=i8*] [debug line = 243:5@383:5]
  %buf_load_37 = load i8* %buf_addr_31, align 1, !dbg !446 ; [#uses=1 type=i8] [debug line = 243:5@383:5]
  store i8 %buf_load_37, i8* %buf_addr_30, align 1, !dbg !446 ; [debug line = 243:5@383:5]
  store i8 %i_40, i8* %buf_addr_31, align 1, !dbg !446 ; [debug line = 243:5@383:5]
  %buf_addr_32 = getelementptr [16 x i8]* %buf, i64 0, i64 2, !dbg !449 ; [#uses=4 type=i8*] [debug line = 244:5@383:5]
  %i_41 = load i8* %buf_addr_32, align 1, !dbg !449 ; [#uses=1 type=i8] [debug line = 244:5@383:5]
  call void @llvm.dbg.value(metadata !{i8 %i_41}, i64 0, metadata !448), !dbg !449 ; [debug line = 244:5@383:5] [debug variable = i]
  %buf_addr_33 = getelementptr [16 x i8]* %buf, i64 0, i64 10, !dbg !449 ; [#uses=4 type=i8*] [debug line = 244:5@383:5]
  %buf_load_39 = load i8* %buf_addr_33, align 1, !dbg !449 ; [#uses=1 type=i8] [debug line = 244:5@383:5]
  store i8 %buf_load_39, i8* %buf_addr_32, align 1, !dbg !449 ; [debug line = 244:5@383:5]
  store i8 %i_41, i8* %buf_addr_33, align 1, !dbg !449 ; [debug line = 244:5@383:5]
  %buf_addr_34 = getelementptr [16 x i8]* %buf, i64 0, i64 3, !dbg !450 ; [#uses=4 type=i8*] [debug line = 245:5@383:5]
  %j = load i8* %buf_addr_34, align 1, !dbg !450  ; [#uses=1 type=i8] [debug line = 245:5@383:5]
  call void @llvm.dbg.value(metadata !{i8 %j}, i64 0, metadata !451), !dbg !450 ; [debug line = 245:5@383:5] [debug variable = j]
  %buf_addr_35 = getelementptr [16 x i8]* %buf, i64 0, i64 7, !dbg !450 ; [#uses=4 type=i8*] [debug line = 245:5@383:5]
  %buf_load_41 = load i8* %buf_addr_35, align 1, !dbg !450 ; [#uses=1 type=i8] [debug line = 245:5@383:5]
  store i8 %buf_load_41, i8* %buf_addr_34, align 1, !dbg !450 ; [debug line = 245:5@383:5]
  %buf_addr_36 = getelementptr [16 x i8]* %buf, i64 0, i64 11, !dbg !450 ; [#uses=4 type=i8*] [debug line = 245:5@383:5]
  %buf_load_42 = load i8* %buf_addr_36, align 1, !dbg !450 ; [#uses=1 type=i8] [debug line = 245:5@383:5]
  store i8 %buf_load_42, i8* %buf_addr_35, align 1, !dbg !450 ; [debug line = 245:5@383:5]
  %buf_addr_37 = getelementptr [16 x i8]* %buf, i64 0, i64 15, !dbg !450 ; [#uses=4 type=i8*] [debug line = 245:5@383:5]
  %buf_load_43 = load i8* %buf_addr_37, align 1, !dbg !450 ; [#uses=1 type=i8] [debug line = 245:5@383:5]
  store i8 %buf_load_43, i8* %buf_addr_36, align 1, !dbg !450 ; [debug line = 245:5@383:5]
  store i8 %j, i8* %buf_addr_37, align 1, !dbg !450 ; [debug line = 245:5@383:5]
  %buf_addr_38 = getelementptr [16 x i8]* %buf, i64 0, i64 6, !dbg !452 ; [#uses=4 type=i8*] [debug line = 246:5@383:5]
  %j_4 = load i8* %buf_addr_38, align 1, !dbg !452 ; [#uses=1 type=i8] [debug line = 246:5@383:5]
  call void @llvm.dbg.value(metadata !{i8 %j_4}, i64 0, metadata !451), !dbg !452 ; [debug line = 246:5@383:5] [debug variable = j]
  %buf_addr_39 = getelementptr [16 x i8]* %buf, i64 0, i64 14, !dbg !452 ; [#uses=4 type=i8*] [debug line = 246:5@383:5]
  %buf_load_45 = load i8* %buf_addr_39, align 1, !dbg !452 ; [#uses=1 type=i8] [debug line = 246:5@383:5]
  store i8 %buf_load_45, i8* %buf_addr_38, align 1, !dbg !452 ; [debug line = 246:5@383:5]
  store i8 %j_4, i8* %buf_addr_39, align 1, !dbg !452 ; [debug line = 246:5@383:5]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !453), !dbg !456 ; [debug line = 202:39@384:5] [debug variable = buf]
  br label %3, !dbg !457                          ; [debug line = 206:5@384:5]

; <label>:3                                       ; preds = %4, %aes_addRoundKey_cpy.exit
  %i_i5 = phi i5 [ -16, %aes_addRoundKey_cpy.exit ], [ %i_42, %4 ] ; [#uses=2 type=i5]
  %i_42 = add i5 %i_i5, -1, !dbg !457             ; [#uses=2 type=i5] [debug line = 206:5@384:5]
  %i_45_cast = sext i5 %i_42 to i8, !dbg !457     ; [#uses=1 type=i8] [debug line = 206:5@384:5]
  call void @llvm.dbg.value(metadata !{i5 %i_42}, i64 0, metadata !459), !dbg !457 ; [debug line = 206:5@384:5] [debug variable = i]
  %tmp_i6 = icmp eq i5 %i_i5, 0, !dbg !457        ; [#uses=1 type=i1] [debug line = 206:5@384:5]
  %empty_32 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp_i6, label %aes_subBytes_inv.exit.preheader, label %4, !dbg !457 ; [debug line = 206:5@384:5]

aes_subBytes_inv.exit.preheader:                  ; preds = %3
  %rcon = alloca i8                               ; [#uses=3 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %rcon}, metadata !460) ; [debug variable = rcon]
  store i8 -128, i8* %rcon
  br label %aes_subBytes_inv.exit, !dbg !461      ; [debug line = 386:10]

; <label>:4                                       ; preds = %3
  %tmp_i7 = zext i8 %i_45_cast to i64, !dbg !463  ; [#uses=1 type=i64] [debug line = 206:17@384:5]
  %buf_addr_41 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_i7, !dbg !463 ; [#uses=2 type=i8*] [debug line = 206:17@384:5]
  %buf_load_47 = load i8* %buf_addr_41, align 1, !dbg !463 ; [#uses=1 type=i8] [debug line = 206:17@384:5]
  %tmp_28_i = zext i8 %buf_load_47 to i64, !dbg !463 ; [#uses=1 type=i64] [debug line = 206:17@384:5]
  %sboxinv_addr = getelementptr inbounds [256 x i8]* @sboxinv, i64 0, i64 %tmp_28_i, !dbg !463 ; [#uses=1 type=i8*] [debug line = 206:17@384:5]
  %sboxinv_load = load i8* %sboxinv_addr, align 1, !dbg !463 ; [#uses=1 type=i8] [debug line = 206:17@384:5]
  store i8 %sboxinv_load, i8* %buf_addr_41, align 1, !dbg !463 ; [debug line = 206:17@384:5]
  br label %3, !dbg !463                          ; [debug line = 206:17@384:5]

aes_subBytes_inv.exit:                            ; preds = %aes_subBytes_inv.exit43, %aes_subBytes_inv.exit.preheader
  %i = phi i4 [ %phitmp, %aes_subBytes_inv.exit43 ], [ -3, %aes_subBytes_inv.exit.preheader ] ; [#uses=3 type=i4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !464), !dbg !461 ; [debug line = 386:10] [debug variable = i]
  %tmp = icmp eq i4 %i, 0, !dbg !461              ; [#uses=1 type=i1] [debug line = 386:10]
  %empty_33 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 13, i64 13, i64 13) ; [#uses=0 type=i32]
  br i1 %tmp, label %11, label %5, !dbg !461      ; [debug line = 386:10]

; <label>:5                                       ; preds = %aes_subBytes_inv.exit
  %tmp_37 = trunc i4 %i to i1, !dbg !461          ; [#uses=1 type=i1] [debug line = 386:10]
  br i1 %tmp_37, label %6, label %7, !dbg !465    ; [debug line = 388:9]

; <label>:6                                       ; preds = %5
  %rcon_load = load i8* %rcon, !dbg !467          ; [#uses=1 type=i8] [debug line = 390:13]
  %rcon_2 = call fastcc i8 @aes_expandDecKey(i8 %rcon_load), !dbg !467 ; [#uses=1 type=i8] [debug line = 390:13]
  call void @llvm.dbg.value(metadata !{i8 %rcon_2}, i64 0, metadata !460), !dbg !467 ; [debug line = 390:13] [debug variable = rcon]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx_key, i6 16), !dbg !469 ; [debug line = 391:13]
  store i8 %rcon_2, i8* %rcon, !dbg !467          ; [debug line = 390:13]
  br label %8, !dbg !470                          ; [debug line = 392:9]

; <label>:7                                       ; preds = %5
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx_key, i6 0), !dbg !471 ; [debug line = 393:14]
  br label %8

; <label>:8                                       ; preds = %7, %6
  call fastcc void @aes_mixColumns_inv([16 x i8]* %buf), !dbg !472 ; [debug line = 394:9]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !473), !dbg !475 ; [debug line = 239:40@395:9] [debug variable = buf]
  %i_43 = load i8* %buf_addr, align 1, !dbg !476  ; [#uses=1 type=i8] [debug line = 243:5@395:9]
  call void @llvm.dbg.value(metadata !{i8 %i_43}, i64 0, metadata !477), !dbg !476 ; [debug line = 243:5@395:9] [debug variable = i]
  %buf_load_49 = load i8* %buf_addr_29, align 1, !dbg !476 ; [#uses=1 type=i8] [debug line = 243:5@395:9]
  store i8 %buf_load_49, i8* %buf_addr, align 1, !dbg !476 ; [debug line = 243:5@395:9]
  %buf_load_50 = load i8* %buf_addr_30, align 1, !dbg !476 ; [#uses=1 type=i8] [debug line = 243:5@395:9]
  store i8 %buf_load_50, i8* %buf_addr_29, align 1, !dbg !476 ; [debug line = 243:5@395:9]
  %buf_load_51 = load i8* %buf_addr_31, align 1, !dbg !476 ; [#uses=1 type=i8] [debug line = 243:5@395:9]
  store i8 %buf_load_51, i8* %buf_addr_30, align 1, !dbg !476 ; [debug line = 243:5@395:9]
  store i8 %i_43, i8* %buf_addr_31, align 1, !dbg !476 ; [debug line = 243:5@395:9]
  %i_44 = load i8* %buf_addr_32, align 1, !dbg !478 ; [#uses=1 type=i8] [debug line = 244:5@395:9]
  call void @llvm.dbg.value(metadata !{i8 %i_44}, i64 0, metadata !477), !dbg !478 ; [debug line = 244:5@395:9] [debug variable = i]
  %buf_load_53 = load i8* %buf_addr_33, align 1, !dbg !478 ; [#uses=1 type=i8] [debug line = 244:5@395:9]
  store i8 %buf_load_53, i8* %buf_addr_32, align 1, !dbg !478 ; [debug line = 244:5@395:9]
  store i8 %i_44, i8* %buf_addr_33, align 1, !dbg !478 ; [debug line = 244:5@395:9]
  %j_5 = load i8* %buf_addr_34, align 1, !dbg !479 ; [#uses=1 type=i8] [debug line = 245:5@395:9]
  call void @llvm.dbg.value(metadata !{i8 %j_5}, i64 0, metadata !480), !dbg !479 ; [debug line = 245:5@395:9] [debug variable = j]
  %buf_load_55 = load i8* %buf_addr_35, align 1, !dbg !479 ; [#uses=1 type=i8] [debug line = 245:5@395:9]
  store i8 %buf_load_55, i8* %buf_addr_34, align 1, !dbg !479 ; [debug line = 245:5@395:9]
  %buf_load_56 = load i8* %buf_addr_36, align 1, !dbg !479 ; [#uses=1 type=i8] [debug line = 245:5@395:9]
  store i8 %buf_load_56, i8* %buf_addr_35, align 1, !dbg !479 ; [debug line = 245:5@395:9]
  %buf_load_57 = load i8* %buf_addr_37, align 1, !dbg !479 ; [#uses=1 type=i8] [debug line = 245:5@395:9]
  store i8 %buf_load_57, i8* %buf_addr_36, align 1, !dbg !479 ; [debug line = 245:5@395:9]
  store i8 %j_5, i8* %buf_addr_37, align 1, !dbg !479 ; [debug line = 245:5@395:9]
  %j_6 = load i8* %buf_addr_38, align 1, !dbg !481 ; [#uses=1 type=i8] [debug line = 246:5@395:9]
  call void @llvm.dbg.value(metadata !{i8 %j_6}, i64 0, metadata !480), !dbg !481 ; [debug line = 246:5@395:9] [debug variable = j]
  %buf_load_59 = load i8* %buf_addr_39, align 1, !dbg !481 ; [#uses=1 type=i8] [debug line = 246:5@395:9]
  store i8 %buf_load_59, i8* %buf_addr_38, align 1, !dbg !481 ; [debug line = 246:5@395:9]
  store i8 %j_6, i8* %buf_addr_39, align 1, !dbg !481 ; [debug line = 246:5@395:9]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !482), !dbg !484 ; [debug line = 202:39@396:9] [debug variable = buf]
  br label %9, !dbg !485                          ; [debug line = 206:5@396:9]

; <label>:9                                       ; preds = %10, %8
  %i_i3 = phi i5 [ -16, %8 ], [ %i_45, %10 ]      ; [#uses=2 type=i5]
  %i_45 = add i5 %i_i3, -1, !dbg !485             ; [#uses=2 type=i5] [debug line = 206:5@396:9]
  %i_48_cast = sext i5 %i_45 to i8, !dbg !485     ; [#uses=1 type=i8] [debug line = 206:5@396:9]
  call void @llvm.dbg.value(metadata !{i5 %i_45}, i64 0, metadata !486), !dbg !485 ; [debug line = 206:5@396:9] [debug variable = i]
  %tmp_i1 = icmp eq i5 %i_i3, 0, !dbg !485        ; [#uses=1 type=i1] [debug line = 206:5@396:9]
  %empty_34 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp_i1, label %aes_subBytes_inv.exit43, label %10, !dbg !485 ; [debug line = 206:5@396:9]

; <label>:10                                      ; preds = %9
  %tmp_i3 = zext i8 %i_48_cast to i64, !dbg !487  ; [#uses=1 type=i64] [debug line = 206:17@396:9]
  %buf_addr_42 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_i3, !dbg !487 ; [#uses=2 type=i8*] [debug line = 206:17@396:9]
  %buf_load_60 = load i8* %buf_addr_42, align 1, !dbg !487 ; [#uses=1 type=i8] [debug line = 206:17@396:9]
  %tmp_28_i1 = zext i8 %buf_load_60 to i64, !dbg !487 ; [#uses=1 type=i64] [debug line = 206:17@396:9]
  %sboxinv_addr_1 = getelementptr inbounds [256 x i8]* @sboxinv, i64 0, i64 %tmp_28_i1, !dbg !487 ; [#uses=1 type=i8*] [debug line = 206:17@396:9]
  %sboxinv_load_1 = load i8* %sboxinv_addr_1, align 1, !dbg !487 ; [#uses=1 type=i8] [debug line = 206:17@396:9]
  store i8 %sboxinv_load_1, i8* %buf_addr_42, align 1, !dbg !487 ; [debug line = 206:17@396:9]
  br label %9, !dbg !487                          ; [debug line = 206:17@396:9]

aes_subBytes_inv.exit43:                          ; preds = %9
  %phitmp = add i4 %i, -1, !dbg !488              ; [#uses=1 type=i4] [debug line = 397:5]
  br label %aes_subBytes_inv.exit, !dbg !488      ; [debug line = 397:5]

; <label>:11                                      ; preds = %aes_subBytes_inv.exit
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx_key, i6 0), !dbg !489 ; [debug line = 398:5]
  ret void, !dbg !490                             ; [debug line = 399:1]
}

; [#uses=6]
define internal fastcc void @aes_addRoundKey([16 x i8]* nocapture %buf, [32 x i8]* nocapture %key, i6 %key_offset) {
  %key_offset_read = call i6 @_ssdm_op_Read.ap_auto.i6(i6 %key_offset) ; [#uses=1 type=i6]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !491), !dbg !493 ; [debug line = 210:38] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %key}, i64 0, metadata !494), !dbg !495 ; [debug line = 210:52] [debug variable = key]
  %tmp_38 = trunc i6 %key_offset_read to i5       ; [#uses=1 type=i5]
  br label %1, !dbg !496                          ; [debug line = 214:5]

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ -16, %0 ], [ %i_46, %2 ]          ; [#uses=2 type=i5]
  %i_46 = add i5 %i, -1, !dbg !496                ; [#uses=3 type=i5] [debug line = 214:5]
  %i_49_cast = sext i5 %i_46 to i8, !dbg !496     ; [#uses=1 type=i8] [debug line = 214:5]
  call void @llvm.dbg.value(metadata !{i5 %i_46}, i64 0, metadata !498), !dbg !496 ; [debug line = 214:5] [debug variable = i]
  %tmp = icmp eq i5 %i, 0, !dbg !496              ; [#uses=1 type=i1] [debug line = 214:5]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp, label %3, label %2, !dbg !496       ; [debug line = 214:5]

; <label>:2                                       ; preds = %1
  %tmp_s = zext i8 %i_49_cast to i64, !dbg !499   ; [#uses=1 type=i64] [debug line = 214:17]
  %sum = add i5 %i_46, %tmp_38                    ; [#uses=1 type=i5]
  %sum_cast = zext i5 %sum to i64                 ; [#uses=1 type=i64]
  %key_addr = getelementptr [32 x i8]* %key, i64 0, i64 %sum_cast, !dbg !499 ; [#uses=1 type=i8*] [debug line = 214:17]
  %key_load = load i8* %key_addr, align 1, !dbg !499 ; [#uses=1 type=i8] [debug line = 214:17]
  %buf_addr = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_s, !dbg !499 ; [#uses=2 type=i8*] [debug line = 214:17]
  %buf_load = load i8* %buf_addr, align 1, !dbg !499 ; [#uses=1 type=i8] [debug line = 214:17]
  %tmp_145 = xor i8 %buf_load, %key_load, !dbg !499 ; [#uses=1 type=i8] [debug line = 214:17]
  store i8 %tmp_145, i8* %buf_addr, align 1, !dbg !499 ; [debug line = 214:17]
  br label %1, !dbg !499                          ; [debug line = 214:17]

; <label>:3                                       ; preds = %1
  ret void, !dbg !500                             ; [debug line = 215:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=4]
define weak i32 @_ssdm_op_SpecMemCore(...) {
entry:
  ret i32 0
}

; [#uses=30]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=13]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=6]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=5]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i3 @_ssdm_op_Read.s_axilite.i3(i3) {
entry:
  ret i3 %0
}

; [#uses=2]
define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

; [#uses=1]
define weak i6 @_ssdm_op_Read.ap_auto.i6(i6) {
entry:
  ret i6 %0
}

; [#uses=1]
define weak i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2) ; [#uses=1 type=i8]
  %empty_35 = trunc i8 %empty to i7               ; [#uses=1 type=i7]
  ret i7 %empty_35
}

; [#uses=0]
declare i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6, i32, i32) nounwind readnone

; [#uses=0]
declare i4 @_ssdm_op_PartSelect.i4.i5.i32.i32(i5, i32, i32) nounwind readnone

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i8.i32.i32(i8, i32, i32) nounwind readnone

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i4.i32.i32(i4, i32, i32) nounwind readnone

; [#uses=14]
define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8                     ; [#uses=1 type=i8]
  %empty_36 = shl i8 1, %empty                    ; [#uses=1 type=i8]
  %empty_37 = and i8 %0, %empty_36                ; [#uses=1 type=i8]
  %empty_38 = icmp ne i8 %empty_37, 0             ; [#uses=1 type=i1]
  ret i1 %empty_38
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i6.i32(i6, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i6                     ; [#uses=1 type=i6]
  %empty_39 = shl i6 1, %empty                    ; [#uses=1 type=i6]
  %empty_40 = and i6 %0, %empty_39                ; [#uses=1 type=i6]
  %empty_41 = icmp ne i6 %empty_40, 0             ; [#uses=1 type=i1]
  ret i1 %empty_41
}

; [#uses=3]
define weak i1 @_ssdm_op_BitSelect.i1.i5.i32(i5, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i5                     ; [#uses=1 type=i5]
  %empty_42 = shl i5 1, %empty                    ; [#uses=1 type=i5]
  %empty_43 = and i5 %0, %empty_42                ; [#uses=1 type=i5]
  %empty_44 = icmp ne i5 %empty_43, 0             ; [#uses=1 type=i1]
  ret i1 %empty_44
}

; [#uses=0]
declare i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone

!opencl.kernels = !{!0, !7, !13, !19, !19, !21, !24, !28, !21, !21, !31, !21, !21, !21, !33, !28}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

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
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 7, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"data_in", metadata !43, metadata !"unsigned char", i32 0, i32 7}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 15, i32 1}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 7, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"data_out", metadata !43, metadata !"unsigned char", i32 0, i32 7}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 2, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"mode", metadata !53, metadata !"enum ", i32 0, i32 2}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 0, i32 0}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 7, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"key_in", metadata !59, metadata !"unsigned char", i32 0, i32 7}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 31, i32 1}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 7, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"iv_in", metadata !43, metadata !"unsigned char", i32 0, i32 7}
!65 = metadata !{i32 786689, metadata !66, metadata !"mode", metadata !67, i32 50331658, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!66 = metadata !{i32 786478, i32 0, metadata !67, metadata !"aescbc", metadata !"aescbc", metadata !"", metadata !67, i32 8, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 13} ; [ DW_TAG_subprogram ]
!67 = metadata !{i32 786473, metadata !"aescbc/src/aescbc.c", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!68 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!69 = metadata !{null, metadata !70, metadata !70, metadata !73, metadata !70, metadata !70}
!70 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !71} ; [ DW_TAG_pointer_type ]
!71 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !67, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ]
!72 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!73 = metadata !{i32 786454, null, metadata !"ciphermode_t", metadata !67, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ]
!74 = metadata !{i32 786436, null, metadata !"", metadata !75, i32 9, i64 3, i64 4, i32 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!75 = metadata !{i32 786473, metadata !"aescbc/src/aescbc.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!76 = metadata !{metadata !77, metadata !78, metadata !79, metadata !80, metadata !81}
!77 = metadata !{i32 786472, metadata !"RESET", i64 0} ; [ DW_TAG_enumerator ]
!78 = metadata !{i32 786472, metadata !"ENCRYPT", i64 1} ; [ DW_TAG_enumerator ]
!79 = metadata !{i32 786472, metadata !"DECRYPT", i64 2} ; [ DW_TAG_enumerator ]
!80 = metadata !{i32 786472, metadata !"SET_IV", i64 3} ; [ DW_TAG_enumerator ]
!81 = metadata !{i32 786472, metadata !"SET_KEY", i64 4} ; [ DW_TAG_enumerator ]
!82 = metadata !{metadata !83}
!83 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!84 = metadata !{i32 10, i32 20, metadata !66, null}
!85 = metadata !{i32 786689, metadata !66, metadata !"data_in", null, i32 8, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!86 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !71, metadata !87, i32 0, i32 0} ; [ DW_TAG_array_type ]
!87 = metadata !{metadata !88}
!88 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!89 = metadata !{i32 8, i32 21, metadata !66, null}
!90 = metadata !{i32 786689, metadata !66, metadata !"data_out", null, i32 9, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!91 = metadata !{i32 9, i32 12, metadata !66, null}
!92 = metadata !{i32 786689, metadata !66, metadata !"key_in", null, i32 11, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!93 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !71, metadata !94, i32 0, i32 0} ; [ DW_TAG_array_type ]
!94 = metadata !{metadata !95}
!95 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!96 = metadata !{i32 11, i32 12, metadata !66, null}
!97 = metadata !{i32 786689, metadata !66, metadata !"iv_in", null, i32 12, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!98 = metadata !{i32 12, i32 12, metadata !66, null}
!99 = metadata !{i32 18, i32 1, metadata !100, null}
!100 = metadata !{i32 786443, metadata !66, i32 13, i32 1, metadata !67, i32 0} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 19, i32 1, metadata !100, null}
!102 = metadata !{i32 786688, metadata !100, metadata !"buf", metadata !67, i32 21, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !71, metadata !87, i32 0, i32 0} ; [ DW_TAG_array_type ]
!104 = metadata !{i32 21, i32 10, metadata !100, null}
!105 = metadata !{i32 29, i32 5, metadata !100, null}
!106 = metadata !{i32 32, i32 25, metadata !107, null}
!107 = metadata !{i32 786443, metadata !108, i32 32, i32 21, metadata !67, i32 2} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 786443, metadata !100, i32 29, i32 20, metadata !67, i32 1} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 45, i32 25, metadata !110, null}
!110 = metadata !{i32 786443, metadata !108, i32 45, i32 21, metadata !67, i32 10} ; [ DW_TAG_lexical_block ]
!111 = metadata !{i32 61, i32 24, metadata !112, null}
!112 = metadata !{i32 786443, metadata !108, i32 61, i32 20, metadata !67, i32 18} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 32, i32 36, metadata !107, null}
!114 = metadata !{i32 34, i32 21, metadata !115, null}
!115 = metadata !{i32 786443, metadata !108, i32 34, i32 17, metadata !67, i32 4} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 33, i32 7, metadata !117, null}
!117 = metadata !{i32 786443, metadata !107, i32 33, i32 7, metadata !67, i32 3} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 786688, metadata !100, metadata !"i", metadata !67, i32 27, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!119 = metadata !{i32 34, i32 32, metadata !115, null}
!120 = metadata !{i32 36, i32 25, metadata !121, null}
!121 = metadata !{i32 786443, metadata !108, i32 36, i32 21, metadata !67, i32 6} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 35, i32 4, metadata !123, null}
!123 = metadata !{i32 786443, metadata !115, i32 35, i32 4, metadata !67, i32 5} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 36, i32 36, metadata !121, null}
!125 = metadata !{i32 38, i32 25, metadata !126, null}
!126 = metadata !{i32 786443, metadata !108, i32 38, i32 21, metadata !67, i32 8} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 37, i32 7, metadata !128, null}
!128 = metadata !{i32 786443, metadata !121, i32 37, i32 7, metadata !67, i32 7} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 38, i32 36, metadata !126, null}
!130 = metadata !{i32 344, i32 10, metadata !131, metadata !148}
!131 = metadata !{i32 786443, metadata !132, i32 344, i32 5, metadata !134, i32 1} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 786443, metadata !133, i32 340, i32 1, metadata !134, i32 0} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 786478, i32 0, metadata !134, metadata !"aes_init", metadata !"aes_init", metadata !"", metadata !134, i32 339, metadata !135, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 340} ; [ DW_TAG_subprogram ]
!134 = metadata !{i32 786473, metadata !"aescbc/src/aesecb.c", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!135 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !136, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!136 = metadata !{null, metadata !137, metadata !147}
!137 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !138} ; [ DW_TAG_pointer_type ]
!138 = metadata !{i32 786454, null, metadata !"aes_context", metadata !134, i32 33, i64 0, i64 0, i64 0, i32 0, metadata !139} ; [ DW_TAG_typedef ]
!139 = metadata !{i32 786451, null, metadata !"", metadata !140, i32 29, i64 768, i64 8, i32 0, i32 0, null, metadata !141, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!140 = metadata !{i32 786473, metadata !"aescbc/src/aesecb.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!141 = metadata !{metadata !142, metadata !145, metadata !146}
!142 = metadata !{i32 786445, metadata !139, metadata !"key", metadata !140, i32 30, i64 256, i64 8, i64 0, i32 0, metadata !143} ; [ DW_TAG_member ]
!143 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !144, metadata !94, i32 0, i32 0} ; [ DW_TAG_array_type ]
!144 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !140, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ]
!145 = metadata !{i32 786445, metadata !139, metadata !"enckey", metadata !140, i32 31, i64 256, i64 8, i64 256, i32 0, metadata !143} ; [ DW_TAG_member ]
!146 = metadata !{i32 786445, metadata !139, metadata !"deckey", metadata !140, i32 32, i64 256, i64 8, i64 512, i32 0, metadata !143} ; [ DW_TAG_member ]
!147 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !144} ; [ DW_TAG_pointer_type ]
!148 = metadata !{i32 40, i32 6, metadata !108, null}
!149 = metadata !{i32 39, i32 7, metadata !150, null}
!150 = metadata !{i32 786443, metadata !126, i32 39, i32 7, metadata !67, i32 9} ; [ DW_TAG_lexical_block ]
!151 = metadata !{i32 344, i32 39, metadata !131, metadata !148}
!152 = metadata !{i32 345, i32 10, metadata !153, metadata !148}
!153 = metadata !{i32 786443, metadata !132, i32 345, i32 5, metadata !134, i32 2} ; [ DW_TAG_lexical_block ]
!154 = metadata !{i32 344, i32 44, metadata !131, metadata !148}
!155 = metadata !{i32 786688, metadata !132, metadata !"i", metadata !134, i32 342, metadata !144, i32 0, metadata !148} ; [ DW_TAG_auto_variable ]
!156 = metadata !{i32 345, i32 23, metadata !153, metadata !148}
!157 = metadata !{i32 786688, metadata !132, metadata !"rcon", metadata !134, i32 341, metadata !144, i32 0, metadata !148} ; [ DW_TAG_auto_variable ]
!158 = metadata !{i32 45, i32 36, metadata !110, null}
!159 = metadata !{i32 48, i32 24, metadata !160, null}
!160 = metadata !{i32 786443, metadata !108, i32 48, i32 20, metadata !67, i32 12} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 46, i32 7, metadata !162, null}
!162 = metadata !{i32 786443, metadata !110, i32 46, i32 7, metadata !67, i32 11} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 48, i32 35, metadata !160, null}
!164 = metadata !{i32 49, i32 7, metadata !165, null}
!165 = metadata !{i32 786443, metadata !160, i32 49, i32 7, metadata !67, i32 13} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 51, i32 6, metadata !108, null}
!167 = metadata !{i32 53, i32 24, metadata !168, null}
!168 = metadata !{i32 786443, metadata !108, i32 53, i32 20, metadata !67, i32 14} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 53, i32 35, metadata !168, null}
!170 = metadata !{i32 56, i32 24, metadata !171, null}
!171 = metadata !{i32 786443, metadata !108, i32 56, i32 20, metadata !67, i32 16} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 54, i32 7, metadata !173, null}
!173 = metadata !{i32 786443, metadata !168, i32 54, i32 7, metadata !67, i32 15} ; [ DW_TAG_lexical_block ]
!174 = metadata !{i32 56, i32 35, metadata !171, null}
!175 = metadata !{i32 57, i32 7, metadata !176, null}
!176 = metadata !{i32 786443, metadata !171, i32 57, i32 7, metadata !67, i32 17} ; [ DW_TAG_lexical_block ]
!177 = metadata !{i32 61, i32 35, metadata !112, null}
!178 = metadata !{i32 64, i32 24, metadata !179, null}
!179 = metadata !{i32 786443, metadata !108, i32 64, i32 20, metadata !67, i32 20} ; [ DW_TAG_lexical_block ]
!180 = metadata !{i32 62, i32 7, metadata !181, null}
!181 = metadata !{i32 786443, metadata !112, i32 62, i32 7, metadata !67, i32 19} ; [ DW_TAG_lexical_block ]
!182 = metadata !{i32 64, i32 35, metadata !179, null}
!183 = metadata !{i32 65, i32 7, metadata !184, null}
!184 = metadata !{i32 786443, metadata !179, i32 65, i32 7, metadata !67, i32 21} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 67, i32 6, metadata !108, null}
!186 = metadata !{i32 69, i32 24, metadata !187, null}
!187 = metadata !{i32 786443, metadata !108, i32 69, i32 20, metadata !67, i32 22} ; [ DW_TAG_lexical_block ]
!188 = metadata !{i32 69, i32 35, metadata !187, null}
!189 = metadata !{i32 72, i32 24, metadata !190, null}
!190 = metadata !{i32 786443, metadata !108, i32 72, i32 20, metadata !67, i32 24} ; [ DW_TAG_lexical_block ]
!191 = metadata !{i32 70, i32 7, metadata !192, null}
!192 = metadata !{i32 786443, metadata !187, i32 70, i32 7, metadata !67, i32 23} ; [ DW_TAG_lexical_block ]
!193 = metadata !{i32 72, i32 35, metadata !190, null}
!194 = metadata !{i32 75, i32 24, metadata !195, null}
!195 = metadata !{i32 786443, metadata !108, i32 75, i32 20, metadata !67, i32 26} ; [ DW_TAG_lexical_block ]
!196 = metadata !{i32 73, i32 7, metadata !197, null}
!197 = metadata !{i32 786443, metadata !190, i32 73, i32 7, metadata !67, i32 25} ; [ DW_TAG_lexical_block ]
!198 = metadata !{i32 75, i32 35, metadata !195, null}
!199 = metadata !{i32 76, i32 7, metadata !200, null}
!200 = metadata !{i32 786443, metadata !195, i32 76, i32 7, metadata !67, i32 27} ; [ DW_TAG_lexical_block ]
!201 = metadata !{i32 87, i32 1, metadata !100, null}
!202 = metadata !{i32 786689, metadata !203, metadata !"buf", null, i32 270, metadata !206, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!203 = metadata !{i32 786478, i32 0, metadata !134, metadata !"aes_mixColumns_inv", metadata !"aes_mixColumns_inv", metadata !"", metadata !134, i32 270, metadata !204, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 271} ; [ DW_TAG_subprogram ]
!204 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !205, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!205 = metadata !{null, metadata !147}
!206 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !144, metadata !87, i32 0, i32 0} ; [ DW_TAG_array_type ]
!207 = metadata !{i32 270, i32 34, metadata !203, null}
!208 = metadata !{i32 274, i32 10, metadata !209, null}
!209 = metadata !{i32 786443, metadata !210, i32 274, i32 5, metadata !134, i32 13} ; [ DW_TAG_lexical_block ]
!210 = metadata !{i32 786443, metadata !203, i32 271, i32 1, metadata !134, i32 12} ; [ DW_TAG_lexical_block ]
!211 = metadata !{i32 276, i32 9, metadata !212, null}
!212 = metadata !{i32 786443, metadata !209, i32 275, i32 5, metadata !134, i32 14} ; [ DW_TAG_lexical_block ]
!213 = metadata !{i32 786688, metadata !210, metadata !"a", metadata !134, i32 272, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!214 = metadata !{i32 277, i32 9, metadata !212, null}
!215 = metadata !{i32 786688, metadata !210, metadata !"b", metadata !134, i32 272, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!216 = metadata !{i32 278, i32 9, metadata !212, null}
!217 = metadata !{i32 786688, metadata !210, metadata !"c", metadata !134, i32 272, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!218 = metadata !{i32 279, i32 9, metadata !212, null}
!219 = metadata !{i32 786688, metadata !210, metadata !"d", metadata !134, i32 272, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!220 = metadata !{i32 280, i32 9, metadata !212, null}
!221 = metadata !{i32 786688, metadata !210, metadata !"e", metadata !134, i32 272, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!222 = metadata !{i32 786689, metadata !223, metadata !"x", metadata !134, i32 16777403, metadata !144, i32 0, metadata !226} ; [ DW_TAG_arg_variable ]
!223 = metadata !{i32 786478, i32 0, metadata !134, metadata !"rj_xtime", metadata !"rj_xtime", metadata !"", metadata !134, i32 187, metadata !224, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 188} ; [ DW_TAG_subprogram ]
!224 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !225, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!225 = metadata !{metadata !144, metadata !144}
!226 = metadata !{i32 281, i32 13, metadata !212, null}
!227 = metadata !{i32 187, i32 33, metadata !223, metadata !226}
!228 = metadata !{i32 189, i32 34, metadata !229, metadata !226}
!229 = metadata !{i32 786443, metadata !223, i32 188, i32 1, metadata !134, i32 15} ; [ DW_TAG_lexical_block ]
!230 = metadata !{i32 786688, metadata !229, metadata !"y", metadata !134, i32 189, metadata !144, i32 0, metadata !226} ; [ DW_TAG_auto_variable ]
!231 = metadata !{i32 190, i32 5, metadata !229, metadata !226}
!232 = metadata !{i32 786688, metadata !210, metadata !"z", metadata !134, i32 272, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!233 = metadata !{i32 282, i32 26, metadata !212, null}
!234 = metadata !{i32 786689, metadata !223, metadata !"x", metadata !134, i32 16777403, metadata !144, i32 0, metadata !233} ; [ DW_TAG_arg_variable ]
!235 = metadata !{i32 187, i32 33, metadata !223, metadata !233}
!236 = metadata !{i32 189, i32 34, metadata !229, metadata !233}
!237 = metadata !{i32 786688, metadata !229, metadata !"y", metadata !134, i32 189, metadata !144, i32 0, metadata !233} ; [ DW_TAG_auto_variable ]
!238 = metadata !{i32 190, i32 5, metadata !229, metadata !233}
!239 = metadata !{i32 786688, metadata !210, metadata !"x", metadata !134, i32 272, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!240 = metadata !{i32 283, i32 26, metadata !212, null}
!241 = metadata !{i32 786689, metadata !223, metadata !"x", metadata !134, i32 16777403, metadata !144, i32 0, metadata !240} ; [ DW_TAG_arg_variable ]
!242 = metadata !{i32 187, i32 33, metadata !223, metadata !240}
!243 = metadata !{i32 189, i32 34, metadata !229, metadata !240}
!244 = metadata !{i32 786688, metadata !229, metadata !"y", metadata !134, i32 189, metadata !144, i32 0, metadata !240} ; [ DW_TAG_auto_variable ]
!245 = metadata !{i32 190, i32 5, metadata !229, metadata !240}
!246 = metadata !{i32 786688, metadata !210, metadata !"y", metadata !134, i32 272, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!247 = metadata !{i32 786689, metadata !223, metadata !"x", metadata !134, i32 16777403, metadata !144, i32 0, metadata !248} ; [ DW_TAG_arg_variable ]
!248 = metadata !{i32 284, i32 23, metadata !212, null}
!249 = metadata !{i32 187, i32 33, metadata !223, metadata !248}
!250 = metadata !{i32 189, i32 34, metadata !229, metadata !248}
!251 = metadata !{i32 786688, metadata !229, metadata !"y", metadata !134, i32 189, metadata !144, i32 0, metadata !248} ; [ DW_TAG_auto_variable ]
!252 = metadata !{i32 190, i32 5, metadata !229, metadata !248}
!253 = metadata !{i32 285, i32 27, metadata !212, null}
!254 = metadata !{i32 786689, metadata !223, metadata !"x", metadata !134, i32 16777403, metadata !144, i32 0, metadata !253} ; [ DW_TAG_arg_variable ]
!255 = metadata !{i32 187, i32 33, metadata !223, metadata !253}
!256 = metadata !{i32 189, i32 34, metadata !229, metadata !253}
!257 = metadata !{i32 786688, metadata !229, metadata !"y", metadata !134, i32 189, metadata !144, i32 0, metadata !253} ; [ DW_TAG_auto_variable ]
!258 = metadata !{i32 190, i32 5, metadata !229, metadata !253}
!259 = metadata !{i32 286, i32 27, metadata !212, null}
!260 = metadata !{i32 786689, metadata !223, metadata !"x", metadata !134, i32 16777403, metadata !144, i32 0, metadata !259} ; [ DW_TAG_arg_variable ]
!261 = metadata !{i32 187, i32 33, metadata !223, metadata !259}
!262 = metadata !{i32 189, i32 34, metadata !229, metadata !259}
!263 = metadata !{i32 786688, metadata !229, metadata !"y", metadata !134, i32 189, metadata !144, i32 0, metadata !259} ; [ DW_TAG_auto_variable ]
!264 = metadata !{i32 190, i32 5, metadata !229, metadata !259}
!265 = metadata !{i32 287, i32 27, metadata !212, null}
!266 = metadata !{i32 786689, metadata !223, metadata !"x", metadata !134, i32 16777403, metadata !144, i32 0, metadata !265} ; [ DW_TAG_arg_variable ]
!267 = metadata !{i32 187, i32 33, metadata !223, metadata !265}
!268 = metadata !{i32 189, i32 34, metadata !229, metadata !265}
!269 = metadata !{i32 786688, metadata !229, metadata !"y", metadata !134, i32 189, metadata !144, i32 0, metadata !265} ; [ DW_TAG_auto_variable ]
!270 = metadata !{i32 190, i32 5, metadata !229, metadata !265}
!271 = metadata !{i32 274, i32 25, metadata !209, null}
!272 = metadata !{i32 786688, metadata !210, metadata !"i", metadata !134, i32 272, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!273 = metadata !{i32 289, i32 1, metadata !210, null}
!274 = metadata !{i32 790532, metadata !275, metadata !"rc", null, i32 292, metadata !147, i32 0, i32 0} ; [ DW_TAG_arg_variable_ro ]
!275 = metadata !{i32 786478, i32 0, metadata !134, metadata !"aes_expandEncKey", metadata !"aes_expandEncKey", metadata !"", metadata !134, i32 292, metadata !276, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 293} ; [ DW_TAG_subprogram ]
!276 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !277, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!277 = metadata !{null, metadata !147, metadata !147}
!278 = metadata !{i32 292, i32 51, metadata !275, null}
!279 = metadata !{i32 786689, metadata !223, metadata !"x", metadata !134, i32 16777403, metadata !144, i32 0, metadata !280} ; [ DW_TAG_arg_variable ]
!280 = metadata !{i32 300, i32 11, metadata !281, null}
!281 = metadata !{i32 786443, metadata !275, i32 293, i32 1, metadata !134, i32 28} ; [ DW_TAG_lexical_block ]
!282 = metadata !{i32 187, i32 33, metadata !223, metadata !280}
!283 = metadata !{i32 786689, metadata !275, metadata !"k", null, i32 292, metadata !284, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!284 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !144, metadata !94, i32 0, i32 0} ; [ DW_TAG_array_type ]
!285 = metadata !{i32 292, i32 39, metadata !275, null}
!286 = metadata !{i32 296, i32 5, metadata !281, null}
!287 = metadata !{i32 297, i32 5, metadata !281, null}
!288 = metadata !{i32 298, i32 5, metadata !281, null}
!289 = metadata !{i32 299, i32 5, metadata !281, null}
!290 = metadata !{i32 189, i32 34, metadata !229, metadata !280}
!291 = metadata !{i32 786688, metadata !229, metadata !"y", metadata !134, i32 189, metadata !144, i32 0, metadata !280} ; [ DW_TAG_auto_variable ]
!292 = metadata !{i32 190, i32 5, metadata !229, metadata !280}
!293 = metadata !{i32 302, i32 9, metadata !294, null}
!294 = metadata !{i32 786443, metadata !281, i32 302, i32 5, metadata !134, i32 29} ; [ DW_TAG_lexical_block ]
!295 = metadata !{i32 302, i32 32, metadata !294, null}
!296 = metadata !{i32 302, i32 24, metadata !294, null}
!297 = metadata !{i32 786688, metadata !281, metadata !"i", metadata !134, i32 294, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!298 = metadata !{i32 304, i32 5, metadata !281, null}
!299 = metadata !{i32 305, i32 5, metadata !281, null}
!300 = metadata !{i32 306, i32 5, metadata !281, null}
!301 = metadata !{i32 307, i32 5, metadata !281, null}
!302 = metadata !{i32 309, i32 9, metadata !303, null}
!303 = metadata !{i32 786443, metadata !281, i32 309, i32 5, metadata !134, i32 30} ; [ DW_TAG_lexical_block ]
!304 = metadata !{i32 309, i32 33, metadata !303, null}
!305 = metadata !{i32 309, i32 25, metadata !303, null}
!306 = metadata !{i32 312, i32 1, metadata !281, null}
!307 = metadata !{i32 790532, metadata !308, metadata !"rc", null, i32 315, metadata !147, i32 0, i32 0} ; [ DW_TAG_arg_variable_ro ]
!308 = metadata !{i32 786478, i32 0, metadata !134, metadata !"aes_expandDecKey", metadata !"aes_expandDecKey", metadata !"", metadata !134, i32 315, metadata !276, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 316} ; [ DW_TAG_subprogram ]
!309 = metadata !{i32 315, i32 44, metadata !308, null}
!310 = metadata !{i32 319, i32 9, metadata !311, null}
!311 = metadata !{i32 786443, metadata !312, i32 319, i32 5, metadata !134, i32 17} ; [ DW_TAG_lexical_block ]
!312 = metadata !{i32 786443, metadata !308, i32 316, i32 1, metadata !134, i32 16} ; [ DW_TAG_lexical_block ]
!313 = metadata !{i32 319, i32 33, metadata !311, null}
!314 = metadata !{i32 786688, metadata !312, metadata !"i", metadata !134, i32 317, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!315 = metadata !{i32 319, i32 25, metadata !311, null}
!316 = metadata !{i32 322, i32 5, metadata !312, null}
!317 = metadata !{i32 323, i32 5, metadata !312, null}
!318 = metadata !{i32 324, i32 5, metadata !312, null}
!319 = metadata !{i32 325, i32 5, metadata !312, null}
!320 = metadata !{i32 327, i32 9, metadata !321, null}
!321 = metadata !{i32 786443, metadata !312, i32 327, i32 5, metadata !134, i32 18} ; [ DW_TAG_lexical_block ]
!322 = metadata !{i32 327, i32 32, metadata !321, null}
!323 = metadata !{i32 327, i32 24, metadata !321, null}
!324 = metadata !{i32 330, i32 5, metadata !312, null}
!325 = metadata !{i32 331, i32 5, metadata !312, null}
!326 = metadata !{i32 332, i32 5, metadata !312, null}
!327 = metadata !{i32 333, i32 5, metadata !312, null}
!328 = metadata !{i32 334, i32 5, metadata !312, null}
!329 = metadata !{i32 790534, metadata !308, metadata !"rc", null, i32 315, metadata !147, i32 0, i32 0} ; [ DW_TAG_arg_variable_wo ]
!330 = metadata !{i32 335, i32 1, metadata !312, null}
!331 = metadata !{i32 786689, metadata !332, metadata !"buf", null, i32 358, metadata !206, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!332 = metadata !{i32 786478, i32 0, metadata !134, metadata !"aes_encrypt_ecb", metadata !"aes_encrypt_ecb", metadata !"", metadata !134, i32 358, metadata !135, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 359} ; [ DW_TAG_subprogram ]
!333 = metadata !{i32 358, i32 49, metadata !332, null}
!334 = metadata !{i32 786689, metadata !335, metadata !"buf", null, i32 218, metadata !206, i32 0, metadata !338} ; [ DW_TAG_arg_variable ]
!335 = metadata !{i32 786478, i32 0, metadata !134, metadata !"aes_addRoundKey_cpy", metadata !"aes_addRoundKey_cpy", metadata !"", metadata !134, i32 218, metadata !336, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 219} ; [ DW_TAG_subprogram ]
!336 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !337, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!337 = metadata !{null, metadata !147, metadata !147, metadata !147}
!338 = metadata !{i32 362, i32 5, metadata !339, null}
!339 = metadata !{i32 786443, metadata !332, i32 359, i32 1, metadata !134, i32 5} ; [ DW_TAG_lexical_block ]
!340 = metadata !{i32 218, i32 42, metadata !335, metadata !338}
!341 = metadata !{i32 222, i32 5, metadata !342, metadata !338}
!342 = metadata !{i32 786443, metadata !335, i32 219, i32 1, metadata !134, i32 27} ; [ DW_TAG_lexical_block ]
!343 = metadata !{i32 786688, metadata !342, metadata !"i", metadata !134, i32 220, metadata !144, i32 0, metadata !338} ; [ DW_TAG_auto_variable ]
!344 = metadata !{i32 786688, metadata !339, metadata !"rcon", metadata !134, i32 360, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!345 = metadata !{i32 231, i32 5, metadata !346, metadata !348}
!346 = metadata !{i32 786443, metadata !347, i32 228, i32 1, metadata !134, i32 25} ; [ DW_TAG_lexical_block ]
!347 = metadata !{i32 786478, i32 0, metadata !134, metadata !"aes_shiftRows", metadata !"aes_shiftRows", metadata !"", metadata !134, i32 227, metadata !204, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 228} ; [ DW_TAG_subprogram ]
!348 = metadata !{i32 366, i32 9, metadata !349, null}
!349 = metadata !{i32 786443, metadata !350, i32 364, i32 5, metadata !134, i32 7} ; [ DW_TAG_lexical_block ]
!350 = metadata !{i32 786443, metadata !339, i32 363, i32 5, metadata !134, i32 6} ; [ DW_TAG_lexical_block ]
!351 = metadata !{i32 232, i32 5, metadata !346, metadata !348}
!352 = metadata !{i32 233, i32 5, metadata !346, metadata !348}
!353 = metadata !{i32 234, i32 5, metadata !346, metadata !348}
!354 = metadata !{i32 363, i32 9, metadata !350, null}
!355 = metadata !{i32 222, i32 17, metadata !342, metadata !338}
!356 = metadata !{i32 198, i32 5, metadata !357, metadata !359}
!357 = metadata !{i32 786443, metadata !358, i32 195, i32 1, metadata !134, i32 26} ; [ DW_TAG_lexical_block ]
!358 = metadata !{i32 786478, i32 0, metadata !134, metadata !"aes_subBytes", metadata !"aes_subBytes", metadata !"", metadata !134, i32 194, metadata !204, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 195} ; [ DW_TAG_subprogram ]
!359 = metadata !{i32 365, i32 9, metadata !349, null}
!360 = metadata !{i32 198, i32 5, metadata !357, metadata !361}
!361 = metadata !{i32 371, i32 5, metadata !339, null}
!362 = metadata !{i32 786688, metadata !357, metadata !"i", metadata !134, i32 196, metadata !144, i32 0, metadata !359} ; [ DW_TAG_auto_variable ]
!363 = metadata !{i32 198, i32 17, metadata !357, metadata !359}
!364 = metadata !{i32 786689, metadata !347, metadata !"buf", null, i32 227, metadata !206, i32 0, metadata !348} ; [ DW_TAG_arg_variable ]
!365 = metadata !{i32 227, i32 36, metadata !347, metadata !348}
!366 = metadata !{i32 786688, metadata !346, metadata !"i", metadata !134, i32 229, metadata !144, i32 0, metadata !348} ; [ DW_TAG_auto_variable ]
!367 = metadata !{i32 786688, metadata !346, metadata !"j", metadata !134, i32 229, metadata !144, i32 0, metadata !348} ; [ DW_TAG_auto_variable ]
!368 = metadata !{i32 786689, metadata !369, metadata !"buf", null, i32 251, metadata !206, i32 0, metadata !370} ; [ DW_TAG_arg_variable ]
!369 = metadata !{i32 786478, i32 0, metadata !134, metadata !"aes_mixColumns", metadata !"aes_mixColumns", metadata !"", metadata !134, i32 251, metadata !204, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 252} ; [ DW_TAG_subprogram ]
!370 = metadata !{i32 367, i32 9, metadata !349, null}
!371 = metadata !{i32 251, i32 37, metadata !369, metadata !370}
!372 = metadata !{i32 255, i32 10, metadata !373, metadata !370}
!373 = metadata !{i32 786443, metadata !374, i32 255, i32 5, metadata !134, i32 23} ; [ DW_TAG_lexical_block ]
!374 = metadata !{i32 786443, metadata !369, i32 252, i32 1, metadata !134, i32 22} ; [ DW_TAG_lexical_block ]
!375 = metadata !{i32 257, i32 9, metadata !376, metadata !370}
!376 = metadata !{i32 786443, metadata !373, i32 256, i32 5, metadata !134, i32 24} ; [ DW_TAG_lexical_block ]
!377 = metadata !{i32 786688, metadata !374, metadata !"a", metadata !134, i32 253, metadata !144, i32 0, metadata !370} ; [ DW_TAG_auto_variable ]
!378 = metadata !{i32 258, i32 9, metadata !376, metadata !370}
!379 = metadata !{i32 786688, metadata !374, metadata !"b", metadata !134, i32 253, metadata !144, i32 0, metadata !370} ; [ DW_TAG_auto_variable ]
!380 = metadata !{i32 259, i32 9, metadata !376, metadata !370}
!381 = metadata !{i32 786688, metadata !374, metadata !"c", metadata !134, i32 253, metadata !144, i32 0, metadata !370} ; [ DW_TAG_auto_variable ]
!382 = metadata !{i32 260, i32 9, metadata !376, metadata !370}
!383 = metadata !{i32 786688, metadata !374, metadata !"d", metadata !134, i32 253, metadata !144, i32 0, metadata !370} ; [ DW_TAG_auto_variable ]
!384 = metadata !{i32 261, i32 9, metadata !376, metadata !370}
!385 = metadata !{i32 786688, metadata !374, metadata !"e", metadata !134, i32 253, metadata !144, i32 0, metadata !370} ; [ DW_TAG_auto_variable ]
!386 = metadata !{i32 786689, metadata !223, metadata !"x", metadata !134, i32 16777403, metadata !144, i32 0, metadata !387} ; [ DW_TAG_arg_variable ]
!387 = metadata !{i32 262, i32 23, metadata !376, metadata !370}
!388 = metadata !{i32 187, i32 33, metadata !223, metadata !387}
!389 = metadata !{i32 189, i32 34, metadata !229, metadata !387}
!390 = metadata !{i32 786688, metadata !229, metadata !"y", metadata !134, i32 189, metadata !144, i32 0, metadata !387} ; [ DW_TAG_auto_variable ]
!391 = metadata !{i32 190, i32 5, metadata !229, metadata !387}
!392 = metadata !{i32 263, i32 27, metadata !376, metadata !370}
!393 = metadata !{i32 786689, metadata !223, metadata !"x", metadata !134, i32 16777403, metadata !144, i32 0, metadata !392} ; [ DW_TAG_arg_variable ]
!394 = metadata !{i32 187, i32 33, metadata !223, metadata !392}
!395 = metadata !{i32 189, i32 34, metadata !229, metadata !392}
!396 = metadata !{i32 786688, metadata !229, metadata !"y", metadata !134, i32 189, metadata !144, i32 0, metadata !392} ; [ DW_TAG_auto_variable ]
!397 = metadata !{i32 190, i32 5, metadata !229, metadata !392}
!398 = metadata !{i32 264, i32 27, metadata !376, metadata !370}
!399 = metadata !{i32 786689, metadata !223, metadata !"x", metadata !134, i32 16777403, metadata !144, i32 0, metadata !398} ; [ DW_TAG_arg_variable ]
!400 = metadata !{i32 187, i32 33, metadata !223, metadata !398}
!401 = metadata !{i32 189, i32 34, metadata !229, metadata !398}
!402 = metadata !{i32 786688, metadata !229, metadata !"y", metadata !134, i32 189, metadata !144, i32 0, metadata !398} ; [ DW_TAG_auto_variable ]
!403 = metadata !{i32 190, i32 5, metadata !229, metadata !398}
!404 = metadata !{i32 265, i32 27, metadata !376, metadata !370}
!405 = metadata !{i32 786689, metadata !223, metadata !"x", metadata !134, i32 16777403, metadata !144, i32 0, metadata !404} ; [ DW_TAG_arg_variable ]
!406 = metadata !{i32 187, i32 33, metadata !223, metadata !404}
!407 = metadata !{i32 189, i32 34, metadata !229, metadata !404}
!408 = metadata !{i32 786688, metadata !229, metadata !"y", metadata !134, i32 189, metadata !144, i32 0, metadata !404} ; [ DW_TAG_auto_variable ]
!409 = metadata !{i32 190, i32 5, metadata !229, metadata !404}
!410 = metadata !{i32 255, i32 25, metadata !373, metadata !370}
!411 = metadata !{i32 786688, metadata !374, metadata !"i", metadata !134, i32 253, metadata !144, i32 0, metadata !370} ; [ DW_TAG_auto_variable ]
!412 = metadata !{i32 368, i32 9, metadata !349, null}
!413 = metadata !{i32 368, i32 21, metadata !349, null}
!414 = metadata !{i32 369, i32 14, metadata !349, null}
!415 = metadata !{i32 369, i32 49, metadata !349, null}
!416 = metadata !{i32 363, i32 34, metadata !350, null}
!417 = metadata !{i32 786688, metadata !339, metadata !"i", metadata !134, i32 360, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!418 = metadata !{i32 786688, metadata !357, metadata !"i", metadata !134, i32 196, metadata !144, i32 0, metadata !361} ; [ DW_TAG_auto_variable ]
!419 = metadata !{i32 198, i32 17, metadata !357, metadata !361}
!420 = metadata !{i32 373, i32 5, metadata !339, null}
!421 = metadata !{i32 786689, metadata !347, metadata !"buf", null, i32 227, metadata !206, i32 0, metadata !422} ; [ DW_TAG_arg_variable ]
!422 = metadata !{i32 372, i32 5, metadata !339, null}
!423 = metadata !{i32 227, i32 36, metadata !347, metadata !422}
!424 = metadata !{i32 231, i32 5, metadata !346, metadata !422}
!425 = metadata !{i32 786688, metadata !346, metadata !"i", metadata !134, i32 229, metadata !144, i32 0, metadata !422} ; [ DW_TAG_auto_variable ]
!426 = metadata !{i32 232, i32 5, metadata !346, metadata !422}
!427 = metadata !{i32 233, i32 5, metadata !346, metadata !422}
!428 = metadata !{i32 786688, metadata !346, metadata !"j", metadata !134, i32 229, metadata !144, i32 0, metadata !422} ; [ DW_TAG_auto_variable ]
!429 = metadata !{i32 234, i32 5, metadata !346, metadata !422}
!430 = metadata !{i32 374, i32 5, metadata !339, null}
!431 = metadata !{i32 375, i32 1, metadata !339, null}
!432 = metadata !{i32 786689, metadata !433, metadata !"buf", null, i32 378, metadata !206, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!433 = metadata !{i32 786478, i32 0, metadata !134, metadata !"aes_decrypt_ecb", metadata !"aes_decrypt_ecb", metadata !"", metadata !134, i32 378, metadata !135, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 379} ; [ DW_TAG_subprogram ]
!434 = metadata !{i32 378, i32 49, metadata !433, null}
!435 = metadata !{i32 786689, metadata !335, metadata !"buf", null, i32 218, metadata !206, i32 0, metadata !436} ; [ DW_TAG_arg_variable ]
!436 = metadata !{i32 382, i32 5, metadata !437, null}
!437 = metadata !{i32 786443, metadata !433, i32 379, i32 1, metadata !134, i32 8} ; [ DW_TAG_lexical_block ]
!438 = metadata !{i32 218, i32 42, metadata !335, metadata !436}
!439 = metadata !{i32 222, i32 5, metadata !342, metadata !436}
!440 = metadata !{i32 786688, metadata !342, metadata !"i", metadata !134, i32 220, metadata !144, i32 0, metadata !436} ; [ DW_TAG_auto_variable ]
!441 = metadata !{i32 222, i32 17, metadata !342, metadata !436}
!442 = metadata !{i32 786689, metadata !443, metadata !"buf", null, i32 239, metadata !206, i32 0, metadata !444} ; [ DW_TAG_arg_variable ]
!443 = metadata !{i32 786478, i32 0, metadata !134, metadata !"aes_shiftRows_inv", metadata !"aes_shiftRows_inv", metadata !"", metadata !134, i32 239, metadata !204, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 240} ; [ DW_TAG_subprogram ]
!444 = metadata !{i32 383, i32 5, metadata !437, null}
!445 = metadata !{i32 239, i32 40, metadata !443, metadata !444}
!446 = metadata !{i32 243, i32 5, metadata !447, metadata !444}
!447 = metadata !{i32 786443, metadata !443, i32 240, i32 1, metadata !134, i32 20} ; [ DW_TAG_lexical_block ]
!448 = metadata !{i32 786688, metadata !447, metadata !"i", metadata !134, i32 241, metadata !144, i32 0, metadata !444} ; [ DW_TAG_auto_variable ]
!449 = metadata !{i32 244, i32 5, metadata !447, metadata !444}
!450 = metadata !{i32 245, i32 5, metadata !447, metadata !444}
!451 = metadata !{i32 786688, metadata !447, metadata !"j", metadata !134, i32 241, metadata !144, i32 0, metadata !444} ; [ DW_TAG_auto_variable ]
!452 = metadata !{i32 246, i32 5, metadata !447, metadata !444}
!453 = metadata !{i32 786689, metadata !454, metadata !"buf", null, i32 202, metadata !206, i32 0, metadata !455} ; [ DW_TAG_arg_variable ]
!454 = metadata !{i32 786478, i32 0, metadata !134, metadata !"aes_subBytes_inv", metadata !"aes_subBytes_inv", metadata !"", metadata !134, i32 202, metadata !204, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 203} ; [ DW_TAG_subprogram ]
!455 = metadata !{i32 384, i32 5, metadata !437, null}
!456 = metadata !{i32 202, i32 39, metadata !454, metadata !455}
!457 = metadata !{i32 206, i32 5, metadata !458, metadata !455}
!458 = metadata !{i32 786443, metadata !454, i32 203, i32 1, metadata !134, i32 19} ; [ DW_TAG_lexical_block ]
!459 = metadata !{i32 786688, metadata !458, metadata !"i", metadata !134, i32 204, metadata !144, i32 0, metadata !455} ; [ DW_TAG_auto_variable ]
!460 = metadata !{i32 786688, metadata !437, metadata !"rcon", metadata !134, i32 380, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!461 = metadata !{i32 386, i32 10, metadata !462, null}
!462 = metadata !{i32 786443, metadata !437, i32 386, i32 5, metadata !134, i32 9} ; [ DW_TAG_lexical_block ]
!463 = metadata !{i32 206, i32 17, metadata !458, metadata !455}
!464 = metadata !{i32 786688, metadata !437, metadata !"i", metadata !134, i32 380, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!465 = metadata !{i32 388, i32 9, metadata !466, null}
!466 = metadata !{i32 786443, metadata !462, i32 387, i32 5, metadata !134, i32 10} ; [ DW_TAG_lexical_block ]
!467 = metadata !{i32 390, i32 13, metadata !468, null}
!468 = metadata !{i32 786443, metadata !466, i32 389, i32 9, metadata !134, i32 11} ; [ DW_TAG_lexical_block ]
!469 = metadata !{i32 391, i32 13, metadata !468, null}
!470 = metadata !{i32 392, i32 9, metadata !468, null}
!471 = metadata !{i32 393, i32 14, metadata !466, null}
!472 = metadata !{i32 394, i32 9, metadata !466, null}
!473 = metadata !{i32 786689, metadata !443, metadata !"buf", null, i32 239, metadata !206, i32 0, metadata !474} ; [ DW_TAG_arg_variable ]
!474 = metadata !{i32 395, i32 9, metadata !466, null}
!475 = metadata !{i32 239, i32 40, metadata !443, metadata !474}
!476 = metadata !{i32 243, i32 5, metadata !447, metadata !474}
!477 = metadata !{i32 786688, metadata !447, metadata !"i", metadata !134, i32 241, metadata !144, i32 0, metadata !474} ; [ DW_TAG_auto_variable ]
!478 = metadata !{i32 244, i32 5, metadata !447, metadata !474}
!479 = metadata !{i32 245, i32 5, metadata !447, metadata !474}
!480 = metadata !{i32 786688, metadata !447, metadata !"j", metadata !134, i32 241, metadata !144, i32 0, metadata !474} ; [ DW_TAG_auto_variable ]
!481 = metadata !{i32 246, i32 5, metadata !447, metadata !474}
!482 = metadata !{i32 786689, metadata !454, metadata !"buf", null, i32 202, metadata !206, i32 0, metadata !483} ; [ DW_TAG_arg_variable ]
!483 = metadata !{i32 396, i32 9, metadata !466, null}
!484 = metadata !{i32 202, i32 39, metadata !454, metadata !483}
!485 = metadata !{i32 206, i32 5, metadata !458, metadata !483}
!486 = metadata !{i32 786688, metadata !458, metadata !"i", metadata !134, i32 204, metadata !144, i32 0, metadata !483} ; [ DW_TAG_auto_variable ]
!487 = metadata !{i32 206, i32 17, metadata !458, metadata !483}
!488 = metadata !{i32 397, i32 5, metadata !466, null}
!489 = metadata !{i32 398, i32 5, metadata !437, null}
!490 = metadata !{i32 399, i32 1, metadata !437, null}
!491 = metadata !{i32 786689, metadata !492, metadata !"buf", null, i32 210, metadata !206, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!492 = metadata !{i32 786478, i32 0, metadata !134, metadata !"aes_addRoundKey", metadata !"aes_addRoundKey", metadata !"", metadata !134, i32 210, metadata !276, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !82, i32 211} ; [ DW_TAG_subprogram ]
!493 = metadata !{i32 210, i32 38, metadata !492, null}
!494 = metadata !{i32 786689, metadata !492, metadata !"key", null, i32 210, metadata !284, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!495 = metadata !{i32 210, i32 52, metadata !492, null}
!496 = metadata !{i32 214, i32 5, metadata !497, null}
!497 = metadata !{i32 786443, metadata !492, i32 211, i32 1, metadata !134, i32 21} ; [ DW_TAG_lexical_block ]
!498 = metadata !{i32 786688, metadata !497, metadata !"i", metadata !134, i32 212, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!499 = metadata !{i32 214, i32 17, metadata !497, null}
!500 = metadata !{i32 215, i32 1, metadata !497, null}
