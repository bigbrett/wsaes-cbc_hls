; ModuleID = '/home/brett/Thesis/Vivado_WS/aescbc/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xorv = internal unnamed_addr global [16 x i8] zeroinitializer, align 16
@sboxinv = internal unnamed_addr constant [256 x i8] c"R\09j\D506\A58\BF@\A3\9E\81\F3\D7\FB|\E39\82\9B/\FF\874\8ECD\C4\DE\E9\CBT{\942\A6\C2#=\EEL\95\0BB\FA\C3N\08.\A1f(\D9$\B2v[\A2Im\8B\D1%r\F8\F6d\86h\98\16\D4\A4\5C\CC]e\B6\92lpHP\FD\ED\B9\DA^\15FW\A7\8D\9D\84\90\D8\AB\00\8C\BC\D3\0A\F7\E4X\05\B8\B3E\06\D0,\1E\8F\CA?\0F\02\C1\AF\BD\03\01\13\8Ak:\91\11AOg\DC\EA\97\F2\CF\CE\F0\B4\E6s\96\ACt\22\E7\AD5\85\E2\F97\E8\1Cu\DFnG\F1\1Aq\1D)\C5\89o\B7b\0E\AA\18\BE\1B\FCV>K\C6\D2y \9A\DB\C0\FEx\CDZ\F4\1F\DD\A83\88\07\C71\B1\12\10Y'\80\EC_`Q\7F\A9\19\B5J\0D-\E5z\9F\93\C9\9C\EF\A0\E0;M\AE*\F5\B0\C8\EB\BB<\83S\99a\17+\04~\BAw\D6&\E1i\14cU!\0C}", align 16
@sbox = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 16
@lastbuf = internal unnamed_addr global [16 x i8] zeroinitializer, align 16
@key = internal unnamed_addr global [32 x i8] zeroinitializer, align 16
@iv = internal unnamed_addr global [16 x i8] zeroinitializer, align 16
@ctx_key = internal global [32 x i8] zeroinitializer
@ctx_enckey = internal unnamed_addr global [32 x i8] zeroinitializer
@ctx_deckey = internal global [32 x i8] zeroinitializer
@aescbc_str = internal unnamed_addr constant [7 x i8] c"aescbc\00"
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00"
@p_str9 = private unnamed_addr constant [14 x i8] c"aescbc_label0\00", align 1
@p_str8 = private unnamed_addr constant [14 x i8] c"aescbc_label9\00", align 1
@p_str7 = private unnamed_addr constant [14 x i8] c"aescbc_label7\00", align 1
@p_str6 = private unnamed_addr constant [14 x i8] c"aescbc_label1\00", align 1
@p_str5 = private unnamed_addr constant [15 x i8] c"aescbc_label11\00", align 1
@p_str4 = private unnamed_addr constant [15 x i8] c"aescbc_label10\00", align 1
@p_str3 = private unnamed_addr constant [14 x i8] c"aescbc_label4\00", align 1
@p_str2 = private unnamed_addr constant [15 x i8] c"aescbc_label12\00", align 1
@p_str18 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str17 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str16 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str15 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str14 = private unnamed_addr constant [14 x i8] c"aescbc_label6\00", align 1
@p_str13 = private unnamed_addr constant [14 x i8] c"aescbc_label8\00", align 1
@p_str12 = private unnamed_addr constant [14 x i8] c"aescbc_label5\00", align 1
@p_str11 = private unnamed_addr constant [14 x i8] c"aescbc_label3\00", align 1
@p_str10 = private unnamed_addr constant [14 x i8] c"aescbc_label2\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

declare i8 @llvm.part.select.i8(i8, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @aescbc([16 x i8]* %data_in, [16 x i8]* %data_out, i3 zeroext %mode, [32 x i8]* %key_in, [16 x i8]* %iv_in) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([16 x i8]* %data_in) nounwind, !map !39
  call void (...)* @_ssdm_op_SpecBitsMap([16 x i8]* %data_out) nounwind, !map !45
  call void (...)* @_ssdm_op_SpecBitsMap(i3 %mode) nounwind, !map !49
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %key_in) nounwind, !map !55
  call void (...)* @_ssdm_op_SpecBitsMap([16 x i8]* %iv_in) nounwind, !map !61
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @aescbc_str) nounwind
  %mode_read = call i3 @_ssdm_op_Read.s_axilite.i3(i3 %mode) nounwind
  %buf = alloca [16 x i8], align 16
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %key_in, [1 x i8]* @p_str17, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str17, i32 -1, [1 x i8]* @p_str17, [1 x i8]* @p_str17, [1 x i8]* @p_str17, [1 x i8]* @p_str17, [1 x i8]* @p_str17) nounwind
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %key_in, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 32, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty_5 = call i32 (...)* @_ssdm_op_SpecMemCore([16 x i8]* %iv_in, [1 x i8]* @p_str18, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str18, i32 -1, [1 x i8]* @p_str18, [1 x i8]* @p_str18, [1 x i8]* @p_str18, [1 x i8]* @p_str18, [1 x i8]* @p_str18) nounwind
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %iv_in, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty_6 = call i32 (...)* @_ssdm_op_SpecMemCore([16 x i8]* %data_in, [1 x i8]* @p_str15, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str15, i32 -1, [1 x i8]* @p_str15, [1 x i8]* @p_str15, [1 x i8]* @p_str15, [1 x i8]* @p_str15, [1 x i8]* @p_str15) nounwind
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %data_in, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty_7 = call i32 (...)* @_ssdm_op_SpecMemCore([16 x i8]* %data_out, [1 x i8]* @p_str16, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str16, i32 -1, [1 x i8]* @p_str16, [1 x i8]* @p_str16, [1 x i8]* @p_str16, [1 x i8]* @p_str16, [1 x i8]* @p_str16) nounwind
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %data_out, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i3 %mode, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  switch i3 %mode_read, label %.loopexit [
    i3 0, label %.preheader11.preheader
    i3 1, label %.preheader7.preheader
    i3 2, label %.preheader3.preheader
  ]

.preheader11.preheader:                           ; preds = %0
  br label %.preheader11

.preheader7.preheader:                            ; preds = %0
  br label %.preheader7

.preheader3.preheader:                            ; preds = %0
  br label %.preheader3

.preheader11:                                     ; preds = %.preheader11.preheader, %1
  %i = phi i5 [ %i_12, %1 ], [ 0, %.preheader11.preheader ]
  %tmp_3 = icmp eq i5 %i, -16
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_12 = add i5 %i, 1
  br i1 %tmp_3, label %.preheader10.preheader, label %1

.preheader10.preheader:                           ; preds = %.preheader11
  br label %.preheader10

; <label>:1                                       ; preds = %.preheader11
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str2) nounwind
  %tmp_6 = zext i5 %i to i64
  %data_out_addr = getelementptr [16 x i8]* %data_out, i64 0, i64 %tmp_6
  store i8 0, i8* %data_out_addr, align 1
  br label %.preheader11

.preheader10:                                     ; preds = %.preheader10.preheader, %2
  %i_1 = phi i6 [ %i_15, %2 ], [ 0, %.preheader10.preheader ]
  %tmp_1 = icmp eq i6 %i_1, -32
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind
  %i_15 = add i6 %i_1, 1
  br i1 %tmp_1, label %.preheader9.preheader, label %2

.preheader9.preheader:                            ; preds = %.preheader10
  br label %.preheader9

; <label>:2                                       ; preds = %.preheader10
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str3) nounwind
  %tmp_9 = zext i6 %i_1 to i64
  %key_in_addr = getelementptr [32 x i8]* %key_in, i64 0, i64 %tmp_9
  %key_in_load = load i8* %key_in_addr, align 1
  %key_addr = getelementptr inbounds [32 x i8]* @key, i64 0, i64 %tmp_9
  store i8 %key_in_load, i8* %key_addr, align 1
  br label %.preheader10

.preheader9:                                      ; preds = %.preheader9.preheader, %3
  %i_2 = phi i5 [ %i_18, %3 ], [ 0, %.preheader9.preheader ]
  %tmp_13 = icmp eq i5 %i_2, -16
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_18 = add i5 %i_2, 1
  br i1 %tmp_13, label %.preheader8.preheader, label %3

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8

; <label>:3                                       ; preds = %.preheader9
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str4) nounwind
  %tmp_16 = zext i5 %i_2 to i64
  %iv_in_addr = getelementptr [16 x i8]* %iv_in, i64 0, i64 %tmp_16
  %iv_in_load = load i8* %iv_in_addr, align 1
  %iv_addr = getelementptr inbounds [16 x i8]* @iv, i64 0, i64 %tmp_16
  store i8 %iv_in_load, i8* %iv_addr, align 1
  br label %.preheader9

