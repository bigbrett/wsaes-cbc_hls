; ModuleID = '/home/jd/workspace/aes256cbc/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xorv = internal unnamed_addr global [16 x i8] zeroinitializer, align 16
@sboxinv = internal unnamed_addr constant [256 x i8] c"R\09j\D506\A58\BF@\A3\9E\81\F3\D7\FB|\E39\82\9B/\FF\874\8ECD\C4\DE\E9\CBT{\942\A6\C2#=\EEL\95\0BB\FA\C3N\08.\A1f(\D9$\B2v[\A2Im\8B\D1%r\F8\F6d\86h\98\16\D4\A4\5C\CC]e\B6\92lpHP\FD\ED\B9\DA^\15FW\A7\8D\9D\84\90\D8\AB\00\8C\BC\D3\0A\F7\E4X\05\B8\B3E\06\D0,\1E\8F\CA?\0F\02\C1\AF\BD\03\01\13\8Ak:\91\11AOg\DC\EA\97\F2\CF\CE\F0\B4\E6s\96\ACt\22\E7\AD5\85\E2\F97\E8\1Cu\DFnG\F1\1Aq\1D)\C5\89o\B7b\0E\AA\18\BE\1B\FCV>K\C6\D2y \9A\DB\C0\FEx\CDZ\F4\1F\DD\A83\88\07\C71\B1\12\10Y'\80\EC_`Q\7F\A9\19\B5J\0D-\E5z\9F\93\C9\9C\EF\A0\E0;M\AE*\F5\B0\C8\EB\BB<\83S\99a\17+\04~\BAw\D6&\E1i\14cU!\0C}", align 16
@sbox = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 16
@memcpy_OC_memptr_OC_s = internal unnamed_addr constant [15 x i8] c"memcpy.memptr.\00"
@memcpy_OC_OC_memptr = internal unnamed_addr constant [15 x i8] c"memcpy..memptr\00"
@lastbuf = internal unnamed_addr global [16 x i8] zeroinitializer, align 16
@key = internal unnamed_addr global [32 x i8] zeroinitializer, align 16
@iv = internal unnamed_addr global [16 x i8] zeroinitializer, align 16
@ctx_key = internal global [32 x i8] zeroinitializer
@ctx_enckey = internal unnamed_addr global [32 x i8] zeroinitializer
@ctx_deckey = internal global [32 x i8] zeroinitializer
@burstwrite_OC_region = internal unnamed_addr constant [18 x i8] c"burstwrite.region\00"
@burstread_OC_region_s = internal unnamed_addr constant [17 x i8] c"burstread.region\00"
@aes256cbc_str = internal unnamed_addr constant [10 x i8] c"aes256cbc\00"
@p_str9 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str8 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str7 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str6 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str5 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str4 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str3 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str2 = private unnamed_addr constant [3 x i8] c"p0\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

declare i8 @llvm.part.select.i8(i8, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc void @aes_mixColumns_inv([16 x i8]* nocapture %buf_r) {
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 0, %0 ], [ %i_1, %2 ]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i, i32 4)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  br i1 %tmp, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp_7 = zext i5 %i to i64
  %buf_addr = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_7
  %a = load i8* %buf_addr, align 1
  %tmp_11 = trunc i5 %i to i4
  %tmp_9 = or i4 %tmp_11, 1
  %tmp_s = zext i4 %tmp_9 to i64
  %buf_addr_1 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_s
  %b = load i8* %buf_addr_1, align 1
  %tmp_1 = or i4 %tmp_11, 2
  %tmp_2 = zext i4 %tmp_1 to i64
  %buf_addr_2 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_2
  %c = load i8* %buf_addr_2, align 1
  %tmp_3 = or i4 %tmp_11, 3
  %tmp_4 = zext i4 %tmp_3 to i64
  %buf_addr_3 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_4
  %d = load i8* %buf_addr_3, align 1
  %x_assign_5 = xor i8 %b, %a
  %tmp1 = xor i8 %d, %x_assign_5
  %e = xor i8 %tmp1, %c
  %y_1 = shl i8 %e, 1
  %tmp_13 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %e, i32 7)
  %tmp_1_i = xor i8 %y_1, 27
  %y_19 = select i1 %tmp_13, i8 %tmp_1_i, i8 %y_1
  %tmp2 = xor i8 %a, %y_19
  %x_assign_1 = xor i8 %tmp2, %c
  %y_3 = shl i8 %x_assign_1, 1
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1, i32 7)
  %tmp_1_i1 = xor i8 %y_3, 27
  %y_4 = select i1 %tmp_15, i8 %tmp_1_i1, i8 %y_3
  %y_5 = shl i8 %y_4, 1
  %tmp_17 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %y_4, i32 7)
  %tmp_1_i2 = xor i8 %y_5, 27
  %y_6 = select i1 %tmp_17, i8 %tmp_1_i2, i8 %y_5
  %x = xor i8 %y_6, %e
  %tmp3 = xor i8 %b, %y_19
  %x_assign_3 = xor i8 %tmp3, %d
  %y_7 = shl i8 %x_assign_3, 1
  %tmp_19 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3, i32 7)
  %tmp_1_i3 = xor i8 %y_7, 27
  %y_8 = select i1 %tmp_19, i8 %tmp_1_i3, i8 %y_7
  %y_9 = shl i8 %y_8, 1
  %tmp_21 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %y_8, i32 7)
  %tmp_1_i4 = xor i8 %y_9, 27
  %y_10 = select i1 %tmp_21, i8 %tmp_1_i4, i8 %y_9
  %y = xor i8 %y_10, %e
  %y_11 = shl i8 %x_assign_5, 1
  %tmp_23 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_5, i32 7)
  %tmp_1_i5 = xor i8 %y_11, 27
  %y_12 = select i1 %tmp_23, i8 %tmp_1_i5, i8 %y_11
  %tmp4 = xor i8 %y_12, %x
  %tmp_5 = xor i8 %tmp4, %a
  store i8 %tmp_5, i8* %buf_addr, align 1
  %x_assign_6 = xor i8 %c, %b
  %y_13 = shl i8 %x_assign_6, 1
  %tmp_25 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_6, i32 7)
  %tmp_1_i6 = xor i8 %y_13, 27
  %y_14 = select i1 %tmp_25, i8 %tmp_1_i6, i8 %y_13
  %tmp5 = xor i8 %y_14, %y
  %tmp_6 = xor i8 %tmp5, %b
  store i8 %tmp_6, i8* %buf_addr_1, align 1
  %x_assign_7 = xor i8 %d, %c
  %y_15 = shl i8 %x_assign_7, 1
  %tmp_27 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_7, i32 7)
  %tmp_1_i7 = xor i8 %y_15, 27
  %y_16 = select i1 %tmp_27, i8 %tmp_1_i7, i8 %y_15
  %tmp6 = xor i8 %y_16, %x
  %tmp_8 = xor i8 %tmp6, %c
  store i8 %tmp_8, i8* %buf_addr_2, align 1
  %x_assign_8 = xor i8 %d, %a
  %y_17 = shl i8 %x_assign_8, 1
  %tmp_29 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_8, i32 7)
  %tmp_1_i8 = xor i8 %y_17, 27
  %y_18 = select i1 %tmp_29, i8 %tmp_1_i8, i8 %y_17
  %tmp7 = xor i8 %y_18, %y
  %tmp_10 = xor i8 %tmp7, %d
  store i8 %tmp_10, i8* %buf_addr_3, align 1
  %i_1 = add i5 4, %i
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
  %tmp_11 = zext i8 %k_load_2 to i64
  %sbox_addr_1 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_11
  %sbox_load_1 = load i8* %sbox_addr_1, align 1
  %k_addr_3 = getelementptr [32 x i8]* %k, i64 0, i64 1
  %k_load_3 = load i8* %k_addr_3, align 1
  %tmp_12 = xor i8 %k_load_3, %sbox_load_1
  store i8 %tmp_12, i8* %k_addr_3, align 1
  %k_addr_4 = getelementptr [32 x i8]* %k, i64 0, i64 31
  %k_load_4 = load i8* %k_addr_4, align 1
  %tmp_13 = zext i8 %k_load_4 to i64
  %sbox_addr_2 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_13
  %sbox_load_2 = load i8* %sbox_addr_2, align 1
  %k_addr_5 = getelementptr [32 x i8]* %k, i64 0, i64 2
  %k_load_5 = load i8* %k_addr_5, align 1
  %tmp_14 = xor i8 %k_load_5, %sbox_load_2
  store i8 %tmp_14, i8* %k_addr_5, align 1
  %k_addr_6 = getelementptr [32 x i8]* %k, i64 0, i64 28
  %k_load_6 = load i8* %k_addr_6, align 1
  %tmp_15 = zext i8 %k_load_6 to i64
  %sbox_addr_3 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_15
  %sbox_load_3 = load i8* %sbox_addr_3, align 1
  %k_addr_7 = getelementptr [32 x i8]* %k, i64 0, i64 3
  %k_load_7 = load i8* %k_addr_7, align 1
  %tmp_16 = xor i8 %k_load_7, %sbox_load_3
  store i8 %tmp_16, i8* %k_addr_7, align 1
  %y = shl i8 %rc_read_1, 1
  %tmp_65 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %rc_read_1, i32 7)
  %tmp_1_i = xor i8 %y, 27
  %y_20 = select i1 %tmp_65, i8 %tmp_1_i, i8 %y
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 4, %0 ], [ %i_2, %2 ]
  %tmp_66 = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i, i32 4)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  br i1 %tmp_66, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp_67 = trunc i5 %i to i4
  %tmp_18 = add i4 -4, %tmp_67
  %tmp_19 = zext i4 %tmp_18 to i64
  %k_addr_8 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_19
  %k_load_8 = load i8* %k_addr_8, align 1
  %tmp_20 = zext i5 %i to i64
  %k_addr_9 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_20
  %k_load_9 = load i8* %k_addr_9, align 1
  %tmp_21 = xor i8 %k_load_9, %k_load_8
  store i8 %tmp_21, i8* %k_addr_9, align 1
  %tmp_22 = add i4 -3, %tmp_67
  %tmp_23 = zext i4 %tmp_22 to i64
  %k_addr_10 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_23
  %k_load_10 = load i8* %k_addr_10, align 1
  %tmp_24 = or i4 %tmp_67, 1
  %tmp_25 = zext i4 %tmp_24 to i64
  %k_addr_11 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_25
  %k_load_11 = load i8* %k_addr_11, align 1
  %tmp_26 = xor i8 %k_load_11, %k_load_10
  store i8 %tmp_26, i8* %k_addr_11, align 1
  %tmp_27 = add i4 -2, %tmp_67
  %tmp_28 = zext i4 %tmp_27 to i64
  %k_addr_12 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_28
  %k_load_12 = load i8* %k_addr_12, align 1
  %tmp_29 = or i4 %tmp_67, 2
  %tmp_30 = zext i4 %tmp_29 to i64
  %k_addr_13 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_30
  %k_load_13 = load i8* %k_addr_13, align 1
  %tmp_31 = xor i8 %k_load_13, %k_load_12
  store i8 %tmp_31, i8* %k_addr_13, align 1
  %tmp_32 = add i4 -1, %tmp_67
  %tmp_33 = zext i4 %tmp_32 to i64
  %k_addr_14 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_33
  %k_load_14 = load i8* %k_addr_14, align 1
  %tmp_34 = or i4 %tmp_67, 3
  %tmp_35 = zext i4 %tmp_34 to i64
  %k_addr_15 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_35
  %k_load_15 = load i8* %k_addr_15, align 1
  %tmp_36 = xor i8 %k_load_15, %k_load_14
  store i8 %tmp_36, i8* %k_addr_15, align 1
  %i_2 = add i5 4, %i
  br label %1

