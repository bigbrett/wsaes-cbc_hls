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
@p_str9 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str8 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str7 = private unnamed_addr constant [17 x i8] c"loop_dataoutclr2\00", align 1
@p_str6 = private unnamed_addr constant [12 x i8] c"loop_setkey\00", align 1
@p_str5 = private unnamed_addr constant [17 x i8] c"loop_dataoutclr1\00", align 1
@p_str4 = private unnamed_addr constant [11 x i8] c"loop_setiv\00", align 1
@p_str3 = private unnamed_addr constant [15 x i8] c"loop_xorvreset\00", align 1
@p_str2 = private unnamed_addr constant [17 x i8] c"loop_dataoutclr0\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

declare i8 @llvm.part.select.i8(i8, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @aescbc(i3 zeroext %mode, [32 x i8]* %data_in, [16 x i8]* %data_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i3 %mode) nounwind, !map !37
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %data_in) nounwind, !map !43
  call void (...)* @_ssdm_op_SpecBitsMap([16 x i8]* %data_out) nounwind, !map !49
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @aescbc_str) nounwind
  %mode_read = call i3 @_ssdm_op_Read.s_axilite.i3(i3 %mode) nounwind
  %buf = alloca [16 x i8], align 16
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %data_in, [1 x i8]* @p_str8, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str8, i32 -1, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8) nounwind
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %data_in, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 32, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty_5 = call i32 (...)* @_ssdm_op_SpecMemCore([16 x i8]* %data_out, [1 x i8]* @p_str9, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str9, i32 -1, [1 x i8]* @p_str9, [1 x i8]* @p_str9, [1 x i8]* @p_str9, [1 x i8]* @p_str9, [1 x i8]* @p_str9) nounwind
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %data_out, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i3 %mode, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  switch i3 %mode_read, label %.loopexit [
    i3 0, label %.preheader15.preheader
    i3 1, label %.preheader13.preheader
    i3 2, label %.preheader9.preheader
    i3 3, label %.preheader4.preheader
    i3 -4, label %.preheader1.preheader
  ]

.preheader15.preheader:                           ; preds = %0
  br label %.preheader15

.preheader13.preheader:                           ; preds = %0
  br label %.preheader13

.preheader9.preheader:                            ; preds = %0
  br label %.preheader9

.preheader4.preheader:                            ; preds = %0
  br label %.preheader4

.preheader1.preheader:                            ; preds = %0
  br label %.preheader1

.preheader15:                                     ; preds = %.preheader15.preheader, %1
  %i = phi i5 [ %i_13, %1 ], [ 0, %.preheader15.preheader ]
  %tmp_3 = icmp eq i5 %i, -16
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_13 = add i5 %i, 1
  br i1 %tmp_3, label %.preheader14.preheader, label %1

.preheader14.preheader:                           ; preds = %.preheader15
  br label %.preheader14

; <label>:1                                       ; preds = %.preheader15
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str2) nounwind
  %tmp_8 = zext i5 %i to i64
  %data_out_addr = getelementptr [16 x i8]* %data_out, i64 0, i64 %tmp_8
  store i8 0, i8* %data_out_addr, align 1
  br label %.preheader15

.preheader14:                                     ; preds = %.preheader14.preheader, %2
  %i_1 = phi i5 [ %i_19, %2 ], [ 0, %.preheader14.preheader ]
  %tmp_10 = icmp eq i5 %i_1, -16
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_19 = add i5 %i_1, 1
  br i1 %tmp_10, label %.preheader38.preheader, label %2

.preheader38.preheader:                           ; preds = %.preheader14
  br label %.preheader38

; <label>:2                                       ; preds = %.preheader14
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str3) nounwind
  %tmp_15 = zext i5 %i_1 to i64
  %iv_addr_1 = getelementptr inbounds [16 x i8]* @iv, i64 0, i64 %tmp_15
  %iv_load = load i8* %iv_addr_1, align 1
  %xorv_addr = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_15
  store i8 %iv_load, i8* %xorv_addr, align 1
  br label %.preheader14

.preheader38:                                     ; preds = %.preheader38.preheader, %3
  %i_i = phi i6 [ %i_29, %3 ], [ 0, %.preheader38.preheader ]
  %tmp_i = icmp eq i6 %i_i, -32
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind
  %i_29 = add i6 %i_i, 1
  br i1 %tmp_i, label %.preheader.i.preheader, label %3

.preheader.i.preheader:                           ; preds = %.preheader38
  br label %.preheader.i

; <label>:3                                       ; preds = %.preheader38
  %tmp_i_9 = zext i6 %i_i to i64
  %key_addr_1 = getelementptr [32 x i8]* @key, i64 0, i64 %tmp_i_9
  %key_load = load i8* %key_addr_1, align 1
  %ctx_deckey_addr = getelementptr [32 x i8]* @ctx_deckey, i64 0, i64 %tmp_i_9
  store i8 %key_load, i8* %ctx_deckey_addr, align 1
  %ctx_enckey_addr = getelementptr [32 x i8]* @ctx_enckey, i64 0, i64 %tmp_i_9
  store i8 %key_load, i8* %ctx_enckey_addr, align 1
  br label %.preheader38

.preheader.i:                                     ; preds = %.preheader.i.preheader, %4
  %rcon_i = phi i8 [ %rcon, %4 ], [ 1, %.preheader.i.preheader ]
  %i_30 = phi i3 [ %phitmp_i, %4 ], [ -1, %.preheader.i.preheader ]
  %tmp_90_i = icmp eq i3 %i_30, 0
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) nounwind
  br i1 %tmp_90_i, label %.loopexit.loopexit17, label %4

; <label>:4                                       ; preds = %.preheader.i
  %rcon = call fastcc i8 @aes_expandEncKey([32 x i8]* @ctx_deckey, i8 %rcon_i) nounwind
  %phitmp_i = add i3 %i_30, -1
  br label %.preheader.i

.preheader13:                                     ; preds = %.preheader13.preheader, %5
  %i_2 = phi i5 [ %i_15, %5 ], [ 0, %.preheader13.preheader ]
  %tmp_4 = icmp eq i5 %i_2, -16
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_15 = add i5 %i_2, 1
  br i1 %tmp_4, label %.preheader12.preheader, label %5

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

; <label>:5                                       ; preds = %.preheader13
  %tmp_s = zext i5 %i_2 to i64
  %data_in_addr = getelementptr [32 x i8]* %data_in, i64 0, i64 %tmp_s
  %data_in_load = load i8* %data_in_addr, align 1
  %buf_addr = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_s
  store i8 %data_in_load, i8* %buf_addr, align 1
  br label %.preheader13