.preheader8:                                      ; preds = %.preheader8.preheader, %4
  %i_3 = phi i5 [ %i_21, %4 ], [ 0, %.preheader8.preheader ]
  %tmp_20 = icmp eq i5 %i_3, -16
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_21 = add i5 %i_3, 1
  br i1 %tmp_20, label %.preheader24.preheader, label %4

.preheader24.preheader:                           ; preds = %.preheader8
  br label %.preheader24

; <label>:4                                       ; preds = %.preheader8
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str5) nounwind
  %tmp_23 = zext i5 %i_3 to i64
  %iv_addr_1 = getelementptr inbounds [16 x i8]* @iv, i64 0, i64 %tmp_23
  %iv_load = load i8* %iv_addr_1, align 1
  %xorv_addr_3 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_23
  store i8 %iv_load, i8* %xorv_addr_3, align 1
  br label %.preheader8

.preheader24:                                     ; preds = %.preheader24.preheader, %5
  %i_i = phi i6 [ %i_25, %5 ], [ 0, %.preheader24.preheader ]
  %tmp_i = icmp eq i6 %i_i, -32
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind
  %i_25 = add i6 %i_i, 1
  br i1 %tmp_i, label %.preheader.i.preheader, label %5

.preheader.i.preheader:                           ; preds = %.preheader24
  br label %.preheader.i

; <label>:5                                       ; preds = %.preheader24
  %tmp_i_13 = zext i6 %i_i to i64
  %key_addr_1 = getelementptr [32 x i8]* @key, i64 0, i64 %tmp_i_13
  %key_load = load i8* %key_addr_1, align 1
  %ctx_deckey_addr = getelementptr [32 x i8]* @ctx_deckey, i64 0, i64 %tmp_i_13
  store i8 %key_load, i8* %ctx_deckey_addr, align 1
  %ctx_enckey_addr = getelementptr [32 x i8]* @ctx_enckey, i64 0, i64 %tmp_i_13
  store i8 %key_load, i8* %ctx_enckey_addr, align 1
  br label %.preheader24

.preheader.i:                                     ; preds = %.preheader.i.preheader, %6
  %rcon_i = phi i8 [ %rcon, %6 ], [ 1, %.preheader.i.preheader ]
  %i_26 = phi i3 [ %phitmp_i, %6 ], [ -1, %.preheader.i.preheader ]
  %tmp_86_i = icmp eq i3 %i_26, 0
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) nounwind
  br i1 %tmp_86_i, label %.loopexit.loopexit9, label %6

; <label>:6                                       ; preds = %.preheader.i
  %rcon = call fastcc i8 @aes_expandEncKey([32 x i8]* @ctx_deckey, i8 %rcon_i) nounwind
  %phitmp_i = add i3 %i_26, -1
  br label %.preheader.i

.preheader7:                                      ; preds = %.preheader7.preheader, %7
  %i_4 = phi i5 [ %i_13, %7 ], [ 0, %.preheader7.preheader ]
  %tmp_4 = icmp eq i5 %i_4, -16
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_13 = add i5 %i_4, 1
  br i1 %tmp_4, label %.preheader6.preheader, label %7

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6

; <label>:7                                       ; preds = %.preheader7
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str6) nounwind
  %tmp_8 = zext i5 %i_4 to i64
  %data_in_addr = getelementptr [16 x i8]* %data_in, i64 0, i64 %tmp_8
  %data_in_load = load i8* %data_in_addr, align 1
  %buf_addr = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_8
  store i8 %data_in_load, i8* %buf_addr, align 1
  br label %.preheader7

.preheader6:                                      ; preds = %.preheader6.preheader, %8
  %i_5 = phi i5 [ %i_16, %8 ], [ 0, %.preheader6.preheader ]
  %tmp_2 = icmp eq i5 %i_5, -16
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_16 = add i5 %i_5, 1
  br i1 %tmp_2, label %9, label %8

; <label>:8                                       ; preds = %.preheader6
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str7) nounwind
  %tmp_10 = zext i5 %i_5 to i64
  %buf_addr_2 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_10
  %buf_load = load i8* %buf_addr_2, align 1
  %xorv_addr = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_10
  %xorv_load = load i8* %xorv_addr, align 1
  %tmp_11 = xor i8 %xorv_load, %buf_load
  store i8 %tmp_11, i8* %buf_addr_2, align 1
  br label %.preheader6

; <label>:9                                       ; preds = %.preheader6
  call fastcc void @aes_encrypt_ecb([16 x i8]* %buf) nounwind
  br label %10

; <label>:10                                      ; preds = %11, %9
  %i_6 = phi i5 [ 0, %9 ], [ %i_19, %11 ]
  %tmp_14 = icmp eq i5 %i_6, -16
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_19 = add i5 %i_6, 1
  br i1 %tmp_14, label %.preheader4.preheader, label %11

.preheader4.preheader:                            ; preds = %10
  br label %.preheader4

; <label>:11                                      ; preds = %10
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str8) nounwind
  %tmp_17 = zext i5 %i_6 to i64
  %buf_addr_4 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_17
  %buf_load_2 = load i8* %buf_addr_4, align 1
  %xorv_addr_1 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_17
  store i8 %buf_load_2, i8* %xorv_addr_1, align 1
  br label %10

.preheader4:                                      ; preds = %.preheader4.preheader, %12
  %i_7 = phi i5 [ %i_22, %12 ], [ 0, %.preheader4.preheader ]
  %tmp_21 = icmp eq i5 %i_7, -16
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_22 = add i5 %i_7, 1
  br i1 %tmp_21, label %.loopexit.loopexit8, label %12

; <label>:12                                      ; preds = %.preheader4
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str9) nounwind
  %tmp_24 = zext i5 %i_7 to i64
  %buf_addr_6 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_24
  %buf_load_4 = load i8* %buf_addr_6, align 1
  %data_out_addr_1 = getelementptr [16 x i8]* %data_out, i64 0, i64 %tmp_24
  store i8 %buf_load_4, i8* %data_out_addr_1, align 1
  br label %.preheader4

.preheader3:                                      ; preds = %.preheader3.preheader, %13
  %i_8 = phi i5 [ %i_14, %13 ], [ 0, %.preheader3.preheader ]
  %tmp_5 = icmp eq i5 %i_8, -16
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_14 = add i5 %i_8, 1
  br i1 %tmp_5, label %.preheader2.preheader, label %13

.preheader2.preheader:                            ; preds = %.preheader3
  br label %.preheader2

; <label>:13                                      ; preds = %.preheader3
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str10) nounwind
  %tmp_s = zext i5 %i_8 to i64
  %data_in_addr_1 = getelementptr [16 x i8]* %data_in, i64 0, i64 %tmp_s
  %data_in_load_1 = load i8* %data_in_addr_1, align 1
  %buf_addr_1 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_s
  store i8 %data_in_load_1, i8* %buf_addr_1, align 1
  br label %.preheader3

.preheader2:                                      ; preds = %.preheader2.preheader, %14
  %i_9 = phi i5 [ %i_17, %14 ], [ 0, %.preheader2.preheader ]
  %tmp_7 = icmp eq i5 %i_9, -16
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_17 = add i5 %i_9, 1
  br i1 %tmp_7, label %15, label %14

; <label>:14                                      ; preds = %.preheader2
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str11) nounwind
  %tmp_12 = zext i5 %i_9 to i64
  %buf_addr_3 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_12
  %buf_load_1 = load i8* %buf_addr_3, align 1
  %lastbuf_addr = getelementptr inbounds [16 x i8]* @lastbuf, i64 0, i64 %tmp_12
  store i8 %buf_load_1, i8* %lastbuf_addr, align 1
  br label %.preheader2

; <label>:15                                      ; preds = %.preheader2
  call fastcc void @aes_decrypt_ecb([16 x i8]* %buf) nounwind
  br label %16

; <label>:16                                      ; preds = %17, %15
  %i_s = phi i5 [ 0, %15 ], [ %i_20, %17 ]
  %tmp_15 = icmp eq i5 %i_s, -16
  %empty_21 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_20 = add i5 %i_s, 1
  br i1 %tmp_15, label %.preheader1.preheader, label %17

.preheader1.preheader:                            ; preds = %16
  br label %.preheader1

; <label>:17                                      ; preds = %16
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str12) nounwind
  %tmp_18 = zext i5 %i_s to i64
  %buf_addr_5 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_18
  %buf_load_3 = load i8* %buf_addr_5, align 1
  %xorv_addr_2 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_18
  %xorv_load_1 = load i8* %xorv_addr_2, align 1
  %tmp_19 = xor i8 %xorv_load_1, %buf_load_3
  store i8 %tmp_19, i8* %buf_addr_5, align 1
  br label %16