; <label>:3                                       ; preds = %1
  %k_addr_16 = getelementptr [32 x i8]* %k, i64 0, i64 12
  %k_load_16 = load i8* %k_addr_16, align 1
  %tmp_17 = zext i8 %k_load_16 to i64
  %sbox_addr_4 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_17
  %sbox_load_4 = load i8* %sbox_addr_4, align 1
  %k_addr_17 = getelementptr [32 x i8]* %k, i64 0, i64 16
  %k_load_17 = load i8* %k_addr_17, align 1
  %tmp_37 = xor i8 %k_load_17, %sbox_load_4
  store i8 %tmp_37, i8* %k_addr_17, align 1
  %k_addr_18 = getelementptr [32 x i8]* %k, i64 0, i64 13
  %k_load_18 = load i8* %k_addr_18, align 1
  %tmp_38 = zext i8 %k_load_18 to i64
  %sbox_addr_5 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_38
  %sbox_load_5 = load i8* %sbox_addr_5, align 1
  %k_addr_19 = getelementptr [32 x i8]* %k, i64 0, i64 17
  %k_load_19 = load i8* %k_addr_19, align 1
  %tmp_39 = xor i8 %k_load_19, %sbox_load_5
  store i8 %tmp_39, i8* %k_addr_19, align 1
  %k_addr_20 = getelementptr [32 x i8]* %k, i64 0, i64 14
  %k_load_20 = load i8* %k_addr_20, align 1
  %tmp_40 = zext i8 %k_load_20 to i64
  %sbox_addr_6 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_40
  %sbox_load_6 = load i8* %sbox_addr_6, align 1
  %k_addr_21 = getelementptr [32 x i8]* %k, i64 0, i64 18
  %k_load_21 = load i8* %k_addr_21, align 1
  %tmp_41 = xor i8 %k_load_21, %sbox_load_6
  store i8 %tmp_41, i8* %k_addr_21, align 1
  %k_addr_22 = getelementptr [32 x i8]* %k, i64 0, i64 15
  %k_load_22 = load i8* %k_addr_22, align 1
  %tmp_42 = zext i8 %k_load_22 to i64
  %sbox_addr_7 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_42
  %sbox_load_7 = load i8* %sbox_addr_7, align 1
  %k_addr_23 = getelementptr [32 x i8]* %k, i64 0, i64 19
  %k_load_23 = load i8* %k_addr_23, align 1
  %tmp_43 = xor i8 %k_load_23, %sbox_load_7
  store i8 %tmp_43, i8* %k_addr_23, align 1
  br label %4

; <label>:4                                       ; preds = %5, %3
  %i_1 = phi i6 [ 20, %3 ], [ %i_3, %5 ]
  %tmp_68 = call i1 @_ssdm_op_BitSelect.i1.i6.i32(i6 %i_1, i32 5)
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  br i1 %tmp_68, label %6, label %5

; <label>:5                                       ; preds = %4
  %tmp_69 = trunc i6 %i_1 to i5
  %tmp_44 = add i5 -4, %tmp_69
  %tmp_45 = zext i5 %tmp_44 to i64
  %k_addr_24 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_45
  %k_load_24 = load i8* %k_addr_24, align 1
  %tmp_46 = zext i6 %i_1 to i64
  %k_addr_25 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_46
  %k_load_25 = load i8* %k_addr_25, align 1
  %tmp_47 = xor i8 %k_load_25, %k_load_24
  store i8 %tmp_47, i8* %k_addr_25, align 1
  %tmp_48 = add i5 -3, %tmp_69
  %tmp_49 = zext i5 %tmp_48 to i64
  %k_addr_26 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_49
  %k_load_26 = load i8* %k_addr_26, align 1
  %tmp_50 = or i5 %tmp_69, 1
  %tmp_51 = zext i5 %tmp_50 to i64
  %k_addr_27 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_51
  %k_load_27 = load i8* %k_addr_27, align 1
  %tmp_52 = xor i8 %k_load_27, %k_load_26
  store i8 %tmp_52, i8* %k_addr_27, align 1
  %tmp_53 = add i5 -2, %tmp_69
  %tmp_54 = zext i5 %tmp_53 to i64
  %k_addr_28 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_54
  %k_load_28 = load i8* %k_addr_28, align 1
  %tmp_55 = or i5 %tmp_69, 2
  %tmp_56 = zext i5 %tmp_55 to i64
  %k_addr_29 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_56
  %k_load_29 = load i8* %k_addr_29, align 1
  %tmp_57 = xor i8 %k_load_29, %k_load_28
  store i8 %tmp_57, i8* %k_addr_29, align 1
  %tmp_58 = add i5 -1, %tmp_69
  %tmp_59 = zext i5 %tmp_58 to i64
  %k_addr_30 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_59
  %k_load_30 = load i8* %k_addr_30, align 1
  %tmp_60 = or i5 %tmp_69, 3
  %tmp_61 = zext i5 %tmp_60 to i64
  %k_addr_31 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_61
  %k_load_31 = load i8* %k_addr_31, align 1
  %tmp_62 = xor i8 %k_load_31, %k_load_30
  store i8 %tmp_62, i8* %k_addr_31, align 1
  %i_3 = add i6 4, %i_1
  br label %4

