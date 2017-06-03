; ModuleID = '/home/jd/workspace/aes256cbc/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xorv = internal unnamed_addr global [16 x i8] zeroinitializer, align 16 ; [#uses=5 type=[16 x i8]*]
@sboxinv = internal unnamed_addr constant [256 x i8] c"R\09j\D506\A58\BF@\A3\9E\81\F3\D7\FB|\E39\82\9B/\FF\874\8ECD\C4\DE\E9\CBT{\942\A6\C2#=\EEL\95\0BB\FA\C3N\08.\A1f(\D9$\B2v[\A2Im\8B\D1%r\F8\F6d\86h\98\16\D4\A4\5C\CC]e\B6\92lpHP\FD\ED\B9\DA^\15FW\A7\8D\9D\84\90\D8\AB\00\8C\BC\D3\0A\F7\E4X\05\B8\B3E\06\D0,\1E\8F\CA?\0F\02\C1\AF\BD\03\01\13\8Ak:\91\11AOg\DC\EA\97\F2\CF\CE\F0\B4\E6s\96\ACt\22\E7\AD5\85\E2\F97\E8\1Cu\DFnG\F1\1Aq\1D)\C5\89o\B7b\0E\AA\18\BE\1B\FCV>K\C6\D2y \9A\DB\C0\FEx\CDZ\F4\1F\DD\A83\88\07\C71\B1\12\10Y'\80\EC_`Q\7F\A9\19\B5J\0D-\E5z\9F\93\C9\9C\EF\A0\E0;M\AE*\F5\B0\C8\EB\BB<\83S\99a\17+\04~\BAw\D6&\E1i\14cU!\0C}", align 16 ; [#uses=2 type=[256 x i8]*]
@sbox = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 16 ; [#uses=18 type=[256 x i8]*]
@memcpy_OC_memptr_OC_s = internal unnamed_addr constant [15 x i8] c"memcpy.memptr.\00" ; [#uses=2 type=[15 x i8]*]
@memcpy_OC_OC_memptr = internal unnamed_addr constant [15 x i8] c"memcpy..memptr\00" ; [#uses=4 type=[15 x i8]*]
@lastbuf = internal unnamed_addr global [16 x i8] zeroinitializer, align 16 ; [#uses=2 type=[16 x i8]*]
@key = internal unnamed_addr global [32 x i8] zeroinitializer, align 16 ; [#uses=2 type=[32 x i8]*]
@iv = internal unnamed_addr global [16 x i8] zeroinitializer, align 16 ; [#uses=2 type=[16 x i8]*]
@ctx_key = internal global [32 x i8] zeroinitializer ; [#uses=44 type=[32 x i8]*]
@ctx_enckey = internal unnamed_addr global [32 x i8] zeroinitializer ; [#uses=3 type=[32 x i8]*]
@ctx_deckey = internal global [32 x i8] zeroinitializer ; [#uses=4 type=[32 x i8]*]
@burstwrite_OC_region = internal unnamed_addr constant [18 x i8] c"burstwrite.region\00" ; [#uses=4 type=[18 x i8]*]
@burstread_OC_region_s = internal unnamed_addr constant [17 x i8] c"burstread.region\00" ; [#uses=8 type=[17 x i8]*]
@aes256cbc_str = internal unnamed_addr constant [10 x i8] c"aes256cbc\00" ; [#uses=1 type=[10 x i8]*]
@p_str9 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str8 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str7 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str6 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str5 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str4 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str3 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@p_str2 = private unnamed_addr constant [3 x i8] c"p0\00", align 1 ; [#uses=3 type=[3 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=27 type=[1 x i8]*]
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=4 type=[10 x i8]*]

; [#uses=1]
declare i8 @llvm.part.select.i8(i8, i32, i32) nounwind readnone

; [#uses=125]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=3]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc void @aes_mixColumns_inv([16 x i8]* nocapture %buf) {
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !39), !dbg !51 ; [debug line = 270:40] [debug variable = buf]
  br label %1, !dbg !52                           ; [debug line = 274:10]

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 0, %0 ], [ %i_1, %2 ]             ; [#uses=4 type=i5]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i, i32 4), !dbg !52 ; [#uses=1 type=i1] [debug line = 274:10]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %tmp, label %3, label %2, !dbg !52        ; [debug line = 274:10]

; <label>:2                                       ; preds = %1
  %tmp_7 = zext i5 %i to i64, !dbg !55            ; [#uses=1 type=i64] [debug line = 276:9]
  %buf_addr = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_7, !dbg !55 ; [#uses=2 type=i8*] [debug line = 276:9]
  %a = load i8* %buf_addr, align 1, !dbg !55      ; [#uses=4 type=i8] [debug line = 276:9]
  call void @llvm.dbg.value(metadata !{i8 %a}, i64 0, metadata !57), !dbg !55 ; [debug line = 276:9] [debug variable = a]
  %tmp_11 = trunc i5 %i to i4, !dbg !58           ; [#uses=3 type=i4] [debug line = 277:9]
  %tmp_9 = or i4 %tmp_11, 1, !dbg !58             ; [#uses=1 type=i4] [debug line = 277:9]
  %tmp_s = zext i4 %tmp_9 to i64, !dbg !58        ; [#uses=1 type=i64] [debug line = 277:9]
  %buf_addr_1 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_s, !dbg !58 ; [#uses=2 type=i8*] [debug line = 277:9]
  %b = load i8* %buf_addr_1, align 1, !dbg !58    ; [#uses=4 type=i8] [debug line = 277:9]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !59), !dbg !58 ; [debug line = 277:9] [debug variable = b]
  %tmp_1 = or i4 %tmp_11, 2, !dbg !60             ; [#uses=1 type=i4] [debug line = 278:9]
  %tmp_2 = zext i4 %tmp_1 to i64, !dbg !60        ; [#uses=1 type=i64] [debug line = 278:9]
  %buf_addr_2 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_2, !dbg !60 ; [#uses=2 type=i8*] [debug line = 278:9]
  %c = load i8* %buf_addr_2, align 1, !dbg !60    ; [#uses=5 type=i8] [debug line = 278:9]
  call void @llvm.dbg.value(metadata !{i8 %c}, i64 0, metadata !61), !dbg !60 ; [debug line = 278:9] [debug variable = c]
  %tmp_3 = or i4 %tmp_11, 3, !dbg !62             ; [#uses=1 type=i4] [debug line = 279:9]
  %tmp_4 = zext i4 %tmp_3 to i64, !dbg !62        ; [#uses=1 type=i64] [debug line = 279:9]
  %buf_addr_3 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_4, !dbg !62 ; [#uses=2 type=i8*] [debug line = 279:9]
  %d = load i8* %buf_addr_3, align 1, !dbg !62    ; [#uses=5 type=i8] [debug line = 279:9]
  call void @llvm.dbg.value(metadata !{i8 %d}, i64 0, metadata !63), !dbg !62 ; [debug line = 279:9] [debug variable = d]
  %x_assign_5 = xor i8 %b, %a, !dbg !64           ; [#uses=3 type=i8] [debug line = 280:9]
  %tmp1 = xor i8 %d, %x_assign_5, !dbg !64        ; [#uses=1 type=i8] [debug line = 280:9]
  %e = xor i8 %tmp1, %c, !dbg !64                 ; [#uses=4 type=i8] [debug line = 280:9]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !65), !dbg !64 ; [debug line = 280:9] [debug variable = e]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !66), !dbg !71 ; [debug line = 187:45@281:13] [debug variable = x]
  %y_1 = shl i8 %e, 1, !dbg !72                   ; [#uses=2 type=i8] [debug line = 189:46@281:13]
  call void @llvm.dbg.value(metadata !{i8 %y_1}, i64 0, metadata !74), !dbg !72 ; [debug line = 189:46@281:13] [debug variable = y]
  %tmp_13 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %e, i32 7), !dbg !75 ; [#uses=1 type=i1] [debug line = 190:5@281:13]
  %tmp_1_i = xor i8 %y_1, 27, !dbg !75            ; [#uses=1 type=i8] [debug line = 190:5@281:13]
  %y_19 = select i1 %tmp_13, i8 %tmp_1_i, i8 %y_1, !dbg !75 ; [#uses=2 type=i8] [debug line = 190:5@281:13]
  call void @llvm.dbg.value(metadata !{i8 %y_19}, i64 0, metadata !74), !dbg !75 ; [debug line = 190:5@281:13] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %y_19}, i64 0, metadata !76), !dbg !70 ; [debug line = 281:13] [debug variable = z]
  %tmp2 = xor i8 %a, %y_19, !dbg !77              ; [#uses=1 type=i8] [debug line = 282:26]
  %x_assign_1 = xor i8 %tmp2, %c, !dbg !77        ; [#uses=2 type=i8] [debug line = 282:26]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_1}, i64 0, metadata !78), !dbg !79 ; [debug line = 187:45@282:26] [debug variable = x]
  %y_3 = shl i8 %x_assign_1, 1, !dbg !80          ; [#uses=2 type=i8] [debug line = 189:46@282:26]
  call void @llvm.dbg.value(metadata !{i8 %y_3}, i64 0, metadata !81), !dbg !80 ; [debug line = 189:46@282:26] [debug variable = y]
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1, i32 7), !dbg !82 ; [#uses=1 type=i1] [debug line = 190:5@282:26]
  %tmp_1_i1 = xor i8 %y_3, 27, !dbg !82           ; [#uses=1 type=i8] [debug line = 190:5@282:26]
  %y_4 = select i1 %tmp_15, i8 %tmp_1_i1, i8 %y_3, !dbg !82 ; [#uses=2 type=i8] [debug line = 190:5@282:26]
  call void @llvm.dbg.value(metadata !{i8 %y_4}, i64 0, metadata !81), !dbg !82 ; [debug line = 190:5@282:26] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %y_4}, i64 0, metadata !78), !dbg !79 ; [debug line = 187:45@282:26] [debug variable = x]
  %y_5 = shl i8 %y_4, 1, !dbg !80                 ; [#uses=2 type=i8] [debug line = 189:46@282:26]
  call void @llvm.dbg.value(metadata !{i8 %y_5}, i64 0, metadata !81), !dbg !80 ; [debug line = 189:46@282:26] [debug variable = y]
  %tmp_17 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %y_4, i32 7), !dbg !82 ; [#uses=1 type=i1] [debug line = 190:5@282:26]
  %tmp_1_i2 = xor i8 %y_5, 27, !dbg !82           ; [#uses=1 type=i8] [debug line = 190:5@282:26]
  %y_6 = select i1 %tmp_17, i8 %tmp_1_i2, i8 %y_5, !dbg !82 ; [#uses=1 type=i8] [debug line = 190:5@282:26]
  call void @llvm.dbg.value(metadata !{i8 %y_6}, i64 0, metadata !81), !dbg !82 ; [debug line = 190:5@282:26] [debug variable = y]
  %x = xor i8 %y_6, %e, !dbg !77                  ; [#uses=2 type=i8] [debug line = 282:26]
  call void @llvm.dbg.value(metadata !{i8 %x}, i64 0, metadata !83), !dbg !77 ; [debug line = 282:26] [debug variable = x]
  %tmp3 = xor i8 %b, %y_19, !dbg !84              ; [#uses=1 type=i8] [debug line = 283:26]
  %x_assign_3 = xor i8 %tmp3, %d, !dbg !84        ; [#uses=2 type=i8] [debug line = 283:26]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_3}, i64 0, metadata !85), !dbg !86 ; [debug line = 187:45@283:26] [debug variable = x]
  %y_7 = shl i8 %x_assign_3, 1, !dbg !87          ; [#uses=2 type=i8] [debug line = 189:46@283:26]
  call void @llvm.dbg.value(metadata !{i8 %y_7}, i64 0, metadata !88), !dbg !87 ; [debug line = 189:46@283:26] [debug variable = y]
  %tmp_19 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3, i32 7), !dbg !89 ; [#uses=1 type=i1] [debug line = 190:5@283:26]
  %tmp_1_i3 = xor i8 %y_7, 27, !dbg !89           ; [#uses=1 type=i8] [debug line = 190:5@283:26]
  %y_8 = select i1 %tmp_19, i8 %tmp_1_i3, i8 %y_7, !dbg !89 ; [#uses=2 type=i8] [debug line = 190:5@283:26]
  call void @llvm.dbg.value(metadata !{i8 %y_8}, i64 0, metadata !88), !dbg !89 ; [debug line = 190:5@283:26] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %y_8}, i64 0, metadata !85), !dbg !86 ; [debug line = 187:45@283:26] [debug variable = x]
  %y_9 = shl i8 %y_8, 1, !dbg !87                 ; [#uses=2 type=i8] [debug line = 189:46@283:26]
  call void @llvm.dbg.value(metadata !{i8 %y_9}, i64 0, metadata !88), !dbg !87 ; [debug line = 189:46@283:26] [debug variable = y]
  %tmp_21 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %y_8, i32 7), !dbg !89 ; [#uses=1 type=i1] [debug line = 190:5@283:26]
  %tmp_1_i4 = xor i8 %y_9, 27, !dbg !89           ; [#uses=1 type=i8] [debug line = 190:5@283:26]
  %y_10 = select i1 %tmp_21, i8 %tmp_1_i4, i8 %y_9, !dbg !89 ; [#uses=1 type=i8] [debug line = 190:5@283:26]
  call void @llvm.dbg.value(metadata !{i8 %y_10}, i64 0, metadata !88), !dbg !89 ; [debug line = 190:5@283:26] [debug variable = y]
  %y = xor i8 %y_10, %e, !dbg !84                 ; [#uses=2 type=i8] [debug line = 283:26]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !90), !dbg !84 ; [debug line = 283:26] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_5}, i64 0, metadata !91), !dbg !93 ; [debug line = 187:45@284:23] [debug variable = x]
  %y_11 = shl i8 %x_assign_5, 1, !dbg !94         ; [#uses=2 type=i8] [debug line = 189:46@284:23]
  call void @llvm.dbg.value(metadata !{i8 %y_11}, i64 0, metadata !95), !dbg !94 ; [debug line = 189:46@284:23] [debug variable = y]
  %tmp_23 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_5, i32 7), !dbg !96 ; [#uses=1 type=i1] [debug line = 190:5@284:23]
  %tmp_1_i5 = xor i8 %y_11, 27, !dbg !96          ; [#uses=1 type=i8] [debug line = 190:5@284:23]
  %y_12 = select i1 %tmp_23, i8 %tmp_1_i5, i8 %y_11, !dbg !96 ; [#uses=1 type=i8] [debug line = 190:5@284:23]
  call void @llvm.dbg.value(metadata !{i8 %y_12}, i64 0, metadata !95), !dbg !96 ; [debug line = 190:5@284:23] [debug variable = y]
  %tmp4 = xor i8 %y_12, %x, !dbg !92              ; [#uses=1 type=i8] [debug line = 284:23]
  %tmp_5 = xor i8 %tmp4, %a, !dbg !92             ; [#uses=1 type=i8] [debug line = 284:23]
  store i8 %tmp_5, i8* %buf_addr, align 1, !dbg !92 ; [debug line = 284:23]
  %x_assign_6 = xor i8 %c, %b, !dbg !97           ; [#uses=2 type=i8] [debug line = 285:27]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_6}, i64 0, metadata !98), !dbg !99 ; [debug line = 187:45@285:27] [debug variable = x]
  %y_13 = shl i8 %x_assign_6, 1, !dbg !100        ; [#uses=2 type=i8] [debug line = 189:46@285:27]
  call void @llvm.dbg.value(metadata !{i8 %y_13}, i64 0, metadata !101), !dbg !100 ; [debug line = 189:46@285:27] [debug variable = y]
  %tmp_25 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_6, i32 7), !dbg !102 ; [#uses=1 type=i1] [debug line = 190:5@285:27]
  %tmp_1_i6 = xor i8 %y_13, 27, !dbg !102         ; [#uses=1 type=i8] [debug line = 190:5@285:27]
  %y_14 = select i1 %tmp_25, i8 %tmp_1_i6, i8 %y_13, !dbg !102 ; [#uses=1 type=i8] [debug line = 190:5@285:27]
  call void @llvm.dbg.value(metadata !{i8 %y_14}, i64 0, metadata !101), !dbg !102 ; [debug line = 190:5@285:27] [debug variable = y]
  %tmp5 = xor i8 %y_14, %y, !dbg !97              ; [#uses=1 type=i8] [debug line = 285:27]
  %tmp_6 = xor i8 %tmp5, %b, !dbg !97             ; [#uses=1 type=i8] [debug line = 285:27]
  store i8 %tmp_6, i8* %buf_addr_1, align 1, !dbg !97 ; [debug line = 285:27]
  %x_assign_7 = xor i8 %d, %c, !dbg !103          ; [#uses=2 type=i8] [debug line = 286:27]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_7}, i64 0, metadata !104), !dbg !105 ; [debug line = 187:45@286:27] [debug variable = x]
  %y_15 = shl i8 %x_assign_7, 1, !dbg !106        ; [#uses=2 type=i8] [debug line = 189:46@286:27]
  call void @llvm.dbg.value(metadata !{i8 %y_15}, i64 0, metadata !107), !dbg !106 ; [debug line = 189:46@286:27] [debug variable = y]
  %tmp_27 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_7, i32 7), !dbg !108 ; [#uses=1 type=i1] [debug line = 190:5@286:27]
  %tmp_1_i7 = xor i8 %y_15, 27, !dbg !108         ; [#uses=1 type=i8] [debug line = 190:5@286:27]
  %y_16 = select i1 %tmp_27, i8 %tmp_1_i7, i8 %y_15, !dbg !108 ; [#uses=1 type=i8] [debug line = 190:5@286:27]
  call void @llvm.dbg.value(metadata !{i8 %y_16}, i64 0, metadata !107), !dbg !108 ; [debug line = 190:5@286:27] [debug variable = y]
  %tmp6 = xor i8 %y_16, %x, !dbg !103             ; [#uses=1 type=i8] [debug line = 286:27]
  %tmp_8 = xor i8 %tmp6, %c, !dbg !103            ; [#uses=1 type=i8] [debug line = 286:27]
  store i8 %tmp_8, i8* %buf_addr_2, align 1, !dbg !103 ; [debug line = 286:27]
  %x_assign_8 = xor i8 %d, %a, !dbg !109          ; [#uses=2 type=i8] [debug line = 287:27]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_8}, i64 0, metadata !110), !dbg !111 ; [debug line = 187:45@287:27] [debug variable = x]
  %y_17 = shl i8 %x_assign_8, 1, !dbg !112        ; [#uses=2 type=i8] [debug line = 189:46@287:27]
  call void @llvm.dbg.value(metadata !{i8 %y_17}, i64 0, metadata !113), !dbg !112 ; [debug line = 189:46@287:27] [debug variable = y]
  %tmp_29 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_8, i32 7), !dbg !114 ; [#uses=1 type=i1] [debug line = 190:5@287:27]
  %tmp_1_i8 = xor i8 %y_17, 27, !dbg !114         ; [#uses=1 type=i8] [debug line = 190:5@287:27]
  %y_18 = select i1 %tmp_29, i8 %tmp_1_i8, i8 %y_17, !dbg !114 ; [#uses=1 type=i8] [debug line = 190:5@287:27]
  call void @llvm.dbg.value(metadata !{i8 %y_18}, i64 0, metadata !113), !dbg !114 ; [debug line = 190:5@287:27] [debug variable = y]
  %tmp7 = xor i8 %y_18, %y, !dbg !109             ; [#uses=1 type=i8] [debug line = 287:27]
  %tmp_10 = xor i8 %tmp7, %d, !dbg !109           ; [#uses=1 type=i8] [debug line = 287:27]
  store i8 %tmp_10, i8* %buf_addr_3, align 1, !dbg !109 ; [debug line = 287:27]
  %i_1 = add i5 4, %i, !dbg !115                  ; [#uses=1 type=i5] [debug line = 274:25]
  call void @llvm.dbg.value(metadata !{i5 %i_1}, i64 0, metadata !116), !dbg !115 ; [debug line = 274:25] [debug variable = i]
  br label %1, !dbg !115                          ; [debug line = 274:25]

; <label>:3                                       ; preds = %1
  ret void, !dbg !117                             ; [debug line = 289:1]
}

; [#uses=3]
define internal fastcc i8 @aes_expandEncKey([32 x i8]* %k, i8 %rc_read) {
  %rc_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %rc_read) ; [#uses=3 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %rc_read_1}, i64 0, metadata !118), !dbg !122 ; [debug line = 292:63] [debug variable = rc]
  call void @llvm.dbg.value(metadata !{i8 %rc_read_1}, i64 0, metadata !123), !dbg !126 ; [debug line = 187:45@300:11] [debug variable = x]
  %k_addr = getelementptr [32 x i8]* %k, i64 0, i64 0 ; [#uses=2 type=i8*]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %k}, i64 0, metadata !127), !dbg !131 ; [debug line = 292:45] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i8 %rc_read}, i64 0, metadata !118), !dbg !122 ; [debug line = 292:63] [debug variable = rc]
  %k_addr_1 = getelementptr [32 x i8]* %k, i64 0, i64 29, !dbg !132 ; [#uses=1 type=i8*] [debug line = 296:5]
  %k_load = load i8* %k_addr_1, align 1, !dbg !132 ; [#uses=1 type=i8] [debug line = 296:5]
  %tmp = zext i8 %k_load to i64, !dbg !132        ; [#uses=1 type=i64] [debug line = 296:5]
  %sbox_addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp, !dbg !132 ; [#uses=1 type=i8*] [debug line = 296:5]
  %sbox_load = load i8* %sbox_addr, align 1, !dbg !132 ; [#uses=1 type=i8] [debug line = 296:5]
  %k_load_1 = load i8* %k_addr, align 1, !dbg !132 ; [#uses=1 type=i8] [debug line = 296:5]
  %tmp1 = xor i8 %k_load_1, %rc_read_1, !dbg !132 ; [#uses=1 type=i8] [debug line = 296:5]
  %tmp_s = xor i8 %tmp1, %sbox_load, !dbg !132    ; [#uses=1 type=i8] [debug line = 296:5]
  store i8 %tmp_s, i8* %k_addr, align 1, !dbg !132 ; [debug line = 296:5]
  %k_addr_2 = getelementptr [32 x i8]* %k, i64 0, i64 30, !dbg !133 ; [#uses=1 type=i8*] [debug line = 297:5]
  %k_load_2 = load i8* %k_addr_2, align 1, !dbg !133 ; [#uses=1 type=i8] [debug line = 297:5]
  %tmp_11 = zext i8 %k_load_2 to i64, !dbg !133   ; [#uses=1 type=i64] [debug line = 297:5]
  %sbox_addr_1 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_11, !dbg !133 ; [#uses=1 type=i8*] [debug line = 297:5]
  %sbox_load_1 = load i8* %sbox_addr_1, align 1, !dbg !133 ; [#uses=1 type=i8] [debug line = 297:5]
  %k_addr_3 = getelementptr [32 x i8]* %k, i64 0, i64 1, !dbg !133 ; [#uses=2 type=i8*] [debug line = 297:5]
  %k_load_3 = load i8* %k_addr_3, align 1, !dbg !133 ; [#uses=1 type=i8] [debug line = 297:5]
  %tmp_12 = xor i8 %k_load_3, %sbox_load_1, !dbg !133 ; [#uses=1 type=i8] [debug line = 297:5]
  store i8 %tmp_12, i8* %k_addr_3, align 1, !dbg !133 ; [debug line = 297:5]
  %k_addr_4 = getelementptr [32 x i8]* %k, i64 0, i64 31, !dbg !134 ; [#uses=1 type=i8*] [debug line = 298:5]
  %k_load_4 = load i8* %k_addr_4, align 1, !dbg !134 ; [#uses=1 type=i8] [debug line = 298:5]
  %tmp_13 = zext i8 %k_load_4 to i64, !dbg !134   ; [#uses=1 type=i64] [debug line = 298:5]
  %sbox_addr_2 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_13, !dbg !134 ; [#uses=1 type=i8*] [debug line = 298:5]
  %sbox_load_2 = load i8* %sbox_addr_2, align 1, !dbg !134 ; [#uses=1 type=i8] [debug line = 298:5]
  %k_addr_5 = getelementptr [32 x i8]* %k, i64 0, i64 2, !dbg !134 ; [#uses=2 type=i8*] [debug line = 298:5]
  %k_load_5 = load i8* %k_addr_5, align 1, !dbg !134 ; [#uses=1 type=i8] [debug line = 298:5]
  %tmp_14 = xor i8 %k_load_5, %sbox_load_2, !dbg !134 ; [#uses=1 type=i8] [debug line = 298:5]
  store i8 %tmp_14, i8* %k_addr_5, align 1, !dbg !134 ; [debug line = 298:5]
  %k_addr_6 = getelementptr [32 x i8]* %k, i64 0, i64 28, !dbg !135 ; [#uses=1 type=i8*] [debug line = 299:5]
  %k_load_6 = load i8* %k_addr_6, align 1, !dbg !135 ; [#uses=1 type=i8] [debug line = 299:5]
  %tmp_15 = zext i8 %k_load_6 to i64, !dbg !135   ; [#uses=1 type=i64] [debug line = 299:5]
  %sbox_addr_3 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_15, !dbg !135 ; [#uses=1 type=i8*] [debug line = 299:5]
  %sbox_load_3 = load i8* %sbox_addr_3, align 1, !dbg !135 ; [#uses=1 type=i8] [debug line = 299:5]
  %k_addr_7 = getelementptr [32 x i8]* %k, i64 0, i64 3, !dbg !135 ; [#uses=2 type=i8*] [debug line = 299:5]
  %k_load_7 = load i8* %k_addr_7, align 1, !dbg !135 ; [#uses=1 type=i8] [debug line = 299:5]
  %tmp_16 = xor i8 %k_load_7, %sbox_load_3, !dbg !135 ; [#uses=1 type=i8] [debug line = 299:5]
  store i8 %tmp_16, i8* %k_addr_7, align 1, !dbg !135 ; [debug line = 299:5]
  call void @llvm.dbg.value(metadata !{i8 %rc_read}, i64 0, metadata !123), !dbg !126 ; [debug line = 187:45@300:11] [debug variable = x]
  %y = shl i8 %rc_read_1, 1, !dbg !136            ; [#uses=2 type=i8] [debug line = 189:46@300:11]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !137), !dbg !136 ; [debug line = 189:46@300:11] [debug variable = y]
  %tmp_65 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %rc_read_1, i32 7), !dbg !138 ; [#uses=1 type=i1] [debug line = 190:5@300:11]
  %tmp_1_i = xor i8 %y, 27, !dbg !138             ; [#uses=1 type=i8] [debug line = 190:5@300:11]
  %y_20 = select i1 %tmp_65, i8 %tmp_1_i, i8 %y, !dbg !138 ; [#uses=1 type=i8] [debug line = 190:5@300:11]
  call void @llvm.dbg.value(metadata !{i8 %y_20}, i64 0, metadata !137), !dbg !138 ; [debug line = 190:5@300:11] [debug variable = y]
  br label %1, !dbg !139                          ; [debug line = 302:9]

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 4, %0 ], [ %i_2, %2 ]             ; [#uses=4 type=i5]
  %tmp_66 = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i, i32 4), !dbg !139 ; [#uses=1 type=i1] [debug line = 302:9]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp_66, label %3, label %2, !dbg !139    ; [debug line = 302:9]

; <label>:2                                       ; preds = %1
  %tmp_67 = trunc i5 %i to i4, !dbg !141          ; [#uses=7 type=i4] [debug line = 302:32]
  %tmp_18 = add i4 -4, %tmp_67, !dbg !141         ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp_19 = zext i4 %tmp_18 to i64, !dbg !141     ; [#uses=1 type=i64] [debug line = 302:32]
  %k_addr_8 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_19, !dbg !141 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k_load_8 = load i8* %k_addr_8, align 1, !dbg !141 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp_20 = zext i5 %i to i64, !dbg !141          ; [#uses=1 type=i64] [debug line = 302:32]
  %k_addr_9 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_20, !dbg !141 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k_load_9 = load i8* %k_addr_9, align 1, !dbg !141 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp_21 = xor i8 %k_load_9, %k_load_8, !dbg !141 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp_21, i8* %k_addr_9, align 1, !dbg !141 ; [debug line = 302:32]
  %tmp_22 = add i4 -3, %tmp_67, !dbg !141         ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp_23 = zext i4 %tmp_22 to i64, !dbg !141     ; [#uses=1 type=i64] [debug line = 302:32]
  %k_addr_10 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_23, !dbg !141 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k_load_10 = load i8* %k_addr_10, align 1, !dbg !141 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp_24 = or i4 %tmp_67, 1, !dbg !141           ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp_25 = zext i4 %tmp_24 to i64, !dbg !141     ; [#uses=1 type=i64] [debug line = 302:32]
  %k_addr_11 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_25, !dbg !141 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k_load_11 = load i8* %k_addr_11, align 1, !dbg !141 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp_26 = xor i8 %k_load_11, %k_load_10, !dbg !141 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp_26, i8* %k_addr_11, align 1, !dbg !141 ; [debug line = 302:32]
  %tmp_27 = add i4 -2, %tmp_67, !dbg !141         ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp_28 = zext i4 %tmp_27 to i64, !dbg !141     ; [#uses=1 type=i64] [debug line = 302:32]
  %k_addr_12 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_28, !dbg !141 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k_load_12 = load i8* %k_addr_12, align 1, !dbg !141 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp_29 = or i4 %tmp_67, 2, !dbg !141           ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp_30 = zext i4 %tmp_29 to i64, !dbg !141     ; [#uses=1 type=i64] [debug line = 302:32]
  %k_addr_13 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_30, !dbg !141 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k_load_13 = load i8* %k_addr_13, align 1, !dbg !141 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp_31 = xor i8 %k_load_13, %k_load_12, !dbg !141 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp_31, i8* %k_addr_13, align 1, !dbg !141 ; [debug line = 302:32]
  %tmp_32 = add i4 -1, %tmp_67, !dbg !141         ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp_33 = zext i4 %tmp_32 to i64, !dbg !141     ; [#uses=1 type=i64] [debug line = 302:32]
  %k_addr_14 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_33, !dbg !141 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k_load_14 = load i8* %k_addr_14, align 1, !dbg !141 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp_34 = or i4 %tmp_67, 3, !dbg !141           ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp_35 = zext i4 %tmp_34 to i64, !dbg !141     ; [#uses=1 type=i64] [debug line = 302:32]
  %k_addr_15 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_35, !dbg !141 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k_load_15 = load i8* %k_addr_15, align 1, !dbg !141 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp_36 = xor i8 %k_load_15, %k_load_14, !dbg !141 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp_36, i8* %k_addr_15, align 1, !dbg !141 ; [debug line = 302:32]
  %i_2 = add i5 4, %i, !dbg !142                  ; [#uses=1 type=i5] [debug line = 302:24]
  call void @llvm.dbg.value(metadata !{i5 %i_2}, i64 0, metadata !143), !dbg !142 ; [debug line = 302:24] [debug variable = i]
  br label %1, !dbg !142                          ; [debug line = 302:24]

; <label>:3                                       ; preds = %1
  %k_addr_16 = getelementptr [32 x i8]* %k, i64 0, i64 12, !dbg !144 ; [#uses=1 type=i8*] [debug line = 304:5]
  %k_load_16 = load i8* %k_addr_16, align 1, !dbg !144 ; [#uses=1 type=i8] [debug line = 304:5]
  %tmp_17 = zext i8 %k_load_16 to i64, !dbg !144  ; [#uses=1 type=i64] [debug line = 304:5]
  %sbox_addr_4 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_17, !dbg !144 ; [#uses=1 type=i8*] [debug line = 304:5]
  %sbox_load_4 = load i8* %sbox_addr_4, align 1, !dbg !144 ; [#uses=1 type=i8] [debug line = 304:5]
  %k_addr_17 = getelementptr [32 x i8]* %k, i64 0, i64 16, !dbg !144 ; [#uses=2 type=i8*] [debug line = 304:5]
  %k_load_17 = load i8* %k_addr_17, align 1, !dbg !144 ; [#uses=1 type=i8] [debug line = 304:5]
  %tmp_37 = xor i8 %k_load_17, %sbox_load_4, !dbg !144 ; [#uses=1 type=i8] [debug line = 304:5]
  store i8 %tmp_37, i8* %k_addr_17, align 1, !dbg !144 ; [debug line = 304:5]
  %k_addr_18 = getelementptr [32 x i8]* %k, i64 0, i64 13, !dbg !145 ; [#uses=1 type=i8*] [debug line = 305:5]
  %k_load_18 = load i8* %k_addr_18, align 1, !dbg !145 ; [#uses=1 type=i8] [debug line = 305:5]
  %tmp_38 = zext i8 %k_load_18 to i64, !dbg !145  ; [#uses=1 type=i64] [debug line = 305:5]
  %sbox_addr_5 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_38, !dbg !145 ; [#uses=1 type=i8*] [debug line = 305:5]
  %sbox_load_5 = load i8* %sbox_addr_5, align 1, !dbg !145 ; [#uses=1 type=i8] [debug line = 305:5]
  %k_addr_19 = getelementptr [32 x i8]* %k, i64 0, i64 17, !dbg !145 ; [#uses=2 type=i8*] [debug line = 305:5]
  %k_load_19 = load i8* %k_addr_19, align 1, !dbg !145 ; [#uses=1 type=i8] [debug line = 305:5]
  %tmp_39 = xor i8 %k_load_19, %sbox_load_5, !dbg !145 ; [#uses=1 type=i8] [debug line = 305:5]
  store i8 %tmp_39, i8* %k_addr_19, align 1, !dbg !145 ; [debug line = 305:5]
  %k_addr_20 = getelementptr [32 x i8]* %k, i64 0, i64 14, !dbg !146 ; [#uses=1 type=i8*] [debug line = 306:5]
  %k_load_20 = load i8* %k_addr_20, align 1, !dbg !146 ; [#uses=1 type=i8] [debug line = 306:5]
  %tmp_40 = zext i8 %k_load_20 to i64, !dbg !146  ; [#uses=1 type=i64] [debug line = 306:5]
  %sbox_addr_6 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_40, !dbg !146 ; [#uses=1 type=i8*] [debug line = 306:5]
  %sbox_load_6 = load i8* %sbox_addr_6, align 1, !dbg !146 ; [#uses=1 type=i8] [debug line = 306:5]
  %k_addr_21 = getelementptr [32 x i8]* %k, i64 0, i64 18, !dbg !146 ; [#uses=2 type=i8*] [debug line = 306:5]
  %k_load_21 = load i8* %k_addr_21, align 1, !dbg !146 ; [#uses=1 type=i8] [debug line = 306:5]
  %tmp_41 = xor i8 %k_load_21, %sbox_load_6, !dbg !146 ; [#uses=1 type=i8] [debug line = 306:5]
  store i8 %tmp_41, i8* %k_addr_21, align 1, !dbg !146 ; [debug line = 306:5]
  %k_addr_22 = getelementptr [32 x i8]* %k, i64 0, i64 15, !dbg !147 ; [#uses=1 type=i8*] [debug line = 307:5]
  %k_load_22 = load i8* %k_addr_22, align 1, !dbg !147 ; [#uses=1 type=i8] [debug line = 307:5]
  %tmp_42 = zext i8 %k_load_22 to i64, !dbg !147  ; [#uses=1 type=i64] [debug line = 307:5]
  %sbox_addr_7 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_42, !dbg !147 ; [#uses=1 type=i8*] [debug line = 307:5]
  %sbox_load_7 = load i8* %sbox_addr_7, align 1, !dbg !147 ; [#uses=1 type=i8] [debug line = 307:5]
  %k_addr_23 = getelementptr [32 x i8]* %k, i64 0, i64 19, !dbg !147 ; [#uses=2 type=i8*] [debug line = 307:5]
  %k_load_23 = load i8* %k_addr_23, align 1, !dbg !147 ; [#uses=1 type=i8] [debug line = 307:5]
  %tmp_43 = xor i8 %k_load_23, %sbox_load_7, !dbg !147 ; [#uses=1 type=i8] [debug line = 307:5]
  store i8 %tmp_43, i8* %k_addr_23, align 1, !dbg !147 ; [debug line = 307:5]
  br label %4, !dbg !148                          ; [debug line = 309:9]

; <label>:4                                       ; preds = %5, %3
  %i_1 = phi i6 [ 20, %3 ], [ %i_3, %5 ]          ; [#uses=4 type=i6]
  %tmp_68 = call i1 @_ssdm_op_BitSelect.i1.i6.i32(i6 %i_1, i32 5), !dbg !148 ; [#uses=1 type=i1] [debug line = 309:9]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp_68, label %6, label %5, !dbg !148    ; [debug line = 309:9]

; <label>:5                                       ; preds = %4
  %tmp_69 = trunc i6 %i_1 to i5, !dbg !150        ; [#uses=7 type=i5] [debug line = 309:33]
  %tmp_44 = add i5 -4, %tmp_69, !dbg !150         ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp_45 = zext i5 %tmp_44 to i64, !dbg !150     ; [#uses=1 type=i64] [debug line = 309:33]
  %k_addr_24 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_45, !dbg !150 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k_load_24 = load i8* %k_addr_24, align 1, !dbg !150 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp_46 = zext i6 %i_1 to i64, !dbg !150        ; [#uses=1 type=i64] [debug line = 309:33]
  %k_addr_25 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_46, !dbg !150 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k_load_25 = load i8* %k_addr_25, align 1, !dbg !150 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp_47 = xor i8 %k_load_25, %k_load_24, !dbg !150 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp_47, i8* %k_addr_25, align 1, !dbg !150 ; [debug line = 309:33]
  %tmp_48 = add i5 -3, %tmp_69, !dbg !150         ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp_49 = zext i5 %tmp_48 to i64, !dbg !150     ; [#uses=1 type=i64] [debug line = 309:33]
  %k_addr_26 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_49, !dbg !150 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k_load_26 = load i8* %k_addr_26, align 1, !dbg !150 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp_50 = or i5 %tmp_69, 1, !dbg !150           ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp_51 = zext i5 %tmp_50 to i64, !dbg !150     ; [#uses=1 type=i64] [debug line = 309:33]
  %k_addr_27 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_51, !dbg !150 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k_load_27 = load i8* %k_addr_27, align 1, !dbg !150 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp_52 = xor i8 %k_load_27, %k_load_26, !dbg !150 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp_52, i8* %k_addr_27, align 1, !dbg !150 ; [debug line = 309:33]
  %tmp_53 = add i5 -2, %tmp_69, !dbg !150         ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp_54 = zext i5 %tmp_53 to i64, !dbg !150     ; [#uses=1 type=i64] [debug line = 309:33]
  %k_addr_28 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_54, !dbg !150 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k_load_28 = load i8* %k_addr_28, align 1, !dbg !150 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp_55 = or i5 %tmp_69, 2, !dbg !150           ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp_56 = zext i5 %tmp_55 to i64, !dbg !150     ; [#uses=1 type=i64] [debug line = 309:33]
  %k_addr_29 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_56, !dbg !150 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k_load_29 = load i8* %k_addr_29, align 1, !dbg !150 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp_57 = xor i8 %k_load_29, %k_load_28, !dbg !150 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp_57, i8* %k_addr_29, align 1, !dbg !150 ; [debug line = 309:33]
  %tmp_58 = add i5 -1, %tmp_69, !dbg !150         ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp_59 = zext i5 %tmp_58 to i64, !dbg !150     ; [#uses=1 type=i64] [debug line = 309:33]
  %k_addr_30 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_59, !dbg !150 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k_load_30 = load i8* %k_addr_30, align 1, !dbg !150 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp_60 = or i5 %tmp_69, 3, !dbg !150           ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp_61 = zext i5 %tmp_60 to i64, !dbg !150     ; [#uses=1 type=i64] [debug line = 309:33]
  %k_addr_31 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp_61, !dbg !150 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k_load_31 = load i8* %k_addr_31, align 1, !dbg !150 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp_62 = xor i8 %k_load_31, %k_load_30, !dbg !150 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp_62, i8* %k_addr_31, align 1, !dbg !150 ; [debug line = 309:33]
  %i_3 = add i6 4, %i_1, !dbg !151                ; [#uses=1 type=i6] [debug line = 309:25]
  call void @llvm.dbg.value(metadata !{i6 %i_3}, i64 0, metadata !143), !dbg !151 ; [debug line = 309:25] [debug variable = i]
  br label %4, !dbg !151                          ; [debug line = 309:25]

; <label>:6                                       ; preds = %4
  ret i8 %y_20, !dbg !152                         ; [debug line = 312:1]
}

; [#uses=1]
define internal fastcc i8 @aes_expandDecKey(i8 %rc_read) {
  %rc_read_2 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %rc_read) ; [#uses=2 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %rc_read_2}, i64 0, metadata !153), !dbg !155 ; [debug line = 315:56] [debug variable = rc]
  call void @llvm.dbg.value(metadata !{i8 %rc_read}, i64 0, metadata !153), !dbg !155 ; [debug line = 315:56] [debug variable = rc]
  br label %1, !dbg !156                          ; [debug line = 319:9]

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ -4, %0 ], [ %i_4, %2 ]            ; [#uses=9 type=i5]
  %tmp = icmp ugt i5 %i, -16, !dbg !156           ; [#uses=1 type=i1] [debug line = 319:9]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp, label %2, label %3, !dbg !156       ; [debug line = 319:9]

; <label>:2                                       ; preds = %1
  %i_4 = add i5 %i, -4, !dbg !159                 ; [#uses=2 type=i5] [debug line = 319:33]
  %tmp_63 = zext i5 %i_4 to i64, !dbg !159        ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx_key_addr = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_63, !dbg !159 ; [#uses=1 type=i8*] [debug line = 319:33]
  %ctx_key_load = load i8* %ctx_key_addr, align 4, !dbg !159 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp_64 = zext i5 %i to i64, !dbg !159          ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx_key_addr_1 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_64, !dbg !159 ; [#uses=2 type=i8*] [debug line = 319:33]
  %ctx_key_load_1 = load i8* %ctx_key_addr_1, align 4, !dbg !159 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp_65 = xor i8 %ctx_key_load_1, %ctx_key_load, !dbg !159 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp_65, i8* %ctx_key_addr_1, align 4, !dbg !159 ; [debug line = 319:33]
  %tmp_66 = add i5 %i, -3, !dbg !159              ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp_67 = zext i5 %tmp_66 to i64, !dbg !159     ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx_key_addr_2 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_67, !dbg !159 ; [#uses=1 type=i8*] [debug line = 319:33]
  %ctx_key_load_2 = load i8* %ctx_key_addr_2, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp_68 = or i5 %i, 1, !dbg !159                ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp_69 = zext i5 %tmp_68 to i64, !dbg !159     ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx_key_addr_3 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_69, !dbg !159 ; [#uses=2 type=i8*] [debug line = 319:33]
  %ctx_key_load_3 = load i8* %ctx_key_addr_3, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp_70 = xor i8 %ctx_key_load_3, %ctx_key_load_2, !dbg !159 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp_70, i8* %ctx_key_addr_3, align 1, !dbg !159 ; [debug line = 319:33]
  %tmp_71 = add i5 %i, -2, !dbg !159              ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp_72 = zext i5 %tmp_71 to i64, !dbg !159     ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx_key_addr_4 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_72, !dbg !159 ; [#uses=1 type=i8*] [debug line = 319:33]
  %ctx_key_load_4 = load i8* %ctx_key_addr_4, align 2, !dbg !159 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp_73 = or i5 %i, 2, !dbg !159                ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp_74 = zext i5 %tmp_73 to i64, !dbg !159     ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx_key_addr_5 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_74, !dbg !159 ; [#uses=2 type=i8*] [debug line = 319:33]
  %ctx_key_load_5 = load i8* %ctx_key_addr_5, align 2, !dbg !159 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp_75 = xor i8 %ctx_key_load_5, %ctx_key_load_4, !dbg !159 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp_75, i8* %ctx_key_addr_5, align 2, !dbg !159 ; [debug line = 319:33]
  %tmp_76 = add i5 %i, -1, !dbg !159              ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp_77 = zext i5 %tmp_76 to i64, !dbg !159     ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx_key_addr_6 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_77, !dbg !159 ; [#uses=1 type=i8*] [debug line = 319:33]
  %ctx_key_load_6 = load i8* %ctx_key_addr_6, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp_78 = or i5 %i, 3, !dbg !159                ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp_79 = zext i5 %tmp_78 to i64, !dbg !159     ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx_key_addr_7 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_79, !dbg !159 ; [#uses=2 type=i8*] [debug line = 319:33]
  %ctx_key_load_7 = load i8* %ctx_key_addr_7, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp_80 = xor i8 %ctx_key_load_7, %ctx_key_load_6, !dbg !159 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp_80, i8* %ctx_key_addr_7, align 1, !dbg !159 ; [debug line = 319:33]
  call void @llvm.dbg.value(metadata !{i5 %i_4}, i64 0, metadata !160), !dbg !161 ; [debug line = 319:25] [debug variable = i]
  br label %1, !dbg !161                          ; [debug line = 319:25]

; <label>:3                                       ; preds = %1
  %ctx_key_load_8 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 12), align 4, !dbg !162 ; [#uses=1 type=i8] [debug line = 322:5]
  %tmp_s = zext i8 %ctx_key_load_8 to i64, !dbg !162 ; [#uses=1 type=i64] [debug line = 322:5]
  %sbox_addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_s, !dbg !162 ; [#uses=1 type=i8*] [debug line = 322:5]
  %sbox_load = load i8* %sbox_addr, align 1, !dbg !162 ; [#uses=1 type=i8] [debug line = 322:5]
  %ctx_key_load_9 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 16), align 16, !dbg !162 ; [#uses=1 type=i8] [debug line = 322:5]
  %tmp_81 = xor i8 %ctx_key_load_9, %sbox_load, !dbg !162 ; [#uses=1 type=i8] [debug line = 322:5]
  store i8 %tmp_81, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 16), align 16, !dbg !162 ; [debug line = 322:5]
  %ctx_key_load_10 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 13), align 1, !dbg !163 ; [#uses=1 type=i8] [debug line = 323:5]
  %tmp_82 = zext i8 %ctx_key_load_10 to i64, !dbg !163 ; [#uses=1 type=i64] [debug line = 323:5]
  %sbox_addr_8 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_82, !dbg !163 ; [#uses=1 type=i8*] [debug line = 323:5]
  %sbox_load_8 = load i8* %sbox_addr_8, align 1, !dbg !163 ; [#uses=1 type=i8] [debug line = 323:5]
  %ctx_key_load_11 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 17), align 1, !dbg !163 ; [#uses=1 type=i8] [debug line = 323:5]
  %tmp_83 = xor i8 %ctx_key_load_11, %sbox_load_8, !dbg !163 ; [#uses=1 type=i8] [debug line = 323:5]
  store i8 %tmp_83, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 17), align 1, !dbg !163 ; [debug line = 323:5]
  %ctx_key_load_12 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 14), align 2, !dbg !164 ; [#uses=1 type=i8] [debug line = 324:5]
  %tmp_84 = zext i8 %ctx_key_load_12 to i64, !dbg !164 ; [#uses=1 type=i64] [debug line = 324:5]
  %sbox_addr_9 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_84, !dbg !164 ; [#uses=1 type=i8*] [debug line = 324:5]
  %sbox_load_9 = load i8* %sbox_addr_9, align 1, !dbg !164 ; [#uses=1 type=i8] [debug line = 324:5]
  %ctx_key_load_13 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 18), align 2, !dbg !164 ; [#uses=1 type=i8] [debug line = 324:5]
  %tmp_85 = xor i8 %ctx_key_load_13, %sbox_load_9, !dbg !164 ; [#uses=1 type=i8] [debug line = 324:5]
  store i8 %tmp_85, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 18), align 2, !dbg !164 ; [debug line = 324:5]
  %ctx_key_load_14 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 15), align 1, !dbg !165 ; [#uses=1 type=i8] [debug line = 325:5]
  %tmp_86 = zext i8 %ctx_key_load_14 to i64, !dbg !165 ; [#uses=1 type=i64] [debug line = 325:5]
  %sbox_addr_10 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_86, !dbg !165 ; [#uses=1 type=i8*] [debug line = 325:5]
  %sbox_load_10 = load i8* %sbox_addr_10, align 1, !dbg !165 ; [#uses=1 type=i8] [debug line = 325:5]
  %ctx_key_load_15 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 19), align 1, !dbg !165 ; [#uses=1 type=i8] [debug line = 325:5]
  %tmp_87 = xor i8 %ctx_key_load_15, %sbox_load_10, !dbg !165 ; [#uses=1 type=i8] [debug line = 325:5]
  store i8 %tmp_87, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 19), align 1, !dbg !165 ; [debug line = 325:5]
  br label %4, !dbg !166                          ; [debug line = 327:9]

; <label>:4                                       ; preds = %5, %3
  %i_1 = phi i4 [ -4, %3 ], [ %i_5, %5 ]          ; [#uses=8 type=i4]
  %tmp_88 = icmp eq i4 %i_1, 0, !dbg !166         ; [#uses=1 type=i1] [debug line = 327:9]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp_88, label %6, label %5, !dbg !166    ; [debug line = 327:9]

; <label>:5                                       ; preds = %4
  %tmp_123_cast = zext i4 %i_1 to i5, !dbg !168   ; [#uses=3 type=i5] [debug line = 327:32]
  %tmp_101 = add i5 %tmp_123_cast, -4, !dbg !168  ; [#uses=1 type=i5] [debug line = 327:32]
  %tmp_102 = sext i5 %tmp_101 to i64, !dbg !168   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx_key_addr_8 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_102, !dbg !168 ; [#uses=1 type=i8*] [debug line = 327:32]
  %ctx_key_load_24 = load i8* %ctx_key_addr_8, align 4, !dbg !168 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp_103 = zext i4 %i_1 to i64, !dbg !168       ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx_key_addr_9 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_103, !dbg !168 ; [#uses=2 type=i8*] [debug line = 327:32]
  %ctx_key_load_25 = load i8* %ctx_key_addr_9, align 4, !dbg !168 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp_104 = xor i8 %ctx_key_load_25, %ctx_key_load_24, !dbg !168 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp_104, i8* %ctx_key_addr_9, align 4, !dbg !168 ; [debug line = 327:32]
  %tmp_105 = add i5 %tmp_123_cast, -3, !dbg !168  ; [#uses=1 type=i5] [debug line = 327:32]
  %tmp_106 = sext i5 %tmp_105 to i64, !dbg !168   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx_key_addr_10 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_106, !dbg !168 ; [#uses=1 type=i8*] [debug line = 327:32]
  %ctx_key_load_26 = load i8* %ctx_key_addr_10, align 1, !dbg !168 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp_107 = or i4 %i_1, 1, !dbg !168             ; [#uses=1 type=i4] [debug line = 327:32]
  %tmp_108 = zext i4 %tmp_107 to i64, !dbg !168   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx_key_addr_11 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_108, !dbg !168 ; [#uses=2 type=i8*] [debug line = 327:32]
  %ctx_key_load_27 = load i8* %ctx_key_addr_11, align 1, !dbg !168 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp_109 = xor i8 %ctx_key_load_27, %ctx_key_load_26, !dbg !168 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp_109, i8* %ctx_key_addr_11, align 1, !dbg !168 ; [debug line = 327:32]
  %tmp_110 = add i5 %tmp_123_cast, -2, !dbg !168  ; [#uses=1 type=i5] [debug line = 327:32]
  %tmp_111 = sext i5 %tmp_110 to i64, !dbg !168   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx_key_addr_12 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_111, !dbg !168 ; [#uses=1 type=i8*] [debug line = 327:32]
  %ctx_key_load_28 = load i8* %ctx_key_addr_12, align 2, !dbg !168 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp_112 = or i4 %i_1, 2, !dbg !168             ; [#uses=1 type=i4] [debug line = 327:32]
  %tmp_113 = zext i4 %tmp_112 to i64, !dbg !168   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx_key_addr_13 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_113, !dbg !168 ; [#uses=2 type=i8*] [debug line = 327:32]
  %ctx_key_load_29 = load i8* %ctx_key_addr_13, align 2, !dbg !168 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp_114 = xor i8 %ctx_key_load_29, %ctx_key_load_28, !dbg !168 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp_114, i8* %ctx_key_addr_13, align 2, !dbg !168 ; [debug line = 327:32]
  %tmp_115 = add i4 %i_1, -1, !dbg !168           ; [#uses=1 type=i4] [debug line = 327:32]
  %tmp_116 = zext i4 %tmp_115 to i64, !dbg !168   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx_key_addr_14 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_116, !dbg !168 ; [#uses=1 type=i8*] [debug line = 327:32]
  %ctx_key_load_30 = load i8* %ctx_key_addr_14, align 1, !dbg !168 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp_117 = or i4 %i_1, 3, !dbg !168             ; [#uses=1 type=i4] [debug line = 327:32]
  %tmp_118 = zext i4 %tmp_117 to i64, !dbg !168   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx_key_addr_15 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_118, !dbg !168 ; [#uses=2 type=i8*] [debug line = 327:32]
  %ctx_key_load_31 = load i8* %ctx_key_addr_15, align 1, !dbg !168 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp_119 = xor i8 %ctx_key_load_31, %ctx_key_load_30, !dbg !168 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp_119, i8* %ctx_key_addr_15, align 1, !dbg !168 ; [debug line = 327:32]
  %i_5 = add i4 %i_1, -4, !dbg !169               ; [#uses=1 type=i4] [debug line = 327:24]
  br label %4, !dbg !169                          ; [debug line = 327:24]

; <label>:6                                       ; preds = %4
  %tmp_89 = call i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8 %rc_read_2, i32 1, i32 7), !dbg !170 ; [#uses=1 type=i7] [debug line = 330:5]
  %tmp_90 = zext i7 %tmp_89 to i8, !dbg !170      ; [#uses=1 type=i8] [debug line = 330:5]
  %tmp_91 = trunc i8 %rc_read_2 to i1, !dbg !170  ; [#uses=1 type=i1] [debug line = 330:5]
  %tmp_92 = select i1 %tmp_91, i8 -115, i8 0, !dbg !170 ; [#uses=1 type=i8] [debug line = 330:5]
  %rc_write_assign = xor i8 %tmp_92, %tmp_90, !dbg !170 ; [#uses=2 type=i8] [debug line = 330:5]
  %ctx_key_load_16 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 29), align 1, !dbg !171 ; [#uses=1 type=i8] [debug line = 331:5]
  %tmp_93 = zext i8 %ctx_key_load_16 to i64, !dbg !171 ; [#uses=1 type=i64] [debug line = 331:5]
  %sbox_addr_11 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_93, !dbg !171 ; [#uses=1 type=i8*] [debug line = 331:5]
  %sbox_load_11 = load i8* %sbox_addr_11, align 1, !dbg !171 ; [#uses=1 type=i8] [debug line = 331:5]
  %ctx_key_load_17 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 0), align 16, !dbg !171 ; [#uses=1 type=i8] [debug line = 331:5]
  %tmp1 = xor i8 %ctx_key_load_17, %rc_write_assign, !dbg !171 ; [#uses=1 type=i8] [debug line = 331:5]
  %tmp_94 = xor i8 %tmp1, %sbox_load_11, !dbg !171 ; [#uses=1 type=i8] [debug line = 331:5]
  store i8 %tmp_94, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 0), align 16, !dbg !171 ; [debug line = 331:5]
  %ctx_key_load_18 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 30), align 2, !dbg !172 ; [#uses=1 type=i8] [debug line = 332:5]
  %tmp_95 = zext i8 %ctx_key_load_18 to i64, !dbg !172 ; [#uses=1 type=i64] [debug line = 332:5]
  %sbox_addr_12 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_95, !dbg !172 ; [#uses=1 type=i8*] [debug line = 332:5]
  %sbox_load_12 = load i8* %sbox_addr_12, align 1, !dbg !172 ; [#uses=1 type=i8] [debug line = 332:5]
  %ctx_key_load_19 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 1), align 1, !dbg !172 ; [#uses=1 type=i8] [debug line = 332:5]
  %tmp_96 = xor i8 %ctx_key_load_19, %sbox_load_12, !dbg !172 ; [#uses=1 type=i8] [debug line = 332:5]
  store i8 %tmp_96, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 1), align 1, !dbg !172 ; [debug line = 332:5]
  %ctx_key_load_20 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 31), align 1, !dbg !173 ; [#uses=1 type=i8] [debug line = 333:5]
  %tmp_97 = zext i8 %ctx_key_load_20 to i64, !dbg !173 ; [#uses=1 type=i64] [debug line = 333:5]
  %sbox_addr_13 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_97, !dbg !173 ; [#uses=1 type=i8*] [debug line = 333:5]
  %sbox_load_13 = load i8* %sbox_addr_13, align 1, !dbg !173 ; [#uses=1 type=i8] [debug line = 333:5]
  %ctx_key_load_21 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 2), align 2, !dbg !173 ; [#uses=1 type=i8] [debug line = 333:5]
  %tmp_98 = xor i8 %ctx_key_load_21, %sbox_load_13, !dbg !173 ; [#uses=1 type=i8] [debug line = 333:5]
  store i8 %tmp_98, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 2), align 2, !dbg !173 ; [debug line = 333:5]
  %ctx_key_load_22 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 28), align 4, !dbg !174 ; [#uses=1 type=i8] [debug line = 334:5]
  %tmp_99 = zext i8 %ctx_key_load_22 to i64, !dbg !174 ; [#uses=1 type=i64] [debug line = 334:5]
  %sbox_addr_14 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_99, !dbg !174 ; [#uses=1 type=i8*] [debug line = 334:5]
  %sbox_load_14 = load i8* %sbox_addr_14, align 1, !dbg !174 ; [#uses=1 type=i8] [debug line = 334:5]
  %ctx_key_load_23 = load i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 3), align 1, !dbg !174 ; [#uses=1 type=i8] [debug line = 334:5]
  %tmp_100 = xor i8 %ctx_key_load_23, %sbox_load_14, !dbg !174 ; [#uses=1 type=i8] [debug line = 334:5]
  store i8 %tmp_100, i8* getelementptr inbounds ([32 x i8]* @ctx_key, i64 0, i64 3), align 1, !dbg !174 ; [debug line = 334:5]
  call void @llvm.dbg.value(metadata !{i8 %rc_write_assign}, i64 0, metadata !175), !dbg !155 ; [debug line = 315:56] [debug variable = rc]
  ret i8 %rc_write_assign, !dbg !176              ; [debug line = 335:1]
}

; [#uses=6]
define internal fastcc void @aes_addRoundKey([16 x i8]* nocapture %buf, [32 x i8]* nocapture %key, i6 %key_offset) {
  %key_offset_read = call i6 @_ssdm_op_Read.ap_auto.i6(i6 %key_offset) ; [#uses=1 type=i6]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !177), !dbg !179 ; [debug line = 210:44] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %key}, i64 0, metadata !180), !dbg !181 ; [debug line = 210:64] [debug variable = key]
  %tmp_92 = trunc i6 %key_offset_read to i5       ; [#uses=1 type=i5]
  br label %1, !dbg !182                          ; [debug line = 214:5]

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ -16, %0 ], [ %i_5, %2 ]           ; [#uses=2 type=i5]
  %i_5 = add i5 %i, -1, !dbg !182                 ; [#uses=3 type=i5] [debug line = 214:5]
  %i_6_cast = sext i5 %i_5 to i8, !dbg !182       ; [#uses=1 type=i8] [debug line = 214:5]
  call void @llvm.dbg.value(metadata !{i5 %i_5}, i64 0, metadata !184), !dbg !182 ; [debug line = 214:5] [debug variable = i]
  %tmp = icmp eq i5 %i, 0, !dbg !182              ; [#uses=1 type=i1] [debug line = 214:5]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp, label %3, label %2, !dbg !182       ; [debug line = 214:5]

; <label>:2                                       ; preds = %1
  %tmp_s = zext i8 %i_6_cast to i64, !dbg !185    ; [#uses=1 type=i64] [debug line = 214:17]
  %sum = add i5 %i_5, %tmp_92                     ; [#uses=1 type=i5]
  %sum_cast = zext i5 %sum to i64                 ; [#uses=1 type=i64]
  %key_addr = getelementptr [32 x i8]* %key, i64 0, i64 %sum_cast, !dbg !185 ; [#uses=1 type=i8*] [debug line = 214:17]
  %key_load = load i8* %key_addr, align 1, !dbg !185 ; [#uses=1 type=i8] [debug line = 214:17]
  %buf_addr = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_s, !dbg !185 ; [#uses=2 type=i8*] [debug line = 214:17]
  %buf_load = load i8* %buf_addr, align 1, !dbg !185 ; [#uses=1 type=i8] [debug line = 214:17]
  %tmp_120 = xor i8 %buf_load, %key_load, !dbg !185 ; [#uses=1 type=i8] [debug line = 214:17]
  store i8 %tmp_120, i8* %buf_addr, align 1, !dbg !185 ; [debug line = 214:17]
  br label %1, !dbg !185                          ; [debug line = 214:17]

; <label>:3                                       ; preds = %1
  ret void, !dbg !186                             ; [debug line = 215:1]
}

; [#uses=0]
define void @aes256cbc(i8* %memptr, i3 zeroext %mode, i32 %inbuf_addr, i32 %outbuf_addr) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %memptr) nounwind, !map !187
  call void (...)* @_ssdm_op_SpecBitsMap(i3 %mode) nounwind, !map !193
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %inbuf_addr) nounwind, !map !199
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %outbuf_addr) nounwind, !map !203
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @aes256cbc_str) nounwind
  %outbuf_addr_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %outbuf_addr) nounwind ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %outbuf_addr_read}, i64 0, metadata !207), !dbg !223 ; [debug line = 8:88] [debug variable = outbuf_addr]
  %inbuf_addr_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %inbuf_addr) nounwind ; [#uses=4 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %inbuf_addr_read}, i64 0, metadata !224), !dbg !225 ; [debug line = 8:67] [debug variable = inbuf_addr]
  %mode_read = call i3 @_ssdm_op_Read.s_axilite.i3(i3 %mode) nounwind ; [#uses=1 type=i3]
  call void @llvm.dbg.value(metadata !{i3 %mode_read}, i64 0, metadata !226), !dbg !227 ; [debug line = 8:52] [debug variable = mode]
  %buf = alloca [16 x i8], align 16               ; [#uses=10 type=[16 x i8]*]
  call void @llvm.dbg.value(metadata !{i8* %memptr}, i64 0, metadata !228), !dbg !229 ; [debug line = 8:31] [debug variable = memptr]
  call void @llvm.dbg.value(metadata !{i3 %mode}, i64 0, metadata !226), !dbg !227 ; [debug line = 8:52] [debug variable = mode]
  call void @llvm.dbg.value(metadata !{i32 %inbuf_addr}, i64 0, metadata !224), !dbg !225 ; [debug line = 8:67] [debug variable = inbuf_addr]
  call void @llvm.dbg.value(metadata !{i32 %outbuf_addr}, i64 0, metadata !207), !dbg !223 ; [debug line = 8:88] [debug variable = outbuf_addr]
  call void (...)* @_ssdm_op_SpecInterface(i32 %outbuf_addr, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [3 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !230 ; [debug line = 9:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %inbuf_addr, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [3 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !232 ; [debug line = 10:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %memptr, [6 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 64, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !233 ; [debug line = 11:1]
  call void (...)* @_ssdm_op_SpecInterface(i3 %mode, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [3 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !234 ; [debug line = 12:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !235 ; [debug line = 13:1]
  call void @llvm.dbg.declare(metadata !{[16 x i8]* %buf}, metadata !236), !dbg !237 ; [debug line = 15:16] [debug variable = buf]
  switch i3 %mode_read, label %._crit_edge [
    i3 0, label %.preheader1.preheader
    i3 1, label %4
    i3 2, label %10
    i3 3, label %17
    i3 -4, label %18
  ], !dbg !238                                    ; [debug line = 23:5]

.preheader1.preheader:                            ; preds = %0
  br label %.preheader1, !dbg !239                ; [debug line = 25:10]

.preheader1:                                      ; preds = %1, %.preheader1.preheader
  %i = phi i5 [ %i_6, %1 ], [ 0, %.preheader1.preheader ] ; [#uses=3 type=i5]
  %tmp_124 = icmp eq i5 %i, -16, !dbg !239        ; [#uses=1 type=i1] [debug line = 25:10]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_6 = add i5 %i, 1, !dbg !242                  ; [#uses=1 type=i5] [debug line = 25:19]
  br i1 %tmp_124, label %.preheader20.preheader, label %1, !dbg !239 ; [debug line = 25:10]

.preheader20.preheader:                           ; preds = %.preheader1
  br label %.preheader20, !dbg !243               ; [debug line = 344:10@26:6]

; <label>:1                                       ; preds = %.preheader1
  %tmp_125 = zext i5 %i to i64, !dbg !258         ; [#uses=2 type=i64] [debug line = 25:26]
  %iv_addr = getelementptr inbounds [16 x i8]* @iv, i64 0, i64 %tmp_125, !dbg !258 ; [#uses=1 type=i8*] [debug line = 25:26]
  %iv_load = load i8* %iv_addr, align 1, !dbg !258 ; [#uses=1 type=i8] [debug line = 25:26]
  %xorv_addr = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_125, !dbg !258 ; [#uses=1 type=i8*] [debug line = 25:26]
  store i8 %iv_load, i8* %xorv_addr, align 1, !dbg !258 ; [debug line = 25:26]
  call void @llvm.dbg.value(metadata !{i5 %i_6}, i64 0, metadata !260), !dbg !242 ; [debug line = 25:19] [debug variable = i]
  br label %.preheader1, !dbg !242                ; [debug line = 25:19]

.preheader20:                                     ; preds = %2, %.preheader20.preheader
  %i_i = phi i6 [ %i_7, %2 ], [ 0, %.preheader20.preheader ] ; [#uses=3 type=i6]
  %tmp_i = icmp eq i6 %i_i, -32, !dbg !243        ; [#uses=1 type=i1] [debug line = 344:10@26:6]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  %i_7 = add i6 %i_i, 1, !dbg !261                ; [#uses=1 type=i6] [debug line = 344:39@26:6]
  br i1 %tmp_i, label %.preheader.i.preheader, label %2, !dbg !243 ; [debug line = 344:10@26:6]

.preheader.i.preheader:                           ; preds = %.preheader20
  br label %.preheader.i, !dbg !262               ; [debug line = 345:10@26:6]

; <label>:2                                       ; preds = %.preheader20
  %tmp_i_8 = zext i6 %i_i to i64, !dbg !264       ; [#uses=3 type=i64] [debug line = 344:44@26:6]
  %key_addr_1 = getelementptr [32 x i8]* @key, i64 0, i64 %tmp_i_8, !dbg !264 ; [#uses=1 type=i8*] [debug line = 344:44@26:6]
  %key_load = load i8* %key_addr_1, align 1, !dbg !264 ; [#uses=2 type=i8] [debug line = 344:44@26:6]
  %ctx_deckey_addr = getelementptr [32 x i8]* @ctx_deckey, i64 0, i64 %tmp_i_8, !dbg !264 ; [#uses=1 type=i8*] [debug line = 344:44@26:6]
  store i8 %key_load, i8* %ctx_deckey_addr, align 1, !dbg !264 ; [debug line = 344:44@26:6]
  %ctx_enckey_addr = getelementptr [32 x i8]* @ctx_enckey, i64 0, i64 %tmp_i_8, !dbg !264 ; [#uses=1 type=i8*] [debug line = 344:44@26:6]
  store i8 %key_load, i8* %ctx_enckey_addr, align 1, !dbg !264 ; [debug line = 344:44@26:6]
  call void @llvm.dbg.value(metadata !{i6 %i_7}, i64 0, metadata !265) nounwind, !dbg !261 ; [debug line = 344:39@26:6] [debug variable = i]
  br label %.preheader20, !dbg !261               ; [debug line = 344:39@26:6]

.preheader.i:                                     ; preds = %3, %.preheader.i.preheader
  %rcon_i = phi i8 [ %rcon, %3 ], [ 1, %.preheader.i.preheader ] ; [#uses=1 type=i8]
  %i_10 = phi i3 [ %phitmp_i, %3 ], [ -1, %.preheader.i.preheader ] ; [#uses=2 type=i3]
  call void @llvm.dbg.value(metadata !{i3 %i_10}, i64 0, metadata !265) nounwind, !dbg !262 ; [debug line = 345:10@26:6] [debug variable = i]
  %tmp_212_i = icmp eq i3 %i_10, 0, !dbg !262     ; [#uses=1 type=i1] [debug line = 345:10@26:6]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) nounwind ; [#uses=0 type=i32]
  br i1 %tmp_212_i, label %._crit_edge.loopexit15, label %3, !dbg !262 ; [debug line = 345:10@26:6]

; <label>:3                                       ; preds = %.preheader.i
  %rcon = call fastcc i8 @aes_expandEncKey([32 x i8]* @ctx_deckey, i8 %rcon_i) nounwind, !dbg !266 ; [#uses=1 type=i8] [debug line = 345:23@26:6]
  call void @llvm.dbg.value(metadata !{i8 %rcon}, i64 0, metadata !267) nounwind, !dbg !266 ; [debug line = 345:23@26:6] [debug variable = rcon]
  %phitmp_i = add i3 %i_10, -1, !dbg !266         ; [#uses=1 type=i3] [debug line = 345:23@26:6]
  br label %.preheader.i, !dbg !266               ; [debug line = 345:23@26:6]

; <label>:4                                       ; preds = %0
  %tmp_s = zext i32 %inbuf_addr_read to i64, !dbg !268 ; [#uses=1 type=i64] [debug line = 29:6]
  %memptr_addr = getelementptr inbounds i8* %memptr, i64 %tmp_s, !dbg !268 ; [#uses=2 type=i8*] [debug line = 29:6]
  %memptr_addr_1_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %memptr_addr, i32 16) nounwind, !dbg !268 ; [#uses=0 type=i1] [debug line = 29:6]
  br label %burst.rd.header

burst.rd.header:                                  ; preds = %burst.rd.body, %4
  %indvar = phi i5 [ 0, %4 ], [ %indvar_next, %burst.rd.body ] ; [#uses=3 type=i5]
  %exitcond = icmp eq i5 %indvar, -16             ; [#uses=1 type=i1]
  %indvar_next = add i5 %indvar, 1                ; [#uses=1 type=i5]
  br i1 %exitcond, label %burst.rd.end.preheader, label %burst.rd.body

burst.rd.end.preheader:                           ; preds = %burst.rd.header
  br label %burst.rd.end, !dbg !269               ; [debug line = 31:10]

burst.rd.body:                                    ; preds = %burst.rd.header
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %burstread_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_s) nounwind ; [#uses=1 type=i32]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str4) nounwind ; [#uses=0 type=i32]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopName([15 x i8]* @memcpy_OC_OC_memptr) nounwind ; [#uses=0 type=i32]
  %memptr_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %memptr_addr) nounwind, !dbg !268 ; [#uses=1 type=i8] [debug line = 29:6]
  %tmp_126 = zext i5 %indvar to i64, !dbg !268    ; [#uses=1 type=i64] [debug line = 29:6]
  %buf_addr = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_126, !dbg !268 ; [#uses=1 type=i8*] [debug line = 29:6]
  store i8 %memptr_addr_read, i8* %buf_addr, align 1, !dbg !268 ; [debug line = 29:6]
  %burstread_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_s, i32 %burstread_rbegin) nounwind ; [#uses=0 type=i32]
  br label %burst.rd.header

burst.rd.end:                                     ; preds = %5, %burst.rd.end.preheader
  %i_1 = phi i5 [ %i_8, %5 ], [ 0, %burst.rd.end.preheader ] ; [#uses=3 type=i5]
  %tmp_130 = icmp eq i5 %i_1, -16, !dbg !269      ; [#uses=1 type=i1] [debug line = 31:10]
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_8 = add i5 %i_1, 1, !dbg !271                ; [#uses=1 type=i5] [debug line = 31:21]
  br i1 %tmp_130, label %6, label %5, !dbg !269   ; [debug line = 31:10]

; <label>:5                                       ; preds = %burst.rd.end
  %tmp_132 = zext i5 %i_1 to i64, !dbg !272       ; [#uses=2 type=i64] [debug line = 32:7]
  %buf_addr_5 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_132, !dbg !272 ; [#uses=2 type=i8*] [debug line = 32:7]
  %buf_load = load i8* %buf_addr_5, align 1, !dbg !272 ; [#uses=1 type=i8] [debug line = 32:7]
  %xorv_addr_1 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_132, !dbg !272 ; [#uses=1 type=i8*] [debug line = 32:7]
  %xorv_load = load i8* %xorv_addr_1, align 1, !dbg !272 ; [#uses=1 type=i8] [debug line = 32:7]
  %tmp_133 = xor i8 %xorv_load, %buf_load, !dbg !272 ; [#uses=1 type=i8] [debug line = 32:7]
  store i8 %tmp_133, i8* %buf_addr_5, align 1, !dbg !272 ; [debug line = 32:7]
  call void @llvm.dbg.value(metadata !{i5 %i_8}, i64 0, metadata !260), !dbg !271 ; [debug line = 31:21] [debug variable = i]
  br label %burst.rd.end, !dbg !271               ; [debug line = 31:21]

; <label>:6                                       ; preds = %burst.rd.end
  call fastcc void @aes256_encrypt_ecb([16 x i8]* %buf) nounwind, !dbg !274 ; [debug line = 35:6]
  br label %7, !dbg !275                          ; [debug line = 37:10]

; <label>:7                                       ; preds = %8, %6
  %i_2 = phi i5 [ 0, %6 ], [ %i_12, %8 ]          ; [#uses=3 type=i5]
  %tmp_135 = icmp eq i5 %i_2, -16, !dbg !275      ; [#uses=1 type=i1] [debug line = 37:10]
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_12 = add i5 %i_2, 1, !dbg !277               ; [#uses=1 type=i5] [debug line = 37:19]
  br i1 %tmp_135, label %9, label %8, !dbg !275   ; [debug line = 37:10]

; <label>:8                                       ; preds = %7
  %tmp_138 = zext i5 %i_2 to i64, !dbg !278       ; [#uses=2 type=i64] [debug line = 37:26]
  %buf_addr_7 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_138, !dbg !278 ; [#uses=1 type=i8*] [debug line = 37:26]
  %buf_load_2 = load i8* %buf_addr_7, align 1, !dbg !278 ; [#uses=1 type=i8] [debug line = 37:26]
  %xorv_addr_2 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_138, !dbg !278 ; [#uses=1 type=i8*] [debug line = 37:26]
  store i8 %buf_load_2, i8* %xorv_addr_2, align 1, !dbg !278 ; [debug line = 37:26]
  call void @llvm.dbg.value(metadata !{i5 %i_12}, i64 0, metadata !260), !dbg !277 ; [debug line = 37:19] [debug variable = i]
  br label %7, !dbg !277                          ; [debug line = 37:19]

; <label>:9                                       ; preds = %7
  %tmp_137 = zext i32 %outbuf_addr_read to i64, !dbg !280 ; [#uses=1 type=i64] [debug line = 39:6]
  %memptr_addr_4 = getelementptr inbounds i8* %memptr, i64 %tmp_137, !dbg !280 ; [#uses=3 type=i8*] [debug line = 39:6]
  %memptr_addr_9_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %memptr_addr_4, i32 16) nounwind, !dbg !280 ; [#uses=0 type=i1] [debug line = 39:6]
  br label %burst.wr.header

burst.wr.header:                                  ; preds = %burst.wr.body, %9
  %indvar7 = phi i5 [ 0, %9 ], [ %indvar_next8, %burst.wr.body ] ; [#uses=3 type=i5]
  %exitcond9 = icmp eq i5 %indvar7, -16           ; [#uses=1 type=i1]
  %indvar_next8 = add i5 %indvar7, 1              ; [#uses=1 type=i5]
  br i1 %exitcond9, label %._crit_edge.loopexit7, label %burst.wr.body

burst.wr.body:                                    ; preds = %burst.wr.header
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %burstwrite_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region) nounwind ; [#uses=1 type=i32]
  %empty_16 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str5) nounwind ; [#uses=0 type=i32]
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopName([15 x i8]* @memcpy_OC_memptr_OC_s) nounwind ; [#uses=0 type=i32]
  %tmp_142 = zext i5 %indvar7 to i64, !dbg !280   ; [#uses=1 type=i64] [debug line = 39:6]
  %buf_addr_9 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_142, !dbg !280 ; [#uses=1 type=i8*] [debug line = 39:6]
  %buf_load_4 = load i8* %buf_addr_9, align 1, !dbg !280 ; [#uses=1 type=i8] [debug line = 39:6]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %memptr_addr_4, i8 %buf_load_4, i1 true) nounwind, !dbg !280 ; [debug line = 39:6]
  %burstwrite_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region, i32 %burstwrite_rbegin) nounwind ; [#uses=0 type=i32]
  br label %burst.wr.header

; <label>:10                                      ; preds = %0
  %tmp_121 = zext i32 %inbuf_addr_read to i64, !dbg !281 ; [#uses=1 type=i64] [debug line = 42:6]
  %memptr_addr_1 = getelementptr inbounds i8* %memptr, i64 %tmp_121, !dbg !281 ; [#uses=2 type=i8*] [debug line = 42:6]
  %memptr_addr_2_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %memptr_addr_1, i32 16) nounwind, !dbg !281 ; [#uses=0 type=i1] [debug line = 42:6]
  br label %burst.rd.header19

burst.rd.header19:                                ; preds = %burst.rd.body20, %10
  %indvar1 = phi i5 [ 0, %10 ], [ %indvar_next1, %burst.rd.body20 ] ; [#uses=3 type=i5]
  %exitcond1 = icmp eq i5 %indvar1, -16           ; [#uses=1 type=i1]
  %indvar_next1 = add i5 %indvar1, 1              ; [#uses=1 type=i5]
  br i1 %exitcond1, label %burst.rd.end18.preheader, label %burst.rd.body20

burst.rd.end18.preheader:                         ; preds = %burst.rd.header19
  br label %burst.rd.end18, !dbg !282             ; [debug line = 44:10]

burst.rd.body20:                                  ; preds = %burst.rd.header19
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %burstread_rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_s) nounwind ; [#uses=1 type=i32]
  %empty_19 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str6) nounwind ; [#uses=0 type=i32]
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopName([15 x i8]* @memcpy_OC_OC_memptr) nounwind ; [#uses=0 type=i32]
  %memptr_addr_1_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %memptr_addr_1) nounwind, !dbg !281 ; [#uses=1 type=i8] [debug line = 42:6]
  %tmp_127 = zext i5 %indvar1 to i64, !dbg !281   ; [#uses=1 type=i64] [debug line = 42:6]
  %buf_addr_4 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_127, !dbg !281 ; [#uses=1 type=i8*] [debug line = 42:6]
  store i8 %memptr_addr_1_read, i8* %buf_addr_4, align 1, !dbg !281 ; [debug line = 42:6]
  %burstread_rend32 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_s, i32 %burstread_rbegin1) nounwind ; [#uses=0 type=i32]
  br label %burst.rd.header19

burst.rd.end18:                                   ; preds = %11, %burst.rd.end18.preheader
  %i_3 = phi i5 [ %i_9, %11 ], [ 0, %burst.rd.end18.preheader ] ; [#uses=3 type=i5]
  %tmp_131 = icmp eq i5 %i_3, -16, !dbg !282      ; [#uses=1 type=i1] [debug line = 44:10]
  %empty_21 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_9 = add i5 %i_3, 1, !dbg !284                ; [#uses=1 type=i5] [debug line = 44:19]
  br i1 %tmp_131, label %12, label %11, !dbg !282 ; [debug line = 44:10]

; <label>:11                                      ; preds = %burst.rd.end18
  %tmp_134 = zext i5 %i_3 to i64, !dbg !285       ; [#uses=2 type=i64] [debug line = 44:26]
  %buf_addr_6 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_134, !dbg !285 ; [#uses=1 type=i8*] [debug line = 44:26]
  %buf_load_1 = load i8* %buf_addr_6, align 1, !dbg !285 ; [#uses=1 type=i8] [debug line = 44:26]
  %lastbuf_addr = getelementptr inbounds [16 x i8]* @lastbuf, i64 0, i64 %tmp_134, !dbg !285 ; [#uses=1 type=i8*] [debug line = 44:26]
  store i8 %buf_load_1, i8* %lastbuf_addr, align 1, !dbg !285 ; [debug line = 44:26]
  call void @llvm.dbg.value(metadata !{i5 %i_9}, i64 0, metadata !260), !dbg !284 ; [debug line = 44:19] [debug variable = i]
  br label %burst.rd.end18, !dbg !284             ; [debug line = 44:19]

; <label>:12                                      ; preds = %burst.rd.end18
  call fastcc void @aes256_decrypt_ecb([16 x i8]* %buf) nounwind, !dbg !287 ; [debug line = 46:6]
  br label %13, !dbg !288                         ; [debug line = 48:10]

; <label>:13                                      ; preds = %14, %12
  %i_4 = phi i5 [ 0, %12 ], [ %i_11, %14 ]        ; [#uses=3 type=i5]
  %tmp_136 = icmp eq i5 %i_4, -16, !dbg !288      ; [#uses=1 type=i1] [debug line = 48:10]
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_11 = add i5 %i_4, 1, !dbg !290               ; [#uses=1 type=i5] [debug line = 48:21]
  br i1 %tmp_136, label %.preheader.preheader, label %14, !dbg !288 ; [debug line = 48:10]

.preheader.preheader:                             ; preds = %13
  br label %.preheader, !dbg !291                 ; [debug line = 52:10]

; <label>:14                                      ; preds = %13
  %tmp_139 = zext i5 %i_4 to i64, !dbg !293       ; [#uses=2 type=i64] [debug line = 49:7]
  %buf_addr_8 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp_139, !dbg !293 ; [#uses=2 type=i8*] [debug line = 49:7]
  %buf_load_3 = load i8* %buf_addr_8, align 1, !dbg !293 ; [#uses=1 type=i8] [debug line = 49:7]
  %xorv_addr_3 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_139, !dbg !293 ; [#uses=1 type=i8*] [debug line = 49:7]
  %xorv_load_1 = load i8* %xorv_addr_3, align 1, !dbg !293 ; [#uses=1 type=i8] [debug line = 49:7]
  %tmp_140 = xor i8 %xorv_load_1, %buf_load_3, !dbg !293 ; [#uses=1 type=i8] [debug line = 49:7]
  store i8 %tmp_140, i8* %buf_addr_8, align 1, !dbg !293 ; [debug line = 49:7]
  call void @llvm.dbg.value(metadata !{i5 %i_11}, i64 0, metadata !260), !dbg !290 ; [debug line = 48:21] [debug variable = i]
  br label %13, !dbg !290                         ; [debug line = 48:21]

.preheader:                                       ; preds = %15, %.preheader.preheader
  %i_5 = phi i5 [ %i_13, %15 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i5]
  %tmp_141 = icmp eq i5 %i_5, -16, !dbg !291      ; [#uses=1 type=i1] [debug line = 52:10]
  %empty_23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %i_13 = add i5 %i_5, 1, !dbg !295               ; [#uses=1 type=i5] [debug line = 52:19]
  br i1 %tmp_141, label %16, label %15, !dbg !291 ; [debug line = 52:10]

; <label>:15                                      ; preds = %.preheader
  %tmp_144 = zext i5 %i_5 to i64, !dbg !296       ; [#uses=2 type=i64] [debug line = 52:26]
  %lastbuf_addr_1 = getelementptr inbounds [16 x i8]* @lastbuf, i64 0, i64 %tmp_144, !dbg !296 ; [#uses=1 type=i8*] [debug line = 52:26]
  %lastbuf_load = load i8* %lastbuf_addr_1, align 1, !dbg !296 ; [#uses=1 type=i8] [debug line = 52:26]
  %xorv_addr_4 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp_144, !dbg !296 ; [#uses=1 type=i8*] [debug line = 52:26]
  store i8 %lastbuf_load, i8* %xorv_addr_4, align 1, !dbg !296 ; [debug line = 52:26]
  call void @llvm.dbg.value(metadata !{i5 %i_13}, i64 0, metadata !260), !dbg !295 ; [debug line = 52:19] [debug variable = i]
  br label %.preheader, !dbg !295                 ; [debug line = 52:19]

; <label>:16                                      ; preds = %.preheader
  %tmp_143 = zext i32 %outbuf_addr_read to i64, !dbg !298 ; [#uses=1 type=i64] [debug line = 54:6]
  %memptr_addr_5 = getelementptr inbounds i8* %memptr, i64 %tmp_143, !dbg !298 ; [#uses=3 type=i8*] [debug line = 54:6]
  %memptr_addr_10_wr_re = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %memptr_addr_5, i32 16) nounwind, !dbg !298 ; [#uses=0 type=i1] [debug line = 54:6]
  br label %burst.wr.header35

burst.wr.header35:                                ; preds = %burst.wr.body36, %16
  %indvar4 = phi i5 [ 0, %16 ], [ %indvar_next4, %burst.wr.body36 ] ; [#uses=3 type=i5]
  %exitcond4 = icmp eq i5 %indvar4, -16           ; [#uses=1 type=i1]
  %indvar_next4 = add i5 %indvar4, 1              ; [#uses=1 type=i5]
  br i1 %exitcond4, label %._crit_edge.loopexit6, label %burst.wr.body36

burst.wr.body36:                                  ; preds = %burst.wr.header35
  %empty_24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %burstwrite_rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region) nounwind ; [#uses=1 type=i32]
  %empty_25 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str7) nounwind ; [#uses=0 type=i32]
  %empty_26 = call i32 (...)* @_ssdm_op_SpecLoopName([15 x i8]* @memcpy_OC_memptr_OC_s) nounwind ; [#uses=0 type=i32]
  %tmp_145 = zext i5 %indvar4 to i64, !dbg !298   ; [#uses=1 type=i64] [debug line = 54:6]
  %buf_addr_10 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_145, !dbg !298 ; [#uses=1 type=i8*] [debug line = 54:6]
  %buf_load_5 = load i8* %buf_addr_10, align 1, !dbg !298 ; [#uses=1 type=i8] [debug line = 54:6]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %memptr_addr_5, i8 %buf_load_5, i1 true) nounwind, !dbg !298 ; [debug line = 54:6]
  %burstwrite_rend48 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region, i32 %burstwrite_rbegin1) nounwind ; [#uses=0 type=i32]
  br label %burst.wr.header35

; <label>:17                                      ; preds = %0
  %tmp_122 = zext i32 %inbuf_addr_read to i64, !dbg !299 ; [#uses=1 type=i64] [debug line = 57:6]
  %memptr_addr_2 = getelementptr inbounds i8* %memptr, i64 %tmp_122, !dbg !299 ; [#uses=2 type=i8*] [debug line = 57:6]
  %memptr_addr_3_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %memptr_addr_2, i32 16) nounwind, !dbg !299 ; [#uses=0 type=i1] [debug line = 57:6]
  br label %burst.rd.header51

burst.rd.header51:                                ; preds = %burst.rd.body52, %17
  %indvar2 = phi i5 [ 0, %17 ], [ %indvar_next2, %burst.rd.body52 ] ; [#uses=3 type=i5]
  %exitcond2 = icmp eq i5 %indvar2, -16           ; [#uses=1 type=i1]
  %indvar_next2 = add i5 %indvar2, 1              ; [#uses=1 type=i5]
  br i1 %exitcond2, label %._crit_edge.loopexit14, label %burst.rd.body52

burst.rd.body52:                                  ; preds = %burst.rd.header51
  %empty_27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %burstread_rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_s) nounwind ; [#uses=1 type=i32]
  %empty_28 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str8) nounwind ; [#uses=0 type=i32]
  %empty_29 = call i32 (...)* @_ssdm_op_SpecLoopName([15 x i8]* @memcpy_OC_OC_memptr) nounwind ; [#uses=0 type=i32]
  %memptr_addr_2_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %memptr_addr_2) nounwind, !dbg !299 ; [#uses=1 type=i8] [debug line = 57:6]
  %tmp_128 = zext i5 %indvar2 to i64, !dbg !299   ; [#uses=1 type=i64] [debug line = 57:6]
  %iv_addr_1 = getelementptr [16 x i8]* @iv, i64 0, i64 %tmp_128, !dbg !299 ; [#uses=1 type=i8*] [debug line = 57:6]
  store i8 %memptr_addr_2_read, i8* %iv_addr_1, align 1, !dbg !299 ; [debug line = 57:6]
  %burstread_rend63 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_s, i32 %burstread_rbegin2) nounwind ; [#uses=0 type=i32]
  br label %burst.rd.header51

; <label>:18                                      ; preds = %0
  %tmp_123 = zext i32 %inbuf_addr_read to i64, !dbg !300 ; [#uses=1 type=i64] [debug line = 60:6]
  %memptr_addr_3 = getelementptr inbounds i8* %memptr, i64 %tmp_123, !dbg !300 ; [#uses=2 type=i8*] [debug line = 60:6]
  %memptr_addr_4_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %memptr_addr_3, i32 32) nounwind, !dbg !300 ; [#uses=0 type=i1] [debug line = 60:6]
  br label %burst.rd.header66

burst.rd.header66:                                ; preds = %burst.rd.body67, %18
  %indvar3 = phi i6 [ 0, %18 ], [ %indvar_next3, %burst.rd.body67 ] ; [#uses=3 type=i6]
  %exitcond3 = icmp eq i6 %indvar3, -32           ; [#uses=1 type=i1]
  %indvar_next3 = add i6 %indvar3, 1              ; [#uses=1 type=i6]
  br i1 %exitcond3, label %._crit_edge.loopexit, label %burst.rd.body67

burst.rd.body67:                                  ; preds = %burst.rd.header66
  %empty_30 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  %burstread_rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_s) nounwind ; [#uses=1 type=i32]
  %empty_31 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str9) nounwind ; [#uses=0 type=i32]
  %empty_32 = call i32 (...)* @_ssdm_op_SpecLoopName([15 x i8]* @memcpy_OC_OC_memptr) nounwind ; [#uses=0 type=i32]
  %memptr_addr_3_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %memptr_addr_3) nounwind, !dbg !300 ; [#uses=1 type=i8] [debug line = 60:6]
  %tmp_129 = zext i6 %indvar3 to i64, !dbg !300   ; [#uses=1 type=i64] [debug line = 60:6]
  %key_addr = getelementptr [32 x i8]* @key, i64 0, i64 %tmp_129, !dbg !300 ; [#uses=1 type=i8*] [debug line = 60:6]
  store i8 %memptr_addr_3_read, i8* %key_addr, align 1, !dbg !300 ; [debug line = 60:6]
  %burstread_rend78 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_s, i32 %burstread_rbegin3) nounwind ; [#uses=0 type=i32]
  br label %burst.rd.header66

._crit_edge.loopexit6:                            ; preds = %burst.wr.header35
  %memptr_addr_10_wr_re_1 = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %memptr_addr_5) nounwind, !dbg !298 ; [#uses=0 type=i1] [debug line = 54:6]
  br label %._crit_edge

._crit_edge.loopexit7:                            ; preds = %burst.wr.header
  %memptr_addr_9_wr_res = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %memptr_addr_4) nounwind, !dbg !280 ; [#uses=0 type=i1] [debug line = 39:6]
  br label %._crit_edge

._crit_edge.loopexit:                             ; preds = %burst.rd.header66
  br label %._crit_edge

._crit_edge.loopexit14:                           ; preds = %burst.rd.header51
  br label %._crit_edge

._crit_edge.loopexit15:                           ; preds = %.preheader.i
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit15, %._crit_edge.loopexit14, %._crit_edge.loopexit, %._crit_edge.loopexit7, %._crit_edge.loopexit6, %0
  ret void, !dbg !301                             ; [debug line = 63:1]
}

; [#uses=1]
define internal fastcc void @aes256_encrypt_ecb([16 x i8]* nocapture %buf) {
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !302), !dbg !304 ; [debug line = 358:61] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !305), !dbg !311 ; [debug line = 218:48@362:5] [debug variable = buf]
  br label %1, !dbg !312                          ; [debug line = 222:5@362:5]

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i5 [ -16, %0 ], [ %i_14, %2 ]        ; [#uses=3 type=i5]
  %i_14 = add i5 %i_i, -1, !dbg !312              ; [#uses=2 type=i5] [debug line = 222:5@362:5]
  %i_15_cast = sext i5 %i_14 to i8, !dbg !312     ; [#uses=1 type=i8] [debug line = 222:5@362:5]
  call void @llvm.dbg.value(metadata !{i5 %i_14}, i64 0, metadata !314), !dbg !312 ; [debug line = 222:5@362:5] [debug variable = i]
  %tmp_i = icmp eq i5 %i_i, 0, !dbg !312          ; [#uses=1 type=i1] [debug line = 222:5@362:5]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp_i, label %aes_addRoundKey_cpy.exit.preheader, label %2, !dbg !312 ; [debug line = 222:5@362:5]

aes_addRoundKey_cpy.exit.preheader:               ; preds = %1
  %rcon = alloca i8                               ; [#uses=4 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %rcon}, metadata !315) ; [debug variable = rcon]
  %buf_addr = getelementptr [16 x i8]* %buf, i64 0, i64 1, !dbg !316 ; [#uses=4 type=i8*] [debug line = 231:5@366:9]
  %buf_addr_11 = getelementptr [16 x i8]* %buf, i64 0, i64 5, !dbg !316 ; [#uses=4 type=i8*] [debug line = 231:5@366:9]
  %buf_addr_12 = getelementptr [16 x i8]* %buf, i64 0, i64 9, !dbg !316 ; [#uses=4 type=i8*] [debug line = 231:5@366:9]
  %buf_addr_13 = getelementptr [16 x i8]* %buf, i64 0, i64 13, !dbg !316 ; [#uses=4 type=i8*] [debug line = 231:5@366:9]
  %buf_addr_14 = getelementptr [16 x i8]* %buf, i64 0, i64 10, !dbg !322 ; [#uses=4 type=i8*] [debug line = 232:5@366:9]
  %buf_addr_15 = getelementptr [16 x i8]* %buf, i64 0, i64 2, !dbg !322 ; [#uses=4 type=i8*] [debug line = 232:5@366:9]
  %buf_addr_16 = getelementptr [16 x i8]* %buf, i64 0, i64 3, !dbg !323 ; [#uses=4 type=i8*] [debug line = 233:5@366:9]
  %buf_addr_17 = getelementptr [16 x i8]* %buf, i64 0, i64 15, !dbg !323 ; [#uses=4 type=i8*] [debug line = 233:5@366:9]
  %buf_addr_18 = getelementptr [16 x i8]* %buf, i64 0, i64 11, !dbg !323 ; [#uses=4 type=i8*] [debug line = 233:5@366:9]
  %buf_addr_19 = getelementptr [16 x i8]* %buf, i64 0, i64 7, !dbg !323 ; [#uses=4 type=i8*] [debug line = 233:5@366:9]
  %buf_addr_20 = getelementptr [16 x i8]* %buf, i64 0, i64 14, !dbg !324 ; [#uses=4 type=i8*] [debug line = 234:5@366:9]
  %buf_addr_21 = getelementptr [16 x i8]* %buf, i64 0, i64 6, !dbg !324 ; [#uses=4 type=i8*] [debug line = 234:5@366:9]
  store i8 1, i8* %rcon
  br label %aes_addRoundKey_cpy.exit, !dbg !325   ; [debug line = 363:9]

; <label>:2                                       ; preds = %1
  %tmp_i_33 = zext i8 %i_15_cast to i64, !dbg !326 ; [#uses=3 type=i64] [debug line = 222:17@362:5]
  %ctx_enckey_addr = getelementptr [32 x i8]* @ctx_enckey, i64 0, i64 %tmp_i_33, !dbg !326 ; [#uses=1 type=i8*] [debug line = 222:17@362:5]
  %ctx_enckey_load = load i8* %ctx_enckey_addr, align 1, !dbg !326 ; [#uses=2 type=i8] [debug line = 222:17@362:5]
  %ctx_key_addr = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_i_33, !dbg !326 ; [#uses=1 type=i8*] [debug line = 222:17@362:5]
  store i8 %ctx_enckey_load, i8* %ctx_key_addr, align 1, !dbg !326 ; [debug line = 222:17@362:5]
  %buf_addr_22 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_i_33, !dbg !326 ; [#uses=2 type=i8*] [debug line = 222:17@362:5]
  %buf_load = load i8* %buf_addr_22, align 1, !dbg !326 ; [#uses=1 type=i8] [debug line = 222:17@362:5]
  %tmp_176_i = xor i8 %buf_load, %ctx_enckey_load, !dbg !326 ; [#uses=1 type=i8] [debug line = 222:17@362:5]
  store i8 %tmp_176_i, i8* %buf_addr_22, align 1, !dbg !326 ; [debug line = 222:17@362:5]
  %tmp_178_i = add i5 %i_i, 15, !dbg !326         ; [#uses=1 type=i5] [debug line = 222:17@362:5]
  %tmp_179_i = zext i5 %tmp_178_i to i64, !dbg !326 ; [#uses=2 type=i64] [debug line = 222:17@362:5]
  %ctx_enckey_addr_1 = getelementptr [32 x i8]* @ctx_enckey, i64 0, i64 %tmp_179_i, !dbg !326 ; [#uses=1 type=i8*] [debug line = 222:17@362:5]
  %ctx_enckey_load_1 = load i8* %ctx_enckey_addr_1, align 1, !dbg !326 ; [#uses=1 type=i8] [debug line = 222:17@362:5]
  %ctx_key_addr_16 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_179_i, !dbg !326 ; [#uses=1 type=i8*] [debug line = 222:17@362:5]
  store i8 %ctx_enckey_load_1, i8* %ctx_key_addr_16, align 1, !dbg !326 ; [debug line = 222:17@362:5]
  br label %1, !dbg !326                          ; [debug line = 222:17@362:5]

aes_addRoundKey_cpy.exit:                         ; preds = %8, %aes_addRoundKey_cpy.exit.preheader
  %i = phi i4 [ %i_22, %8 ], [ 1, %aes_addRoundKey_cpy.exit.preheader ] ; [#uses=3 type=i4]
  %exitcond = icmp eq i4 %i, -2, !dbg !325        ; [#uses=1 type=i1] [debug line = 363:9]
  %empty_34 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 13, i64 13, i64 13) ; [#uses=0 type=i32]
  br i1 %exitcond, label %.preheader.preheader, label %.preheader49.preheader, !dbg !325 ; [debug line = 363:9]

.preheader49.preheader:                           ; preds = %aes_addRoundKey_cpy.exit
  br label %.preheader49, !dbg !327               ; [debug line = 198:5@365:9]

.preheader.preheader:                             ; preds = %aes_addRoundKey_cpy.exit
  br label %.preheader, !dbg !331                 ; [debug line = 198:5@371:5]

.preheader49:                                     ; preds = %3, %.preheader49.preheader
  %i_i4 = phi i5 [ %i_16, %3 ], [ -16, %.preheader49.preheader ] ; [#uses=2 type=i5]
  %i_16 = add i5 %i_i4, -1, !dbg !327             ; [#uses=2 type=i5] [debug line = 198:5@365:9]
  %i_17_cast = sext i5 %i_16 to i8, !dbg !327     ; [#uses=1 type=i8] [debug line = 198:5@365:9]
  call void @llvm.dbg.value(metadata !{i5 %i_16}, i64 0, metadata !333), !dbg !327 ; [debug line = 198:5@365:9] [debug variable = i]
  %tmp_i5 = icmp eq i5 %i_i4, 0, !dbg !327        ; [#uses=1 type=i1] [debug line = 198:5@365:9]
  %empty_35 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp_i5, label %aes_subBytes.exit, label %3, !dbg !327 ; [debug line = 198:5@365:9]

; <label>:3                                       ; preds = %.preheader49
  %tmp_5_i = zext i8 %i_17_cast to i64, !dbg !334 ; [#uses=1 type=i64] [debug line = 198:17@365:9]
  %buf_addr_24 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_5_i, !dbg !334 ; [#uses=2 type=i8*] [debug line = 198:17@365:9]
  %buf_load_31 = load i8* %buf_addr_24, align 1, !dbg !334 ; [#uses=1 type=i8] [debug line = 198:17@365:9]
  %tmp_6_i = zext i8 %buf_load_31 to i64, !dbg !334 ; [#uses=1 type=i64] [debug line = 198:17@365:9]
  %sbox_addr_15 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_6_i, !dbg !334 ; [#uses=1 type=i8*] [debug line = 198:17@365:9]
  %sbox_load_15 = load i8* %sbox_addr_15, align 1, !dbg !334 ; [#uses=1 type=i8] [debug line = 198:17@365:9]
  store i8 %sbox_load_15, i8* %buf_addr_24, align 1, !dbg !334 ; [debug line = 198:17@365:9]
  br label %.preheader49, !dbg !334               ; [debug line = 198:17@365:9]

aes_subBytes.exit:                                ; preds = %.preheader49
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !335), !dbg !336 ; [debug line = 227:42@366:9] [debug variable = buf]
  %i_19 = load i8* %buf_addr, align 1, !dbg !316  ; [#uses=1 type=i8] [debug line = 231:5@366:9]
  call void @llvm.dbg.value(metadata !{i8 %i_19}, i64 0, metadata !337), !dbg !316 ; [debug line = 231:5@366:9] [debug variable = i]
  %buf_load_20 = load i8* %buf_addr_11, align 1, !dbg !316 ; [#uses=1 type=i8] [debug line = 231:5@366:9]
  store i8 %buf_load_20, i8* %buf_addr, align 1, !dbg !316 ; [debug line = 231:5@366:9]
  %buf_load_21 = load i8* %buf_addr_12, align 1, !dbg !316 ; [#uses=1 type=i8] [debug line = 231:5@366:9]
  store i8 %buf_load_21, i8* %buf_addr_11, align 1, !dbg !316 ; [debug line = 231:5@366:9]
  %buf_load_22 = load i8* %buf_addr_13, align 1, !dbg !316 ; [#uses=1 type=i8] [debug line = 231:5@366:9]
  store i8 %buf_load_22, i8* %buf_addr_12, align 1, !dbg !316 ; [debug line = 231:5@366:9]
  store i8 %i_19, i8* %buf_addr_13, align 1, !dbg !316 ; [debug line = 231:5@366:9]
  %i_20 = load i8* %buf_addr_14, align 1, !dbg !322 ; [#uses=1 type=i8] [debug line = 232:5@366:9]
  call void @llvm.dbg.value(metadata !{i8 %i_20}, i64 0, metadata !337), !dbg !322 ; [debug line = 232:5@366:9] [debug variable = i]
  %buf_load_24 = load i8* %buf_addr_15, align 1, !dbg !322 ; [#uses=1 type=i8] [debug line = 232:5@366:9]
  store i8 %buf_load_24, i8* %buf_addr_14, align 1, !dbg !322 ; [debug line = 232:5@366:9]
  store i8 %i_20, i8* %buf_addr_15, align 1, !dbg !322 ; [debug line = 232:5@366:9]
  %j_2 = load i8* %buf_addr_16, align 1, !dbg !323 ; [#uses=1 type=i8] [debug line = 233:5@366:9]
  call void @llvm.dbg.value(metadata !{i8 %j_2}, i64 0, metadata !338), !dbg !323 ; [debug line = 233:5@366:9] [debug variable = j]
  %buf_load_26 = load i8* %buf_addr_17, align 1, !dbg !323 ; [#uses=1 type=i8] [debug line = 233:5@366:9]
  store i8 %buf_load_26, i8* %buf_addr_16, align 1, !dbg !323 ; [debug line = 233:5@366:9]
  %buf_load_27 = load i8* %buf_addr_18, align 1, !dbg !323 ; [#uses=1 type=i8] [debug line = 233:5@366:9]
  store i8 %buf_load_27, i8* %buf_addr_17, align 1, !dbg !323 ; [debug line = 233:5@366:9]
  %buf_load_28 = load i8* %buf_addr_19, align 1, !dbg !323 ; [#uses=1 type=i8] [debug line = 233:5@366:9]
  store i8 %buf_load_28, i8* %buf_addr_18, align 1, !dbg !323 ; [debug line = 233:5@366:9]
  store i8 %j_2, i8* %buf_addr_19, align 1, !dbg !323 ; [debug line = 233:5@366:9]
  %j_3 = load i8* %buf_addr_20, align 1, !dbg !324 ; [#uses=1 type=i8] [debug line = 234:5@366:9]
  call void @llvm.dbg.value(metadata !{i8 %j_3}, i64 0, metadata !338), !dbg !324 ; [debug line = 234:5@366:9] [debug variable = j]
  %buf_load_30 = load i8* %buf_addr_21, align 1, !dbg !324 ; [#uses=1 type=i8] [debug line = 234:5@366:9]
  store i8 %buf_load_30, i8* %buf_addr_20, align 1, !dbg !324 ; [debug line = 234:5@366:9]
  store i8 %j_3, i8* %buf_addr_21, align 1, !dbg !324 ; [debug line = 234:5@366:9]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !339), !dbg !342 ; [debug line = 251:43@367:9] [debug variable = buf]
  br label %4, !dbg !343                          ; [debug line = 255:10@367:9]

; <label>:4                                       ; preds = %5, %aes_subBytes.exit
  %i_i2 = phi i5 [ 0, %aes_subBytes.exit ], [ %i_21, %5 ] ; [#uses=4 type=i5]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i_i2, i32 4), !dbg !343 ; [#uses=1 type=i1] [debug line = 255:10@367:9]
  %empty_36 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %tmp, label %aes_mixColumns.exit, label %5, !dbg !343 ; [debug line = 255:10@367:9]

; <label>:5                                       ; preds = %4
  %tmp_i1 = zext i5 %i_i2 to i64, !dbg !346       ; [#uses=1 type=i64] [debug line = 257:9@367:9]
  %buf_addr_25 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_i1, !dbg !346 ; [#uses=2 type=i8*] [debug line = 257:9@367:9]
  %a = load i8* %buf_addr_25, align 1, !dbg !346  ; [#uses=3 type=i8] [debug line = 257:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %a}, i64 0, metadata !348), !dbg !346 ; [debug line = 257:9@367:9] [debug variable = a]
  %tmp_94 = trunc i5 %i_i2 to i4, !dbg !349       ; [#uses=3 type=i4] [debug line = 258:9@367:9]
  %tmp_34_i = or i4 %tmp_94, 1, !dbg !349         ; [#uses=1 type=i4] [debug line = 258:9@367:9]
  %tmp_35_i = zext i4 %tmp_34_i to i64, !dbg !349 ; [#uses=1 type=i64] [debug line = 258:9@367:9]
  %buf_addr_26 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_35_i, !dbg !349 ; [#uses=2 type=i8*] [debug line = 258:9@367:9]
  %b = load i8* %buf_addr_26, align 1, !dbg !349  ; [#uses=3 type=i8] [debug line = 258:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !350), !dbg !349 ; [debug line = 258:9@367:9] [debug variable = b]
  %tmp_36_i = or i4 %tmp_94, 2, !dbg !351         ; [#uses=1 type=i4] [debug line = 259:9@367:9]
  %tmp_37_i = zext i4 %tmp_36_i to i64, !dbg !351 ; [#uses=1 type=i64] [debug line = 259:9@367:9]
  %buf_addr_27 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_37_i, !dbg !351 ; [#uses=2 type=i8*] [debug line = 259:9@367:9]
  %c = load i8* %buf_addr_27, align 1, !dbg !351  ; [#uses=4 type=i8] [debug line = 259:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %c}, i64 0, metadata !352), !dbg !351 ; [debug line = 259:9@367:9] [debug variable = c]
  %tmp_38_i = or i4 %tmp_94, 3, !dbg !353         ; [#uses=1 type=i4] [debug line = 260:9@367:9]
  %tmp_39_i = zext i4 %tmp_38_i to i64, !dbg !353 ; [#uses=1 type=i64] [debug line = 260:9@367:9]
  %buf_addr_28 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_39_i, !dbg !353 ; [#uses=2 type=i8*] [debug line = 260:9@367:9]
  %d = load i8* %buf_addr_28, align 1, !dbg !353  ; [#uses=3 type=i8] [debug line = 260:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %d}, i64 0, metadata !354), !dbg !353 ; [debug line = 260:9@367:9] [debug variable = d]
  %x_assign = xor i8 %b, %a, !dbg !355            ; [#uses=3 type=i8] [debug line = 261:9@367:9]
  %tmp_41_i = xor i8 %c, %x_assign, !dbg !355     ; [#uses=2 type=i8] [debug line = 261:9@367:9]
  %e = xor i8 %d, %tmp_41_i, !dbg !355            ; [#uses=3 type=i8] [debug line = 261:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !356), !dbg !355 ; [debug line = 261:9@367:9] [debug variable = e]
  call void @llvm.dbg.value(metadata !{i8 %x_assign}, i64 0, metadata !357), !dbg !359 ; [debug line = 187:45@262:23@367:9] [debug variable = x]
  %y = shl i8 %x_assign, 1, !dbg !360             ; [#uses=2 type=i8] [debug line = 189:46@262:23@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !361), !dbg !360 ; [debug line = 189:46@262:23@367:9] [debug variable = y]
  %tmp_96 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign, i32 7), !dbg !362 ; [#uses=1 type=i1] [debug line = 190:5@262:23@367:9]
  %tmp_1_i_i = xor i8 %y, 27, !dbg !362           ; [#uses=1 type=i8] [debug line = 190:5@262:23@367:9]
  %y_21 = select i1 %tmp_96, i8 %tmp_1_i_i, i8 %y, !dbg !362 ; [#uses=1 type=i8] [debug line = 190:5@262:23@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y_21}, i64 0, metadata !361), !dbg !362 ; [debug line = 190:5@262:23@367:9] [debug variable = y]
  %tmp1 = xor i8 %y_21, %e, !dbg !358             ; [#uses=1 type=i8] [debug line = 262:23@367:9]
  %tmp_44_i = xor i8 %tmp1, %a, !dbg !358         ; [#uses=1 type=i8] [debug line = 262:23@367:9]
  store i8 %tmp_44_i, i8* %buf_addr_25, align 1, !dbg !358 ; [debug line = 262:23@367:9]
  %x_assign_9 = xor i8 %c, %b, !dbg !363          ; [#uses=2 type=i8] [debug line = 263:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_9}, i64 0, metadata !364), !dbg !365 ; [debug line = 187:45@263:27@367:9] [debug variable = x]
  %y_22 = shl i8 %x_assign_9, 1, !dbg !366        ; [#uses=2 type=i8] [debug line = 189:46@263:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y_22}, i64 0, metadata !367), !dbg !366 ; [debug line = 189:46@263:27@367:9] [debug variable = y]
  %tmp_98 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_9, i32 7), !dbg !368 ; [#uses=1 type=i1] [debug line = 190:5@263:27@367:9]
  %tmp_1_i10_i = xor i8 %y_22, 27, !dbg !368      ; [#uses=1 type=i8] [debug line = 190:5@263:27@367:9]
  %y_23 = select i1 %tmp_98, i8 %tmp_1_i10_i, i8 %y_22, !dbg !368 ; [#uses=1 type=i8] [debug line = 190:5@263:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y_23}, i64 0, metadata !367), !dbg !368 ; [debug line = 190:5@263:27@367:9] [debug variable = y]
  %tmp2 = xor i8 %y_23, %e, !dbg !363             ; [#uses=1 type=i8] [debug line = 263:27@367:9]
  %tmp_48_i = xor i8 %tmp2, %b, !dbg !363         ; [#uses=1 type=i8] [debug line = 263:27@367:9]
  store i8 %tmp_48_i, i8* %buf_addr_26, align 1, !dbg !363 ; [debug line = 263:27@367:9]
  %x_assign_s = xor i8 %d, %c, !dbg !369          ; [#uses=2 type=i8] [debug line = 264:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_s}, i64 0, metadata !370), !dbg !371 ; [debug line = 187:45@264:27@367:9] [debug variable = x]
  %y_24 = shl i8 %x_assign_s, 1, !dbg !372        ; [#uses=2 type=i8] [debug line = 189:46@264:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y_24}, i64 0, metadata !373), !dbg !372 ; [debug line = 189:46@264:27@367:9] [debug variable = y]
  %tmp_100 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_s, i32 7), !dbg !374 ; [#uses=1 type=i1] [debug line = 190:5@264:27@367:9]
  %tmp_1_i14_i = xor i8 %y_24, 27, !dbg !374      ; [#uses=1 type=i8] [debug line = 190:5@264:27@367:9]
  %y_25 = select i1 %tmp_100, i8 %tmp_1_i14_i, i8 %y_24, !dbg !374 ; [#uses=1 type=i8] [debug line = 190:5@264:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y_25}, i64 0, metadata !373), !dbg !374 ; [debug line = 190:5@264:27@367:9] [debug variable = y]
  %tmp3 = xor i8 %y_25, %e, !dbg !369             ; [#uses=1 type=i8] [debug line = 264:27@367:9]
  %tmp_52_i = xor i8 %tmp3, %c, !dbg !369         ; [#uses=1 type=i8] [debug line = 264:27@367:9]
  store i8 %tmp_52_i, i8* %buf_addr_27, align 1, !dbg !369 ; [debug line = 264:27@367:9]
  %x_assign_1 = xor i8 %d, %a, !dbg !375          ; [#uses=2 type=i8] [debug line = 265:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_1}, i64 0, metadata !376), !dbg !377 ; [debug line = 187:45@265:27@367:9] [debug variable = x]
  %y_26 = shl i8 %x_assign_1, 1, !dbg !378        ; [#uses=2 type=i8] [debug line = 189:46@265:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y_26}, i64 0, metadata !379), !dbg !378 ; [debug line = 189:46@265:27@367:9] [debug variable = y]
  %tmp_102 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1, i32 7), !dbg !380 ; [#uses=1 type=i1] [debug line = 190:5@265:27@367:9]
  %tmp_1_i18_i = xor i8 %y_26, 27, !dbg !380      ; [#uses=1 type=i8] [debug line = 190:5@265:27@367:9]
  %y_27 = select i1 %tmp_102, i8 %tmp_1_i18_i, i8 %y_26, !dbg !380 ; [#uses=1 type=i8] [debug line = 190:5@265:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y_27}, i64 0, metadata !379), !dbg !380 ; [debug line = 190:5@265:27@367:9] [debug variable = y]
  %tmp_56_i = xor i8 %y_27, %tmp_41_i, !dbg !375  ; [#uses=1 type=i8] [debug line = 265:27@367:9]
  store i8 %tmp_56_i, i8* %buf_addr_28, align 1, !dbg !375 ; [debug line = 265:27@367:9]
  %i_21 = add i5 4, %i_i2, !dbg !381              ; [#uses=1 type=i5] [debug line = 255:25@367:9]
  call void @llvm.dbg.value(metadata !{i5 %i_21}, i64 0, metadata !382), !dbg !381 ; [debug line = 255:25@367:9] [debug variable = i]
  br label %4, !dbg !381                          ; [debug line = 255:25@367:9]

aes_mixColumns.exit:                              ; preds = %4
  %tmp_93 = trunc i4 %i to i1, !dbg !325          ; [#uses=1 type=i1] [debug line = 363:9]
  br i1 %tmp_93, label %6, label %7, !dbg !383    ; [debug line = 368:9]

; <label>:6                                       ; preds = %aes_mixColumns.exit
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx_key, i6 16), !dbg !384 ; [debug line = 368:21]
  br label %8, !dbg !384                          ; [debug line = 368:21]

; <label>:7                                       ; preds = %aes_mixColumns.exit
  %rcon_load_1 = load i8* %rcon, !dbg !385        ; [#uses=1 type=i8] [debug line = 369:14]
  %rcon_1 = call fastcc i8 @aes_expandEncKey([32 x i8]* @ctx_key, i8 %rcon_load_1), !dbg !385 ; [#uses=1 type=i8] [debug line = 369:14]
  call void @llvm.dbg.value(metadata !{i8 %rcon_1}, i64 0, metadata !315), !dbg !385 ; [debug line = 369:14] [debug variable = rcon]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx_key, i6 0), !dbg !386 ; [debug line = 369:49]
  store i8 %rcon_1, i8* %rcon, !dbg !385          ; [debug line = 369:14]
  br label %8

; <label>:8                                       ; preds = %7, %6
  %i_22 = add i4 %i, 1, !dbg !387                 ; [#uses=1 type=i4] [debug line = 363:34]
  call void @llvm.dbg.value(metadata !{i4 %i_22}, i64 0, metadata !388), !dbg !387 ; [debug line = 363:34] [debug variable = i]
  br label %aes_addRoundKey_cpy.exit, !dbg !387   ; [debug line = 363:34]

.preheader:                                       ; preds = %9, %.preheader.preheader
  %i_i1 = phi i5 [ %i_15, %9 ], [ -16, %.preheader.preheader ] ; [#uses=2 type=i5]
  %i_15 = add i5 %i_i1, -1, !dbg !331             ; [#uses=2 type=i5] [debug line = 198:5@371:5]
  %i_16_cast = sext i5 %i_15 to i8, !dbg !331     ; [#uses=1 type=i8] [debug line = 198:5@371:5]
  call void @llvm.dbg.value(metadata !{i5 %i_15}, i64 0, metadata !389), !dbg !331 ; [debug line = 198:5@371:5] [debug variable = i]
  %tmp_i8 = icmp eq i5 %i_i1, 0, !dbg !331        ; [#uses=1 type=i1] [debug line = 198:5@371:5]
  %empty_37 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp_i8, label %aes_subBytes.exit24, label %9, !dbg !331 ; [debug line = 198:5@371:5]

; <label>:9                                       ; preds = %.preheader
  %tmp_5_i1 = zext i8 %i_16_cast to i64, !dbg !390 ; [#uses=1 type=i64] [debug line = 198:17@371:5]
  %buf_addr_23 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_5_i1, !dbg !390 ; [#uses=2 type=i8*] [debug line = 198:17@371:5]
  %buf_load_18 = load i8* %buf_addr_23, align 1, !dbg !390 ; [#uses=1 type=i8] [debug line = 198:17@371:5]
  %tmp_6_i1 = zext i8 %buf_load_18 to i64, !dbg !390 ; [#uses=1 type=i64] [debug line = 198:17@371:5]
  %sbox_addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp_6_i1, !dbg !390 ; [#uses=1 type=i8*] [debug line = 198:17@371:5]
  %sbox_load = load i8* %sbox_addr, align 1, !dbg !390 ; [#uses=1 type=i8] [debug line = 198:17@371:5]
  store i8 %sbox_load, i8* %buf_addr_23, align 1, !dbg !390 ; [debug line = 198:17@371:5]
  br label %.preheader, !dbg !390                 ; [debug line = 198:17@371:5]

aes_subBytes.exit24:                              ; preds = %.preheader
  %rcon_load = load i8* %rcon, !dbg !391          ; [#uses=1 type=i8] [debug line = 373:5]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !392), !dbg !394 ; [debug line = 227:42@372:5] [debug variable = buf]
  %i_17 = load i8* %buf_addr, align 1, !dbg !395  ; [#uses=1 type=i8] [debug line = 231:5@372:5]
  call void @llvm.dbg.value(metadata !{i8 %i_17}, i64 0, metadata !396), !dbg !395 ; [debug line = 231:5@372:5] [debug variable = i]
  %buf_load_7 = load i8* %buf_addr_11, align 1, !dbg !395 ; [#uses=1 type=i8] [debug line = 231:5@372:5]
  store i8 %buf_load_7, i8* %buf_addr, align 1, !dbg !395 ; [debug line = 231:5@372:5]
  %buf_load_8 = load i8* %buf_addr_12, align 1, !dbg !395 ; [#uses=1 type=i8] [debug line = 231:5@372:5]
  store i8 %buf_load_8, i8* %buf_addr_11, align 1, !dbg !395 ; [debug line = 231:5@372:5]
  %buf_load_9 = load i8* %buf_addr_13, align 1, !dbg !395 ; [#uses=1 type=i8] [debug line = 231:5@372:5]
  store i8 %buf_load_9, i8* %buf_addr_12, align 1, !dbg !395 ; [debug line = 231:5@372:5]
  store i8 %i_17, i8* %buf_addr_13, align 1, !dbg !395 ; [debug line = 231:5@372:5]
  %i_18 = load i8* %buf_addr_14, align 1, !dbg !397 ; [#uses=1 type=i8] [debug line = 232:5@372:5]
  call void @llvm.dbg.value(metadata !{i8 %i_18}, i64 0, metadata !396), !dbg !397 ; [debug line = 232:5@372:5] [debug variable = i]
  %buf_load_11 = load i8* %buf_addr_15, align 1, !dbg !397 ; [#uses=1 type=i8] [debug line = 232:5@372:5]
  store i8 %buf_load_11, i8* %buf_addr_14, align 1, !dbg !397 ; [debug line = 232:5@372:5]
  store i8 %i_18, i8* %buf_addr_15, align 1, !dbg !397 ; [debug line = 232:5@372:5]
  %j = load i8* %buf_addr_16, align 1, !dbg !398  ; [#uses=1 type=i8] [debug line = 233:5@372:5]
  call void @llvm.dbg.value(metadata !{i8 %j}, i64 0, metadata !399), !dbg !398 ; [debug line = 233:5@372:5] [debug variable = j]
  %buf_load_13 = load i8* %buf_addr_17, align 1, !dbg !398 ; [#uses=1 type=i8] [debug line = 233:5@372:5]
  store i8 %buf_load_13, i8* %buf_addr_16, align 1, !dbg !398 ; [debug line = 233:5@372:5]
  %buf_load_14 = load i8* %buf_addr_18, align 1, !dbg !398 ; [#uses=1 type=i8] [debug line = 233:5@372:5]
  store i8 %buf_load_14, i8* %buf_addr_17, align 1, !dbg !398 ; [debug line = 233:5@372:5]
  %buf_load_15 = load i8* %buf_addr_19, align 1, !dbg !398 ; [#uses=1 type=i8] [debug line = 233:5@372:5]
  store i8 %buf_load_15, i8* %buf_addr_18, align 1, !dbg !398 ; [debug line = 233:5@372:5]
  store i8 %j, i8* %buf_addr_19, align 1, !dbg !398 ; [debug line = 233:5@372:5]
  %j_1 = load i8* %buf_addr_20, align 1, !dbg !400 ; [#uses=1 type=i8] [debug line = 234:5@372:5]
  call void @llvm.dbg.value(metadata !{i8 %j_1}, i64 0, metadata !399), !dbg !400 ; [debug line = 234:5@372:5] [debug variable = j]
  %buf_load_17 = load i8* %buf_addr_21, align 1, !dbg !400 ; [#uses=1 type=i8] [debug line = 234:5@372:5]
  store i8 %buf_load_17, i8* %buf_addr_20, align 1, !dbg !400 ; [debug line = 234:5@372:5]
  store i8 %j_1, i8* %buf_addr_21, align 1, !dbg !400 ; [debug line = 234:5@372:5]
  %call_ret1 = call fastcc i8 @aes_expandEncKey([32 x i8]* @ctx_key, i8 %rcon_load), !dbg !391 ; [#uses=0 type=i8] [debug line = 373:5]
  call void @llvm.dbg.value(metadata !{i8 %call_ret1}, i64 0, metadata !315), !dbg !391 ; [debug line = 373:5] [debug variable = rcon]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx_key, i6 0), !dbg !401 ; [debug line = 374:5]
  ret void, !dbg !402                             ; [debug line = 375:1]
}

; [#uses=1]
define internal fastcc void @aes256_decrypt_ecb([16 x i8]* nocapture %buf) {
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !403), !dbg !405 ; [debug line = 378:61] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !406), !dbg !409 ; [debug line = 218:48@382:5] [debug variable = buf]
  br label %1, !dbg !410                          ; [debug line = 222:5@382:5]

; <label>:1                                       ; preds = %2, %0
  %i_i = phi i5 [ -16, %0 ], [ %i_23, %2 ]        ; [#uses=3 type=i5]
  %i_23 = add i5 %i_i, -1, !dbg !410              ; [#uses=2 type=i5] [debug line = 222:5@382:5]
  %i_25_cast = sext i5 %i_23 to i8, !dbg !410     ; [#uses=1 type=i8] [debug line = 222:5@382:5]
  call void @llvm.dbg.value(metadata !{i5 %i_23}, i64 0, metadata !411), !dbg !410 ; [debug line = 222:5@382:5] [debug variable = i]
  %tmp_i = icmp eq i5 %i_i, 0, !dbg !410          ; [#uses=1 type=i1] [debug line = 222:5@382:5]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp_i, label %aes_addRoundKey_cpy.exit, label %2, !dbg !410 ; [debug line = 222:5@382:5]

; <label>:2                                       ; preds = %1
  %tmp_i_38 = zext i8 %i_25_cast to i64, !dbg !412 ; [#uses=3 type=i64] [debug line = 222:17@382:5]
  %ctx_deckey_addr = getelementptr [32 x i8]* @ctx_deckey, i64 0, i64 %tmp_i_38, !dbg !412 ; [#uses=1 type=i8*] [debug line = 222:17@382:5]
  %ctx_deckey_load = load i8* %ctx_deckey_addr, align 1, !dbg !412 ; [#uses=2 type=i8] [debug line = 222:17@382:5]
  %ctx_key_addr = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_i_38, !dbg !412 ; [#uses=1 type=i8*] [debug line = 222:17@382:5]
  store i8 %ctx_deckey_load, i8* %ctx_key_addr, align 1, !dbg !412 ; [debug line = 222:17@382:5]
  %buf_addr_40 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_i_38, !dbg !412 ; [#uses=2 type=i8*] [debug line = 222:17@382:5]
  %buf_load_46 = load i8* %buf_addr_40, align 1, !dbg !412 ; [#uses=1 type=i8] [debug line = 222:17@382:5]
  %tmp_176_i = xor i8 %buf_load_46, %ctx_deckey_load, !dbg !412 ; [#uses=1 type=i8] [debug line = 222:17@382:5]
  store i8 %tmp_176_i, i8* %buf_addr_40, align 1, !dbg !412 ; [debug line = 222:17@382:5]
  %tmp_178_i = add i5 %i_i, 15, !dbg !412         ; [#uses=1 type=i5] [debug line = 222:17@382:5]
  %tmp_179_i = zext i5 %tmp_178_i to i64, !dbg !412 ; [#uses=2 type=i64] [debug line = 222:17@382:5]
  %ctx_deckey_addr_1 = getelementptr [32 x i8]* @ctx_deckey, i64 0, i64 %tmp_179_i, !dbg !412 ; [#uses=1 type=i8*] [debug line = 222:17@382:5]
  %ctx_deckey_load_1 = load i8* %ctx_deckey_addr_1, align 1, !dbg !412 ; [#uses=1 type=i8] [debug line = 222:17@382:5]
  %ctx_key_addr_17 = getelementptr [32 x i8]* @ctx_key, i64 0, i64 %tmp_179_i, !dbg !412 ; [#uses=1 type=i8*] [debug line = 222:17@382:5]
  store i8 %ctx_deckey_load_1, i8* %ctx_key_addr_17, align 1, !dbg !412 ; [debug line = 222:17@382:5]
  br label %1, !dbg !412                          ; [debug line = 222:17@382:5]

aes_addRoundKey_cpy.exit:                         ; preds = %1
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !413), !dbg !416 ; [debug line = 239:46@383:5] [debug variable = buf]
  %buf_addr = getelementptr [16 x i8]* %buf, i64 0, i64 1, !dbg !417 ; [#uses=4 type=i8*] [debug line = 243:5@383:5]
  %i_24 = load i8* %buf_addr, align 1, !dbg !417  ; [#uses=1 type=i8] [debug line = 243:5@383:5]
  call void @llvm.dbg.value(metadata !{i8 %i_24}, i64 0, metadata !419), !dbg !417 ; [debug line = 243:5@383:5] [debug variable = i]
  %buf_addr_29 = getelementptr [16 x i8]* %buf, i64 0, i64 13, !dbg !417 ; [#uses=4 type=i8*] [debug line = 243:5@383:5]
  %buf_load = load i8* %buf_addr_29, align 1, !dbg !417 ; [#uses=1 type=i8] [debug line = 243:5@383:5]
  store i8 %buf_load, i8* %buf_addr, align 1, !dbg !417 ; [debug line = 243:5@383:5]
  %buf_addr_30 = getelementptr [16 x i8]* %buf, i64 0, i64 9, !dbg !417 ; [#uses=4 type=i8*] [debug line = 243:5@383:5]
  %buf_load_36 = load i8* %buf_addr_30, align 1, !dbg !417 ; [#uses=1 type=i8] [debug line = 243:5@383:5]
  store i8 %buf_load_36, i8* %buf_addr_29, align 1, !dbg !417 ; [debug line = 243:5@383:5]
  %buf_addr_31 = getelementptr [16 x i8]* %buf, i64 0, i64 5, !dbg !417 ; [#uses=4 type=i8*] [debug line = 243:5@383:5]
  %buf_load_37 = load i8* %buf_addr_31, align 1, !dbg !417 ; [#uses=1 type=i8] [debug line = 243:5@383:5]
  store i8 %buf_load_37, i8* %buf_addr_30, align 1, !dbg !417 ; [debug line = 243:5@383:5]
  store i8 %i_24, i8* %buf_addr_31, align 1, !dbg !417 ; [debug line = 243:5@383:5]
  %buf_addr_32 = getelementptr [16 x i8]* %buf, i64 0, i64 2, !dbg !420 ; [#uses=4 type=i8*] [debug line = 244:5@383:5]
  %i_25 = load i8* %buf_addr_32, align 1, !dbg !420 ; [#uses=1 type=i8] [debug line = 244:5@383:5]
  call void @llvm.dbg.value(metadata !{i8 %i_25}, i64 0, metadata !419), !dbg !420 ; [debug line = 244:5@383:5] [debug variable = i]
  %buf_addr_33 = getelementptr [16 x i8]* %buf, i64 0, i64 10, !dbg !420 ; [#uses=4 type=i8*] [debug line = 244:5@383:5]
  %buf_load_39 = load i8* %buf_addr_33, align 1, !dbg !420 ; [#uses=1 type=i8] [debug line = 244:5@383:5]
  store i8 %buf_load_39, i8* %buf_addr_32, align 1, !dbg !420 ; [debug line = 244:5@383:5]
  store i8 %i_25, i8* %buf_addr_33, align 1, !dbg !420 ; [debug line = 244:5@383:5]
  %buf_addr_34 = getelementptr [16 x i8]* %buf, i64 0, i64 3, !dbg !421 ; [#uses=4 type=i8*] [debug line = 245:5@383:5]
  %j = load i8* %buf_addr_34, align 1, !dbg !421  ; [#uses=1 type=i8] [debug line = 245:5@383:5]
  call void @llvm.dbg.value(metadata !{i8 %j}, i64 0, metadata !422), !dbg !421 ; [debug line = 245:5@383:5] [debug variable = j]
  %buf_addr_35 = getelementptr [16 x i8]* %buf, i64 0, i64 7, !dbg !421 ; [#uses=4 type=i8*] [debug line = 245:5@383:5]
  %buf_load_41 = load i8* %buf_addr_35, align 1, !dbg !421 ; [#uses=1 type=i8] [debug line = 245:5@383:5]
  store i8 %buf_load_41, i8* %buf_addr_34, align 1, !dbg !421 ; [debug line = 245:5@383:5]
  %buf_addr_36 = getelementptr [16 x i8]* %buf, i64 0, i64 11, !dbg !421 ; [#uses=4 type=i8*] [debug line = 245:5@383:5]
  %buf_load_42 = load i8* %buf_addr_36, align 1, !dbg !421 ; [#uses=1 type=i8] [debug line = 245:5@383:5]
  store i8 %buf_load_42, i8* %buf_addr_35, align 1, !dbg !421 ; [debug line = 245:5@383:5]
  %buf_addr_37 = getelementptr [16 x i8]* %buf, i64 0, i64 15, !dbg !421 ; [#uses=4 type=i8*] [debug line = 245:5@383:5]
  %buf_load_43 = load i8* %buf_addr_37, align 1, !dbg !421 ; [#uses=1 type=i8] [debug line = 245:5@383:5]
  store i8 %buf_load_43, i8* %buf_addr_36, align 1, !dbg !421 ; [debug line = 245:5@383:5]
  store i8 %j, i8* %buf_addr_37, align 1, !dbg !421 ; [debug line = 245:5@383:5]
  %buf_addr_38 = getelementptr [16 x i8]* %buf, i64 0, i64 6, !dbg !423 ; [#uses=4 type=i8*] [debug line = 246:5@383:5]
  %j_4 = load i8* %buf_addr_38, align 1, !dbg !423 ; [#uses=1 type=i8] [debug line = 246:5@383:5]
  call void @llvm.dbg.value(metadata !{i8 %j_4}, i64 0, metadata !422), !dbg !423 ; [debug line = 246:5@383:5] [debug variable = j]
  %buf_addr_39 = getelementptr [16 x i8]* %buf, i64 0, i64 14, !dbg !423 ; [#uses=4 type=i8*] [debug line = 246:5@383:5]
  %buf_load_45 = load i8* %buf_addr_39, align 1, !dbg !423 ; [#uses=1 type=i8] [debug line = 246:5@383:5]
  store i8 %buf_load_45, i8* %buf_addr_38, align 1, !dbg !423 ; [debug line = 246:5@383:5]
  store i8 %j_4, i8* %buf_addr_39, align 1, !dbg !423 ; [debug line = 246:5@383:5]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !424), !dbg !427 ; [debug line = 202:45@384:5] [debug variable = buf]
  br label %3, !dbg !428                          ; [debug line = 206:5@384:5]

; <label>:3                                       ; preds = %4, %aes_addRoundKey_cpy.exit
  %i_i5 = phi i5 [ -16, %aes_addRoundKey_cpy.exit ], [ %i_26, %4 ] ; [#uses=2 type=i5]
  %i_26 = add i5 %i_i5, -1, !dbg !428             ; [#uses=2 type=i5] [debug line = 206:5@384:5]
  %i_28_cast = sext i5 %i_26 to i8, !dbg !428     ; [#uses=1 type=i8] [debug line = 206:5@384:5]
  call void @llvm.dbg.value(metadata !{i5 %i_26}, i64 0, metadata !430), !dbg !428 ; [debug line = 206:5@384:5] [debug variable = i]
  %tmp_i6 = icmp eq i5 %i_i5, 0, !dbg !428        ; [#uses=1 type=i1] [debug line = 206:5@384:5]
  %empty_39 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp_i6, label %aes_subBytes_inv.exit.preheader, label %4, !dbg !428 ; [debug line = 206:5@384:5]

aes_subBytes_inv.exit.preheader:                  ; preds = %3
  %rcon = alloca i8                               ; [#uses=3 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %rcon}, metadata !431) ; [debug variable = rcon]
  store i8 -128, i8* %rcon
  br label %aes_subBytes_inv.exit, !dbg !432      ; [debug line = 386:10]

; <label>:4                                       ; preds = %3
  %tmp_3_i = zext i8 %i_28_cast to i64, !dbg !434 ; [#uses=1 type=i64] [debug line = 206:17@384:5]
  %buf_addr_41 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_3_i, !dbg !434 ; [#uses=2 type=i8*] [debug line = 206:17@384:5]
  %buf_load_47 = load i8* %buf_addr_41, align 1, !dbg !434 ; [#uses=1 type=i8] [debug line = 206:17@384:5]
  %tmp_4_i = zext i8 %buf_load_47 to i64, !dbg !434 ; [#uses=1 type=i64] [debug line = 206:17@384:5]
  %sboxinv_addr = getelementptr inbounds [256 x i8]* @sboxinv, i64 0, i64 %tmp_4_i, !dbg !434 ; [#uses=1 type=i8*] [debug line = 206:17@384:5]
  %sboxinv_load = load i8* %sboxinv_addr, align 1, !dbg !434 ; [#uses=1 type=i8] [debug line = 206:17@384:5]
  store i8 %sboxinv_load, i8* %buf_addr_41, align 1, !dbg !434 ; [debug line = 206:17@384:5]
  br label %3, !dbg !434                          ; [debug line = 206:17@384:5]

aes_subBytes_inv.exit:                            ; preds = %aes_subBytes_inv.exit42, %aes_subBytes_inv.exit.preheader
  %i = phi i4 [ %phitmp, %aes_subBytes_inv.exit42 ], [ -3, %aes_subBytes_inv.exit.preheader ] ; [#uses=3 type=i4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !435), !dbg !432 ; [debug line = 386:10] [debug variable = i]
  %tmp = icmp eq i4 %i, 0, !dbg !432              ; [#uses=1 type=i1] [debug line = 386:10]
  %empty_40 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 13, i64 13, i64 13) ; [#uses=0 type=i32]
  br i1 %tmp, label %11, label %5, !dbg !432      ; [debug line = 386:10]

; <label>:5                                       ; preds = %aes_subBytes_inv.exit
  %tmp_103 = trunc i4 %i to i1, !dbg !432         ; [#uses=1 type=i1] [debug line = 386:10]
  br i1 %tmp_103, label %6, label %7, !dbg !436   ; [debug line = 388:9]

; <label>:6                                       ; preds = %5
  %rcon_load = load i8* %rcon, !dbg !438          ; [#uses=1 type=i8] [debug line = 390:13]
  %rcon_2 = call fastcc i8 @aes_expandDecKey(i8 %rcon_load), !dbg !438 ; [#uses=1 type=i8] [debug line = 390:13]
  call void @llvm.dbg.value(metadata !{i8 %rcon_2}, i64 0, metadata !431), !dbg !438 ; [debug line = 390:13] [debug variable = rcon]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx_key, i6 16), !dbg !440 ; [debug line = 391:13]
  store i8 %rcon_2, i8* %rcon, !dbg !438          ; [debug line = 390:13]
  br label %8, !dbg !441                          ; [debug line = 392:9]

; <label>:7                                       ; preds = %5
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx_key, i6 0), !dbg !442 ; [debug line = 393:14]
  br label %8

; <label>:8                                       ; preds = %7, %6
  call fastcc void @aes_mixColumns_inv([16 x i8]* %buf), !dbg !443 ; [debug line = 394:9]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !444), !dbg !446 ; [debug line = 239:46@395:9] [debug variable = buf]
  %i_27 = load i8* %buf_addr, align 1, !dbg !447  ; [#uses=1 type=i8] [debug line = 243:5@395:9]
  call void @llvm.dbg.value(metadata !{i8 %i_27}, i64 0, metadata !448), !dbg !447 ; [debug line = 243:5@395:9] [debug variable = i]
  %buf_load_49 = load i8* %buf_addr_29, align 1, !dbg !447 ; [#uses=1 type=i8] [debug line = 243:5@395:9]
  store i8 %buf_load_49, i8* %buf_addr, align 1, !dbg !447 ; [debug line = 243:5@395:9]
  %buf_load_50 = load i8* %buf_addr_30, align 1, !dbg !447 ; [#uses=1 type=i8] [debug line = 243:5@395:9]
  store i8 %buf_load_50, i8* %buf_addr_29, align 1, !dbg !447 ; [debug line = 243:5@395:9]
  %buf_load_51 = load i8* %buf_addr_31, align 1, !dbg !447 ; [#uses=1 type=i8] [debug line = 243:5@395:9]
  store i8 %buf_load_51, i8* %buf_addr_30, align 1, !dbg !447 ; [debug line = 243:5@395:9]
  store i8 %i_27, i8* %buf_addr_31, align 1, !dbg !447 ; [debug line = 243:5@395:9]
  %i_28 = load i8* %buf_addr_32, align 1, !dbg !449 ; [#uses=1 type=i8] [debug line = 244:5@395:9]
  call void @llvm.dbg.value(metadata !{i8 %i_28}, i64 0, metadata !448), !dbg !449 ; [debug line = 244:5@395:9] [debug variable = i]
  %buf_load_53 = load i8* %buf_addr_33, align 1, !dbg !449 ; [#uses=1 type=i8] [debug line = 244:5@395:9]
  store i8 %buf_load_53, i8* %buf_addr_32, align 1, !dbg !449 ; [debug line = 244:5@395:9]
  store i8 %i_28, i8* %buf_addr_33, align 1, !dbg !449 ; [debug line = 244:5@395:9]
  %j_5 = load i8* %buf_addr_34, align 1, !dbg !450 ; [#uses=1 type=i8] [debug line = 245:5@395:9]
  call void @llvm.dbg.value(metadata !{i8 %j_5}, i64 0, metadata !451), !dbg !450 ; [debug line = 245:5@395:9] [debug variable = j]
  %buf_load_55 = load i8* %buf_addr_35, align 1, !dbg !450 ; [#uses=1 type=i8] [debug line = 245:5@395:9]
  store i8 %buf_load_55, i8* %buf_addr_34, align 1, !dbg !450 ; [debug line = 245:5@395:9]
  %buf_load_56 = load i8* %buf_addr_36, align 1, !dbg !450 ; [#uses=1 type=i8] [debug line = 245:5@395:9]
  store i8 %buf_load_56, i8* %buf_addr_35, align 1, !dbg !450 ; [debug line = 245:5@395:9]
  %buf_load_57 = load i8* %buf_addr_37, align 1, !dbg !450 ; [#uses=1 type=i8] [debug line = 245:5@395:9]
  store i8 %buf_load_57, i8* %buf_addr_36, align 1, !dbg !450 ; [debug line = 245:5@395:9]
  store i8 %j_5, i8* %buf_addr_37, align 1, !dbg !450 ; [debug line = 245:5@395:9]
  %j_6 = load i8* %buf_addr_38, align 1, !dbg !452 ; [#uses=1 type=i8] [debug line = 246:5@395:9]
  call void @llvm.dbg.value(metadata !{i8 %j_6}, i64 0, metadata !451), !dbg !452 ; [debug line = 246:5@395:9] [debug variable = j]
  %buf_load_59 = load i8* %buf_addr_39, align 1, !dbg !452 ; [#uses=1 type=i8] [debug line = 246:5@395:9]
  store i8 %buf_load_59, i8* %buf_addr_38, align 1, !dbg !452 ; [debug line = 246:5@395:9]
  store i8 %j_6, i8* %buf_addr_39, align 1, !dbg !452 ; [debug line = 246:5@395:9]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !453), !dbg !455 ; [debug line = 202:45@396:9] [debug variable = buf]
  br label %9, !dbg !456                          ; [debug line = 206:5@396:9]

; <label>:9                                       ; preds = %10, %8
  %i_i3 = phi i5 [ -16, %8 ], [ %i_29, %10 ]      ; [#uses=2 type=i5]
  %i_29 = add i5 %i_i3, -1, !dbg !456             ; [#uses=2 type=i5] [debug line = 206:5@396:9]
  %i_31_cast = sext i5 %i_29 to i8, !dbg !456     ; [#uses=1 type=i8] [debug line = 206:5@396:9]
  call void @llvm.dbg.value(metadata !{i5 %i_29}, i64 0, metadata !457), !dbg !456 ; [debug line = 206:5@396:9] [debug variable = i]
  %tmp_i1 = icmp eq i5 %i_i3, 0, !dbg !456        ; [#uses=1 type=i1] [debug line = 206:5@396:9]
  %empty_41 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp_i1, label %aes_subBytes_inv.exit42, label %10, !dbg !456 ; [debug line = 206:5@396:9]

; <label>:10                                      ; preds = %9
  %tmp_3_i1 = zext i8 %i_31_cast to i64, !dbg !458 ; [#uses=1 type=i64] [debug line = 206:17@396:9]
  %buf_addr_42 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp_3_i1, !dbg !458 ; [#uses=2 type=i8*] [debug line = 206:17@396:9]
  %buf_load_60 = load i8* %buf_addr_42, align 1, !dbg !458 ; [#uses=1 type=i8] [debug line = 206:17@396:9]
  %tmp_4_i1 = zext i8 %buf_load_60 to i64, !dbg !458 ; [#uses=1 type=i64] [debug line = 206:17@396:9]
  %sboxinv_addr_1 = getelementptr inbounds [256 x i8]* @sboxinv, i64 0, i64 %tmp_4_i1, !dbg !458 ; [#uses=1 type=i8*] [debug line = 206:17@396:9]
  %sboxinv_load_1 = load i8* %sboxinv_addr_1, align 1, !dbg !458 ; [#uses=1 type=i8] [debug line = 206:17@396:9]
  store i8 %sboxinv_load_1, i8* %buf_addr_42, align 1, !dbg !458 ; [debug line = 206:17@396:9]
  br label %9, !dbg !458                          ; [debug line = 206:17@396:9]

aes_subBytes_inv.exit42:                          ; preds = %9
  %phitmp = add i4 %i, -1, !dbg !459              ; [#uses=1 type=i4] [debug line = 397:5]
  br label %aes_subBytes_inv.exit, !dbg !459      ; [debug line = 397:5]

; <label>:11                                      ; preds = %aes_subBytes_inv.exit
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx_key, i6 0), !dbg !460 ; [debug line = 398:5]
  ret void, !dbg !461                             ; [debug line = 399:1]
}

; [#uses=2]
define weak i1 @_ssdm_op_WriteResp.m_axi.i8P(i8*) {
entry:
  ret i1 true
}

; [#uses=2]
define weak i1 @_ssdm_op_WriteReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

; [#uses=2]
define weak void @_ssdm_op_Write.m_axi.i8P(i8*, i8, i1) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecPipeline(...) {
entry:
  ret i32 0
}

; [#uses=29]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecLoopName(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=4]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=4]
define weak i1 @_ssdm_op_ReadReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

; [#uses=2]
define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=1]
define weak i3 @_ssdm_op_Read.s_axilite.i3(i3) {
entry:
  ret i3 %0
}

; [#uses=4]
define weak i8 @_ssdm_op_Read.m_axi.i8P(i8*) {
entry:
  %empty = load i8* %0                            ; [#uses=1 type=i8]
  ret i8 %empty
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
  %empty_42 = trunc i8 %empty to i7               ; [#uses=1 type=i7]
  ret i7 %empty_42
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
  %empty_43 = shl i8 1, %empty                    ; [#uses=1 type=i8]
  %empty_44 = and i8 %0, %empty_43                ; [#uses=1 type=i8]
  %empty_45 = icmp ne i8 %empty_44, 0             ; [#uses=1 type=i1]
  ret i1 %empty_45
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i6.i32(i6, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i6                     ; [#uses=1 type=i6]
  %empty_46 = shl i6 1, %empty                    ; [#uses=1 type=i6]
  %empty_47 = and i6 %0, %empty_46                ; [#uses=1 type=i6]
  %empty_48 = icmp ne i6 %empty_47, 0             ; [#uses=1 type=i1]
  ret i1 %empty_48
}

; [#uses=3]
define weak i1 @_ssdm_op_BitSelect.i1.i5.i32(i5, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i5                     ; [#uses=1 type=i5]
  %empty_49 = shl i5 1, %empty                    ; [#uses=1 type=i5]
  %empty_50 = and i5 %0, %empty_49                ; [#uses=1 type=i5]
  %empty_51 = icmp ne i5 %empty_50, 0             ; [#uses=1 type=i1]
  ret i1 %empty_51
}

; [#uses=0]
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
!39 = metadata !{i32 786689, metadata !40, metadata !"buf", null, i32 270, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 786478, i32 0, metadata !41, metadata !"aes_mixColumns_inv", metadata !"aes_mixColumns_inv", metadata !"", metadata !41, i32 270, metadata !42, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !46, i32 271} ; [ DW_TAG_subprogram ]
!41 = metadata !{i32 786473, metadata !"aes256cbc/src/aes256ecb.c", metadata !"/home/jd/workspace", null} ; [ DW_TAG_file_type ]
!42 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!43 = metadata !{null, metadata !44}
!44 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ]
!45 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!46 = metadata !{metadata !47}
!47 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!48 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !45, metadata !49, i32 0, i32 0} ; [ DW_TAG_array_type ]
!49 = metadata !{metadata !50}
!50 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!51 = metadata !{i32 270, i32 40, metadata !40, null}
!52 = metadata !{i32 274, i32 10, metadata !53, null}
!53 = metadata !{i32 786443, metadata !54, i32 274, i32 5, metadata !41, i32 13} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 786443, metadata !40, i32 271, i32 1, metadata !41, i32 12} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 276, i32 9, metadata !56, null}
!56 = metadata !{i32 786443, metadata !53, i32 275, i32 5, metadata !41, i32 14} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 786688, metadata !54, metadata !"a", metadata !41, i32 272, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 277, i32 9, metadata !56, null}
!59 = metadata !{i32 786688, metadata !54, metadata !"b", metadata !41, i32 272, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!60 = metadata !{i32 278, i32 9, metadata !56, null}
!61 = metadata !{i32 786688, metadata !54, metadata !"c", metadata !41, i32 272, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!62 = metadata !{i32 279, i32 9, metadata !56, null}
!63 = metadata !{i32 786688, metadata !54, metadata !"d", metadata !41, i32 272, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!64 = metadata !{i32 280, i32 9, metadata !56, null}
!65 = metadata !{i32 786688, metadata !54, metadata !"e", metadata !41, i32 272, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 786689, metadata !67, metadata !"x", metadata !41, i32 16777403, metadata !45, i32 0, metadata !70} ; [ DW_TAG_arg_variable ]
!67 = metadata !{i32 786478, i32 0, metadata !41, metadata !"rj_xtime", metadata !"rj_xtime", metadata !"", metadata !41, i32 187, metadata !68, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !46, i32 188} ; [ DW_TAG_subprogram ]
!68 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!69 = metadata !{metadata !45, metadata !45}
!70 = metadata !{i32 281, i32 13, metadata !56, null}
!71 = metadata !{i32 187, i32 45, metadata !67, metadata !70}
!72 = metadata !{i32 189, i32 46, metadata !73, metadata !70}
!73 = metadata !{i32 786443, metadata !67, i32 188, i32 1, metadata !41, i32 15} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 786688, metadata !73, metadata !"y", metadata !41, i32 189, metadata !45, i32 0, metadata !70} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 190, i32 5, metadata !73, metadata !70}
!76 = metadata !{i32 786688, metadata !54, metadata !"z", metadata !41, i32 272, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!77 = metadata !{i32 282, i32 26, metadata !56, null}
!78 = metadata !{i32 786689, metadata !67, metadata !"x", metadata !41, i32 16777403, metadata !45, i32 0, metadata !77} ; [ DW_TAG_arg_variable ]
!79 = metadata !{i32 187, i32 45, metadata !67, metadata !77}
!80 = metadata !{i32 189, i32 46, metadata !73, metadata !77}
!81 = metadata !{i32 786688, metadata !73, metadata !"y", metadata !41, i32 189, metadata !45, i32 0, metadata !77} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 190, i32 5, metadata !73, metadata !77}
!83 = metadata !{i32 786688, metadata !54, metadata !"x", metadata !41, i32 272, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 283, i32 26, metadata !56, null}
!85 = metadata !{i32 786689, metadata !67, metadata !"x", metadata !41, i32 16777403, metadata !45, i32 0, metadata !84} ; [ DW_TAG_arg_variable ]
!86 = metadata !{i32 187, i32 45, metadata !67, metadata !84}
!87 = metadata !{i32 189, i32 46, metadata !73, metadata !84}
!88 = metadata !{i32 786688, metadata !73, metadata !"y", metadata !41, i32 189, metadata !45, i32 0, metadata !84} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 190, i32 5, metadata !73, metadata !84}
!90 = metadata !{i32 786688, metadata !54, metadata !"y", metadata !41, i32 272, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 786689, metadata !67, metadata !"x", metadata !41, i32 16777403, metadata !45, i32 0, metadata !92} ; [ DW_TAG_arg_variable ]
!92 = metadata !{i32 284, i32 23, metadata !56, null}
!93 = metadata !{i32 187, i32 45, metadata !67, metadata !92}
!94 = metadata !{i32 189, i32 46, metadata !73, metadata !92}
!95 = metadata !{i32 786688, metadata !73, metadata !"y", metadata !41, i32 189, metadata !45, i32 0, metadata !92} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 190, i32 5, metadata !73, metadata !92}
!97 = metadata !{i32 285, i32 27, metadata !56, null}
!98 = metadata !{i32 786689, metadata !67, metadata !"x", metadata !41, i32 16777403, metadata !45, i32 0, metadata !97} ; [ DW_TAG_arg_variable ]
!99 = metadata !{i32 187, i32 45, metadata !67, metadata !97}
!100 = metadata !{i32 189, i32 46, metadata !73, metadata !97}
!101 = metadata !{i32 786688, metadata !73, metadata !"y", metadata !41, i32 189, metadata !45, i32 0, metadata !97} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 190, i32 5, metadata !73, metadata !97}
!103 = metadata !{i32 286, i32 27, metadata !56, null}
!104 = metadata !{i32 786689, metadata !67, metadata !"x", metadata !41, i32 16777403, metadata !45, i32 0, metadata !103} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 187, i32 45, metadata !67, metadata !103}
!106 = metadata !{i32 189, i32 46, metadata !73, metadata !103}
!107 = metadata !{i32 786688, metadata !73, metadata !"y", metadata !41, i32 189, metadata !45, i32 0, metadata !103} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 190, i32 5, metadata !73, metadata !103}
!109 = metadata !{i32 287, i32 27, metadata !56, null}
!110 = metadata !{i32 786689, metadata !67, metadata !"x", metadata !41, i32 16777403, metadata !45, i32 0, metadata !109} ; [ DW_TAG_arg_variable ]
!111 = metadata !{i32 187, i32 45, metadata !67, metadata !109}
!112 = metadata !{i32 189, i32 46, metadata !73, metadata !109}
!113 = metadata !{i32 786688, metadata !73, metadata !"y", metadata !41, i32 189, metadata !45, i32 0, metadata !109} ; [ DW_TAG_auto_variable ]
!114 = metadata !{i32 190, i32 5, metadata !73, metadata !109}
!115 = metadata !{i32 274, i32 25, metadata !53, null}
!116 = metadata !{i32 786688, metadata !54, metadata !"i", metadata !41, i32 272, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!117 = metadata !{i32 289, i32 1, metadata !54, null}
!118 = metadata !{i32 790532, metadata !119, metadata !"rc", null, i32 292, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable_ro ]
!119 = metadata !{i32 786478, i32 0, metadata !41, metadata !"aes_expandEncKey", metadata !"aes_expandEncKey", metadata !"", metadata !41, i32 292, metadata !120, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !46, i32 293} ; [ DW_TAG_subprogram ]
!120 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !121, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!121 = metadata !{null, metadata !44, metadata !44}
!122 = metadata !{i32 292, i32 63, metadata !119, null}
!123 = metadata !{i32 786689, metadata !67, metadata !"x", metadata !41, i32 16777403, metadata !45, i32 0, metadata !124} ; [ DW_TAG_arg_variable ]
!124 = metadata !{i32 300, i32 11, metadata !125, null}
!125 = metadata !{i32 786443, metadata !119, i32 293, i32 1, metadata !41, i32 28} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 187, i32 45, metadata !67, metadata !124}
!127 = metadata !{i32 786689, metadata !119, metadata !"k", null, i32 292, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!128 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !45, metadata !129, i32 0, i32 0} ; [ DW_TAG_array_type ]
!129 = metadata !{metadata !130}
!130 = metadata !{i32 786465, i64 0, i64 31}      ; [ DW_TAG_subrange_type ]
!131 = metadata !{i32 292, i32 45, metadata !119, null}
!132 = metadata !{i32 296, i32 5, metadata !125, null}
!133 = metadata !{i32 297, i32 5, metadata !125, null}
!134 = metadata !{i32 298, i32 5, metadata !125, null}
!135 = metadata !{i32 299, i32 5, metadata !125, null}
!136 = metadata !{i32 189, i32 46, metadata !73, metadata !124}
!137 = metadata !{i32 786688, metadata !73, metadata !"y", metadata !41, i32 189, metadata !45, i32 0, metadata !124} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 190, i32 5, metadata !73, metadata !124}
!139 = metadata !{i32 302, i32 9, metadata !140, null}
!140 = metadata !{i32 786443, metadata !125, i32 302, i32 5, metadata !41, i32 29} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 302, i32 32, metadata !140, null}
!142 = metadata !{i32 302, i32 24, metadata !140, null}
!143 = metadata !{i32 786688, metadata !125, metadata !"i", metadata !41, i32 294, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!144 = metadata !{i32 304, i32 5, metadata !125, null}
!145 = metadata !{i32 305, i32 5, metadata !125, null}
!146 = metadata !{i32 306, i32 5, metadata !125, null}
!147 = metadata !{i32 307, i32 5, metadata !125, null}
!148 = metadata !{i32 309, i32 9, metadata !149, null}
!149 = metadata !{i32 786443, metadata !125, i32 309, i32 5, metadata !41, i32 30} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 309, i32 33, metadata !149, null}
!151 = metadata !{i32 309, i32 25, metadata !149, null}
!152 = metadata !{i32 312, i32 1, metadata !125, null}
!153 = metadata !{i32 790532, metadata !154, metadata !"rc", null, i32 315, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable_ro ]
!154 = metadata !{i32 786478, i32 0, metadata !41, metadata !"aes_expandDecKey", metadata !"aes_expandDecKey", metadata !"", metadata !41, i32 315, metadata !120, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !46, i32 316} ; [ DW_TAG_subprogram ]
!155 = metadata !{i32 315, i32 56, metadata !154, null}
!156 = metadata !{i32 319, i32 9, metadata !157, null}
!157 = metadata !{i32 786443, metadata !158, i32 319, i32 5, metadata !41, i32 17} ; [ DW_TAG_lexical_block ]
!158 = metadata !{i32 786443, metadata !154, i32 316, i32 1, metadata !41, i32 16} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 319, i32 33, metadata !157, null}
!160 = metadata !{i32 786688, metadata !158, metadata !"i", metadata !41, i32 317, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!161 = metadata !{i32 319, i32 25, metadata !157, null}
!162 = metadata !{i32 322, i32 5, metadata !158, null}
!163 = metadata !{i32 323, i32 5, metadata !158, null}
!164 = metadata !{i32 324, i32 5, metadata !158, null}
!165 = metadata !{i32 325, i32 5, metadata !158, null}
!166 = metadata !{i32 327, i32 9, metadata !167, null}
!167 = metadata !{i32 786443, metadata !158, i32 327, i32 5, metadata !41, i32 18} ; [ DW_TAG_lexical_block ]
!168 = metadata !{i32 327, i32 32, metadata !167, null}
!169 = metadata !{i32 327, i32 24, metadata !167, null}
!170 = metadata !{i32 330, i32 5, metadata !158, null}
!171 = metadata !{i32 331, i32 5, metadata !158, null}
!172 = metadata !{i32 332, i32 5, metadata !158, null}
!173 = metadata !{i32 333, i32 5, metadata !158, null}
!174 = metadata !{i32 334, i32 5, metadata !158, null}
!175 = metadata !{i32 790534, metadata !154, metadata !"rc", null, i32 315, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable_wo ]
!176 = metadata !{i32 335, i32 1, metadata !158, null}
!177 = metadata !{i32 786689, metadata !178, metadata !"buf", null, i32 210, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!178 = metadata !{i32 786478, i32 0, metadata !41, metadata !"aes_addRoundKey", metadata !"aes_addRoundKey", metadata !"", metadata !41, i32 210, metadata !120, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !46, i32 211} ; [ DW_TAG_subprogram ]
!179 = metadata !{i32 210, i32 44, metadata !178, null}
!180 = metadata !{i32 786689, metadata !178, metadata !"key", null, i32 210, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!181 = metadata !{i32 210, i32 64, metadata !178, null}
!182 = metadata !{i32 214, i32 5, metadata !183, null}
!183 = metadata !{i32 786443, metadata !178, i32 211, i32 1, metadata !41, i32 21} ; [ DW_TAG_lexical_block ]
!184 = metadata !{i32 786688, metadata !183, metadata !"i", metadata !41, i32 212, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!185 = metadata !{i32 214, i32 17, metadata !183, null}
!186 = metadata !{i32 215, i32 1, metadata !183, null}
!187 = metadata !{metadata !188}
!188 = metadata !{i32 0, i32 7, metadata !189}
!189 = metadata !{metadata !190}
!190 = metadata !{metadata !"memptr", metadata !191, metadata !"unsigned char", i32 0, i32 7}
!191 = metadata !{metadata !192}
!192 = metadata !{i32 0, i32 63, i32 1}
!193 = metadata !{metadata !194}
!194 = metadata !{i32 0, i32 2, metadata !195}
!195 = metadata !{metadata !196}
!196 = metadata !{metadata !"mode", metadata !197, metadata !"enum ", i32 0, i32 2}
!197 = metadata !{metadata !198}
!198 = metadata !{i32 0, i32 0, i32 0}
!199 = metadata !{metadata !200}
!200 = metadata !{i32 0, i32 31, metadata !201}
!201 = metadata !{metadata !202}
!202 = metadata !{metadata !"inbuf_addr", metadata !197, metadata !"unsigned int", i32 0, i32 31}
!203 = metadata !{metadata !204}
!204 = metadata !{i32 0, i32 31, metadata !205}
!205 = metadata !{metadata !206}
!206 = metadata !{metadata !"outbuf_addr", metadata !197, metadata !"unsigned int", i32 0, i32 31}
!207 = metadata !{i32 786689, metadata !208, metadata !"outbuf_addr", metadata !209, i32 67108872, metadata !221, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!208 = metadata !{i32 786478, i32 0, metadata !209, metadata !"aes256cbc", metadata !"aes256cbc", metadata !"", metadata !209, i32 8, metadata !210, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i3, i32, i32)* @aes256cbc, null, null, metadata !46, i32 8} ; [ DW_TAG_subprogram ]
!209 = metadata !{i32 786473, metadata !"aes256cbc/src/aes256cbc.c", metadata !"/home/jd/workspace", null} ; [ DW_TAG_file_type ]
!210 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !211, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!211 = metadata !{null, metadata !44, metadata !212, metadata !221, metadata !221}
!212 = metadata !{i32 786454, null, metadata !"ciphermode_t", metadata !209, i32 5, i64 0, i64 0, i64 0, i32 0, metadata !213} ; [ DW_TAG_typedef ]
!213 = metadata !{i32 786436, null, metadata !"", metadata !214, i32 5, i64 3, i64 4, i32 0, i32 0, null, metadata !215, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!214 = metadata !{i32 786473, metadata !"aes256cbc/src/aes256cbc.h", metadata !"/home/jd/workspace", null} ; [ DW_TAG_file_type ]
!215 = metadata !{metadata !216, metadata !217, metadata !218, metadata !219, metadata !220}
!216 = metadata !{i32 786472, metadata !"RESET", i64 0} ; [ DW_TAG_enumerator ]
!217 = metadata !{i32 786472, metadata !"ENCRYPT", i64 1} ; [ DW_TAG_enumerator ]
!218 = metadata !{i32 786472, metadata !"DECRYPT", i64 2} ; [ DW_TAG_enumerator ]
!219 = metadata !{i32 786472, metadata !"SET_IV", i64 3} ; [ DW_TAG_enumerator ]
!220 = metadata !{i32 786472, metadata !"SET_KEY", i64 4} ; [ DW_TAG_enumerator ]
!221 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !209, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !222} ; [ DW_TAG_typedef ]
!222 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!223 = metadata !{i32 8, i32 88, metadata !208, null}
!224 = metadata !{i32 786689, metadata !208, metadata !"inbuf_addr", metadata !209, i32 50331656, metadata !221, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!225 = metadata !{i32 8, i32 67, metadata !208, null}
!226 = metadata !{i32 786689, metadata !208, metadata !"mode", metadata !209, i32 33554440, metadata !212, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!227 = metadata !{i32 8, i32 52, metadata !208, null}
!228 = metadata !{i32 786689, metadata !208, metadata !"memptr", metadata !209, i32 16777224, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!229 = metadata !{i32 8, i32 31, metadata !208, null}
!230 = metadata !{i32 9, i32 1, metadata !231, null}
!231 = metadata !{i32 786443, metadata !208, i32 8, i32 101, metadata !209, i32 0} ; [ DW_TAG_lexical_block ]
!232 = metadata !{i32 10, i32 1, metadata !231, null}
!233 = metadata !{i32 11, i32 1, metadata !231, null}
!234 = metadata !{i32 12, i32 1, metadata !231, null}
!235 = metadata !{i32 13, i32 1, metadata !231, null}
!236 = metadata !{i32 786688, metadata !231, metadata !"buf", metadata !209, i32 15, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!237 = metadata !{i32 15, i32 16, metadata !231, null}
!238 = metadata !{i32 23, i32 5, metadata !231, null}
!239 = metadata !{i32 25, i32 10, metadata !240, null}
!240 = metadata !{i32 786443, metadata !241, i32 25, i32 6, metadata !209, i32 2} ; [ DW_TAG_lexical_block ]
!241 = metadata !{i32 786443, metadata !231, i32 23, i32 20, metadata !209, i32 1} ; [ DW_TAG_lexical_block ]
!242 = metadata !{i32 25, i32 19, metadata !240, null}
!243 = metadata !{i32 344, i32 10, metadata !244, metadata !257}
!244 = metadata !{i32 786443, metadata !245, i32 344, i32 5, metadata !41, i32 1} ; [ DW_TAG_lexical_block ]
!245 = metadata !{i32 786443, metadata !246, i32 340, i32 1, metadata !41, i32 0} ; [ DW_TAG_lexical_block ]
!246 = metadata !{i32 786478, i32 0, metadata !41, metadata !"aes256_init", metadata !"aes256_init", metadata !"", metadata !41, i32 339, metadata !247, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !46, i32 340} ; [ DW_TAG_subprogram ]
!247 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !248, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!248 = metadata !{null, metadata !249, metadata !44}
!249 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !250} ; [ DW_TAG_pointer_type ]
!250 = metadata !{i32 786454, null, metadata !"aes256_context", metadata !41, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !251} ; [ DW_TAG_typedef ]
!251 = metadata !{i32 786451, null, metadata !"", metadata !252, i32 28, i64 768, i64 8, i32 0, i32 0, null, metadata !253, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!252 = metadata !{i32 786473, metadata !"aes256cbc/src/aes256ecb.h", metadata !"/home/jd/workspace", null} ; [ DW_TAG_file_type ]
!253 = metadata !{metadata !254, metadata !255, metadata !256}
!254 = metadata !{i32 786445, metadata !251, metadata !"key", metadata !252, i32 29, i64 256, i64 8, i64 0, i32 0, metadata !128} ; [ DW_TAG_member ]
!255 = metadata !{i32 786445, metadata !251, metadata !"enckey", metadata !252, i32 30, i64 256, i64 8, i64 256, i32 0, metadata !128} ; [ DW_TAG_member ]
!256 = metadata !{i32 786445, metadata !251, metadata !"deckey", metadata !252, i32 31, i64 256, i64 8, i64 512, i32 0, metadata !128} ; [ DW_TAG_member ]
!257 = metadata !{i32 26, i32 6, metadata !241, null}
!258 = metadata !{i32 25, i32 26, metadata !259, null}
!259 = metadata !{i32 786443, metadata !240, i32 25, i32 24, metadata !209, i32 3} ; [ DW_TAG_lexical_block ]
!260 = metadata !{i32 786688, metadata !231, metadata !"i", metadata !209, i32 21, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!261 = metadata !{i32 344, i32 39, metadata !244, metadata !257}
!262 = metadata !{i32 345, i32 10, metadata !263, metadata !257}
!263 = metadata !{i32 786443, metadata !245, i32 345, i32 5, metadata !41, i32 2} ; [ DW_TAG_lexical_block ]
!264 = metadata !{i32 344, i32 44, metadata !244, metadata !257}
!265 = metadata !{i32 786688, metadata !245, metadata !"i", metadata !41, i32 342, metadata !45, i32 0, metadata !257} ; [ DW_TAG_auto_variable ]
!266 = metadata !{i32 345, i32 23, metadata !263, metadata !257}
!267 = metadata !{i32 786688, metadata !245, metadata !"rcon", metadata !41, i32 341, metadata !45, i32 0, metadata !257} ; [ DW_TAG_auto_variable ]
!268 = metadata !{i32 29, i32 6, metadata !241, null}
!269 = metadata !{i32 31, i32 10, metadata !270, null}
!270 = metadata !{i32 786443, metadata !241, i32 31, i32 6, metadata !209, i32 4} ; [ DW_TAG_lexical_block ]
!271 = metadata !{i32 31, i32 21, metadata !270, null}
!272 = metadata !{i32 32, i32 7, metadata !273, null}
!273 = metadata !{i32 786443, metadata !270, i32 31, i32 26, metadata !209, i32 5} ; [ DW_TAG_lexical_block ]
!274 = metadata !{i32 35, i32 6, metadata !241, null}
!275 = metadata !{i32 37, i32 10, metadata !276, null}
!276 = metadata !{i32 786443, metadata !241, i32 37, i32 6, metadata !209, i32 6} ; [ DW_TAG_lexical_block ]
!277 = metadata !{i32 37, i32 19, metadata !276, null}
!278 = metadata !{i32 37, i32 26, metadata !279, null}
!279 = metadata !{i32 786443, metadata !276, i32 37, i32 24, metadata !209, i32 7} ; [ DW_TAG_lexical_block ]
!280 = metadata !{i32 39, i32 6, metadata !241, null}
!281 = metadata !{i32 42, i32 6, metadata !241, null}
!282 = metadata !{i32 44, i32 10, metadata !283, null}
!283 = metadata !{i32 786443, metadata !241, i32 44, i32 6, metadata !209, i32 8} ; [ DW_TAG_lexical_block ]
!284 = metadata !{i32 44, i32 19, metadata !283, null}
!285 = metadata !{i32 44, i32 26, metadata !286, null}
!286 = metadata !{i32 786443, metadata !283, i32 44, i32 24, metadata !209, i32 9} ; [ DW_TAG_lexical_block ]
!287 = metadata !{i32 46, i32 6, metadata !241, null}
!288 = metadata !{i32 48, i32 10, metadata !289, null}
!289 = metadata !{i32 786443, metadata !241, i32 48, i32 6, metadata !209, i32 10} ; [ DW_TAG_lexical_block ]
!290 = metadata !{i32 48, i32 21, metadata !289, null}
!291 = metadata !{i32 52, i32 10, metadata !292, null}
!292 = metadata !{i32 786443, metadata !241, i32 52, i32 6, metadata !209, i32 12} ; [ DW_TAG_lexical_block ]
!293 = metadata !{i32 49, i32 7, metadata !294, null}
!294 = metadata !{i32 786443, metadata !289, i32 48, i32 26, metadata !209, i32 11} ; [ DW_TAG_lexical_block ]
!295 = metadata !{i32 52, i32 19, metadata !292, null}
!296 = metadata !{i32 52, i32 26, metadata !297, null}
!297 = metadata !{i32 786443, metadata !292, i32 52, i32 24, metadata !209, i32 13} ; [ DW_TAG_lexical_block ]
!298 = metadata !{i32 54, i32 6, metadata !241, null}
!299 = metadata !{i32 57, i32 6, metadata !241, null}
!300 = metadata !{i32 60, i32 6, metadata !241, null}
!301 = metadata !{i32 63, i32 1, metadata !231, null}
!302 = metadata !{i32 786689, metadata !303, metadata !"buf", null, i32 358, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!303 = metadata !{i32 786478, i32 0, metadata !41, metadata !"aes256_encrypt_ecb", metadata !"aes256_encrypt_ecb", metadata !"", metadata !41, i32 358, metadata !247, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !46, i32 359} ; [ DW_TAG_subprogram ]
!304 = metadata !{i32 358, i32 61, metadata !303, null}
!305 = metadata !{i32 786689, metadata !306, metadata !"buf", null, i32 218, metadata !48, i32 0, metadata !309} ; [ DW_TAG_arg_variable ]
!306 = metadata !{i32 786478, i32 0, metadata !41, metadata !"aes_addRoundKey_cpy", metadata !"aes_addRoundKey_cpy", metadata !"", metadata !41, i32 218, metadata !307, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !46, i32 219} ; [ DW_TAG_subprogram ]
!307 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !308, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!308 = metadata !{null, metadata !44, metadata !44, metadata !44}
!309 = metadata !{i32 362, i32 5, metadata !310, null}
!310 = metadata !{i32 786443, metadata !303, i32 359, i32 1, metadata !41, i32 5} ; [ DW_TAG_lexical_block ]
!311 = metadata !{i32 218, i32 48, metadata !306, metadata !309}
!312 = metadata !{i32 222, i32 5, metadata !313, metadata !309}
!313 = metadata !{i32 786443, metadata !306, i32 219, i32 1, metadata !41, i32 27} ; [ DW_TAG_lexical_block ]
!314 = metadata !{i32 786688, metadata !313, metadata !"i", metadata !41, i32 220, metadata !45, i32 0, metadata !309} ; [ DW_TAG_auto_variable ]
!315 = metadata !{i32 786688, metadata !310, metadata !"rcon", metadata !41, i32 360, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!316 = metadata !{i32 231, i32 5, metadata !317, metadata !319}
!317 = metadata !{i32 786443, metadata !318, i32 228, i32 1, metadata !41, i32 25} ; [ DW_TAG_lexical_block ]
!318 = metadata !{i32 786478, i32 0, metadata !41, metadata !"aes_shiftRows", metadata !"aes_shiftRows", metadata !"", metadata !41, i32 227, metadata !42, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !46, i32 228} ; [ DW_TAG_subprogram ]
!319 = metadata !{i32 366, i32 9, metadata !320, null}
!320 = metadata !{i32 786443, metadata !321, i32 364, i32 5, metadata !41, i32 7} ; [ DW_TAG_lexical_block ]
!321 = metadata !{i32 786443, metadata !310, i32 363, i32 5, metadata !41, i32 6} ; [ DW_TAG_lexical_block ]
!322 = metadata !{i32 232, i32 5, metadata !317, metadata !319}
!323 = metadata !{i32 233, i32 5, metadata !317, metadata !319}
!324 = metadata !{i32 234, i32 5, metadata !317, metadata !319}
!325 = metadata !{i32 363, i32 9, metadata !321, null}
!326 = metadata !{i32 222, i32 17, metadata !313, metadata !309}
!327 = metadata !{i32 198, i32 5, metadata !328, metadata !330}
!328 = metadata !{i32 786443, metadata !329, i32 195, i32 1, metadata !41, i32 26} ; [ DW_TAG_lexical_block ]
!329 = metadata !{i32 786478, i32 0, metadata !41, metadata !"aes_subBytes", metadata !"aes_subBytes", metadata !"", metadata !41, i32 194, metadata !42, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !46, i32 195} ; [ DW_TAG_subprogram ]
!330 = metadata !{i32 365, i32 9, metadata !320, null}
!331 = metadata !{i32 198, i32 5, metadata !328, metadata !332}
!332 = metadata !{i32 371, i32 5, metadata !310, null}
!333 = metadata !{i32 786688, metadata !328, metadata !"i", metadata !41, i32 196, metadata !45, i32 0, metadata !330} ; [ DW_TAG_auto_variable ]
!334 = metadata !{i32 198, i32 17, metadata !328, metadata !330}
!335 = metadata !{i32 786689, metadata !318, metadata !"buf", null, i32 227, metadata !48, i32 0, metadata !319} ; [ DW_TAG_arg_variable ]
!336 = metadata !{i32 227, i32 42, metadata !318, metadata !319}
!337 = metadata !{i32 786688, metadata !317, metadata !"i", metadata !41, i32 229, metadata !45, i32 0, metadata !319} ; [ DW_TAG_auto_variable ]
!338 = metadata !{i32 786688, metadata !317, metadata !"j", metadata !41, i32 229, metadata !45, i32 0, metadata !319} ; [ DW_TAG_auto_variable ]
!339 = metadata !{i32 786689, metadata !340, metadata !"buf", null, i32 251, metadata !48, i32 0, metadata !341} ; [ DW_TAG_arg_variable ]
!340 = metadata !{i32 786478, i32 0, metadata !41, metadata !"aes_mixColumns", metadata !"aes_mixColumns", metadata !"", metadata !41, i32 251, metadata !42, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !46, i32 252} ; [ DW_TAG_subprogram ]
!341 = metadata !{i32 367, i32 9, metadata !320, null}
!342 = metadata !{i32 251, i32 43, metadata !340, metadata !341}
!343 = metadata !{i32 255, i32 10, metadata !344, metadata !341}
!344 = metadata !{i32 786443, metadata !345, i32 255, i32 5, metadata !41, i32 23} ; [ DW_TAG_lexical_block ]
!345 = metadata !{i32 786443, metadata !340, i32 252, i32 1, metadata !41, i32 22} ; [ DW_TAG_lexical_block ]
!346 = metadata !{i32 257, i32 9, metadata !347, metadata !341}
!347 = metadata !{i32 786443, metadata !344, i32 256, i32 5, metadata !41, i32 24} ; [ DW_TAG_lexical_block ]
!348 = metadata !{i32 786688, metadata !345, metadata !"a", metadata !41, i32 253, metadata !45, i32 0, metadata !341} ; [ DW_TAG_auto_variable ]
!349 = metadata !{i32 258, i32 9, metadata !347, metadata !341}
!350 = metadata !{i32 786688, metadata !345, metadata !"b", metadata !41, i32 253, metadata !45, i32 0, metadata !341} ; [ DW_TAG_auto_variable ]
!351 = metadata !{i32 259, i32 9, metadata !347, metadata !341}
!352 = metadata !{i32 786688, metadata !345, metadata !"c", metadata !41, i32 253, metadata !45, i32 0, metadata !341} ; [ DW_TAG_auto_variable ]
!353 = metadata !{i32 260, i32 9, metadata !347, metadata !341}
!354 = metadata !{i32 786688, metadata !345, metadata !"d", metadata !41, i32 253, metadata !45, i32 0, metadata !341} ; [ DW_TAG_auto_variable ]
!355 = metadata !{i32 261, i32 9, metadata !347, metadata !341}
!356 = metadata !{i32 786688, metadata !345, metadata !"e", metadata !41, i32 253, metadata !45, i32 0, metadata !341} ; [ DW_TAG_auto_variable ]
!357 = metadata !{i32 786689, metadata !67, metadata !"x", metadata !41, i32 16777403, metadata !45, i32 0, metadata !358} ; [ DW_TAG_arg_variable ]
!358 = metadata !{i32 262, i32 23, metadata !347, metadata !341}
!359 = metadata !{i32 187, i32 45, metadata !67, metadata !358}
!360 = metadata !{i32 189, i32 46, metadata !73, metadata !358}
!361 = metadata !{i32 786688, metadata !73, metadata !"y", metadata !41, i32 189, metadata !45, i32 0, metadata !358} ; [ DW_TAG_auto_variable ]
!362 = metadata !{i32 190, i32 5, metadata !73, metadata !358}
!363 = metadata !{i32 263, i32 27, metadata !347, metadata !341}
!364 = metadata !{i32 786689, metadata !67, metadata !"x", metadata !41, i32 16777403, metadata !45, i32 0, metadata !363} ; [ DW_TAG_arg_variable ]
!365 = metadata !{i32 187, i32 45, metadata !67, metadata !363}
!366 = metadata !{i32 189, i32 46, metadata !73, metadata !363}
!367 = metadata !{i32 786688, metadata !73, metadata !"y", metadata !41, i32 189, metadata !45, i32 0, metadata !363} ; [ DW_TAG_auto_variable ]
!368 = metadata !{i32 190, i32 5, metadata !73, metadata !363}
!369 = metadata !{i32 264, i32 27, metadata !347, metadata !341}
!370 = metadata !{i32 786689, metadata !67, metadata !"x", metadata !41, i32 16777403, metadata !45, i32 0, metadata !369} ; [ DW_TAG_arg_variable ]
!371 = metadata !{i32 187, i32 45, metadata !67, metadata !369}
!372 = metadata !{i32 189, i32 46, metadata !73, metadata !369}
!373 = metadata !{i32 786688, metadata !73, metadata !"y", metadata !41, i32 189, metadata !45, i32 0, metadata !369} ; [ DW_TAG_auto_variable ]
!374 = metadata !{i32 190, i32 5, metadata !73, metadata !369}
!375 = metadata !{i32 265, i32 27, metadata !347, metadata !341}
!376 = metadata !{i32 786689, metadata !67, metadata !"x", metadata !41, i32 16777403, metadata !45, i32 0, metadata !375} ; [ DW_TAG_arg_variable ]
!377 = metadata !{i32 187, i32 45, metadata !67, metadata !375}
!378 = metadata !{i32 189, i32 46, metadata !73, metadata !375}
!379 = metadata !{i32 786688, metadata !73, metadata !"y", metadata !41, i32 189, metadata !45, i32 0, metadata !375} ; [ DW_TAG_auto_variable ]
!380 = metadata !{i32 190, i32 5, metadata !73, metadata !375}
!381 = metadata !{i32 255, i32 25, metadata !344, metadata !341}
!382 = metadata !{i32 786688, metadata !345, metadata !"i", metadata !41, i32 253, metadata !45, i32 0, metadata !341} ; [ DW_TAG_auto_variable ]
!383 = metadata !{i32 368, i32 9, metadata !320, null}
!384 = metadata !{i32 368, i32 21, metadata !320, null}
!385 = metadata !{i32 369, i32 14, metadata !320, null}
!386 = metadata !{i32 369, i32 49, metadata !320, null}
!387 = metadata !{i32 363, i32 34, metadata !321, null}
!388 = metadata !{i32 786688, metadata !310, metadata !"i", metadata !41, i32 360, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!389 = metadata !{i32 786688, metadata !328, metadata !"i", metadata !41, i32 196, metadata !45, i32 0, metadata !332} ; [ DW_TAG_auto_variable ]
!390 = metadata !{i32 198, i32 17, metadata !328, metadata !332}
!391 = metadata !{i32 373, i32 5, metadata !310, null}
!392 = metadata !{i32 786689, metadata !318, metadata !"buf", null, i32 227, metadata !48, i32 0, metadata !393} ; [ DW_TAG_arg_variable ]
!393 = metadata !{i32 372, i32 5, metadata !310, null}
!394 = metadata !{i32 227, i32 42, metadata !318, metadata !393}
!395 = metadata !{i32 231, i32 5, metadata !317, metadata !393}
!396 = metadata !{i32 786688, metadata !317, metadata !"i", metadata !41, i32 229, metadata !45, i32 0, metadata !393} ; [ DW_TAG_auto_variable ]
!397 = metadata !{i32 232, i32 5, metadata !317, metadata !393}
!398 = metadata !{i32 233, i32 5, metadata !317, metadata !393}
!399 = metadata !{i32 786688, metadata !317, metadata !"j", metadata !41, i32 229, metadata !45, i32 0, metadata !393} ; [ DW_TAG_auto_variable ]
!400 = metadata !{i32 234, i32 5, metadata !317, metadata !393}
!401 = metadata !{i32 374, i32 5, metadata !310, null}
!402 = metadata !{i32 375, i32 1, metadata !310, null}
!403 = metadata !{i32 786689, metadata !404, metadata !"buf", null, i32 378, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!404 = metadata !{i32 786478, i32 0, metadata !41, metadata !"aes256_decrypt_ecb", metadata !"aes256_decrypt_ecb", metadata !"", metadata !41, i32 378, metadata !247, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !46, i32 379} ; [ DW_TAG_subprogram ]
!405 = metadata !{i32 378, i32 61, metadata !404, null}
!406 = metadata !{i32 786689, metadata !306, metadata !"buf", null, i32 218, metadata !48, i32 0, metadata !407} ; [ DW_TAG_arg_variable ]
!407 = metadata !{i32 382, i32 5, metadata !408, null}
!408 = metadata !{i32 786443, metadata !404, i32 379, i32 1, metadata !41, i32 8} ; [ DW_TAG_lexical_block ]
!409 = metadata !{i32 218, i32 48, metadata !306, metadata !407}
!410 = metadata !{i32 222, i32 5, metadata !313, metadata !407}
!411 = metadata !{i32 786688, metadata !313, metadata !"i", metadata !41, i32 220, metadata !45, i32 0, metadata !407} ; [ DW_TAG_auto_variable ]
!412 = metadata !{i32 222, i32 17, metadata !313, metadata !407}
!413 = metadata !{i32 786689, metadata !414, metadata !"buf", null, i32 239, metadata !48, i32 0, metadata !415} ; [ DW_TAG_arg_variable ]
!414 = metadata !{i32 786478, i32 0, metadata !41, metadata !"aes_shiftRows_inv", metadata !"aes_shiftRows_inv", metadata !"", metadata !41, i32 239, metadata !42, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !46, i32 240} ; [ DW_TAG_subprogram ]
!415 = metadata !{i32 383, i32 5, metadata !408, null}
!416 = metadata !{i32 239, i32 46, metadata !414, metadata !415}
!417 = metadata !{i32 243, i32 5, metadata !418, metadata !415}
!418 = metadata !{i32 786443, metadata !414, i32 240, i32 1, metadata !41, i32 20} ; [ DW_TAG_lexical_block ]
!419 = metadata !{i32 786688, metadata !418, metadata !"i", metadata !41, i32 241, metadata !45, i32 0, metadata !415} ; [ DW_TAG_auto_variable ]
!420 = metadata !{i32 244, i32 5, metadata !418, metadata !415}
!421 = metadata !{i32 245, i32 5, metadata !418, metadata !415}
!422 = metadata !{i32 786688, metadata !418, metadata !"j", metadata !41, i32 241, metadata !45, i32 0, metadata !415} ; [ DW_TAG_auto_variable ]
!423 = metadata !{i32 246, i32 5, metadata !418, metadata !415}
!424 = metadata !{i32 786689, metadata !425, metadata !"buf", null, i32 202, metadata !48, i32 0, metadata !426} ; [ DW_TAG_arg_variable ]
!425 = metadata !{i32 786478, i32 0, metadata !41, metadata !"aes_subBytes_inv", metadata !"aes_subBytes_inv", metadata !"", metadata !41, i32 202, metadata !42, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !46, i32 203} ; [ DW_TAG_subprogram ]
!426 = metadata !{i32 384, i32 5, metadata !408, null}
!427 = metadata !{i32 202, i32 45, metadata !425, metadata !426}
!428 = metadata !{i32 206, i32 5, metadata !429, metadata !426}
!429 = metadata !{i32 786443, metadata !425, i32 203, i32 1, metadata !41, i32 19} ; [ DW_TAG_lexical_block ]
!430 = metadata !{i32 786688, metadata !429, metadata !"i", metadata !41, i32 204, metadata !45, i32 0, metadata !426} ; [ DW_TAG_auto_variable ]
!431 = metadata !{i32 786688, metadata !408, metadata !"rcon", metadata !41, i32 380, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!432 = metadata !{i32 386, i32 10, metadata !433, null}
!433 = metadata !{i32 786443, metadata !408, i32 386, i32 5, metadata !41, i32 9} ; [ DW_TAG_lexical_block ]
!434 = metadata !{i32 206, i32 17, metadata !429, metadata !426}
!435 = metadata !{i32 786688, metadata !408, metadata !"i", metadata !41, i32 380, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!436 = metadata !{i32 388, i32 9, metadata !437, null}
!437 = metadata !{i32 786443, metadata !433, i32 387, i32 5, metadata !41, i32 10} ; [ DW_TAG_lexical_block ]
!438 = metadata !{i32 390, i32 13, metadata !439, null}
!439 = metadata !{i32 786443, metadata !437, i32 389, i32 9, metadata !41, i32 11} ; [ DW_TAG_lexical_block ]
!440 = metadata !{i32 391, i32 13, metadata !439, null}
!441 = metadata !{i32 392, i32 9, metadata !439, null}
!442 = metadata !{i32 393, i32 14, metadata !437, null}
!443 = metadata !{i32 394, i32 9, metadata !437, null}
!444 = metadata !{i32 786689, metadata !414, metadata !"buf", null, i32 239, metadata !48, i32 0, metadata !445} ; [ DW_TAG_arg_variable ]
!445 = metadata !{i32 395, i32 9, metadata !437, null}
!446 = metadata !{i32 239, i32 46, metadata !414, metadata !445}
!447 = metadata !{i32 243, i32 5, metadata !418, metadata !445}
!448 = metadata !{i32 786688, metadata !418, metadata !"i", metadata !41, i32 241, metadata !45, i32 0, metadata !445} ; [ DW_TAG_auto_variable ]
!449 = metadata !{i32 244, i32 5, metadata !418, metadata !445}
!450 = metadata !{i32 245, i32 5, metadata !418, metadata !445}
!451 = metadata !{i32 786688, metadata !418, metadata !"j", metadata !41, i32 241, metadata !45, i32 0, metadata !445} ; [ DW_TAG_auto_variable ]
!452 = metadata !{i32 246, i32 5, metadata !418, metadata !445}
!453 = metadata !{i32 786689, metadata !425, metadata !"buf", null, i32 202, metadata !48, i32 0, metadata !454} ; [ DW_TAG_arg_variable ]
!454 = metadata !{i32 396, i32 9, metadata !437, null}
!455 = metadata !{i32 202, i32 45, metadata !425, metadata !454}
!456 = metadata !{i32 206, i32 5, metadata !429, metadata !454}
!457 = metadata !{i32 786688, metadata !429, metadata !"i", metadata !41, i32 204, metadata !45, i32 0, metadata !454} ; [ DW_TAG_auto_variable ]
!458 = metadata !{i32 206, i32 17, metadata !429, metadata !454}
!459 = metadata !{i32 397, i32 5, metadata !437, null}
!460 = metadata !{i32 398, i32 5, metadata !408, null}
!461 = metadata !{i32 399, i32 1, metadata !408, null}