.preheader12:                                     ; preds = %.preheader12.preheader, %6
  %i_3 = phi i5 [ %i_20, %6 ], [ 0, %.preheader12.preheader ]
  %tmp_11 = icmp eq i5 %i_3, -16
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_20 = add i5 %i_3, 1
  br i1 %tmp_11, label %7, label %6

; <label>:6                                       ; preds = %.preheader12
  %tmp_16 = zext i5 %i_3 to i64
  %buf_addr_2 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_16
  %buf_load = load i8* %buf_addr_2, align 1
  %xorv_addr_1 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_16
  %xorv_load = load i8* %xorv_addr_1, align 1
  %tmp_17 = xor i8 %xorv_load, %buf_load
  store i8 %tmp_17, i8* %buf_addr_2, align 1
  br label %.preheader12

; <label>:7                                       ; preds = %.preheader12
  call fastcc void @aes_encrypt_ecb([16 x i8]* %buf) nounwind
  br label %8

; <label>:8                                       ; preds = %9, %7
  %i_4 = phi i5 [ 0, %7 ], [ %i_24, %9 ]
  %tmp_21 = icmp eq i5 %i_4, -16
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_24 = add i5 %i_4, 1
  br i1 %tmp_21, label %.preheader10.preheader, label %9

.preheader10.preheader:                           ; preds = %8
  br label %.preheader10

; <label>:9                                       ; preds = %8
  %tmp_23 = zext i5 %i_4 to i64
  %buf_addr_4 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_23
  %buf_load_2 = load i8* %buf_addr_4, align 1
  %xorv_addr_2 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_23
  store i8 %buf_load_2, i8* %xorv_addr_2, align 1
  br label %8

.preheader10:                                     ; preds = %.preheader10.preheader, %10
  %i_5 = phi i5 [ %i_26, %10 ], [ 0, %.preheader10.preheader ]
  %tmp_26 = icmp eq i5 %i_5, -16
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_26 = add i5 %i_5, 1
  br i1 %tmp_26, label %.loopexit.loopexit16, label %10

; <label>:10                                      ; preds = %.preheader10
  %tmp_28 = zext i5 %i_5 to i64
  %buf_addr_6 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_28
  %buf_load_4 = load i8* %buf_addr_6, align 1
  %data_out_addr_3 = getelementptr [16 x i8]* %data_out, i64 0, i64 %tmp_28
  store i8 %buf_load_4, i8* %data_out_addr_3, align 1
  br label %.preheader10

.preheader9:                                      ; preds = %.preheader9.preheader, %11
  %i_6 = phi i5 [ %i_16, %11 ], [ 0, %.preheader9.preheader ]
  %tmp_5 = icmp eq i5 %i_6, -16
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_16 = add i5 %i_6, 1
  br i1 %tmp_5, label %.preheader8.preheader, label %11

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8

; <label>:11                                      ; preds = %.preheader9
  %tmp_1 = zext i5 %i_6 to i64
  %data_in_addr_1 = getelementptr [32 x i8]* %data_in, i64 0, i64 %tmp_1
  %data_in_load_1 = load i8* %data_in_addr_1, align 1
  %buf_addr_1 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_1
  store i8 %data_in_load_1, i8* %buf_addr_1, align 1
  br label %.preheader9

.preheader8:                                      ; preds = %.preheader8.preheader, %12
  %i_7 = phi i5 [ %i_21, %12 ], [ 0, %.preheader8.preheader ]
  %tmp_12 = icmp eq i5 %i_7, -16
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_21 = add i5 %i_7, 1
  br i1 %tmp_12, label %13, label %12

; <label>:12                                      ; preds = %.preheader8
  %tmp_18 = zext i5 %i_7 to i64
  %buf_addr_3 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_18
  %buf_load_1 = load i8* %buf_addr_3, align 1
  %lastbuf_addr = getelementptr inbounds [16 x i8]* @lastbuf, i64 0, i64 %tmp_18
  store i8 %buf_load_1, i8* %lastbuf_addr, align 1
  br label %.preheader8

; <label>:13                                      ; preds = %.preheader8
  call fastcc void @aes_decrypt_ecb([16 x i8]* %buf) nounwind
  br label %14

; <label>:14                                      ; preds = %15, %13
  %i_8 = phi i5 [ 0, %13 ], [ %i_25, %15 ]
  %tmp_22 = icmp eq i5 %i_8, -16
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_25 = add i5 %i_8, 1
  br i1 %tmp_22, label %.preheader7.preheader, label %15

.preheader7.preheader:                            ; preds = %14
  br label %.preheader7

; <label>:15                                      ; preds = %14
  %tmp_24 = zext i5 %i_8 to i64
  %buf_addr_5 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_24
  %buf_load_3 = load i8* %buf_addr_5, align 1
  %xorv_addr_3 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_24
  %xorv_load_1 = load i8* %xorv_addr_3, align 1
  %tmp_25 = xor i8 %xorv_load_1, %buf_load_3
  store i8 %tmp_25, i8* %buf_addr_5, align 1
  br label %14

.preheader7:                                      ; preds = %.preheader7.preheader, %16
  %i_9 = phi i5 [ %i_27, %16 ], [ 0, %.preheader7.preheader ]
  %tmp_27 = icmp eq i5 %i_9, -16
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_27 = add i5 %i_9, 1
  br i1 %tmp_27, label %.preheader5.preheader, label %16

.preheader5.preheader:                            ; preds = %.preheader7
  br label %.preheader5

; <label>:16                                      ; preds = %.preheader7
  %tmp_29 = zext i5 %i_9 to i64
  %lastbuf_addr_1 = getelementptr inbounds [16 x i8]* @lastbuf, i64 0, i64 %tmp_29
  %lastbuf_load = load i8* %lastbuf_addr_1, align 1
  %xorv_addr_4 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_29
  store i8 %lastbuf_load, i8* %xorv_addr_4, align 1
  br label %.preheader7

.preheader5:                                      ; preds = %.preheader5.preheader, %17
  %i_10 = phi i5 [ %i_28, %17 ], [ 0, %.preheader5.preheader ]
  %tmp_30 = icmp eq i5 %i_10, -16
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_28 = add i5 %i_10, 1
  br i1 %tmp_30, label %.loopexit.loopexit15, label %17

; <label>:17                                      ; preds = %.preheader5
  %tmp_31 = zext i5 %i_10 to i64
  %buf_addr_7 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_31
  %buf_load_5 = load i8* %buf_addr_7, align 1
  %data_out_addr_4 = getelementptr [16 x i8]* %data_out, i64 0, i64 %tmp_31
  store i8 %buf_load_5, i8* %data_out_addr_4, align 1
  br label %.preheader5