; <label>:6                                       ; preds = %4
  ret i8 %y_20
}

define internal fastcc i8 @aes_expandDecKey(i8 %rc_read) {
  %rc_read_2 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %rc_read)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ -4, %0 ], [ %i_4, %2 ]
  %tmp = icmp ugt i5 %i, -16
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  br i1 %tmp, label %2, label %3

; <label>:2                                       ; preds = %1
  %i_4 = add i5 %i, -4
  %tmp_63 = zext i5 %i_4 to i64
  %ctx_key_addr = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_63
  %ctx_key_load = load i8* %ctx_key_addr, align 4
  %tmp_64 = zext i5 %i to i64
  %ctx_key_addr_1 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_64
  %ctx_key_load_1 = load i8* %ctx_key_addr_1, align 4
  %tmp_65 = xor i8 %ctx_key_load_1, %ctx_key_load
  store i8 %tmp_65, i8* %ctx_key_addr_1, align 4
  %tmp_66 = add i5 %i, -3
  %tmp_67 = zext i5 %tmp_66 to i64
  %ctx_key_addr_2 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_67
  %ctx_key_load_2 = load i8* %ctx_key_addr_2, align 1
  %tmp_68 = or i5 %i, 1
  %tmp_69 = zext i5 %tmp_68 to i64
  %ctx_key_addr_3 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_69
  %ctx_key_load_3 = load i8* %ctx_key_addr_3, align 1
  %tmp_70 = xor i8 %ctx_key_load_3, %ctx_key_load_2
  store i8 %tmp_70, i8* %ctx_key_addr_3, align 1
  %tmp_71 = add i5 %i, -2
  %tmp_72 = zext i5 %tmp_71 to i64
  %ctx_key_addr_4 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_72
  %ctx_key_load_4 = load i8* %ctx_key_addr_4, align 2
  %tmp_73 = or i5 %i, 2
  %tmp_74 = zext i5 %tmp_73 to i64
  %ctx_key_addr_5 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_74
  %ctx_key_load_5 = load i8* %ctx_key_addr_5, align 2
  %tmp_75 = xor i8 %ctx_key_load_5, %ctx_key_load_4
  store i8 %tmp_75, i8* %ctx_key_addr_5, align 2
  %tmp_76 = add i5 %i, -1
  %tmp_77 = zext i5 %tmp_76 to i64
  %ctx_key_addr_6 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_77
  %ctx_key_load_6 = load i8* %ctx_key_addr_6, align 1
  %tmp_78 = or i5 %i, 3
  %tmp_79 = zext i5 %tmp_78 to i64
  %ctx_key_addr_7 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_79
  %ctx_key_load_7 = load i8* %ctx_key_addr_7, align 1
  %tmp_80 = xor i8 %ctx_key_load_7, %ctx_key_load_6
  store i8 %tmp_80, i8* %ctx_key_addr_7, align 1
  br label %1

; <label>:3                                       ; preds = %1
  %ctx_key_load_8 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 12), align 4
  %tmp_s = zext i8 %ctx_key_load_8 to i64
  %sbox_addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_s
  %sbox_load = load i8* %sbox_addr, align 1
  %ctx_key_load_9 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 16), align 16
  %tmp_81 = xor i8 %ctx_key_load_9, %sbox_load
  store i8 %tmp_81, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 16), align 16
  %ctx_key_load_10 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 13), align 1
  %tmp_82 = zext i8 %ctx_key_load_10 to i64
  %sbox_addr_8 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_82
  %sbox_load_8 = load i8* %sbox_addr_8, align 1
  %ctx_key_load_11 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 17), align 1
  %tmp_83 = xor i8 %ctx_key_load_11, %sbox_load_8
  store i8 %tmp_83, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 17), align 1
  %ctx_key_load_12 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 14), align 2
  %tmp_84 = zext i8 %ctx_key_load_12 to i64
  %sbox_addr_9 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_84
  %sbox_load_9 = load i8* %sbox_addr_9, align 1
  %ctx_key_load_13 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 18), align 2
  %tmp_85 = xor i8 %ctx_key_load_13, %sbox_load_9
  store i8 %tmp_85, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 18), align 2
  %ctx_key_load_14 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 15), align 1
  %tmp_86 = zext i8 %ctx_key_load_14 to i64
  %sbox_addr_10 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_86
  %sbox_load_10 = load i8* %sbox_addr_10, align 1
  %ctx_key_load_15 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 19), align 1
  %tmp_87 = xor i8 %ctx_key_load_15, %sbox_load_10
  store i8 %tmp_87, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 19), align 1
  br label %4

; <label>:4                                       ; preds = %5, %3
  %i_1 = phi i4 [ -4, %3 ], [ %i_5, %5 ]
  %tmp_88 = icmp eq i4 %i_1, 0
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  br i1 %tmp_88, label %6, label %5

; <label>:5                                       ; preds = %4
  %tmp_123_cast = zext i4 %i_1 to i5
  %tmp_101 = add i5 %tmp_123_cast, -4
  %tmp_102 = sext i5 %tmp_101 to i64
  %ctx_key_addr_8 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_102
  %ctx_key_load_24 = load i8* %ctx_key_addr_8, align 4
  %tmp_103 = zext i4 %i_1 to i64
  %ctx_key_addr_9 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_103
  %ctx_key_load_25 = load i8* %ctx_key_addr_9, align 4
  %tmp_104 = xor i8 %ctx_key_load_25, %ctx_key_load_24
  store i8 %tmp_104, i8* %ctx_key_addr_9, align 4
  %tmp_105 = add i5 %tmp_123_cast, -3
  %tmp_106 = sext i5 %tmp_105 to i64
  %ctx_key_addr_10 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_106
  %ctx_key_load_26 = load i8* %ctx_key_addr_10, align 1
  %tmp_107 = or i4 %i_1, 1
  %tmp_108 = zext i4 %tmp_107 to i64
  %ctx_key_addr_11 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_108
  %ctx_key_load_27 = load i8* %ctx_key_addr_11, align 1
  %tmp_109 = xor i8 %ctx_key_load_27, %ctx_key_load_26
  store i8 %tmp_109, i8* %ctx_key_addr_11, align 1
  %tmp_110 = add i5 %tmp_123_cast, -2
  %tmp_111 = sext i5 %tmp_110 to i64
  %ctx_key_addr_12 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_111
  %ctx_key_load_28 = load i8* %ctx_key_addr_12, align 2
  %tmp_112 = or i4 %i_1, 2
  %tmp_113 = zext i4 %tmp_112 to i64
  %ctx_key_addr_13 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_113
  %ctx_key_load_29 = load i8* %ctx_key_addr_13, align 2
  %tmp_114 = xor i8 %ctx_key_load_29, %ctx_key_load_28
  store i8 %tmp_114, i8* %ctx_key_addr_13, align 2
  %tmp_115 = add i4 %i_1, -1
  %tmp_116 = zext i4 %tmp_115 to i64
  %ctx_key_addr_14 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_116
  %ctx_key_load_30 = load i8* %ctx_key_addr_14, align 1
  %tmp_117 = or i4 %i_1, 3
  %tmp_118 = zext i4 %tmp_117 to i64
  %ctx_key_addr_15 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_118
  %ctx_key_load_31 = load i8* %ctx_key_addr_15, align 1
  %tmp_119 = xor i8 %ctx_key_load_31, %ctx_key_load_30
  store i8 %tmp_119, i8* %ctx_key_addr_15, align 1
  %i_5 = add i4 %i_1, -4
  br label %4