.preheader1:                                      ; preds = %.preheader1.preheader, %18
  %i_10 = phi i5 [ %i_23, %18 ], [ 0, %.preheader1.preheader ]
  %tmp_22 = icmp eq i5 %i_10, -16
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_23 = add i5 %i_10, 1
  br i1 %tmp_22, label %.preheader.preheader, label %18

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader

; <label>:18                                      ; preds = %.preheader1
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str13) nounwind
  %tmp_25 = zext i5 %i_10 to i64
  %lastbuf_addr_1 = getelementptr inbounds [16 x i8]* @lastbuf, i64 0, i64 %tmp_25
  %lastbuf_load = load i8* %lastbuf_addr_1, align 1
  %xorv_addr_4 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_25
  store i8 %lastbuf_load, i8* %xorv_addr_4, align 1
  br label %.preheader1

.preheader:                                       ; preds = %.preheader.preheader, %19
  %i_11 = phi i5 [ %i_24, %19 ], [ 0, %.preheader.preheader ]
  %tmp_26 = icmp eq i5 %i_11, -16
  %empty_23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_24 = add i5 %i_11, 1
  br i1 %tmp_26, label %.loopexit.loopexit, label %19

; <label>:19                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str14) nounwind
  %tmp_27 = zext i5 %i_11 to i64
  %buf_addr_7 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_27
  %buf_load_5 = load i8* %buf_addr_7, align 1
  %data_out_addr_2 = getelementptr [16 x i8]* %data_out, i64 0, i64 %tmp_27
  store i8 %buf_load_5, i8* %data_out_addr_2, align 1
  br label %.preheader

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit.loopexit8:                              ; preds = %.preheader4
  br label %.loopexit

.loopexit.loopexit9:                              ; preds = %.preheader.i
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit9, %.loopexit.loopexit8, %.loopexit.loopexit, %0
  ret void
}

define internal fastcc void @aes_mixColumns_inv([16 x i8]* nocapture %buf_r) {
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 0, %0 ], [ %i_27, %2 ]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i, i32 4)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  br i1 %tmp, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp_s = zext i5 %i to i64
  %buf_addr = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_s
  %a = load i8* %buf_addr, align 1
  %tmp_1 = trunc i5 %i to i4
  %tmp_28 = or i4 %tmp_1, 1
  %tmp_29 = zext i4 %tmp_28 to i64
  %buf_addr_8 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_29
  %b = load i8* %buf_addr_8, align 1
  %tmp_30 = or i4 %tmp_1, 2
  %tmp_31 = zext i4 %tmp_30 to i64
  %buf_addr_9 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_31
  %c = load i8* %buf_addr_9, align 1
  %tmp_32 = or i4 %tmp_1, 3
  %tmp_33 = zext i4 %tmp_32 to i64
  %buf_addr_10 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_33
  %d = load i8* %buf_addr_10, align 1
  %x_assign_5 = xor i8 %b, %a
  %tmp1 = xor i8 %d, %x_assign_5
  %e = xor i8 %tmp1, %c
  %y_1 = shl i8 %e, 1
  %tmp_3 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %e, i32 7)
  %tmp_1_i = xor i8 %y_1, 27
  %y_19 = select i1 %tmp_3, i8 %tmp_1_i, i8 %y_1
  %tmp2 = xor i8 %a, %y_19
  %x_assign_1 = xor i8 %tmp2, %c
  %y_3 = shl i8 %x_assign_1, 1
  %tmp_5 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1, i32 7)
  %tmp_1_i1 = xor i8 %y_3, 27
  %y_4 = select i1 %tmp_5, i8 %tmp_1_i1, i8 %y_3
  %y_5 = shl i8 %y_4, 1
  %tmp_7 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %y_4, i32 7)
  %tmp_1_i2 = xor i8 %y_5, 27
  %y_6 = select i1 %tmp_7, i8 %tmp_1_i2, i8 %y_5
  %x = xor i8 %y_6, %e
  %tmp3 = xor i8 %b, %y_19
  %x_assign_3 = xor i8 %tmp3, %d
  %y_7 = shl i8 %x_assign_3, 1
  %tmp_9 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3, i32 7)
  %tmp_1_i3 = xor i8 %y_7, 27
  %y_8 = select i1 %tmp_9, i8 %tmp_1_i3, i8 %y_7
  %y_9 = shl i8 %y_8, 1
  %tmp_11 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %y_8, i32 7)
  %tmp_1_i4 = xor i8 %y_9, 27
  %y_10 = select i1 %tmp_11, i8 %tmp_1_i4, i8 %y_9
  %y = xor i8 %y_10, %e
  %y_11 = shl i8 %x_assign_5, 1
  %tmp_13 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_5, i32 7)
  %tmp_1_i5 = xor i8 %y_11, 27
  %y_12 = select i1 %tmp_13, i8 %tmp_1_i5, i8 %y_11
  %tmp4 = xor i8 %y_12, %x
  %tmp_34 = xor i8 %tmp4, %a
  store i8 %tmp_34, i8* %buf_addr, align 1
  %x_assign_6 = xor i8 %c, %b
  %y_13 = shl i8 %x_assign_6, 1
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_6, i32 7)
  %tmp_1_i6 = xor i8 %y_13, 27
  %y_14 = select i1 %tmp_15, i8 %tmp_1_i6, i8 %y_13
  %tmp5 = xor i8 %y_14, %y
  %tmp_35 = xor i8 %tmp5, %b
  store i8 %tmp_35, i8* %buf_addr_8, align 1
  %x_assign_7 = xor i8 %d, %c
  %y_15 = shl i8 %x_assign_7, 1
  %tmp_17 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_7, i32 7)
  %tmp_1_i7 = xor i8 %y_15, 27
  %y_16 = select i1 %tmp_17, i8 %tmp_1_i7, i8 %y_15
  %tmp6 = xor i8 %y_16, %x
  %tmp_36 = xor i8 %tmp6, %c
  store i8 %tmp_36, i8* %buf_addr_9, align 1
  %x_assign_8 = xor i8 %d, %a
  %y_17 = shl i8 %x_assign_8, 1
  %tmp_19 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_8, i32 7)
  %tmp_1_i8 = xor i8 %y_17, 27
  %y_18 = select i1 %tmp_19, i8 %tmp_1_i8, i8 %y_17
  %tmp7 = xor i8 %y_18, %y
  %tmp_37 = xor i8 %tmp7, %d
  store i8 %tmp_37, i8* %buf_addr_10, align 1
  %i_27 = add i5 4, %i
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define internal fastcc i8 @aes_expandEncKey([32 x i8]* %k, i8 %rc_read) {
  %rc_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %rc_read)
  %k_addr = getelementptr [32 x i8]* %k, i64 0, i64 0
  %k_addr_1 = getelementptr [32 x i8]* %k, i64 0, i64 29
  %k_load = load i8* %k_addr_1, align 1
  %tmp = zext i8 %k_load to i64
  %sbox_addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp
  %sbox_load = load i8* %sbox_addr, align 1
  %k_load_1 = load i8* %k_addr, align 1
  %tmp1 = xor i8 %k_load_1, %rc_read_1
  %tmp_s = xor i8 %tmp1, %sbox_load
  store i8 %tmp_s, i8* %k_addr, align 1
  %k_addr_2 = getelementptr [32 x i8]* %k, i64 0, i64 30
  %k_load_2 = load i8* %k_addr_2, align 1
  %tmp_38 = zext i8 %k_load_2 to i64
  %sbox_addr_1 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_38
  %sbox_load_1 = load i8* %sbox_addr_1, align 1
  %k_addr_3 = getelementptr [32 x i8]* %k, i64 0, i64 1
  %k_load_3 = load i8* %k_addr_3, align 1
  %tmp_39 = xor i8 %k_load_3, %sbox_load_1
  store i8 %tmp_39, i8* %k_addr_3, align 1
  %k_addr_4 = getelementptr [32 x i8]* %k, i64 0, i64 31
  %k_load_4 = load i8* %k_addr_4, align 1
  %tmp_40 = zext i8 %k_load_4 to i64
  %sbox_addr_2 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_40
  %sbox_load_2 = load i8* %sbox_addr_2, align 1
  %k_addr_5 = getelementptr [32 x i8]* %k, i64 0, i64 2
  %k_load_5 = load i8* %k_addr_5, align 1
  %tmp_41 = xor i8 %k_load_5, %sbox_load_2
  store i8 %tmp_41, i8* %k_addr_5, align 1
  %k_addr_6 = getelementptr [32 x i8]* %k, i64 0, i64 28
  %k_load_6 = load i8* %k_addr_6, align 1
  %tmp_42 = zext i8 %k_load_6 to i64
  %sbox_addr_3 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_42
  %sbox_load_3 = load i8* %sbox_addr_3, align 1
  %k_addr_7 = getelementptr [32 x i8]* %k, i64 0, i64 3
  %k_load_7 = load i8* %k_addr_7, align 1
  %tmp_43 = xor i8 %k_load_7, %sbox_load_3
  store i8 %tmp_43, i8* %k_addr_7, align 1
  %y = shl i8 %rc_read_1, 1
  %tmp_21 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %rc_read_1, i32 7)
  %tmp_1_i = xor i8 %y, 27
  %y_20 = select i1 %tmp_21, i8 %tmp_1_i, i8 %y
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 4, %0 ], [ %i_28, %2 ]
  %tmp_22 = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i, i32 4)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  br i1 %tmp_22, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp_23 = trunc i5 %i to i4
  %tmp_45 = add i4 -4, %tmp_23
  %tmp_46 = zext i4 %tmp_45 to i64
  %k_addr_8 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_46
  %k_load_8 = load i8* %k_addr_8, align 1
  %tmp_47 = zext i5 %i to i64
  %k_addr_9 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_47
  %k_load_9 = load i8* %k_addr_9, align 1
  %tmp_48 = xor i8 %k_load_9, %k_load_8
  store i8 %tmp_48, i8* %k_addr_9, align 1
  %tmp_49 = add i4 -3, %tmp_23
  %tmp_50 = zext i4 %tmp_49 to i64
  %k_addr_10 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_50
  %k_load_10 = load i8* %k_addr_10, align 1
  %tmp_51 = or i4 %tmp_23, 1
  %tmp_52 = zext i4 %tmp_51 to i64
  %k_addr_11 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_52
  %k_load_11 = load i8* %k_addr_11, align 1
  %tmp_53 = xor i8 %k_load_11, %k_load_10
  store i8 %tmp_53, i8* %k_addr_11, align 1
  %tmp_54 = add i4 -2, %tmp_23
  %tmp_55 = zext i4 %tmp_54 to i64
  %k_addr_12 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_55
  %k_load_12 = load i8* %k_addr_12, align 1
  %tmp_56 = or i4 %tmp_23, 2
  %tmp_57 = zext i4 %tmp_56 to i64
  %k_addr_13 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_57
  %k_load_13 = load i8* %k_addr_13, align 1
  %tmp_58 = xor i8 %k_load_13, %k_load_12
  store i8 %tmp_58, i8* %k_addr_13, align 1
  %tmp_59 = add i4 -1, %tmp_23
  %tmp_60 = zext i4 %tmp_59 to i64
  %k_addr_14 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_60
  %k_load_14 = load i8* %k_addr_14, align 1
  %tmp_61 = or i4 %tmp_23, 3
  %tmp_62 = zext i4 %tmp_61 to i64
  %k_addr_15 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_62
  %k_load_15 = load i8* %k_addr_15, align 1
  %tmp_63 = xor i8 %k_load_15, %k_load_14
  store i8 %tmp_63, i8* %k_addr_15, align 1
  %i_28 = add i5 4, %i
  br label %1