.preheader4:                                      ; preds = %.preheader4.preheader, %18
  %i_s = phi i5 [ %i_17, %18 ], [ 0, %.preheader4.preheader ]
  %tmp_6 = icmp eq i5 %i_s, -16
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_17 = add i5 %i_s, 1
  br i1 %tmp_6, label %.preheader2.preheader, label %18

.preheader2.preheader:                            ; preds = %.preheader4
  br label %.preheader2

; <label>:18                                      ; preds = %.preheader4
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str4) nounwind
  %tmp_2 = zext i5 %i_s to i64
  %data_in_addr_2 = getelementptr [32 x i8]* %data_in, i64 0, i64 %tmp_2
  %data_in_load_2 = load i8* %data_in_addr_2, align 1
  %iv_addr = getelementptr inbounds [16 x i8]* @iv, i64 0, i64 %tmp_2
  store i8 %data_in_load_2, i8* %iv_addr, align 1
  br label %.preheader4

.preheader2:                                      ; preds = %.preheader2.preheader, %19
  %i_12 = phi i5 [ %i_22, %19 ], [ 0, %.preheader2.preheader ]
  %tmp_13 = icmp eq i5 %i_12, -16
  %empty_21 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_22 = add i5 %i_12, 1
  br i1 %tmp_13, label %.loopexit.loopexit14, label %19

; <label>:19                                      ; preds = %.preheader2
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str5) nounwind
  %tmp_19 = zext i5 %i_12 to i64
  %data_out_addr_1 = getelementptr [16 x i8]* %data_out, i64 0, i64 %tmp_19
  store i8 0, i8* %data_out_addr_1, align 1
  br label %.preheader2

.preheader1:                                      ; preds = %.preheader1.preheader, %20
  %i_11 = phi i6 [ %i_18, %20 ], [ 0, %.preheader1.preheader ]
  %tmp_7 = icmp eq i6 %i_11, -32
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind
  %i_18 = add i6 %i_11, 1
  br i1 %tmp_7, label %.preheader.preheader, label %20

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader

; <label>:20                                      ; preds = %.preheader1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str6) nounwind
  %tmp_9 = zext i6 %i_11 to i64
  %data_in_addr_3 = getelementptr [32 x i8]* %data_in, i64 0, i64 %tmp_9
  %data_in_load_3 = load i8* %data_in_addr_3, align 1
  %key_addr = getelementptr inbounds [32 x i8]* @key, i64 0, i64 %tmp_9
  store i8 %data_in_load_3, i8* %key_addr, align 1
  br label %.preheader1

.preheader:                                       ; preds = %.preheader.preheader, %21
  %i_14 = phi i5 [ %i_23, %21 ], [ 0, %.preheader.preheader ]
  %tmp_14 = icmp eq i5 %i_14, -16
  %empty_23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_23 = add i5 %i_14, 1
  br i1 %tmp_14, label %.loopexit.loopexit, label %21

; <label>:21                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str7) nounwind
  %tmp_20 = zext i5 %i_14 to i64
  %data_out_addr_2 = getelementptr [16 x i8]* %data_out, i64 0, i64 %tmp_20
  store i8 0, i8* %data_out_addr_2, align 1
  br label %.preheader

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
  ret void
}

define internal fastcc void @aes_mixColumns_inv([16 x i8]* nocapture %buf_r) {
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 0, %0 ], [ %i_31, %2 ]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i, i32 4)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  br i1 %tmp, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp_s = zext i5 %i to i64
  %buf_addr = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_s
  %a = load i8* %buf_addr, align 1
  %tmp_1 = trunc i5 %i to i4
  %tmp_32 = or i4 %tmp_1, 1
  %tmp_33 = zext i4 %tmp_32 to i64
  %buf_addr_8 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_33
  %b = load i8* %buf_addr_8, align 1
  %tmp_34 = or i4 %tmp_1, 2
  %tmp_35 = zext i4 %tmp_34 to i64
  %buf_addr_9 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_35
  %c = load i8* %buf_addr_9, align 1
  %tmp_36 = or i4 %tmp_1, 3
  %tmp_37 = zext i4 %tmp_36 to i64
  %buf_addr_10 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_37
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
  %tmp_38 = xor i8 %tmp4, %a
  store i8 %tmp_38, i8* %buf_addr, align 1
  %x_assign_6 = xor i8 %c, %b
  %y_13 = shl i8 %x_assign_6, 1
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_6, i32 7)
  %tmp_1_i6 = xor i8 %y_13, 27
  %y_14 = select i1 %tmp_15, i8 %tmp_1_i6, i8 %y_13
  %tmp5 = xor i8 %y_14, %y
  %tmp_39 = xor i8 %tmp5, %b
  store i8 %tmp_39, i8* %buf_addr_8, align 1
  %x_assign_7 = xor i8 %d, %c
  %y_15 = shl i8 %x_assign_7, 1
  %tmp_17 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_7, i32 7)
  %tmp_1_i7 = xor i8 %y_15, 27
  %y_16 = select i1 %tmp_17, i8 %tmp_1_i7, i8 %y_15
  %tmp6 = xor i8 %y_16, %x
  %tmp_40 = xor i8 %tmp6, %c
  store i8 %tmp_40, i8* %buf_addr_9, align 1
  %x_assign_8 = xor i8 %d, %a
  %y_17 = shl i8 %x_assign_8, 1
  %tmp_19 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_8, i32 7)
  %tmp_1_i8 = xor i8 %y_17, 27
  %y_18 = select i1 %tmp_19, i8 %tmp_1_i8, i8 %y_17
  %tmp7 = xor i8 %y_18, %y
  %tmp_41 = xor i8 %tmp7, %d
  store i8 %tmp_41, i8* %buf_addr_10, align 1
  %i_31 = add i5 4, %i
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
  %tmp_42 = zext i8 %k_load_2 to i64
  %sbox_addr_1 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_42
  %sbox_load_1 = load i8* %sbox_addr_1, align 1
  %k_addr_3 = getelementptr [32 x i8]* %k, i64 0, i64 1
  %k_load_3 = load i8* %k_addr_3, align 1
  %tmp_43 = xor i8 %k_load_3, %sbox_load_1
  store i8 %tmp_43, i8* %k_addr_3, align 1
  %k_addr_4 = getelementptr [32 x i8]* %k, i64 0, i64 31
  %k_load_4 = load i8* %k_addr_4, align 1
  %tmp_44 = zext i8 %k_load_4 to i64
  %sbox_addr_2 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_44
  %sbox_load_2 = load i8* %sbox_addr_2, align 1
  %k_addr_5 = getelementptr [32 x i8]* %k, i64 0, i64 2
  %k_load_5 = load i8* %k_addr_5, align 1
  %tmp_45 = xor i8 %k_load_5, %sbox_load_2
  store i8 %tmp_45, i8* %k_addr_5, align 1
  %k_addr_6 = getelementptr [32 x i8]* %k, i64 0, i64 28
  %k_load_6 = load i8* %k_addr_6, align 1
  %tmp_46 = zext i8 %k_load_6 to i64
  %sbox_addr_3 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_46
  %sbox_load_3 = load i8* %sbox_addr_3, align 1
  %k_addr_7 = getelementptr [32 x i8]* %k, i64 0, i64 3
  %k_load_7 = load i8* %k_addr_7, align 1
  %tmp_47 = xor i8 %k_load_7, %sbox_load_3
  store i8 %tmp_47, i8* %k_addr_7, align 1
  %y = shl i8 %rc_read_1, 1
  %tmp_21 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %rc_read_1, i32 7)
  %tmp_1_i = xor i8 %y, 27
  %y_20 = select i1 %tmp_21, i8 %tmp_1_i, i8 %y
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 4, %0 ], [ %i_32, %2 ]
  %tmp_22 = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i, i32 4)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  br i1 %tmp_22, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp_23 = trunc i5 %i to i4
  %tmp_49 = add i4 -4, %tmp_23
  %tmp_50 = zext i4 %tmp_49 to i64
  %k_addr_8 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_50
  %k_load_8 = load i8* %k_addr_8, align 1
  %tmp_51 = zext i5 %i to i64
  %k_addr_9 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_51
  %k_load_9 = load i8* %k_addr_9, align 1
  %tmp_52 = xor i8 %k_load_9, %k_load_8
  store i8 %tmp_52, i8* %k_addr_9, align 1
  %tmp_53 = add i4 -3, %tmp_23
  %tmp_54 = zext i4 %tmp_53 to i64
  %k_addr_10 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_54
  %k_load_10 = load i8* %k_addr_10, align 1
  %tmp_55 = or i4 %tmp_23, 1
  %tmp_56 = zext i4 %tmp_55 to i64
  %k_addr_11 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_56
  %k_load_11 = load i8* %k_addr_11, align 1
  %tmp_57 = xor i8 %k_load_11, %k_load_10
  store i8 %tmp_57, i8* %k_addr_11, align 1
  %tmp_58 = add i4 -2, %tmp_23
  %tmp_59 = zext i4 %tmp_58 to i64
  %k_addr_12 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_59
  %k_load_12 = load i8* %k_addr_12, align 1
  %tmp_60 = or i4 %tmp_23, 2
  %tmp_61 = zext i4 %tmp_60 to i64
  %k_addr_13 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_61
  %k_load_13 = load i8* %k_addr_13, align 1
  %tmp_62 = xor i8 %k_load_13, %k_load_12
  store i8 %tmp_62, i8* %k_addr_13, align 1
  %tmp_63 = add i4 -1, %tmp_23
  %tmp_64 = zext i4 %tmp_63 to i64
  %k_addr_14 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_64
  %k_load_14 = load i8* %k_addr_14, align 1
  %tmp_65 = or i4 %tmp_23, 3
  %tmp_66 = zext i4 %tmp_65 to i64
  %k_addr_15 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_66
  %k_load_15 = load i8* %k_addr_15, align 1
  %tmp_67 = xor i8 %k_load_15, %k_load_14
  store i8 %tmp_67, i8* %k_addr_15, align 1
  %i_32 = add i5 4, %i
  br label %1