; <label>:6                                       ; preds = %4
  %tmp_89 = call i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8 %rc_read_2, i32 1, i32 7)
  %tmp_90 = zext i7 %tmp_89 to i8
  %tmp_91 = trunc i8 %rc_read_2 to i1
  %tmp_92 = select i1 %tmp_91, i8 -115, i8 0
  %rc_write_assign = xor i8 %tmp_92, %tmp_90
  %ctx_key_load_16 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 29), align 1
  %tmp_93 = zext i8 %ctx_key_load_16 to i64
  %sbox_addr_11 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_93
  %sbox_load_11 = load i8* %sbox_addr_11, align 1
  %ctx_key_load_17 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 0), align 16
  %tmp1 = xor i8 %ctx_key_load_17, %rc_write_assign
  %tmp_94 = xor i8 %tmp1, %sbox_load_11
  store i8 %tmp_94, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 0), align 16
  %ctx_key_load_18 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 30), align 2
  %tmp_95 = zext i8 %ctx_key_load_18 to i64
  %sbox_addr_12 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_95
  %sbox_load_12 = load i8* %sbox_addr_12, align 1
  %ctx_key_load_19 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 1), align 1
  %tmp_96 = xor i8 %ctx_key_load_19, %sbox_load_12
  store i8 %tmp_96, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 1), align 1
  %ctx_key_load_20 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 31), align 1
  %tmp_97 = zext i8 %ctx_key_load_20 to i64
  %sbox_addr_13 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_97
  %sbox_load_13 = load i8* %sbox_addr_13, align 1
  %ctx_key_load_21 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 2), align 2
  %tmp_98 = xor i8 %ctx_key_load_21, %sbox_load_13
  store i8 %tmp_98, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 2), align 2
  %ctx_key_load_22 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 28), align 4
  %tmp_99 = zext i8 %ctx_key_load_22 to i64
  %sbox_addr_14 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_99
  %sbox_load_14 = load i8* %sbox_addr_14, align 1
  %ctx_key_load_23 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 3), align 1
  %tmp_100 = xor i8 %ctx_key_load_23, %sbox_load_14
  store i8 %tmp_100, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 3), align 1
  ret i8 %rc_write_assign
}

define internal fastcc void @aes_addRoundKey([16 x i8]* nocapture %buf_r, [32 x i8]* nocapture %key, i6 %key_offset) {
  %key_offset_read = call i6 @_ssdm_op_Read.ap_auto.i6(i6 %key_offset)
  %tmp_92 = trunc i6 %key_offset_read to i5
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ -16, %0 ], [ %i_5, %2 ]
  %i_5 = add i5 %i, -1
  %i_6_cast = sext i5 %i_5 to i8
  %tmp = icmp eq i5 %i, 0
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  br i1 %tmp, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp_s = zext i8 %i_6_cast to i64
  %sum = add i5 %i_5, %tmp_92
  %sum_cast = zext i5 %sum to i64
  %key_addr = getelementptr [32 x i8]* %key, i64 0, i64 %sum_cast
  %key_load = load i8* %key_addr, align 1
  %buf_addr = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_s
  %buf_load = load i8* %buf_addr, align 1
  %tmp_120 = xor i8 %buf_load, %key_load
  store i8 %tmp_120, i8* %buf_addr, align 1
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define void @aes256cbc(i8* %memptr, i3 zeroext %mode, i32 %inbuf_addr, i32 %outbuf_addr) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %memptr) nounwind, !map !39
  call void (...)* @_ssdm_op_SpecBitsMap(i3 %mode) nounwind, !map !45
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %inbuf_addr) nounwind, !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %outbuf_addr) nounwind, !map !55
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @aes256cbc_str) nounwind
  %outbuf_addr_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %outbuf_addr) nounwind
  %inbuf_addr_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %inbuf_addr) nounwind
  %mode_read = call i3 @_ssdm_op_Read.s_axilite.i3(i3 %mode) nounwind
  %buf = alloca [16 x i8], align 16
  call void (...)* @_ssdm_op_SpecInterface(i32 %outbuf_addr, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [3 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %inbuf_addr, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [3 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %memptr, [6 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 64, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i3 %mode, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [3 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  switch i3 %mode_read, label %._crit_edge [
    i3 0, label %.preheader1.preheader
    i3 1, label %4
    i3 2, label %10
    i3 3, label %17
    i3 -4, label %18
  ]

.preheader1.preheader:                            ; preds = %0
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.preheader, %1
  %i = phi i5 [ %i_6, %1 ], [ 0, %.preheader1.preheader ]
  %tmp_124 = icmp eq i5 %i, -16
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_6 = add i5 %i, 1
  br i1 %tmp_124, label %.preheader20.preheader, label %1

.preheader20.preheader:                           ; preds = %.preheader1
  br label %.preheader20

; <label>:1                                       ; preds = %.preheader1
  %tmp_125 = zext i5 %i to i64
  %iv_addr = getelementptr inbounds [16 x i8]* @iv, i64 0, i64 %tmp_125
  %iv_load = load i8* %iv_addr, align 1
  %xorv_addr = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_125
  store i8 %iv_load, i8* %xorv_addr, align 1
  br label %.preheader1

.preheader20:                                     ; preds = %.preheader20.preheader, %2
  %i_i = phi i6 [ %i_7, %2 ], [ 0, %.preheader20.preheader ]
  %tmp_i = icmp eq i6 %i_i, -32
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind
  %i_7 = add i6 %i_i, 1
  br i1 %tmp_i, label %.preheader.i.preheader, label %2

.preheader.i.preheader:                           ; preds = %.preheader20
  br label %.preheader.i

; <label>:2                                       ; preds = %.preheader20
  %tmp_i_8 = zext i6 %i_i to i64
  %key_addr_1 = getelementptr [32 x i8]* @key, i64 0, i64 %tmp_i_8
  %key_load = load i8* %key_addr_1, align 1
  %ctx_deckey_addr = getelementptr [32 x i8]* @ctx_deckey, i64 0, i64 %tmp_i_8
  store i8 %key_load, i8* %ctx_deckey_addr, align 1
  %ctx_enckey_addr = getelementptr [32 x i8]* @ctx_enckey, i64 0, i64 %tmp_i_8
  store i8 %key_load, i8* %ctx_enckey_addr, align 1
  br label %.preheader20

.preheader.i:                                     ; preds = %.preheader.i.preheader, %3
  %rcon_i = phi i8 [ %rcon, %3 ], [ 1, %.preheader.i.preheader ]
  %i_10 = phi i3 [ %phitmp_i, %3 ], [ -1, %.preheader.i.preheader ]
  %tmp_212_i = icmp eq i3 %i_10, 0
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) nounwind
  br i1 %tmp_212_i, label %._crit_edge.loopexit15, label %3

; <label>:3                                       ; preds = %.preheader.i
  %rcon = call fastcc i8 @aes_expandEncKey([32 x i8]* @ctx_deckey, i8 %rcon_i) nounwind
  %phitmp_i = add i3 %i_10, -1
  br label %.preheader.i

; <label>:4                                       ; preds = %0
  %tmp_s = zext i32 %inbuf_addr_read to i64
  %memptr_addr = getelementptr inbounds i8* %memptr, i64 %tmp_s
  %memptr_addr_1_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %memptr_addr, i32 16) nounwind
  br label %burst.rd.header

burst.rd.header:                                  ; preds = %burst.rd.body, %4
  %indvar = phi i5 [ 0, %4 ], [ %indvar_next, %burst.rd.body ]
  %exitcond = icmp eq i5 %indvar, -16
  %indvar_next = add i5 %indvar, 1
  br i1 %exitcond, label %burst.rd.end.preheader, label %burst.rd.body

burst.rd.end.preheader:                           ; preds = %burst.rd.header
  br label %burst.rd.end

burst.rd.body:                                    ; preds = %burst.rd.header
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %burstread_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_s) nounwind
  %empty_11 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str4) nounwind
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopName([15 x i8]* @memcpy_OC_OC_memptr) nounwind
  %memptr_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %memptr_addr) nounwind
  %tmp_126 = zext i5 %indvar to i64
  %buf_addr = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_126
  store i8 %memptr_addr_read, i8* %buf_addr, align 1
  %burstread_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_s, i32 %burstread_rbegin) nounwind
  br label %burst.rd.header