; <label>:3                                       ; preds = %1
  %k_addr_16 = getelementptr [32 x i8]* %k, i64 0, i64 12
  %k_load_16 = load i8* %k_addr_16, align 1
  %tmp_44 = zext i8 %k_load_16 to i64
  %sbox_addr_4 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_44
  %sbox_load_4 = load i8* %sbox_addr_4, align 1
  %k_addr_17 = getelementptr [32 x i8]* %k, i64 0, i64 16
  %k_load_17 = load i8* %k_addr_17, align 1
  %tmp_64 = xor i8 %k_load_17, %sbox_load_4
  store i8 %tmp_64, i8* %k_addr_17, align 1
  %k_addr_18 = getelementptr [32 x i8]* %k, i64 0, i64 13
  %k_load_18 = load i8* %k_addr_18, align 1
  %tmp_65 = zext i8 %k_load_18 to i64
  %sbox_addr_5 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_65
  %sbox_load_5 = load i8* %sbox_addr_5, align 1
  %k_addr_19 = getelementptr [32 x i8]* %k, i64 0, i64 17
  %k_load_19 = load i8* %k_addr_19, align 1
  %tmp_66 = xor i8 %k_load_19, %sbox_load_5
  store i8 %tmp_66, i8* %k_addr_19, align 1
  %k_addr_20 = getelementptr [32 x i8]* %k, i64 0, i64 14
  %k_load_20 = load i8* %k_addr_20, align 1
  %tmp_67 = zext i8 %k_load_20 to i64
  %sbox_addr_6 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_67
  %sbox_load_6 = load i8* %sbox_addr_6, align 1
  %k_addr_21 = getelementptr [32 x i8]* %k, i64 0, i64 18
  %k_load_21 = load i8* %k_addr_21, align 1
  %tmp_68 = xor i8 %k_load_21, %sbox_load_6
  store i8 %tmp_68, i8* %k_addr_21, align 1
  %k_addr_22 = getelementptr [32 x i8]* %k, i64 0, i64 15
  %k_load_22 = load i8* %k_addr_22, align 1
  %tmp_69 = zext i8 %k_load_22 to i64
  %sbox_addr_7 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_69
  %sbox_load_7 = load i8* %sbox_addr_7, align 1
  %k_addr_23 = getelementptr [32 x i8]* %k, i64 0, i64 19
  %k_load_23 = load i8* %k_addr_23, align 1
  %tmp_70 = xor i8 %k_load_23, %sbox_load_7
  store i8 %tmp_70, i8* %k_addr_23, align 1
  br label %4

; <label>:4                                       ; preds = %5, %3
  %i_1 = phi i6 [ 20, %3 ], [ %i_29, %5 ]
  %tmp_24 = call i1 @_ssdm_op_BitSelect.i1.i6.i32(i6 %i_1, i32 5)
  %empty_24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  br i1 %tmp_24, label %6, label %5

; <label>:5                                       ; preds = %4
  %tmp_25 = trunc i6 %i_1 to i5
  %tmp_71 = add i5 -4, %tmp_25
  %tmp_72 = zext i5 %tmp_71 to i64
  %k_addr_24 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_72
  %k_load_24 = load i8* %k_addr_24, align 1
  %tmp_73 = zext i6 %i_1 to i64
  %k_addr_25 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_73
  %k_load_25 = load i8* %k_addr_25, align 1
  %tmp_74 = xor i8 %k_load_25, %k_load_24
  store i8 %tmp_74, i8* %k_addr_25, align 1
  %tmp_75 = add i5 -3, %tmp_25
  %tmp_76 = zext i5 %tmp_75 to i64
  %k_addr_26 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_76
  %k_load_26 = load i8* %k_addr_26, align 1
  %tmp_77 = or i5 %tmp_25, 1
  %tmp_78 = zext i5 %tmp_77 to i64
  %k_addr_27 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_78
  %k_load_27 = load i8* %k_addr_27, align 1
  %tmp_79 = xor i8 %k_load_27, %k_load_26
  store i8 %tmp_79, i8* %k_addr_27, align 1
  %tmp_80 = add i5 -2, %tmp_25
  %tmp_81 = zext i5 %tmp_80 to i64
  %k_addr_28 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_81
  %k_load_28 = load i8* %k_addr_28, align 1
  %tmp_82 = or i5 %tmp_25, 2
  %tmp_83 = zext i5 %tmp_82 to i64
  %k_addr_29 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_83
  %k_load_29 = load i8* %k_addr_29, align 1
  %tmp_84 = xor i8 %k_load_29, %k_load_28
  store i8 %tmp_84, i8* %k_addr_29, align 1
  %tmp_85 = add i5 -1, %tmp_25
  %tmp_86 = zext i5 %tmp_85 to i64
  %k_addr_30 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_86
  %k_load_30 = load i8* %k_addr_30, align 1
  %tmp_87 = or i5 %tmp_25, 3
  %tmp_88 = zext i5 %tmp_87 to i64
  %k_addr_31 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_88
  %k_load_31 = load i8* %k_addr_31, align 1
  %tmp_89 = xor i8 %k_load_31, %k_load_30
  store i8 %tmp_89, i8* %k_addr_31, align 1
  %i_29 = add i6 4, %i_1
  br label %4

; <label>:6                                       ; preds = %4
  ret i8 %y_20
}

define internal fastcc i8 @aes_expandDecKey(i8 %rc_read) {
  %rc_read_2 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %rc_read)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ -4, %0 ], [ %i_27, %2 ]
  %tmp = icmp ugt i5 %i, -16
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  br i1 %tmp, label %2, label %3