; <label>:3                                       ; preds = %1
  %k_addr_16 = getelementptr [32 x i8]* %k, i64 0, i64 12
  %k_load_16 = load i8* %k_addr_16, align 1
  %tmp_48 = zext i8 %k_load_16 to i64
  %sbox_addr_4 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_48
  %sbox_load_4 = load i8* %sbox_addr_4, align 1
  %k_addr_17 = getelementptr [32 x i8]* %k, i64 0, i64 16
  %k_load_17 = load i8* %k_addr_17, align 1
  %tmp_68 = xor i8 %k_load_17, %sbox_load_4
  store i8 %tmp_68, i8* %k_addr_17, align 1
  %k_addr_18 = getelementptr [32 x i8]* %k, i64 0, i64 13
  %k_load_18 = load i8* %k_addr_18, align 1
  %tmp_69 = zext i8 %k_load_18 to i64
  %sbox_addr_5 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_69
  %sbox_load_5 = load i8* %sbox_addr_5, align 1
  %k_addr_19 = getelementptr [32 x i8]* %k, i64 0, i64 17
  %k_load_19 = load i8* %k_addr_19, align 1
  %tmp_70 = xor i8 %k_load_19, %sbox_load_5
  store i8 %tmp_70, i8* %k_addr_19, align 1
  %k_addr_20 = getelementptr [32 x i8]* %k, i64 0, i64 14
  %k_load_20 = load i8* %k_addr_20, align 1
  %tmp_71 = zext i8 %k_load_20 to i64
  %sbox_addr_6 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_71
  %sbox_load_6 = load i8* %sbox_addr_6, align 1
  %k_addr_21 = getelementptr [32 x i8]* %k, i64 0, i64 18
  %k_load_21 = load i8* %k_addr_21, align 1
  %tmp_72 = xor i8 %k_load_21, %sbox_load_6
  store i8 %tmp_72, i8* %k_addr_21, align 1
  %k_addr_22 = getelementptr [32 x i8]* %k, i64 0, i64 15
  %k_load_22 = load i8* %k_addr_22, align 1
  %tmp_73 = zext i8 %k_load_22 to i64
  %sbox_addr_7 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_73
  %sbox_load_7 = load i8* %sbox_addr_7, align 1
  %k_addr_23 = getelementptr [32 x i8]* %k, i64 0, i64 19
  %k_load_23 = load i8* %k_addr_23, align 1
  %tmp_74 = xor i8 %k_load_23, %sbox_load_7
  store i8 %tmp_74, i8* %k_addr_23, align 1
  br label %4

; <label>:4                                       ; preds = %5, %3
  %i_1 = phi i6 [ 20, %3 ], [ %i_33, %5 ]
  %tmp_24 = call i1 @_ssdm_op_BitSelect.i1.i6.i32(i6 %i_1, i32 5)
  %empty_24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  br i1 %tmp_24, label %6, label %5