burst.rd.end:                                     ; preds = %burst.rd.end.preheader, %5
  %i_1 = phi i5 [ %i_8, %5 ], [ 0, %burst.rd.end.preheader ]
  %tmp_130 = icmp eq i5 %i_1, -16
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_8 = add i5 %i_1, 1
  br i1 %tmp_130, label %6, label %5

; <label>:5                                       ; preds = %burst.rd.end
  %tmp_132 = zext i5 %i_1 to i64
  %buf_addr_5 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_132
  %buf_load = load i8* %buf_addr_5, align 1
  %xorv_addr_1 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_132
  %xorv_load = load i8* %xorv_addr_1, align 1
  %tmp_133 = xor i8 %xorv_load, %buf_load
  store i8 %tmp_133, i8* %buf_addr_5, align 1
  br label %burst.rd.end

; <label>:6                                       ; preds = %burst.rd.end
  call fastcc void @aes256_encrypt_ecb([16 x i8]* %buf) nounwind
  br label %7

; <label>:7                                       ; preds = %8, %6
  %i_2 = phi i5 [ 0, %6 ], [ %i_12, %8 ]
  %tmp_135 = icmp eq i5 %i_2, -16
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_12 = add i5 %i_2, 1
  br i1 %tmp_135, label %9, label %8

; <label>:8                                       ; preds = %7
  %tmp_138 = zext i5 %i_2 to i64
  %buf_addr_7 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_138
  %buf_load_2 = load i8* %buf_addr_7, align 1
  %xorv_addr_2 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_138
  store i8 %buf_load_2, i8* %xorv_addr_2, align 1
  br label %7

; <label>:9                                       ; preds = %7
  %tmp_137 = zext i32 %outbuf_addr_read to i64
  %memptr_addr_4 = getelementptr inbounds i8* %memptr, i64 %tmp_137
  %memptr_addr_9_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %memptr_addr_4, i32 16) nounwind
  br label %burst.wr.header

burst.wr.header:                                  ; preds = %burst.wr.body, %9
  %indvar7 = phi i5 [ 0, %9 ], [ %indvar_next8, %burst.wr.body ]
  %exitcond9 = icmp eq i5 %indvar7, -16
  %indvar_next8 = add i5 %indvar7, 1
  br i1 %exitcond9, label %._crit_edge.loopexit7, label %burst.wr.body

burst.wr.body:                                    ; preds = %burst.wr.header
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %burstwrite_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region) nounwind
  %empty_16 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str5) nounwind
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopName([15 x i8]* @memcpy_OC_memptr_OC_s) nounwind
  %tmp_142 = zext i5 %indvar7 to i64
  %buf_addr_9 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_142
  %buf_load_4 = load i8* %buf_addr_9, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %memptr_addr_4, i8 %buf_load_4, i1 true) nounwind
  %burstwrite_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region, i32 %burstwrite_rbegin) nounwind
  br label %burst.wr.header

; <label>:10                                      ; preds = %0
  %tmp_121 = zext i32 %inbuf_addr_read to i64
  %memptr_addr_1 = getelementptr inbounds i8* %memptr, i64 %tmp_121
  %memptr_addr_2_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %memptr_addr_1, i32 16) nounwind
  br label %burst.rd.header19

burst.rd.header19:                                ; preds = %burst.rd.body20, %10
  %indvar1 = phi i5 [ 0, %10 ], [ %indvar_next1, %burst.rd.body20 ]
  %exitcond1 = icmp eq i5 %indvar1, -16
  %indvar_next1 = add i5 %indvar1, 1
  br i1 %exitcond1, label %burst.rd.end18.preheader, label %burst.rd.body20

burst.rd.end18.preheader:                         ; preds = %burst.rd.header19
  br label %burst.rd.end18

burst.rd.body20:                                  ; preds = %burst.rd.header19
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %burstread_rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_s) nounwind
  %empty_19 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str6) nounwind
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopName([15 x i8]* @memcpy_OC_OC_memptr) nounwind
  %memptr_addr_1_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %memptr_addr_1) nounwind
  %tmp_127 = zext i5 %indvar1 to i64
  %buf_addr_4 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_127
  store i8 %memptr_addr_1_read, i8* %buf_addr_4, align 1
  %burstread_rend32 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_s, i32 %burstread_rbegin1) nounwind
  br label %burst.rd.header19

burst.rd.end18:                                   ; preds = %burst.rd.end18.preheader, %11
  %i_3 = phi i5 [ %i_9, %11 ], [ 0, %burst.rd.end18.preheader ]
  %tmp_131 = icmp eq i5 %i_3, -16
  %empty_21 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_9 = add i5 %i_3, 1
  br i1 %tmp_131, label %12, label %11

; <label>:11                                      ; preds = %burst.rd.end18
  %tmp_134 = zext i5 %i_3 to i64
  %buf_addr_6 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_134
  %buf_load_1 = load i8* %buf_addr_6, align 1
  %lastbuf_addr = getelementptr inbounds [16 x i8]* @lastbuf, i64 0, i64 %tmp_134
  store i8 %buf_load_1, i8* %lastbuf_addr, align 1
  br label %burst.rd.end18

; <label>:12                                      ; preds = %burst.rd.end18
  call fastcc void @aes256_decrypt_ecb([16 x i8]* %buf) nounwind
  br label %13

; <label>:13                                      ; preds = %14, %12
  %i_4 = phi i5 [ 0, %12 ], [ %i_11, %14 ]
  %tmp_136 = icmp eq i5 %i_4, -16
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_11 = add i5 %i_4, 1
  br i1 %tmp_136, label %.preheader.preheader, label %14

.preheader.preheader:                             ; preds = %13
  br label %.preheader

; <label>:14                                      ; preds = %13
  %tmp_139 = zext i5 %i_4 to i64
  %buf_addr_8 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_139
  %buf_load_3 = load i8* %buf_addr_8, align 1
  %xorv_addr_3 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_139
  %xorv_load_1 = load i8* %xorv_addr_3, align 1
  %tmp_140 = xor i8 %xorv_load_1, %buf_load_3
  store i8 %tmp_140, i8* %buf_addr_8, align 1
  br label %13

.preheader:                                       ; preds = %.preheader.preheader, %15
  %i_5 = phi i5 [ %i_13, %15 ], [ 0, %.preheader.preheader ]
  %tmp_141 = icmp eq i5 %i_5, -16
  %empty_23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_13 = add i5 %i_5, 1
  br i1 %tmp_141, label %16, label %15

; <label>:15                                      ; preds = %.preheader
  %tmp_144 = zext i5 %i_5 to i64
  %lastbuf_addr_1 = getelementptr inbounds [16 x i8]* @lastbuf, i64 0, i64 %tmp_144
  %lastbuf_load = load i8* %lastbuf_addr_1, align 1
  %xorv_addr_4 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_144
  store i8 %lastbuf_load, i8* %xorv_addr_4, align 1
  br label %.preheader

; <label>:16                                      ; preds = %.preheader
  %tmp_143 = zext i32 %outbuf_addr_read to i64
  %memptr_addr_5 = getelementptr inbounds i8* %memptr, i64 %tmp_143
  %memptr_addr_10_wr_re = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %memptr_addr_5, i32 16) nounwind
  br label %burst.wr.header35

burst.wr.header35:                                ; preds = %burst.wr.body36, %16
  %indvar4 = phi i5 [ 0, %16 ], [ %indvar_next4, %burst.wr.body36 ]
  %exitcond4 = icmp eq i5 %indvar4, -16
  %indvar_next4 = add i5 %indvar4, 1
  br i1 %exitcond4, label %._crit_edge.loopexit6, label %burst.wr.body36