; <label>:2                                       ; preds = %1
  %i_27 = add i5 %i, -4
  %tmp_90 = zext i5 %i_27 to i64
  %ctx_key_addr = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_90
  %ctx_key_load = load i8* %ctx_key_addr, align 4
  %tmp_91 = zext i5 %i to i64
  %ctx_key_addr_1 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_91
  %ctx_key_load_1 = load i8* %ctx_key_addr_1, align 4
  %tmp_92 = xor i8 %ctx_key_load_1, %ctx_key_load
  store i8 %tmp_92, i8* %ctx_key_addr_1, align 4
  %tmp_93 = add i5 %i, -3
  %tmp_94 = zext i5 %tmp_93 to i64
  %ctx_key_addr_2 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_94
  %ctx_key_load_2 = load i8* %ctx_key_addr_2, align 1
  %tmp_95 = or i5 %i, 1
  %tmp_96 = zext i5 %tmp_95 to i64
  %ctx_key_addr_3 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_96
  %ctx_key_load_3 = load i8* %ctx_key_addr_3, align 1
  %tmp_97 = xor i8 %ctx_key_load_3, %ctx_key_load_2
  store i8 %tmp_97, i8* %ctx_key_addr_3, align 1
  %tmp_98 = add i5 %i, -2
  %tmp_99 = zext i5 %tmp_98 to i64
  %ctx_key_addr_4 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_99
  %ctx_key_load_4 = load i8* %ctx_key_addr_4, align 2
  %tmp_100 = or i5 %i, 2
  %tmp_101 = zext i5 %tmp_100 to i64
  %ctx_key_addr_5 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_101
  %ctx_key_load_5 = load i8* %ctx_key_addr_5, align 2
  %tmp_102 = xor i8 %ctx_key_load_5, %ctx_key_load_4
  store i8 %tmp_102, i8* %ctx_key_addr_5, align 2
  %tmp_103 = add i5 %i, -1
  %tmp_104 = zext i5 %tmp_103 to i64
  %ctx_key_addr_6 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_104
  %ctx_key_load_6 = load i8* %ctx_key_addr_6, align 1
  %tmp_105 = or i5 %i, 3
  %tmp_106 = zext i5 %tmp_105 to i64
  %ctx_key_addr_7 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_106
  %ctx_key_load_7 = load i8* %ctx_key_addr_7, align 1
  %tmp_107 = xor i8 %ctx_key_load_7, %ctx_key_load_6
  store i8 %tmp_107, i8* %ctx_key_addr_7, align 1
  br label %1

; <label>:3                                       ; preds = %1
  %ctx_key_load_8 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 12), align 4
  %tmp_s = zext i8 %ctx_key_load_8 to i64
  %sbox_addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_s
  %sbox_load = load i8* %sbox_addr, align 1
  %ctx_key_load_9 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 16), align 16
  %tmp_108 = xor i8 %ctx_key_load_9, %sbox_load
  store i8 %tmp_108, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 16), align 16
  %ctx_key_load_10 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 13), align 1
  %tmp_109 = zext i8 %ctx_key_load_10 to i64
  %sbox_addr_8 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_109
  %sbox_load_8 = load i8* %sbox_addr_8, align 1
  %ctx_key_load_11 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 17), align 1
  %tmp_110 = xor i8 %ctx_key_load_11, %sbox_load_8
  store i8 %tmp_110, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 17), align 1
  %ctx_key_load_12 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 14), align 2
  %tmp_111 = zext i8 %ctx_key_load_12 to i64
  %sbox_addr_9 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_111
  %sbox_load_9 = load i8* %sbox_addr_9, align 1
  %ctx_key_load_13 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 18), align 2
  %tmp_112 = xor i8 %ctx_key_load_13, %sbox_load_9
  store i8 %tmp_112, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 18), align 2
  %ctx_key_load_14 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 15), align 1
  %tmp_113 = zext i8 %ctx_key_load_14 to i64
  %sbox_addr_10 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_113
  %sbox_load_10 = load i8* %sbox_addr_10, align 1
  %ctx_key_load_15 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 19), align 1
  %tmp_114 = xor i8 %ctx_key_load_15, %sbox_load_10
  store i8 %tmp_114, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 19), align 1
  br label %4

; <label>:4                                       ; preds = %5, %3
  %i_1 = phi i4 [ -4, %3 ], [ %i_s, %5 ]
  %tmp_115 = icmp eq i4 %i_1, 0
  %empty_25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  br i1 %tmp_115, label %6, label %5

; <label>:5                                       ; preds = %4
  %tmp_150_cast = zext i4 %i_1 to i5
  %tmp_126 = add i5 %tmp_150_cast, -4
  %tmp_127 = sext i5 %tmp_126 to i64
  %ctx_key_addr_8 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_127
  %ctx_key_load_24 = load i8* %ctx_key_addr_8, align 4
  %tmp_128 = zext i4 %i_1 to i64
  %ctx_key_addr_9 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_128
  %ctx_key_load_25 = load i8* %ctx_key_addr_9, align 4
  %tmp_129 = xor i8 %ctx_key_load_25, %ctx_key_load_24
  store i8 %tmp_129, i8* %ctx_key_addr_9, align 4
  %tmp_130 = add i5 %tmp_150_cast, -3
  %tmp_131 = sext i5 %tmp_130 to i64
  %ctx_key_addr_10 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_131
  %ctx_key_load_26 = load i8* %ctx_key_addr_10, align 1
  %tmp_132 = or i4 %i_1, 1
  %tmp_133 = zext i4 %tmp_132 to i64
  %ctx_key_addr_11 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_133
  %ctx_key_load_27 = load i8* %ctx_key_addr_11, align 1
  %tmp_134 = xor i8 %ctx_key_load_27, %ctx_key_load_26
  store i8 %tmp_134, i8* %ctx_key_addr_11, align 1
  %tmp_135 = add i5 %tmp_150_cast, -2
  %tmp_136 = sext i5 %tmp_135 to i64
  %ctx_key_addr_12 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_136
  %ctx_key_load_28 = load i8* %ctx_key_addr_12, align 2
  %tmp_137 = or i4 %i_1, 2
  %tmp_138 = zext i4 %tmp_137 to i64
  %ctx_key_addr_13 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_138
  %ctx_key_load_29 = load i8* %ctx_key_addr_13, align 2
  %tmp_139 = xor i8 %ctx_key_load_29, %ctx_key_load_28
  store i8 %tmp_139, i8* %ctx_key_addr_13, align 2
  %tmp_140 = add i4 %i_1, -1
  %tmp_141 = zext i4 %tmp_140 to i64
  %ctx_key_addr_14 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_141
  %ctx_key_load_30 = load i8* %ctx_key_addr_14, align 1
  %tmp_142 = or i4 %i_1, 3
  %tmp_143 = zext i4 %tmp_142 to i64
  %ctx_key_addr_15 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_143
  %ctx_key_load_31 = load i8* %ctx_key_addr_15, align 1
  %tmp_144 = xor i8 %ctx_key_load_31, %ctx_key_load_30
  store i8 %tmp_144, i8* %ctx_key_addr_15, align 1
  %i_s = add i4 %i_1, -4
  br label %4

; <label>:6                                       ; preds = %4
  %tmp_116 = call i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8 %rc_read_2, i32 1, i32 7)
  %tmp_11 = zext i7 %tmp_116 to i8
  %tmp_26 = trunc i8 %rc_read_2 to i1
  %tmp_117 = select i1 %tmp_26, i8 -115, i8 0
  %rc_write_assign = xor i8 %tmp_117, %tmp_11
  %ctx_key_load_16 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 29), align 1
  %tmp_118 = zext i8 %ctx_key_load_16 to i64
  %sbox_addr_11 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_118
  %sbox_load_11 = load i8* %sbox_addr_11, align 1
  %ctx_key_load_17 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 0), align 16
  %tmp1 = xor i8 %ctx_key_load_17, %rc_write_assign
  %tmp_119 = xor i8 %tmp1, %sbox_load_11
  store i8 %tmp_119, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 0), align 16
  %ctx_key_load_18 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 30), align 2
  %tmp_120 = zext i8 %ctx_key_load_18 to i64
  %sbox_addr_12 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_120
  %sbox_load_12 = load i8* %sbox_addr_12, align 1
  %ctx_key_load_19 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 1), align 1
  %tmp_121 = xor i8 %ctx_key_load_19, %sbox_load_12
  store i8 %tmp_121, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 1), align 1
  %ctx_key_load_20 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 31), align 1
  %tmp_122 = zext i8 %ctx_key_load_20 to i64
  %sbox_addr_13 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_122
  %sbox_load_13 = load i8* %sbox_addr_13, align 1
  %ctx_key_load_21 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 2), align 2
  %tmp_123 = xor i8 %ctx_key_load_21, %sbox_load_13
  store i8 %tmp_123, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 2), align 2
  %ctx_key_load_22 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 28), align 4
  %tmp_124 = zext i8 %ctx_key_load_22 to i64
  %sbox_addr_14 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_124
  %sbox_load_14 = load i8* %sbox_addr_14, align 1
  %ctx_key_load_23 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 3), align 1
  %tmp_125 = xor i8 %ctx_key_load_23, %sbox_load_14
  store i8 %tmp_125, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 3), align 1
  ret i8 %rc_write_assign
}