; <label>:5                                       ; preds = %4
  %tmp_25 = trunc i6 %i_1 to i5
  %tmp_75 = add i5 -4, %tmp_25
  %tmp_76 = zext i5 %tmp_75 to i64
  %k_addr_24 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_76
  %k_load_24 = load i8* %k_addr_24, align 1
  %tmp_77 = zext i6 %i_1 to i64
  %k_addr_25 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_77
  %k_load_25 = load i8* %k_addr_25, align 1
  %tmp_78 = xor i8 %k_load_25, %k_load_24
  store i8 %tmp_78, i8* %k_addr_25, align 1
  %tmp_79 = add i5 -3, %tmp_25
  %tmp_80 = zext i5 %tmp_79 to i64
  %k_addr_26 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_80
  %k_load_26 = load i8* %k_addr_26, align 1
  %tmp_81 = or i5 %tmp_25, 1
  %tmp_82 = zext i5 %tmp_81 to i64
  %k_addr_27 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_82
  %k_load_27 = load i8* %k_addr_27, align 1
  %tmp_83 = xor i8 %k_load_27, %k_load_26
  store i8 %tmp_83, i8* %k_addr_27, align 1
  %tmp_84 = add i5 -2, %tmp_25
  %tmp_85 = zext i5 %tmp_84 to i64
  %k_addr_28 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_85
  %k_load_28 = load i8* %k_addr_28, align 1
  %tmp_86 = or i5 %tmp_25, 2
  %tmp_87 = zext i5 %tmp_86 to i64
  %k_addr_29 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_87
  %k_load_29 = load i8* %k_addr_29, align 1
  %tmp_88 = xor i8 %k_load_29, %k_load_28
  store i8 %tmp_88, i8* %k_addr_29, align 1
  %tmp_89 = add i5 -1, %tmp_25
  %tmp_90 = zext i5 %tmp_89 to i64
  %k_addr_30 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_90
  %k_load_30 = load i8* %k_addr_30, align 1
  %tmp_91 = or i5 %tmp_25, 3
  %tmp_92 = zext i5 %tmp_91 to i64
  %k_addr_31 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_92
  %k_load_31 = load i8* %k_addr_31, align 1
  %tmp_93 = xor i8 %k_load_31, %k_load_30
  store i8 %tmp_93, i8* %k_addr_31, align 1
  %i_33 = add i6 4, %i_1
  br label %4

; <label>:6                                       ; preds = %4
  ret i8 %y_20
}

define internal fastcc i8 @aes_expandDecKey(i8 %rc_read) {
  %rc_read_2 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %rc_read)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ -4, %0 ], [ %i_31, %2 ]
  %tmp = icmp ugt i5 %i, -16
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  br i1 %tmp, label %2, label %3

; <label>:2                                       ; preds = %1
  %i_31 = add i5 %i, -4
  %tmp_94 = zext i5 %i_31 to i64
  %ctx_key_addr = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_94
  %ctx_key_load = load i8* %ctx_key_addr, align 4
  %tmp_95 = zext i5 %i to i64
  %ctx_key_addr_1 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_95
  %ctx_key_load_1 = load i8* %ctx_key_addr_1, align 4
  %tmp_96 = xor i8 %ctx_key_load_1, %ctx_key_load
  store i8 %tmp_96, i8* %ctx_key_addr_1, align 4
  %tmp_97 = add i5 %i, -3
  %tmp_98 = zext i5 %tmp_97 to i64
  %ctx_key_addr_2 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_98
  %ctx_key_load_2 = load i8* %ctx_key_addr_2, align 1
  %tmp_99 = or i5 %i, 1
  %tmp_100 = zext i5 %tmp_99 to i64
  %ctx_key_addr_3 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_100
  %ctx_key_load_3 = load i8* %ctx_key_addr_3, align 1
  %tmp_101 = xor i8 %ctx_key_load_3, %ctx_key_load_2
  store i8 %tmp_101, i8* %ctx_key_addr_3, align 1
  %tmp_102 = add i5 %i, -2
  %tmp_103 = zext i5 %tmp_102 to i64
  %ctx_key_addr_4 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_103
  %ctx_key_load_4 = load i8* %ctx_key_addr_4, align 2
  %tmp_104 = or i5 %i, 2
  %tmp_105 = zext i5 %tmp_104 to i64
  %ctx_key_addr_5 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_105
  %ctx_key_load_5 = load i8* %ctx_key_addr_5, align 2
  %tmp_106 = xor i8 %ctx_key_load_5, %ctx_key_load_4
  store i8 %tmp_106, i8* %ctx_key_addr_5, align 2
  %tmp_107 = add i5 %i, -1
  %tmp_108 = zext i5 %tmp_107 to i64
  %ctx_key_addr_6 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_108
  %ctx_key_load_6 = load i8* %ctx_key_addr_6, align 1
  %tmp_109 = or i5 %i, 3
  %tmp_110 = zext i5 %tmp_109 to i64
  %ctx_key_addr_7 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_110
  %ctx_key_load_7 = load i8* %ctx_key_addr_7, align 1
  %tmp_111 = xor i8 %ctx_key_load_7, %ctx_key_load_6
  store i8 %tmp_111, i8* %ctx_key_addr_7, align 1
  br label %1

; <label>:3                                       ; preds = %1
  %ctx_key_load_8 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 12), align 4
  %tmp_s = zext i8 %ctx_key_load_8 to i64
  %sbox_addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_s
  %sbox_load = load i8* %sbox_addr, align 1
  %ctx_key_load_9 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 16), align 16
  %tmp_112 = xor i8 %ctx_key_load_9, %sbox_load
  store i8 %tmp_112, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 16), align 16
  %ctx_key_load_10 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 13), align 1
  %tmp_113 = zext i8 %ctx_key_load_10 to i64
  %sbox_addr_8 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_113
  %sbox_load_8 = load i8* %sbox_addr_8, align 1
  %ctx_key_load_11 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 17), align 1
  %tmp_114 = xor i8 %ctx_key_load_11, %sbox_load_8
  store i8 %tmp_114, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 17), align 1
  %ctx_key_load_12 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 14), align 2
  %tmp_115 = zext i8 %ctx_key_load_12 to i64
  %sbox_addr_9 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_115
  %sbox_load_9 = load i8* %sbox_addr_9, align 1
  %ctx_key_load_13 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 18), align 2
  %tmp_116 = xor i8 %ctx_key_load_13, %sbox_load_9
  store i8 %tmp_116, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 18), align 2
  %ctx_key_load_14 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 15), align 1
  %tmp_117 = zext i8 %ctx_key_load_14 to i64
  %sbox_addr_10 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_117
  %sbox_load_10 = load i8* %sbox_addr_10, align 1
  %ctx_key_load_15 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 19), align 1
  %tmp_118 = xor i8 %ctx_key_load_15, %sbox_load_10
  store i8 %tmp_118, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 19), align 1
  br label %4

; <label>:4                                       ; preds = %5, %3
  %i_1 = phi i4 [ -4, %3 ], [ %i_s, %5 ]
  %tmp_119 = icmp eq i4 %i_1, 0
  %empty_25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  br i1 %tmp_119, label %6, label %5