burst.wr.body36:                                  ; preds = %burst.wr.header35
  %empty_24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %burstwrite_rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region) nounwind
  %empty_25 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str7) nounwind
  %empty_26 = call i32 (...)* @_ssdm_op_SpecLoopName([15 x i8]* @memcpy_OC_memptr_OC_s) nounwind
  %tmp_145 = zext i5 %indvar4 to i64
  %buf_addr_10 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_145
  %buf_load_5 = load i8* %buf_addr_10, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %memptr_addr_5, i8 %buf_load_5, i1 true) nounwind
  %burstwrite_rend48 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region, i32 %burstwrite_rbegin1) nounwind
  br label %burst.wr.header35

; <label>:17                                      ; preds = %0
  %tmp_122 = zext i32 %inbuf_addr_read to i64
  %memptr_addr_2 = getelementptr inbounds i8* %memptr, i64 %tmp_122
  %memptr_addr_3_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %memptr_addr_2, i32 16) nounwind
  br label %burst.rd.header51

burst.rd.header51:                                ; preds = %burst.rd.body52, %17
  %indvar2 = phi i5 [ 0, %17 ], [ %indvar_next2, %burst.rd.body52 ]
  %exitcond2 = icmp eq i5 %indvar2, -16
  %indvar_next2 = add i5 %indvar2, 1
  br i1 %exitcond2, label %._crit_edge.loopexit14, label %burst.rd.body52

burst.rd.body52:                                  ; preds = %burst.rd.header51
  %empty_27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %burstread_rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_s) nounwind
  %empty_28 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str8) nounwind
  %empty_29 = call i32 (...)* @_ssdm_op_SpecLoopName([15 x i8]* @memcpy_OC_OC_memptr) nounwind
  %memptr_addr_2_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %memptr_addr_2) nounwind
  %tmp_128 = zext i5 %indvar2 to i64
  %iv_addr_1 = getelementptr [16 x i8]* @iv, i64 0, i64 %tmp_128
  store i8 %memptr_addr_2_read, i8* %iv_addr_1, align 1
  %burstread_rend63 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_s, i32 %burstread_rbegin2) nounwind
  br label %burst.rd.header51

; <label>:18                                      ; preds = %0
  %tmp_123 = zext i32 %inbuf_addr_read to i64
  %memptr_addr_3 = getelementptr inbounds i8* %memptr, i64 %tmp_123
  %memptr_addr_4_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %memptr_addr_3, i32 32) nounwind
  br label %burst.rd.header66

burst.rd.header66:                                ; preds = %burst.rd.body67, %18
  %indvar3 = phi i6 [ 0, %18 ], [ %indvar_next3, %burst.rd.body67 ]
  %exitcond3 = icmp eq i6 %indvar3, -32
  %indvar_next3 = add i6 %indvar3, 1
  br i1 %exitcond3, label %._crit_edge.loopexit, label %burst.rd.body67

burst.rd.body67:                                  ; preds = %burst.rd.header66
  %empty_30 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind
  %burstread_rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_s) nounwind
  %empty_31 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str9) nounwind
  %empty_32 = call i32 (...)* @_ssdm_op_SpecLoopName([15 x i8]* @memcpy_OC_OC_memptr) nounwind
  %memptr_addr_3_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %memptr_addr_3) nounwind
  %tmp_129 = zext i6 %indvar3 to i64
  %key_addr = getelementptr [32 x i8]* @key, i64 0, i64 %tmp_129
  store i8 %memptr_addr_3_read, i8* %key_addr, align 1
  %burstread_rend78 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_s, i32 %burstread_rbegin3) nounwind
  br label %burst.rd.header66

._crit_edge.loopexit6:                            ; preds = %burst.wr.header35
  %memptr_addr_10_wr_re_1 = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %memptr_addr_5) nounwind
  br label %._crit_edge

._crit_edge.loopexit7:                            ; preds = %burst.wr.header
  %memptr_addr_9_wr_res = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %memptr_addr_4) nounwind
  br label %._crit_edge

._crit_edge.loopexit:                             ; preds = %burst.rd.header66
  br label %._crit_edge

._crit_edge.loopexit14:                           ; preds = %burst.rd.header51
  br label %._crit_edge

._crit_edge.loopexit15:                           ; preds = %.preheader.i
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit15, %._crit_edge.loopexit14, %._crit_edge.loopexit, %._crit_edge.loopexit7, %._crit_edge.loopexit6, %0
  ret void
}

define internal fastcc void @aes256_encrypt_ecb([16 x i8]* nocapture %buf_r) {
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i5 [ -16, %0 ], [ %i_14, %2 ]
  %i_14 = add i5 %i_i, -1
  %i_15_cast = sext i5 %i_14 to i8
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
  %tmp_i_33 = zext i8 %i_15_cast to i64
  %ctx_enckey_addr = getelementptr [32 x i8]* @ctx_enckey, i64 0, i64 %tmp_i_33
  %ctx_enckey_load = load i8* %ctx_enckey_addr, align 1
  %ctx_key_addr = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_i_33
  store i8 %ctx_enckey_load, i8* %ctx_key_addr, align 1
  %buf_addr_22 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_i_33
  %buf_load = load i8* %buf_addr_22, align 1
  %tmp_176_i = xor i8 %buf_load, %ctx_enckey_load
  store i8 %tmp_176_i, i8* %buf_addr_22, align 1
  %tmp_178_i = add i5 %i_i, 15
  %tmp_179_i = zext i5 %tmp_178_i to i64
  %ctx_enckey_addr_1 = getelementptr [32 x i8]* @ctx_enckey, i64 0, i64 %tmp_179_i
  %ctx_enckey_load_1 = load i8* %ctx_enckey_addr_1, align 1
  %ctx_key_addr_16 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_179_i
  store i8 %ctx_enckey_load_1, i8* %ctx_key_addr_16, align 1
  br label %1

aes_addRoundKey_cpy.exit:                         ; preds = %8, %aes_addRoundKey_cpy.exit.preheader
  %i = phi i4 [ %i_22, %8 ], [ 1, %aes_addRoundKey_cpy.exit.preheader ]
  %exitcond = icmp eq i4 %i, -2
  %empty_34 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 13, i64 13, i64 13)
  br i1 %exitcond, label %.preheader.preheader, label %.preheader49.preheader

.preheader49.preheader:                           ; preds = %aes_addRoundKey_cpy.exit
  br label %.preheader49

.preheader.preheader:                             ; preds = %aes_addRoundKey_cpy.exit
  br label %.preheader

.preheader49:                                     ; preds = %.preheader49.preheader, %3
  %i_i4 = phi i5 [ %i_16, %3 ], [ -16, %.preheader49.preheader ]
  %i_16 = add i5 %i_i4, -1
  %i_17_cast = sext i5 %i_16 to i8
  %tmp_i5 = icmp eq i5 %i_i4, 0
  %empty_35 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  br i1 %tmp_i5, label %aes_subBytes.exit, label %3

; <label>:3                                       ; preds = %.preheader49
  %tmp_5_i = zext i8 %i_17_cast to i64
  %buf_addr_24 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_5_i
  %buf_load_31 = load i8* %buf_addr_24, align 1
  %tmp_6_i = zext i8 %buf_load_31 to i64
  %sbox_addr_15 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_6_i
  %sbox_load_15 = load i8* %sbox_addr_15, align 1
  store i8 %sbox_load_15, i8* %buf_addr_24, align 1
  br label %.preheader49

