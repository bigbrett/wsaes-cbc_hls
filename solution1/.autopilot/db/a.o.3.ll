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
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00" ; [#uses=2 type=[7 x i8]*]
@p_str9 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=7 type=[1 x i8]*]
@p_str8 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=7 type=[1 x i8]*]
@p_str7 = private unnamed_addr constant [17 x i8] c"loop_dataoutclr2\00", align 1 ; [#uses=1 type=[17 x i8]*]
@p_str6 = private unnamed_addr constant [12 x i8] c"loop_setkey\00", align 1 ; [#uses=1 type=[12 x i8]*]
@p_str5 = private unnamed_addr constant [17 x i8] c"loop_dataoutclr1\00", align 1 ; [#uses=1 type=[17 x i8]*]
@p_str4 = private unnamed_addr constant [11 x i8] c"loop_setiv\00", align 1 ; [#uses=1 type=[11 x i8]*]
@p_str3 = private unnamed_addr constant [15 x i8] c"loop_xorvreset\00", align 1 ; [#uses=1 type=[15 x i8]*]
@p_str2 = private unnamed_addr constant [17 x i8] c"loop_dataoutclr0\00", align 1 ; [#uses=1 type=[17 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=24 type=[1 x i8]*]
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=4 type=[10 x i8]*]

; [#uses=1]
declare i8 @llvm.part.select.i8(i8, i32, i32) nounwind readnone

; [#uses=131]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=3]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @aescbc(i3 zeroext %mode, [32 x i8]* %data_in, [16 x i8]* %data_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i3 %mode) nounwind, !map !37
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %data_in) nounwind, !map !43
  call void (...)* @_ssdm_op_SpecBitsMap([16 x i8]* %data_out) nounwind, !map !49
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @aescbc_str) nounwind
  %mode_read = call i3 @_ssdm_op_Read.s_axilite.i3(i3 %mode) nounwind ; [#uses=1 type=i3]
  call void @llvm.dbg.value(metadata !{i3 %mode_read}, i64 0, metadata !55), !dbg !74 ; [debug line = 8:26] [debug variable = mode]
  %buf = alloca [16 x i8], align 16               ; [#uses=10 type=[16 x i8]*]
  call void @llvm.dbg.value(metadata !{i3 %mode}, i64 0, metadata !55), !dbg !74 ; [debug line = 8:26] [debug variable = mode]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %data_in}, i64 0, metadata !75), !dbg !79 ; [debug line = 9:12] [debug variable = data_in]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %data_out}, i64 0, metadata !80), !dbg !84 ; [debug line = 10:12] [debug variable = data_out]
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %data_in, [1 x i8]* @p_str8, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str8, i32 -1, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %data_in, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 32, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty_5 = call i32 (...)* @_ssdm_op_SpecMemCore([16 x i8]* %data_out, [1 x i8]* @p_str9, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str9, i32 -1, [1 x i8]* @p_str9, [1 x i8]* @p_str9, [1 x i8]* @p_str9, [1 x i8]* @p_str9, [1 x i8]* @p_str9) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %data_out, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i3 %mode, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !85 ; [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !87 ; [debug line = 17:1]
  call void @llvm.dbg.declare(metadata !{[16 x i8]* %buf}, metadata !88), !dbg !90 ; [debug line = 21:10] [debug variable = buf]
  switch i3 %mode_read, label %.loopexit [
    i3 0, label %.preheader15.preheader
    i3 1, label %.preheader13.preheader
    i3 2, label %.preheader9.preheader
    i3 3, label %.preheader4.preheader
    i3 -4, label %.preheader1.preheader
  ], !dbg !91                                     ; [debug line = 29:5]

.preheader15.preheader:                           ; preds = %0
  br label %.preheader15, !dbg !92                ; [debug line = 33:7]

.preheader13.preheader:                           ; preds = %0
  br label %.preheader13, !dbg !95                ; [debug line = 45:10]

.preheader9.preheader:                            ; preds = %0
  br label %.preheader9, !dbg !97                 ; [debug line = 61:10]

.preheader4.preheader:                            ; preds = %0
  br label %.preheader4, !dbg !99                 ; [debug line = 81:7]

.preheader1.preheader:                            ; preds = %0
  br label %.preheader1, !dbg !101                ; [debug line = 91:7]

.preheader15:                                     ; preds = %1, %.preheader15.preheader
  %i = phi i5 [ %i_13, %1 ], [ 0, %.preheader15.preheader ] ; [#uses=3 type=i5]
  %tmp_3 = icmp eq i5 %i, -16, !dbg !92           ; [#uses=1 type=i1] [debug line = 33:7]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_13 = add i5 %i, 1, !dbg !103                 ; [#uses=1 type=i5] [debug line = 33:18]
  br i1 %tmp_3, label %.preheader14.preheader, label %1, !dbg !92 ; [debug line = 33:7]

.preheader14.preheader:                           ; preds = %.preheader15
  br label %.preheader14, !dbg !104               ; [debug line = 37:7]

; <label>:1                                       ; preds = %.preheader15
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str2) nounwind, !dbg !106 ; [debug line = 34:7]
  %tmp_8 = zext i5 %i to i64, !dbg !106           ; [#uses=1 type=i64] [debug line = 34:7]
  %data_out_addr = getelementptr [16 x i8]* %data_out, i64 0, i64 %tmp_8, !dbg !106 ; [#uses=1 type=i8*] [debug line = 34:7]
  store i8 0, i8* %data_out_addr, align 1, !dbg !106 ; [debug line = 34:7]
  call void @llvm.dbg.value(metadata !{i5 %i_13}, i64 0, metadata !108), !dbg !103 ; [debug line = 33:18] [debug variable = i]
  br label %.preheader15, !dbg !103               ; [debug line = 33:18]

.preheader14:                                     ; preds = %2, %.preheader14.preheader
  %i_1 = phi i5 [ %i_19, %2 ], [ 0, %.preheader14.preheader ] ; [#uses=3 type=i5]
  %tmp_10 = icmp eq i5 %i_1, -16, !dbg !104       ; [#uses=1 type=i1] [debug line = 37:7]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_19 = add i5 %i_1, 1, !dbg !109               ; [#uses=1 type=i5] [debug line = 37:18]
  br i1 %tmp_10, label %.preheader38.preheader, label %2, !dbg !104 ; [debug line = 37:7]

.preheader38.preheader:                           ; preds = %.preheader14
  br label %.preheader38, !dbg !110               ; [debug line = 344:10@40:3]

; <label>:2                                       ; preds = %.preheader14
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str3) nounwind, !dbg !129 ; [debug line = 38:7]
  %tmp_15 = zext i5 %i_1 to i64, !dbg !129        ; [#uses=2 type=i64] [debug line = 38:7]
  %iv_addr_1 = getelementptr inbounds [16 x i8]* @iv, i64 0, i64 %tmp_15, !dbg !129 ; [#uses=1 type=i8*] [debug line = 38:7]
  %iv_load = load i8* %iv_addr_1, align 1, !dbg !129 ; [#uses=1 type=i8] [debug line = 38:7]
  %xorv_addr = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_15, !dbg !129 ; [#uses=1 type=i8*] [debug line = 38:7]
  store i8 %iv_load, i8* %xorv_addr, align 1, !dbg !129 ; [debug line = 38:7]
  call void @llvm.dbg.value(metadata !{i5 %i_19}, i64 0, metadata !108), !dbg !109 ; [debug line = 37:18] [debug variable = i]
  br label %.preheader14, !dbg !109               ; [debug line = 37:18]

.preheader38:                                     ; preds = %3, %.preheader38.preheader
  %i_i = phi i6 [ %i_29, %3 ], [ 0, %.preheader38.preheader ] ; [#uses=3 type=i6]
  %tmp_i = icmp eq i6 %i_i, -32, !dbg !110        ; [#uses=1 type=i1] [debug line = 344:10@40:3]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  %i_29 = add i6 %i_i, 1, !dbg !131               ; [#uses=1 type=i6] [debug line = 344:39@40:3]
  br i1 %tmp_i, label %.preheader.i.preheader, label %3, !dbg !110 ; [debug line = 344:10@40:3]

.preheader.i.preheader:                           ; preds = %.preheader38
  br label %.preheader.i, !dbg !132               ; [debug line = 345:10@40:3]

; <label>:3                                       ; preds = %.preheader38
  %tmp_i_9 = zext i6 %i_i to i64, !dbg !134       ; [#uses=3 type=i64] [debug line = 344:44@40:3]
  %key_addr_1 = getelementptr [32 x i8]* @key, i64 0, i64 %tmp_i_9, !dbg !134 ; [#uses=1 type=i8*] [debug line = 344:44@40:3]
  %key_load = load i8* %key_addr_1, align 1, !dbg !134 ; [#uses=2 type=i8] [debug line = 344:44@40:3]
  %ctx_deckey_addr = getelementptr [32 x i8]* @ctx_deckey, i64 0, i64 %tmp_i_9, !dbg !134 ; [#uses=1 type=i8*] [debug line = 344:44@40:3]
  store i8 %key_load, i8* %ctx_deckey_addr, align 1, !dbg !134 ; [debug line = 344:44@40:3]
  %ctx_enckey_addr = getelementptr [32 x i8]* @ctx_enckey, i64 0, i64 %tmp_i_9, !dbg !134 ; [#uses=1 type=i8*] [debug line = 344:44@40:3]
  store i8 %key_load, i8* %ctx_enckey_addr, align 1, !dbg !134 ; [debug line = 344:44@40:3]
  call void @llvm.dbg.value(metadata !{i6 %i_29}, i64 0, metadata !135) nounwind, !dbg !131 ; [debug line = 344:39@40:3] [debug variable = i]
  br label %.preheader38, !dbg !131               ; [debug line = 344:39@40:3]

.preheader.i:                                     ; preds = %4, %.preheader.i.preheader
  %rcon_i = phi i8 [ %rcon, %4 ], [ 1, %.preheader.i.preheader ] ; [#uses=1 type=i8]
  %i_30 = phi i3 [ %phitmp_i, %4 ], [ -1, %.preheader.i.preheader ] ; [#uses=2 type=i3]
  call void @llvm.dbg.value(metadata !{i3 %i_30}, i64 0, metadata !135) nounwind, !dbg !132 ; [debug line = 345:10@40:3] [debug variable = i]
  %tmp_90_i = icmp eq i3 %i_30, 0, !dbg !132      ; [#uses=1 type=i1] [debug line = 345:10@40:3]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) nounwind ; [#uses=0 type=i32]
  br i1 %tmp_90_i, label %.loopexit.loopexit17, label %4, !dbg !132 ; [debug line = 345:10@40:3]

; <label>:4                                       ; preds = %.preheader.i
  %rcon = call fastcc i8 @aes_expandEncKey([32 x i8]* @ctx_deckey, i8 %rcon_i) nounwind, !dbg !136 ; [#uses=1 type=i8] [debug line = 345:23@40:3]
  call void @llvm.dbg.value(metadata !{i8 %rcon}, i64 0, metadata !137) nounwind, !dbg !136 ; [debug line = 345:23@40:3] [debug variable = rcon]
  %phitmp_i = add i3 %i_30, -1, !dbg !136         ; [#uses=1 type=i3] [debug line = 345:23@40:3]
  br label %.preheader.i, !dbg !136               ; [debug line = 345:23@40:3]

.preheader13:                                     ; preds = %5, %.preheader13.preheader
  %i_2 = phi i5 [ %i_15, %5 ], [ 0, %.preheader13.preheader ] ; [#uses=3 type=i5]
  %tmp_4 = icmp eq i5 %i_2, -16, !dbg !95         ; [#uses=1 type=i1] [debug line = 45:10]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_15 = add i5 %i_2, 1, !dbg !138               ; [#uses=1 type=i5] [debug line = 45:21]
  br i1 %tmp_4, label %.preheader12.preheader, label %5, !dbg !95 ; [debug line = 45:10]

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12, !dbg !139               ; [debug line = 48:10]

; <label>:5                                       ; preds = %.preheader13
  %tmp_s = zext i5 %i_2 to i64, !dbg !141         ; [#uses=2 type=i64] [debug line = 46:7]
  %data_in_addr = getelementptr [32 x i8]* %data_in, i64 0, i64 %tmp_s, !dbg !141 ; [#uses=1 type=i8*] [debug line = 46:7]
  %data_in_load = load i8* %data_in_addr, align 1, !dbg !141 ; [#uses=1 type=i8] [debug line = 46:7]
  %buf_addr = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_s, !dbg !141 ; [#uses=1 type=i8*] [debug line = 46:7]
  store i8 %data_in_load, i8* %buf_addr, align 1, !dbg !141 ; [debug line = 46:7]
  call void @llvm.dbg.value(metadata !{i5 %i_15}, i64 0, metadata !108), !dbg !138 ; [debug line = 45:21] [debug variable = i]
  br label %.preheader13, !dbg !138               ; [debug line = 45:21]

.preheader12:                                     ; preds = %6, %.preheader12.preheader
  %i_3 = phi i5 [ %i_20, %6 ], [ 0, %.preheader12.preheader ] ; [#uses=3 type=i5]
  %tmp_11 = icmp eq i5 %i_3, -16, !dbg !139       ; [#uses=1 type=i1] [debug line = 48:10]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_20 = add i5 %i_3, 1, !dbg !142               ; [#uses=1 type=i5] [debug line = 48:21]
  br i1 %tmp_11, label %7, label %6, !dbg !139    ; [debug line = 48:10]

; <label>:6                                       ; preds = %.preheader12
  %tmp_16 = zext i5 %i_3 to i64, !dbg !143        ; [#uses=2 type=i64] [debug line = 49:7]
  %buf_addr_2 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_16, !dbg !143 ; [#uses=2 type=i8*] [debug line = 49:7]
  %buf_load = load i8* %buf_addr_2, align 1, !dbg !143 ; [#uses=1 type=i8] [debug line = 49:7]
  %xorv_addr_1 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_16, !dbg !143 ; [#uses=1 type=i8*] [debug line = 49:7]
  %xorv_load = load i8* %xorv_addr_1, align 1, !dbg !143 ; [#uses=1 type=i8] [debug line = 49:7]
  %tmp_17 = xor i8 %xorv_load, %buf_load, !dbg !143 ; [#uses=1 type=i8] [debug line = 49:7]
  store i8 %tmp_17, i8* %buf_addr_2, align 1, !dbg !143 ; [debug line = 49:7]
  call void @llvm.dbg.value(metadata !{i5 %i_20}, i64 0, metadata !108), !dbg !142 ; [debug line = 48:21] [debug variable = i]
  br label %.preheader12, !dbg !142               ; [debug line = 48:21]

; <label>:7                                       ; preds = %.preheader12
  call fastcc void @aes_encrypt_ecb([16 x i8]* %buf) nounwind, !dbg !144 ; [debug line = 51:6]
  br label %8, !dbg !145                          ; [debug line = 53:10]

; <label>:8                                       ; preds = %9, %7
  %i_4 = phi i5 [ 0, %7 ], [ %i_24, %9 ]          ; [#uses=3 type=i5]
  %tmp_21 = icmp eq i5 %i_4, -16, !dbg !145       ; [#uses=1 type=i1] [debug line = 53:10]
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_24 = add i5 %i_4, 1, !dbg !147               ; [#uses=1 type=i5] [debug line = 53:21]
  br i1 %tmp_21, label %.preheader10.preheader, label %9, !dbg !145 ; [debug line = 53:10]

.preheader10.preheader:                           ; preds = %8
  br label %.preheader10, !dbg !148               ; [debug line = 56:10]

; <label>:9                                       ; preds = %8
  %tmp_23 = zext i5 %i_4 to i64, !dbg !150        ; [#uses=2 type=i64] [debug line = 54:7]
  %buf_addr_4 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_23, !dbg !150 ; [#uses=1 type=i8*] [debug line = 54:7]
  %buf_load_2 = load i8* %buf_addr_4, align 1, !dbg !150 ; [#uses=1 type=i8] [debug line = 54:7]
  %xorv_addr_2 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_23, !dbg !150 ; [#uses=1 type=i8*] [debug line = 54:7]
  store i8 %buf_load_2, i8* %xorv_addr_2, align 1, !dbg !150 ; [debug line = 54:7]
  call void @llvm.dbg.value(metadata !{i5 %i_24}, i64 0, metadata !108), !dbg !147 ; [debug line = 53:21] [debug variable = i]
  br label %8, !dbg !147                          ; [debug line = 53:21]

.preheader10:                                     ; preds = %10, %.preheader10.preheader
  %i_5 = phi i5 [ %i_26, %10 ], [ 0, %.preheader10.preheader ] ; [#uses=3 type=i5]
  %tmp_26 = icmp eq i5 %i_5, -16, !dbg !148       ; [#uses=1 type=i1] [debug line = 56:10]
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_26 = add i5 %i_5, 1, !dbg !151               ; [#uses=1 type=i5] [debug line = 56:21]
  br i1 %tmp_26, label %.loopexit.loopexit16, label %10, !dbg !148 ; [debug line = 56:10]

; <label>:10                                      ; preds = %.preheader10
  %tmp_28 = zext i5 %i_5 to i64, !dbg !152        ; [#uses=2 type=i64] [debug line = 57:7]
  %buf_addr_6 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_28, !dbg !152 ; [#uses=1 type=i8*] [debug line = 57:7]
  %buf_load_4 = load i8* %buf_addr_6, align 1, !dbg !152 ; [#uses=1 type=i8] [debug line = 57:7]
  %data_out_addr_3 = getelementptr [16 x i8]* %data_out, i64 0, i64 %tmp_28, !dbg !152 ; [#uses=1 type=i8*] [debug line = 57:7]
  store i8 %buf_load_4, i8* %data_out_addr_3, align 1, !dbg !152 ; [debug line = 57:7]
  call void @llvm.dbg.value(metadata !{i5 %i_26}, i64 0, metadata !108), !dbg !151 ; [debug line = 56:21] [debug variable = i]
  br label %.preheader10, !dbg !151               ; [debug line = 56:21]

.preheader9:                                      ; preds = %11, %.preheader9.preheader
  %i_6 = phi i5 [ %i_16, %11 ], [ 0, %.preheader9.preheader ] ; [#uses=3 type=i5]
  %tmp_5 = icmp eq i5 %i_6, -16, !dbg !97         ; [#uses=1 type=i1] [debug line = 61:10]
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_16 = add i5 %i_6, 1, !dbg !153               ; [#uses=1 type=i5] [debug line = 61:21]
  br i1 %tmp_5, label %.preheader8.preheader, label %11, !dbg !97 ; [debug line = 61:10]

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8, !dbg !154                ; [debug line = 64:10]

; <label>:11                                      ; preds = %.preheader9
  %tmp_1 = zext i5 %i_6 to i64, !dbg !156         ; [#uses=2 type=i64] [debug line = 62:7]
  %data_in_addr_1 = getelementptr [32 x i8]* %data_in, i64 0, i64 %tmp_1, !dbg !156 ; [#uses=1 type=i8*] [debug line = 62:7]
  %data_in_load_1 = load i8* %data_in_addr_1, align 1, !dbg !156 ; [#uses=1 type=i8] [debug line = 62:7]
  %buf_addr_1 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_1, !dbg !156 ; [#uses=1 type=i8*] [debug line = 62:7]
  store i8 %data_in_load_1, i8* %buf_addr_1, align 1, !dbg !156 ; [debug line = 62:7]
  call void @llvm.dbg.value(metadata !{i5 %i_16}, i64 0, metadata !108), !dbg !153 ; [debug line = 61:21] [debug variable = i]
  br label %.preheader9, !dbg !153                ; [debug line = 61:21]

.preheader8:                                      ; preds = %12, %.preheader8.preheader
  %i_7 = phi i5 [ %i_21, %12 ], [ 0, %.preheader8.preheader ] ; [#uses=3 type=i5]
  %tmp_12 = icmp eq i5 %i_7, -16, !dbg !154       ; [#uses=1 type=i1] [debug line = 64:10]
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_21 = add i5 %i_7, 1, !dbg !157               ; [#uses=1 type=i5] [debug line = 64:21]
  br i1 %tmp_12, label %13, label %12, !dbg !154  ; [debug line = 64:10]

; <label>:12                                      ; preds = %.preheader8
  %tmp_18 = zext i5 %i_7 to i64, !dbg !158        ; [#uses=2 type=i64] [debug line = 65:7]
  %buf_addr_3 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_18, !dbg !158 ; [#uses=1 type=i8*] [debug line = 65:7]
  %buf_load_1 = load i8* %buf_addr_3, align 1, !dbg !158 ; [#uses=1 type=i8] [debug line = 65:7]
  %lastbuf_addr = getelementptr inbounds [16 x i8]* @lastbuf, i64 0, i64 %tmp_18, !dbg !158 ; [#uses=1 type=i8*] [debug line = 65:7]
  store i8 %buf_load_1, i8* %lastbuf_addr, align 1, !dbg !158 ; [debug line = 65:7]
  call void @llvm.dbg.value(metadata !{i5 %i_21}, i64 0, metadata !108), !dbg !157 ; [debug line = 64:21] [debug variable = i]
  br label %.preheader8, !dbg !157                ; [debug line = 64:21]

; <label>:13                                      ; preds = %.preheader8
  call fastcc void @aes_decrypt_ecb([16 x i8]* %buf) nounwind, !dbg !159 ; [debug line = 67:6]
  br label %14, !dbg !160                         ; [debug line = 69:10]

; <label>:14                                      ; preds = %15, %13
  %i_8 = phi i5 [ 0, %13 ], [ %i_25, %15 ]        ; [#uses=3 type=i5]
  %tmp_22 = icmp eq i5 %i_8, -16, !dbg !160       ; [#uses=1 type=i1] [debug line = 69:10]
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_25 = add i5 %i_8, 1, !dbg !162               ; [#uses=1 type=i5] [debug line = 69:21]
  br i1 %tmp_22, label %.preheader7.preheader, label %15, !dbg !160 ; [debug line = 69:10]

.preheader7.preheader:                            ; preds = %14
  br label %.preheader7, !dbg !163                ; [debug line = 72:10]

; <label>:15                                      ; preds = %14
  %tmp_24 = zext i5 %i_8 to i64, !dbg !165        ; [#uses=2 type=i64] [debug line = 70:7]
  %buf_addr_5 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_24, !dbg !165 ; [#uses=2 type=i8*] [debug line = 70:7]
  %buf_load_3 = load i8* %buf_addr_5, align 1, !dbg !165 ; [#uses=1 type=i8] [debug line = 70:7]
  %xorv_addr_3 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_24, !dbg !165 ; [#uses=1 type=i8*] [debug line = 70:7]
  %xorv_load_1 = load i8* %xorv_addr_3, align 1, !dbg !165 ; [#uses=1 type=i8] [debug line = 70:7]
  %tmp_25 = xor i8 %xorv_load_1, %buf_load_3, !dbg !165 ; [#uses=1 type=i8] [debug line = 70:7]
  store i8 %tmp_25, i8* %buf_addr_5, align 1, !dbg !165 ; [debug line = 70:7]
  call void @llvm.dbg.value(metadata !{i5 %i_25}, i64 0, metadata !108), !dbg !162 ; [debug line = 69:21] [debug variable = i]
  br label %14, !dbg !162                         ; [debug line = 69:21]

.preheader7:                                      ; preds = %16, %.preheader7.preheader
  %i_9 = phi i5 [ %i_27, %16 ], [ 0, %.preheader7.preheader ] ; [#uses=3 type=i5]
  %tmp_27 = icmp eq i5 %i_9, -16, !dbg !163       ; [#uses=1 type=i1] [debug line = 72:10]
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_27 = add i5 %i_9, 1, !dbg !166               ; [#uses=1 type=i5] [debug line = 72:21]
  br i1 %tmp_27, label %.preheader5.preheader, label %16, !dbg !163 ; [debug line = 72:10]

.preheader5.preheader:                            ; preds = %.preheader7
  br label %.preheader5, !dbg !167                ; [debug line = 75:10]

; <label>:16                                      ; preds = %.preheader7
  %tmp_29 = zext i5 %i_9 to i64, !dbg !169        ; [#uses=2 type=i64] [debug line = 73:7]
  %lastbuf_addr_1 = getelementptr inbounds [16 x i8]* @lastbuf, i64 0, i64 %tmp_29, !dbg !169 ; [#uses=1 type=i8*] [debug line = 73:7]
  %lastbuf_load = load i8* %lastbuf_addr_1, align 1, !dbg !169 ; [#uses=1 type=i8] [debug line = 73:7]
  %xorv_addr_4 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_29, !dbg !169 ; [#uses=1 type=i8*] [debug line = 73:7]
  store i8 %lastbuf_load, i8* %xorv_addr_4, align 1, !dbg !169 ; [debug line = 73:7]
  call void @llvm.dbg.value(metadata !{i5 %i_27}, i64 0, metadata !108), !dbg !166 ; [debug line = 72:21] [debug variable = i]
  br label %.preheader7, !dbg !166                ; [debug line = 72:21]

.preheader5:                                      ; preds = %17, %.preheader5.preheader
  %i_10 = phi i5 [ %i_28, %17 ], [ 0, %.preheader5.preheader ] ; [#uses=3 type=i5]
  %tmp_30 = icmp eq i5 %i_10, -16, !dbg !167      ; [#uses=1 type=i1] [debug line = 75:10]
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_28 = add i5 %i_10, 1, !dbg !170              ; [#uses=1 type=i5] [debug line = 75:21]
  br i1 %tmp_30, label %.loopexit.loopexit15, label %17, !dbg !167 ; [debug line = 75:10]

; <label>:17                                      ; preds = %.preheader5
  %tmp_31 = zext i5 %i_10 to i64, !dbg !171       ; [#uses=2 type=i64] [debug line = 76:7]
  %buf_addr_7 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_31, !dbg !171 ; [#uses=1 type=i8*] [debug line = 76:7]
  %buf_load_5 = load i8* %buf_addr_7, align 1, !dbg !171 ; [#uses=1 type=i8] [debug line = 76:7]
  %data_out_addr_4 = getelementptr [16 x i8]* %data_out, i64 0, i64 %tmp_31, !dbg !171 ; [#uses=1 type=i8*] [debug line = 76:7]
  store i8 %buf_load_5, i8* %data_out_addr_4, align 1, !dbg !171 ; [debug line = 76:7]
  call void @llvm.dbg.value(metadata !{i5 %i_28}, i64 0, metadata !108), !dbg !170 ; [debug line = 75:21] [debug variable = i]
  br label %.preheader5, !dbg !170                ; [debug line = 75:21]

.preheader4:                                      ; preds = %18, %.preheader4.preheader
  %i_s = phi i5 [ %i_17, %18 ], [ 0, %.preheader4.preheader ] ; [#uses=3 type=i5]
  %tmp_6 = icmp eq i5 %i_s, -16, !dbg !99         ; [#uses=1 type=i1] [debug line = 81:7]
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_17 = add i5 %i_s, 1, !dbg !172               ; [#uses=1 type=i5] [debug line = 81:18]
  br i1 %tmp_6, label %.preheader2.preheader, label %18, !dbg !99 ; [debug line = 81:7]

.preheader2.preheader:                            ; preds = %.preheader4
  br label %.preheader2, !dbg !173                ; [debug line = 85:7]

; <label>:18                                      ; preds = %.preheader4
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str4) nounwind, !dbg !175 ; [debug line = 82:7]
  %tmp_2 = zext i5 %i_s to i64, !dbg !175         ; [#uses=2 type=i64] [debug line = 82:7]
  %data_in_addr_2 = getelementptr [32 x i8]* %data_in, i64 0, i64 %tmp_2, !dbg !175 ; [#uses=1 type=i8*] [debug line = 82:7]
  %data_in_load_2 = load i8* %data_in_addr_2, align 1, !dbg !175 ; [#uses=1 type=i8] [debug line = 82:7]
  %iv_addr = getelementptr inbounds [16 x i8]* @iv, i64 0, i64 %tmp_2, !dbg !175 ; [#uses=1 type=i8*] [debug line = 82:7]
  store i8 %data_in_load_2, i8* %iv_addr, align 1, !dbg !175 ; [debug line = 82:7]
  call void @llvm.dbg.value(metadata !{i5 %i_17}, i64 0, metadata !108), !dbg !172 ; [debug line = 81:18] [debug variable = i]
  br label %.preheader4, !dbg !172                ; [debug line = 81:18]

.preheader2:                                      ; preds = %19, %.preheader2.preheader
  %i_12 = phi i5 [ %i_22, %19 ], [ 0, %.preheader2.preheader ] ; [#uses=3 type=i5]
  %tmp_13 = icmp eq i5 %i_12, -16, !dbg !173      ; [#uses=1 type=i1] [debug line = 85:7]
  %empty_21 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_22 = add i5 %i_12, 1, !dbg !177              ; [#uses=1 type=i5] [debug line = 85:18]
  br i1 %tmp_13, label %.loopexit.loopexit14, label %19, !dbg !173 ; [debug line = 85:7]

; <label>:19                                      ; preds = %.preheader2
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str5) nounwind, !dbg !178 ; [debug line = 86:4]
  %tmp_19 = zext i5 %i_12 to i64, !dbg !178       ; [#uses=1 type=i64] [debug line = 86:4]
  %data_out_addr_1 = getelementptr [16 x i8]* %data_out, i64 0, i64 %tmp_19, !dbg !178 ; [#uses=1 type=i8*] [debug line = 86:4]
  store i8 0, i8* %data_out_addr_1, align 1, !dbg !178 ; [debug line = 86:4]
  call void @llvm.dbg.value(metadata !{i5 %i_22}, i64 0, metadata !108), !dbg !177 ; [debug line = 85:18] [debug variable = i]
  br label %.preheader2, !dbg !177                ; [debug line = 85:18]

.preheader1:                                      ; preds = %20, %.preheader1.preheader
  %i_11 = phi i6 [ %i_18, %20 ], [ 0, %.preheader1.preheader ] ; [#uses=3 type=i6]
  %tmp_7 = icmp eq i6 %i_11, -32, !dbg !101       ; [#uses=1 type=i1] [debug line = 91:7]
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  %i_18 = add i6 %i_11, 1, !dbg !180              ; [#uses=1 type=i6] [debug line = 91:18]
  br i1 %tmp_7, label %.preheader.preheader, label %20, !dbg !101 ; [debug line = 91:7]

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader, !dbg !181                 ; [debug line = 95:7]

; <label>:20                                      ; preds = %.preheader1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str6) nounwind, !dbg !183 ; [debug line = 92:4]
  %tmp_9 = zext i6 %i_11 to i64, !dbg !183        ; [#uses=2 type=i64] [debug line = 92:4]
  %data_in_addr_3 = getelementptr [32 x i8]* %data_in, i64 0, i64 %tmp_9, !dbg !183 ; [#uses=1 type=i8*] [debug line = 92:4]
  %data_in_load_3 = load i8* %data_in_addr_3, align 1, !dbg !183 ; [#uses=1 type=i8] [debug line = 92:4]
  %key_addr = getelementptr inbounds [32 x i8]* @key, i64 0, i64 %tmp_9, !dbg !183 ; [#uses=1 type=i8*] [debug line = 92:4]
  store i8 %data_in_load_3, i8* %key_addr, align 1, !dbg !183 ; [debug line = 92:4]
  call void @llvm.dbg.value(metadata !{i6 %i_18}, i64 0, metadata !108), !dbg !180 ; [debug line = 91:18] [debug variable = i]
  br label %.preheader1, !dbg !180                ; [debug line = 91:18]

.preheader:                                       ; preds = %21, %.preheader.preheader
  %i_14 = phi i5 [ %i_23, %21 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i5]
  %tmp_14 = icmp eq i5 %i_14, -16, !dbg !181      ; [#uses=1 type=i1] [debug line = 95:7]
  %empty_23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_23 = add i5 %i_14, 1, !dbg !185              ; [#uses=1 type=i5] [debug line = 95:18]
  br i1 %tmp_14, label %.loopexit.loopexit, label %21, !dbg !181 ; [debug line = 95:7]

; <label>:21                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str7) nounwind, !dbg !186 ; [debug line = 96:4]
  %tmp_20 = zext i5 %i_14 to i64, !dbg !186       ; [#uses=1 type=i64] [debug line = 96:4]
  %data_out_addr_2 = getelementptr [16 x i8]* %data_out, i64 0, i64 %tmp_20, !dbg !186 ; [#uses=1 type=i8*] [debug line = 96:4]
  store i8 0, i8* %data_out_addr_2, align 1, !dbg !186 ; [debug line = 96:4]
  call void @llvm.dbg.value(metadata !{i5 %i_23}, i64 0, metadata !108), !dbg !185 ; [debug line = 95:18] [debug variable = i]
  br label %.preheader, !dbg !185                 ; [debug line = 95:18]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit.loopexit14:                             ; preds = %.preheader2
  br label %.loopexit

.loopexit.loopexit15:                             ; preds = %.preheader5
  br label %.loopexit

.loopexit.loopexit16:                             ; preds = %.preheader10
  br label %.loopexit

.loopexit.loopexit17:                             ; preds = %.preheader.i
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit17, %.loopexit.loopexit16, %.loopexit.loopexit15, %.loopexit.loopexit14, %.loopexit.loopexit, %0
  ret void, !dbg !188                             ; [debug line = 99:1]
}

; [#uses=1]
define internal fastcc void @aes_mixColumns_inv([16 x i8]* nocapture %buf) {
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !189), !dbg !194 ; [debug line = 270:34] [debug variable = buf]
  br label %1, !dbg !195                          ; [debug line = 274:10]

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 0, %0 ], [ %i_31, %2 ]            ; [#uses=4 type=i5]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i, i32 4), !dbg !195 ; [#uses=1 type=i1] [debug line = 274:10]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %tmp, label %3, label %2, !dbg !195       ; [debug line = 274:10]

; <label>:2                                       ; preds = %1
  %tmp_s = zext i5 %i to i64, !dbg !198           ; [#uses=1 type=i64] [debug line = 276:9]
  %buf_addr = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_s, !dbg !198 ; [#uses=2 type=i8*] [debug line = 276:9]
  %a = load i8* %buf_addr, align 1, !dbg !198     ; [#uses=4 type=i8] [debug line = 276:9]
  call void @llvm.dbg.value(metadata !{i8 %a}, i64 0, metadata !200), !dbg !198 ; [debug line = 276:9] [debug variable = a]
  %tmp_1 = trunc i5 %i to i4, !dbg !201           ; [#uses=3 type=i4] [debug line = 277:9]
  %tmp_32 = or i4 %tmp_1, 1, !dbg !201            ; [#uses=1 type=i4] [debug line = 277:9]
  %tmp_33 = zext i4 %tmp_32 to i64, !dbg !201     ; [#uses=1 type=i64] [debug line = 277:9]
  %buf_addr_8 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_33, !dbg !201 ; [#uses=2 type=i8*] [debug line = 277:9]
  %b = load i8* %buf_addr_8, align 1, !dbg !201   ; [#uses=4 type=i8] [debug line = 277:9]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !202), !dbg !201 ; [debug line = 277:9] [debug variable = b]
  %tmp_34 = or i4 %tmp_1, 2, !dbg !203            ; [#uses=1 type=i4] [debug line = 278:9]
  %tmp_35 = zext i4 %tmp_34 to i64, !dbg !203     ; [#uses=1 type=i64] [debug line = 278:9]
  %buf_addr_9 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_35, !dbg !203 ; [#uses=2 type=i8*] [debug line = 278:9]
  %c = load i8* %buf_addr_9, align 1, !dbg !203   ; [#uses=5 type=i8] [debug line = 278:9]
  call void @llvm.dbg.value(metadata !{i8 %c}, i64 0, metadata !204), !dbg !203 ; [debug line = 278:9] [debug variable = c]
  %tmp_36 = or i4 %tmp_1, 3, !dbg !205            ; [#uses=1 type=i4] [debug line = 279:9]
  %tmp_37 = zext i4 %tmp_36 to i64, !dbg !205     ; [#uses=1 type=i64] [debug line = 279:9]
  %buf_addr_10 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_37, !dbg !205 ; [#uses=2 type=i8*] [debug line = 279:9]
  %d = load i8* %buf_addr_10, align 1, !dbg !205  ; [#uses=5 type=i8] [debug line = 279:9]
  call void @llvm.dbg.value(metadata !{i8 %d}, i64 0, metadata !206), !dbg !205 ; [debug line = 279:9] [debug variable = d]
  %x_assign_5 = xor i8 %b, %a, !dbg !207          ; [#uses=3 type=i8] [debug line = 280:9]
  %tmp1 = xor i8 %d, %x_assign_5, !dbg !207       ; [#uses=1 type=i8] [debug line = 280:9]
  %e = xor i8 %tmp1, %c, !dbg !207                ; [#uses=4 type=i8] [debug line = 280:9]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !208), !dbg !207 ; [debug line = 280:9] [debug variable = e]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !209), !dbg !214 ; [debug line = 187:33@281:13] [debug variable = x]
  %y_1 = shl i8 %e, 1, !dbg !215                  ; [#uses=2 type=i8] [debug line = 189:34@281:13]
  call void @llvm.dbg.value(metadata !{i8 %y_1}, i64 0, metadata !217), !dbg !215 ; [debug line = 189:34@281:13] [debug variable = y]
  %tmp_3 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %e, i32 7), !dbg !218 ; [#uses=1 type=i1] [debug line = 190:5@281:13]
  %tmp_1_i = xor i8 %y_1, 27, !dbg !218           ; [#uses=1 type=i8] [debug line = 190:5@281:13]
  %y_19 = select i1 %tmp_3, i8 %tmp_1_i, i8 %y_1, !dbg !218 ; [#uses=2 type=i8] [debug line = 190:5@281:13]
  call void @llvm.dbg.value(metadata !{i8 %y_19}, i64 0, metadata !217), !dbg !218 ; [debug line = 190:5@281:13] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %y_19}, i64 0, metadata !219), !dbg !213 ; [debug line = 281:13] [debug variable = z]
  %tmp2 = xor i8 %a, %y_19, !dbg !220             ; [#uses=1 type=i8] [debug line = 282:26]
  %x_assign_1 = xor i8 %tmp2, %c, !dbg !220       ; [#uses=2 type=i8] [debug line = 282:26]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_1}, i64 0, metadata !221), !dbg !222 ; [debug line = 187:33@282:26] [debug variable = x]
  %y_3 = shl i8 %x_assign_1, 1, !dbg !223         ; [#uses=2 type=i8] [debug line = 189:34@282:26]
  call void @llvm.dbg.value(metadata !{i8 %y_3}, i64 0, metadata !224), !dbg !223 ; [debug line = 189:34@282:26] [debug variable = y]
  %tmp_5 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1, i32 7), !dbg !225 ; [#uses=1 type=i1] [debug line = 190:5@282:26]
  %tmp_1_i1 = xor i8 %y_3, 27, !dbg !225          ; [#uses=1 type=i8] [debug line = 190:5@282:26]
  %y_4 = select i1 %tmp_5, i8 %tmp_1_i1, i8 %y_3, !dbg !225 ; [#uses=2 type=i8] [debug line = 190:5@282:26]
  call void @llvm.dbg.value(metadata !{i8 %y_4}, i64 0, metadata !224), !dbg !225 ; [debug line = 190:5@282:26] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %y_4}, i64 0, metadata !221), !dbg !222 ; [debug line = 187:33@282:26] [debug variable = x]
  %y_5 = shl i8 %y_4, 1, !dbg !223                ; [#uses=2 type=i8] [debug line = 189:34@282:26]
  call void @llvm.dbg.value(metadata !{i8 %y_5}, i64 0, metadata !224), !dbg !223 ; [debug line = 189:34@282:26] [debug variable = y]
  %tmp_7 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %y_4, i32 7), !dbg !225 ; [#uses=1 type=i1] [debug line = 190:5@282:26]
  %tmp_1_i2 = xor i8 %y_5, 27, !dbg !225          ; [#uses=1 type=i8] [debug line = 190:5@282:26]
  %y_6 = select i1 %tmp_7, i8 %tmp_1_i2, i8 %y_5, !dbg !225 ; [#uses=1 type=i8] [debug line = 190:5@282:26]
  call void @llvm.dbg.value(metadata !{i8 %y_6}, i64 0, metadata !224), !dbg !225 ; [debug line = 190:5@282:26] [debug variable = y]
  %x = xor i8 %y_6, %e, !dbg !220                 ; [#uses=2 type=i8] [debug line = 282:26]
  call void @llvm.dbg.value(metadata !{i8 %x}, i64 0, metadata !226), !dbg !220 ; [debug line = 282:26] [debug variable = x]
  %tmp3 = xor i8 %b, %y_19, !dbg !227             ; [#uses=1 type=i8] [debug line = 283:26]
  %x_assign_3 = xor i8 %tmp3, %d, !dbg !227       ; [#uses=2 type=i8] [debug line = 283:26]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_3}, i64 0, metadata !228), !dbg !229 ; [debug line = 187:33@283:26] [debug variable = x]
  %y_7 = shl i8 %x_assign_3, 1, !dbg !230         ; [#uses=2 type=i8] [debug line = 189:34@283:26]
  call void @llvm.dbg.value(metadata !{i8 %y_7}, i64 0, metadata !231), !dbg !230 ; [debug line = 189:34@283:26] [debug variable = y]
  %tmp_9 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3, i32 7), !dbg !232 ; [#uses=1 type=i1] [debug line = 190:5@283:26]
  %tmp_1_i3 = xor i8 %y_7, 27, !dbg !232          ; [#uses=1 type=i8] [debug line = 190:5@283:26]
  %y_8 = select i1 %tmp_9, i8 %tmp_1_i3, i8 %y_7, !dbg !232 ; [#uses=2 type=i8] [debug line = 190:5@283:26]
  call void @llvm.dbg.value(metadata !{i8 %y_8}, i64 0, metadata !231), !dbg !232 ; [debug line = 190:5@283:26] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %y_8}, i64 0, metadata !228), !dbg !229 ; [debug line = 187:33@283:26] [debug variable = x]
  %y_9 = shl i8 %y_8, 1, !dbg !230                ; [#uses=2 type=i8] [debug line = 189:34@283:26]
  call void @llvm.dbg.value(metadata !{i8 %y_9}, i64 0, metadata !231), !dbg !230 ; [debug line = 189:34@283:26] [debug variable = y]
  %tmp_11 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %y_8, i32 7), !dbg !232 ; [#uses=1 type=i1] [debug line = 190:5@283:26]
  %tmp_1_i4 = xor i8 %y_9, 27, !dbg !232          ; [#uses=1 type=i8] [debug line = 190:5@283:26]
  %y_10 = select i1 %tmp_11, i8 %tmp_1_i4, i8 %y_9, !dbg !232 ; [#uses=1 type=i8] [debug line = 190:5@283:26]
  call void @llvm.dbg.value(metadata !{i8 %y_10}, i64 0, metadata !231), !dbg !232 ; [debug line = 190:5@283:26] [debug variable = y]
  %y = xor i8 %y_10, %e, !dbg !227                ; [#uses=2 type=i8] [debug line = 283:26]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !233), !dbg !227 ; [debug line = 283:26] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_5}, i64 0, metadata !234), !dbg !236 ; [debug line = 187:33@284:23] [debug variable = x]
  %y_11 = shl i8 %x_assign_5, 1, !dbg !237        ; [#uses=2 type=i8] [debug line = 189:34@284:23]
  call void @llvm.dbg.value(metadata !{i8 %y_11}, i64 0, metadata !238), !dbg !237 ; [debug line = 189:34@284:23] [debug variable = y]
  %tmp_13 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_5, i32 7), !dbg !239 ; [#uses=1 type=i1] [debug line = 190:5@284:23]
  %tmp_1_i5 = xor i8 %y_11, 27, !dbg !239         ; [#uses=1 type=i8] [debug line = 190:5@284:23]
  %y_12 = select i1 %tmp_13, i8 %tmp_1_i5, i8 %y_11, !dbg !239 ; [#uses=1 type=i8] [debug line = 190:5@284:23]
  call void @llvm.dbg.value(metadata !{i8 %y_12}, i64 0, metadata !238), !dbg !239 ; [debug line = 190:5@284:23] [debug variable = y]
  %tmp4 = xor i8 %y_12, %x, !dbg !235             ; [#uses=1 type=i8] [debug line = 284:23]
  %tmp_38 = xor i8 %tmp4, %a, !dbg !235           ; [#uses=1 type=i8] [debug line = 284:23]
  store i8 %tmp_38, i8* %buf_addr, align 1, !dbg !235 ; [debug line = 284:23]
  %x_assign_6 = xor i8 %c, %b, !dbg !240          ; [#uses=2 type=i8] [debug line = 285:27]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_6}, i64 0, metadata !241), !dbg !242 ; [debug line = 187:33@285:27] [debug variable = x]
  %y_13 = shl i8 %x_assign_6, 1, !dbg !243        ; [#uses=2 type=i8] [debug line = 189:34@285:27]
  call void @llvm.dbg.value(metadata !{i8 %y_13}, i64 0, metadata !244), !dbg !243 ; [debug line = 189:34@285:27] [debug variable = y]
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_6, i32 7), !dbg !245 ; [#uses=1 type=i1] [debug line = 190:5@285:27]
  %tmp_1_i6 = xor i8 %y_13, 27, !dbg !245         ; [#uses=1 type=i8] [debug line = 190:5@285:27]
  %y_14 = select i1 %tmp_15, i8 %tmp_1_i6, i8 %y_13, !dbg !245 ; [#uses=1 type=i8] [debug line = 190:5@285:27]
  call void @llvm.dbg.value(metadata !{i8 %y_14}, i64 0, metadata !244), !dbg !245 ; [debug line = 190:5@285:27] [debug variable = y]
  %tmp5 = xor i8 %y_14, %y, !dbg !240             ; [#uses=1 type=i8] [debug line = 285:27]
  %tmp_39 = xor i8 %tmp5, %b, !dbg !240           ; [#uses=1 type=i8] [debug line = 285:27]
  store i8 %tmp_39, i8* %buf_addr_8, align 1, !dbg !240 ; [debug line = 285:27]
  %x_assign_7 = xor i8 %d, %c, !dbg !246          ; [#uses=2 type=i8] [debug line = 286:27]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_7}, i64 0, metadata !247), !dbg !248 ; [debug line = 187:33@286:27] [debug variable = x]
  %y_15 = shl i8 %x_assign_7, 1, !dbg !249        ; [#uses=2 type=i8] [debug line = 189:34@286:27]
  call void @llvm.dbg.value(metadata !{i8 %y_15}, i64 0, metadata !250), !dbg !249 ; [debug line = 189:34@286:27] [debug variable = y]
  %tmp_17 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_7, i32 7), !dbg !251 ; [#uses=1 type=i1] [debug line = 190:5@286:27]
  %tmp_1_i7 = xor i8 %y_15, 27, !dbg !251         ; [#uses=1 type=i8] [debug line = 190:5@286:27]
  %y_16 = select i1 %tmp_17, i8 %tmp_1_i7, i8 %y_15, !dbg !251 ; [#uses=1 type=i8] [debug line = 190:5@286:27]
  call void @llvm.dbg.value(metadata !{i8 %y_16}, i64 0, metadata !250), !dbg !251 ; [debug line = 190:5@286:27] [debug variable = y]
  %tmp6 = xor i8 %y_16, %x, !dbg !246             ; [#uses=1 type=i8] [debug line = 286:27]
  %tmp_40 = xor i8 %tmp6, %c, !dbg !246           ; [#uses=1 type=i8] [debug line = 286:27]
  store i8 %tmp_40, i8* %buf_addr_9, align 1, !dbg !246 ; [debug line = 286:27]
  %x_assign_8 = xor i8 %d, %a, !dbg !252          ; [#uses=2 type=i8] [debug line = 287:27]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_8}, i64 0, metadata !253), !dbg !254 ; [debug line = 187:33@287:27] [debug variable = x]
  %y_17 = shl i8 %x_assign_8, 1, !dbg !255        ; [#uses=2 type=i8] [debug line = 189:34@287:27]
  call void @llvm.dbg.value(metadata !{i8 %y_17}, i64 0, metadata !256), !dbg !255 ; [debug line = 189:34@287:27] [debug variable = y]
  %tmp_19 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_8, i32 7), !dbg !257 ; [#uses=1 type=i1] [debug line = 190:5@287:27]
  %tmp_1_i8 = xor i8 %y_17, 27, !dbg !257         ; [#uses=1 type=i8] [debug line = 190:5@287:27]
  %y_18 = select i1 %tmp_19, i8 %tmp_1_i8, i8 %y_17, !dbg !257 ; [#uses=1 type=i8] [debug line = 190:5@287:27]
  call void @llvm.dbg.value(metadata !{i8 %y_18}, i64 0, metadata !256), !dbg !257 ; [debug line = 190:5@287:27] [debug variable = y]
  %tmp7 = xor i8 %y_18, %y, !dbg !252             ; [#uses=1 type=i8] [debug line = 287:27]
  %tmp_41 = xor i8 %tmp7, %d, !dbg !252           ; [#uses=1 type=i8] [debug line = 287:27]
  store i8 %tmp_41, i8* %buf_addr_10, align 1, !dbg !252 ; [debug line = 287:27]
  %i_31 = add i5 4, %i, !dbg !258                 ; [#uses=1 type=i5] [debug line = 274:25]
  call void @llvm.dbg.value(metadata !{i5 %i_31}, i64 0, metadata !259), !dbg !258 ; [debug line = 274:25] [debug variable = i]
  br label %1, !dbg !258                          ; [debug line = 274:25]

; <label>:3                                       ; preds = %1
  ret void, !dbg !260                             ; [debug line = 289:1]
}

; [#uses=3]
define internal fastcc i8 @aes_expandEncKey([32 x i8]* %k, i8 %rc_read) {
  %rc_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %rc_read) ; [#uses=3 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %rc_read_1}, i64 0, metadata !261), !dbg !265 ; [debug line = 292:51] [debug variable = rc]
  call void @llvm.dbg.value(metadata !{i8 %rc_read_1}, i64 0, metadata !266), !dbg !269 ; [debug line = 187:33@300:11] [debug variable = x]
  %k_addr = getelementptr [32 x i8]* %k, i64 0, i64 0 ; [#uses=2 type=i8*]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %k}, i64 0, metadata !270), !dbg !272 ; [debug line = 292:39] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i8 %rc_read}, i64 0, metadata !261), !dbg !265 ; [debug line = 292:51] [debug variable = rc]
  %k_addr_1 = getelementptr [32 x i8]* %k, i64 0, i64 29, !dbg !273 ; [#uses=1 type=i8*] [debug line = 296:5]
  %k_load = load i8* %k_addr_1, align 1, !dbg !273 ; [#uses=1 type=i8] [debug line = 296:5]
  %tmp = zext i8 %k_load to i64, !dbg !273        ; [#uses=1 type=i64] [debug line = 296:5]
  %sbox_addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp, !dbg !273 ; [#uses=1 type=i8*] [debug line = 296:5]
  %sbox_load = load i8* %sbox_addr, align 1, !dbg !273 ; [#uses=1 type=i8] [debug line = 296:5]
  %k_load_1 = load i8* %k_addr, align 1, !dbg !273 ; [#uses=1 type=i8] [debug line = 296:5]
  %tmp1 = xor i8 %k_load_1, %rc_read_1, !dbg !273 ; [#uses=1 type=i8] [debug line = 296:5]
  %tmp_s = xor i8 %tmp1, %sbox_load, !dbg !273    ; [#uses=1 type=i8] [debug line = 296:5]
  store i8 %tmp_s, i8* %k_addr, align 1, !dbg !273 ; [debug line = 296:5]
  %k_addr_2 = getelementptr [32 x i8]* %k, i64 0, i64 30, !dbg !274 ; [#uses=1 type=i8*] [debug line = 297:5]
  %k_load_2 = load i8* %k_addr_2, align 1, !dbg !274 ; [#uses=1 type=i8] [debug line = 297:5]
  %tmp_42 = zext i8 %k_load_2 to i64, !dbg !274   ; [#uses=1 type=i64] [debug line = 297:5]
  %sbox_addr_1 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_42, !dbg !274 ; [#uses=1 type=i8*] [debug line = 297:5]
  %sbox_load_1 = load i8* %sbox_addr_1, align 1, !dbg !274 ; [#uses=1 type=i8] [debug line = 297:5]
  %k_addr_3 = getelementptr [32 x i8]* %k, i64 0, i64 1, !dbg !274 ; [#uses=2 type=i8*] [debug line = 297:5]
  %k_load_3 = load i8* %k_addr_3, align 1, !dbg !274 ; [#uses=1 type=i8] [debug line = 297:5]
  %tmp_43 = xor i8 %k_load_3, %sbox_load_1, !dbg !274 ; [#uses=1 type=i8] [debug line = 297:5]
  store i8 %tmp_43, i8* %k_addr_3, align 1, !dbg !274 ; [debug line = 297:5]
  %k_addr_4 = getelementptr [32 x i8]* %k, i64 0, i64 31, !dbg !275 ; [#uses=1 type=i8*] [debug line = 298:5]
  %k_load_4 = load i8* %k_addr_4, align 1, !dbg !275 ; [#uses=1 type=i8] [debug line = 298:5]
  %tmp_44 = zext i8 %k_load_4 to i64, !dbg !275   ; [#uses=1 type=i64] [debug line = 298:5]
  %sbox_addr_2 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_44, !dbg !275 ; [#uses=1 type=i8*] [debug line = 298:5]
  %sbox_load_2 = load i8* %sbox_addr_2, align 1, !dbg !275 ; [#uses=1 type=i8] [debug line = 298:5]
  %k_addr_5 = getelementptr [32 x i8]* %k, i64 0, i64 2, !dbg !275 ; [#uses=2 type=i8*] [debug line = 298:5]
  %k_load_5 = load i8* %k_addr_5, align 1, !dbg !275 ; [#uses=1 type=i8] [debug line = 298:5]
  %tmp_45 = xor i8 %k_load_5, %sbox_load_2, !dbg !275 ; [#uses=1 type=i8] [debug line = 298:5]
  store i8 %tmp_45, i8* %k_addr_5, align 1, !dbg !275 ; [debug line = 298:5]
  %k_addr_6 = getelementptr [32 x i8]* %k, i64 0, i64 28, !dbg !276 ; [#uses=1 type=i8*] [debug line = 299:5]
  %k_load_6 = load i8* %k_addr_6, align 1, !dbg !276 ; [#uses=1 type=i8] [debug line = 299:5]
  %tmp_46 = zext i8 %k_load_6 to i64, !dbg !276   ; [#uses=1 type=i64] [debug line = 299:5]
  %sbox_addr_3 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_46, !dbg !276 ; [#uses=1 type=i8*] [debug line = 299:5]
  %sbox_load_3 = load i8* %sbox_addr_3, align 1, !dbg !276 ; [#uses=1 type=i8] [debug line = 299:5]
  %k_addr_7 = getelementptr [32 x i8]* %k, i64 0, i64 3, !dbg !276 ; [#uses=2 type=i8*] [debug line = 299:5]
  %k_load_7 = load i8* %k_addr_7, align 1, !dbg !276 ; [#uses=1 type=i8] [debug line = 299:5]
  %tmp_47 = xor i8 %k_load_7, %sbox_load_3, !dbg !276 ; [#uses=1 type=i8] [debug line = 299:5]
  store i8 %tmp_47, i8* %k_addr_7, align 1, !dbg !276 ; [debug line = 299:5]
  call void @llvm.dbg.value(metadata !{i8 %rc_read}, i64 0, metadata !266), !dbg !269 ; [debug line = 187:33@300:11] [debug variable = x]
  %y = shl i8 %rc_read_1, 1, !dbg !277            ; [#uses=2 type=i8] [debug line = 189:34@300:11]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !278), !dbg !277 ; [debug line = 189:34@300:11] [debug variable = y]
  %tmp_21 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %rc_read_1, i32 7), !dbg !279 ; [#uses=1 type=i1] [debug line = 190:5@300:11]
  %tmp_1_i = xor i8 %y, 27, !dbg !279             ; [#uses=1 type=i8] [debug line = 190:5@300:11]
  %y_20 = select i1 %tmp_21, i8 %tmp_1_i, i8 %y, !dbg !279 ; [#uses=1 type=i8] [debug line = 190:5@300:11]
  call void @llvm.dbg.value(metadata !{i8 %y_20}, i64 0, metadata !278), !dbg !279 ; [debug line = 190:5@300:11] [debug variable = y]
  br label %1, !dbg !280                          ; [debug line = 302:9]

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 4, %0 ], [ %i_32, %2 ]            ; [#uses=4 type=i5]
  %tmp_22 = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i, i32 4), !dbg !280 ; [#uses=1 type=i1] [debug line = 302:9]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp_22, label %3, label %2, !dbg !280    ; [debug line = 302:9]

; <label>:2                                       ; preds = %1
  %tmp_23 = trunc i5 %i to i4, !dbg !282          ; [#uses=7 type=i4] [debug line = 302:32]
  %tmp_49 = add i4 -4, %tmp_23, !dbg !282         ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp_50 = zext i4 %tmp_49 to i64, !dbg !282     ; [#uses=1 type=i64] [debug line = 302:32]
  %k_addr_8 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_50, !dbg !282 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k_load_8 = load i8* %k_addr_8, align 1, !dbg !282 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp_51 = zext i5 %i to i64, !dbg !282          ; [#uses=1 type=i64] [debug line = 302:32]
  %k_addr_9 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_51, !dbg !282 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k_load_9 = load i8* %k_addr_9, align 1, !dbg !282 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp_52 = xor i8 %k_load_9, %k_load_8, !dbg !282 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp_52, i8* %k_addr_9, align 1, !dbg !282 ; [debug line = 302:32]
  %tmp_53 = add i4 -3, %tmp_23, !dbg !282         ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp_54 = zext i4 %tmp_53 to i64, !dbg !282     ; [#uses=1 type=i64] [debug line = 302:32]
  %k_addr_10 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_54, !dbg !282 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k_load_10 = load i8* %k_addr_10, align 1, !dbg !282 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp_55 = or i4 %tmp_23, 1, !dbg !282           ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp_56 = zext i4 %tmp_55 to i64, !dbg !282     ; [#uses=1 type=i64] [debug line = 302:32]
  %k_addr_11 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_56, !dbg !282 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k_load_11 = load i8* %k_addr_11, align 1, !dbg !282 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp_57 = xor i8 %k_load_11, %k_load_10, !dbg !282 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp_57, i8* %k_addr_11, align 1, !dbg !282 ; [debug line = 302:32]
  %tmp_58 = add i4 -2, %tmp_23, !dbg !282         ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp_59 = zext i4 %tmp_58 to i64, !dbg !282     ; [#uses=1 type=i64] [debug line = 302:32]
  %k_addr_12 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_59, !dbg !282 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k_load_12 = load i8* %k_addr_12, align 1, !dbg !282 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp_60 = or i4 %tmp_23, 2, !dbg !282           ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp_61 = zext i4 %tmp_60 to i64, !dbg !282     ; [#uses=1 type=i64] [debug line = 302:32]
  %k_addr_13 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_61, !dbg !282 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k_load_13 = load i8* %k_addr_13, align 1, !dbg !282 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp_62 = xor i8 %k_load_13, %k_load_12, !dbg !282 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp_62, i8* %k_addr_13, align 1, !dbg !282 ; [debug line = 302:32]
  %tmp_63 = add i4 -1, %tmp_23, !dbg !282         ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp_64 = zext i4 %tmp_63 to i64, !dbg !282     ; [#uses=1 type=i64] [debug line = 302:32]
  %k_addr_14 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_64, !dbg !282 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k_load_14 = load i8* %k_addr_14, align 1, !dbg !282 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp_65 = or i4 %tmp_23, 3, !dbg !282           ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp_66 = zext i4 %tmp_65 to i64, !dbg !282     ; [#uses=1 type=i64] [debug line = 302:32]
  %k_addr_15 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_66, !dbg !282 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k_load_15 = load i8* %k_addr_15, align 1, !dbg !282 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp_67 = xor i8 %k_load_15, %k_load_14, !dbg !282 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp_67, i8* %k_addr_15, align 1, !dbg !282 ; [debug line = 302:32]
  %i_32 = add i5 4, %i, !dbg !283                 ; [#uses=1 type=i5] [debug line = 302:24]
  call void @llvm.dbg.value(metadata !{i5 %i_32}, i64 0, metadata !284), !dbg !283 ; [debug line = 302:24] [debug variable = i]
  br label %1, !dbg !283                          ; [debug line = 302:24]

; <label>:3                                       ; preds = %1
  %k_addr_16 = getelementptr [32 x i8]* %k, i64 0, i64 12, !dbg !285 ; [#uses=1 type=i8*] [debug line = 304:5]
  %k_load_16 = load i8* %k_addr_16, align 1, !dbg !285 ; [#uses=1 type=i8] [debug line = 304:5]
  %tmp_48 = zext i8 %k_load_16 to i64, !dbg !285  ; [#uses=1 type=i64] [debug line = 304:5]
  %sbox_addr_4 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_48, !dbg !285 ; [#uses=1 type=i8*] [debug line = 304:5]
  %sbox_load_4 = load i8* %sbox_addr_4, align 1, !dbg !285 ; [#uses=1 type=i8] [debug line = 304:5]
  %k_addr_17 = getelementptr [32 x i8]* %k, i64 0, i64 16, !dbg !285 ; [#uses=2 type=i8*] [debug line = 304:5]
  %k_load_17 = load i8* %k_addr_17, align 1, !dbg !285 ; [#uses=1 type=i8] [debug line = 304:5]
  %tmp_68 = xor i8 %k_load_17, %sbox_load_4, !dbg !285 ; [#uses=1 type=i8] [debug line = 304:5]
  store i8 %tmp_68, i8* %k_addr_17, align 1, !dbg !285 ; [debug line = 304:5]
  %k_addr_18 = getelementptr [32 x i8]* %k, i64 0, i64 13, !dbg !286 ; [#uses=1 type=i8*] [debug line = 305:5]
  %k_load_18 = load i8* %k_addr_18, align 1, !dbg !286 ; [#uses=1 type=i8] [debug line = 305:5]
  %tmp_69 = zext i8 %k_load_18 to i64, !dbg !286  ; [#uses=1 type=i64] [debug line = 305:5]
  %sbox_addr_5 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_69, !dbg !286 ; [#uses=1 type=i8*] [debug line = 305:5]
  %sbox_load_5 = load i8* %sbox_addr_5, align 1, !dbg !286 ; [#uses=1 type=i8] [debug line = 305:5]
  %k_addr_19 = getelementptr [32 x i8]* %k, i64 0, i64 17, !dbg !286 ; [#uses=2 type=i8*] [debug line = 305:5]
  %k_load_19 = load i8* %k_addr_19, align 1, !dbg !286 ; [#uses=1 type=i8] [debug line = 305:5]
  %tmp_70 = xor i8 %k_load_19, %sbox_load_5, !dbg !286 ; [#uses=1 type=i8] [debug line = 305:5]
  store i8 %tmp_70, i8* %k_addr_19, align 1, !dbg !286 ; [debug line = 305:5]
  %k_addr_20 = getelementptr [32 x i8]* %k, i64 0, i64 14, !dbg !287 ; [#uses=1 type=i8*] [debug line = 306:5]
  %k_load_20 = load i8* %k_addr_20, align 1, !dbg !287 ; [#uses=1 type=i8] [debug line = 306:5]
  %tmp_71 = zext i8 %k_load_20 to i64, !dbg !287  ; [#uses=1 type=i64] [debug line = 306:5]
  %sbox_addr_6 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_71, !dbg !287 ; [#uses=1 type=i8*] [debug line = 306:5]
  %sbox_load_6 = load i8* %sbox_addr_6, align 1, !dbg !287 ; [#uses=1 type=i8] [debug line = 306:5]
  %k_addr_21 = getelementptr [32 x i8]* %k, i64 0, i64 18, !dbg !287 ; [#uses=2 type=i8*] [debug line = 306:5]
  %k_load_21 = load i8* %k_addr_21, align 1, !dbg !287 ; [#uses=1 type=i8] [debug line = 306:5]
  %tmp_72 = xor i8 %k_load_21, %sbox_load_6, !dbg !287 ; [#uses=1 type=i8] [debug line = 306:5]
  store i8 %tmp_72, i8* %k_addr_21, align 1, !dbg !287 ; [debug line = 306:5]
  %k_addr_22 = getelementptr [32 x i8]* %k, i64 0, i64 15, !dbg !288 ; [#uses=1 type=i8*] [debug line = 307:5]
  %k_load_22 = load i8* %k_addr_22, align 1, !dbg !288 ; [#uses=1 type=i8] [debug line = 307:5]
  %tmp_73 = zext i8 %k_load_22 to i64, !dbg !288  ; [#uses=1 type=i64] [debug line = 307:5]
  %sbox_addr_7 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_73, !dbg !288 ; [#uses=1 type=i8*] [debug line = 307:5]
  %sbox_load_7 = load i8* %sbox_addr_7, align 1, !dbg !288 ; [#uses=1 type=i8] [debug line = 307:5]
  %k_addr_23 = getelementptr [32 x i8]* %k, i64 0, i64 19, !dbg !288 ; [#uses=2 type=i8*] [debug line = 307:5]
  %k_load_23 = load i8* %k_addr_23, align 1, !dbg !288 ; [#uses=1 type=i8] [debug line = 307:5]
  %tmp_74 = xor i8 %k_load_23, %sbox_load_7, !dbg !288 ; [#uses=1 type=i8] [debug line = 307:5]
  store i8 %tmp_74, i8* %k_addr_23, align 1, !dbg !288 ; [debug line = 307:5]
  br label %4, !dbg !289                          ; [debug line = 309:9]

; <label>:4                                       ; preds = %5, %3
  %i_1 = phi i6 [ 20, %3 ], [ %i_33, %5 ]         ; [#uses=4 type=i6]
  %tmp_24 = call i1 @_ssdm_op_BitSelect.i1.i6.i32(i6 %i_1, i32 5), !dbg !289 ; [#uses=1 type=i1] [debug line = 309:9]
  %empty_24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp_24, label %6, label %5, !dbg !289    ; [debug line = 309:9]

; <label>:5                                       ; preds = %4
  %tmp_25 = trunc i6 %i_1 to i5, !dbg !291        ; [#uses=7 type=i5] [debug line = 309:33]
  %tmp_75 = add i5 -4, %tmp_25, !dbg !291         ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp_76 = zext i5 %tmp_75 to i64, !dbg !291     ; [#uses=1 type=i64] [debug line = 309:33]
  %k_addr_24 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_76, !dbg !291 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k_load_24 = load i8* %k_addr_24, align 1, !dbg !291 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp_77 = zext i6 %i_1 to i64, !dbg !291        ; [#uses=1 type=i64] [debug line = 309:33]
  %k_addr_25 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_77, !dbg !291 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k_load_25 = load i8* %k_addr_25, align 1, !dbg !291 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp_78 = xor i8 %k_load_25, %k_load_24, !dbg !291 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp_78, i8* %k_addr_25, align 1, !dbg !291 ; [debug line = 309:33]
  %tmp_79 = add i5 -3, %tmp_25, !dbg !291         ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp_80 = zext i5 %tmp_79 to i64, !dbg !291     ; [#uses=1 type=i64] [debug line = 309:33]
  %k_addr_26 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_80, !dbg !291 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k_load_26 = load i8* %k_addr_26, align 1, !dbg !291 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp_81 = or i5 %tmp_25, 1, !dbg !291           ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp_82 = zext i5 %tmp_81 to i64, !dbg !291     ; [#uses=1 type=i64] [debug line = 309:33]
  %k_addr_27 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_82, !dbg !291 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k_load_27 = load i8* %k_addr_27, align 1, !dbg !291 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp_83 = xor i8 %k_load_27, %k_load_26, !dbg !291 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp_83, i8* %k_addr_27, align 1, !dbg !291 ; [debug line = 309:33]
  %tmp_84 = add i5 -2, %tmp_25, !dbg !291         ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp_85 = zext i5 %tmp_84 to i64, !dbg !291     ; [#uses=1 type=i64] [debug line = 309:33]
  %k_addr_28 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_85, !dbg !291 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k_load_28 = load i8* %k_addr_28, align 1, !dbg !291 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp_86 = or i5 %tmp_25, 2, !dbg !291           ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp_87 = zext i5 %tmp_86 to i64, !dbg !291     ; [#uses=1 type=i64] [debug line = 309:33]
  %k_addr_29 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_87, !dbg !291 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k_load_29 = load i8* %k_addr_29, align 1, !dbg !291 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp_88 = xor i8 %k_load_29, %k_load_28, !dbg !291 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp_88, i8* %k_addr_29, align 1, !dbg !291 ; [debug line = 309:33]
  %tmp_89 = add i5 -1, %tmp_25, !dbg !291         ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp_90 = zext i5 %tmp_89 to i64, !dbg !291     ; [#uses=1 type=i64] [debug line = 309:33]
  %k_addr_30 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_90, !dbg !291 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k_load_30 = load i8* %k_addr_30, align 1, !dbg !291 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp_91 = or i5 %tmp_25, 3, !dbg !291           ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp_92 = zext i5 %tmp_91 to i64, !dbg !291     ; [#uses=1 type=i64] [debug line = 309:33]
  %k_addr_31 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_92, !dbg !291 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k_load_31 = load i8* %k_addr_31, align 1, !dbg !291 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp_93 = xor i8 %k_load_31, %k_load_30, !dbg !291 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp_93, i8* %k_addr_31, align 1, !dbg !291 ; [debug line = 309:33]
  %i_33 = add i6 4, %i_1, !dbg !292               ; [#uses=1 type=i6] [debug line = 309:25]
  call void @llvm.dbg.value(metadata !{i6 %i_33}, i64 0, metadata !284), !dbg !292 ; [debug line = 309:25] [debug variable = i]
  br label %4, !dbg !292                          ; [debug line = 309:25]

; <label>:6                                       ; preds = %4
  ret i8 %y_20, !dbg !293                         ; [debug line = 312:1]
}

; [#uses=1]
define internal fastcc i8 @aes_expandDecKey(i8 %rc_read) {
  %rc_read_2 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %rc_read) ; [#uses=2 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %rc_read_2}, i64 0, metadata !294), !dbg !296 ; [debug line = 315:44] [debug variable = rc]
  call void @llvm.dbg.value(metadata !{i8 %rc_read}, i64 0, metadata !294), !dbg !296 ; [debug line = 315:44] [debug variable = rc]
  br label %1, !dbg !297                          ; [debug line = 319:9]

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ -4, %0 ], [ %i_31, %2 ]           ; [#uses=9 type=i5]
  %tmp = icmp ugt i5 %i, -16, !dbg !297           ; [#uses=1 type=i1] [debug line = 319:9]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp, label %2, label %3, !dbg !297       ; [debug line = 319:9]

; <label>:2                                       ; preds = %1
  %i_31 = add i5 %i, -4, !dbg !300                ; [#uses=2 type=i5] [debug line = 319:33]
  %tmp_94 = zext i5 %i_31 to i64, !dbg !300       ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx_key_addr = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_94, !dbg !300 ; [#uses=1 type=i8*] [debug line = 319:33]
  %ctx_key_load = load i8* %ctx_key_addr, align 4, !dbg !300 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp_95 = zext i5 %i to i64, !dbg !300          ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx_key_addr_1 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_95, !dbg !300 ; [#uses=2 type=i8*] [debug line = 319:33]
  %ctx_key_load_1 = load i8* %ctx_key_addr_1, align 4, !dbg !300 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp_96 = xor i8 %ctx_key_load_1, %ctx_key_load, !dbg !300 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp_96, i8* %ctx_key_addr_1, align 4, !dbg !300 ; [debug line = 319:33]
  %tmp_97 = add i5 %i, -3, !dbg !300              ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp_98 = zext i5 %tmp_97 to i64, !dbg !300     ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx_key_addr_2 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_98, !dbg !300 ; [#uses=1 type=i8*] [debug line = 319:33]
  %ctx_key_load_2 = load i8* %ctx_key_addr_2, align 1, !dbg !300 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp_99 = or i5 %i, 1, !dbg !300                ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp_100 = zext i5 %tmp_99 to i64, !dbg !300    ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx_key_addr_3 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_100, !dbg !300 ; [#uses=2 type=i8*] [debug line = 319:33]
  %ctx_key_load_3 = load i8* %ctx_key_addr_3, align 1, !dbg !300 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp_101 = xor i8 %ctx_key_load_3, %ctx_key_load_2, !dbg !300 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp_101, i8* %ctx_key_addr_3, align 1, !dbg !300 ; [debug line = 319:33]
  %tmp_102 = add i5 %i, -2, !dbg !300             ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp_103 = zext i5 %tmp_102 to i64, !dbg !300   ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx_key_addr_4 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_103, !dbg !300 ; [#uses=1 type=i8*] [debug line = 319:33]
  %ctx_key_load_4 = load i8* %ctx_key_addr_4, align 2, !dbg !300 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp_104 = or i5 %i, 2, !dbg !300               ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp_105 = zext i5 %tmp_104 to i64, !dbg !300   ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx_key_addr_5 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_105, !dbg !300 ; [#uses=2 type=i8*] [debug line = 319:33]
  %ctx_key_load_5 = load i8* %ctx_key_addr_5, align 2, !dbg !300 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp_106 = xor i8 %ctx_key_load_5, %ctx_key_load_4, !dbg !300 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp_106, i8* %ctx_key_addr_5, align 2, !dbg !300 ; [debug line = 319:33]
  %tmp_107 = add i5 %i, -1, !dbg !300             ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp_108 = zext i5 %tmp_107 to i64, !dbg !300   ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx_key_addr_6 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_108, !dbg !300 ; [#uses=1 type=i8*] [debug line = 319:33]
  %ctx_key_load_6 = load i8* %ctx_key_addr_6, align 1, !dbg !300 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp_109 = or i5 %i, 3, !dbg !300               ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp_110 = zext i5 %tmp_109 to i64, !dbg !300   ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx_key_addr_7 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_110, !dbg !300 ; [#uses=2 type=i8*] [debug line = 319:33]
  %ctx_key_load_7 = load i8* %ctx_key_addr_7, align 1, !dbg !300 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp_111 = xor i8 %ctx_key_load_7, %ctx_key_load_6, !dbg !300 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp_111, i8* %ctx_key_addr_7, align 1, !dbg !300 ; [debug line = 319:33]
  call void @llvm.dbg.value(metadata !{i5 %i_31}, i64 0, metadata !301), !dbg !302 ; [debug line = 319:25] [debug variable = i]
  br label %1, !dbg !302                          ; [debug line = 319:25]

; <label>:3                                       ; preds = %1
  %ctx_key_load_8 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 12), align 4, !dbg !303 ; [#uses=1 type=i8] [debug line = 322:5]
  %tmp_s = zext i8 %ctx_key_load_8 to i64, !dbg !303 ; [#uses=1 type=i64] [debug line = 322:5]
  %sbox_addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_s, !dbg !303 ; [#uses=1 type=i8*] [debug line = 322:5]
  %sbox_load = load i8* %sbox_addr, align 1, !dbg !303 ; [#uses=1 type=i8] [debug line = 322:5]
  %ctx_key_load_9 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 16), align 16, !dbg !303 ; [#uses=1 type=i8] [debug line = 322:5]
  %tmp_112 = xor i8 %ctx_key_load_9, %sbox_load, !dbg !303 ; [#uses=1 type=i8] [debug line = 322:5]
  store i8 %tmp_112, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 16), align 16, !dbg !303 ; [debug line = 322:5]
  %ctx_key_load_10 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 13), align 1, !dbg !304 ; [#uses=1 type=i8] [debug line = 323:5]
  %tmp_113 = zext i8 %ctx_key_load_10 to i64, !dbg !304 ; [#uses=1 type=i64] [debug line = 323:5]
  %sbox_addr_8 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_113, !dbg !304 ; [#uses=1 type=i8*] [debug line = 323:5]
  %sbox_load_8 = load i8* %sbox_addr_8, align 1, !dbg !304 ; [#uses=1 type=i8] [debug line = 323:5]
  %ctx_key_load_11 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 17), align 1, !dbg !304 ; [#uses=1 type=i8] [debug line = 323:5]
  %tmp_114 = xor i8 %ctx_key_load_11, %sbox_load_8, !dbg !304 ; [#uses=1 type=i8] [debug line = 323:5]
  store i8 %tmp_114, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 17), align 1, !dbg !304 ; [debug line = 323:5]
  %ctx_key_load_12 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 14), align 2, !dbg !305 ; [#uses=1 type=i8] [debug line = 324:5]
  %tmp_115 = zext i8 %ctx_key_load_12 to i64, !dbg !305 ; [#uses=1 type=i64] [debug line = 324:5]
  %sbox_addr_9 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_115, !dbg !305 ; [#uses=1 type=i8*] [debug line = 324:5]
  %sbox_load_9 = load i8* %sbox_addr_9, align 1, !dbg !305 ; [#uses=1 type=i8] [debug line = 324:5]
  %ctx_key_load_13 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 18), align 2, !dbg !305 ; [#uses=1 type=i8] [debug line = 324:5]
  %tmp_116 = xor i8 %ctx_key_load_13, %sbox_load_9, !dbg !305 ; [#uses=1 type=i8] [debug line = 324:5]
  store i8 %tmp_116, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 18), align 2, !dbg !305 ; [debug line = 324:5]
  %ctx_key_load_14 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 15), align 1, !dbg !306 ; [#uses=1 type=i8] [debug line = 325:5]
  %tmp_117 = zext i8 %ctx_key_load_14 to i64, !dbg !306 ; [#uses=1 type=i64] [debug line = 325:5]
  %sbox_addr_10 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_117, !dbg !306 ; [#uses=1 type=i8*] [debug line = 325:5]
  %sbox_load_10 = load i8* %sbox_addr_10, align 1, !dbg !306 ; [#uses=1 type=i8] [debug line = 325:5]
  %ctx_key_load_15 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 19), align 1, !dbg !306 ; [#uses=1 type=i8] [debug line = 325:5]
  %tmp_118 = xor i8 %ctx_key_load_15, %sbox_load_10, !dbg !306 ; [#uses=1 type=i8] [debug line = 325:5]
  store i8 %tmp_118, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 19), align 1, !dbg !306 ; [debug line = 325:5]
  br label %4, !dbg !307                          ; [debug line = 327:9]

; <label>:4                                       ; preds = %5, %3
  %i_1 = phi i4 [ -4, %3 ], [ %i_s, %5 ]          ; [#uses=8 type=i4]
  %tmp_119 = icmp eq i4 %i_1, 0, !dbg !307        ; [#uses=1 type=i1] [debug line = 327:9]
  %empty_25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp_119, label %6, label %5, !dbg !307   ; [debug line = 327:9]

; <label>:5                                       ; preds = %4
  %tmp_154_cast = zext i4 %i_1 to i5, !dbg !309   ; [#uses=3 type=i5] [debug line = 327:32]
  %tmp_130 = add i5 %tmp_154_cast, -4, !dbg !309  ; [#uses=1 type=i5] [debug line = 327:32]
  %tmp_131 = sext i5 %tmp_130 to i64, !dbg !309   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx_key_addr_8 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_131, !dbg !309 ; [#uses=1 type=i8*] [debug line = 327:32]
  %ctx_key_load_24 = load i8* %ctx_key_addr_8, align 4, !dbg !309 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp_132 = zext i4 %i_1 to i64, !dbg !309       ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx_key_addr_9 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_132, !dbg !309 ; [#uses=2 type=i8*] [debug line = 327:32]
  %ctx_key_load_25 = load i8* %ctx_key_addr_9, align 4, !dbg !309 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp_133 = xor i8 %ctx_key_load_25, %ctx_key_load_24, !dbg !309 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp_133, i8* %ctx_key_addr_9, align 4, !dbg !309 ; [debug line = 327:32]
  %tmp_134 = add i5 %tmp_154_cast, -3, !dbg !309  ; [#uses=1 type=i5] [debug line = 327:32]
  %tmp_135 = sext i5 %tmp_134 to i64, !dbg !309   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx_key_addr_10 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_135, !dbg !309 ; [#uses=1 type=i8*] [debug line = 327:32]
  %ctx_key_load_26 = load i8* %ctx_key_addr_10, align 1, !dbg !309 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp_136 = or i4 %i_1, 1, !dbg !309             ; [#uses=1 type=i4] [debug line = 327:32]
  %tmp_137 = zext i4 %tmp_136 to i64, !dbg !309   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx_key_addr_11 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_137, !dbg !309 ; [#uses=2 type=i8*] [debug line = 327:32]
  %ctx_key_load_27 = load i8* %ctx_key_addr_11, align 1, !dbg !309 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp_138 = xor i8 %ctx_key_load_27, %ctx_key_load_26, !dbg !309 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp_138, i8* %ctx_key_addr_11, align 1, !dbg !309 ; [debug line = 327:32]
  %tmp_139 = add i5 %tmp_154_cast, -2, !dbg !309  ; [#uses=1 type=i5] [debug line = 327:32]
  %tmp_140 = sext i5 %tmp_139 to i64, !dbg !309   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx_key_addr_12 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_140, !dbg !309 ; [#uses=1 type=i8*] [debug line = 327:32]
  %ctx_key_load_28 = load i8* %ctx_key_addr_12, align 2, !dbg !309 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp_141 = or i4 %i_1, 2, !dbg !309             ; [#uses=1 type=i4] [debug line = 327:32]
  %tmp_142 = zext i4 %tmp_141 to i64, !dbg !309   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx_key_addr_13 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_142, !dbg !309 ; [#uses=2 type=i8*] [debug line = 327:32]
  %ctx_key_load_29 = load i8* %ctx_key_addr_13, align 2, !dbg !309 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp_143 = xor i8 %ctx_key_load_29, %ctx_key_load_28, !dbg !309 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp_143, i8* %ctx_key_addr_13, align 2, !dbg !309 ; [debug line = 327:32]
  %tmp_144 = add i4 %i_1, -1, !dbg !309           ; [#uses=1 type=i4] [debug line = 327:32]
  %tmp_145 = zext i4 %tmp_144 to i64, !dbg !309   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx_key_addr_14 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_145, !dbg !309 ; [#uses=1 type=i8*] [debug line = 327:32]
  %ctx_key_load_30 = load i8* %ctx_key_addr_14, align 1, !dbg !309 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp_146 = or i4 %i_1, 3, !dbg !309             ; [#uses=1 type=i4] [debug line = 327:32]
  %tmp_147 = zext i4 %tmp_146 to i64, !dbg !309   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx_key_addr_15 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_147, !dbg !309 ; [#uses=2 type=i8*] [debug line = 327:32]
  %ctx_key_load_31 = load i8* %ctx_key_addr_15, align 1, !dbg !309 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp_148 = xor i8 %ctx_key_load_31, %ctx_key_load_30, !dbg !309 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp_148, i8* %ctx_key_addr_15, align 1, !dbg !309 ; [debug line = 327:32]
  %i_s = add i4 %i_1, -4, !dbg !310               ; [#uses=1 type=i4] [debug line = 327:24]
  br label %4, !dbg !310                          ; [debug line = 327:24]

; <label>:6                                       ; preds = %4
  %tmp_120 = call i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8 %rc_read_2, i32 1, i32 7), !dbg !311 ; [#uses=1 type=i7] [debug line = 330:5]
  %tmp_11 = zext i7 %tmp_120 to i8, !dbg !311     ; [#uses=1 type=i8] [debug line = 330:5]
  %tmp_26 = trunc i8 %rc_read_2 to i1, !dbg !311  ; [#uses=1 type=i1] [debug line = 330:5]
  %tmp_121 = select i1 %tmp_26, i8 -115, i8 0, !dbg !311 ; [#uses=1 type=i8] [debug line = 330:5]
  %rc_write_assign = xor i8 %tmp_121, %tmp_11, !dbg !311 ; [#uses=2 type=i8] [debug line = 330:5]
  %ctx_key_load_16 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 29), align 1, !dbg !312 ; [#uses=1 type=i8] [debug line = 331:5]
  %tmp_122 = zext i8 %ctx_key_load_16 to i64, !dbg !312 ; [#uses=1 type=i64] [debug line = 331:5]
  %sbox_addr_11 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_122, !dbg !312 ; [#uses=1 type=i8*] [debug line = 331:5]
  %sbox_load_11 = load i8* %sbox_addr_11, align 1, !dbg !312 ; [#uses=1 type=i8] [debug line = 331:5]
  %ctx_key_load_17 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 0), align 16, !dbg !312 ; [#uses=1 type=i8] [debug line = 331:5]
  %tmp1 = xor i8 %ctx_key_load_17, %rc_write_assign, !dbg !312 ; [#uses=1 type=i8] [debug line = 331:5]
  %tmp_123 = xor i8 %tmp1, %sbox_load_11, !dbg !312 ; [#uses=1 type=i8] [debug line = 331:5]
  store i8 %tmp_123, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 0), align 16, !dbg !312 ; [debug line = 331:5]
  %ctx_key_load_18 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 30), align 2, !dbg !313 ; [#uses=1 type=i8] [debug line = 332:5]
  %tmp_124 = zext i8 %ctx_key_load_18 to i64, !dbg !313 ; [#uses=1 type=i64] [debug line = 332:5]
  %sbox_addr_12 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_124, !dbg !313 ; [#uses=1 type=i8*] [debug line = 332:5]
  %sbox_load_12 = load i8* %sbox_addr_12, align 1, !dbg !313 ; [#uses=1 type=i8] [debug line = 332:5]
  %ctx_key_load_19 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 1), align 1, !dbg !313 ; [#uses=1 type=i8] [debug line = 332:5]
  %tmp_125 = xor i8 %ctx_key_load_19, %sbox_load_12, !dbg !313 ; [#uses=1 type=i8] [debug line = 332:5]
  store i8 %tmp_125, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 1), align 1, !dbg !313 ; [debug line = 332:5]
  %ctx_key_load_20 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 31), align 1, !dbg !314 ; [#uses=1 type=i8] [debug line = 333:5]
  %tmp_126 = zext i8 %ctx_key_load_20 to i64, !dbg !314 ; [#uses=1 type=i64] [debug line = 333:5]
  %sbox_addr_13 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_126, !dbg !314 ; [#uses=1 type=i8*] [debug line = 333:5]
  %sbox_load_13 = load i8* %sbox_addr_13, align 1, !dbg !314 ; [#uses=1 type=i8] [debug line = 333:5]
  %ctx_key_load_21 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 2), align 2, !dbg !314 ; [#uses=1 type=i8] [debug line = 333:5]
  %tmp_127 = xor i8 %ctx_key_load_21, %sbox_load_13, !dbg !314 ; [#uses=1 type=i8] [debug line = 333:5]
  store i8 %tmp_127, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 2), align 2, !dbg !314 ; [debug line = 333:5]
  %ctx_key_load_22 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 28), align 4, !dbg !315 ; [#uses=1 type=i8] [debug line = 334:5]
  %tmp_128 = zext i8 %ctx_key_load_22 to i64, !dbg !315 ; [#uses=1 type=i64] [debug line = 334:5]
  %sbox_addr_14 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_128, !dbg !315 ; [#uses=1 type=i8*] [debug line = 334:5]
  %sbox_load_14 = load i8* %sbox_addr_14, align 1, !dbg !315 ; [#uses=1 type=i8] [debug line = 334:5]
  %ctx_key_load_23 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 3), align 1, !dbg !315 ; [#uses=1 type=i8] [debug line = 334:5]
  %tmp_129 = xor i8 %ctx_key_load_23, %sbox_load_14, !dbg !315 ; [#uses=1 type=i8] [debug line = 334:5]
  store i8 %tmp_129, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 3), align 1, !dbg !315 ; [debug line = 334:5]
  call void @llvm.dbg.value(metadata !{i8 %rc_write_assign}, i64 0, metadata !316), !dbg !296 ; [debug line = 315:44] [debug variable = rc]
  ret i8 %rc_write_assign, !dbg !317              ; [debug line = 335:1]
}

; [#uses=1]
define internal fastcc void @aes_encrypt_ecb([16 x i8]* nocapture %buf) {
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !318), !dbg !320 ; [debug line = 358:49] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !321), !dbg !327 ; [debug line = 218:42@362:5] [debug variable = buf]
  br label %1, !dbg !328                          ; [debug line = 222:5@362:5]

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i5 [ -16, %0 ], [ %i_34, %2 ]        ; [#uses=3 type=i5]
  %i_34 = add i5 %i_i, -1, !dbg !328              ; [#uses=2 type=i5] [debug line = 222:5@362:5]
  %i_36_cast = sext i5 %i_34 to i8, !dbg !328     ; [#uses=1 type=i8] [debug line = 222:5@362:5]
  call void @llvm.dbg.value(metadata !{i5 %i_34}, i64 0, metadata !330), !dbg !328 ; [debug line = 222:5@362:5] [debug variable = i]
  %tmp_i = icmp eq i5 %i_i, 0, !dbg !328          ; [#uses=1 type=i1] [debug line = 222:5@362:5]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp_i, label %aes_addRoundKey_cpy.exit.preheader, label %2, !dbg !328 ; [debug line = 222:5@362:5]

aes_addRoundKey_cpy.exit.preheader:               ; preds = %1
  %rcon = alloca i8                               ; [#uses=4 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %rcon}, metadata !331) ; [debug variable = rcon]
  %buf_addr = getelementptr [16 x i8]* %buf, i64 0, i64 1, !dbg !332 ; [#uses=4 type=i8*] [debug line = 231:5@366:9]
  %buf_addr_11 = getelementptr [16 x i8]* %buf, i64 0, i64 5, !dbg !332 ; [#uses=4 type=i8*] [debug line = 231:5@366:9]
  %buf_addr_12 = getelementptr [16 x i8]* %buf, i64 0, i64 9, !dbg !332 ; [#uses=4 type=i8*] [debug line = 231:5@366:9]
  %buf_addr_13 = getelementptr [16 x i8]* %buf, i64 0, i64 13, !dbg !332 ; [#uses=4 type=i8*] [debug line = 231:5@366:9]
  %buf_addr_14 = getelementptr [16 x i8]* %buf, i64 0, i64 10, !dbg !338 ; [#uses=4 type=i8*] [debug line = 232:5@366:9]
  %buf_addr_15 = getelementptr [16 x i8]* %buf, i64 0, i64 2, !dbg !338 ; [#uses=4 type=i8*] [debug line = 232:5@366:9]
  %buf_addr_16 = getelementptr [16 x i8]* %buf, i64 0, i64 3, !dbg !339 ; [#uses=4 type=i8*] [debug line = 233:5@366:9]
  %buf_addr_17 = getelementptr [16 x i8]* %buf, i64 0, i64 15, !dbg !339 ; [#uses=4 type=i8*] [debug line = 233:5@366:9]
  %buf_addr_18 = getelementptr [16 x i8]* %buf, i64 0, i64 11, !dbg !339 ; [#uses=4 type=i8*] [debug line = 233:5@366:9]
  %buf_addr_19 = getelementptr [16 x i8]* %buf, i64 0, i64 7, !dbg !339 ; [#uses=4 type=i8*] [debug line = 233:5@366:9]
  %buf_addr_20 = getelementptr [16 x i8]* %buf, i64 0, i64 14, !dbg !340 ; [#uses=4 type=i8*] [debug line = 234:5@366:9]
  %buf_addr_21 = getelementptr [16 x i8]* %buf, i64 0, i64 6, !dbg !340 ; [#uses=4 type=i8*] [debug line = 234:5@366:9]
  store i8 1, i8* %rcon
  br label %aes_addRoundKey_cpy.exit, !dbg !341   ; [debug line = 363:9]

; <label>:2                                       ; preds = %1
  %tmp_i_26 = zext i8 %i_36_cast to i64, !dbg !342 ; [#uses=3 type=i64] [debug line = 222:17@362:5]
  %ctx_enckey_addr = getelementptr [32 x i8]* @ctx_enckey, i64 0, i64 %tmp_i_26, !dbg !342 ; [#uses=1 type=i8*] [debug line = 222:17@362:5]
  %ctx_enckey_load = load i8* %ctx_enckey_addr, align 1, !dbg !342 ; [#uses=2 type=i8] [debug line = 222:17@362:5]
  %ctx_key_addr = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_i_26, !dbg !342 ; [#uses=1 type=i8*] [debug line = 222:17@362:5]
  store i8 %ctx_enckey_load, i8* %ctx_key_addr, align 1, !dbg !342 ; [debug line = 222:17@362:5]
  %buf_addr_22 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_i_26, !dbg !342 ; [#uses=2 type=i8*] [debug line = 222:17@362:5]
  %buf_load = load i8* %buf_addr_22, align 1, !dbg !342 ; [#uses=1 type=i8] [debug line = 222:17@362:5]
  %tmp_211_i = xor i8 %buf_load, %ctx_enckey_load, !dbg !342 ; [#uses=1 type=i8] [debug line = 222:17@362:5]
  store i8 %tmp_211_i, i8* %buf_addr_22, align 1, !dbg !342 ; [debug line = 222:17@362:5]
  %tmp_213_i = add i5 %i_i, 15, !dbg !342         ; [#uses=1 type=i5] [debug line = 222:17@362:5]
  %tmp_214_i = zext i5 %tmp_213_i to i64, !dbg !342 ; [#uses=2 type=i64] [debug line = 222:17@362:5]
  %ctx_enckey_addr_1 = getelementptr [32 x i8]* @ctx_enckey, i64 0, i64 %tmp_214_i, !dbg !342 ; [#uses=1 type=i8*] [debug line = 222:17@362:5]
  %ctx_enckey_load_1 = load i8* %ctx_enckey_addr_1, align 1, !dbg !342 ; [#uses=1 type=i8] [debug line = 222:17@362:5]
  %ctx_key_addr_16 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_214_i, !dbg !342 ; [#uses=1 type=i8*] [debug line = 222:17@362:5]
  store i8 %ctx_enckey_load_1, i8* %ctx_key_addr_16, align 1, !dbg !342 ; [debug line = 222:17@362:5]
  br label %1, !dbg !342                          ; [debug line = 222:17@362:5]

aes_addRoundKey_cpy.exit:                         ; preds = %8, %aes_addRoundKey_cpy.exit.preheader
  %i = phi i4 [ %i_42, %8 ], [ 1, %aes_addRoundKey_cpy.exit.preheader ] ; [#uses=3 type=i4]
  %exitcond = icmp eq i4 %i, -2, !dbg !341        ; [#uses=1 type=i1] [debug line = 363:9]
  %empty_27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 13, i64 13, i64 13) ; [#uses=0 type=i32]
  br i1 %exitcond, label %.preheader.preheader, label %.preheader50.preheader, !dbg !341 ; [debug line = 363:9]

.preheader50.preheader:                           ; preds = %aes_addRoundKey_cpy.exit
  br label %.preheader50, !dbg !343               ; [debug line = 198:5@365:9]

.preheader.preheader:                             ; preds = %aes_addRoundKey_cpy.exit
  br label %.preheader, !dbg !347                 ; [debug line = 198:5@371:5]

.preheader50:                                     ; preds = %3, %.preheader50.preheader
  %i_i4 = phi i5 [ %i_36, %3 ], [ -16, %.preheader50.preheader ] ; [#uses=2 type=i5]
  %i_36 = add i5 %i_i4, -1, !dbg !343             ; [#uses=2 type=i5] [debug line = 198:5@365:9]
  %i_38_cast = sext i5 %i_36 to i8, !dbg !343     ; [#uses=1 type=i8] [debug line = 198:5@365:9]
  call void @llvm.dbg.value(metadata !{i5 %i_36}, i64 0, metadata !349), !dbg !343 ; [debug line = 198:5@365:9] [debug variable = i]
  %tmp_i5 = icmp eq i5 %i_i4, 0, !dbg !343        ; [#uses=1 type=i1] [debug line = 198:5@365:9]
  %empty_28 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp_i5, label %aes_subBytes.exit, label %3, !dbg !343 ; [debug line = 198:5@365:9]

; <label>:3                                       ; preds = %.preheader50
  %tmp_i6 = zext i8 %i_38_cast to i64, !dbg !350  ; [#uses=1 type=i64] [debug line = 198:17@365:9]
  %buf_addr_24 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_i6, !dbg !350 ; [#uses=2 type=i8*] [debug line = 198:17@365:9]
  %buf_load_31 = load i8* %buf_addr_24, align 1, !dbg !350 ; [#uses=1 type=i8] [debug line = 198:17@365:9]
  %tmp_33_i = zext i8 %buf_load_31 to i64, !dbg !350 ; [#uses=1 type=i64] [debug line = 198:17@365:9]
  %sbox_addr_15 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_33_i, !dbg !350 ; [#uses=1 type=i8*] [debug line = 198:17@365:9]
  %sbox_load_15 = load i8* %sbox_addr_15, align 1, !dbg !350 ; [#uses=1 type=i8] [debug line = 198:17@365:9]
  store i8 %sbox_load_15, i8* %buf_addr_24, align 1, !dbg !350 ; [debug line = 198:17@365:9]
  br label %.preheader50, !dbg !350               ; [debug line = 198:17@365:9]

aes_subBytes.exit:                                ; preds = %.preheader50
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !351), !dbg !352 ; [debug line = 227:36@366:9] [debug variable = buf]
  %i_39 = load i8* %buf_addr, align 1, !dbg !332  ; [#uses=1 type=i8] [debug line = 231:5@366:9]
  call void @llvm.dbg.value(metadata !{i8 %i_39}, i64 0, metadata !353), !dbg !332 ; [debug line = 231:5@366:9] [debug variable = i]
  %buf_load_20 = load i8* %buf_addr_11, align 1, !dbg !332 ; [#uses=1 type=i8] [debug line = 231:5@366:9]
  store i8 %buf_load_20, i8* %buf_addr, align 1, !dbg !332 ; [debug line = 231:5@366:9]
  %buf_load_21 = load i8* %buf_addr_12, align 1, !dbg !332 ; [#uses=1 type=i8] [debug line = 231:5@366:9]
  store i8 %buf_load_21, i8* %buf_addr_11, align 1, !dbg !332 ; [debug line = 231:5@366:9]
  %buf_load_22 = load i8* %buf_addr_13, align 1, !dbg !332 ; [#uses=1 type=i8] [debug line = 231:5@366:9]
  store i8 %buf_load_22, i8* %buf_addr_12, align 1, !dbg !332 ; [debug line = 231:5@366:9]
  store i8 %i_39, i8* %buf_addr_13, align 1, !dbg !332 ; [debug line = 231:5@366:9]
  %i_40 = load i8* %buf_addr_14, align 1, !dbg !338 ; [#uses=1 type=i8] [debug line = 232:5@366:9]
  call void @llvm.dbg.value(metadata !{i8 %i_40}, i64 0, metadata !353), !dbg !338 ; [debug line = 232:5@366:9] [debug variable = i]
  %buf_load_24 = load i8* %buf_addr_15, align 1, !dbg !338 ; [#uses=1 type=i8] [debug line = 232:5@366:9]
  store i8 %buf_load_24, i8* %buf_addr_14, align 1, !dbg !338 ; [debug line = 232:5@366:9]
  store i8 %i_40, i8* %buf_addr_15, align 1, !dbg !338 ; [debug line = 232:5@366:9]
  %j_2 = load i8* %buf_addr_16, align 1, !dbg !339 ; [#uses=1 type=i8] [debug line = 233:5@366:9]
  call void @llvm.dbg.value(metadata !{i8 %j_2}, i64 0, metadata !354), !dbg !339 ; [debug line = 233:5@366:9] [debug variable = j]
  %buf_load_26 = load i8* %buf_addr_17, align 1, !dbg !339 ; [#uses=1 type=i8] [debug line = 233:5@366:9]
  store i8 %buf_load_26, i8* %buf_addr_16, align 1, !dbg !339 ; [debug line = 233:5@366:9]
  %buf_load_27 = load i8* %buf_addr_18, align 1, !dbg !339 ; [#uses=1 type=i8] [debug line = 233:5@366:9]
  store i8 %buf_load_27, i8* %buf_addr_17, align 1, !dbg !339 ; [debug line = 233:5@366:9]
  %buf_load_28 = load i8* %buf_addr_19, align 1, !dbg !339 ; [#uses=1 type=i8] [debug line = 233:5@366:9]
  store i8 %buf_load_28, i8* %buf_addr_18, align 1, !dbg !339 ; [debug line = 233:5@366:9]
  store i8 %j_2, i8* %buf_addr_19, align 1, !dbg !339 ; [debug line = 233:5@366:9]
  %j_3 = load i8* %buf_addr_20, align 1, !dbg !340 ; [#uses=1 type=i8] [debug line = 234:5@366:9]
  call void @llvm.dbg.value(metadata !{i8 %j_3}, i64 0, metadata !354), !dbg !340 ; [debug line = 234:5@366:9] [debug variable = j]
  %buf_load_30 = load i8* %buf_addr_21, align 1, !dbg !340 ; [#uses=1 type=i8] [debug line = 234:5@366:9]
  store i8 %buf_load_30, i8* %buf_addr_20, align 1, !dbg !340 ; [debug line = 234:5@366:9]
  store i8 %j_3, i8* %buf_addr_21, align 1, !dbg !340 ; [debug line = 234:5@366:9]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !355), !dbg !358 ; [debug line = 251:37@367:9] [debug variable = buf]
  br label %4, !dbg !359                          ; [debug line = 255:10@367:9]

; <label>:4                                       ; preds = %5, %aes_subBytes.exit
  %i_i2 = phi i5 [ 0, %aes_subBytes.exit ], [ %i_41, %5 ] ; [#uses=4 type=i5]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i_i2, i32 4), !dbg !359 ; [#uses=1 type=i1] [debug line = 255:10@367:9]
  %empty_29 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %tmp, label %aes_mixColumns.exit, label %5, !dbg !359 ; [debug line = 255:10@367:9]

; <label>:5                                       ; preds = %4
  %tmp_i2 = zext i5 %i_i2 to i64, !dbg !362       ; [#uses=1 type=i64] [debug line = 257:9@367:9]
  %buf_addr_25 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_i2, !dbg !362 ; [#uses=2 type=i8*] [debug line = 257:9@367:9]
  %a = load i8* %buf_addr_25, align 1, !dbg !362  ; [#uses=3 type=i8] [debug line = 257:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %a}, i64 0, metadata !364), !dbg !362 ; [debug line = 257:9@367:9] [debug variable = a]
  %tmp_28 = trunc i5 %i_i2 to i4, !dbg !365       ; [#uses=3 type=i4] [debug line = 258:9@367:9]
  %tmp_67_i = or i4 %tmp_28, 1, !dbg !365         ; [#uses=1 type=i4] [debug line = 258:9@367:9]
  %tmp_68_i = zext i4 %tmp_67_i to i64, !dbg !365 ; [#uses=1 type=i64] [debug line = 258:9@367:9]
  %buf_addr_26 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_68_i, !dbg !365 ; [#uses=2 type=i8*] [debug line = 258:9@367:9]
  %b = load i8* %buf_addr_26, align 1, !dbg !365  ; [#uses=3 type=i8] [debug line = 258:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !366), !dbg !365 ; [debug line = 258:9@367:9] [debug variable = b]
  %tmp_69_i = or i4 %tmp_28, 2, !dbg !367         ; [#uses=1 type=i4] [debug line = 259:9@367:9]
  %tmp_70_i = zext i4 %tmp_69_i to i64, !dbg !367 ; [#uses=1 type=i64] [debug line = 259:9@367:9]
  %buf_addr_27 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_70_i, !dbg !367 ; [#uses=2 type=i8*] [debug line = 259:9@367:9]
  %c = load i8* %buf_addr_27, align 1, !dbg !367  ; [#uses=4 type=i8] [debug line = 259:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %c}, i64 0, metadata !368), !dbg !367 ; [debug line = 259:9@367:9] [debug variable = c]
  %tmp_71_i = or i4 %tmp_28, 3, !dbg !369         ; [#uses=1 type=i4] [debug line = 260:9@367:9]
  %tmp_72_i = zext i4 %tmp_71_i to i64, !dbg !369 ; [#uses=1 type=i64] [debug line = 260:9@367:9]
  %buf_addr_28 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_72_i, !dbg !369 ; [#uses=2 type=i8*] [debug line = 260:9@367:9]
  %d = load i8* %buf_addr_28, align 1, !dbg !369  ; [#uses=3 type=i8] [debug line = 260:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %d}, i64 0, metadata !370), !dbg !369 ; [debug line = 260:9@367:9] [debug variable = d]
  %x_assign = xor i8 %b, %a, !dbg !371            ; [#uses=3 type=i8] [debug line = 261:9@367:9]
  %tmp_74_i = xor i8 %c, %x_assign, !dbg !371     ; [#uses=2 type=i8] [debug line = 261:9@367:9]
  %e = xor i8 %d, %tmp_74_i, !dbg !371            ; [#uses=3 type=i8] [debug line = 261:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !372), !dbg !371 ; [debug line = 261:9@367:9] [debug variable = e]
  call void @llvm.dbg.value(metadata !{i8 %x_assign}, i64 0, metadata !373), !dbg !375 ; [debug line = 187:33@262:23@367:9] [debug variable = x]
  %y = shl i8 %x_assign, 1, !dbg !376             ; [#uses=2 type=i8] [debug line = 189:34@262:23@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !377), !dbg !376 ; [debug line = 189:34@262:23@367:9] [debug variable = y]
  %tmp_30 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign, i32 7), !dbg !378 ; [#uses=1 type=i1] [debug line = 190:5@262:23@367:9]
  %tmp_1_i_i = xor i8 %y, 27, !dbg !378           ; [#uses=1 type=i8] [debug line = 190:5@262:23@367:9]
  %y_21 = select i1 %tmp_30, i8 %tmp_1_i_i, i8 %y, !dbg !378 ; [#uses=1 type=i8] [debug line = 190:5@262:23@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y_21}, i64 0, metadata !377), !dbg !378 ; [debug line = 190:5@262:23@367:9] [debug variable = y]
  %tmp1 = xor i8 %y_21, %e, !dbg !374             ; [#uses=1 type=i8] [debug line = 262:23@367:9]
  %tmp_77_i = xor i8 %tmp1, %a, !dbg !374         ; [#uses=1 type=i8] [debug line = 262:23@367:9]
  store i8 %tmp_77_i, i8* %buf_addr_25, align 1, !dbg !374 ; [debug line = 262:23@367:9]
  %x_assign_9 = xor i8 %c, %b, !dbg !379          ; [#uses=2 type=i8] [debug line = 263:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_9}, i64 0, metadata !380), !dbg !381 ; [debug line = 187:33@263:27@367:9] [debug variable = x]
  %y_22 = shl i8 %x_assign_9, 1, !dbg !382        ; [#uses=2 type=i8] [debug line = 189:34@263:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y_22}, i64 0, metadata !383), !dbg !382 ; [debug line = 189:34@263:27@367:9] [debug variable = y]
  %tmp_32 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_9, i32 7), !dbg !384 ; [#uses=1 type=i1] [debug line = 190:5@263:27@367:9]
  %tmp_1_i10_i = xor i8 %y_22, 27, !dbg !384      ; [#uses=1 type=i8] [debug line = 190:5@263:27@367:9]
  %y_23 = select i1 %tmp_32, i8 %tmp_1_i10_i, i8 %y_22, !dbg !384 ; [#uses=1 type=i8] [debug line = 190:5@263:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y_23}, i64 0, metadata !383), !dbg !384 ; [debug line = 190:5@263:27@367:9] [debug variable = y]
  %tmp2 = xor i8 %y_23, %e, !dbg !379             ; [#uses=1 type=i8] [debug line = 263:27@367:9]
  %tmp_81_i = xor i8 %tmp2, %b, !dbg !379         ; [#uses=1 type=i8] [debug line = 263:27@367:9]
  store i8 %tmp_81_i, i8* %buf_addr_26, align 1, !dbg !379 ; [debug line = 263:27@367:9]
  %x_assign_s = xor i8 %d, %c, !dbg !385          ; [#uses=2 type=i8] [debug line = 264:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_s}, i64 0, metadata !386), !dbg !387 ; [debug line = 187:33@264:27@367:9] [debug variable = x]
  %y_24 = shl i8 %x_assign_s, 1, !dbg !388        ; [#uses=2 type=i8] [debug line = 189:34@264:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y_24}, i64 0, metadata !389), !dbg !388 ; [debug line = 189:34@264:27@367:9] [debug variable = y]
  %tmp_34 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_s, i32 7), !dbg !390 ; [#uses=1 type=i1] [debug line = 190:5@264:27@367:9]
  %tmp_1_i14_i = xor i8 %y_24, 27, !dbg !390      ; [#uses=1 type=i8] [debug line = 190:5@264:27@367:9]
  %y_25 = select i1 %tmp_34, i8 %tmp_1_i14_i, i8 %y_24, !dbg !390 ; [#uses=1 type=i8] [debug line = 190:5@264:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y_25}, i64 0, metadata !389), !dbg !390 ; [debug line = 190:5@264:27@367:9] [debug variable = y]
  %tmp3 = xor i8 %y_25, %e, !dbg !385             ; [#uses=1 type=i8] [debug line = 264:27@367:9]
  %tmp_85_i = xor i8 %tmp3, %c, !dbg !385         ; [#uses=1 type=i8] [debug line = 264:27@367:9]
  store i8 %tmp_85_i, i8* %buf_addr_27, align 1, !dbg !385 ; [debug line = 264:27@367:9]
  %x_assign_1 = xor i8 %d, %a, !dbg !391          ; [#uses=2 type=i8] [debug line = 265:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_1}, i64 0, metadata !392), !dbg !393 ; [debug line = 187:33@265:27@367:9] [debug variable = x]
  %y_26 = shl i8 %x_assign_1, 1, !dbg !394        ; [#uses=2 type=i8] [debug line = 189:34@265:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y_26}, i64 0, metadata !395), !dbg !394 ; [debug line = 189:34@265:27@367:9] [debug variable = y]
  %tmp_36 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1, i32 7), !dbg !396 ; [#uses=1 type=i1] [debug line = 190:5@265:27@367:9]
  %tmp_1_i18_i = xor i8 %y_26, 27, !dbg !396      ; [#uses=1 type=i8] [debug line = 190:5@265:27@367:9]
  %y_27 = select i1 %tmp_36, i8 %tmp_1_i18_i, i8 %y_26, !dbg !396 ; [#uses=1 type=i8] [debug line = 190:5@265:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y_27}, i64 0, metadata !395), !dbg !396 ; [debug line = 190:5@265:27@367:9] [debug variable = y]
  %tmp_89_i = xor i8 %y_27, %tmp_74_i, !dbg !391  ; [#uses=1 type=i8] [debug line = 265:27@367:9]
  store i8 %tmp_89_i, i8* %buf_addr_28, align 1, !dbg !391 ; [debug line = 265:27@367:9]
  %i_41 = add i5 4, %i_i2, !dbg !397              ; [#uses=1 type=i5] [debug line = 255:25@367:9]
  call void @llvm.dbg.value(metadata !{i5 %i_41}, i64 0, metadata !398), !dbg !397 ; [debug line = 255:25@367:9] [debug variable = i]
  br label %4, !dbg !397                          ; [debug line = 255:25@367:9]

aes_mixColumns.exit:                              ; preds = %4
  %tmp_27 = trunc i4 %i to i1, !dbg !341          ; [#uses=1 type=i1] [debug line = 363:9]
  br i1 %tmp_27, label %6, label %7, !dbg !399    ; [debug line = 368:9]

; <label>:6                                       ; preds = %aes_mixColumns.exit
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx_key, i6 16), !dbg !400 ; [debug line = 368:21]
  br label %8, !dbg !400                          ; [debug line = 368:21]

; <label>:7                                       ; preds = %aes_mixColumns.exit
  %rcon_load_1 = load i8* %rcon, !dbg !401        ; [#uses=1 type=i8] [debug line = 369:14]
  %rcon_1 = call fastcc i8 @aes_expandEncKey([32 x i8]* @ctx_key, i8 %rcon_load_1), !dbg !401 ; [#uses=1 type=i8] [debug line = 369:14]
  call void @llvm.dbg.value(metadata !{i8 %rcon_1}, i64 0, metadata !331), !dbg !401 ; [debug line = 369:14] [debug variable = rcon]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx_key, i6 0), !dbg !402 ; [debug line = 369:49]
  store i8 %rcon_1, i8* %rcon, !dbg !401          ; [debug line = 369:14]
  br label %8

; <label>:8                                       ; preds = %7, %6
  %i_42 = add i4 %i, 1, !dbg !403                 ; [#uses=1 type=i4] [debug line = 363:34]
  call void @llvm.dbg.value(metadata !{i4 %i_42}, i64 0, metadata !404), !dbg !403 ; [debug line = 363:34] [debug variable = i]
  br label %aes_addRoundKey_cpy.exit, !dbg !403   ; [debug line = 363:34]

.preheader:                                       ; preds = %9, %.preheader.preheader
  %i_i1 = phi i5 [ %i_35, %9 ], [ -16, %.preheader.preheader ] ; [#uses=2 type=i5]
  %i_35 = add i5 %i_i1, -1, !dbg !347             ; [#uses=2 type=i5] [debug line = 198:5@371:5]
  %i_37_cast = sext i5 %i_35 to i8, !dbg !347     ; [#uses=1 type=i8] [debug line = 198:5@371:5]
  call void @llvm.dbg.value(metadata !{i5 %i_35}, i64 0, metadata !405), !dbg !347 ; [debug line = 198:5@371:5] [debug variable = i]
  %tmp_i8 = icmp eq i5 %i_i1, 0, !dbg !347        ; [#uses=1 type=i1] [debug line = 198:5@371:5]
  %empty_30 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp_i8, label %aes_subBytes.exit25, label %9, !dbg !347 ; [debug line = 198:5@371:5]

; <label>:9                                       ; preds = %.preheader
  %tmp_i1 = zext i8 %i_37_cast to i64, !dbg !406  ; [#uses=1 type=i64] [debug line = 198:17@371:5]
  %buf_addr_23 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_i1, !dbg !406 ; [#uses=2 type=i8*] [debug line = 198:17@371:5]
  %buf_load_18 = load i8* %buf_addr_23, align 1, !dbg !406 ; [#uses=1 type=i8] [debug line = 198:17@371:5]
  %tmp_33_i1 = zext i8 %buf_load_18 to i64, !dbg !406 ; [#uses=1 type=i64] [debug line = 198:17@371:5]
  %sbox_addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_33_i1, !dbg !406 ; [#uses=1 type=i8*] [debug line = 198:17@371:5]
  %sbox_load = load i8* %sbox_addr, align 1, !dbg !406 ; [#uses=1 type=i8] [debug line = 198:17@371:5]
  store i8 %sbox_load, i8* %buf_addr_23, align 1, !dbg !406 ; [debug line = 198:17@371:5]
  br label %.preheader, !dbg !406                 ; [debug line = 198:17@371:5]

aes_subBytes.exit25:                              ; preds = %.preheader
  %rcon_load = load i8* %rcon, !dbg !407          ; [#uses=1 type=i8] [debug line = 373:5]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !408), !dbg !410 ; [debug line = 227:36@372:5] [debug variable = buf]
  %i_37 = load i8* %buf_addr, align 1, !dbg !411  ; [#uses=1 type=i8] [debug line = 231:5@372:5]
  call void @llvm.dbg.value(metadata !{i8 %i_37}, i64 0, metadata !412), !dbg !411 ; [debug line = 231:5@372:5] [debug variable = i]
  %buf_load_7 = load i8* %buf_addr_11, align 1, !dbg !411 ; [#uses=1 type=i8] [debug line = 231:5@372:5]
  store i8 %buf_load_7, i8* %buf_addr, align 1, !dbg !411 ; [debug line = 231:5@372:5]
  %buf_load_8 = load i8* %buf_addr_12, align 1, !dbg !411 ; [#uses=1 type=i8] [debug line = 231:5@372:5]
  store i8 %buf_load_8, i8* %buf_addr_11, align 1, !dbg !411 ; [debug line = 231:5@372:5]
  %buf_load_9 = load i8* %buf_addr_13, align 1, !dbg !411 ; [#uses=1 type=i8] [debug line = 231:5@372:5]
  store i8 %buf_load_9, i8* %buf_addr_12, align 1, !dbg !411 ; [debug line = 231:5@372:5]
  store i8 %i_37, i8* %buf_addr_13, align 1, !dbg !411 ; [debug line = 231:5@372:5]
  %i_38 = load i8* %buf_addr_14, align 1, !dbg !413 ; [#uses=1 type=i8] [debug line = 232:5@372:5]
  call void @llvm.dbg.value(metadata !{i8 %i_38}, i64 0, metadata !412), !dbg !413 ; [debug line = 232:5@372:5] [debug variable = i]
  %buf_load_11 = load i8* %buf_addr_15, align 1, !dbg !413 ; [#uses=1 type=i8] [debug line = 232:5@372:5]
  store i8 %buf_load_11, i8* %buf_addr_14, align 1, !dbg !413 ; [debug line = 232:5@372:5]
  store i8 %i_38, i8* %buf_addr_15, align 1, !dbg !413 ; [debug line = 232:5@372:5]
  %j = load i8* %buf_addr_16, align 1, !dbg !414  ; [#uses=1 type=i8] [debug line = 233:5@372:5]
  call void @llvm.dbg.value(metadata !{i8 %j}, i64 0, metadata !415), !dbg !414 ; [debug line = 233:5@372:5] [debug variable = j]
  %buf_load_13 = load i8* %buf_addr_17, align 1, !dbg !414 ; [#uses=1 type=i8] [debug line = 233:5@372:5]
  store i8 %buf_load_13, i8* %buf_addr_16, align 1, !dbg !414 ; [debug line = 233:5@372:5]
  %buf_load_14 = load i8* %buf_addr_18, align 1, !dbg !414 ; [#uses=1 type=i8] [debug line = 233:5@372:5]
  store i8 %buf_load_14, i8* %buf_addr_17, align 1, !dbg !414 ; [debug line = 233:5@372:5]
  %buf_load_15 = load i8* %buf_addr_19, align 1, !dbg !414 ; [#uses=1 type=i8] [debug line = 233:5@372:5]
  store i8 %buf_load_15, i8* %buf_addr_18, align 1, !dbg !414 ; [debug line = 233:5@372:5]
  store i8 %j, i8* %buf_addr_19, align 1, !dbg !414 ; [debug line = 233:5@372:5]
  %j_1 = load i8* %buf_addr_20, align 1, !dbg !416 ; [#uses=1 type=i8] [debug line = 234:5@372:5]
  call void @llvm.dbg.value(metadata !{i8 %j_1}, i64 0, metadata !415), !dbg !416 ; [debug line = 234:5@372:5] [debug variable = j]
  %buf_load_17 = load i8* %buf_addr_21, align 1, !dbg !416 ; [#uses=1 type=i8] [debug line = 234:5@372:5]
  store i8 %buf_load_17, i8* %buf_addr_20, align 1, !dbg !416 ; [debug line = 234:5@372:5]
  store i8 %j_1, i8* %buf_addr_21, align 1, !dbg !416 ; [debug line = 234:5@372:5]
  %call_ret1 = call fastcc i8 @aes_expandEncKey([32 x i8]* @ctx_key, i8 %rcon_load), !dbg !407 ; [#uses=0 type=i8] [debug line = 373:5]
  call void @llvm.dbg.value(metadata !{i8 %call_ret1}, i64 0, metadata !331), !dbg !407 ; [debug line = 373:5] [debug variable = rcon]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx_key, i6 0), !dbg !417 ; [debug line = 374:5]
  ret void, !dbg !418                             ; [debug line = 375:1]
}

; [#uses=1]
define internal fastcc void @aes_decrypt_ecb([16 x i8]* nocapture %buf) {
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !419), !dbg !421 ; [debug line = 378:49] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !422), !dbg !425 ; [debug line = 218:42@382:5] [debug variable = buf]
  br label %1, !dbg !426                          ; [debug line = 222:5@382:5]

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i5 [ -16, %0 ], [ %i_43, %2 ]        ; [#uses=3 type=i5]
  %i_43 = add i5 %i_i, -1, !dbg !426              ; [#uses=2 type=i5] [debug line = 222:5@382:5]
  %i_46_cast = sext i5 %i_43 to i8, !dbg !426     ; [#uses=1 type=i8] [debug line = 222:5@382:5]
  call void @llvm.dbg.value(metadata !{i5 %i_43}, i64 0, metadata !427), !dbg !426 ; [debug line = 222:5@382:5] [debug variable = i]
  %tmp_i = icmp eq i5 %i_i, 0, !dbg !426          ; [#uses=1 type=i1] [debug line = 222:5@382:5]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp_i, label %aes_addRoundKey_cpy.exit, label %2, !dbg !426 ; [debug line = 222:5@382:5]

; <label>:2                                       ; preds = %1
  %tmp_i_31 = zext i8 %i_46_cast to i64, !dbg !428 ; [#uses=3 type=i64] [debug line = 222:17@382:5]
  %ctx_deckey_addr = getelementptr [32 x i8]* @ctx_deckey, i64 0, i64 %tmp_i_31, !dbg !428 ; [#uses=1 type=i8*] [debug line = 222:17@382:5]
  %ctx_deckey_load = load i8* %ctx_deckey_addr, align 1, !dbg !428 ; [#uses=2 type=i8] [debug line = 222:17@382:5]
  %ctx_key_addr = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_i_31, !dbg !428 ; [#uses=1 type=i8*] [debug line = 222:17@382:5]
  store i8 %ctx_deckey_load, i8* %ctx_key_addr, align 1, !dbg !428 ; [debug line = 222:17@382:5]
  %buf_addr_40 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_i_31, !dbg !428 ; [#uses=2 type=i8*] [debug line = 222:17@382:5]
  %buf_load_46 = load i8* %buf_addr_40, align 1, !dbg !428 ; [#uses=1 type=i8] [debug line = 222:17@382:5]
  %tmp_211_i = xor i8 %buf_load_46, %ctx_deckey_load, !dbg !428 ; [#uses=1 type=i8] [debug line = 222:17@382:5]
  store i8 %tmp_211_i, i8* %buf_addr_40, align 1, !dbg !428 ; [debug line = 222:17@382:5]
  %tmp_213_i = add i5 %i_i, 15, !dbg !428         ; [#uses=1 type=i5] [debug line = 222:17@382:5]
  %tmp_214_i = zext i5 %tmp_213_i to i64, !dbg !428 ; [#uses=2 type=i64] [debug line = 222:17@382:5]
  %ctx_deckey_addr_1 = getelementptr [32 x i8]* @ctx_deckey, i64 0, i64 %tmp_214_i, !dbg !428 ; [#uses=1 type=i8*] [debug line = 222:17@382:5]
  %ctx_deckey_load_1 = load i8* %ctx_deckey_addr_1, align 1, !dbg !428 ; [#uses=1 type=i8] [debug line = 222:17@382:5]
  %ctx_key_addr_17 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_214_i, !dbg !428 ; [#uses=1 type=i8*] [debug line = 222:17@382:5]
  store i8 %ctx_deckey_load_1, i8* %ctx_key_addr_17, align 1, !dbg !428 ; [debug line = 222:17@382:5]
  br label %1, !dbg !428                          ; [debug line = 222:17@382:5]

aes_addRoundKey_cpy.exit:                         ; preds = %1
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !429), !dbg !432 ; [debug line = 239:40@383:5] [debug variable = buf]
  %buf_addr = getelementptr [16 x i8]* %buf, i64 0, i64 1, !dbg !433 ; [#uses=4 type=i8*] [debug line = 243:5@383:5]
  %i_44 = load i8* %buf_addr, align 1, !dbg !433  ; [#uses=1 type=i8] [debug line = 243:5@383:5]
  call void @llvm.dbg.value(metadata !{i8 %i_44}, i64 0, metadata !435), !dbg !433 ; [debug line = 243:5@383:5] [debug variable = i]
  %buf_addr_29 = getelementptr [16 x i8]* %buf, i64 0, i64 13, !dbg !433 ; [#uses=4 type=i8*] [debug line = 243:5@383:5]
  %buf_load = load i8* %buf_addr_29, align 1, !dbg !433 ; [#uses=1 type=i8] [debug line = 243:5@383:5]
  store i8 %buf_load, i8* %buf_addr, align 1, !dbg !433 ; [debug line = 243:5@383:5]
  %buf_addr_30 = getelementptr [16 x i8]* %buf, i64 0, i64 9, !dbg !433 ; [#uses=4 type=i8*] [debug line = 243:5@383:5]
  %buf_load_36 = load i8* %buf_addr_30, align 1, !dbg !433 ; [#uses=1 type=i8] [debug line = 243:5@383:5]
  store i8 %buf_load_36, i8* %buf_addr_29, align 1, !dbg !433 ; [debug line = 243:5@383:5]
  %buf_addr_31 = getelementptr [16 x i8]* %buf, i64 0, i64 5, !dbg !433 ; [#uses=4 type=i8*] [debug line = 243:5@383:5]
  %buf_load_37 = load i8* %buf_addr_31, align 1, !dbg !433 ; [#uses=1 type=i8] [debug line = 243:5@383:5]
  store i8 %buf_load_37, i8* %buf_addr_30, align 1, !dbg !433 ; [debug line = 243:5@383:5]
  store i8 %i_44, i8* %buf_addr_31, align 1, !dbg !433 ; [debug line = 243:5@383:5]
  %buf_addr_32 = getelementptr [16 x i8]* %buf, i64 0, i64 2, !dbg !436 ; [#uses=4 type=i8*] [debug line = 244:5@383:5]
  %i_45 = load i8* %buf_addr_32, align 1, !dbg !436 ; [#uses=1 type=i8] [debug line = 244:5@383:5]
  call void @llvm.dbg.value(metadata !{i8 %i_45}, i64 0, metadata !435), !dbg !436 ; [debug line = 244:5@383:5] [debug variable = i]
  %buf_addr_33 = getelementptr [16 x i8]* %buf, i64 0, i64 10, !dbg !436 ; [#uses=4 type=i8*] [debug line = 244:5@383:5]
  %buf_load_39 = load i8* %buf_addr_33, align 1, !dbg !436 ; [#uses=1 type=i8] [debug line = 244:5@383:5]
  store i8 %buf_load_39, i8* %buf_addr_32, align 1, !dbg !436 ; [debug line = 244:5@383:5]
  store i8 %i_45, i8* %buf_addr_33, align 1, !dbg !436 ; [debug line = 244:5@383:5]
  %buf_addr_34 = getelementptr [16 x i8]* %buf, i64 0, i64 3, !dbg !437 ; [#uses=4 type=i8*] [debug line = 245:5@383:5]
  %j = load i8* %buf_addr_34, align 1, !dbg !437  ; [#uses=1 type=i8] [debug line = 245:5@383:5]
  call void @llvm.dbg.value(metadata !{i8 %j}, i64 0, metadata !438), !dbg !437 ; [debug line = 245:5@383:5] [debug variable = j]
  %buf_addr_35 = getelementptr [16 x i8]* %buf, i64 0, i64 7, !dbg !437 ; [#uses=4 type=i8*] [debug line = 245:5@383:5]
  %buf_load_41 = load i8* %buf_addr_35, align 1, !dbg !437 ; [#uses=1 type=i8] [debug line = 245:5@383:5]
  store i8 %buf_load_41, i8* %buf_addr_34, align 1, !dbg !437 ; [debug line = 245:5@383:5]
  %buf_addr_36 = getelementptr [16 x i8]* %buf, i64 0, i64 11, !dbg !437 ; [#uses=4 type=i8*] [debug line = 245:5@383:5]
  %buf_load_42 = load i8* %buf_addr_36, align 1, !dbg !437 ; [#uses=1 type=i8] [debug line = 245:5@383:5]
  store i8 %buf_load_42, i8* %buf_addr_35, align 1, !dbg !437 ; [debug line = 245:5@383:5]
  %buf_addr_37 = getelementptr [16 x i8]* %buf, i64 0, i64 15, !dbg !437 ; [#uses=4 type=i8*] [debug line = 245:5@383:5]
  %buf_load_43 = load i8* %buf_addr_37, align 1, !dbg !437 ; [#uses=1 type=i8] [debug line = 245:5@383:5]
  store i8 %buf_load_43, i8* %buf_addr_36, align 1, !dbg !437 ; [debug line = 245:5@383:5]
  store i8 %j, i8* %buf_addr_37, align 1, !dbg !437 ; [debug line = 245:5@383:5]
  %buf_addr_38 = getelementptr [16 x i8]* %buf, i64 0, i64 6, !dbg !439 ; [#uses=4 type=i8*] [debug line = 246:5@383:5]
  %j_4 = load i8* %buf_addr_38, align 1, !dbg !439 ; [#uses=1 type=i8] [debug line = 246:5@383:5]
  call void @llvm.dbg.value(metadata !{i8 %j_4}, i64 0, metadata !438), !dbg !439 ; [debug line = 246:5@383:5] [debug variable = j]
  %buf_addr_39 = getelementptr [16 x i8]* %buf, i64 0, i64 14, !dbg !439 ; [#uses=4 type=i8*] [debug line = 246:5@383:5]
  %buf_load_45 = load i8* %buf_addr_39, align 1, !dbg !439 ; [#uses=1 type=i8] [debug line = 246:5@383:5]
  store i8 %buf_load_45, i8* %buf_addr_38, align 1, !dbg !439 ; [debug line = 246:5@383:5]
  store i8 %j_4, i8* %buf_addr_39, align 1, !dbg !439 ; [debug line = 246:5@383:5]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !440), !dbg !443 ; [debug line = 202:39@384:5] [debug variable = buf]
  br label %3, !dbg !444                          ; [debug line = 206:5@384:5]

; <label>:3                                       ; preds = %4, %aes_addRoundKey_cpy.exit
  %i_i5 = phi i5 [ -16, %aes_addRoundKey_cpy.exit ], [ %i_46, %4 ] ; [#uses=2 type=i5]
  %i_46 = add i5 %i_i5, -1, !dbg !444             ; [#uses=2 type=i5] [debug line = 206:5@384:5]
  %i_49_cast = sext i5 %i_46 to i8, !dbg !444     ; [#uses=1 type=i8] [debug line = 206:5@384:5]
  call void @llvm.dbg.value(metadata !{i5 %i_46}, i64 0, metadata !446), !dbg !444 ; [debug line = 206:5@384:5] [debug variable = i]
  %tmp_i6 = icmp eq i5 %i_i5, 0, !dbg !444        ; [#uses=1 type=i1] [debug line = 206:5@384:5]
  %empty_32 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp_i6, label %aes_subBytes_inv.exit.preheader, label %4, !dbg !444 ; [debug line = 206:5@384:5]

aes_subBytes_inv.exit.preheader:                  ; preds = %3
  %rcon = alloca i8                               ; [#uses=3 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %rcon}, metadata !447) ; [debug variable = rcon]
  store i8 -128, i8* %rcon
  br label %aes_subBytes_inv.exit, !dbg !448      ; [debug line = 386:10]

; <label>:4                                       ; preds = %3
  %tmp_i7 = zext i8 %i_49_cast to i64, !dbg !450  ; [#uses=1 type=i64] [debug line = 206:17@384:5]
  %buf_addr_41 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_i7, !dbg !450 ; [#uses=2 type=i8*] [debug line = 206:17@384:5]
  %buf_load_47 = load i8* %buf_addr_41, align 1, !dbg !450 ; [#uses=1 type=i8] [debug line = 206:17@384:5]
  %tmp_32_i = zext i8 %buf_load_47 to i64, !dbg !450 ; [#uses=1 type=i64] [debug line = 206:17@384:5]
  %sboxinv_addr = getelementptr inbounds [256 x i8]* @sboxinv, i64 0, i64 %tmp_32_i, !dbg !450 ; [#uses=1 type=i8*] [debug line = 206:17@384:5]
  %sboxinv_load = load i8* %sboxinv_addr, align 1, !dbg !450 ; [#uses=1 type=i8] [debug line = 206:17@384:5]
  store i8 %sboxinv_load, i8* %buf_addr_41, align 1, !dbg !450 ; [debug line = 206:17@384:5]
  br label %3, !dbg !450                          ; [debug line = 206:17@384:5]

aes_subBytes_inv.exit:                            ; preds = %aes_subBytes_inv.exit43, %aes_subBytes_inv.exit.preheader
  %i = phi i4 [ %phitmp, %aes_subBytes_inv.exit43 ], [ -3, %aes_subBytes_inv.exit.preheader ] ; [#uses=3 type=i4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !451), !dbg !448 ; [debug line = 386:10] [debug variable = i]
  %tmp = icmp eq i4 %i, 0, !dbg !448              ; [#uses=1 type=i1] [debug line = 386:10]
  %empty_33 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 13, i64 13, i64 13) ; [#uses=0 type=i32]
  br i1 %tmp, label %11, label %5, !dbg !448      ; [debug line = 386:10]

; <label>:5                                       ; preds = %aes_subBytes_inv.exit
  %tmp_37 = trunc i4 %i to i1, !dbg !448          ; [#uses=1 type=i1] [debug line = 386:10]
  br i1 %tmp_37, label %6, label %7, !dbg !452    ; [debug line = 388:9]

; <label>:6                                       ; preds = %5
  %rcon_load = load i8* %rcon, !dbg !454          ; [#uses=1 type=i8] [debug line = 390:13]
  %rcon_2 = call fastcc i8 @aes_expandDecKey(i8 %rcon_load), !dbg !454 ; [#uses=1 type=i8] [debug line = 390:13]
  call void @llvm.dbg.value(metadata !{i8 %rcon_2}, i64 0, metadata !447), !dbg !454 ; [debug line = 390:13] [debug variable = rcon]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx_key, i6 16), !dbg !456 ; [debug line = 391:13]
  store i8 %rcon_2, i8* %rcon, !dbg !454          ; [debug line = 390:13]
  br label %8, !dbg !457                          ; [debug line = 392:9]

; <label>:7                                       ; preds = %5
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx_key, i6 0), !dbg !458 ; [debug line = 393:14]
  br label %8

; <label>:8                                       ; preds = %7, %6
  call fastcc void @aes_mixColumns_inv([16 x i8]* %buf), !dbg !459 ; [debug line = 394:9]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !460), !dbg !462 ; [debug line = 239:40@395:9] [debug variable = buf]
  %i_47 = load i8* %buf_addr, align 1, !dbg !463  ; [#uses=1 type=i8] [debug line = 243:5@395:9]
  call void @llvm.dbg.value(metadata !{i8 %i_47}, i64 0, metadata !464), !dbg !463 ; [debug line = 243:5@395:9] [debug variable = i]
  %buf_load_49 = load i8* %buf_addr_29, align 1, !dbg !463 ; [#uses=1 type=i8] [debug line = 243:5@395:9]
  store i8 %buf_load_49, i8* %buf_addr, align 1, !dbg !463 ; [debug line = 243:5@395:9]
  %buf_load_50 = load i8* %buf_addr_30, align 1, !dbg !463 ; [#uses=1 type=i8] [debug line = 243:5@395:9]
  store i8 %buf_load_50, i8* %buf_addr_29, align 1, !dbg !463 ; [debug line = 243:5@395:9]
  %buf_load_51 = load i8* %buf_addr_31, align 1, !dbg !463 ; [#uses=1 type=i8] [debug line = 243:5@395:9]
  store i8 %buf_load_51, i8* %buf_addr_30, align 1, !dbg !463 ; [debug line = 243:5@395:9]
  store i8 %i_47, i8* %buf_addr_31, align 1, !dbg !463 ; [debug line = 243:5@395:9]
  %i_48 = load i8* %buf_addr_32, align 1, !dbg !465 ; [#uses=1 type=i8] [debug line = 244:5@395:9]
  call void @llvm.dbg.value(metadata !{i8 %i_48}, i64 0, metadata !464), !dbg !465 ; [debug line = 244:5@395:9] [debug variable = i]
  %buf_load_53 = load i8* %buf_addr_33, align 1, !dbg !465 ; [#uses=1 type=i8] [debug line = 244:5@395:9]
  store i8 %buf_load_53, i8* %buf_addr_32, align 1, !dbg !465 ; [debug line = 244:5@395:9]
  store i8 %i_48, i8* %buf_addr_33, align 1, !dbg !465 ; [debug line = 244:5@395:9]
  %j_5 = load i8* %buf_addr_34, align 1, !dbg !466 ; [#uses=1 type=i8] [debug line = 245:5@395:9]
  call void @llvm.dbg.value(metadata !{i8 %j_5}, i64 0, metadata !467), !dbg !466 ; [debug line = 245:5@395:9] [debug variable = j]
  %buf_load_55 = load i8* %buf_addr_35, align 1, !dbg !466 ; [#uses=1 type=i8] [debug line = 245:5@395:9]
  store i8 %buf_load_55, i8* %buf_addr_34, align 1, !dbg !466 ; [debug line = 245:5@395:9]
  %buf_load_56 = load i8* %buf_addr_36, align 1, !dbg !466 ; [#uses=1 type=i8] [debug line = 245:5@395:9]
  store i8 %buf_load_56, i8* %buf_addr_35, align 1, !dbg !466 ; [debug line = 245:5@395:9]
  %buf_load_57 = load i8* %buf_addr_37, align 1, !dbg !466 ; [#uses=1 type=i8] [debug line = 245:5@395:9]
  store i8 %buf_load_57, i8* %buf_addr_36, align 1, !dbg !466 ; [debug line = 245:5@395:9]
  store i8 %j_5, i8* %buf_addr_37, align 1, !dbg !466 ; [debug line = 245:5@395:9]
  %j_6 = load i8* %buf_addr_38, align 1, !dbg !468 ; [#uses=1 type=i8] [debug line = 246:5@395:9]
  call void @llvm.dbg.value(metadata !{i8 %j_6}, i64 0, metadata !467), !dbg !468 ; [debug line = 246:5@395:9] [debug variable = j]
  %buf_load_59 = load i8* %buf_addr_39, align 1, !dbg !468 ; [#uses=1 type=i8] [debug line = 246:5@395:9]
  store i8 %buf_load_59, i8* %buf_addr_38, align 1, !dbg !468 ; [debug line = 246:5@395:9]
  store i8 %j_6, i8* %buf_addr_39, align 1, !dbg !468 ; [debug line = 246:5@395:9]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !469), !dbg !471 ; [debug line = 202:39@396:9] [debug variable = buf]
  br label %9, !dbg !472                          ; [debug line = 206:5@396:9]

; <label>:9                                       ; preds = %10, %8
  %i_i3 = phi i5 [ -16, %8 ], [ %i_49, %10 ]      ; [#uses=2 type=i5]
  %i_49 = add i5 %i_i3, -1, !dbg !472             ; [#uses=2 type=i5] [debug line = 206:5@396:9]
  %i_52_cast = sext i5 %i_49 to i8, !dbg !472     ; [#uses=1 type=i8] [debug line = 206:5@396:9]
  call void @llvm.dbg.value(metadata !{i5 %i_49}, i64 0, metadata !473), !dbg !472 ; [debug line = 206:5@396:9] [debug variable = i]
  %tmp_i1 = icmp eq i5 %i_i3, 0, !dbg !472        ; [#uses=1 type=i1] [debug line = 206:5@396:9]
  %empty_34 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp_i1, label %aes_subBytes_inv.exit43, label %10, !dbg !472 ; [debug line = 206:5@396:9]

; <label>:10                                      ; preds = %9
  %tmp_i3 = zext i8 %i_52_cast to i64, !dbg !474  ; [#uses=1 type=i64] [debug line = 206:17@396:9]
  %buf_addr_42 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_i3, !dbg !474 ; [#uses=2 type=i8*] [debug line = 206:17@396:9]
  %buf_load_60 = load i8* %buf_addr_42, align 1, !dbg !474 ; [#uses=1 type=i8] [debug line = 206:17@396:9]
  %tmp_32_i1 = zext i8 %buf_load_60 to i64, !dbg !474 ; [#uses=1 type=i64] [debug line = 206:17@396:9]
  %sboxinv_addr_1 = getelementptr inbounds [256 x i8]* @sboxinv, i64 0, i64 %tmp_32_i1, !dbg !474 ; [#uses=1 type=i8*] [debug line = 206:17@396:9]
  %sboxinv_load_1 = load i8* %sboxinv_addr_1, align 1, !dbg !474 ; [#uses=1 type=i8] [debug line = 206:17@396:9]
  store i8 %sboxinv_load_1, i8* %buf_addr_42, align 1, !dbg !474 ; [debug line = 206:17@396:9]
  br label %9, !dbg !474                          ; [debug line = 206:17@396:9]

aes_subBytes_inv.exit43:                          ; preds = %9
  %phitmp = add i4 %i, -1, !dbg !475              ; [#uses=1 type=i4] [debug line = 397:5]
  br label %aes_subBytes_inv.exit, !dbg !475      ; [debug line = 397:5]

; <label>:11                                      ; preds = %aes_subBytes_inv.exit
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx_key, i6 0), !dbg !476 ; [debug line = 398:5]
  ret void, !dbg !477                             ; [debug line = 399:1]
}

; [#uses=6]
define internal fastcc void @aes_addRoundKey([16 x i8]* nocapture %buf, [32 x i8]* nocapture %key, i6 %key_offset) {
  %key_offset_read = call i6 @_ssdm_op_Read.ap_auto.i6(i6 %key_offset) ; [#uses=1 type=i6]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !478), !dbg !480 ; [debug line = 210:38] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %key}, i64 0, metadata !481), !dbg !482 ; [debug line = 210:52] [debug variable = key]
  %tmp_38 = trunc i6 %key_offset_read to i5       ; [#uses=1 type=i5]
  br label %1, !dbg !483                          ; [debug line = 214:5]

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ -16, %0 ], [ %i_50, %2 ]          ; [#uses=2 type=i5]
  %i_50 = add i5 %i, -1, !dbg !483                ; [#uses=3 type=i5] [debug line = 214:5]
  %i_53_cast = sext i5 %i_50 to i8, !dbg !483     ; [#uses=1 type=i8] [debug line = 214:5]
  call void @llvm.dbg.value(metadata !{i5 %i_50}, i64 0, metadata !485), !dbg !483 ; [debug line = 214:5] [debug variable = i]
  %tmp = icmp eq i5 %i, 0, !dbg !483              ; [#uses=1 type=i1] [debug line = 214:5]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp, label %3, label %2, !dbg !483       ; [debug line = 214:5]

; <label>:2                                       ; preds = %1
  %tmp_s = zext i8 %i_53_cast to i64, !dbg !486   ; [#uses=1 type=i64] [debug line = 214:17]
  %sum = add i5 %i_50, %tmp_38                    ; [#uses=1 type=i5]
  %sum_cast = zext i5 %sum to i64                 ; [#uses=1 type=i64]
  %key_addr = getelementptr [32 x i8]* %key, i64 0, i64 %sum_cast, !dbg !486 ; [#uses=1 type=i8*] [debug line = 214:17]
  %key_load = load i8* %key_addr, align 1, !dbg !486 ; [#uses=1 type=i8] [debug line = 214:17]
  %buf_addr = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_s, !dbg !486 ; [#uses=2 type=i8*] [debug line = 214:17]
  %buf_load = load i8* %buf_addr, align 1, !dbg !486 ; [#uses=1 type=i8] [debug line = 214:17]
  %tmp_149 = xor i8 %buf_load, %key_load, !dbg !486 ; [#uses=1 type=i8] [debug line = 214:17]
  store i8 %tmp_149, i8* %buf_addr, align 1, !dbg !486 ; [debug line = 214:17]
  br label %1, !dbg !486                          ; [debug line = 214:17]

; <label>:3                                       ; preds = %1
  ret void, !dbg !487                             ; [debug line = 215:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecMemCore(...) {
entry:
  ret i32 0
}

; [#uses=32]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=6]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=4]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=3]
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
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 2, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"mode", metadata !41, metadata !"enum ", i32 0, i32 2}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 0, i32 0}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 7, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"data_in", metadata !47, metadata !"unsigned char", i32 0, i32 7}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 31, i32 1}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 7, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"data_out", metadata !53, metadata !"unsigned char", i32 0, i32 7}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 15, i32 1}
!55 = metadata !{i32 786689, metadata !56, metadata !"mode", metadata !57, i32 16777224, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!56 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aescbc", metadata !"aescbc", metadata !"", metadata !57, i32 8, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !72, i32 11} ; [ DW_TAG_subprogram ]
!57 = metadata !{i32 786473, metadata !"aescbc/src/aescbc.c", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!58 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!59 = metadata !{null, metadata !60, metadata !69, metadata !69}
!60 = metadata !{i32 786454, null, metadata !"ciphermode_t", metadata !57, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ]
!61 = metadata !{i32 786436, null, metadata !"", metadata !62, i32 8, i64 3, i64 4, i32 0, i32 0, null, metadata !63, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!62 = metadata !{i32 786473, metadata !"aescbc/src/aescbc.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!63 = metadata !{metadata !64, metadata !65, metadata !66, metadata !67, metadata !68}
!64 = metadata !{i32 786472, metadata !"RESET", i64 0} ; [ DW_TAG_enumerator ]
!65 = metadata !{i32 786472, metadata !"ENCRYPT", i64 1} ; [ DW_TAG_enumerator ]
!66 = metadata !{i32 786472, metadata !"DECRYPT", i64 2} ; [ DW_TAG_enumerator ]
!67 = metadata !{i32 786472, metadata !"SET_IV", i64 3} ; [ DW_TAG_enumerator ]
!68 = metadata !{i32 786472, metadata !"SET_KEY", i64 4} ; [ DW_TAG_enumerator ]
!69 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !70} ; [ DW_TAG_pointer_type ]
!70 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !57, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ]
!71 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!72 = metadata !{metadata !73}
!73 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!74 = metadata !{i32 8, i32 26, metadata !56, null}
!75 = metadata !{i32 786689, metadata !56, metadata !"data_in", null, i32 9, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!76 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !70, metadata !77, i32 0, i32 0} ; [ DW_TAG_array_type ]
!77 = metadata !{metadata !78}
!78 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!79 = metadata !{i32 9, i32 12, metadata !56, null}
!80 = metadata !{i32 786689, metadata !56, metadata !"data_out", null, i32 10, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!81 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !70, metadata !82, i32 0, i32 0} ; [ DW_TAG_array_type ]
!82 = metadata !{metadata !83}
!83 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!84 = metadata !{i32 10, i32 12, metadata !56, null}
!85 = metadata !{i32 16, i32 1, metadata !86, null}
!86 = metadata !{i32 786443, metadata !56, i32 11, i32 1, metadata !57, i32 0} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 17, i32 1, metadata !86, null}
!88 = metadata !{i32 786688, metadata !86, metadata !"buf", metadata !57, i32 21, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !70, metadata !82, i32 0, i32 0} ; [ DW_TAG_array_type ]
!90 = metadata !{i32 21, i32 10, metadata !86, null}
!91 = metadata !{i32 29, i32 5, metadata !86, null}
!92 = metadata !{i32 33, i32 7, metadata !93, null}
!93 = metadata !{i32 786443, metadata !94, i32 33, i32 3, metadata !57, i32 2} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 786443, metadata !86, i32 29, i32 20, metadata !57, i32 1} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 45, i32 10, metadata !96, null}
!96 = metadata !{i32 786443, metadata !94, i32 45, i32 6, metadata !57, i32 6} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 61, i32 10, metadata !98, null}
!98 = metadata !{i32 786443, metadata !94, i32 61, i32 6, metadata !57, i32 10} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 81, i32 7, metadata !100, null}
!100 = metadata !{i32 786443, metadata !94, i32 81, i32 3, metadata !57, i32 15} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 91, i32 7, metadata !102, null}
!102 = metadata !{i32 786443, metadata !94, i32 91, i32 3, metadata !57, i32 19} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 33, i32 18, metadata !93, null}
!104 = metadata !{i32 37, i32 7, metadata !105, null}
!105 = metadata !{i32 786443, metadata !94, i32 37, i32 3, metadata !57, i32 4} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 34, i32 7, metadata !107, null}
!107 = metadata !{i32 786443, metadata !93, i32 34, i32 7, metadata !57, i32 3} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 786688, metadata !86, metadata !"i", metadata !57, i32 27, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 37, i32 18, metadata !105, null}
!110 = metadata !{i32 344, i32 10, metadata !111, metadata !128}
!111 = metadata !{i32 786443, metadata !112, i32 344, i32 5, metadata !114, i32 1} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 786443, metadata !113, i32 340, i32 1, metadata !114, i32 0} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 786478, i32 0, metadata !114, metadata !"aes_init", metadata !"aes_init", metadata !"", metadata !114, i32 339, metadata !115, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !72, i32 340} ; [ DW_TAG_subprogram ]
!114 = metadata !{i32 786473, metadata !"aescbc/src/aesecb.c", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!115 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !116, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!116 = metadata !{null, metadata !117, metadata !127}
!117 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !118} ; [ DW_TAG_pointer_type ]
!118 = metadata !{i32 786454, null, metadata !"aes_context", metadata !114, i32 33, i64 0, i64 0, i64 0, i32 0, metadata !119} ; [ DW_TAG_typedef ]
!119 = metadata !{i32 786451, null, metadata !"", metadata !120, i32 29, i64 768, i64 8, i32 0, i32 0, null, metadata !121, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!120 = metadata !{i32 786473, metadata !"aescbc/src/aesecb.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!121 = metadata !{metadata !122, metadata !125, metadata !126}
!122 = metadata !{i32 786445, metadata !119, metadata !"key", metadata !120, i32 30, i64 256, i64 8, i64 0, i32 0, metadata !123} ; [ DW_TAG_member ]
!123 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !124, metadata !77, i32 0, i32 0} ; [ DW_TAG_array_type ]
!124 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !120, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ]
!125 = metadata !{i32 786445, metadata !119, metadata !"enckey", metadata !120, i32 31, i64 256, i64 8, i64 256, i32 0, metadata !123} ; [ DW_TAG_member ]
!126 = metadata !{i32 786445, metadata !119, metadata !"deckey", metadata !120, i32 32, i64 256, i64 8, i64 512, i32 0, metadata !123} ; [ DW_TAG_member ]
!127 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !124} ; [ DW_TAG_pointer_type ]
!128 = metadata !{i32 40, i32 3, metadata !94, null}
!129 = metadata !{i32 38, i32 7, metadata !130, null}
!130 = metadata !{i32 786443, metadata !105, i32 38, i32 7, metadata !57, i32 5} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 344, i32 39, metadata !111, metadata !128}
!132 = metadata !{i32 345, i32 10, metadata !133, metadata !128}
!133 = metadata !{i32 786443, metadata !112, i32 345, i32 5, metadata !114, i32 2} ; [ DW_TAG_lexical_block ]
!134 = metadata !{i32 344, i32 44, metadata !111, metadata !128}
!135 = metadata !{i32 786688, metadata !112, metadata !"i", metadata !114, i32 342, metadata !124, i32 0, metadata !128} ; [ DW_TAG_auto_variable ]
!136 = metadata !{i32 345, i32 23, metadata !133, metadata !128}
!137 = metadata !{i32 786688, metadata !112, metadata !"rcon", metadata !114, i32 341, metadata !124, i32 0, metadata !128} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 45, i32 21, metadata !96, null}
!139 = metadata !{i32 48, i32 10, metadata !140, null}
!140 = metadata !{i32 786443, metadata !94, i32 48, i32 6, metadata !57, i32 7} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 46, i32 7, metadata !96, null}
!142 = metadata !{i32 48, i32 21, metadata !140, null}
!143 = metadata !{i32 49, i32 7, metadata !140, null}
!144 = metadata !{i32 51, i32 6, metadata !94, null}
!145 = metadata !{i32 53, i32 10, metadata !146, null}
!146 = metadata !{i32 786443, metadata !94, i32 53, i32 6, metadata !57, i32 8} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 53, i32 21, metadata !146, null}
!148 = metadata !{i32 56, i32 10, metadata !149, null}
!149 = metadata !{i32 786443, metadata !94, i32 56, i32 6, metadata !57, i32 9} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 54, i32 7, metadata !146, null}
!151 = metadata !{i32 56, i32 21, metadata !149, null}
!152 = metadata !{i32 57, i32 7, metadata !149, null}
!153 = metadata !{i32 61, i32 21, metadata !98, null}
!154 = metadata !{i32 64, i32 10, metadata !155, null}
!155 = metadata !{i32 786443, metadata !94, i32 64, i32 6, metadata !57, i32 11} ; [ DW_TAG_lexical_block ]
!156 = metadata !{i32 62, i32 7, metadata !98, null}
!157 = metadata !{i32 64, i32 21, metadata !155, null}
!158 = metadata !{i32 65, i32 7, metadata !155, null}
!159 = metadata !{i32 67, i32 6, metadata !94, null}
!160 = metadata !{i32 69, i32 10, metadata !161, null}
!161 = metadata !{i32 786443, metadata !94, i32 69, i32 6, metadata !57, i32 12} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 69, i32 21, metadata !161, null}
!163 = metadata !{i32 72, i32 10, metadata !164, null}
!164 = metadata !{i32 786443, metadata !94, i32 72, i32 6, metadata !57, i32 13} ; [ DW_TAG_lexical_block ]
!165 = metadata !{i32 70, i32 7, metadata !161, null}
!166 = metadata !{i32 72, i32 21, metadata !164, null}
!167 = metadata !{i32 75, i32 10, metadata !168, null}
!168 = metadata !{i32 786443, metadata !94, i32 75, i32 6, metadata !57, i32 14} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 73, i32 7, metadata !164, null}
!170 = metadata !{i32 75, i32 21, metadata !168, null}
!171 = metadata !{i32 76, i32 7, metadata !168, null}
!172 = metadata !{i32 81, i32 18, metadata !100, null}
!173 = metadata !{i32 85, i32 7, metadata !174, null}
!174 = metadata !{i32 786443, metadata !94, i32 85, i32 3, metadata !57, i32 17} ; [ DW_TAG_lexical_block ]
!175 = metadata !{i32 82, i32 7, metadata !176, null}
!176 = metadata !{i32 786443, metadata !100, i32 82, i32 7, metadata !57, i32 16} ; [ DW_TAG_lexical_block ]
!177 = metadata !{i32 85, i32 18, metadata !174, null}
!178 = metadata !{i32 86, i32 4, metadata !179, null}
!179 = metadata !{i32 786443, metadata !174, i32 86, i32 4, metadata !57, i32 18} ; [ DW_TAG_lexical_block ]
!180 = metadata !{i32 91, i32 18, metadata !102, null}
!181 = metadata !{i32 95, i32 7, metadata !182, null}
!182 = metadata !{i32 786443, metadata !94, i32 95, i32 3, metadata !57, i32 21} ; [ DW_TAG_lexical_block ]
!183 = metadata !{i32 92, i32 4, metadata !184, null}
!184 = metadata !{i32 786443, metadata !102, i32 92, i32 4, metadata !57, i32 20} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 95, i32 18, metadata !182, null}
!186 = metadata !{i32 96, i32 4, metadata !187, null}
!187 = metadata !{i32 786443, metadata !182, i32 96, i32 4, metadata !57, i32 22} ; [ DW_TAG_lexical_block ]
!188 = metadata !{i32 99, i32 1, metadata !86, null}
!189 = metadata !{i32 786689, metadata !190, metadata !"buf", null, i32 270, metadata !193, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!190 = metadata !{i32 786478, i32 0, metadata !114, metadata !"aes_mixColumns_inv", metadata !"aes_mixColumns_inv", metadata !"", metadata !114, i32 270, metadata !191, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !72, i32 271} ; [ DW_TAG_subprogram ]
!191 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !192, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!192 = metadata !{null, metadata !127}
!193 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !124, metadata !82, i32 0, i32 0} ; [ DW_TAG_array_type ]
!194 = metadata !{i32 270, i32 34, metadata !190, null}
!195 = metadata !{i32 274, i32 10, metadata !196, null}
!196 = metadata !{i32 786443, metadata !197, i32 274, i32 5, metadata !114, i32 13} ; [ DW_TAG_lexical_block ]
!197 = metadata !{i32 786443, metadata !190, i32 271, i32 1, metadata !114, i32 12} ; [ DW_TAG_lexical_block ]
!198 = metadata !{i32 276, i32 9, metadata !199, null}
!199 = metadata !{i32 786443, metadata !196, i32 275, i32 5, metadata !114, i32 14} ; [ DW_TAG_lexical_block ]
!200 = metadata !{i32 786688, metadata !197, metadata !"a", metadata !114, i32 272, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!201 = metadata !{i32 277, i32 9, metadata !199, null}
!202 = metadata !{i32 786688, metadata !197, metadata !"b", metadata !114, i32 272, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!203 = metadata !{i32 278, i32 9, metadata !199, null}
!204 = metadata !{i32 786688, metadata !197, metadata !"c", metadata !114, i32 272, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!205 = metadata !{i32 279, i32 9, metadata !199, null}
!206 = metadata !{i32 786688, metadata !197, metadata !"d", metadata !114, i32 272, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!207 = metadata !{i32 280, i32 9, metadata !199, null}
!208 = metadata !{i32 786688, metadata !197, metadata !"e", metadata !114, i32 272, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!209 = metadata !{i32 786689, metadata !210, metadata !"x", metadata !114, i32 16777403, metadata !124, i32 0, metadata !213} ; [ DW_TAG_arg_variable ]
!210 = metadata !{i32 786478, i32 0, metadata !114, metadata !"rj_xtime", metadata !"rj_xtime", metadata !"", metadata !114, i32 187, metadata !211, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !72, i32 188} ; [ DW_TAG_subprogram ]
!211 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !212, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!212 = metadata !{metadata !124, metadata !124}
!213 = metadata !{i32 281, i32 13, metadata !199, null}
!214 = metadata !{i32 187, i32 33, metadata !210, metadata !213}
!215 = metadata !{i32 189, i32 34, metadata !216, metadata !213}
!216 = metadata !{i32 786443, metadata !210, i32 188, i32 1, metadata !114, i32 15} ; [ DW_TAG_lexical_block ]
!217 = metadata !{i32 786688, metadata !216, metadata !"y", metadata !114, i32 189, metadata !124, i32 0, metadata !213} ; [ DW_TAG_auto_variable ]
!218 = metadata !{i32 190, i32 5, metadata !216, metadata !213}
!219 = metadata !{i32 786688, metadata !197, metadata !"z", metadata !114, i32 272, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!220 = metadata !{i32 282, i32 26, metadata !199, null}
!221 = metadata !{i32 786689, metadata !210, metadata !"x", metadata !114, i32 16777403, metadata !124, i32 0, metadata !220} ; [ DW_TAG_arg_variable ]
!222 = metadata !{i32 187, i32 33, metadata !210, metadata !220}
!223 = metadata !{i32 189, i32 34, metadata !216, metadata !220}
!224 = metadata !{i32 786688, metadata !216, metadata !"y", metadata !114, i32 189, metadata !124, i32 0, metadata !220} ; [ DW_TAG_auto_variable ]
!225 = metadata !{i32 190, i32 5, metadata !216, metadata !220}
!226 = metadata !{i32 786688, metadata !197, metadata !"x", metadata !114, i32 272, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!227 = metadata !{i32 283, i32 26, metadata !199, null}
!228 = metadata !{i32 786689, metadata !210, metadata !"x", metadata !114, i32 16777403, metadata !124, i32 0, metadata !227} ; [ DW_TAG_arg_variable ]
!229 = metadata !{i32 187, i32 33, metadata !210, metadata !227}
!230 = metadata !{i32 189, i32 34, metadata !216, metadata !227}
!231 = metadata !{i32 786688, metadata !216, metadata !"y", metadata !114, i32 189, metadata !124, i32 0, metadata !227} ; [ DW_TAG_auto_variable ]
!232 = metadata !{i32 190, i32 5, metadata !216, metadata !227}
!233 = metadata !{i32 786688, metadata !197, metadata !"y", metadata !114, i32 272, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!234 = metadata !{i32 786689, metadata !210, metadata !"x", metadata !114, i32 16777403, metadata !124, i32 0, metadata !235} ; [ DW_TAG_arg_variable ]
!235 = metadata !{i32 284, i32 23, metadata !199, null}
!236 = metadata !{i32 187, i32 33, metadata !210, metadata !235}
!237 = metadata !{i32 189, i32 34, metadata !216, metadata !235}
!238 = metadata !{i32 786688, metadata !216, metadata !"y", metadata !114, i32 189, metadata !124, i32 0, metadata !235} ; [ DW_TAG_auto_variable ]
!239 = metadata !{i32 190, i32 5, metadata !216, metadata !235}
!240 = metadata !{i32 285, i32 27, metadata !199, null}
!241 = metadata !{i32 786689, metadata !210, metadata !"x", metadata !114, i32 16777403, metadata !124, i32 0, metadata !240} ; [ DW_TAG_arg_variable ]
!242 = metadata !{i32 187, i32 33, metadata !210, metadata !240}
!243 = metadata !{i32 189, i32 34, metadata !216, metadata !240}
!244 = metadata !{i32 786688, metadata !216, metadata !"y", metadata !114, i32 189, metadata !124, i32 0, metadata !240} ; [ DW_TAG_auto_variable ]
!245 = metadata !{i32 190, i32 5, metadata !216, metadata !240}
!246 = metadata !{i32 286, i32 27, metadata !199, null}
!247 = metadata !{i32 786689, metadata !210, metadata !"x", metadata !114, i32 16777403, metadata !124, i32 0, metadata !246} ; [ DW_TAG_arg_variable ]
!248 = metadata !{i32 187, i32 33, metadata !210, metadata !246}
!249 = metadata !{i32 189, i32 34, metadata !216, metadata !246}
!250 = metadata !{i32 786688, metadata !216, metadata !"y", metadata !114, i32 189, metadata !124, i32 0, metadata !246} ; [ DW_TAG_auto_variable ]
!251 = metadata !{i32 190, i32 5, metadata !216, metadata !246}
!252 = metadata !{i32 287, i32 27, metadata !199, null}
!253 = metadata !{i32 786689, metadata !210, metadata !"x", metadata !114, i32 16777403, metadata !124, i32 0, metadata !252} ; [ DW_TAG_arg_variable ]
!254 = metadata !{i32 187, i32 33, metadata !210, metadata !252}
!255 = metadata !{i32 189, i32 34, metadata !216, metadata !252}
!256 = metadata !{i32 786688, metadata !216, metadata !"y", metadata !114, i32 189, metadata !124, i32 0, metadata !252} ; [ DW_TAG_auto_variable ]
!257 = metadata !{i32 190, i32 5, metadata !216, metadata !252}
!258 = metadata !{i32 274, i32 25, metadata !196, null}
!259 = metadata !{i32 786688, metadata !197, metadata !"i", metadata !114, i32 272, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!260 = metadata !{i32 289, i32 1, metadata !197, null}
!261 = metadata !{i32 790532, metadata !262, metadata !"rc", null, i32 292, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable_ro ]
!262 = metadata !{i32 786478, i32 0, metadata !114, metadata !"aes_expandEncKey", metadata !"aes_expandEncKey", metadata !"", metadata !114, i32 292, metadata !263, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !72, i32 293} ; [ DW_TAG_subprogram ]
!263 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !264, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!264 = metadata !{null, metadata !127, metadata !127}
!265 = metadata !{i32 292, i32 51, metadata !262, null}
!266 = metadata !{i32 786689, metadata !210, metadata !"x", metadata !114, i32 16777403, metadata !124, i32 0, metadata !267} ; [ DW_TAG_arg_variable ]
!267 = metadata !{i32 300, i32 11, metadata !268, null}
!268 = metadata !{i32 786443, metadata !262, i32 293, i32 1, metadata !114, i32 28} ; [ DW_TAG_lexical_block ]
!269 = metadata !{i32 187, i32 33, metadata !210, metadata !267}
!270 = metadata !{i32 786689, metadata !262, metadata !"k", null, i32 292, metadata !271, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!271 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !124, metadata !77, i32 0, i32 0} ; [ DW_TAG_array_type ]
!272 = metadata !{i32 292, i32 39, metadata !262, null}
!273 = metadata !{i32 296, i32 5, metadata !268, null}
!274 = metadata !{i32 297, i32 5, metadata !268, null}
!275 = metadata !{i32 298, i32 5, metadata !268, null}
!276 = metadata !{i32 299, i32 5, metadata !268, null}
!277 = metadata !{i32 189, i32 34, metadata !216, metadata !267}
!278 = metadata !{i32 786688, metadata !216, metadata !"y", metadata !114, i32 189, metadata !124, i32 0, metadata !267} ; [ DW_TAG_auto_variable ]
!279 = metadata !{i32 190, i32 5, metadata !216, metadata !267}
!280 = metadata !{i32 302, i32 9, metadata !281, null}
!281 = metadata !{i32 786443, metadata !268, i32 302, i32 5, metadata !114, i32 29} ; [ DW_TAG_lexical_block ]
!282 = metadata !{i32 302, i32 32, metadata !281, null}
!283 = metadata !{i32 302, i32 24, metadata !281, null}
!284 = metadata !{i32 786688, metadata !268, metadata !"i", metadata !114, i32 294, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!285 = metadata !{i32 304, i32 5, metadata !268, null}
!286 = metadata !{i32 305, i32 5, metadata !268, null}
!287 = metadata !{i32 306, i32 5, metadata !268, null}
!288 = metadata !{i32 307, i32 5, metadata !268, null}
!289 = metadata !{i32 309, i32 9, metadata !290, null}
!290 = metadata !{i32 786443, metadata !268, i32 309, i32 5, metadata !114, i32 30} ; [ DW_TAG_lexical_block ]
!291 = metadata !{i32 309, i32 33, metadata !290, null}
!292 = metadata !{i32 309, i32 25, metadata !290, null}
!293 = metadata !{i32 312, i32 1, metadata !268, null}
!294 = metadata !{i32 790532, metadata !295, metadata !"rc", null, i32 315, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable_ro ]
!295 = metadata !{i32 786478, i32 0, metadata !114, metadata !"aes_expandDecKey", metadata !"aes_expandDecKey", metadata !"", metadata !114, i32 315, metadata !263, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !72, i32 316} ; [ DW_TAG_subprogram ]
!296 = metadata !{i32 315, i32 44, metadata !295, null}
!297 = metadata !{i32 319, i32 9, metadata !298, null}
!298 = metadata !{i32 786443, metadata !299, i32 319, i32 5, metadata !114, i32 17} ; [ DW_TAG_lexical_block ]
!299 = metadata !{i32 786443, metadata !295, i32 316, i32 1, metadata !114, i32 16} ; [ DW_TAG_lexical_block ]
!300 = metadata !{i32 319, i32 33, metadata !298, null}
!301 = metadata !{i32 786688, metadata !299, metadata !"i", metadata !114, i32 317, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!302 = metadata !{i32 319, i32 25, metadata !298, null}
!303 = metadata !{i32 322, i32 5, metadata !299, null}
!304 = metadata !{i32 323, i32 5, metadata !299, null}
!305 = metadata !{i32 324, i32 5, metadata !299, null}
!306 = metadata !{i32 325, i32 5, metadata !299, null}
!307 = metadata !{i32 327, i32 9, metadata !308, null}
!308 = metadata !{i32 786443, metadata !299, i32 327, i32 5, metadata !114, i32 18} ; [ DW_TAG_lexical_block ]
!309 = metadata !{i32 327, i32 32, metadata !308, null}
!310 = metadata !{i32 327, i32 24, metadata !308, null}
!311 = metadata !{i32 330, i32 5, metadata !299, null}
!312 = metadata !{i32 331, i32 5, metadata !299, null}
!313 = metadata !{i32 332, i32 5, metadata !299, null}
!314 = metadata !{i32 333, i32 5, metadata !299, null}
!315 = metadata !{i32 334, i32 5, metadata !299, null}
!316 = metadata !{i32 790534, metadata !295, metadata !"rc", null, i32 315, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable_wo ]
!317 = metadata !{i32 335, i32 1, metadata !299, null}
!318 = metadata !{i32 786689, metadata !319, metadata !"buf", null, i32 358, metadata !193, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!319 = metadata !{i32 786478, i32 0, metadata !114, metadata !"aes_encrypt_ecb", metadata !"aes_encrypt_ecb", metadata !"", metadata !114, i32 358, metadata !115, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !72, i32 359} ; [ DW_TAG_subprogram ]
!320 = metadata !{i32 358, i32 49, metadata !319, null}
!321 = metadata !{i32 786689, metadata !322, metadata !"buf", null, i32 218, metadata !193, i32 0, metadata !325} ; [ DW_TAG_arg_variable ]
!322 = metadata !{i32 786478, i32 0, metadata !114, metadata !"aes_addRoundKey_cpy", metadata !"aes_addRoundKey_cpy", metadata !"", metadata !114, i32 218, metadata !323, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !72, i32 219} ; [ DW_TAG_subprogram ]
!323 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !324, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!324 = metadata !{null, metadata !127, metadata !127, metadata !127}
!325 = metadata !{i32 362, i32 5, metadata !326, null}
!326 = metadata !{i32 786443, metadata !319, i32 359, i32 1, metadata !114, i32 5} ; [ DW_TAG_lexical_block ]
!327 = metadata !{i32 218, i32 42, metadata !322, metadata !325}
!328 = metadata !{i32 222, i32 5, metadata !329, metadata !325}
!329 = metadata !{i32 786443, metadata !322, i32 219, i32 1, metadata !114, i32 27} ; [ DW_TAG_lexical_block ]
!330 = metadata !{i32 786688, metadata !329, metadata !"i", metadata !114, i32 220, metadata !124, i32 0, metadata !325} ; [ DW_TAG_auto_variable ]
!331 = metadata !{i32 786688, metadata !326, metadata !"rcon", metadata !114, i32 360, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!332 = metadata !{i32 231, i32 5, metadata !333, metadata !335}
!333 = metadata !{i32 786443, metadata !334, i32 228, i32 1, metadata !114, i32 25} ; [ DW_TAG_lexical_block ]
!334 = metadata !{i32 786478, i32 0, metadata !114, metadata !"aes_shiftRows", metadata !"aes_shiftRows", metadata !"", metadata !114, i32 227, metadata !191, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !72, i32 228} ; [ DW_TAG_subprogram ]
!335 = metadata !{i32 366, i32 9, metadata !336, null}
!336 = metadata !{i32 786443, metadata !337, i32 364, i32 5, metadata !114, i32 7} ; [ DW_TAG_lexical_block ]
!337 = metadata !{i32 786443, metadata !326, i32 363, i32 5, metadata !114, i32 6} ; [ DW_TAG_lexical_block ]
!338 = metadata !{i32 232, i32 5, metadata !333, metadata !335}
!339 = metadata !{i32 233, i32 5, metadata !333, metadata !335}
!340 = metadata !{i32 234, i32 5, metadata !333, metadata !335}
!341 = metadata !{i32 363, i32 9, metadata !337, null}
!342 = metadata !{i32 222, i32 17, metadata !329, metadata !325}
!343 = metadata !{i32 198, i32 5, metadata !344, metadata !346}
!344 = metadata !{i32 786443, metadata !345, i32 195, i32 1, metadata !114, i32 26} ; [ DW_TAG_lexical_block ]
!345 = metadata !{i32 786478, i32 0, metadata !114, metadata !"aes_subBytes", metadata !"aes_subBytes", metadata !"", metadata !114, i32 194, metadata !191, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !72, i32 195} ; [ DW_TAG_subprogram ]
!346 = metadata !{i32 365, i32 9, metadata !336, null}
!347 = metadata !{i32 198, i32 5, metadata !344, metadata !348}
!348 = metadata !{i32 371, i32 5, metadata !326, null}
!349 = metadata !{i32 786688, metadata !344, metadata !"i", metadata !114, i32 196, metadata !124, i32 0, metadata !346} ; [ DW_TAG_auto_variable ]
!350 = metadata !{i32 198, i32 17, metadata !344, metadata !346}
!351 = metadata !{i32 786689, metadata !334, metadata !"buf", null, i32 227, metadata !193, i32 0, metadata !335} ; [ DW_TAG_arg_variable ]
!352 = metadata !{i32 227, i32 36, metadata !334, metadata !335}
!353 = metadata !{i32 786688, metadata !333, metadata !"i", metadata !114, i32 229, metadata !124, i32 0, metadata !335} ; [ DW_TAG_auto_variable ]
!354 = metadata !{i32 786688, metadata !333, metadata !"j", metadata !114, i32 229, metadata !124, i32 0, metadata !335} ; [ DW_TAG_auto_variable ]
!355 = metadata !{i32 786689, metadata !356, metadata !"buf", null, i32 251, metadata !193, i32 0, metadata !357} ; [ DW_TAG_arg_variable ]
!356 = metadata !{i32 786478, i32 0, metadata !114, metadata !"aes_mixColumns", metadata !"aes_mixColumns", metadata !"", metadata !114, i32 251, metadata !191, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !72, i32 252} ; [ DW_TAG_subprogram ]
!357 = metadata !{i32 367, i32 9, metadata !336, null}
!358 = metadata !{i32 251, i32 37, metadata !356, metadata !357}
!359 = metadata !{i32 255, i32 10, metadata !360, metadata !357}
!360 = metadata !{i32 786443, metadata !361, i32 255, i32 5, metadata !114, i32 23} ; [ DW_TAG_lexical_block ]
!361 = metadata !{i32 786443, metadata !356, i32 252, i32 1, metadata !114, i32 22} ; [ DW_TAG_lexical_block ]
!362 = metadata !{i32 257, i32 9, metadata !363, metadata !357}
!363 = metadata !{i32 786443, metadata !360, i32 256, i32 5, metadata !114, i32 24} ; [ DW_TAG_lexical_block ]
!364 = metadata !{i32 786688, metadata !361, metadata !"a", metadata !114, i32 253, metadata !124, i32 0, metadata !357} ; [ DW_TAG_auto_variable ]
!365 = metadata !{i32 258, i32 9, metadata !363, metadata !357}
!366 = metadata !{i32 786688, metadata !361, metadata !"b", metadata !114, i32 253, metadata !124, i32 0, metadata !357} ; [ DW_TAG_auto_variable ]
!367 = metadata !{i32 259, i32 9, metadata !363, metadata !357}
!368 = metadata !{i32 786688, metadata !361, metadata !"c", metadata !114, i32 253, metadata !124, i32 0, metadata !357} ; [ DW_TAG_auto_variable ]
!369 = metadata !{i32 260, i32 9, metadata !363, metadata !357}
!370 = metadata !{i32 786688, metadata !361, metadata !"d", metadata !114, i32 253, metadata !124, i32 0, metadata !357} ; [ DW_TAG_auto_variable ]
!371 = metadata !{i32 261, i32 9, metadata !363, metadata !357}
!372 = metadata !{i32 786688, metadata !361, metadata !"e", metadata !114, i32 253, metadata !124, i32 0, metadata !357} ; [ DW_TAG_auto_variable ]
!373 = metadata !{i32 786689, metadata !210, metadata !"x", metadata !114, i32 16777403, metadata !124, i32 0, metadata !374} ; [ DW_TAG_arg_variable ]
!374 = metadata !{i32 262, i32 23, metadata !363, metadata !357}
!375 = metadata !{i32 187, i32 33, metadata !210, metadata !374}
!376 = metadata !{i32 189, i32 34, metadata !216, metadata !374}
!377 = metadata !{i32 786688, metadata !216, metadata !"y", metadata !114, i32 189, metadata !124, i32 0, metadata !374} ; [ DW_TAG_auto_variable ]
!378 = metadata !{i32 190, i32 5, metadata !216, metadata !374}
!379 = metadata !{i32 263, i32 27, metadata !363, metadata !357}
!380 = metadata !{i32 786689, metadata !210, metadata !"x", metadata !114, i32 16777403, metadata !124, i32 0, metadata !379} ; [ DW_TAG_arg_variable ]
!381 = metadata !{i32 187, i32 33, metadata !210, metadata !379}
!382 = metadata !{i32 189, i32 34, metadata !216, metadata !379}
!383 = metadata !{i32 786688, metadata !216, metadata !"y", metadata !114, i32 189, metadata !124, i32 0, metadata !379} ; [ DW_TAG_auto_variable ]
!384 = metadata !{i32 190, i32 5, metadata !216, metadata !379}
!385 = metadata !{i32 264, i32 27, metadata !363, metadata !357}
!386 = metadata !{i32 786689, metadata !210, metadata !"x", metadata !114, i32 16777403, metadata !124, i32 0, metadata !385} ; [ DW_TAG_arg_variable ]
!387 = metadata !{i32 187, i32 33, metadata !210, metadata !385}
!388 = metadata !{i32 189, i32 34, metadata !216, metadata !385}
!389 = metadata !{i32 786688, metadata !216, metadata !"y", metadata !114, i32 189, metadata !124, i32 0, metadata !385} ; [ DW_TAG_auto_variable ]
!390 = metadata !{i32 190, i32 5, metadata !216, metadata !385}
!391 = metadata !{i32 265, i32 27, metadata !363, metadata !357}
!392 = metadata !{i32 786689, metadata !210, metadata !"x", metadata !114, i32 16777403, metadata !124, i32 0, metadata !391} ; [ DW_TAG_arg_variable ]
!393 = metadata !{i32 187, i32 33, metadata !210, metadata !391}
!394 = metadata !{i32 189, i32 34, metadata !216, metadata !391}
!395 = metadata !{i32 786688, metadata !216, metadata !"y", metadata !114, i32 189, metadata !124, i32 0, metadata !391} ; [ DW_TAG_auto_variable ]
!396 = metadata !{i32 190, i32 5, metadata !216, metadata !391}
!397 = metadata !{i32 255, i32 25, metadata !360, metadata !357}
!398 = metadata !{i32 786688, metadata !361, metadata !"i", metadata !114, i32 253, metadata !124, i32 0, metadata !357} ; [ DW_TAG_auto_variable ]
!399 = metadata !{i32 368, i32 9, metadata !336, null}
!400 = metadata !{i32 368, i32 21, metadata !336, null}
!401 = metadata !{i32 369, i32 14, metadata !336, null}
!402 = metadata !{i32 369, i32 49, metadata !336, null}
!403 = metadata !{i32 363, i32 34, metadata !337, null}
!404 = metadata !{i32 786688, metadata !326, metadata !"i", metadata !114, i32 360, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!405 = metadata !{i32 786688, metadata !344, metadata !"i", metadata !114, i32 196, metadata !124, i32 0, metadata !348} ; [ DW_TAG_auto_variable ]
!406 = metadata !{i32 198, i32 17, metadata !344, metadata !348}
!407 = metadata !{i32 373, i32 5, metadata !326, null}
!408 = metadata !{i32 786689, metadata !334, metadata !"buf", null, i32 227, metadata !193, i32 0, metadata !409} ; [ DW_TAG_arg_variable ]
!409 = metadata !{i32 372, i32 5, metadata !326, null}
!410 = metadata !{i32 227, i32 36, metadata !334, metadata !409}
!411 = metadata !{i32 231, i32 5, metadata !333, metadata !409}
!412 = metadata !{i32 786688, metadata !333, metadata !"i", metadata !114, i32 229, metadata !124, i32 0, metadata !409} ; [ DW_TAG_auto_variable ]
!413 = metadata !{i32 232, i32 5, metadata !333, metadata !409}
!414 = metadata !{i32 233, i32 5, metadata !333, metadata !409}
!415 = metadata !{i32 786688, metadata !333, metadata !"j", metadata !114, i32 229, metadata !124, i32 0, metadata !409} ; [ DW_TAG_auto_variable ]
!416 = metadata !{i32 234, i32 5, metadata !333, metadata !409}
!417 = metadata !{i32 374, i32 5, metadata !326, null}
!418 = metadata !{i32 375, i32 1, metadata !326, null}
!419 = metadata !{i32 786689, metadata !420, metadata !"buf", null, i32 378, metadata !193, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!420 = metadata !{i32 786478, i32 0, metadata !114, metadata !"aes_decrypt_ecb", metadata !"aes_decrypt_ecb", metadata !"", metadata !114, i32 378, metadata !115, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !72, i32 379} ; [ DW_TAG_subprogram ]
!421 = metadata !{i32 378, i32 49, metadata !420, null}
!422 = metadata !{i32 786689, metadata !322, metadata !"buf", null, i32 218, metadata !193, i32 0, metadata !423} ; [ DW_TAG_arg_variable ]
!423 = metadata !{i32 382, i32 5, metadata !424, null}
!424 = metadata !{i32 786443, metadata !420, i32 379, i32 1, metadata !114, i32 8} ; [ DW_TAG_lexical_block ]
!425 = metadata !{i32 218, i32 42, metadata !322, metadata !423}
!426 = metadata !{i32 222, i32 5, metadata !329, metadata !423}
!427 = metadata !{i32 786688, metadata !329, metadata !"i", metadata !114, i32 220, metadata !124, i32 0, metadata !423} ; [ DW_TAG_auto_variable ]
!428 = metadata !{i32 222, i32 17, metadata !329, metadata !423}
!429 = metadata !{i32 786689, metadata !430, metadata !"buf", null, i32 239, metadata !193, i32 0, metadata !431} ; [ DW_TAG_arg_variable ]
!430 = metadata !{i32 786478, i32 0, metadata !114, metadata !"aes_shiftRows_inv", metadata !"aes_shiftRows_inv", metadata !"", metadata !114, i32 239, metadata !191, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !72, i32 240} ; [ DW_TAG_subprogram ]
!431 = metadata !{i32 383, i32 5, metadata !424, null}
!432 = metadata !{i32 239, i32 40, metadata !430, metadata !431}
!433 = metadata !{i32 243, i32 5, metadata !434, metadata !431}
!434 = metadata !{i32 786443, metadata !430, i32 240, i32 1, metadata !114, i32 20} ; [ DW_TAG_lexical_block ]
!435 = metadata !{i32 786688, metadata !434, metadata !"i", metadata !114, i32 241, metadata !124, i32 0, metadata !431} ; [ DW_TAG_auto_variable ]
!436 = metadata !{i32 244, i32 5, metadata !434, metadata !431}
!437 = metadata !{i32 245, i32 5, metadata !434, metadata !431}
!438 = metadata !{i32 786688, metadata !434, metadata !"j", metadata !114, i32 241, metadata !124, i32 0, metadata !431} ; [ DW_TAG_auto_variable ]
!439 = metadata !{i32 246, i32 5, metadata !434, metadata !431}
!440 = metadata !{i32 786689, metadata !441, metadata !"buf", null, i32 202, metadata !193, i32 0, metadata !442} ; [ DW_TAG_arg_variable ]
!441 = metadata !{i32 786478, i32 0, metadata !114, metadata !"aes_subBytes_inv", metadata !"aes_subBytes_inv", metadata !"", metadata !114, i32 202, metadata !191, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !72, i32 203} ; [ DW_TAG_subprogram ]
!442 = metadata !{i32 384, i32 5, metadata !424, null}
!443 = metadata !{i32 202, i32 39, metadata !441, metadata !442}
!444 = metadata !{i32 206, i32 5, metadata !445, metadata !442}
!445 = metadata !{i32 786443, metadata !441, i32 203, i32 1, metadata !114, i32 19} ; [ DW_TAG_lexical_block ]
!446 = metadata !{i32 786688, metadata !445, metadata !"i", metadata !114, i32 204, metadata !124, i32 0, metadata !442} ; [ DW_TAG_auto_variable ]
!447 = metadata !{i32 786688, metadata !424, metadata !"rcon", metadata !114, i32 380, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!448 = metadata !{i32 386, i32 10, metadata !449, null}
!449 = metadata !{i32 786443, metadata !424, i32 386, i32 5, metadata !114, i32 9} ; [ DW_TAG_lexical_block ]
!450 = metadata !{i32 206, i32 17, metadata !445, metadata !442}
!451 = metadata !{i32 786688, metadata !424, metadata !"i", metadata !114, i32 380, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!452 = metadata !{i32 388, i32 9, metadata !453, null}
!453 = metadata !{i32 786443, metadata !449, i32 387, i32 5, metadata !114, i32 10} ; [ DW_TAG_lexical_block ]
!454 = metadata !{i32 390, i32 13, metadata !455, null}
!455 = metadata !{i32 786443, metadata !453, i32 389, i32 9, metadata !114, i32 11} ; [ DW_TAG_lexical_block ]
!456 = metadata !{i32 391, i32 13, metadata !455, null}
!457 = metadata !{i32 392, i32 9, metadata !455, null}
!458 = metadata !{i32 393, i32 14, metadata !453, null}
!459 = metadata !{i32 394, i32 9, metadata !453, null}
!460 = metadata !{i32 786689, metadata !430, metadata !"buf", null, i32 239, metadata !193, i32 0, metadata !461} ; [ DW_TAG_arg_variable ]
!461 = metadata !{i32 395, i32 9, metadata !453, null}
!462 = metadata !{i32 239, i32 40, metadata !430, metadata !461}
!463 = metadata !{i32 243, i32 5, metadata !434, metadata !461}
!464 = metadata !{i32 786688, metadata !434, metadata !"i", metadata !114, i32 241, metadata !124, i32 0, metadata !461} ; [ DW_TAG_auto_variable ]
!465 = metadata !{i32 244, i32 5, metadata !434, metadata !461}
!466 = metadata !{i32 245, i32 5, metadata !434, metadata !461}
!467 = metadata !{i32 786688, metadata !434, metadata !"j", metadata !114, i32 241, metadata !124, i32 0, metadata !461} ; [ DW_TAG_auto_variable ]
!468 = metadata !{i32 246, i32 5, metadata !434, metadata !461}
!469 = metadata !{i32 786689, metadata !441, metadata !"buf", null, i32 202, metadata !193, i32 0, metadata !470} ; [ DW_TAG_arg_variable ]
!470 = metadata !{i32 396, i32 9, metadata !453, null}
!471 = metadata !{i32 202, i32 39, metadata !441, metadata !470}
!472 = metadata !{i32 206, i32 5, metadata !445, metadata !470}
!473 = metadata !{i32 786688, metadata !445, metadata !"i", metadata !114, i32 204, metadata !124, i32 0, metadata !470} ; [ DW_TAG_auto_variable ]
!474 = metadata !{i32 206, i32 17, metadata !445, metadata !470}
!475 = metadata !{i32 397, i32 5, metadata !453, null}
!476 = metadata !{i32 398, i32 5, metadata !424, null}
!477 = metadata !{i32 399, i32 1, metadata !424, null}
!478 = metadata !{i32 786689, metadata !479, metadata !"buf", null, i32 210, metadata !193, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!479 = metadata !{i32 786478, i32 0, metadata !114, metadata !"aes_addRoundKey", metadata !"aes_addRoundKey", metadata !"", metadata !114, i32 210, metadata !263, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !72, i32 211} ; [ DW_TAG_subprogram ]
!480 = metadata !{i32 210, i32 38, metadata !479, null}
!481 = metadata !{i32 786689, metadata !479, metadata !"key", null, i32 210, metadata !271, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!482 = metadata !{i32 210, i32 52, metadata !479, null}
!483 = metadata !{i32 214, i32 5, metadata !484, null}
!484 = metadata !{i32 786443, metadata !479, i32 211, i32 1, metadata !114, i32 21} ; [ DW_TAG_lexical_block ]
!485 = metadata !{i32 786688, metadata !484, metadata !"i", metadata !114, i32 212, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!486 = metadata !{i32 214, i32 17, metadata !484, null}
!487 = metadata !{i32 215, i32 1, metadata !484, null}