; <label>:5                                       ; preds = %4
  %tmp_154_cast = zext i4 %i_1 to i5
  %tmp_130 = add i5 %tmp_154_cast, -4
  %tmp_131 = sext i5 %tmp_130 to i64
  %ctx_key_addr_8 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_131
  %ctx_key_load_24 = load i8* %ctx_key_addr_8, align 4
  %tmp_132 = zext i4 %i_1 to i64
  %ctx_key_addr_9 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_132
  %ctx_key_load_25 = load i8* %ctx_key_addr_9, align 4
  %tmp_133 = xor i8 %ctx_key_load_25, %ctx_key_load_24
  store i8 %tmp_133, i8* %ctx_key_addr_9, align 4
  %tmp_134 = add i5 %tmp_154_cast, -3
  %tmp_135 = sext i5 %tmp_134 to i64
  %ctx_key_addr_10 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_135
  %ctx_key_load_26 = load i8* %ctx_key_addr_10, align 1
  %tmp_136 = or i4 %i_1, 1
  %tmp_137 = zext i4 %tmp_136 to i64
  %ctx_key_addr_11 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_137
  %ctx_key_load_27 = load i8* %ctx_key_addr_11, align 1
  %tmp_138 = xor i8 %ctx_key_load_27, %ctx_key_load_26
  store i8 %tmp_138, i8* %ctx_key_addr_11, align 1
  %tmp_139 = add i5 %tmp_154_cast, -2
  %tmp_140 = sext i5 %tmp_139 to i64
  %ctx_key_addr_12 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_140
  %ctx_key_load_28 = load i8* %ctx_key_addr_12, align 2
  %tmp_141 = or i4 %i_1, 2
  %tmp_142 = zext i4 %tmp_141 to i64
  %ctx_key_addr_13 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_142
  %ctx_key_load_29 = load i8* %ctx_key_addr_13, align 2
  %tmp_143 = xor i8 %ctx_key_load_29, %ctx_key_load_28
  store i8 %tmp_143, i8* %ctx_key_addr_13, align 2
  %tmp_144 = add i4 %i_1, -1
  %tmp_145 = zext i4 %tmp_144 to i64
  %ctx_key_addr_14 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_145
  %ctx_key_load_30 = load i8* %ctx_key_addr_14, align 1
  %tmp_146 = or i4 %i_1, 3
  %tmp_147 = zext i4 %tmp_146 to i64
  %ctx_key_addr_15 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_147
  %ctx_key_load_31 = load i8* %ctx_key_addr_15, align 1
  %tmp_148 = xor i8 %ctx_key_load_31, %ctx_key_load_30
  store i8 %tmp_148, i8* %ctx_key_addr_15, align 1
  %i_s = add i4 %i_1, -4
  br label %4

; <label>:6                                       ; preds = %4
  %tmp_120 = call i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8 %rc_read_2, i32 1, i32 7)
  %tmp_11 = zext i7 %tmp_120 to i8
  %tmp_26 = trunc i8 %rc_read_2 to i1
  %tmp_121 = select i1 %tmp_26, i8 -115, i8 0
  %rc_write_assign = xor i8 %tmp_121, %tmp_11
  %ctx_key_load_16 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 29), align 1
  %tmp_122 = zext i8 %ctx_key_load_16 to i64
  %sbox_addr_11 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_122
  %sbox_load_11 = load i8* %sbox_addr_11, align 1
  %ctx_key_load_17 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 0), align 16
  %tmp1 = xor i8 %ctx_key_load_17, %rc_write_assign
  %tmp_123 = xor i8 %tmp1, %sbox_load_11
  store i8 %tmp_123, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 0), align 16
  %ctx_key_load_18 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 30), align 2
  %tmp_124 = zext i8 %ctx_key_load_18 to i64
  %sbox_addr_12 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_124
  %sbox_load_12 = load i8* %sbox_addr_12, align 1
  %ctx_key_load_19 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 1), align 1
  %tmp_125 = xor i8 %ctx_key_load_19, %sbox_load_12
  store i8 %tmp_125, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 1), align 1
  %ctx_key_load_20 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 31), align 1
  %tmp_126 = zext i8 %ctx_key_load_20 to i64
  %sbox_addr_13 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_126
  %sbox_load_13 = load i8* %sbox_addr_13, align 1
  %ctx_key_load_21 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 2), align 2
  %tmp_127 = xor i8 %ctx_key_load_21, %sbox_load_13
  store i8 %tmp_127, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 2), align 2
  %ctx_key_load_22 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 28), align 4
  %tmp_128 = zext i8 %ctx_key_load_22 to i64
  %sbox_addr_14 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_128
  %sbox_load_14 = load i8* %sbox_addr_14, align 1
  %ctx_key_load_23 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 3), align 1
  %tmp_129 = xor i8 %ctx_key_load_23, %sbox_load_14
  store i8 %tmp_129, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 3), align 1
  ret i8 %rc_write_assign
}

define internal fastcc void @aes_encrypt_ecb([16 x i8]* nocapture %buf_r) {
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i5 [ -16, %0 ], [ %i_34, %2 ]
  %i_34 = add i5 %i_i, -1
  %i_36_cast = sext i5 %i_34 to i8
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
  %tmp_i_26 = zext i8 %i_36_cast to i64
  %ctx_enckey_addr = getelementptr [32 x i8]* @ctx_enckey, i64 0, i64 %tmp_i_26
  %ctx_enckey_load = load i8* %ctx_enckey_addr, align 1
  %ctx_key_addr = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_i_26
  store i8 %ctx_enckey_load, i8* %ctx_key_addr, align 1
  %buf_addr_22 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_i_26
  %buf_load = load i8* %buf_addr_22, align 1
  %tmp_211_i = xor i8 %buf_load, %ctx_enckey_load
  store i8 %tmp_211_i, i8* %buf_addr_22, align 1
  %tmp_213_i = add i5 %i_i, 15
  %tmp_214_i = zext i5 %tmp_213_i to i64
  %ctx_enckey_addr_1 = getelementptr [32 x i8]* @ctx_enckey, i64 0, i64 %tmp_214_i
  %ctx_enckey_load_1 = load i8* %ctx_enckey_addr_1, align 1
  %ctx_key_addr_16 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_214_i
  store i8 %ctx_enckey_load_1, i8* %ctx_key_addr_16, align 1
  br label %1

aes_addRoundKey_cpy.exit:                         ; preds = %8, %aes_addRoundKey_cpy.exit.preheader
  %i = phi i4 [ %i_42, %8 ], [ 1, %aes_addRoundKey_cpy.exit.preheader ]
  %exitcond = icmp eq i4 %i, -2
  %empty_27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 13, i64 13, i64 13)
  br i1 %exitcond, label %.preheader.preheader, label %.preheader50.preheader

.preheader50.preheader:                           ; preds = %aes_addRoundKey_cpy.exit
  br label %.preheader50