aes_subBytes.exit:                                ; preds = %.preheader49
  %i_19 = load i8* %buf_addr, align 1
  %buf_load_20 = load i8* %buf_addr_11, align 1
  store i8 %buf_load_20, i8* %buf_addr, align 1
  %buf_load_21 = load i8* %buf_addr_12, align 1
  store i8 %buf_load_21, i8* %buf_addr_11, align 1
  %buf_load_22 = load i8* %buf_addr_13, align 1
  store i8 %buf_load_22, i8* %buf_addr_12, align 1
  store i8 %i_19, i8* %buf_addr_13, align 1
  %i_20 = load i8* %buf_addr_14, align 1
  %buf_load_24 = load i8* %buf_addr_15, align 1
  store i8 %buf_load_24, i8* %buf_addr_14, align 1
  store i8 %i_20, i8* %buf_addr_15, align 1
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
  %i_i2 = phi i5 [ 0, %aes_subBytes.exit ], [ %i_21, %5 ]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i_i2, i32 4)
  %empty_36 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  br i1 %tmp, label %aes_mixColumns.exit, label %5

; <label>:5                                       ; preds = %4
  %tmp_i1 = zext i5 %i_i2 to i64
  %buf_addr_25 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_i1
  %a = load i8* %buf_addr_25, align 1
  %tmp_94 = trunc i5 %i_i2 to i4
  %tmp_34_i = or i4 %tmp_94, 1
  %tmp_35_i = zext i4 %tmp_34_i to i64
  %buf_addr_26 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_35_i
  %b = load i8* %buf_addr_26, align 1
  %tmp_36_i = or i4 %tmp_94, 2
  %tmp_37_i = zext i4 %tmp_36_i to i64
  %buf_addr_27 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_37_i
  %c = load i8* %buf_addr_27, align 1
  %tmp_38_i = or i4 %tmp_94, 3
  %tmp_39_i = zext i4 %tmp_38_i to i64
  %buf_addr_28 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_39_i
  %d = load i8* %buf_addr_28, align 1
  %x_assign = xor i8 %b, %a
  %tmp_41_i = xor i8 %c, %x_assign
  %e = xor i8 %d, %tmp_41_i
  %y = shl i8 %x_assign, 1
  %tmp_96 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign, i32 7)
  %tmp_1_i_i = xor i8 %y, 27
  %y_21 = select i1 %tmp_96, i8 %tmp_1_i_i, i8 %y
  %tmp1 = xor i8 %y_21, %e
  %tmp_44_i = xor i8 %tmp1, %a
  store i8 %tmp_44_i, i8* %buf_addr_25, align 1
  %x_assign_9 = xor i8 %c, %b
  %y_22 = shl i8 %x_assign_9, 1
  %tmp_98 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_9, i32 7)
  %tmp_1_i10_i = xor i8 %y_22, 27
  %y_23 = select i1 %tmp_98, i8 %tmp_1_i10_i, i8 %y_22
  %tmp2 = xor i8 %y_23, %e
  %tmp_48_i = xor i8 %tmp2, %b
  store i8 %tmp_48_i, i8* %buf_addr_26, align 1
  %x_assign_s = xor i8 %d, %c
  %y_24 = shl i8 %x_assign_s, 1
  %tmp_100 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_s, i32 7)
  %tmp_1_i14_i = xor i8 %y_24, 27
  %y_25 = select i1 %tmp_100, i8 %tmp_1_i14_i, i8 %y_24
  %tmp3 = xor i8 %y_25, %e
  %tmp_52_i = xor i8 %tmp3, %c
  store i8 %tmp_52_i, i8* %buf_addr_27, align 1
  %x_assign_1 = xor i8 %d, %a
  %y_26 = shl i8 %x_assign_1, 1
  %tmp_102 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1, i32 7)
  %tmp_1_i18_i = xor i8 %y_26, 27
  %y_27 = select i1 %tmp_102, i8 %tmp_1_i18_i, i8 %y_26
  %tmp_56_i = xor i8 %y_27, %tmp_41_i
  store i8 %tmp_56_i, i8* %buf_addr_28, align 1
  %i_21 = add i5 4, %i_i2
  br label %4

aes_mixColumns.exit:                              ; preds = %4
  %tmp_93 = trunc i4 %i to i1
  br i1 %tmp_93, label %6, label %7

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
  %i_22 = add i4 %i, 1
  br label %aes_addRoundKey_cpy.exit

.preheader:                                       ; preds = %.preheader.preheader, %9
  %i_i1 = phi i5 [ %i_15, %9 ], [ -16, %.preheader.preheader ]
  %i_15 = add i5 %i_i1, -1
  %i_16_cast = sext i5 %i_15 to i8
  %tmp_i8 = icmp eq i5 %i_i1, 0
  %empty_37 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  br i1 %tmp_i8, label %aes_subBytes.exit24, label %9

; <label>:9                                       ; preds = %.preheader
  %tmp_5_i1 = zext i8 %i_16_cast to i64
  %buf_addr_23 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_5_i1
  %buf_load_18 = load i8* %buf_addr_23, align 1
  %tmp_6_i1 = zext i8 %buf_load_18 to i64
  %sbox_addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_6_i1
  %sbox_load = load i8* %sbox_addr, align 1
  store i8 %sbox_load, i8* %buf_addr_23, align 1
  br label %.preheader

aes_subBytes.exit24:                              ; preds = %.preheader
  %rcon_load = load i8* %rcon
  %i_17 = load i8* %buf_addr, align 1
  %buf_load_7 = load i8* %buf_addr_11, align 1
  store i8 %buf_load_7, i8* %buf_addr, align 1
  %buf_load_8 = load i8* %buf_addr_12, align 1
  store i8 %buf_load_8, i8* %buf_addr_11, align 1
  %buf_load_9 = load i8* %buf_addr_13, align 1
  store i8 %buf_load_9, i8* %buf_addr_12, align 1
  store i8 %i_17, i8* %buf_addr_13, align 1
  %i_18 = load i8* %buf_addr_14, align 1
  %buf_load_11 = load i8* %buf_addr_15, align 1
  store i8 %buf_load_11, i8* %buf_addr_14, align 1
  store i8 %i_18, i8* %buf_addr_15, align 1
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