define internal fastcc void @aes_encrypt_ecb([16 x i8]* nocapture %buf_r) {
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i5 [ -16, %0 ], [ %i_30, %2 ]
  %i_30 = add i5 %i_i, -1
  %i_32_cast = sext i5 %i_30 to i8
  %tmp_i = icmp eq i5 %i_i, 0
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  br i1 %tmp_i, label %aes_addRoundKey_cpy.exit.preheader, label %2

aes_addRoundKey_cpy.exit.preheader:               ; preds = %1
  %rcon = alloca i8
  %buf_addr = getelementptr [16 x i8]* %buf_r, i64 0, i64 1
  %buf_addr_11 = getelementptr [16 x i8]* %buf_r, i64 0, i64 5
  %buf_addr_12 = getelementptr [16 x i8]* %buf_r, i64 0, i64 9
  %buf_addr_13 = getelementptr [16 x i8]* %buf_r, i64 0, i64 13
  %buf_addr_14 = getelementptr [16 x i8]* %buf_r, i64 0, i64 10
  %buf_addr_15 = getelementptr [16 x i8]* %buf_r, i64 0, i64 2
  %buf_addr_16 = getelementptr [16 x i8]* %buf_r, i64 0, i64 3
  %buf_addr_17 = getelementptr [16 x i8]* %buf_r, i64 0, i64 15
  %buf_addr_18 = getelementptr [16 x i8]* %buf_r, i64 0, i64 11
  %buf_addr_19 = getelementptr [16 x i8]* %buf_r, i64 0, i64 7
  %buf_addr_20 = getelementptr [16 x i8]* %buf_r, i64 0, i64 14
  %buf_addr_21 = getelementptr [16 x i8]* %buf_r, i64 0, i64 6
  store i8 1, i8* %rcon
  br label %aes_addRoundKey_cpy.exit

; <label>:2                                       ; preds = %1
  %tmp_i_26 = zext i8 %i_32_cast to i64
  %ctx_enckey_addr = getelementptr [32 x i8]* @ctx_enckey, i64 0, i64 %tmp_i_26
  %ctx_enckey_load = load i8* %ctx_enckey_addr, align 1
  %ctx_key_addr = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_i_26
  store i8 %ctx_enckey_load, i8* %ctx_key_addr, align 1
  %buf_addr_22 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_i_26
  %buf_load = load i8* %buf_addr_22, align 1
  %tmp_207_i = xor i8 %buf_load, %ctx_enckey_load
  store i8 %tmp_207_i, i8* %buf_addr_22, align 1
  %tmp_209_i = add i5 %i_i, 15
  %tmp_210_i = zext i5 %tmp_209_i to i64
  %ctx_enckey_addr_1 = getelementptr [32 x i8]* @ctx_enckey, i64 0, i64 %tmp_210_i
  %ctx_enckey_load_1 = load i8* %ctx_enckey_addr_1, align 1
  %ctx_key_addr_16 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_210_i
  store i8 %ctx_enckey_load_1, i8* %ctx_key_addr_16, align 1
  br label %1

aes_addRoundKey_cpy.exit:                         ; preds = %8, %aes_addRoundKey_cpy.exit.preheader
  %i = phi i4 [ %i_38, %8 ], [ 1, %aes_addRoundKey_cpy.exit.preheader ]
  %exitcond = icmp eq i4 %i, -2
  %empty_27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 13, i64 13, i64 13)
  br i1 %exitcond, label %.preheader.preheader, label %.preheader50.preheader

.preheader50.preheader:                           ; preds = %aes_addRoundKey_cpy.exit
  br label %.preheader50

.preheader.preheader:                             ; preds = %aes_addRoundKey_cpy.exit
  br label %.preheader

.preheader50:                                     ; preds = %.preheader50.preheader, %3
  %i_i4 = phi i5 [ %i_32, %3 ], [ -16, %.preheader50.preheader ]
  %i_32 = add i5 %i_i4, -1
  %i_34_cast = sext i5 %i_32 to i8
  %tmp_i5 = icmp eq i5 %i_i4, 0
  %empty_28 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  br i1 %tmp_i5, label %aes_subBytes.exit, label %3

; <label>:3                                       ; preds = %.preheader50
  %tmp_i6 = zext i8 %i_34_cast to i64
  %buf_addr_24 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_i6
  %buf_load_31 = load i8* %buf_addr_24, align 1
  %tmp_29_i = zext i8 %buf_load_31 to i64
  %sbox_addr_15 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_29_i
  %sbox_load_15 = load i8* %sbox_addr_15, align 1
  store i8 %sbox_load_15, i8* %buf_addr_24, align 1
  br label %.preheader50

aes_subBytes.exit:                                ; preds = %.preheader50
  %i_35 = load i8* %buf_addr, align 1
  %buf_load_20 = load i8* %buf_addr_11, align 1
  store i8 %buf_load_20, i8* %buf_addr, align 1
  %buf_load_21 = load i8* %buf_addr_12, align 1
  store i8 %buf_load_21, i8* %buf_addr_11, align 1
  %buf_load_22 = load i8* %buf_addr_13, align 1
  store i8 %buf_load_22, i8* %buf_addr_12, align 1
  store i8 %i_35, i8* %buf_addr_13, align 1
  %i_36 = load i8* %buf_addr_14, align 1
  %buf_load_24 = load i8* %buf_addr_15, align 1
  store i8 %buf_load_24, i8* %buf_addr_14, align 1
  store i8 %i_36, i8* %buf_addr_15, align 1
  %j_2 = load i8* %buf_addr_16, align 1
  %buf_load_26 = load i8* %buf_addr_17, align 1
  store i8 %buf_load_26, i8* %buf_addr_16, align 1
  %buf_load_27 = load i8* %buf_addr_18, align 1
  store i8 %buf_load_27, i8* %buf_addr_17, align 1
  %buf_load_28 = load i8* %buf_addr_19, align 1
  store i8 %buf_load_28, i8* %buf_addr_18, align 1
  store i8 %j_2, i8* %buf_addr_19, align 1
  %j_3 = load i8* %buf_addr_20, align 1
  %buf_load_30 = load i8* %buf_addr_21, align 1
  store i8 %buf_load_30, i8* %buf_addr_20, align 1
  store i8 %j_3, i8* %buf_addr_21, align 1
  br label %4

; <label>:4                                       ; preds = %5, %aes_subBytes.exit
  %i_i2 = phi i5 [ 0, %aes_subBytes.exit ], [ %i_37, %5 ]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i_i2, i32 4)
  %empty_29 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  br i1 %tmp, label %aes_mixColumns.exit, label %5

; <label>:5                                       ; preds = %4
  %tmp_i2 = zext i5 %i_i2 to i64
  %buf_addr_25 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_i2
  %a = load i8* %buf_addr_25, align 1
  %tmp_28 = trunc i5 %i_i2 to i4
  %tmp_63_i = or i4 %tmp_28, 1
  %tmp_64_i = zext i4 %tmp_63_i to i64
  %buf_addr_26 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_64_i
  %b = load i8* %buf_addr_26, align 1
  %tmp_65_i = or i4 %tmp_28, 2
  %tmp_66_i = zext i4 %tmp_65_i to i64
  %buf_addr_27 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_66_i
  %c = load i8* %buf_addr_27, align 1
  %tmp_67_i = or i4 %tmp_28, 3
  %tmp_68_i = zext i4 %tmp_67_i to i64
  %buf_addr_28 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_68_i
  %d = load i8* %buf_addr_28, align 1
  %x_assign = xor i8 %b, %a
  %tmp_70_i = xor i8 %c, %x_assign
  %e = xor i8 %d, %tmp_70_i
  %y = shl i8 %x_assign, 1
  %tmp_30 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign, i32 7)
  %tmp_1_i_i = xor i8 %y, 27
  %y_21 = select i1 %tmp_30, i8 %tmp_1_i_i, i8 %y
  %tmp1 = xor i8 %y_21, %e
  %tmp_73_i = xor i8 %tmp1, %a
  store i8 %tmp_73_i, i8* %buf_addr_25, align 1
  %x_assign_9 = xor i8 %c, %b
  %y_22 = shl i8 %x_assign_9, 1
  %tmp_32 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_9, i32 7)
  %tmp_1_i10_i = xor i8 %y_22, 27
  %y_23 = select i1 %tmp_32, i8 %tmp_1_i10_i, i8 %y_22
  %tmp2 = xor i8 %y_23, %e
  %tmp_77_i = xor i8 %tmp2, %b
  store i8 %tmp_77_i, i8* %buf_addr_26, align 1
  %x_assign_s = xor i8 %d, %c
  %y_24 = shl i8 %x_assign_s, 1
  %tmp_34 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_s, i32 7)
  %tmp_1_i14_i = xor i8 %y_24, 27
  %y_25 = select i1 %tmp_34, i8 %tmp_1_i14_i, i8 %y_24
  %tmp3 = xor i8 %y_25, %e
  %tmp_81_i = xor i8 %tmp3, %c
  store i8 %tmp_81_i, i8* %buf_addr_27, align 1
  %x_assign_1 = xor i8 %d, %a
  %y_26 = shl i8 %x_assign_1, 1
  %tmp_36 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1, i32 7)
  %tmp_1_i18_i = xor i8 %y_26, 27
  %y_27 = select i1 %tmp_36, i8 %tmp_1_i18_i, i8 %y_26
  %tmp_85_i = xor i8 %y_27, %tmp_70_i
  store i8 %tmp_85_i, i8* %buf_addr_28, align 1
  %i_37 = add i5 4, %i_i2
  br label %4