.preheader.preheader:                             ; preds = %aes_addRoundKey_cpy.exit
  br label %.preheader

.preheader50:                                     ; preds = %.preheader50.preheader, %3
  %i_i4 = phi i5 [ %i_36, %3 ], [ -16, %.preheader50.preheader ]
  %i_36 = add i5 %i_i4, -1
  %i_38_cast = sext i5 %i_36 to i8
  %tmp_i5 = icmp eq i5 %i_i4, 0
  %empty_28 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  br i1 %tmp_i5, label %aes_subBytes.exit, label %3

; <label>:3                                       ; preds = %.preheader50
  %tmp_i6 = zext i8 %i_38_cast to i64
  %buf_addr_24 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_i6
  %buf_load_31 = load i8* %buf_addr_24, align 1
  %tmp_33_i = zext i8 %buf_load_31 to i64
  %sbox_addr_15 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_33_i
  %sbox_load_15 = load i8* %sbox_addr_15, align 1
  store i8 %sbox_load_15, i8* %buf_addr_24, align 1
  br label %.preheader50

aes_subBytes.exit:                                ; preds = %.preheader50
  %i_39 = load i8* %buf_addr, align 1
  %buf_load_20 = load i8* %buf_addr_11, align 1
  store i8 %buf_load_20, i8* %buf_addr, align 1
  %buf_load_21 = load i8* %buf_addr_12, align 1
  store i8 %buf_load_21, i8* %buf_addr_11, align 1
  %buf_load_22 = load i8* %buf_addr_13, align 1
  store i8 %buf_load_22, i8* %buf_addr_12, align 1
  store i8 %i_39, i8* %buf_addr_13, align 1
  %i_40 = load i8* %buf_addr_14, align 1
  %buf_load_24 = load i8* %buf_addr_15, align 1
  store i8 %buf_load_24, i8* %buf_addr_14, align 1
  store i8 %i_40, i8* %buf_addr_15, align 1
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
  %i_i2 = phi i5 [ 0, %aes_subBytes.exit ], [ %i_41, %5 ]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i_i2, i32 4)
  %empty_29 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  br i1 %tmp, label %aes_mixColumns.exit, label %5

; <label>:5                                       ; preds = %4
  %tmp_i2 = zext i5 %i_i2 to i64
  %buf_addr_25 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_i2
  %a = load i8* %buf_addr_25, align 1
  %tmp_28 = trunc i5 %i_i2 to i4
  %tmp_67_i = or i4 %tmp_28, 1
  %tmp_68_i = zext i4 %tmp_67_i to i64
  %buf_addr_26 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_68_i
  %b = load i8* %buf_addr_26, align 1
  %tmp_69_i = or i4 %tmp_28, 2
  %tmp_70_i = zext i4 %tmp_69_i to i64
  %buf_addr_27 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_70_i
  %c = load i8* %buf_addr_27, align 1
  %tmp_71_i = or i4 %tmp_28, 3
  %tmp_72_i = zext i4 %tmp_71_i to i64
  %buf_addr_28 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_72_i
  %d = load i8* %buf_addr_28, align 1
  %x_assign = xor i8 %b, %a
  %tmp_74_i = xor i8 %c, %x_assign
  %e = xor i8 %d, %tmp_74_i
  %y = shl i8 %x_assign, 1
  %tmp_30 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign, i32 7)
  %tmp_1_i_i = xor i8 %y, 27
  %y_21 = select i1 %tmp_30, i8 %tmp_1_i_i, i8 %y
  %tmp1 = xor i8 %y_21, %e
  %tmp_77_i = xor i8 %tmp1, %a
  store i8 %tmp_77_i, i8* %buf_addr_25, align 1
  %x_assign_9 = xor i8 %c, %b
  %y_22 = shl i8 %x_assign_9, 1
  %tmp_32 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_9, i32 7)
  %tmp_1_i10_i = xor i8 %y_22, 27
  %y_23 = select i1 %tmp_32, i8 %tmp_1_i10_i, i8 %y_22
  %tmp2 = xor i8 %y_23, %e
  %tmp_81_i = xor i8 %tmp2, %b
  store i8 %tmp_81_i, i8* %buf_addr_26, align 1
  %x_assign_s = xor i8 %d, %c
  %y_24 = shl i8 %x_assign_s, 1
  %tmp_34 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_s, i32 7)
  %tmp_1_i14_i = xor i8 %y_24, 27
  %y_25 = select i1 %tmp_34, i8 %tmp_1_i14_i, i8 %y_24
  %tmp3 = xor i8 %y_25, %e
  %tmp_85_i = xor i8 %tmp3, %c
  store i8 %tmp_85_i, i8* %buf_addr_27, align 1
  %x_assign_1 = xor i8 %d, %a
  %y_26 = shl i8 %x_assign_1, 1
  %tmp_36 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1, i32 7)
  %tmp_1_i18_i = xor i8 %y_26, 27
  %y_27 = select i1 %tmp_36, i8 %tmp_1_i18_i, i8 %y_26
  %tmp_89_i = xor i8 %y_27, %tmp_74_i
  store i8 %tmp_89_i, i8* %buf_addr_28, align 1
  %i_41 = add i5 4, %i_i2
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
  %i_42 = add i4 %i, 1
  br label %aes_addRoundKey_cpy.exit

.preheader:                                       ; preds = %.preheader.preheader, %9
  %i_i1 = phi i5 [ %i_35, %9 ], [ -16, %.preheader.preheader ]
  %i_35 = add i5 %i_i1, -1
  %i_37_cast = sext i5 %i_35 to i8
  %tmp_i8 = icmp eq i5 %i_i1, 0
  %empty_30 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  br i1 %tmp_i8, label %aes_subBytes.exit25, label %9

; <label>:9                                       ; preds = %.preheader
  %tmp_i1 = zext i8 %i_37_cast to i64
  %buf_addr_23 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_i1
  %buf_load_18 = load i8* %buf_addr_23, align 1
  %tmp_33_i1 = zext i8 %buf_load_18 to i64
  %sbox_addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_33_i1
  %sbox_load = load i8* %sbox_addr, align 1
  store i8 %sbox_load, i8* %buf_addr_23, align 1
  br label %.preheader