define internal fastcc void @aes256_decrypt_ecb([16 x i8]* nocapture %buf_r) {
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i5 [ -16, %0 ], [ %i_23, %2 ]
  %i_23 = add i5 %i_i, -1
  %i_25_cast = sext i5 %i_23 to i8
  %tmp_i = icmp eq i5 %i_i, 0
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  br i1 %tmp_i, label %aes_addRoundKey_cpy.exit, label %2

; <label>:2                                       ; preds = %1
  %tmp_i_38 = zext i8 %i_25_cast to i64
  %ctx_deckey_addr = getelementptr [32 x i8]* @ctx_deckey, i64 0, i64 %tmp_i_38
  %ctx_deckey_load = load i8* %ctx_deckey_addr, align 1
  %ctx_key_addr = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_i_38
  store i8 %ctx_deckey_load, i8* %ctx_key_addr, align 1
  %buf_addr_40 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_i_38
  %buf_load_46 = load i8* %buf_addr_40, align 1
  %tmp_176_i = xor i8 %buf_load_46, %ctx_deckey_load
  store i8 %tmp_176_i, i8* %buf_addr_40, align 1
  %tmp_178_i = add i5 %i_i, 15
  %tmp_179_i = zext i5 %tmp_178_i to i64
  %ctx_deckey_addr_1 = getelementptr [32 x i8]* @ctx_deckey, i64 0, i64 %tmp_179_i
  %ctx_deckey_load_1 = load i8* %ctx_deckey_addr_1, align 1
  %ctx_key_addr_17 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_179_i
  store i8 %ctx_deckey_load_1, i8* %ctx_key_addr_17, align 1
  br label %1

aes_addRoundKey_cpy.exit:                         ; preds = %1
  %buf_addr = getelementptr [16 x i8]* %buf_r, i64 0, i64 1
  %i_24 = load i8* %buf_addr, align 1
  %buf_addr_29 = getelementptr [16 x i8]* %buf_r, i64 0, i64 13
  %buf_load = load i8* %buf_addr_29, align 1
  store i8 %buf_load, i8* %buf_addr, align 1
  %buf_addr_30 = getelementptr [16 x i8]* %buf_r, i64 0, i64 9
  %buf_load_36 = load i8* %buf_addr_30, align 1
  store i8 %buf_load_36, i8* %buf_addr_29, align 1
  %buf_addr_31 = getelementptr [16 x i8]* %buf_r, i64 0, i64 5
  %buf_load_37 = load i8* %buf_addr_31, align 1
  store i8 %buf_load_37, i8* %buf_addr_30, align 1
  store i8 %i_24, i8* %buf_addr_31, align 1
  %buf_addr_32 = getelementptr [16 x i8]* %buf_r, i64 0, i64 2
  %i_25 = load i8* %buf_addr_32, align 1
  %buf_addr_33 = getelementptr [16 x i8]* %buf_r, i64 0, i64 10
  %buf_load_39 = load i8* %buf_addr_33, align 1
  store i8 %buf_load_39, i8* %buf_addr_32, align 1
  store i8 %i_25, i8* %buf_addr_33, align 1
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
  %i_i5 = phi i5 [ -16, %aes_addRoundKey_cpy.exit ], [ %i_26, %4 ]
  %i_26 = add i5 %i_i5, -1
  %i_28_cast = sext i5 %i_26 to i8
  %tmp_i6 = icmp eq i5 %i_i5, 0
  %empty_39 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  br i1 %tmp_i6, label %aes_subBytes_inv.exit.preheader, label %4

aes_subBytes_inv.exit.preheader:                  ; preds = %3
  %rcon = alloca i8
  store i8 -128, i8* %rcon
  br label %aes_subBytes_inv.exit

; <label>:4                                       ; preds = %3
  %tmp_3_i = zext i8 %i_28_cast to i64
  %buf_addr_41 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_3_i
  %buf_load_47 = load i8* %buf_addr_41, align 1
  %tmp_4_i = zext i8 %buf_load_47 to i64
  %sboxinv_addr = getelementptr inbounds [256 x i8]* @sboxinv, i64 0, i64 %tmp_4_i
  %sboxinv_load = load i8* %sboxinv_addr, align 1
  store i8 %sboxinv_load, i8* %buf_addr_41, align 1
  br label %3

aes_subBytes_inv.exit:                            ; preds = %aes_subBytes_inv.exit.preheader, %aes_subBytes_inv.exit42
  %i = phi i4 [ %phitmp, %aes_subBytes_inv.exit42 ], [ -3, %aes_subBytes_inv.exit.preheader ]
  %tmp = icmp eq i4 %i, 0
  %empty_40 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 13, i64 13, i64 13)
  br i1 %tmp, label %11, label %5

; <label>:5                                       ; preds = %aes_subBytes_inv.exit
  %tmp_103 = trunc i4 %i to i1
  br i1 %tmp_103, label %6, label %7

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
  %i_27 = load i8* %buf_addr, align 1
  %buf_load_49 = load i8* %buf_addr_29, align 1
  store i8 %buf_load_49, i8* %buf_addr, align 1
  %buf_load_50 = load i8* %buf_addr_30, align 1
  store i8 %buf_load_50, i8* %buf_addr_29, align 1
  %buf_load_51 = load i8* %buf_addr_31, align 1
  store i8 %buf_load_51, i8* %buf_addr_30, align 1
  store i8 %i_27, i8* %buf_addr_31, align 1
  %i_28 = load i8* %buf_addr_32, align 1
  %buf_load_53 = load i8* %buf_addr_33, align 1
  store i8 %buf_load_53, i8* %buf_addr_32, align 1
  store i8 %i_28, i8* %buf_addr_33, align 1
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
  %i_i3 = phi i5 [ -16, %8 ], [ %i_29, %10 ]
  %i_29 = add i5 %i_i3, -1
  %i_31_cast = sext i5 %i_29 to i8
  %tmp_i1 = icmp eq i5 %i_i3, 0
  %empty_41 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  br i1 %tmp_i1, label %aes_subBytes_inv.exit42, label %10

; <label>:10                                      ; preds = %9
  %tmp_3_i1 = zext i8 %i_31_cast to i64
  %buf_addr_42 = getelementptr [16 x i8]* %buf_r, i64 0, i64 %tmp_3_i1
  %buf_load_60 = load i8* %buf_addr_42, align 1
  %tmp_4_i1 = zext i8 %buf_load_60 to i64
  %sboxinv_addr_1 = getelementptr inbounds [256 x i8]* @sboxinv, i64 0, i64 %tmp_4_i1
  %sboxinv_load_1 = load i8* %sboxinv_addr_1, align 1
  store i8 %sboxinv_load_1, i8* %buf_addr_42, align 1
  br label %9

aes_subBytes_inv.exit42:                          ; preds = %9
  %phitmp = add i4 %i, -1
  br label %aes_subBytes_inv.exit

; <label>:11                                      ; preds = %aes_subBytes_inv.exit
  call fastcc void @aes_addRoundKey([16 x i8]* %buf_r, [32 x i8]* @ctx_key, i6 0)
  ret void
}

define weak i1 @_ssdm_op_WriteResp.m_axi.i8P(i8*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.m_axi.i8P(i8*, i8, i1) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecPipeline(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopName(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_ReadReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak i3 @_ssdm_op_Read.s_axilite.i3(i3) {
entry:
  ret i3 %0
}

define weak i8 @_ssdm_op_Read.m_axi.i8P(i8*) {
entry:
  %empty = load i8* %0
  ret i8 %empty
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
  %empty_42 = trunc i8 %empty to i7
  ret i7 %empty_42
}

declare i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6, i32, i32) nounwind readnone

declare i4 @_ssdm_op_PartSelect.i4.i5.i32.i32(i5, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i8.i32.i32(i8, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i4.i32.i32(i4, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_43 = shl i8 1, %empty
  %empty_44 = and i8 %0, %empty_43
  %empty_45 = icmp ne i8 %empty_44, 0
  ret i1 %empty_45
}

define weak i1 @_ssdm_op_BitSelect.i1.i6.i32(i6, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i6
  %empty_46 = shl i6 1, %empty
  %empty_47 = and i6 %0, %empty_46
  %empty_48 = icmp ne i6 %empty_47, 0
  ret i1 %empty_48
}

define weak i1 @_ssdm_op_BitSelect.i1.i5.i32(i5, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i5
  %empty_49 = shl i5 1, %empty
  %empty_50 = and i5 %0, %empty_49
  %empty_51 = icmp ne i5 %empty_50, 0
  ret i1 %empty_51
}

declare i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone

!opencl.kernels = !{!0, !7, !13, !13, !15, !18, !22, !15, !15, !25, !15, !15, !15, !27, !22, !33}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"aes256_context*", metadata !"uchar*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"k"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"aes256_context*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"ctx"}
!13 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !14, metadata !6}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"buf"}
!15 = metadata !{null, metadata !8, metadata !9, metadata !16, metadata !11, metadata !17, metadata !6}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*"}
!17 = metadata !{metadata !"kernel_arg_name", metadata !"buf"}
!18 = metadata !{null, metadata !19, metadata !9, metadata !20, metadata !11, metadata !21, metadata !6}
!19 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"uchar"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!22 = metadata !{null, metadata !1, metadata !2, metadata !23, metadata !4, metadata !24, metadata !6}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*"}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"k", metadata !"rc"}
!25 = metadata !{null, metadata !1, metadata !2, metadata !23, metadata !4, metadata !26, metadata !6}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"key"}
!27 = metadata !{null, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !6}
!28 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!29 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"uchar*"}
!31 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"key", metadata !"cpk"}
!33 = metadata !{void (i8*, i3, i32, i32)* @aes256cbc, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !6}
!34 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 0}
!35 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"ciphermode_t", metadata !"uint32_t", metadata !"uint32_t"}
!37 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"memptr", metadata !"mode", metadata !"inbuf_addr", metadata !"outbuf_addr"}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 7, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"memptr", metadata !43, metadata !"unsigned char", i32 0, i32 7}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 63, i32 1}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 2, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"mode", metadata !49, metadata !"enum ", i32 0, i32 2}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 0, i32 0}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 31, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"inbuf_addr", metadata !49, metadata !"unsigned int", i32 0, i32 31}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 31, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"outbuf_addr", metadata !49, metadata !"unsigned int", i32 0, i32 31}