aes_mixColumns.exit:                              ; preds = %4
  %tmp_27 = trunc i4 %i to i1
  br i1 %tmp_27, label %6, label %7

; <label>:6                                       ; preds = %aes_mixColumns.exit
  call fastcc void @aes_addRoundKey([16 x i8]* %buf_r, [32 x i8]* @ctx_key, i6 16)
  br label %8

; <label>:7                                       ; preds = %aes_mixColumns.exit
  %rcon_load_1 = load i8* %rcon
  %rcon_1 = call fastcc i8 @aes_expandEncKey([32 x i8]* @ctx_key, i8 %rcon_load_1)
  call fastcc void @aes_addRoundKey([16 x i8]* %buf_r, [32 x i8]* @ctx_key, i6 0)
  store i8 %rcon_1, i8* %rcon
  br label %8

; <label>:8                                       ; preds = %7, %6
  %i_38 = add i4 %i, 1
  br label %aes_addRoundKey_cpy.exit

.preheader:                                       ; preds = %.preheader.preheader, %9
  %i_i1 = phi i5 [ %i_31, %9 ], [ -16, %.preheader.preheader ]
  %i_31 = add i5 %i_i1, -1
  %i_33_cast = sext i5 %i_31 to i8
  %tmp_i8 = icmp eq i5 %i_i1, 0
  %empty_30 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  br i1 %tmp_i8, label %aes_subBytes.exit25, label %9

; <label>:9                                       ; preds = %.preheader
  %tmp_i1 = zext i8 %i_33_cast to i64
  %buf_addr_23 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_i1
  %buf_load_18 = load i8* %buf_addr_23, align 1
  %tmp_29_i1 = zext i8 %buf_load_18 to i64
  %sbox_addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_29_i1
  %sbox_load = load i8* %sbox_addr, align 1
  store i8 %sbox_load, i8* %buf_addr_23, align 1
  br label %.preheader

aes_subBytes.exit25:                              ; preds = %.preheader
  %rcon_load = load i8* %rcon
  %i_33 = load i8* %buf_addr, align 1
  %buf_load_7 = load i8* %buf_addr_11, align 1
  store i8 %buf_load_7, i8* %buf_addr, align 1
  %buf_load_8 = load i8* %buf_addr_12, align 1
  store i8 %buf_load_8, i8* %buf_addr_11, align 1
  %buf_load_9 = load i8* %buf_addr_13, align 1
  store i8 %buf_load_9, i8* %buf_addr_12, align 1
  store i8 %i_33, i8* %buf_addr_13, align 1
  %i_34 = load i8* %buf_addr_14, align 1
  %buf_load_11 = load i8* %buf_addr_15, align 1
  store i8 %buf_load_11, i8* %buf_addr_14, align 1
  store i8 %i_34, i8* %buf_addr_15, align 1
  %j = load i8* %buf_addr_16, align 1
  %buf_load_13 = load i8* %buf_addr_17, align 1
  store i8 %buf_load_13, i8* %buf_addr_16, align 1
  %buf_load_14 = load i8* %buf_addr_18, align 1
  store i8 %buf_load_14, i8* %buf_addr_17, align 1
  %buf_load_15 = load i8* %buf_addr_19, align 1
  store i8 %buf_load_15, i8* %buf_addr_18, align 1
  store i8 %j, i8* %buf_addr_19, align 1
  %j_1 = load i8* %buf_addr_20, align 1
  %buf_load_17 = load i8* %buf_addr_21, align 1
  store i8 %buf_load_17, i8* %buf_addr_20, align 1
  store i8 %j_1, i8* %buf_addr_21, align 1
  %call_ret1 = call fastcc i8 @aes_expandEncKey([32 x i8]* @ctx_key, i8 %rcon_load)
  call fastcc void @aes_addRoundKey([16 x i8]* %buf_r, [32 x i8]* @ctx_key, i6 0)
  ret void
}

define internal fastcc void @aes_decrypt_ecb([16 x i8]* nocapture %buf_r) {
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i5 [ -16, %0 ], [ %i_39, %2 ]
  %i_39 = add i5 %i_i, -1
  %i_42_cast = sext i5 %i_39 to i8
  %tmp_i = icmp eq i5 %i_i, 0
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  br i1 %tmp_i, label %aes_addRoundKey_cpy.exit, label %2

; <label>:2                                       ; preds = %1
  %tmp_i_31 = zext i8 %i_42_cast to i64
  %ctx_deckey_addr = getelementptr [32 x i8]* @ctx_deckey, i64 0, i64 %tmp_i_31
  %ctx_deckey_load = load i8* %ctx_deckey_addr, align 1
  %ctx_key_addr = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_i_31
  store i8 %ctx_deckey_load, i8* %ctx_key_addr, align 1
  %buf_addr_40 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_i_31
  %buf_load_46 = load i8* %buf_addr_40, align 1
  %tmp_207_i = xor i8 %buf_load_46, %ctx_deckey_load
  store i8 %tmp_207_i, i8* %buf_addr_40, align 1
  %tmp_209_i = add i5 %i_i, 15
  %tmp_210_i = zext i5 %tmp_209_i to i64
  %ctx_deckey_addr_1 = getelementptr [32 x i8]* @ctx_deckey, i64 0, i64 %tmp_210_i
  %ctx_deckey_load_1 = load i8* %ctx_deckey_addr_1, align 1
  %ctx_key_addr_17 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_210_i
  store i8 %ctx_deckey_load_1, i8* %ctx_key_addr_17, align 1
  br label %1

aes_addRoundKey_cpy.exit:                         ; preds = %1
  %buf_addr = getelementptr [16 x i8]* %buf_r, i64 0, i64 1
  %i_40 = load i8* %buf_addr, align 1
  %buf_addr_29 = getelementptr [16 x i8]* %buf_r, i64 0, i64 13
  %buf_load = load i8* %buf_addr_29, align 1
  store i8 %buf_load, i8* %buf_addr, align 1
  %buf_addr_30 = getelementptr [16 x i8]* %buf_r, i64 0, i64 9
  %buf_load_36 = load i8* %buf_addr_30, align 1
  store i8 %buf_load_36, i8* %buf_addr_29, align 1
  %buf_addr_31 = getelementptr [16 x i8]* %buf_r, i64 0, i64 5
  %buf_load_37 = load i8* %buf_addr_31, align 1
  store i8 %buf_load_37, i8* %buf_addr_30, align 1
  store i8 %i_40, i8* %buf_addr_31, align 1
  %buf_addr_32 = getelementptr [16 x i8]* %buf_r, i64 0, i64 2
  %i_41 = load i8* %buf_addr_32, align 1
  %buf_addr_33 = getelementptr [16 x i8]* %buf_r, i64 0, i64 10
  %buf_load_39 = load i8* %buf_addr_33, align 1
  store i8 %buf_load_39, i8* %buf_addr_32, align 1
  store i8 %i_41, i8* %buf_addr_33, align 1
  %buf_addr_34 = getelementptr [16 x i8]* %buf_r, i64 0, i64 3
  %j = load i8* %buf_addr_34, align 1
  %buf_addr_35 = getelementptr [16 x i8]* %buf_r, i64 0, i64 7
  %buf_load_41 = load i8* %buf_addr_35, align 1
  store i8 %buf_load_41, i8* %buf_addr_34, align 1
  %buf_addr_36 = getelementptr [16 x i8]* %buf_r, i64 0, i64 11
  %buf_load_42 = load i8* %buf_addr_36, align 1
  store i8 %buf_load_42, i8* %buf_addr_35, align 1
  %buf_addr_37 = getelementptr [16 x i8]* %buf_r, i64 0, i64 15
  %buf_load_43 = load i8* %buf_addr_37, align 1
  store i8 %buf_load_43, i8* %buf_addr_36, align 1
  store i8 %j, i8* %buf_addr_37, align 1
  %buf_addr_38 = getelementptr [16 x i8]* %buf_r, i64 0, i64 6
  %j_4 = load i8* %buf_addr_38, align 1
  %buf_addr_39 = getelementptr [16 x i8]* %buf_r, i64 0, i64 14
  %buf_load_45 = load i8* %buf_addr_39, align 1
  store i8 %buf_load_45, i8* %buf_addr_38, align 1
  store i8 %j_4, i8* %buf_addr_39, align 1
  br label %3

; <label>:3                                       ; preds = %4, %aes_addRoundKey_cpy.exit
  %i_i5 = phi i5 [ -16, %aes_addRoundKey_cpy.exit ], [ %i_42, %4 ]
  %i_42 = add i5 %i_i5, -1
  %i_45_cast = sext i5 %i_42 to i8
  %tmp_i6 = icmp eq i5 %i_i5, 0
  %empty_32 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  br i1 %tmp_i6, label %aes_subBytes_inv.exit.preheader, label %4

aes_subBytes_inv.exit.preheader:                  ; preds = %3
  %rcon = alloca i8
  store i8 -128, i8* %rcon
  br label %aes_subBytes_inv.exit

; <label>:4                                       ; preds = %3
  %tmp_i7 = zext i8 %i_45_cast to i64
  %buf_addr_41 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_i7
  %buf_load_47 = load i8* %buf_addr_41, align 1
  %tmp_28_i = zext i8 %buf_load_47 to i64
  %sboxinv_addr = getelementptr inbounds [256 x i8]* @sboxinv, i64 0, i64 %tmp_28_i
  %sboxinv_load = load i8* %sboxinv_addr, align 1
  store i8 %sboxinv_load, i8* %buf_addr_41, align 1
  br label %3

aes_subBytes_inv.exit:                            ; preds = %aes_subBytes_inv.exit.preheader, %aes_subBytes_inv.exit43
  %i = phi i4 [ %phitmp, %aes_subBytes_inv.exit43 ], [ -3, %aes_subBytes_inv.exit.preheader ]
  %tmp = icmp eq i4 %i, 0
  %empty_33 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 13, i64 13, i64 13)
  br i1 %tmp, label %11, label %5