aes_subBytes.exit25:                              ; preds = %.preheader
  %rcon_load = load i8* %rcon
  %i_37 = load i8* %buf_addr, align 1
  %buf_load_7 = load i8* %buf_addr_11, align 1
  store i8 %buf_load_7, i8* %buf_addr, align 1
  %buf_load_8 = load i8* %buf_addr_12, align 1
  store i8 %buf_load_8, i8* %buf_addr_11, align 1
  %buf_load_9 = load i8* %buf_addr_13, align 1
  store i8 %buf_load_9, i8* %buf_addr_12, align 1
  store i8 %i_37, i8* %buf_addr_13, align 1
  %i_38 = load i8* %buf_addr_14, align 1
  %buf_load_11 = load i8* %buf_addr_15, align 1
  store i8 %buf_load_11, i8* %buf_addr_14, align 1
  store i8 %i_38, i8* %buf_addr_15, align 1
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
  %i_i = phi i5 [ -16, %0 ], [ %i_43, %2 ]
  %i_43 = add i5 %i_i, -1
  %i_46_cast = sext i5 %i_43 to i8
  %tmp_i = icmp eq i5 %i_i, 0
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  br i1 %tmp_i, label %aes_addRoundKey_cpy.exit, label %2

; <label>:2                                       ; preds = %1
  %tmp_i_31 = zext i8 %i_46_cast to i64
  %ctx_deckey_addr = getelementptr [32 x i8]* @ctx_deckey, i64 0, i64 %tmp_i_31
  %ctx_deckey_load = load i8* %ctx_deckey_addr, align 1
  %ctx_key_addr = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_i_31
  store i8 %ctx_deckey_load, i8* %ctx_key_addr, align 1
  %buf_addr_40 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_i_31
  %buf_load_46 = load i8* %buf_addr_40, align 1
  %tmp_211_i = xor i8 %buf_load_46, %ctx_deckey_load
  store i8 %tmp_211_i, i8* %buf_addr_40, align 1
  %tmp_213_i = add i5 %i_i, 15
  %tmp_214_i = zext i5 %tmp_213_i to i64
  %ctx_deckey_addr_1 = getelementptr [32 x i8]* @ctx_deckey, i64 0, i64 %tmp_214_i
  %ctx_deckey_load_1 = load i8* %ctx_deckey_addr_1, align 1
  %ctx_key_addr_17 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_214_i
  store i8 %ctx_deckey_load_1, i8* %ctx_key_addr_17, align 1
  br label %1

aes_addRoundKey_cpy.exit:                         ; preds = %1
  %buf_addr = getelementptr [16 x i8]* %buf_r, i64 0, i64 1
  %i_44 = load i8* %buf_addr, align 1
  %buf_addr_29 = getelementptr [16 x i8]* %buf_r, i64 0, i64 13
  %buf_load = load i8* %buf_addr_29, align 1
  store i8 %buf_load, i8* %buf_addr, align 1
  %buf_addr_30 = getelementptr [16 x i8]* %buf_r, i64 0, i64 9
  %buf_load_36 = load i8* %buf_addr_30, align 1
  store i8 %buf_load_36, i8* %buf_addr_29, align 1
  %buf_addr_31 = getelementptr [16 x i8]* %buf_r, i64 0, i64 5
  %buf_load_37 = load i8* %buf_addr_31, align 1
  store i8 %buf_load_37, i8* %buf_addr_30, align 1
  store i8 %i_44, i8* %buf_addr_31, align 1
  %buf_addr_32 = getelementptr [16 x i8]* %buf_r, i64 0, i64 2
  %i_45 = load i8* %buf_addr_32, align 1
  %buf_addr_33 = getelementptr [16 x i8]* %buf_r, i64 0, i64 10
  %buf_load_39 = load i8* %buf_addr_33, align 1
  store i8 %buf_load_39, i8* %buf_addr_32, align 1
  store i8 %i_45, i8* %buf_addr_33, align 1
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
  %i_i5 = phi i5 [ -16, %aes_addRoundKey_cpy.exit ], [ %i_46, %4 ]
  %i_46 = add i5 %i_i5, -1
  %i_49_cast = sext i5 %i_46 to i8
  %tmp_i6 = icmp eq i5 %i_i5, 0
  %empty_32 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  br i1 %tmp_i6, label %aes_subBytes_inv.exit.preheader, label %4

aes_subBytes_inv.exit.preheader:                  ; preds = %3
  %rcon = alloca i8
  store i8 -128, i8* %rcon
  br label %aes_subBytes_inv.exit

; <label>:4                                       ; preds = %3
  %tmp_i7 = zext i8 %i_49_cast to i64
  %buf_addr_41 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_i7
  %buf_load_47 = load i8* %buf_addr_41, align 1
  %tmp_32_i = zext i8 %buf_load_47 to i64
  %sboxinv_addr = getelementptr inbounds [256 x i8]* @sboxinv, i64 0, i64 %tmp_32_i
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
  %i_47 = load i8* %buf_addr, align 1
  %buf_load_49 = load i8* %buf_addr_29, align 1
  store i8 %buf_load_49, i8* %buf_addr, align 1
  %buf_load_50 = load i8* %buf_addr_30, align 1
  store i8 %buf_load_50, i8* %buf_addr_29, align 1
  %buf_load_51 = load i8* %buf_addr_31, align 1
  store i8 %buf_load_51, i8* %buf_addr_30, align 1
  store i8 %i_47, i8* %buf_addr_31, align 1
  %i_48 = load i8* %buf_addr_32, align 1
  %buf_load_53 = load i8* %buf_addr_33, align 1
  store i8 %buf_load_53, i8* %buf_addr_32, align 1
  store i8 %i_48, i8* %buf_addr_33, align 1
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
  %i_i3 = phi i5 [ -16, %8 ], [ %i_49, %10 ]
  %i_49 = add i5 %i_i3, -1
  %i_52_cast = sext i5 %i_49 to i8
  %tmp_i1 = icmp eq i5 %i_i3, 0
  %empty_34 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  br i1 %tmp_i1, label %aes_subBytes_inv.exit43, label %10

; <label>:10                                      ; preds = %9
  %tmp_i3 = zext i8 %i_52_cast to i64
  %buf_addr_42 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_i3
  %buf_load_60 = load i8* %buf_addr_42, align 1
  %tmp_32_i1 = zext i8 %buf_load_60 to i64
  %sboxinv_addr_1 = getelementptr inbounds [256 x i8]* @sboxinv, i64 0, i64 %tmp_32_i1
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
  %i = phi i5 [ -16, %0 ], [ %i_50, %2 ]
  %i_50 = add i5 %i, -1
  %i_53_cast = sext i5 %i_50 to i8
  %tmp = icmp eq i5 %i, 0
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  br i1 %tmp, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp_s = zext i8 %i_53_cast to i64
  %sum = add i5 %i_50, %tmp_38
  %sum_cast = zext i5 %sum to i64
  %key_addr = getelementptr [32 x i8]* %key, i64 0, i64 %sum_cast
  %key_load = load i8* %key_addr, align 1
  %buf_addr = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_s
  %buf_load = load i8* %buf_addr, align 1
  %tmp_149 = xor i8 %buf_load, %key_load
  store i8 %tmp_149, i8* %buf_addr, align 1
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