; <label>:5                                       ; preds = %aes_subBytes_inv.exit
  %tmp_37 = trunc i4 %i to i1
  br i1 %tmp_37, label %6, label %7

; <label>:6                                       ; preds = %5
  %rcon_load = load i8* %rcon
  %rcon_2 = call fastcc i8 @aes_expandDecKey(i8 %rcon_load)
  call fastcc void @aes_addRoundKey([16 x i8]* %buf_r, [32 x i8]* @ctx_key, i6 16)
  store i8 %rcon_2, i8* %rcon
  br label %8

; <label>:7                                       ; preds = %5
  call fastcc void @aes_addRoundKey([16 x i8]* %buf_r, [32 x i8]* @ctx_key, i6 0)
  br label %8

; <label>:8                                       ; preds = %7, %6
  call fastcc void @aes_mixColumns_inv([16 x i8]* %buf_r)
  %i_43 = load i8* %buf_addr, align 1
  %buf_load_49 = load i8* %buf_addr_29, align 1
  store i8 %buf_load_49, i8* %buf_addr, align 1
  %buf_load_50 = load i8* %buf_addr_30, align 1
  store i8 %buf_load_50, i8* %buf_addr_29, align 1
  %buf_load_51 = load i8* %buf_addr_31, align 1
  store i8 %buf_load_51, i8* %buf_addr_30, align 1
  store i8 %i_43, i8* %buf_addr_31, align 1
  %i_44 = load i8* %buf_addr_32, align 1
  %buf_load_53 = load i8* %buf_addr_33, align 1
  store i8 %buf_load_53, i8* %buf_addr_32, align 1
  store i8 %i_44, i8* %buf_addr_33, align 1
  %j_5 = load i8* %buf_addr_34, align 1
  %buf_load_55 = load i8* %buf_addr_35, align 1
  store i8 %buf_load_55, i8* %buf_addr_34, align 1
  %buf_load_56 = load i8* %buf_addr_36, align 1
  store i8 %buf_load_56, i8* %buf_addr_35, align 1
  %buf_load_57 = load i8* %buf_addr_37, align 1
  store i8 %buf_load_57, i8* %buf_addr_36, align 1
  store i8 %j_5, i8* %buf_addr_37, align 1
  %j_6 = load i8* %buf_addr_38, align 1
  %buf_load_59 = load i8* %buf_addr_39, align 1
  store i8 %buf_load_59, i8* %buf_addr_38, align 1
  store i8 %j_6, i8* %buf_addr_39, align 1
  br label %9

; <label>:9                                       ; preds = %10, %8
  %i_i3 = phi i5 [ -16, %8 ], [ %i_45, %10 ]
  %i_45 = add i5 %i_i3, -1
  %i_48_cast = sext i5 %i_45 to i8
  %tmp_i1 = icmp eq i5 %i_i3, 0
  %empty_34 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  br i1 %tmp_i1, label %aes_subBytes_inv.exit43, label %10

; <label>:10                                      ; preds = %9
  %tmp_i3 = zext i8 %i_48_cast to i64
  %buf_addr_42 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_i3
  %buf_load_60 = load i8* %buf_addr_42, align 1
  %tmp_28_i1 = zext i8 %buf_load_60 to i64
  %sboxinv_addr_1 = getelementptr inbounds [256 x i8]* @sboxinv, i64 0, i64 %tmp_28_i1
  %sboxinv_load_1 = load i8* %sboxinv_addr_1, align 1
  store i8 %sboxinv_load_1, i8* %buf_addr_42, align 1
  br label %9

aes_subBytes_inv.exit43:                          ; preds = %9
  %phitmp = add i4 %i, -1
  br label %aes_subBytes_inv.exit

; <label>:11                                      ; preds = %aes_subBytes_inv.exit
  call fastcc void @aes_addRoundKey([16 x i8]* %buf_r, [32 x i8]* @ctx_key, i6 0)
  ret void
}

define internal fastcc void @aes_addRoundKey([16 x i8]* nocapture %buf_r, [32 x i8]* nocapture %key, i6 %key_offset) {
  %key_offset_read = call i6 @_ssdm_op_Read.ap_auto.i6(i6 %key_offset)
  %tmp_38 = trunc i6 %key_offset_read to i5
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ -16, %0 ], [ %i_46, %2 ]
  %i_46 = add i5 %i, -1
  %i_49_cast = sext i5 %i_46 to i8
  %tmp = icmp eq i5 %i, 0
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  br i1 %tmp, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp_s = zext i8 %i_49_cast to i64
  %sum = add i5 %i_46, %tmp_38
  %sum_cast = zext i5 %sum to i64
  %key_addr = getelementptr [32 x i8]* %key, i64 0, i64 %sum_cast
  %key_load = load i8* %key_addr, align 1
  %buf_addr = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_s
  %buf_load = load i8* %buf_addr, align 1
  %tmp_145 = xor i8 %buf_load, %key_load
  store i8 %tmp_145, i8* %buf_addr, align 1
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecMemCore(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i3 @_ssdm_op_Read.s_axilite.i3(i3) {
entry:
  ret i3 %0
}

define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

define weak i6 @_ssdm_op_Read.ap_auto.i6(i6) {
entry:
  ret i6 %0
}

define weak i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2)
  %empty_35 = trunc i8 %empty to i7
  ret i7 %empty_35
}

declare i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6, i32, i32) nounwind readnone

declare i4 @_ssdm_op_PartSelect.i4.i5.i32.i32(i5, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i8.i32.i32(i8, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i4.i32.i32(i4, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_36 = shl i8 1, %empty
  %empty_37 = and i8 %0, %empty_36
  %empty_38 = icmp ne i8 %empty_37, 0
  ret i1 %empty_38
}

define weak i1 @_ssdm_op_BitSelect.i1.i6.i32(i6, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i6
  %empty_39 = shl i6 1, %empty
  %empty_40 = and i6 %0, %empty_39
  %empty_41 = icmp ne i6 %empty_40, 0
  ret i1 %empty_41
}

define weak i1 @_ssdm_op_BitSelect.i1.i5.i32(i5, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i5
  %empty_42 = shl i5 1, %empty
  %empty_43 = and i5 %0, %empty_42
  %empty_44 = icmp ne i5 %empty_43, 0
  ret i1 %empty_44
}

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
