; ModuleID = '/home/brett/Thesis/Vivado_WS/aes256cbc/solution1/.autopilot/db/a.o.2.bc'
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
@aes256cbc.str = internal unnamed_addr constant [10 x i8] c"aes256cbc\00" ; [#uses=1 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=30 type=[1 x i8]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=5 type=[10 x i8]*]

; [#uses=125]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc void @aes_mixColumns_inv([16 x i8]* nocapture %buf) {
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !106), !dbg !110 ; [debug line = 270:40] [debug variable = buf]
  br label %1, !dbg !111                          ; [debug line = 274:10]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ 0, %0 ], [ %i.1, %3 ]             ; [#uses=4 type=i5]
  %tmp = icmp sgt i5 %i, -1, !dbg !111            ; [#uses=1 type=i1] [debug line = 274:10]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %tmp, label %3, label %4, !dbg !111       ; [debug line = 274:10]

; <label>:3                                       ; preds = %1
  %tmp.7 = zext i5 %i to i64, !dbg !114           ; [#uses=1 type=i64] [debug line = 276:9]
  %buf.addr = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp.7, !dbg !114 ; [#uses=2 type=i8*] [debug line = 276:9]
  %a = load i8* %buf.addr, align 1, !dbg !114     ; [#uses=4 type=i8] [debug line = 276:9]
  call void @llvm.dbg.value(metadata !{i8 %a}, i64 0, metadata !116), !dbg !114 ; [debug line = 276:9] [debug variable = a]
  %tmp.8.cast = trunc i5 %i to i4, !dbg !117      ; [#uses=3 type=i4] [debug line = 277:9]
  %tmp.9 = or i4 %tmp.8.cast, 1, !dbg !117        ; [#uses=1 type=i4] [debug line = 277:9]
  %tmp. = zext i4 %tmp.9 to i64, !dbg !117        ; [#uses=1 type=i64] [debug line = 277:9]
  %buf.addr.1 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp., !dbg !117 ; [#uses=2 type=i8*] [debug line = 277:9]
  %b = load i8* %buf.addr.1, align 1, !dbg !117   ; [#uses=4 type=i8] [debug line = 277:9]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !118), !dbg !117 ; [debug line = 277:9] [debug variable = b]
  %tmp.1 = or i4 %tmp.8.cast, 2, !dbg !119        ; [#uses=1 type=i4] [debug line = 278:9]
  %tmp.2 = zext i4 %tmp.1 to i64, !dbg !119       ; [#uses=1 type=i64] [debug line = 278:9]
  %buf.addr.2 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp.2, !dbg !119 ; [#uses=2 type=i8*] [debug line = 278:9]
  %c = load i8* %buf.addr.2, align 1, !dbg !119   ; [#uses=5 type=i8] [debug line = 278:9]
  call void @llvm.dbg.value(metadata !{i8 %c}, i64 0, metadata !120), !dbg !119 ; [debug line = 278:9] [debug variable = c]
  %tmp.3 = or i4 %tmp.8.cast, 3, !dbg !121        ; [#uses=1 type=i4] [debug line = 279:9]
  %tmp.4 = zext i4 %tmp.3 to i64, !dbg !121       ; [#uses=1 type=i64] [debug line = 279:9]
  %buf.addr.3 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp.4, !dbg !121 ; [#uses=2 type=i8*] [debug line = 279:9]
  %d = load i8* %buf.addr.3, align 1, !dbg !121   ; [#uses=5 type=i8] [debug line = 279:9]
  call void @llvm.dbg.value(metadata !{i8 %d}, i64 0, metadata !122), !dbg !121 ; [debug line = 279:9] [debug variable = d]
  %x.assign.5 = xor i8 %b, %a, !dbg !123          ; [#uses=3 type=i8] [debug line = 280:9]
  %tmp1 = xor i8 %d, %x.assign.5, !dbg !123       ; [#uses=1 type=i8] [debug line = 280:9]
  %e = xor i8 %tmp1, %c, !dbg !123                ; [#uses=4 type=i8] [debug line = 280:9]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !124), !dbg !123 ; [debug line = 280:9] [debug variable = e]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !125), !dbg !130 ; [debug line = 187:45@281:13] [debug variable = x]
  %y.1 = shl i8 %e, 1, !dbg !131                  ; [#uses=2 type=i8] [debug line = 189:46@281:13]
  call void @llvm.dbg.value(metadata !{i8 %y.1}, i64 0, metadata !133), !dbg !131 ; [debug line = 189:46@281:13] [debug variable = y]
  %tmp.i = icmp slt i8 %e, 0, !dbg !134           ; [#uses=1 type=i1] [debug line = 190:5@281:13]
  %tmp.1.i = xor i8 %y.1, 27, !dbg !134           ; [#uses=1 type=i8] [debug line = 190:5@281:13]
  %y.19 = select i1 %tmp.i, i8 %tmp.1.i, i8 %y.1, !dbg !134 ; [#uses=2 type=i8] [debug line = 190:5@281:13]
  call void @llvm.dbg.value(metadata !{i8 %y.19}, i64 0, metadata !133), !dbg !134 ; [debug line = 190:5@281:13] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %y.19}, i64 0, metadata !135), !dbg !129 ; [debug line = 281:13] [debug variable = z]
  %tmp2 = xor i8 %a, %y.19, !dbg !136             ; [#uses=1 type=i8] [debug line = 282:26]
  %x.assign.1 = xor i8 %tmp2, %c, !dbg !136       ; [#uses=2 type=i8] [debug line = 282:26]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.1}, i64 0, metadata !137), !dbg !138 ; [debug line = 187:45@282:26] [debug variable = x]
  %y.3 = shl i8 %x.assign.1, 1, !dbg !139         ; [#uses=2 type=i8] [debug line = 189:46@282:26]
  call void @llvm.dbg.value(metadata !{i8 %y.3}, i64 0, metadata !140), !dbg !139 ; [debug line = 189:46@282:26] [debug variable = y]
  %tmp.i9 = icmp slt i8 %x.assign.1, 0, !dbg !141 ; [#uses=1 type=i1] [debug line = 190:5@282:26]
  %tmp.1.i1 = xor i8 %y.3, 27, !dbg !141          ; [#uses=1 type=i8] [debug line = 190:5@282:26]
  %y.20 = select i1 %tmp.i9, i8 %tmp.1.i1, i8 %y.3, !dbg !141 ; [#uses=2 type=i8] [debug line = 190:5@282:26]
  call void @llvm.dbg.value(metadata !{i8 %y.20}, i64 0, metadata !140), !dbg !141 ; [debug line = 190:5@282:26] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %y.20}, i64 0, metadata !137), !dbg !138 ; [debug line = 187:45@282:26] [debug variable = x]
  %y.5 = shl i8 %y.20, 1, !dbg !139               ; [#uses=2 type=i8] [debug line = 189:46@282:26]
  call void @llvm.dbg.value(metadata !{i8 %y.5}, i64 0, metadata !140), !dbg !139 ; [debug line = 189:46@282:26] [debug variable = y]
  %tmp.i1 = icmp slt i8 %y.20, 0, !dbg !141       ; [#uses=1 type=i1] [debug line = 190:5@282:26]
  %tmp.1.i2 = xor i8 %y.5, 27, !dbg !141          ; [#uses=1 type=i8] [debug line = 190:5@282:26]
  %y.6 = select i1 %tmp.i1, i8 %tmp.1.i2, i8 %y.5, !dbg !141 ; [#uses=1 type=i8] [debug line = 190:5@282:26]
  call void @llvm.dbg.value(metadata !{i8 %y.6}, i64 0, metadata !140), !dbg !141 ; [debug line = 190:5@282:26] [debug variable = y]
  %x = xor i8 %y.6, %e, !dbg !136                 ; [#uses=2 type=i8] [debug line = 282:26]
  call void @llvm.dbg.value(metadata !{i8 %x}, i64 0, metadata !142), !dbg !136 ; [debug line = 282:26] [debug variable = x]
  %tmp3 = xor i8 %b, %y.19, !dbg !143             ; [#uses=1 type=i8] [debug line = 283:26]
  %x.assign.3 = xor i8 %tmp3, %d, !dbg !143       ; [#uses=2 type=i8] [debug line = 283:26]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.3}, i64 0, metadata !144), !dbg !145 ; [debug line = 187:45@283:26] [debug variable = x]
  %y.7 = shl i8 %x.assign.3, 1, !dbg !146         ; [#uses=2 type=i8] [debug line = 189:46@283:26]
  call void @llvm.dbg.value(metadata !{i8 %y.7}, i64 0, metadata !147), !dbg !146 ; [debug line = 189:46@283:26] [debug variable = y]
  %tmp.i2 = icmp slt i8 %x.assign.3, 0, !dbg !148 ; [#uses=1 type=i1] [debug line = 190:5@283:26]
  %tmp.1.i3 = xor i8 %y.7, 27, !dbg !148          ; [#uses=1 type=i8] [debug line = 190:5@283:26]
  %y.21 = select i1 %tmp.i2, i8 %tmp.1.i3, i8 %y.7, !dbg !148 ; [#uses=2 type=i8] [debug line = 190:5@283:26]
  call void @llvm.dbg.value(metadata !{i8 %y.21}, i64 0, metadata !147), !dbg !148 ; [debug line = 190:5@283:26] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %y.21}, i64 0, metadata !144), !dbg !145 ; [debug line = 187:45@283:26] [debug variable = x]
  %y.9 = shl i8 %y.21, 1, !dbg !146               ; [#uses=2 type=i8] [debug line = 189:46@283:26]
  call void @llvm.dbg.value(metadata !{i8 %y.9}, i64 0, metadata !147), !dbg !146 ; [debug line = 189:46@283:26] [debug variable = y]
  %tmp.i3 = icmp slt i8 %y.21, 0, !dbg !148       ; [#uses=1 type=i1] [debug line = 190:5@283:26]
  %tmp.1.i4 = xor i8 %y.9, 27, !dbg !148          ; [#uses=1 type=i8] [debug line = 190:5@283:26]
  %y.10 = select i1 %tmp.i3, i8 %tmp.1.i4, i8 %y.9, !dbg !148 ; [#uses=1 type=i8] [debug line = 190:5@283:26]
  call void @llvm.dbg.value(metadata !{i8 %y.10}, i64 0, metadata !147), !dbg !148 ; [debug line = 190:5@283:26] [debug variable = y]
  %y = xor i8 %y.10, %e, !dbg !143                ; [#uses=2 type=i8] [debug line = 283:26]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !149), !dbg !143 ; [debug line = 283:26] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.5}, i64 0, metadata !150), !dbg !152 ; [debug line = 187:45@284:23] [debug variable = x]
  %y.11 = shl i8 %x.assign.5, 1, !dbg !153        ; [#uses=2 type=i8] [debug line = 189:46@284:23]
  call void @llvm.dbg.value(metadata !{i8 %y.11}, i64 0, metadata !154), !dbg !153 ; [debug line = 189:46@284:23] [debug variable = y]
  %tmp.i4 = icmp slt i8 %x.assign.5, 0, !dbg !155 ; [#uses=1 type=i1] [debug line = 190:5@284:23]
  %tmp.1.i5 = xor i8 %y.11, 27, !dbg !155         ; [#uses=1 type=i8] [debug line = 190:5@284:23]
  %y.12 = select i1 %tmp.i4, i8 %tmp.1.i5, i8 %y.11, !dbg !155 ; [#uses=1 type=i8] [debug line = 190:5@284:23]
  call void @llvm.dbg.value(metadata !{i8 %y.12}, i64 0, metadata !154), !dbg !155 ; [debug line = 190:5@284:23] [debug variable = y]
  %tmp4 = xor i8 %y.12, %x, !dbg !151             ; [#uses=1 type=i8] [debug line = 284:23]
  %tmp.5 = xor i8 %tmp4, %a, !dbg !151            ; [#uses=1 type=i8] [debug line = 284:23]
  store i8 %tmp.5, i8* %buf.addr, align 1, !dbg !151 ; [debug line = 284:23]
  %x.assign.6 = xor i8 %c, %b, !dbg !156          ; [#uses=2 type=i8] [debug line = 285:27]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.6}, i64 0, metadata !157), !dbg !158 ; [debug line = 187:45@285:27] [debug variable = x]
  %y.13 = shl i8 %x.assign.6, 1, !dbg !159        ; [#uses=2 type=i8] [debug line = 189:46@285:27]
  call void @llvm.dbg.value(metadata !{i8 %y.13}, i64 0, metadata !160), !dbg !159 ; [debug line = 189:46@285:27] [debug variable = y]
  %tmp.i5 = icmp slt i8 %x.assign.6, 0, !dbg !161 ; [#uses=1 type=i1] [debug line = 190:5@285:27]
  %tmp.1.i6 = xor i8 %y.13, 27, !dbg !161         ; [#uses=1 type=i8] [debug line = 190:5@285:27]
  %y.14 = select i1 %tmp.i5, i8 %tmp.1.i6, i8 %y.13, !dbg !161 ; [#uses=1 type=i8] [debug line = 190:5@285:27]
  call void @llvm.dbg.value(metadata !{i8 %y.14}, i64 0, metadata !160), !dbg !161 ; [debug line = 190:5@285:27] [debug variable = y]
  %tmp5 = xor i8 %y.14, %y, !dbg !156             ; [#uses=1 type=i8] [debug line = 285:27]
  %tmp.6 = xor i8 %tmp5, %b, !dbg !156            ; [#uses=1 type=i8] [debug line = 285:27]
  store i8 %tmp.6, i8* %buf.addr.1, align 1, !dbg !156 ; [debug line = 285:27]
  %x.assign.7 = xor i8 %d, %c, !dbg !162          ; [#uses=2 type=i8] [debug line = 286:27]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.7}, i64 0, metadata !163), !dbg !164 ; [debug line = 187:45@286:27] [debug variable = x]
  %y.15 = shl i8 %x.assign.7, 1, !dbg !165        ; [#uses=2 type=i8] [debug line = 189:46@286:27]
  call void @llvm.dbg.value(metadata !{i8 %y.15}, i64 0, metadata !166), !dbg !165 ; [debug line = 189:46@286:27] [debug variable = y]
  %tmp.i6 = icmp slt i8 %x.assign.7, 0, !dbg !167 ; [#uses=1 type=i1] [debug line = 190:5@286:27]
  %tmp.1.i7 = xor i8 %y.15, 27, !dbg !167         ; [#uses=1 type=i8] [debug line = 190:5@286:27]
  %y.16 = select i1 %tmp.i6, i8 %tmp.1.i7, i8 %y.15, !dbg !167 ; [#uses=1 type=i8] [debug line = 190:5@286:27]
  call void @llvm.dbg.value(metadata !{i8 %y.16}, i64 0, metadata !166), !dbg !167 ; [debug line = 190:5@286:27] [debug variable = y]
  %tmp6 = xor i8 %y.16, %x, !dbg !162             ; [#uses=1 type=i8] [debug line = 286:27]
  %tmp.8 = xor i8 %tmp6, %c, !dbg !162            ; [#uses=1 type=i8] [debug line = 286:27]
  store i8 %tmp.8, i8* %buf.addr.2, align 1, !dbg !162 ; [debug line = 286:27]
  %x.assign.8 = xor i8 %d, %a, !dbg !168          ; [#uses=2 type=i8] [debug line = 287:27]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.8}, i64 0, metadata !169), !dbg !170 ; [debug line = 187:45@287:27] [debug variable = x]
  %y.17 = shl i8 %x.assign.8, 1, !dbg !171        ; [#uses=2 type=i8] [debug line = 189:46@287:27]
  call void @llvm.dbg.value(metadata !{i8 %y.17}, i64 0, metadata !172), !dbg !171 ; [debug line = 189:46@287:27] [debug variable = y]
  %tmp.i7 = icmp slt i8 %x.assign.8, 0, !dbg !173 ; [#uses=1 type=i1] [debug line = 190:5@287:27]
  %tmp.1.i8 = xor i8 %y.17, 27, !dbg !173         ; [#uses=1 type=i8] [debug line = 190:5@287:27]
  %y.18 = select i1 %tmp.i7, i8 %tmp.1.i8, i8 %y.17, !dbg !173 ; [#uses=1 type=i8] [debug line = 190:5@287:27]
  call void @llvm.dbg.value(metadata !{i8 %y.18}, i64 0, metadata !172), !dbg !173 ; [debug line = 190:5@287:27] [debug variable = y]
  %tmp7 = xor i8 %y.18, %y, !dbg !168             ; [#uses=1 type=i8] [debug line = 287:27]
  %tmp.10 = xor i8 %tmp7, %d, !dbg !168           ; [#uses=1 type=i8] [debug line = 287:27]
  store i8 %tmp.10, i8* %buf.addr.3, align 1, !dbg !168 ; [debug line = 287:27]
  %i.1 = add i5 %i, 4, !dbg !174                  ; [#uses=1 type=i5] [debug line = 274:25]
  call void @llvm.dbg.value(metadata !{i5 %i.1}, i64 0, metadata !175), !dbg !174 ; [debug line = 274:25] [debug variable = i]
  br label %1, !dbg !174                          ; [debug line = 274:25]

; <label>:4                                       ; preds = %1
  ret void, !dbg !176                             ; [debug line = 289:1]
}

; [#uses=3]
define internal fastcc i8 @aes_expandEncKey([32 x i8]* %k, i8 %rc.read) {
  %k.addr = getelementptr [32 x i8]* %k, i64 0, i64 0 ; [#uses=2 type=i8*]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %k}, i64 0, metadata !177), !dbg !181 ; [debug line = 292:45] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i8 %rc.read}, i64 0, metadata !182), !dbg !183 ; [debug line = 292:63] [debug variable = rc]
  %k.addr.1 = getelementptr [32 x i8]* %k, i64 0, i64 29, !dbg !184 ; [#uses=1 type=i8*] [debug line = 296:5]
  %k.load = load i8* %k.addr.1, align 1, !dbg !184 ; [#uses=1 type=i8] [debug line = 296:5]
  %tmp = zext i8 %k.load to i64, !dbg !184        ; [#uses=1 type=i64] [debug line = 296:5]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp, !dbg !184 ; [#uses=1 type=i8*] [debug line = 296:5]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !184 ; [#uses=1 type=i8] [debug line = 296:5]
  %k.load.1 = load i8* %k.addr, align 1, !dbg !184 ; [#uses=1 type=i8] [debug line = 296:5]
  %tmp1 = xor i8 %k.load.1, %rc.read, !dbg !184   ; [#uses=1 type=i8] [debug line = 296:5]
  %tmp. = xor i8 %tmp1, %sbox.load, !dbg !184     ; [#uses=1 type=i8] [debug line = 296:5]
  store i8 %tmp., i8* %k.addr, align 1, !dbg !184 ; [debug line = 296:5]
  %k.addr.2 = getelementptr [32 x i8]* %k, i64 0, i64 30, !dbg !186 ; [#uses=1 type=i8*] [debug line = 297:5]
  %k.load.2 = load i8* %k.addr.2, align 1, !dbg !186 ; [#uses=1 type=i8] [debug line = 297:5]
  %tmp.11 = zext i8 %k.load.2 to i64, !dbg !186   ; [#uses=1 type=i64] [debug line = 297:5]
  %sbox.addr.1 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.11, !dbg !186 ; [#uses=1 type=i8*] [debug line = 297:5]
  %sbox.load.1 = load i8* %sbox.addr.1, align 1, !dbg !186 ; [#uses=1 type=i8] [debug line = 297:5]
  %k.addr.3 = getelementptr [32 x i8]* %k, i64 0, i64 1, !dbg !186 ; [#uses=2 type=i8*] [debug line = 297:5]
  %k.load.3 = load i8* %k.addr.3, align 1, !dbg !186 ; [#uses=1 type=i8] [debug line = 297:5]
  %tmp.12 = xor i8 %k.load.3, %sbox.load.1, !dbg !186 ; [#uses=1 type=i8] [debug line = 297:5]
  store i8 %tmp.12, i8* %k.addr.3, align 1, !dbg !186 ; [debug line = 297:5]
  %k.addr.4 = getelementptr [32 x i8]* %k, i64 0, i64 31, !dbg !187 ; [#uses=1 type=i8*] [debug line = 298:5]
  %k.load.4 = load i8* %k.addr.4, align 1, !dbg !187 ; [#uses=1 type=i8] [debug line = 298:5]
  %tmp.13 = zext i8 %k.load.4 to i64, !dbg !187   ; [#uses=1 type=i64] [debug line = 298:5]
  %sbox.addr.2 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.13, !dbg !187 ; [#uses=1 type=i8*] [debug line = 298:5]
  %sbox.load.2 = load i8* %sbox.addr.2, align 1, !dbg !187 ; [#uses=1 type=i8] [debug line = 298:5]
  %k.addr.5 = getelementptr [32 x i8]* %k, i64 0, i64 2, !dbg !187 ; [#uses=2 type=i8*] [debug line = 298:5]
  %k.load.5 = load i8* %k.addr.5, align 1, !dbg !187 ; [#uses=1 type=i8] [debug line = 298:5]
  %tmp.14 = xor i8 %k.load.5, %sbox.load.2, !dbg !187 ; [#uses=1 type=i8] [debug line = 298:5]
  store i8 %tmp.14, i8* %k.addr.5, align 1, !dbg !187 ; [debug line = 298:5]
  %k.addr.6 = getelementptr [32 x i8]* %k, i64 0, i64 28, !dbg !188 ; [#uses=1 type=i8*] [debug line = 299:5]
  %k.load.6 = load i8* %k.addr.6, align 1, !dbg !188 ; [#uses=1 type=i8] [debug line = 299:5]
  %tmp.15 = zext i8 %k.load.6 to i64, !dbg !188   ; [#uses=1 type=i64] [debug line = 299:5]
  %sbox.addr.3 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.15, !dbg !188 ; [#uses=1 type=i8*] [debug line = 299:5]
  %sbox.load.3 = load i8* %sbox.addr.3, align 1, !dbg !188 ; [#uses=1 type=i8] [debug line = 299:5]
  %k.addr.7 = getelementptr [32 x i8]* %k, i64 0, i64 3, !dbg !188 ; [#uses=2 type=i8*] [debug line = 299:5]
  %k.load.7 = load i8* %k.addr.7, align 1, !dbg !188 ; [#uses=1 type=i8] [debug line = 299:5]
  %tmp.16 = xor i8 %k.load.7, %sbox.load.3, !dbg !188 ; [#uses=1 type=i8] [debug line = 299:5]
  store i8 %tmp.16, i8* %k.addr.7, align 1, !dbg !188 ; [debug line = 299:5]
  call void @llvm.dbg.value(metadata !{i8 %rc.read}, i64 0, metadata !189), !dbg !191 ; [debug line = 187:45@300:11] [debug variable = x]
  %y = shl i8 %rc.read, 1, !dbg !192              ; [#uses=2 type=i8] [debug line = 189:46@300:11]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !193), !dbg !192 ; [debug line = 189:46@300:11] [debug variable = y]
  %tmp.i = icmp slt i8 %rc.read, 0, !dbg !194     ; [#uses=1 type=i1] [debug line = 190:5@300:11]
  %tmp.1.i = xor i8 %y, 27, !dbg !194             ; [#uses=1 type=i8] [debug line = 190:5@300:11]
  %y.22 = select i1 %tmp.i, i8 %tmp.1.i, i8 %y, !dbg !194 ; [#uses=1 type=i8] [debug line = 190:5@300:11]
  call void @llvm.dbg.value(metadata !{i8 %y.22}, i64 0, metadata !193), !dbg !194 ; [debug line = 190:5@300:11] [debug variable = y]
  br label %1, !dbg !195                          ; [debug line = 302:9]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ 4, %0 ], [ %i.2, %3 ]             ; [#uses=4 type=i5]
  %tmp.17 = icmp sgt i5 %i, -1, !dbg !195         ; [#uses=1 type=i1] [debug line = 302:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp.17, label %3, label %4, !dbg !195    ; [debug line = 302:9]

; <label>:3                                       ; preds = %1
  %tmp.33.cast = trunc i5 %i to i4, !dbg !197     ; [#uses=7 type=i4] [debug line = 302:32]
  %tmp.18 = add i4 %tmp.33.cast, -4, !dbg !197    ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp.19 = zext i4 %tmp.18 to i64, !dbg !197     ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.8 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.19, !dbg !197 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k.load.8 = load i8* %k.addr.8, align 1, !dbg !197 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp.20 = zext i5 %i to i64, !dbg !197          ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.9 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.20, !dbg !197 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k.load.9 = load i8* %k.addr.9, align 1, !dbg !197 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp.21 = xor i8 %k.load.9, %k.load.8, !dbg !197 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp.21, i8* %k.addr.9, align 1, !dbg !197 ; [debug line = 302:32]
  %tmp.22 = add i4 %tmp.33.cast, -3, !dbg !197    ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp.23 = zext i4 %tmp.22 to i64, !dbg !197     ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.10 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.23, !dbg !197 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k.load.10 = load i8* %k.addr.10, align 1, !dbg !197 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp.24 = or i4 %tmp.33.cast, 1, !dbg !197      ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp.25 = zext i4 %tmp.24 to i64, !dbg !197     ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.11 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.25, !dbg !197 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k.load.11 = load i8* %k.addr.11, align 1, !dbg !197 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp.26 = xor i8 %k.load.11, %k.load.10, !dbg !197 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp.26, i8* %k.addr.11, align 1, !dbg !197 ; [debug line = 302:32]
  %tmp.27 = add i4 %tmp.33.cast, -2, !dbg !197    ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp.28 = zext i4 %tmp.27 to i64, !dbg !197     ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.12 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.28, !dbg !197 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k.load.12 = load i8* %k.addr.12, align 1, !dbg !197 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp.29 = or i4 %tmp.33.cast, 2, !dbg !197      ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp.30 = zext i4 %tmp.29 to i64, !dbg !197     ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.13 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.30, !dbg !197 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k.load.13 = load i8* %k.addr.13, align 1, !dbg !197 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp.31 = xor i8 %k.load.13, %k.load.12, !dbg !197 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp.31, i8* %k.addr.13, align 1, !dbg !197 ; [debug line = 302:32]
  %tmp.32 = add i4 %tmp.33.cast, -1, !dbg !197    ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp.33 = zext i4 %tmp.32 to i64, !dbg !197     ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.14 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.33, !dbg !197 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k.load.14 = load i8* %k.addr.14, align 1, !dbg !197 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp.34 = or i4 %tmp.33.cast, 3, !dbg !197      ; [#uses=1 type=i4] [debug line = 302:32]
  %tmp.35 = zext i4 %tmp.34 to i64, !dbg !197     ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.15 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.35, !dbg !197 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k.load.15 = load i8* %k.addr.15, align 1, !dbg !197 ; [#uses=1 type=i8] [debug line = 302:32]
  %tmp.36 = xor i8 %k.load.15, %k.load.14, !dbg !197 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp.36, i8* %k.addr.15, align 1, !dbg !197 ; [debug line = 302:32]
  %i.2 = add i5 %i, 4, !dbg !198                  ; [#uses=1 type=i5] [debug line = 302:24]
  call void @llvm.dbg.value(metadata !{i5 %i.2}, i64 0, metadata !199), !dbg !198 ; [debug line = 302:24] [debug variable = i]
  br label %1, !dbg !198                          ; [debug line = 302:24]

; <label>:4                                       ; preds = %1
  %k.addr.16 = getelementptr [32 x i8]* %k, i64 0, i64 12, !dbg !200 ; [#uses=1 type=i8*] [debug line = 304:5]
  %k.load.16 = load i8* %k.addr.16, align 1, !dbg !200 ; [#uses=1 type=i8] [debug line = 304:5]
  %tmp.37 = zext i8 %k.load.16 to i64, !dbg !200  ; [#uses=1 type=i64] [debug line = 304:5]
  %sbox.addr.4 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.37, !dbg !200 ; [#uses=1 type=i8*] [debug line = 304:5]
  %sbox.load.4 = load i8* %sbox.addr.4, align 1, !dbg !200 ; [#uses=1 type=i8] [debug line = 304:5]
  %k.addr.17 = getelementptr [32 x i8]* %k, i64 0, i64 16, !dbg !200 ; [#uses=2 type=i8*] [debug line = 304:5]
  %k.load.17 = load i8* %k.addr.17, align 1, !dbg !200 ; [#uses=1 type=i8] [debug line = 304:5]
  %tmp.38 = xor i8 %k.load.17, %sbox.load.4, !dbg !200 ; [#uses=1 type=i8] [debug line = 304:5]
  store i8 %tmp.38, i8* %k.addr.17, align 1, !dbg !200 ; [debug line = 304:5]
  %k.addr.18 = getelementptr [32 x i8]* %k, i64 0, i64 13, !dbg !201 ; [#uses=1 type=i8*] [debug line = 305:5]
  %k.load.18 = load i8* %k.addr.18, align 1, !dbg !201 ; [#uses=1 type=i8] [debug line = 305:5]
  %tmp.39 = zext i8 %k.load.18 to i64, !dbg !201  ; [#uses=1 type=i64] [debug line = 305:5]
  %sbox.addr.5 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.39, !dbg !201 ; [#uses=1 type=i8*] [debug line = 305:5]
  %sbox.load.5 = load i8* %sbox.addr.5, align 1, !dbg !201 ; [#uses=1 type=i8] [debug line = 305:5]
  %k.addr.19 = getelementptr [32 x i8]* %k, i64 0, i64 17, !dbg !201 ; [#uses=2 type=i8*] [debug line = 305:5]
  %k.load.19 = load i8* %k.addr.19, align 1, !dbg !201 ; [#uses=1 type=i8] [debug line = 305:5]
  %tmp.40 = xor i8 %k.load.19, %sbox.load.5, !dbg !201 ; [#uses=1 type=i8] [debug line = 305:5]
  store i8 %tmp.40, i8* %k.addr.19, align 1, !dbg !201 ; [debug line = 305:5]
  %k.addr.20 = getelementptr [32 x i8]* %k, i64 0, i64 14, !dbg !202 ; [#uses=1 type=i8*] [debug line = 306:5]
  %k.load.20 = load i8* %k.addr.20, align 1, !dbg !202 ; [#uses=1 type=i8] [debug line = 306:5]
  %tmp.41 = zext i8 %k.load.20 to i64, !dbg !202  ; [#uses=1 type=i64] [debug line = 306:5]
  %sbox.addr.6 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.41, !dbg !202 ; [#uses=1 type=i8*] [debug line = 306:5]
  %sbox.load.6 = load i8* %sbox.addr.6, align 1, !dbg !202 ; [#uses=1 type=i8] [debug line = 306:5]
  %k.addr.21 = getelementptr [32 x i8]* %k, i64 0, i64 18, !dbg !202 ; [#uses=2 type=i8*] [debug line = 306:5]
  %k.load.21 = load i8* %k.addr.21, align 1, !dbg !202 ; [#uses=1 type=i8] [debug line = 306:5]
  %tmp.42 = xor i8 %k.load.21, %sbox.load.6, !dbg !202 ; [#uses=1 type=i8] [debug line = 306:5]
  store i8 %tmp.42, i8* %k.addr.21, align 1, !dbg !202 ; [debug line = 306:5]
  %k.addr.22 = getelementptr [32 x i8]* %k, i64 0, i64 15, !dbg !203 ; [#uses=1 type=i8*] [debug line = 307:5]
  %k.load.22 = load i8* %k.addr.22, align 1, !dbg !203 ; [#uses=1 type=i8] [debug line = 307:5]
  %tmp.43 = zext i8 %k.load.22 to i64, !dbg !203  ; [#uses=1 type=i64] [debug line = 307:5]
  %sbox.addr.7 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.43, !dbg !203 ; [#uses=1 type=i8*] [debug line = 307:5]
  %sbox.load.7 = load i8* %sbox.addr.7, align 1, !dbg !203 ; [#uses=1 type=i8] [debug line = 307:5]
  %k.addr.23 = getelementptr [32 x i8]* %k, i64 0, i64 19, !dbg !203 ; [#uses=2 type=i8*] [debug line = 307:5]
  %k.load.23 = load i8* %k.addr.23, align 1, !dbg !203 ; [#uses=1 type=i8] [debug line = 307:5]
  %tmp.44 = xor i8 %k.load.23, %sbox.load.7, !dbg !203 ; [#uses=1 type=i8] [debug line = 307:5]
  store i8 %tmp.44, i8* %k.addr.23, align 1, !dbg !203 ; [debug line = 307:5]
  br label %5, !dbg !204                          ; [debug line = 309:9]

; <label>:5                                       ; preds = %7, %4
  %i.1 = phi i6 [ 20, %4 ], [ %i.3, %7 ]          ; [#uses=4 type=i6]
  %tmp.45 = icmp sgt i6 %i.1, -1, !dbg !204       ; [#uses=1 type=i1] [debug line = 309:9]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp.45, label %7, label %8, !dbg !204    ; [debug line = 309:9]

; <label>:7                                       ; preds = %5
  %tmp.62.cast = trunc i6 %i.1 to i5, !dbg !206   ; [#uses=7 type=i5] [debug line = 309:33]
  %tmp.46 = add i5 %tmp.62.cast, -4, !dbg !206    ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp.47 = zext i5 %tmp.46 to i64, !dbg !206     ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.24 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.47, !dbg !206 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k.load.24 = load i8* %k.addr.24, align 1, !dbg !206 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp.48 = zext i6 %i.1 to i64, !dbg !206        ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.25 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.48, !dbg !206 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k.load.25 = load i8* %k.addr.25, align 1, !dbg !206 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp.49 = xor i8 %k.load.25, %k.load.24, !dbg !206 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp.49, i8* %k.addr.25, align 1, !dbg !206 ; [debug line = 309:33]
  %tmp.50 = add i5 %tmp.62.cast, -3, !dbg !206    ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp.51 = zext i5 %tmp.50 to i64, !dbg !206     ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.26 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.51, !dbg !206 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k.load.26 = load i8* %k.addr.26, align 1, !dbg !206 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp.52 = or i5 %tmp.62.cast, 1, !dbg !206      ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp.53 = zext i5 %tmp.52 to i64, !dbg !206     ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.27 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.53, !dbg !206 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k.load.27 = load i8* %k.addr.27, align 1, !dbg !206 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp.54 = xor i8 %k.load.27, %k.load.26, !dbg !206 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp.54, i8* %k.addr.27, align 1, !dbg !206 ; [debug line = 309:33]
  %tmp.55 = add i5 %tmp.62.cast, -2, !dbg !206    ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp.56 = zext i5 %tmp.55 to i64, !dbg !206     ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.28 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.56, !dbg !206 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k.load.28 = load i8* %k.addr.28, align 1, !dbg !206 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp.57 = or i5 %tmp.62.cast, 2, !dbg !206      ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp.58 = zext i5 %tmp.57 to i64, !dbg !206     ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.29 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.58, !dbg !206 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k.load.29 = load i8* %k.addr.29, align 1, !dbg !206 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp.59 = xor i8 %k.load.29, %k.load.28, !dbg !206 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp.59, i8* %k.addr.29, align 1, !dbg !206 ; [debug line = 309:33]
  %tmp.60 = add i5 %tmp.62.cast, -1, !dbg !206    ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp.61 = zext i5 %tmp.60 to i64, !dbg !206     ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.30 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.61, !dbg !206 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k.load.30 = load i8* %k.addr.30, align 1, !dbg !206 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp.62 = or i5 %tmp.62.cast, 3, !dbg !206      ; [#uses=1 type=i5] [debug line = 309:33]
  %tmp.63 = zext i5 %tmp.62 to i64, !dbg !206     ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.31 = getelementptr [32 x i8]* %k, i64 0, i64 %tmp.63, !dbg !206 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k.load.31 = load i8* %k.addr.31, align 1, !dbg !206 ; [#uses=1 type=i8] [debug line = 309:33]
  %tmp.64 = xor i8 %k.load.31, %k.load.30, !dbg !206 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp.64, i8* %k.addr.31, align 1, !dbg !206 ; [debug line = 309:33]
  %i.3 = add i6 %i.1, 4, !dbg !207                ; [#uses=1 type=i6] [debug line = 309:25]
  call void @llvm.dbg.value(metadata !{i6 %i.3}, i64 0, metadata !199), !dbg !207 ; [debug line = 309:25] [debug variable = i]
  br label %5, !dbg !207                          ; [debug line = 309:25]

; <label>:8                                       ; preds = %5
  ret i8 %y.22, !dbg !208                         ; [debug line = 312:1]
}

; [#uses=1]
define internal fastcc i8 @aes_expandDecKey(i8 %rc.read) {
  call void @llvm.dbg.value(metadata !{i8 %rc.read}, i64 0, metadata !209), !dbg !211 ; [debug line = 315:56] [debug variable = rc]
  br label %1, !dbg !212                          ; [debug line = 319:9]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ -4, %0 ], [ %i.4, %3 ]            ; [#uses=10 type=i5]
  %tmp = icmp ugt i5 %i, -16, !dbg !212           ; [#uses=1 type=i1] [debug line = 319:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp, label %3, label %4, !dbg !212       ; [debug line = 319:9]

; <label>:3                                       ; preds = %1
  %tmp. = add i5 %i, -4, !dbg !215                ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp.65 = zext i5 %tmp. to i64, !dbg !215       ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx.key.addr = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.65, !dbg !215 ; [#uses=1 type=i8*] [debug line = 319:33]
  %ctx.key.load = load i8* %ctx.key.addr, align 4, !dbg !215 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp.66 = zext i5 %i to i64, !dbg !215          ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx.key.addr.1 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.66, !dbg !215 ; [#uses=2 type=i8*] [debug line = 319:33]
  %ctx.key.load.1 = load i8* %ctx.key.addr.1, align 4, !dbg !215 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp.67 = xor i8 %ctx.key.load.1, %ctx.key.load, !dbg !215 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp.67, i8* %ctx.key.addr.1, align 4, !dbg !215 ; [debug line = 319:33]
  %tmp.68 = add i5 %i, -3, !dbg !215              ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp.69 = zext i5 %tmp.68 to i64, !dbg !215     ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx.key.addr.2 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.69, !dbg !215 ; [#uses=1 type=i8*] [debug line = 319:33]
  %ctx.key.load.2 = load i8* %ctx.key.addr.2, align 1, !dbg !215 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp.70 = or i5 %i, 1, !dbg !215                ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp.71 = zext i5 %tmp.70 to i64, !dbg !215     ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx.key.addr.3 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.71, !dbg !215 ; [#uses=2 type=i8*] [debug line = 319:33]
  %ctx.key.load.3 = load i8* %ctx.key.addr.3, align 1, !dbg !215 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp.72 = xor i8 %ctx.key.load.3, %ctx.key.load.2, !dbg !215 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp.72, i8* %ctx.key.addr.3, align 1, !dbg !215 ; [debug line = 319:33]
  %tmp.73 = add i5 %i, -2, !dbg !215              ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp.74 = zext i5 %tmp.73 to i64, !dbg !215     ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx.key.addr.4 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.74, !dbg !215 ; [#uses=1 type=i8*] [debug line = 319:33]
  %ctx.key.load.4 = load i8* %ctx.key.addr.4, align 2, !dbg !215 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp.75 = or i5 %i, 2, !dbg !215                ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp.76 = zext i5 %tmp.75 to i64, !dbg !215     ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx.key.addr.5 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.76, !dbg !215 ; [#uses=2 type=i8*] [debug line = 319:33]
  %ctx.key.load.5 = load i8* %ctx.key.addr.5, align 2, !dbg !215 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp.77 = xor i8 %ctx.key.load.5, %ctx.key.load.4, !dbg !215 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp.77, i8* %ctx.key.addr.5, align 2, !dbg !215 ; [debug line = 319:33]
  %tmp.78 = add i5 %i, -1, !dbg !215              ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp.79 = zext i5 %tmp.78 to i64, !dbg !215     ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx.key.addr.6 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.79, !dbg !215 ; [#uses=1 type=i8*] [debug line = 319:33]
  %ctx.key.load.6 = load i8* %ctx.key.addr.6, align 1, !dbg !215 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp.80 = or i5 %i, 3, !dbg !215                ; [#uses=1 type=i5] [debug line = 319:33]
  %tmp.81 = zext i5 %tmp.80 to i64, !dbg !215     ; [#uses=1 type=i64] [debug line = 319:33]
  %ctx.key.addr.7 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.81, !dbg !215 ; [#uses=2 type=i8*] [debug line = 319:33]
  %ctx.key.load.7 = load i8* %ctx.key.addr.7, align 1, !dbg !215 ; [#uses=1 type=i8] [debug line = 319:33]
  %tmp.82 = xor i8 %ctx.key.load.7, %ctx.key.load.6, !dbg !215 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp.82, i8* %ctx.key.addr.7, align 1, !dbg !215 ; [debug line = 319:33]
  %i.4 = add i5 %i, -4, !dbg !216                 ; [#uses=1 type=i5] [debug line = 319:25]
  call void @llvm.dbg.value(metadata !{i5 %i.4}, i64 0, metadata !217), !dbg !216 ; [debug line = 319:25] [debug variable = i]
  br label %1, !dbg !216                          ; [debug line = 319:25]

; <label>:4                                       ; preds = %1
  %ctx.key.load.8 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 12), align 4, !dbg !218 ; [#uses=1 type=i8] [debug line = 322:5]
  %tmp.83 = zext i8 %ctx.key.load.8 to i64, !dbg !218 ; [#uses=1 type=i64] [debug line = 322:5]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.83, !dbg !218 ; [#uses=1 type=i8*] [debug line = 322:5]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !218 ; [#uses=1 type=i8] [debug line = 322:5]
  %ctx.key.load.9 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 16), align 16, !dbg !218 ; [#uses=1 type=i8] [debug line = 322:5]
  %tmp.84 = xor i8 %ctx.key.load.9, %sbox.load, !dbg !218 ; [#uses=1 type=i8] [debug line = 322:5]
  store i8 %tmp.84, i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 16), align 16, !dbg !218 ; [debug line = 322:5]
  %ctx.key.load.10 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 13), align 1, !dbg !219 ; [#uses=1 type=i8] [debug line = 323:5]
  %tmp.85 = zext i8 %ctx.key.load.10 to i64, !dbg !219 ; [#uses=1 type=i64] [debug line = 323:5]
  %sbox.addr.8 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.85, !dbg !219 ; [#uses=1 type=i8*] [debug line = 323:5]
  %sbox.load.8 = load i8* %sbox.addr.8, align 1, !dbg !219 ; [#uses=1 type=i8] [debug line = 323:5]
  %ctx.key.load.11 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 17), align 1, !dbg !219 ; [#uses=1 type=i8] [debug line = 323:5]
  %tmp.86 = xor i8 %ctx.key.load.11, %sbox.load.8, !dbg !219 ; [#uses=1 type=i8] [debug line = 323:5]
  store i8 %tmp.86, i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 17), align 1, !dbg !219 ; [debug line = 323:5]
  %ctx.key.load.12 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 14), align 2, !dbg !220 ; [#uses=1 type=i8] [debug line = 324:5]
  %tmp.87 = zext i8 %ctx.key.load.12 to i64, !dbg !220 ; [#uses=1 type=i64] [debug line = 324:5]
  %sbox.addr.9 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.87, !dbg !220 ; [#uses=1 type=i8*] [debug line = 324:5]
  %sbox.load.9 = load i8* %sbox.addr.9, align 1, !dbg !220 ; [#uses=1 type=i8] [debug line = 324:5]
  %ctx.key.load.13 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 18), align 2, !dbg !220 ; [#uses=1 type=i8] [debug line = 324:5]
  %tmp.88 = xor i8 %ctx.key.load.13, %sbox.load.9, !dbg !220 ; [#uses=1 type=i8] [debug line = 324:5]
  store i8 %tmp.88, i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 18), align 2, !dbg !220 ; [debug line = 324:5]
  %ctx.key.load.14 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 15), align 1, !dbg !221 ; [#uses=1 type=i8] [debug line = 325:5]
  %tmp.89 = zext i8 %ctx.key.load.14 to i64, !dbg !221 ; [#uses=1 type=i64] [debug line = 325:5]
  %sbox.addr.10 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.89, !dbg !221 ; [#uses=1 type=i8*] [debug line = 325:5]
  %sbox.load.10 = load i8* %sbox.addr.10, align 1, !dbg !221 ; [#uses=1 type=i8] [debug line = 325:5]
  %ctx.key.load.15 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 19), align 1, !dbg !221 ; [#uses=1 type=i8] [debug line = 325:5]
  %tmp.90 = xor i8 %ctx.key.load.15, %sbox.load.10, !dbg !221 ; [#uses=1 type=i8] [debug line = 325:5]
  store i8 %tmp.90, i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 19), align 1, !dbg !221 ; [debug line = 325:5]
  br label %5, !dbg !222                          ; [debug line = 327:9]

; <label>:5                                       ; preds = %7, %4
  %i.1 = phi i4 [ -4, %4 ], [ %i.5, %7 ]          ; [#uses=8 type=i4]
  %tmp.91 = icmp eq i4 %i.1, 0, !dbg !222         ; [#uses=1 type=i1] [debug line = 327:9]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp.91, label %8, label %7, !dbg !222    ; [debug line = 327:9]

; <label>:7                                       ; preds = %5
  %tmp.123.cast = zext i4 %i.1 to i5, !dbg !224   ; [#uses=3 type=i5] [debug line = 327:32]
  %tmp.102 = add i5 %tmp.123.cast, -4, !dbg !224  ; [#uses=1 type=i5] [debug line = 327:32]
  %tmp.103 = sext i5 %tmp.102 to i64, !dbg !224   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx.key.addr.8 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.103, !dbg !224 ; [#uses=1 type=i8*] [debug line = 327:32]
  %ctx.key.load.24 = load i8* %ctx.key.addr.8, align 4, !dbg !224 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp.104 = zext i4 %i.1 to i64, !dbg !224       ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx.key.addr.9 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.104, !dbg !224 ; [#uses=2 type=i8*] [debug line = 327:32]
  %ctx.key.load.25 = load i8* %ctx.key.addr.9, align 4, !dbg !224 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp.105 = xor i8 %ctx.key.load.25, %ctx.key.load.24, !dbg !224 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp.105, i8* %ctx.key.addr.9, align 4, !dbg !224 ; [debug line = 327:32]
  %tmp.106 = add i5 %tmp.123.cast, -3, !dbg !224  ; [#uses=1 type=i5] [debug line = 327:32]
  %tmp.107 = sext i5 %tmp.106 to i64, !dbg !224   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx.key.addr.10 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.107, !dbg !224 ; [#uses=1 type=i8*] [debug line = 327:32]
  %ctx.key.load.26 = load i8* %ctx.key.addr.10, align 1, !dbg !224 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp.108 = or i4 %i.1, 1, !dbg !224             ; [#uses=1 type=i4] [debug line = 327:32]
  %tmp.109 = zext i4 %tmp.108 to i64, !dbg !224   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx.key.addr.11 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.109, !dbg !224 ; [#uses=2 type=i8*] [debug line = 327:32]
  %ctx.key.load.27 = load i8* %ctx.key.addr.11, align 1, !dbg !224 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp.110 = xor i8 %ctx.key.load.27, %ctx.key.load.26, !dbg !224 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp.110, i8* %ctx.key.addr.11, align 1, !dbg !224 ; [debug line = 327:32]
  %tmp.111 = add i5 %tmp.123.cast, -2, !dbg !224  ; [#uses=1 type=i5] [debug line = 327:32]
  %tmp.112 = sext i5 %tmp.111 to i64, !dbg !224   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx.key.addr.12 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.112, !dbg !224 ; [#uses=1 type=i8*] [debug line = 327:32]
  %ctx.key.load.28 = load i8* %ctx.key.addr.12, align 2, !dbg !224 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp.113 = or i4 %i.1, 2, !dbg !224             ; [#uses=1 type=i4] [debug line = 327:32]
  %tmp.114 = zext i4 %tmp.113 to i64, !dbg !224   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx.key.addr.13 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.114, !dbg !224 ; [#uses=2 type=i8*] [debug line = 327:32]
  %ctx.key.load.29 = load i8* %ctx.key.addr.13, align 2, !dbg !224 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp.115 = xor i8 %ctx.key.load.29, %ctx.key.load.28, !dbg !224 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp.115, i8* %ctx.key.addr.13, align 2, !dbg !224 ; [debug line = 327:32]
  %tmp.116 = add i4 %i.1, -1, !dbg !224           ; [#uses=1 type=i4] [debug line = 327:32]
  %tmp.117 = zext i4 %tmp.116 to i64, !dbg !224   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx.key.addr.14 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.117, !dbg !224 ; [#uses=1 type=i8*] [debug line = 327:32]
  %ctx.key.load.30 = load i8* %ctx.key.addr.14, align 1, !dbg !224 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp.118 = or i4 %i.1, 3, !dbg !224             ; [#uses=1 type=i4] [debug line = 327:32]
  %tmp.119 = zext i4 %tmp.118 to i64, !dbg !224   ; [#uses=1 type=i64] [debug line = 327:32]
  %ctx.key.addr.15 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.119, !dbg !224 ; [#uses=2 type=i8*] [debug line = 327:32]
  %ctx.key.load.31 = load i8* %ctx.key.addr.15, align 1, !dbg !224 ; [#uses=1 type=i8] [debug line = 327:32]
  %tmp.120 = xor i8 %ctx.key.load.31, %ctx.key.load.30, !dbg !224 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp.120, i8* %ctx.key.addr.15, align 1, !dbg !224 ; [debug line = 327:32]
  %i.5 = add i4 %i.1, -4, !dbg !225               ; [#uses=1 type=i4] [debug line = 327:24]
  br label %5, !dbg !225                          ; [debug line = 327:24]

; <label>:8                                       ; preds = %5
  %tmp.92 = lshr i8 %rc.read, 1, !dbg !226        ; [#uses=1 type=i8] [debug line = 330:5]
  %rc.read.cast = trunc i8 %rc.read to i1, !dbg !226 ; [#uses=1 type=i1] [debug line = 330:5]
  %tmp.93 = select i1 %rc.read.cast, i8 -115, i8 0, !dbg !226 ; [#uses=1 type=i8] [debug line = 330:5]
  %rc.write.assign = xor i8 %tmp.93, %tmp.92, !dbg !226 ; [#uses=2 type=i8] [debug line = 330:5]
  %ctx.key.load.16 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 29), align 1, !dbg !227 ; [#uses=1 type=i8] [debug line = 331:5]
  %tmp.94 = zext i8 %ctx.key.load.16 to i64, !dbg !227 ; [#uses=1 type=i64] [debug line = 331:5]
  %sbox.addr.11 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.94, !dbg !227 ; [#uses=1 type=i8*] [debug line = 331:5]
  %sbox.load.11 = load i8* %sbox.addr.11, align 1, !dbg !227 ; [#uses=1 type=i8] [debug line = 331:5]
  %ctx.key.load.17 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 0), align 16, !dbg !227 ; [#uses=1 type=i8] [debug line = 331:5]
  %tmp1 = xor i8 %ctx.key.load.17, %rc.write.assign, !dbg !227 ; [#uses=1 type=i8] [debug line = 331:5]
  %tmp.95 = xor i8 %tmp1, %sbox.load.11, !dbg !227 ; [#uses=1 type=i8] [debug line = 331:5]
  store i8 %tmp.95, i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 0), align 16, !dbg !227 ; [debug line = 331:5]
  %ctx.key.load.18 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 30), align 2, !dbg !228 ; [#uses=1 type=i8] [debug line = 332:5]
  %tmp.96 = zext i8 %ctx.key.load.18 to i64, !dbg !228 ; [#uses=1 type=i64] [debug line = 332:5]
  %sbox.addr.12 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.96, !dbg !228 ; [#uses=1 type=i8*] [debug line = 332:5]
  %sbox.load.12 = load i8* %sbox.addr.12, align 1, !dbg !228 ; [#uses=1 type=i8] [debug line = 332:5]
  %ctx.key.load.19 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 1), align 1, !dbg !228 ; [#uses=1 type=i8] [debug line = 332:5]
  %tmp.97 = xor i8 %ctx.key.load.19, %sbox.load.12, !dbg !228 ; [#uses=1 type=i8] [debug line = 332:5]
  store i8 %tmp.97, i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 1), align 1, !dbg !228 ; [debug line = 332:5]
  %ctx.key.load.20 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 31), align 1, !dbg !229 ; [#uses=1 type=i8] [debug line = 333:5]
  %tmp.98 = zext i8 %ctx.key.load.20 to i64, !dbg !229 ; [#uses=1 type=i64] [debug line = 333:5]
  %sbox.addr.13 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.98, !dbg !229 ; [#uses=1 type=i8*] [debug line = 333:5]
  %sbox.load.13 = load i8* %sbox.addr.13, align 1, !dbg !229 ; [#uses=1 type=i8] [debug line = 333:5]
  %ctx.key.load.21 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 2), align 2, !dbg !229 ; [#uses=1 type=i8] [debug line = 333:5]
  %tmp.99 = xor i8 %ctx.key.load.21, %sbox.load.13, !dbg !229 ; [#uses=1 type=i8] [debug line = 333:5]
  store i8 %tmp.99, i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 2), align 2, !dbg !229 ; [debug line = 333:5]
  %ctx.key.load.22 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 28), align 4, !dbg !230 ; [#uses=1 type=i8] [debug line = 334:5]
  %tmp.100 = zext i8 %ctx.key.load.22 to i64, !dbg !230 ; [#uses=1 type=i64] [debug line = 334:5]
  %sbox.addr.14 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.100, !dbg !230 ; [#uses=1 type=i8*] [debug line = 334:5]
  %sbox.load.14 = load i8* %sbox.addr.14, align 1, !dbg !230 ; [#uses=1 type=i8] [debug line = 334:5]
  %ctx.key.load.23 = load i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 3), align 1, !dbg !230 ; [#uses=1 type=i8] [debug line = 334:5]
  %tmp.101 = xor i8 %ctx.key.load.23, %sbox.load.14, !dbg !230 ; [#uses=1 type=i8] [debug line = 334:5]
  store i8 %tmp.101, i8* getelementptr inbounds ([32 x i8]* @ctx.key, i64 0, i64 3), align 1, !dbg !230 ; [debug line = 334:5]
  call void @llvm.dbg.value(metadata !{i8 %rc.write.assign}, i64 0, metadata !231), !dbg !211 ; [debug line = 315:56] [debug variable = rc]
  ret i8 %rc.write.assign, !dbg !232              ; [debug line = 335:1]
}

; [#uses=6]
define internal fastcc void @aes_addRoundKey([16 x i8]* nocapture %buf, [32 x i8]* nocapture %key, i6 %key.offset) {
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !233), !dbg !235 ; [debug line = 210:44] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %key}, i64 0, metadata !236), !dbg !237 ; [debug line = 210:64] [debug variable = key]
  br label %1, !dbg !238                          ; [debug line = 214:5]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ -16, %0 ], [ %i.5, %3 ]           ; [#uses=2 type=i5]
  %i.5 = add i5 %i, -1, !dbg !238                 ; [#uses=3 type=i5] [debug line = 214:5]
  %i.6.cast = sext i5 %i.5 to i8, !dbg !238       ; [#uses=1 type=i8] [debug line = 214:5]
  call void @llvm.dbg.value(metadata !{i5 %i.5}, i64 0, metadata !240), !dbg !238 ; [debug line = 214:5] [debug variable = i]
  %tmp = icmp eq i5 %i, 0, !dbg !238              ; [#uses=1 type=i1] [debug line = 214:5]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp, label %4, label %3, !dbg !238       ; [debug line = 214:5]

; <label>:3                                       ; preds = %1
  %tmp. = zext i8 %i.6.cast to i64, !dbg !241     ; [#uses=1 type=i64] [debug line = 214:17]
  %key.offset.cast = trunc i6 %key.offset to i5   ; [#uses=1 type=i5]
  %sum = add i5 %key.offset.cast, %i.5            ; [#uses=1 type=i5]
  %sum.cast = zext i5 %sum to i64                 ; [#uses=1 type=i64]
  %key.addr = getelementptr [32 x i8]* %key, i64 0, i64 %sum.cast, !dbg !241 ; [#uses=1 type=i8*] [debug line = 214:17]
  %key.load = load i8* %key.addr, align 1, !dbg !241 ; [#uses=1 type=i8] [debug line = 214:17]
  %buf.addr = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp., !dbg !241 ; [#uses=2 type=i8*] [debug line = 214:17]
  %buf.load = load i8* %buf.addr, align 1, !dbg !241 ; [#uses=1 type=i8] [debug line = 214:17]
  %tmp.121 = xor i8 %buf.load, %key.load, !dbg !241 ; [#uses=1 type=i8] [debug line = 214:17]
  store i8 %tmp.121, i8* %buf.addr, align 1, !dbg !241 ; [debug line = 214:17]
  br label %1, !dbg !241                          ; [debug line = 214:17]

; <label>:4                                       ; preds = %1
  ret void, !dbg !242                             ; [debug line = 215:1]
}

; [#uses=0]
define void @aes256cbc([64 x i8]* %memptr, i3 zeroext %mode, i32 %inbuf_addr, i32 %outbuf_addr) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i8]* %memptr) nounwind, !map !243
  call void (...)* @_ssdm_op_SpecBitsMap(i3 %mode) nounwind, !map !249
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %inbuf_addr) nounwind, !map !255
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %outbuf_addr) nounwind, !map !259
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @aes256cbc.str) nounwind
  %buf = alloca [16 x i8], align 16               ; [#uses=10 type=[16 x i8]*]
  call void @llvm.dbg.value(metadata !{[64 x i8]* %memptr}, i64 0, metadata !263), !dbg !267 ; [debug line = 8:30] [debug variable = memptr]
  call void @llvm.dbg.value(metadata !{i3 %mode}, i64 0, metadata !268), !dbg !269 ; [debug line = 8:55] [debug variable = mode]
  call void @llvm.dbg.value(metadata !{i32 %inbuf_addr}, i64 0, metadata !270), !dbg !271 ; [debug line = 8:70] [debug variable = inbuf_addr]
  call void @llvm.dbg.value(metadata !{i32 %outbuf_addr}, i64 0, metadata !272), !dbg !273 ; [debug line = 8:91] [debug variable = outbuf_addr]
  call void (...)* @_ssdm_op_SpecInterface(i32 %outbuf_addr, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !274 ; [debug line = 9:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %inbuf_addr, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !276 ; [debug line = 10:1]
  call void (...)* @_ssdm_op_SpecInterface([64 x i8]* %memptr, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 64, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i3 %mode, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !277 ; [debug line = 12:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !278 ; [debug line = 13:1]
  call void @llvm.dbg.declare(metadata !{[16 x i8]* %buf}, metadata !279), !dbg !280 ; [debug line = 15:16] [debug variable = buf]
  switch i3 %mode, label %.loopexit [
    i3 0, label %.preheader17.preheader
    i3 1, label %.preheader16.preheader
    i3 2, label %.preheader12.preheader
    i3 3, label %.preheader6.preheader
    i3 -4, label %.preheader.preheader
  ], !dbg !281                                    ; [debug line = 23:5]

.preheader17.preheader:                           ; preds = %0
  br label %.preheader17, !dbg !282               ; [debug line = 25:10]

.preheader16.preheader:                           ; preds = %0
  %tmp..cast = trunc i32 %inbuf_addr to i8, !dbg !285 ; [#uses=1 type=i8] [debug line = 31:10]
  br label %.preheader16, !dbg !285               ; [debug line = 31:10]

.preheader12.preheader:                           ; preds = %0
  %tmp.144.cast = trunc i32 %inbuf_addr to i8, !dbg !287 ; [#uses=1 type=i8] [debug line = 47:10]
  br label %.preheader12, !dbg !287               ; [debug line = 47:10]

.preheader6.preheader:                            ; preds = %0
  %tmp.145.cast = trunc i32 %inbuf_addr to i8, !dbg !289 ; [#uses=1 type=i8] [debug line = 65:10]
  br label %.preheader6, !dbg !289                ; [debug line = 65:10]

.preheader.preheader:                             ; preds = %0
  %tmp.146.cast = trunc i32 %inbuf_addr to i8, !dbg !291 ; [#uses=1 type=i8] [debug line = 71:10]
  br label %.preheader, !dbg !291                 ; [debug line = 71:10]

.preheader17:                                     ; preds = %2, %.preheader17.preheader
  %i = phi i5 [ %i.11, %2 ], [ 0, %.preheader17.preheader ] ; [#uses=3 type=i5]
  %tmp. = icmp eq i5 %i, -16, !dbg !282           ; [#uses=1 type=i1] [debug line = 25:10]
  %1 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp., label %.preheader31.preheader, label %2, !dbg !282 ; [debug line = 25:10]

.preheader31.preheader:                           ; preds = %.preheader17
  br label %.preheader31, !dbg !293               ; [debug line = 344:10@26:6]

; <label>:2                                       ; preds = %.preheader17
  %tmp.126 = zext i5 %i to i64, !dbg !307         ; [#uses=2 type=i64] [debug line = 25:27]
  %iv.addr = getelementptr inbounds [16 x i8]* @iv, i64 0, i64 %tmp.126, !dbg !307 ; [#uses=1 type=i8*] [debug line = 25:27]
  %iv.load = load i8* %iv.addr, align 1, !dbg !307 ; [#uses=1 type=i8] [debug line = 25:27]
  %xorv.addr = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.126, !dbg !307 ; [#uses=1 type=i8*] [debug line = 25:27]
  store i8 %iv.load, i8* %xorv.addr, align 1, !dbg !307 ; [debug line = 25:27]
  %i.11 = add i5 %i, 1, !dbg !309                 ; [#uses=1 type=i5] [debug line = 25:21]
  call void @llvm.dbg.value(metadata !{i5 %i.11}, i64 0, metadata !310), !dbg !309 ; [debug line = 25:21] [debug variable = i]
  br label %.preheader17, !dbg !309               ; [debug line = 25:21]

.preheader31:                                     ; preds = %4, %.preheader31.preheader
  %i.i = phi i6 [ %i.23, %4 ], [ 0, %.preheader31.preheader ] ; [#uses=3 type=i6]
  %tmp.i = icmp eq i6 %i.i, -32, !dbg !293        ; [#uses=1 type=i1] [debug line = 344:10@26:6]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.i, label %.preheader.i.preheader, label %4, !dbg !293 ; [debug line = 344:10@26:6]

.preheader.i.preheader:                           ; preds = %.preheader31
  br label %.preheader.i, !dbg !311               ; [debug line = 345:10@26:6]

; <label>:4                                       ; preds = %.preheader31
  %tmp..i = zext i6 %i.i to i64, !dbg !313        ; [#uses=3 type=i64] [debug line = 344:44@26:6]
  %key.addr.1 = getelementptr [32 x i8]* @key, i64 0, i64 %tmp..i, !dbg !313 ; [#uses=1 type=i8*] [debug line = 344:44@26:6]
  %key.load = load i8* %key.addr.1, align 1, !dbg !313 ; [#uses=2 type=i8] [debug line = 344:44@26:6]
  %ctx.deckey.addr = getelementptr [32 x i8]* @ctx.deckey, i64 0, i64 %tmp..i, !dbg !313 ; [#uses=1 type=i8*] [debug line = 344:44@26:6]
  store i8 %key.load, i8* %ctx.deckey.addr, align 1, !dbg !313 ; [debug line = 344:44@26:6]
  %ctx.enckey.addr = getelementptr [32 x i8]* @ctx.enckey, i64 0, i64 %tmp..i, !dbg !313 ; [#uses=1 type=i8*] [debug line = 344:44@26:6]
  store i8 %key.load, i8* %ctx.enckey.addr, align 1, !dbg !313 ; [debug line = 344:44@26:6]
  %i.23 = add i6 %i.i, 1, !dbg !314               ; [#uses=1 type=i6] [debug line = 344:39@26:6]
  call void @llvm.dbg.value(metadata !{i6 %i.23}, i64 0, metadata !315) nounwind, !dbg !314 ; [debug line = 344:39@26:6] [debug variable = i]
  br label %.preheader31, !dbg !314               ; [debug line = 344:39@26:6]

.preheader.i:                                     ; preds = %6, %.preheader.i.preheader
  %rcon.i = phi i8 [ %rcon, %6 ], [ 1, %.preheader.i.preheader ] ; [#uses=1 type=i8]
  %i.24 = phi i3 [ %phitmp.i, %6 ], [ -1, %.preheader.i.preheader ] ; [#uses=2 type=i3]
  call void @llvm.dbg.value(metadata !{i3 %i.24}, i64 0, metadata !315) nounwind, !dbg !311 ; [debug line = 345:10@26:6] [debug variable = i]
  %tmp.212.i = icmp eq i3 %i.24, 0, !dbg !311     ; [#uses=1 type=i1] [debug line = 345:10@26:6]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.212.i, label %.loopexit.loopexit21, label %6, !dbg !311 ; [debug line = 345:10@26:6]

; <label>:6                                       ; preds = %.preheader.i
  %rcon = call fastcc i8 @aes_expandEncKey([32 x i8]* @ctx.deckey, i8 %rcon.i) nounwind, !dbg !316 ; [#uses=1 type=i8] [debug line = 345:23@26:6]
  call void @llvm.dbg.value(metadata !{i8 %rcon}, i64 0, metadata !317) nounwind, !dbg !316 ; [debug line = 345:23@26:6] [debug variable = rcon]
  %phitmp.i = add i3 %i.24, -1, !dbg !316         ; [#uses=1 type=i3] [debug line = 345:23@26:6]
  br label %.preheader.i, !dbg !316               ; [debug line = 345:23@26:6]

.preheader16:                                     ; preds = %8, %.preheader16.preheader
  %i.1 = phi i5 [ %i.12, %8 ], [ 0, %.preheader16.preheader ] ; [#uses=4 type=i5]
  %tmp.122 = icmp eq i5 %i.1, -16, !dbg !285      ; [#uses=1 type=i1] [debug line = 31:10]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.122, label %.preheader15.preheader, label %8, !dbg !285 ; [debug line = 31:10]

.preheader15.preheader:                           ; preds = %.preheader16
  br label %.preheader15, !dbg !318               ; [debug line = 34:10]

; <label>:8                                       ; preds = %.preheader16
  %tmp.127 = zext i5 %i.1 to i64, !dbg !320       ; [#uses=1 type=i64] [debug line = 32:7]
  %tmp.153.cast = zext i5 %i.1 to i8              ; [#uses=1 type=i8]
  %sum = add i8 %tmp.153.cast, %tmp..cast         ; [#uses=1 type=i8]
  %sum.cast = zext i8 %sum to i64                 ; [#uses=1 type=i64]
  %memptr.addr = getelementptr [64 x i8]* %memptr, i64 0, i64 %sum.cast, !dbg !320 ; [#uses=1 type=i8*] [debug line = 32:7]
  %memptr.load = load i8* %memptr.addr, align 1, !dbg !320 ; [#uses=1 type=i8] [debug line = 32:7]
  %buf.addr = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.127, !dbg !320 ; [#uses=1 type=i8*] [debug line = 32:7]
  store i8 %memptr.load, i8* %buf.addr, align 1, !dbg !320 ; [debug line = 32:7]
  %i.12 = add i5 %i.1, 1, !dbg !321               ; [#uses=1 type=i5] [debug line = 31:21]
  call void @llvm.dbg.value(metadata !{i5 %i.12}, i64 0, metadata !310), !dbg !321 ; [debug line = 31:21] [debug variable = i]
  br label %.preheader16, !dbg !321               ; [debug line = 31:21]

.preheader15:                                     ; preds = %10, %.preheader15.preheader
  %i.2 = phi i5 [ %i.16, %10 ], [ 0, %.preheader15.preheader ] ; [#uses=3 type=i5]
  %tmp.131 = icmp eq i5 %i.2, -16, !dbg !318      ; [#uses=1 type=i1] [debug line = 34:10]
  %9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.131, label %11, label %10, !dbg !318 ; [debug line = 34:10]

; <label>:10                                      ; preds = %.preheader15
  %tmp.133 = zext i5 %i.2 to i64, !dbg !322       ; [#uses=2 type=i64] [debug line = 34:28]
  %buf.addr.5 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.133, !dbg !322 ; [#uses=2 type=i8*] [debug line = 34:28]
  %buf.load = load i8* %buf.addr.5, align 1, !dbg !322 ; [#uses=1 type=i8] [debug line = 34:28]
  %xorv.addr.1 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.133, !dbg !322 ; [#uses=1 type=i8*] [debug line = 34:28]
  %xorv.load = load i8* %xorv.addr.1, align 1, !dbg !322 ; [#uses=1 type=i8] [debug line = 34:28]
  %tmp.134 = xor i8 %xorv.load, %buf.load, !dbg !322 ; [#uses=1 type=i8] [debug line = 34:28]
  store i8 %tmp.134, i8* %buf.addr.5, align 1, !dbg !322 ; [debug line = 34:28]
  %i.16 = add i5 %i.2, 1, !dbg !324               ; [#uses=1 type=i5] [debug line = 34:21]
  call void @llvm.dbg.value(metadata !{i5 %i.16}, i64 0, metadata !310), !dbg !324 ; [debug line = 34:21] [debug variable = i]
  br label %.preheader15, !dbg !324               ; [debug line = 34:21]

; <label>:11                                      ; preds = %.preheader15
  call fastcc void @aes256_encrypt_ecb([16 x i8]* %buf) nounwind, !dbg !325 ; [debug line = 36:6]
  br label %12, !dbg !326                         ; [debug line = 38:10]

; <label>:12                                      ; preds = %14, %11
  %i.3 = phi i5 [ 0, %11 ], [ %i.18, %14 ]        ; [#uses=3 type=i5]
  %tmp.136 = icmp eq i5 %i.3, -16, !dbg !326      ; [#uses=1 type=i1] [debug line = 38:10]
  %13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.136, label %.preheader13.preheader, label %14, !dbg !326 ; [debug line = 38:10]

.preheader13.preheader:                           ; preds = %12
  %tmp.164.cast = trunc i32 %outbuf_addr to i8, !dbg !328 ; [#uses=1 type=i8] [debug line = 41:10]
  br label %.preheader13, !dbg !328               ; [debug line = 41:10]

; <label>:14                                      ; preds = %12
  %tmp.138 = zext i5 %i.3 to i64, !dbg !330       ; [#uses=2 type=i64] [debug line = 38:28]
  %buf.addr.7 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.138, !dbg !330 ; [#uses=1 type=i8*] [debug line = 38:28]
  %buf.load.2 = load i8* %buf.addr.7, align 1, !dbg !330 ; [#uses=1 type=i8] [debug line = 38:28]
  %xorv.addr.2 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.138, !dbg !330 ; [#uses=1 type=i8*] [debug line = 38:28]
  store i8 %buf.load.2, i8* %xorv.addr.2, align 1, !dbg !330 ; [debug line = 38:28]
  %i.18 = add i5 %i.3, 1, !dbg !332               ; [#uses=1 type=i5] [debug line = 38:21]
  call void @llvm.dbg.value(metadata !{i5 %i.18}, i64 0, metadata !310), !dbg !332 ; [debug line = 38:21] [debug variable = i]
  br label %12, !dbg !332                         ; [debug line = 38:21]

.preheader13:                                     ; preds = %16, %.preheader13.preheader
  %i.4 = phi i5 [ %i.20, %16 ], [ 0, %.preheader13.preheader ] ; [#uses=4 type=i5]
  %tmp.141 = icmp eq i5 %i.4, -16, !dbg !328      ; [#uses=1 type=i1] [debug line = 41:10]
  %15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.141, label %.loopexit.loopexit20, label %16, !dbg !328 ; [debug line = 41:10]

; <label>:16                                      ; preds = %.preheader13
  %tmp.143 = zext i5 %i.4 to i64, !dbg !333       ; [#uses=1 type=i64] [debug line = 42:7]
  %tmp.170.cast = zext i5 %i.4 to i8, !dbg !333   ; [#uses=1 type=i8] [debug line = 42:7]
  %buf.addr.9 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.143, !dbg !333 ; [#uses=1 type=i8*] [debug line = 42:7]
  %buf.load.4 = load i8* %buf.addr.9, align 1, !dbg !333 ; [#uses=1 type=i8] [debug line = 42:7]
  %sum2 = add i8 %tmp.170.cast, %tmp.164.cast     ; [#uses=1 type=i8]
  %sum2.cast = zext i8 %sum2 to i64               ; [#uses=1 type=i64]
  %memptr.addr.4 = getelementptr [64 x i8]* %memptr, i64 0, i64 %sum2.cast, !dbg !333 ; [#uses=1 type=i8*] [debug line = 42:7]
  store i8 %buf.load.4, i8* %memptr.addr.4, align 1, !dbg !333 ; [debug line = 42:7]
  %i.20 = add i5 %i.4, 1, !dbg !334               ; [#uses=1 type=i5] [debug line = 41:21]
  call void @llvm.dbg.value(metadata !{i5 %i.20}, i64 0, metadata !310), !dbg !334 ; [debug line = 41:21] [debug variable = i]
  br label %.preheader13, !dbg !334               ; [debug line = 41:21]

.preheader12:                                     ; preds = %18, %.preheader12.preheader
  %i.5 = phi i5 [ %i.13, %18 ], [ 0, %.preheader12.preheader ] ; [#uses=4 type=i5]
  %tmp.123 = icmp eq i5 %i.5, -16, !dbg !287      ; [#uses=1 type=i1] [debug line = 47:10]
  %17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.123, label %.preheader11.preheader, label %18, !dbg !287 ; [debug line = 47:10]

.preheader11.preheader:                           ; preds = %.preheader12
  br label %.preheader11, !dbg !335               ; [debug line = 50:10]

; <label>:18                                      ; preds = %.preheader12
  %tmp.128 = zext i5 %i.5 to i64, !dbg !337       ; [#uses=1 type=i64] [debug line = 48:7]
  %tmp.154.cast = zext i5 %i.5 to i8              ; [#uses=1 type=i8]
  %sum4 = add i8 %tmp.154.cast, %tmp.144.cast     ; [#uses=1 type=i8]
  %sum4.cast = zext i8 %sum4 to i64               ; [#uses=1 type=i64]
  %memptr.addr.1 = getelementptr [64 x i8]* %memptr, i64 0, i64 %sum4.cast, !dbg !337 ; [#uses=1 type=i8*] [debug line = 48:7]
  %memptr.load.1 = load i8* %memptr.addr.1, align 1, !dbg !337 ; [#uses=1 type=i8] [debug line = 48:7]
  %buf.addr.4 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.128, !dbg !337 ; [#uses=1 type=i8*] [debug line = 48:7]
  store i8 %memptr.load.1, i8* %buf.addr.4, align 1, !dbg !337 ; [debug line = 48:7]
  %i.13 = add i5 %i.5, 1, !dbg !338               ; [#uses=1 type=i5] [debug line = 47:21]
  call void @llvm.dbg.value(metadata !{i5 %i.13}, i64 0, metadata !310), !dbg !338 ; [debug line = 47:21] [debug variable = i]
  br label %.preheader12, !dbg !338               ; [debug line = 47:21]

.preheader11:                                     ; preds = %20, %.preheader11.preheader
  %i.6 = phi i5 [ %i.17, %20 ], [ 0, %.preheader11.preheader ] ; [#uses=3 type=i5]
  %tmp.132 = icmp eq i5 %i.6, -16, !dbg !335      ; [#uses=1 type=i1] [debug line = 50:10]
  %19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.132, label %21, label %20, !dbg !335 ; [debug line = 50:10]

; <label>:20                                      ; preds = %.preheader11
  %tmp.135 = zext i5 %i.6 to i64, !dbg !339       ; [#uses=2 type=i64] [debug line = 50:28]
  %buf.addr.6 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.135, !dbg !339 ; [#uses=1 type=i8*] [debug line = 50:28]
  %buf.load.1 = load i8* %buf.addr.6, align 1, !dbg !339 ; [#uses=1 type=i8] [debug line = 50:28]
  %lastbuf.addr = getelementptr inbounds [16 x i8]* @lastbuf, i64 0, i64 %tmp.135, !dbg !339 ; [#uses=1 type=i8*] [debug line = 50:28]
  store i8 %buf.load.1, i8* %lastbuf.addr, align 1, !dbg !339 ; [debug line = 50:28]
  %i.17 = add i5 %i.6, 1, !dbg !341               ; [#uses=1 type=i5] [debug line = 50:21]
  call void @llvm.dbg.value(metadata !{i5 %i.17}, i64 0, metadata !310), !dbg !341 ; [debug line = 50:21] [debug variable = i]
  br label %.preheader11, !dbg !341               ; [debug line = 50:21]

; <label>:21                                      ; preds = %.preheader11
  call fastcc void @aes256_decrypt_ecb([16 x i8]* %buf) nounwind, !dbg !342 ; [debug line = 52:6]
  br label %22, !dbg !343                         ; [debug line = 54:10]

; <label>:22                                      ; preds = %24, %21
  %i.7 = phi i5 [ 0, %21 ], [ %i.19, %24 ]        ; [#uses=3 type=i5]
  %tmp.137 = icmp eq i5 %i.7, -16, !dbg !343      ; [#uses=1 type=i1] [debug line = 54:10]
  %23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.137, label %.preheader10.preheader, label %24, !dbg !343 ; [debug line = 54:10]

.preheader10.preheader:                           ; preds = %22
  br label %.preheader10, !dbg !345               ; [debug line = 56:10]

; <label>:24                                      ; preds = %22
  %tmp.139 = zext i5 %i.7 to i64, !dbg !347       ; [#uses=2 type=i64] [debug line = 54:28]
  %buf.addr.8 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.139, !dbg !347 ; [#uses=2 type=i8*] [debug line = 54:28]
  %buf.load.3 = load i8* %buf.addr.8, align 1, !dbg !347 ; [#uses=1 type=i8] [debug line = 54:28]
  %xorv.addr.3 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.139, !dbg !347 ; [#uses=1 type=i8*] [debug line = 54:28]
  %xorv.load.1 = load i8* %xorv.addr.3, align 1, !dbg !347 ; [#uses=1 type=i8] [debug line = 54:28]
  %tmp.140 = xor i8 %xorv.load.1, %buf.load.3, !dbg !347 ; [#uses=1 type=i8] [debug line = 54:28]
  store i8 %tmp.140, i8* %buf.addr.8, align 1, !dbg !347 ; [debug line = 54:28]
  %i.19 = add i5 %i.7, 1, !dbg !349               ; [#uses=1 type=i5] [debug line = 54:21]
  call void @llvm.dbg.value(metadata !{i5 %i.19}, i64 0, metadata !310), !dbg !349 ; [debug line = 54:21] [debug variable = i]
  br label %22, !dbg !349                         ; [debug line = 54:21]

.preheader10:                                     ; preds = %26, %.preheader10.preheader
  %i.8 = phi i5 [ %i.21, %26 ], [ 0, %.preheader10.preheader ] ; [#uses=3 type=i5]
  %tmp.142 = icmp eq i5 %i.8, -16, !dbg !345      ; [#uses=1 type=i1] [debug line = 56:10]
  %25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.142, label %.preheader8.preheader, label %26, !dbg !345 ; [debug line = 56:10]

.preheader8.preheader:                            ; preds = %.preheader10
  %tmp.171.cast = trunc i32 %outbuf_addr to i8, !dbg !350 ; [#uses=1 type=i8] [debug line = 59:10]
  br label %.preheader8, !dbg !350                ; [debug line = 59:10]

; <label>:26                                      ; preds = %.preheader10
  %tmp.144 = zext i5 %i.8 to i64, !dbg !352       ; [#uses=2 type=i64] [debug line = 56:28]
  %lastbuf.addr.1 = getelementptr inbounds [16 x i8]* @lastbuf, i64 0, i64 %tmp.144, !dbg !352 ; [#uses=1 type=i8*] [debug line = 56:28]
  %lastbuf.load = load i8* %lastbuf.addr.1, align 1, !dbg !352 ; [#uses=1 type=i8] [debug line = 56:28]
  %xorv.addr.4 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.144, !dbg !352 ; [#uses=1 type=i8*] [debug line = 56:28]
  store i8 %lastbuf.load, i8* %xorv.addr.4, align 1, !dbg !352 ; [debug line = 56:28]
  %i.21 = add i5 %i.8, 1, !dbg !354               ; [#uses=1 type=i5] [debug line = 56:21]
  call void @llvm.dbg.value(metadata !{i5 %i.21}, i64 0, metadata !310), !dbg !354 ; [debug line = 56:21] [debug variable = i]
  br label %.preheader10, !dbg !354               ; [debug line = 56:21]

.preheader8:                                      ; preds = %28, %.preheader8.preheader
  %i.9 = phi i5 [ %i.22, %28 ], [ 0, %.preheader8.preheader ] ; [#uses=4 type=i5]
  %tmp.145 = icmp eq i5 %i.9, -16, !dbg !350      ; [#uses=1 type=i1] [debug line = 59:10]
  %27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.145, label %.loopexit.loopexit19, label %28, !dbg !350 ; [debug line = 59:10]

; <label>:28                                      ; preds = %.preheader8
  %tmp.146 = zext i5 %i.9 to i64, !dbg !355       ; [#uses=1 type=i64] [debug line = 60:7]
  %tmp.174.cast = zext i5 %i.9 to i8, !dbg !355   ; [#uses=1 type=i8] [debug line = 60:7]
  %buf.addr.10 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.146, !dbg !355 ; [#uses=1 type=i8*] [debug line = 60:7]
  %buf.load.5 = load i8* %buf.addr.10, align 1, !dbg !355 ; [#uses=1 type=i8] [debug line = 60:7]
  %sum6 = add i8 %tmp.174.cast, %tmp.171.cast     ; [#uses=1 type=i8]
  %sum6.cast = zext i8 %sum6 to i64               ; [#uses=1 type=i64]
  %memptr.addr.5 = getelementptr [64 x i8]* %memptr, i64 0, i64 %sum6.cast, !dbg !355 ; [#uses=1 type=i8*] [debug line = 60:7]
  store i8 %buf.load.5, i8* %memptr.addr.5, align 1, !dbg !355 ; [debug line = 60:7]
  %i.22 = add i5 %i.9, 1, !dbg !356               ; [#uses=1 type=i5] [debug line = 59:21]
  call void @llvm.dbg.value(metadata !{i5 %i.22}, i64 0, metadata !310), !dbg !356 ; [debug line = 59:21] [debug variable = i]
  br label %.preheader8, !dbg !356                ; [debug line = 59:21]

.preheader6:                                      ; preds = %30, %.preheader6.preheader
  %i. = phi i5 [ %i.14, %30 ], [ 0, %.preheader6.preheader ] ; [#uses=4 type=i5]
  %tmp.124 = icmp eq i5 %i., -16, !dbg !289       ; [#uses=1 type=i1] [debug line = 65:10]
  %29 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.124, label %.loopexit.loopexit18, label %30, !dbg !289 ; [debug line = 65:10]

; <label>:30                                      ; preds = %.preheader6
  %tmp.129 = zext i5 %i. to i64, !dbg !357        ; [#uses=1 type=i64] [debug line = 66:7]
  %tmp.155.cast = zext i5 %i. to i8               ; [#uses=1 type=i8]
  %sum8 = add i8 %tmp.155.cast, %tmp.145.cast     ; [#uses=1 type=i8]
  %sum8.cast = zext i8 %sum8 to i64               ; [#uses=1 type=i64]
  %memptr.addr.2 = getelementptr [64 x i8]* %memptr, i64 0, i64 %sum8.cast, !dbg !357 ; [#uses=1 type=i8*] [debug line = 66:7]
  %memptr.load.2 = load i8* %memptr.addr.2, align 1, !dbg !357 ; [#uses=1 type=i8] [debug line = 66:7]
  %iv.addr.1 = getelementptr inbounds [16 x i8]* @iv, i64 0, i64 %tmp.129, !dbg !357 ; [#uses=1 type=i8*] [debug line = 66:7]
  store i8 %memptr.load.2, i8* %iv.addr.1, align 1, !dbg !357 ; [debug line = 66:7]
  %i.14 = add i5 %i., 1, !dbg !358                ; [#uses=1 type=i5] [debug line = 65:21]
  call void @llvm.dbg.value(metadata !{i5 %i.14}, i64 0, metadata !310), !dbg !358 ; [debug line = 65:21] [debug variable = i]
  br label %.preheader6, !dbg !358                ; [debug line = 65:21]

.preheader:                                       ; preds = %32, %.preheader.preheader
  %i.10 = phi i6 [ %i.15, %32 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i6]
  %tmp.125 = icmp eq i6 %i.10, -32, !dbg !291     ; [#uses=1 type=i1] [debug line = 71:10]
  %31 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.125, label %.loopexit.loopexit, label %32, !dbg !291 ; [debug line = 71:10]

; <label>:32                                      ; preds = %.preheader
  %tmp.130 = zext i6 %i.10 to i64, !dbg !359      ; [#uses=1 type=i64] [debug line = 72:7]
  %tmp.156.cast = zext i6 %i.10 to i8             ; [#uses=1 type=i8]
  %sum1 = add i8 %tmp.156.cast, %tmp.146.cast     ; [#uses=1 type=i8]
  %sum1.cast = zext i8 %sum1 to i64               ; [#uses=1 type=i64]
  %memptr.addr.3 = getelementptr [64 x i8]* %memptr, i64 0, i64 %sum1.cast, !dbg !359 ; [#uses=1 type=i8*] [debug line = 72:7]
  %memptr.load.3 = load i8* %memptr.addr.3, align 1, !dbg !359 ; [#uses=1 type=i8] [debug line = 72:7]
  %key.addr = getelementptr inbounds [32 x i8]* @key, i64 0, i64 %tmp.130, !dbg !359 ; [#uses=1 type=i8*] [debug line = 72:7]
  store i8 %memptr.load.3, i8* %key.addr, align 1, !dbg !359 ; [debug line = 72:7]
  %i.15 = add i6 %i.10, 1, !dbg !360              ; [#uses=1 type=i6] [debug line = 71:21]
  call void @llvm.dbg.value(metadata !{i6 %i.15}, i64 0, metadata !310), !dbg !360 ; [debug line = 71:21] [debug variable = i]
  br label %.preheader, !dbg !360                 ; [debug line = 71:21]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit.loopexit18:                             ; preds = %.preheader6
  br label %.loopexit

.loopexit.loopexit19:                             ; preds = %.preheader8
  br label %.loopexit

.loopexit.loopexit20:                             ; preds = %.preheader13
  br label %.loopexit

.loopexit.loopexit21:                             ; preds = %.preheader.i
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit21, %.loopexit.loopexit20, %.loopexit.loopexit19, %.loopexit.loopexit18, %.loopexit.loopexit, %0
  ret void, !dbg !361                             ; [debug line = 75:1]
}

; [#uses=1]
define internal fastcc void @aes256_encrypt_ecb([16 x i8]* nocapture %buf) {
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !362), !dbg !364 ; [debug line = 358:61] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !365), !dbg !371 ; [debug line = 218:48@362:5] [debug variable = buf]
  br label %1, !dbg !372                          ; [debug line = 222:5@362:5]

; <label>:1                                       ; preds = %3, %0
  %i.i = phi i5 [ -16, %0 ], [ %i.25, %3 ]        ; [#uses=3 type=i5]
  %i.25 = add i5 %i.i, -1, !dbg !372              ; [#uses=2 type=i5] [debug line = 222:5@362:5]
  %i.25.cast = sext i5 %i.25 to i8, !dbg !372     ; [#uses=1 type=i8] [debug line = 222:5@362:5]
  call void @llvm.dbg.value(metadata !{i5 %i.25}, i64 0, metadata !374), !dbg !372 ; [debug line = 222:5@362:5] [debug variable = i]
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
  %tmp..i = zext i8 %i.25.cast to i64, !dbg !385  ; [#uses=3 type=i64] [debug line = 222:17@362:5]
  %ctx.enckey.addr = getelementptr [32 x i8]* @ctx.enckey, i64 0, i64 %tmp..i, !dbg !385 ; [#uses=1 type=i8*] [debug line = 222:17@362:5]
  %ctx.enckey.load = load i8* %ctx.enckey.addr, align 1, !dbg !385 ; [#uses=2 type=i8] [debug line = 222:17@362:5]
  %ctx.key.addr = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp..i, !dbg !385 ; [#uses=1 type=i8*] [debug line = 222:17@362:5]
  store i8 %ctx.enckey.load, i8* %ctx.key.addr, align 1, !dbg !385 ; [debug line = 222:17@362:5]
  %buf.addr.22 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp..i, !dbg !385 ; [#uses=2 type=i8*] [debug line = 222:17@362:5]
  %buf.load = load i8* %buf.addr.22, align 1, !dbg !385 ; [#uses=1 type=i8] [debug line = 222:17@362:5]
  %tmp.176.i = xor i8 %buf.load, %ctx.enckey.load, !dbg !385 ; [#uses=1 type=i8] [debug line = 222:17@362:5]
  store i8 %tmp.176.i, i8* %buf.addr.22, align 1, !dbg !385 ; [debug line = 222:17@362:5]
  %tmp.178.i = add i5 %i.i, 15, !dbg !385         ; [#uses=1 type=i5] [debug line = 222:17@362:5]
  %tmp.179.i = zext i5 %tmp.178.i to i64, !dbg !385 ; [#uses=2 type=i64] [debug line = 222:17@362:5]
  %ctx.enckey.addr.1 = getelementptr [32 x i8]* @ctx.enckey, i64 0, i64 %tmp.179.i, !dbg !385 ; [#uses=1 type=i8*] [debug line = 222:17@362:5]
  %ctx.enckey.load.1 = load i8* %ctx.enckey.addr.1, align 1, !dbg !385 ; [#uses=1 type=i8] [debug line = 222:17@362:5]
  %ctx.key.addr.16 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.179.i, !dbg !385 ; [#uses=1 type=i8*] [debug line = 222:17@362:5]
  store i8 %ctx.enckey.load.1, i8* %ctx.key.addr.16, align 1, !dbg !385 ; [debug line = 222:17@362:5]
  br label %1, !dbg !385                          ; [debug line = 222:17@362:5]

aes_addRoundKey_cpy.exit:                         ; preds = %12, %aes_addRoundKey_cpy.exit.preheader
  %rcon = phi i8 [ %rcon.1, %12 ], [ 1, %aes_addRoundKey_cpy.exit.preheader ] ; [#uses=3 type=i8]
  %i = phi i4 [ %i.33, %12 ], [ 1, %aes_addRoundKey_cpy.exit.preheader ] ; [#uses=3 type=i4]
  %i.cast4 = trunc i4 %i to i1, !dbg !384         ; [#uses=1 type=i1] [debug line = 363:9]
  %exitcond = icmp eq i4 %i, -2, !dbg !384        ; [#uses=1 type=i1] [debug line = 363:9]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 13, i64 13, i64 13) ; [#uses=0 type=i32]
  br i1 %exitcond, label %.preheader.preheader, label %.preheader49.preheader, !dbg !384 ; [debug line = 363:9]

.preheader49.preheader:                           ; preds = %aes_addRoundKey_cpy.exit
  br label %.preheader49, !dbg !386               ; [debug line = 198:5@365:9]

.preheader.preheader:                             ; preds = %aes_addRoundKey_cpy.exit
  %rcon.lcssa = phi i8 [ %rcon, %aes_addRoundKey_cpy.exit ] ; [#uses=1 type=i8]
  br label %.preheader, !dbg !390                 ; [debug line = 198:5@371:5]

.preheader49:                                     ; preds = %6, %.preheader49.preheader
  %i.i4 = phi i5 [ %i.27, %6 ], [ -16, %.preheader49.preheader ] ; [#uses=2 type=i5]
  %i.27 = add i5 %i.i4, -1, !dbg !386             ; [#uses=2 type=i5] [debug line = 198:5@365:9]
  %i.27.cast = sext i5 %i.27 to i8, !dbg !386     ; [#uses=1 type=i8] [debug line = 198:5@365:9]
  call void @llvm.dbg.value(metadata !{i5 %i.27}, i64 0, metadata !392), !dbg !386 ; [debug line = 198:5@365:9] [debug variable = i]
  %tmp.i5 = icmp eq i5 %i.i4, 0, !dbg !386        ; [#uses=1 type=i1] [debug line = 198:5@365:9]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp.i5, label %aes_subBytes.exit, label %6, !dbg !386 ; [debug line = 198:5@365:9]

; <label>:6                                       ; preds = %.preheader49
  %tmp.5.i = zext i8 %i.27.cast to i64, !dbg !393 ; [#uses=1 type=i64] [debug line = 198:17@365:9]
  %buf.addr.24 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp.5.i, !dbg !393 ; [#uses=2 type=i8*] [debug line = 198:17@365:9]
  %buf.load.31 = load i8* %buf.addr.24, align 1, !dbg !393 ; [#uses=1 type=i8] [debug line = 198:17@365:9]
  %tmp.6.i = zext i8 %buf.load.31 to i64, !dbg !393 ; [#uses=1 type=i64] [debug line = 198:17@365:9]
  %sbox.addr.15 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.6.i, !dbg !393 ; [#uses=1 type=i8*] [debug line = 198:17@365:9]
  %sbox.load.15 = load i8* %sbox.addr.15, align 1, !dbg !393 ; [#uses=1 type=i8] [debug line = 198:17@365:9]
  store i8 %sbox.load.15, i8* %buf.addr.24, align 1, !dbg !393 ; [debug line = 198:17@365:9]
  br label %.preheader49, !dbg !393               ; [debug line = 198:17@365:9]

aes_subBytes.exit:                                ; preds = %.preheader49
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !394), !dbg !395 ; [debug line = 227:42@366:9] [debug variable = buf]
  %i.30 = load i8* %buf.addr, align 1, !dbg !375  ; [#uses=1 type=i8] [debug line = 231:5@366:9]
  call void @llvm.dbg.value(metadata !{i8 %i.30}, i64 0, metadata !396), !dbg !375 ; [debug line = 231:5@366:9] [debug variable = i]
  %buf.load.20 = load i8* %buf.addr.11, align 1, !dbg !375 ; [#uses=1 type=i8] [debug line = 231:5@366:9]
  store i8 %buf.load.20, i8* %buf.addr, align 1, !dbg !375 ; [debug line = 231:5@366:9]
  %buf.load.21 = load i8* %buf.addr.12, align 1, !dbg !375 ; [#uses=1 type=i8] [debug line = 231:5@366:9]
  store i8 %buf.load.21, i8* %buf.addr.11, align 1, !dbg !375 ; [debug line = 231:5@366:9]
  %buf.load.22 = load i8* %buf.addr.13, align 1, !dbg !375 ; [#uses=1 type=i8] [debug line = 231:5@366:9]
  store i8 %buf.load.22, i8* %buf.addr.12, align 1, !dbg !375 ; [debug line = 231:5@366:9]
  store i8 %i.30, i8* %buf.addr.13, align 1, !dbg !375 ; [debug line = 231:5@366:9]
  %i.31 = load i8* %buf.addr.14, align 1, !dbg !381 ; [#uses=1 type=i8] [debug line = 232:5@366:9]
  call void @llvm.dbg.value(metadata !{i8 %i.31}, i64 0, metadata !396), !dbg !381 ; [debug line = 232:5@366:9] [debug variable = i]
  %buf.load.24 = load i8* %buf.addr.15, align 1, !dbg !381 ; [#uses=1 type=i8] [debug line = 232:5@366:9]
  store i8 %buf.load.24, i8* %buf.addr.14, align 1, !dbg !381 ; [debug line = 232:5@366:9]
  store i8 %i.31, i8* %buf.addr.15, align 1, !dbg !381 ; [debug line = 232:5@366:9]
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
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !398), !dbg !401 ; [debug line = 251:43@367:9] [debug variable = buf]
  br label %7, !dbg !402                          ; [debug line = 255:10@367:9]

; <label>:7                                       ; preds = %9, %aes_subBytes.exit
  %i.i2 = phi i5 [ 0, %aes_subBytes.exit ], [ %i.32, %9 ] ; [#uses=4 type=i5]
  %tmp.i9 = icmp sgt i5 %i.i2, -1, !dbg !402      ; [#uses=1 type=i1] [debug line = 255:10@367:9]
  %8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %tmp.i9, label %9, label %aes_mixColumns.exit, !dbg !402 ; [debug line = 255:10@367:9]

; <label>:9                                       ; preds = %7
  %tmp..i1 = zext i5 %i.i2 to i64, !dbg !405      ; [#uses=1 type=i64] [debug line = 257:9@367:9]
  %buf.addr.25 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp..i1, !dbg !405 ; [#uses=2 type=i8*] [debug line = 257:9@367:9]
  %a = load i8* %buf.addr.25, align 1, !dbg !405  ; [#uses=3 type=i8] [debug line = 257:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %a}, i64 0, metadata !407), !dbg !405 ; [debug line = 257:9@367:9] [debug variable = a]
  %tmp.33.i.cast = trunc i5 %i.i2 to i4, !dbg !408 ; [#uses=3 type=i4] [debug line = 258:9@367:9]
  %tmp.34.i = or i4 %tmp.33.i.cast, 1, !dbg !408  ; [#uses=1 type=i4] [debug line = 258:9@367:9]
  %tmp.35.i = zext i4 %tmp.34.i to i64, !dbg !408 ; [#uses=1 type=i64] [debug line = 258:9@367:9]
  %buf.addr.26 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp.35.i, !dbg !408 ; [#uses=2 type=i8*] [debug line = 258:9@367:9]
  %b = load i8* %buf.addr.26, align 1, !dbg !408  ; [#uses=3 type=i8] [debug line = 258:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !409), !dbg !408 ; [debug line = 258:9@367:9] [debug variable = b]
  %tmp.36.i = or i4 %tmp.33.i.cast, 2, !dbg !410  ; [#uses=1 type=i4] [debug line = 259:9@367:9]
  %tmp.37.i = zext i4 %tmp.36.i to i64, !dbg !410 ; [#uses=1 type=i64] [debug line = 259:9@367:9]
  %buf.addr.27 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp.37.i, !dbg !410 ; [#uses=2 type=i8*] [debug line = 259:9@367:9]
  %c = load i8* %buf.addr.27, align 1, !dbg !410  ; [#uses=4 type=i8] [debug line = 259:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %c}, i64 0, metadata !411), !dbg !410 ; [debug line = 259:9@367:9] [debug variable = c]
  %tmp.38.i = or i4 %tmp.33.i.cast, 3, !dbg !412  ; [#uses=1 type=i4] [debug line = 260:9@367:9]
  %tmp.39.i = zext i4 %tmp.38.i to i64, !dbg !412 ; [#uses=1 type=i64] [debug line = 260:9@367:9]
  %buf.addr.28 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp.39.i, !dbg !412 ; [#uses=2 type=i8*] [debug line = 260:9@367:9]
  %d = load i8* %buf.addr.28, align 1, !dbg !412  ; [#uses=3 type=i8] [debug line = 260:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %d}, i64 0, metadata !413), !dbg !412 ; [debug line = 260:9@367:9] [debug variable = d]
  %x.assign = xor i8 %b, %a, !dbg !414            ; [#uses=3 type=i8] [debug line = 261:9@367:9]
  %tmp.41.i = xor i8 %c, %x.assign, !dbg !414     ; [#uses=2 type=i8] [debug line = 261:9@367:9]
  %e = xor i8 %d, %tmp.41.i, !dbg !414            ; [#uses=3 type=i8] [debug line = 261:9@367:9]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !415), !dbg !414 ; [debug line = 261:9@367:9] [debug variable = e]
  call void @llvm.dbg.value(metadata !{i8 %x.assign}, i64 0, metadata !416), !dbg !418 ; [debug line = 187:45@262:23@367:9] [debug variable = x]
  %y = shl i8 %x.assign, 1, !dbg !419             ; [#uses=2 type=i8] [debug line = 189:46@262:23@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !420), !dbg !419 ; [debug line = 189:46@262:23@367:9] [debug variable = y]
  %tmp.i.i = icmp slt i8 %x.assign, 0, !dbg !421  ; [#uses=1 type=i1] [debug line = 190:5@262:23@367:9]
  %tmp.1.i.i = xor i8 %y, 27, !dbg !421           ; [#uses=1 type=i8] [debug line = 190:5@262:23@367:9]
  %y.23 = select i1 %tmp.i.i, i8 %tmp.1.i.i, i8 %y, !dbg !421 ; [#uses=1 type=i8] [debug line = 190:5@262:23@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y.23}, i64 0, metadata !420), !dbg !421 ; [debug line = 190:5@262:23@367:9] [debug variable = y]
  %tmp1 = xor i8 %y.23, %e, !dbg !417             ; [#uses=1 type=i8] [debug line = 262:23@367:9]
  %tmp.44.i = xor i8 %tmp1, %a, !dbg !417         ; [#uses=1 type=i8] [debug line = 262:23@367:9]
  store i8 %tmp.44.i, i8* %buf.addr.25, align 1, !dbg !417 ; [debug line = 262:23@367:9]
  %x.assign.9 = xor i8 %c, %b, !dbg !422          ; [#uses=2 type=i8] [debug line = 263:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.9}, i64 0, metadata !423), !dbg !424 ; [debug line = 187:45@263:27@367:9] [debug variable = x]
  %y.24 = shl i8 %x.assign.9, 1, !dbg !425        ; [#uses=2 type=i8] [debug line = 189:46@263:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y.24}, i64 0, metadata !426), !dbg !425 ; [debug line = 189:46@263:27@367:9] [debug variable = y]
  %tmp.i9.i = icmp slt i8 %x.assign.9, 0, !dbg !427 ; [#uses=1 type=i1] [debug line = 190:5@263:27@367:9]
  %tmp.1.i10.i = xor i8 %y.24, 27, !dbg !427      ; [#uses=1 type=i8] [debug line = 190:5@263:27@367:9]
  %y.25 = select i1 %tmp.i9.i, i8 %tmp.1.i10.i, i8 %y.24, !dbg !427 ; [#uses=1 type=i8] [debug line = 190:5@263:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y.25}, i64 0, metadata !426), !dbg !427 ; [debug line = 190:5@263:27@367:9] [debug variable = y]
  %tmp2 = xor i8 %y.25, %e, !dbg !422             ; [#uses=1 type=i8] [debug line = 263:27@367:9]
  %tmp.48.i = xor i8 %tmp2, %b, !dbg !422         ; [#uses=1 type=i8] [debug line = 263:27@367:9]
  store i8 %tmp.48.i, i8* %buf.addr.26, align 1, !dbg !422 ; [debug line = 263:27@367:9]
  %x.assign.10 = xor i8 %d, %c, !dbg !428         ; [#uses=2 type=i8] [debug line = 264:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.10}, i64 0, metadata !429), !dbg !430 ; [debug line = 187:45@264:27@367:9] [debug variable = x]
  %y.26 = shl i8 %x.assign.10, 1, !dbg !431       ; [#uses=2 type=i8] [debug line = 189:46@264:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y.26}, i64 0, metadata !432), !dbg !431 ; [debug line = 189:46@264:27@367:9] [debug variable = y]
  %tmp.i13.i = icmp slt i8 %x.assign.10, 0, !dbg !433 ; [#uses=1 type=i1] [debug line = 190:5@264:27@367:9]
  %tmp.1.i14.i = xor i8 %y.26, 27, !dbg !433      ; [#uses=1 type=i8] [debug line = 190:5@264:27@367:9]
  %y.27 = select i1 %tmp.i13.i, i8 %tmp.1.i14.i, i8 %y.26, !dbg !433 ; [#uses=1 type=i8] [debug line = 190:5@264:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y.27}, i64 0, metadata !432), !dbg !433 ; [debug line = 190:5@264:27@367:9] [debug variable = y]
  %tmp3 = xor i8 %y.27, %e, !dbg !428             ; [#uses=1 type=i8] [debug line = 264:27@367:9]
  %tmp.52.i = xor i8 %tmp3, %c, !dbg !428         ; [#uses=1 type=i8] [debug line = 264:27@367:9]
  store i8 %tmp.52.i, i8* %buf.addr.27, align 1, !dbg !428 ; [debug line = 264:27@367:9]
  %x.assign.11 = xor i8 %d, %a, !dbg !434         ; [#uses=2 type=i8] [debug line = 265:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.11}, i64 0, metadata !435), !dbg !436 ; [debug line = 187:45@265:27@367:9] [debug variable = x]
  %y.28 = shl i8 %x.assign.11, 1, !dbg !437       ; [#uses=2 type=i8] [debug line = 189:46@265:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y.28}, i64 0, metadata !438), !dbg !437 ; [debug line = 189:46@265:27@367:9] [debug variable = y]
  %tmp.i17.i = icmp slt i8 %x.assign.11, 0, !dbg !439 ; [#uses=1 type=i1] [debug line = 190:5@265:27@367:9]
  %tmp.1.i18.i = xor i8 %y.28, 27, !dbg !439      ; [#uses=1 type=i8] [debug line = 190:5@265:27@367:9]
  %y.29 = select i1 %tmp.i17.i, i8 %tmp.1.i18.i, i8 %y.28, !dbg !439 ; [#uses=1 type=i8] [debug line = 190:5@265:27@367:9]
  call void @llvm.dbg.value(metadata !{i8 %y.29}, i64 0, metadata !438), !dbg !439 ; [debug line = 190:5@265:27@367:9] [debug variable = y]
  %tmp.56.i = xor i8 %y.29, %tmp.41.i, !dbg !434  ; [#uses=1 type=i8] [debug line = 265:27@367:9]
  store i8 %tmp.56.i, i8* %buf.addr.28, align 1, !dbg !434 ; [debug line = 265:27@367:9]
  %i.32 = add i5 %i.i2, 4, !dbg !440              ; [#uses=1 type=i5] [debug line = 255:25@367:9]
  call void @llvm.dbg.value(metadata !{i5 %i.32}, i64 0, metadata !441), !dbg !440 ; [debug line = 255:25@367:9] [debug variable = i]
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
  %i.33 = add i4 %i, 1, !dbg !447                 ; [#uses=1 type=i4] [debug line = 363:34]
  call void @llvm.dbg.value(metadata !{i4 %i.33}, i64 0, metadata !448), !dbg !447 ; [debug line = 363:34] [debug variable = i]
  br label %aes_addRoundKey_cpy.exit, !dbg !447   ; [debug line = 363:34]

.preheader:                                       ; preds = %14, %.preheader.preheader
  %i.i1 = phi i5 [ %i.26, %14 ], [ -16, %.preheader.preheader ] ; [#uses=2 type=i5]
  %i.26 = add i5 %i.i1, -1, !dbg !390             ; [#uses=2 type=i5] [debug line = 198:5@371:5]
  %i.26.cast = sext i5 %i.26 to i8, !dbg !390     ; [#uses=1 type=i8] [debug line = 198:5@371:5]
  call void @llvm.dbg.value(metadata !{i5 %i.26}, i64 0, metadata !449), !dbg !390 ; [debug line = 198:5@371:5] [debug variable = i]
  %tmp.i8 = icmp eq i5 %i.i1, 0, !dbg !390        ; [#uses=1 type=i1] [debug line = 198:5@371:5]
  %13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp.i8, label %aes_subBytes.exit24, label %14, !dbg !390 ; [debug line = 198:5@371:5]

; <label>:14                                      ; preds = %.preheader
  %tmp.5.i1 = zext i8 %i.26.cast to i64, !dbg !450 ; [#uses=1 type=i64] [debug line = 198:17@371:5]
  %buf.addr.23 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp.5.i1, !dbg !450 ; [#uses=2 type=i8*] [debug line = 198:17@371:5]
  %buf.load.18 = load i8* %buf.addr.23, align 1, !dbg !450 ; [#uses=1 type=i8] [debug line = 198:17@371:5]
  %tmp.6.i1 = zext i8 %buf.load.18 to i64, !dbg !450 ; [#uses=1 type=i64] [debug line = 198:17@371:5]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.6.i1, !dbg !450 ; [#uses=1 type=i8*] [debug line = 198:17@371:5]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !450 ; [#uses=1 type=i8] [debug line = 198:17@371:5]
  store i8 %sbox.load, i8* %buf.addr.23, align 1, !dbg !450 ; [debug line = 198:17@371:5]
  br label %.preheader, !dbg !450                 ; [debug line = 198:17@371:5]

aes_subBytes.exit24:                              ; preds = %.preheader
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !451), !dbg !453 ; [debug line = 227:42@372:5] [debug variable = buf]
  %i.28 = load i8* %buf.addr, align 1, !dbg !454  ; [#uses=1 type=i8] [debug line = 231:5@372:5]
  call void @llvm.dbg.value(metadata !{i8 %i.28}, i64 0, metadata !455), !dbg !454 ; [debug line = 231:5@372:5] [debug variable = i]
  %buf.load.7 = load i8* %buf.addr.11, align 1, !dbg !454 ; [#uses=1 type=i8] [debug line = 231:5@372:5]
  store i8 %buf.load.7, i8* %buf.addr, align 1, !dbg !454 ; [debug line = 231:5@372:5]
  %buf.load.8 = load i8* %buf.addr.12, align 1, !dbg !454 ; [#uses=1 type=i8] [debug line = 231:5@372:5]
  store i8 %buf.load.8, i8* %buf.addr.11, align 1, !dbg !454 ; [debug line = 231:5@372:5]
  %buf.load.9 = load i8* %buf.addr.13, align 1, !dbg !454 ; [#uses=1 type=i8] [debug line = 231:5@372:5]
  store i8 %buf.load.9, i8* %buf.addr.12, align 1, !dbg !454 ; [debug line = 231:5@372:5]
  store i8 %i.28, i8* %buf.addr.13, align 1, !dbg !454 ; [debug line = 231:5@372:5]
  %i.29 = load i8* %buf.addr.14, align 1, !dbg !456 ; [#uses=1 type=i8] [debug line = 232:5@372:5]
  call void @llvm.dbg.value(metadata !{i8 %i.29}, i64 0, metadata !455), !dbg !456 ; [debug line = 232:5@372:5] [debug variable = i]
  %buf.load.11 = load i8* %buf.addr.15, align 1, !dbg !456 ; [#uses=1 type=i8] [debug line = 232:5@372:5]
  store i8 %buf.load.11, i8* %buf.addr.14, align 1, !dbg !456 ; [debug line = 232:5@372:5]
  store i8 %i.29, i8* %buf.addr.15, align 1, !dbg !456 ; [debug line = 232:5@372:5]
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
define internal fastcc void @aes256_decrypt_ecb([16 x i8]* nocapture %buf) {
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !463), !dbg !465 ; [debug line = 378:61] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !466), !dbg !469 ; [debug line = 218:48@382:5] [debug variable = buf]
  br label %1, !dbg !470                          ; [debug line = 222:5@382:5]

; <label>:1                                       ; preds = %3, %0
  %i.i = phi i5 [ -16, %0 ], [ %i.34, %3 ]        ; [#uses=3 type=i5]
  %i.34 = add i5 %i.i, -1, !dbg !470              ; [#uses=2 type=i5] [debug line = 222:5@382:5]
  %i.34.cast = sext i5 %i.34 to i8, !dbg !470     ; [#uses=1 type=i8] [debug line = 222:5@382:5]
  call void @llvm.dbg.value(metadata !{i5 %i.34}, i64 0, metadata !471), !dbg !470 ; [debug line = 222:5@382:5] [debug variable = i]
  %tmp.i = icmp eq i5 %i.i, 0, !dbg !470          ; [#uses=1 type=i1] [debug line = 222:5@382:5]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp.i, label %aes_addRoundKey_cpy.exit, label %3, !dbg !470 ; [debug line = 222:5@382:5]

; <label>:3                                       ; preds = %1
  %tmp..i = zext i8 %i.34.cast to i64, !dbg !472  ; [#uses=3 type=i64] [debug line = 222:17@382:5]
  %ctx.deckey.addr = getelementptr [32 x i8]* @ctx.deckey, i64 0, i64 %tmp..i, !dbg !472 ; [#uses=1 type=i8*] [debug line = 222:17@382:5]
  %ctx.deckey.load = load i8* %ctx.deckey.addr, align 1, !dbg !472 ; [#uses=2 type=i8] [debug line = 222:17@382:5]
  %ctx.key.addr = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp..i, !dbg !472 ; [#uses=1 type=i8*] [debug line = 222:17@382:5]
  store i8 %ctx.deckey.load, i8* %ctx.key.addr, align 1, !dbg !472 ; [debug line = 222:17@382:5]
  %buf.addr.40 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp..i, !dbg !472 ; [#uses=2 type=i8*] [debug line = 222:17@382:5]
  %buf.load.46 = load i8* %buf.addr.40, align 1, !dbg !472 ; [#uses=1 type=i8] [debug line = 222:17@382:5]
  %tmp.176.i = xor i8 %buf.load.46, %ctx.deckey.load, !dbg !472 ; [#uses=1 type=i8] [debug line = 222:17@382:5]
  store i8 %tmp.176.i, i8* %buf.addr.40, align 1, !dbg !472 ; [debug line = 222:17@382:5]
  %tmp.178.i = add i5 %i.i, 15, !dbg !472         ; [#uses=1 type=i5] [debug line = 222:17@382:5]
  %tmp.179.i = zext i5 %tmp.178.i to i64, !dbg !472 ; [#uses=2 type=i64] [debug line = 222:17@382:5]
  %ctx.deckey.addr.1 = getelementptr [32 x i8]* @ctx.deckey, i64 0, i64 %tmp.179.i, !dbg !472 ; [#uses=1 type=i8*] [debug line = 222:17@382:5]
  %ctx.deckey.load.1 = load i8* %ctx.deckey.addr.1, align 1, !dbg !472 ; [#uses=1 type=i8] [debug line = 222:17@382:5]
  %ctx.key.addr.17 = getelementptr [32 x i8]* @ctx.key, i64 0, i64 %tmp.179.i, !dbg !472 ; [#uses=1 type=i8*] [debug line = 222:17@382:5]
  store i8 %ctx.deckey.load.1, i8* %ctx.key.addr.17, align 1, !dbg !472 ; [debug line = 222:17@382:5]
  br label %1, !dbg !472                          ; [debug line = 222:17@382:5]

aes_addRoundKey_cpy.exit:                         ; preds = %1
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !473), !dbg !476 ; [debug line = 239:46@383:5] [debug variable = buf]
  %buf.addr = getelementptr [16 x i8]* %buf, i64 0, i64 1, !dbg !477 ; [#uses=4 type=i8*] [debug line = 243:5@383:5]
  %i.35 = load i8* %buf.addr, align 1, !dbg !477  ; [#uses=1 type=i8] [debug line = 243:5@383:5]
  call void @llvm.dbg.value(metadata !{i8 %i.35}, i64 0, metadata !479), !dbg !477 ; [debug line = 243:5@383:5] [debug variable = i]
  %buf.addr.29 = getelementptr [16 x i8]* %buf, i64 0, i64 13, !dbg !477 ; [#uses=4 type=i8*] [debug line = 243:5@383:5]
  %buf.load = load i8* %buf.addr.29, align 1, !dbg !477 ; [#uses=1 type=i8] [debug line = 243:5@383:5]
  store i8 %buf.load, i8* %buf.addr, align 1, !dbg !477 ; [debug line = 243:5@383:5]
  %buf.addr.30 = getelementptr [16 x i8]* %buf, i64 0, i64 9, !dbg !477 ; [#uses=4 type=i8*] [debug line = 243:5@383:5]
  %buf.load.36 = load i8* %buf.addr.30, align 1, !dbg !477 ; [#uses=1 type=i8] [debug line = 243:5@383:5]
  store i8 %buf.load.36, i8* %buf.addr.29, align 1, !dbg !477 ; [debug line = 243:5@383:5]
  %buf.addr.31 = getelementptr [16 x i8]* %buf, i64 0, i64 5, !dbg !477 ; [#uses=4 type=i8*] [debug line = 243:5@383:5]
  %buf.load.37 = load i8* %buf.addr.31, align 1, !dbg !477 ; [#uses=1 type=i8] [debug line = 243:5@383:5]
  store i8 %buf.load.37, i8* %buf.addr.30, align 1, !dbg !477 ; [debug line = 243:5@383:5]
  store i8 %i.35, i8* %buf.addr.31, align 1, !dbg !477 ; [debug line = 243:5@383:5]
  %buf.addr.32 = getelementptr [16 x i8]* %buf, i64 0, i64 2, !dbg !480 ; [#uses=4 type=i8*] [debug line = 244:5@383:5]
  %i.36 = load i8* %buf.addr.32, align 1, !dbg !480 ; [#uses=1 type=i8] [debug line = 244:5@383:5]
  call void @llvm.dbg.value(metadata !{i8 %i.36}, i64 0, metadata !479), !dbg !480 ; [debug line = 244:5@383:5] [debug variable = i]
  %buf.addr.33 = getelementptr [16 x i8]* %buf, i64 0, i64 10, !dbg !480 ; [#uses=4 type=i8*] [debug line = 244:5@383:5]
  %buf.load.39 = load i8* %buf.addr.33, align 1, !dbg !480 ; [#uses=1 type=i8] [debug line = 244:5@383:5]
  store i8 %buf.load.39, i8* %buf.addr.32, align 1, !dbg !480 ; [debug line = 244:5@383:5]
  store i8 %i.36, i8* %buf.addr.33, align 1, !dbg !480 ; [debug line = 244:5@383:5]
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
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !484), !dbg !487 ; [debug line = 202:45@384:5] [debug variable = buf]
  br label %4, !dbg !488                          ; [debug line = 206:5@384:5]

; <label>:4                                       ; preds = %6, %aes_addRoundKey_cpy.exit
  %i.i5 = phi i5 [ -16, %aes_addRoundKey_cpy.exit ], [ %i.37, %6 ] ; [#uses=2 type=i5]
  %i.37 = add i5 %i.i5, -1, !dbg !488             ; [#uses=2 type=i5] [debug line = 206:5@384:5]
  %i.37.cast = sext i5 %i.37 to i8, !dbg !488     ; [#uses=1 type=i8] [debug line = 206:5@384:5]
  call void @llvm.dbg.value(metadata !{i5 %i.37}, i64 0, metadata !490), !dbg !488 ; [debug line = 206:5@384:5] [debug variable = i]
  %tmp.i6 = icmp eq i5 %i.i5, 0, !dbg !488        ; [#uses=1 type=i1] [debug line = 206:5@384:5]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp.i6, label %aes_subBytes_inv.exit.preheader, label %6, !dbg !488 ; [debug line = 206:5@384:5]

aes_subBytes_inv.exit.preheader:                  ; preds = %4
  br label %aes_subBytes_inv.exit, !dbg !491      ; [debug line = 386:10]

; <label>:6                                       ; preds = %4
  %tmp.3.i = zext i8 %i.37.cast to i64, !dbg !493 ; [#uses=1 type=i64] [debug line = 206:17@384:5]
  %buf.addr.41 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp.3.i, !dbg !493 ; [#uses=2 type=i8*] [debug line = 206:17@384:5]
  %buf.load.47 = load i8* %buf.addr.41, align 1, !dbg !493 ; [#uses=1 type=i8] [debug line = 206:17@384:5]
  %tmp.4.i = zext i8 %buf.load.47 to i64, !dbg !493 ; [#uses=1 type=i64] [debug line = 206:17@384:5]
  %sboxinv.addr = getelementptr inbounds [256 x i8]* @sboxinv, i64 0, i64 %tmp.4.i, !dbg !493 ; [#uses=1 type=i8*] [debug line = 206:17@384:5]
  %sboxinv.load = load i8* %sboxinv.addr, align 1, !dbg !493 ; [#uses=1 type=i8] [debug line = 206:17@384:5]
  store i8 %sboxinv.load, i8* %buf.addr.41, align 1, !dbg !493 ; [debug line = 206:17@384:5]
  br label %4, !dbg !493                          ; [debug line = 206:17@384:5]

aes_subBytes_inv.exit:                            ; preds = %aes_subBytes_inv.exit42, %aes_subBytes_inv.exit.preheader
  %rcon = phi i8 [ %rcon.1, %aes_subBytes_inv.exit42 ], [ -128, %aes_subBytes_inv.exit.preheader ] ; [#uses=2 type=i8]
  %i = phi i4 [ %phitmp, %aes_subBytes_inv.exit42 ], [ -3, %aes_subBytes_inv.exit.preheader ] ; [#uses=3 type=i4]
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
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !504), !dbg !506 ; [debug line = 239:46@395:9] [debug variable = buf]
  %i.38 = load i8* %buf.addr, align 1, !dbg !507  ; [#uses=1 type=i8] [debug line = 243:5@395:9]
  call void @llvm.dbg.value(metadata !{i8 %i.38}, i64 0, metadata !508), !dbg !507 ; [debug line = 243:5@395:9] [debug variable = i]
  %buf.load.49 = load i8* %buf.addr.29, align 1, !dbg !507 ; [#uses=1 type=i8] [debug line = 243:5@395:9]
  store i8 %buf.load.49, i8* %buf.addr, align 1, !dbg !507 ; [debug line = 243:5@395:9]
  %buf.load.50 = load i8* %buf.addr.30, align 1, !dbg !507 ; [#uses=1 type=i8] [debug line = 243:5@395:9]
  store i8 %buf.load.50, i8* %buf.addr.29, align 1, !dbg !507 ; [debug line = 243:5@395:9]
  %buf.load.51 = load i8* %buf.addr.31, align 1, !dbg !507 ; [#uses=1 type=i8] [debug line = 243:5@395:9]
  store i8 %buf.load.51, i8* %buf.addr.30, align 1, !dbg !507 ; [debug line = 243:5@395:9]
  store i8 %i.38, i8* %buf.addr.31, align 1, !dbg !507 ; [debug line = 243:5@395:9]
  %i.39 = load i8* %buf.addr.32, align 1, !dbg !509 ; [#uses=1 type=i8] [debug line = 244:5@395:9]
  call void @llvm.dbg.value(metadata !{i8 %i.39}, i64 0, metadata !508), !dbg !509 ; [debug line = 244:5@395:9] [debug variable = i]
  %buf.load.53 = load i8* %buf.addr.33, align 1, !dbg !509 ; [#uses=1 type=i8] [debug line = 244:5@395:9]
  store i8 %buf.load.53, i8* %buf.addr.32, align 1, !dbg !509 ; [debug line = 244:5@395:9]
  store i8 %i.39, i8* %buf.addr.33, align 1, !dbg !509 ; [debug line = 244:5@395:9]
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
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !513), !dbg !515 ; [debug line = 202:45@396:9] [debug variable = buf]
  br label %12, !dbg !516                         ; [debug line = 206:5@396:9]

; <label>:12                                      ; preds = %14, %11
  %i.i3 = phi i5 [ -16, %11 ], [ %i.40, %14 ]     ; [#uses=2 type=i5]
  %i.40 = add i5 %i.i3, -1, !dbg !516             ; [#uses=2 type=i5] [debug line = 206:5@396:9]
  %i.40.cast = sext i5 %i.40 to i8, !dbg !516     ; [#uses=1 type=i8] [debug line = 206:5@396:9]
  call void @llvm.dbg.value(metadata !{i5 %i.40}, i64 0, metadata !517), !dbg !516 ; [debug line = 206:5@396:9] [debug variable = i]
  %tmp.i1 = icmp eq i5 %i.i3, 0, !dbg !516        ; [#uses=1 type=i1] [debug line = 206:5@396:9]
  %13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp.i1, label %aes_subBytes_inv.exit42, label %14, !dbg !516 ; [debug line = 206:5@396:9]

; <label>:14                                      ; preds = %12
  %tmp.3.i1 = zext i8 %i.40.cast to i64, !dbg !518 ; [#uses=1 type=i64] [debug line = 206:17@396:9]
  %buf.addr.42 = getelementptr [16 x i8]* %buf, i64 0, i64 %tmp.3.i1, !dbg !518 ; [#uses=2 type=i8*] [debug line = 206:17@396:9]
  %buf.load.60 = load i8* %buf.addr.42, align 1, !dbg !518 ; [#uses=1 type=i8] [debug line = 206:17@396:9]
  %tmp.4.i1 = zext i8 %buf.load.60 to i64, !dbg !518 ; [#uses=1 type=i64] [debug line = 206:17@396:9]
  %sboxinv.addr.1 = getelementptr inbounds [256 x i8]* @sboxinv, i64 0, i64 %tmp.4.i1, !dbg !518 ; [#uses=1 type=i8*] [debug line = 206:17@396:9]
  %sboxinv.load.1 = load i8* %sboxinv.addr.1, align 1, !dbg !518 ; [#uses=1 type=i8] [debug line = 206:17@396:9]
  store i8 %sboxinv.load.1, i8* %buf.addr.42, align 1, !dbg !518 ; [debug line = 206:17@396:9]
  br label %12, !dbg !518                         ; [debug line = 206:17@396:9]

aes_subBytes_inv.exit42:                          ; preds = %12
  %phitmp = add i4 %i, -1, !dbg !519              ; [#uses=1 type=i4] [debug line = 397:5]
  br label %aes_subBytes_inv.exit, !dbg !519      ; [debug line = 397:5]

; <label>:15                                      ; preds = %aes_subBytes_inv.exit
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* @ctx.key, i6 0), !dbg !520 ; [debug line = 398:5]
  ret void, !dbg !521                             ; [debug line = 399:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=29]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=5]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=4]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=0]
declare void @_ssdm_SpecKeepAssert(...)

!opencl.kernels = !{!0, !7, !13, !19, !19, !21, !24, !28, !21, !21, !31, !21, !21, !21, !33, !28}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!39, !96}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"ciphermode_t", metadata !"uint32_t", metadata !"uint32_t"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"memptr", metadata !"mode", metadata !"inbuf_addr", metadata !"outbuf_addr"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"aes256_context*", metadata !"uchar*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"k"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"aes256_context*"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"ctx"}
!19 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !20, metadata !6}
!20 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"buf"}
!21 = metadata !{null, metadata !14, metadata !15, metadata !22, metadata !17, metadata !23, metadata !6}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*"}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"buf"}
!24 = metadata !{null, metadata !25, metadata !15, metadata !26, metadata !17, metadata !27, metadata !6}
!25 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"uchar"}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!28 = metadata !{null, metadata !8, metadata !9, metadata !29, metadata !11, metadata !30, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*"}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"k", metadata !"rc"}
!31 = metadata !{null, metadata !8, metadata !9, metadata !29, metadata !11, metadata !32, metadata !6}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"key"}
!33 = metadata !{null, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !6}
!34 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!35 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"uchar*"}
!37 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"key", metadata !"cpk"}
!39 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/brett/Thesis/Vivado_WS/aes256cbc/solution1/.autopilot/db/aes256cbc.pragma.2.c", metadata !"/home/brett/Thesis/Vivado_WS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !40} ; [ DW_TAG_compile_unit ]
!40 = metadata !{metadata !41}
!41 = metadata !{metadata !42, metadata !56, metadata !59, metadata !62, metadata !83, metadata !84, metadata !85, metadata !86, metadata !88, metadata !91, metadata !92, metadata !93}
!42 = metadata !{i32 790546, i32 0, null, metadata !"ctx.key", metadata !"ctx.key", metadata !"ctx.key", metadata !43, i32 20, metadata !44, i32 1, i32 1, [32 x i8]* @ctx.key} ; [ DW_TAG_variable_field ]
!43 = metadata !{i32 786473, metadata !"aes256cbc/src/aes256cbc.c", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!44 = metadata !{i32 786452, null, metadata !"", metadata !45, i32 28, i64 256, i64 8, i32 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!45 = metadata !{i32 786473, metadata !"aes256cbc/src/aes256ecb.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!46 = metadata !{metadata !47}
!47 = metadata !{i32 786445, metadata !48, metadata !"key", metadata !45, i32 29, i64 256, i64 8, i64 0, i32 0, metadata !51} ; [ DW_TAG_member ]
!48 = metadata !{i32 786451, null, metadata !"", metadata !45, i32 28, i64 768, i64 8, i32 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!49 = metadata !{metadata !47, metadata !50, metadata !55}
!50 = metadata !{i32 786445, metadata !48, metadata !"enckey", metadata !45, i32 30, i64 256, i64 8, i64 256, i32 0, metadata !51} ; [ DW_TAG_member ]
!51 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !52, metadata !53, i32 0, i32 0} ; [ DW_TAG_array_type ]
!52 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!53 = metadata !{metadata !54}
!54 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!55 = metadata !{i32 786445, metadata !48, metadata !"deckey", metadata !45, i32 31, i64 256, i64 8, i64 512, i32 0, metadata !51} ; [ DW_TAG_member ]
!56 = metadata !{i32 790546, i32 0, null, metadata !"ctx.deckey", metadata !"ctx.deckey", metadata !"ctx.deckey", metadata !43, i32 20, metadata !57, i32 1, i32 1, [32 x i8]* @ctx.deckey} ; [ DW_TAG_variable_field ]
!57 = metadata !{i32 786452, null, metadata !"", metadata !45, i32 28, i64 256, i64 8, i32 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!58 = metadata !{metadata !55}
!59 = metadata !{i32 790546, i32 0, null, metadata !"ctx.enckey", metadata !"ctx.enckey", metadata !"ctx.enckey", metadata !43, i32 20, metadata !60, i32 1, i32 1, [32 x i8]* @ctx.enckey} ; [ DW_TAG_variable_field ]
!60 = metadata !{i32 786452, null, metadata !"", metadata !45, i32 28, i64 256, i64 8, i32 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!61 = metadata !{metadata !50}
!62 = metadata !{i32 786484, i32 0, metadata !63, metadata !"xorv", metadata !"xorv", metadata !"", metadata !43, i32 18, metadata !80, i32 1, i32 1, [16 x i8]* @xorv} ; [ DW_TAG_variable ]
!63 = metadata !{i32 786478, i32 0, metadata !43, metadata !"aes256cbc", metadata !"aes256cbc", metadata !"", metadata !43, i32 8, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !78, i32 8} ; [ DW_TAG_subprogram ]
!64 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!65 = metadata !{null, metadata !66, metadata !67, metadata !76, metadata !76}
!66 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ]
!67 = metadata !{i32 786454, null, metadata !"ciphermode_t", metadata !43, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ]
!68 = metadata !{i32 786436, null, metadata !"", metadata !69, i32 7, i64 3, i64 4, i32 0, i32 0, null, metadata !70, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!69 = metadata !{i32 786473, metadata !"aes256cbc/src/aes256cbc.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!70 = metadata !{metadata !71, metadata !72, metadata !73, metadata !74, metadata !75}
!71 = metadata !{i32 786472, metadata !"RESET", i64 0} ; [ DW_TAG_enumerator ]
!72 = metadata !{i32 786472, metadata !"ENCRYPT", i64 1} ; [ DW_TAG_enumerator ]
!73 = metadata !{i32 786472, metadata !"DECRYPT", i64 2} ; [ DW_TAG_enumerator ]
!74 = metadata !{i32 786472, metadata !"SET_IV", i64 3} ; [ DW_TAG_enumerator ]
!75 = metadata !{i32 786472, metadata !"SET_KEY", i64 4} ; [ DW_TAG_enumerator ]
!76 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !43, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ]
!77 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!78 = metadata !{metadata !79}
!79 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!80 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !52, metadata !81, i32 0, i32 0} ; [ DW_TAG_array_type ]
!81 = metadata !{metadata !82}
!82 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!83 = metadata !{i32 786484, i32 0, metadata !63, metadata !"lastbuf", metadata !"lastbuf", metadata !"", metadata !43, i32 16, metadata !80, i32 1, i32 1, [16 x i8]* @lastbuf} ; [ DW_TAG_variable ]
!84 = metadata !{i32 786484, i32 0, metadata !63, metadata !"key", metadata !"key", metadata !"", metadata !43, i32 19, metadata !51, i32 1, i32 1, [32 x i8]* @key} ; [ DW_TAG_variable ]
!85 = metadata !{i32 786484, i32 0, metadata !63, metadata !"iv", metadata !"iv", metadata !"", metadata !43, i32 17, metadata !80, i32 1, i32 1, [16 x i8]* @iv} ; [ DW_TAG_variable ]
!86 = metadata !{i32 786484, i32 0, metadata !63, metadata !"ctx", metadata !"ctx", metadata !"", metadata !43, i32 20, metadata !87, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!87 = metadata !{i32 786454, null, metadata !"aes256_context", metadata !43, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ]
!88 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !89, i32 315, metadata !90, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!89 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!90 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !89, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!91 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !89, i32 316, metadata !90, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!92 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !89, i32 317, metadata !90, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!93 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !94, i32 26, metadata !95, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!94 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!95 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!96 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/brett/Thesis/Vivado_WS/aes256cbc/solution1/.autopilot/db/aes256ecb.pragma.2.c", metadata !"/home/brett/Thesis/Vivado_WS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !97} ; [ DW_TAG_compile_unit ]
!97 = metadata !{metadata !98}
!98 = metadata !{metadata !99, metadata !105}
!99 = metadata !{i32 786484, i32 0, null, metadata !"sbox", metadata !"sbox", metadata !"", metadata !100, i32 47, metadata !101, i32 1, i32 1, [256 x i8]* @sbox} ; [ DW_TAG_variable ]
!100 = metadata !{i32 786473, metadata !"aes256cbc/src/aes256ecb.c", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!101 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !102, metadata !103, i32 0, i32 0} ; [ DW_TAG_array_type ]
!102 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !52} ; [ DW_TAG_const_type ]
!103 = metadata !{metadata !104}
!104 = metadata !{i32 786465, i64 0, i64 255}     ; [ DW_TAG_subrange_type ]
!105 = metadata !{i32 786484, i32 0, null, metadata !"sboxinv", metadata !"sboxinv", metadata !"", metadata !100, i32 82, metadata !101, i32 1, i32 1, [256 x i8]* @sboxinv} ; [ DW_TAG_variable ]
!106 = metadata !{i32 786689, metadata !107, metadata !"buf", null, i32 270, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!107 = metadata !{i32 786478, i32 0, metadata !100, metadata !"aes_mixColumns_inv", metadata !"aes_mixColumns_inv", metadata !"", metadata !100, i32 270, metadata !108, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !78, i32 271} ; [ DW_TAG_subprogram ]
!108 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!109 = metadata !{null, metadata !66}
!110 = metadata !{i32 270, i32 40, metadata !107, null}
!111 = metadata !{i32 274, i32 10, metadata !112, null}
!112 = metadata !{i32 786443, metadata !113, i32 274, i32 5, metadata !100, i32 13} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 786443, metadata !107, i32 271, i32 1, metadata !100, i32 12} ; [ DW_TAG_lexical_block ]
!114 = metadata !{i32 276, i32 9, metadata !115, null}
!115 = metadata !{i32 786443, metadata !112, i32 275, i32 5, metadata !100, i32 14} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 786688, metadata !113, metadata !"a", metadata !100, i32 272, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!117 = metadata !{i32 277, i32 9, metadata !115, null}
!118 = metadata !{i32 786688, metadata !113, metadata !"b", metadata !100, i32 272, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!119 = metadata !{i32 278, i32 9, metadata !115, null}
!120 = metadata !{i32 786688, metadata !113, metadata !"c", metadata !100, i32 272, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!121 = metadata !{i32 279, i32 9, metadata !115, null}
!122 = metadata !{i32 786688, metadata !113, metadata !"d", metadata !100, i32 272, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!123 = metadata !{i32 280, i32 9, metadata !115, null}
!124 = metadata !{i32 786688, metadata !113, metadata !"e", metadata !100, i32 272, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!125 = metadata !{i32 786689, metadata !126, metadata !"x", metadata !100, i32 16777403, metadata !52, i32 0, metadata !129} ; [ DW_TAG_arg_variable ]
!126 = metadata !{i32 786478, i32 0, metadata !100, metadata !"rj_xtime", metadata !"rj_xtime", metadata !"", metadata !100, i32 187, metadata !127, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !78, i32 188} ; [ DW_TAG_subprogram ]
!127 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !128, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!128 = metadata !{metadata !52, metadata !52}
!129 = metadata !{i32 281, i32 13, metadata !115, null}
!130 = metadata !{i32 187, i32 45, metadata !126, metadata !129}
!131 = metadata !{i32 189, i32 46, metadata !132, metadata !129}
!132 = metadata !{i32 786443, metadata !126, i32 188, i32 1, metadata !100, i32 15} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 786688, metadata !132, metadata !"y", metadata !100, i32 189, metadata !52, i32 0, metadata !129} ; [ DW_TAG_auto_variable ]
!134 = metadata !{i32 190, i32 5, metadata !132, metadata !129}
!135 = metadata !{i32 786688, metadata !113, metadata !"z", metadata !100, i32 272, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!136 = metadata !{i32 282, i32 26, metadata !115, null}
!137 = metadata !{i32 786689, metadata !126, metadata !"x", metadata !100, i32 16777403, metadata !52, i32 0, metadata !136} ; [ DW_TAG_arg_variable ]
!138 = metadata !{i32 187, i32 45, metadata !126, metadata !136}
!139 = metadata !{i32 189, i32 46, metadata !132, metadata !136}
!140 = metadata !{i32 786688, metadata !132, metadata !"y", metadata !100, i32 189, metadata !52, i32 0, metadata !136} ; [ DW_TAG_auto_variable ]
!141 = metadata !{i32 190, i32 5, metadata !132, metadata !136}
!142 = metadata !{i32 786688, metadata !113, metadata !"x", metadata !100, i32 272, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!143 = metadata !{i32 283, i32 26, metadata !115, null}
!144 = metadata !{i32 786689, metadata !126, metadata !"x", metadata !100, i32 16777403, metadata !52, i32 0, metadata !143} ; [ DW_TAG_arg_variable ]
!145 = metadata !{i32 187, i32 45, metadata !126, metadata !143}
!146 = metadata !{i32 189, i32 46, metadata !132, metadata !143}
!147 = metadata !{i32 786688, metadata !132, metadata !"y", metadata !100, i32 189, metadata !52, i32 0, metadata !143} ; [ DW_TAG_auto_variable ]
!148 = metadata !{i32 190, i32 5, metadata !132, metadata !143}
!149 = metadata !{i32 786688, metadata !113, metadata !"y", metadata !100, i32 272, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!150 = metadata !{i32 786689, metadata !126, metadata !"x", metadata !100, i32 16777403, metadata !52, i32 0, metadata !151} ; [ DW_TAG_arg_variable ]
!151 = metadata !{i32 284, i32 23, metadata !115, null}
!152 = metadata !{i32 187, i32 45, metadata !126, metadata !151}
!153 = metadata !{i32 189, i32 46, metadata !132, metadata !151}
!154 = metadata !{i32 786688, metadata !132, metadata !"y", metadata !100, i32 189, metadata !52, i32 0, metadata !151} ; [ DW_TAG_auto_variable ]
!155 = metadata !{i32 190, i32 5, metadata !132, metadata !151}
!156 = metadata !{i32 285, i32 27, metadata !115, null}
!157 = metadata !{i32 786689, metadata !126, metadata !"x", metadata !100, i32 16777403, metadata !52, i32 0, metadata !156} ; [ DW_TAG_arg_variable ]
!158 = metadata !{i32 187, i32 45, metadata !126, metadata !156}
!159 = metadata !{i32 189, i32 46, metadata !132, metadata !156}
!160 = metadata !{i32 786688, metadata !132, metadata !"y", metadata !100, i32 189, metadata !52, i32 0, metadata !156} ; [ DW_TAG_auto_variable ]
!161 = metadata !{i32 190, i32 5, metadata !132, metadata !156}
!162 = metadata !{i32 286, i32 27, metadata !115, null}
!163 = metadata !{i32 786689, metadata !126, metadata !"x", metadata !100, i32 16777403, metadata !52, i32 0, metadata !162} ; [ DW_TAG_arg_variable ]
!164 = metadata !{i32 187, i32 45, metadata !126, metadata !162}
!165 = metadata !{i32 189, i32 46, metadata !132, metadata !162}
!166 = metadata !{i32 786688, metadata !132, metadata !"y", metadata !100, i32 189, metadata !52, i32 0, metadata !162} ; [ DW_TAG_auto_variable ]
!167 = metadata !{i32 190, i32 5, metadata !132, metadata !162}
!168 = metadata !{i32 287, i32 27, metadata !115, null}
!169 = metadata !{i32 786689, metadata !126, metadata !"x", metadata !100, i32 16777403, metadata !52, i32 0, metadata !168} ; [ DW_TAG_arg_variable ]
!170 = metadata !{i32 187, i32 45, metadata !126, metadata !168}
!171 = metadata !{i32 189, i32 46, metadata !132, metadata !168}
!172 = metadata !{i32 786688, metadata !132, metadata !"y", metadata !100, i32 189, metadata !52, i32 0, metadata !168} ; [ DW_TAG_auto_variable ]
!173 = metadata !{i32 190, i32 5, metadata !132, metadata !168}
!174 = metadata !{i32 274, i32 25, metadata !112, null}
!175 = metadata !{i32 786688, metadata !113, metadata !"i", metadata !100, i32 272, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!176 = metadata !{i32 289, i32 1, metadata !113, null}
!177 = metadata !{i32 786689, metadata !178, metadata !"k", null, i32 292, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!178 = metadata !{i32 786478, i32 0, metadata !100, metadata !"aes_expandEncKey", metadata !"aes_expandEncKey", metadata !"", metadata !100, i32 292, metadata !179, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !78, i32 293} ; [ DW_TAG_subprogram ]
!179 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !180, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!180 = metadata !{null, metadata !66, metadata !66}
!181 = metadata !{i32 292, i32 45, metadata !178, null}
!182 = metadata !{i32 790532, metadata !178, metadata !"rc", null, i32 292, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable_ro ]
!183 = metadata !{i32 292, i32 63, metadata !178, null}
!184 = metadata !{i32 296, i32 5, metadata !185, null}
!185 = metadata !{i32 786443, metadata !178, i32 293, i32 1, metadata !100, i32 28} ; [ DW_TAG_lexical_block ]
!186 = metadata !{i32 297, i32 5, metadata !185, null}
!187 = metadata !{i32 298, i32 5, metadata !185, null}
!188 = metadata !{i32 299, i32 5, metadata !185, null}
!189 = metadata !{i32 786689, metadata !126, metadata !"x", metadata !100, i32 16777403, metadata !52, i32 0, metadata !190} ; [ DW_TAG_arg_variable ]
!190 = metadata !{i32 300, i32 11, metadata !185, null}
!191 = metadata !{i32 187, i32 45, metadata !126, metadata !190}
!192 = metadata !{i32 189, i32 46, metadata !132, metadata !190}
!193 = metadata !{i32 786688, metadata !132, metadata !"y", metadata !100, i32 189, metadata !52, i32 0, metadata !190} ; [ DW_TAG_auto_variable ]
!194 = metadata !{i32 190, i32 5, metadata !132, metadata !190}
!195 = metadata !{i32 302, i32 9, metadata !196, null}
!196 = metadata !{i32 786443, metadata !185, i32 302, i32 5, metadata !100, i32 29} ; [ DW_TAG_lexical_block ]
!197 = metadata !{i32 302, i32 32, metadata !196, null}
!198 = metadata !{i32 302, i32 24, metadata !196, null}
!199 = metadata !{i32 786688, metadata !185, metadata !"i", metadata !100, i32 294, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!200 = metadata !{i32 304, i32 5, metadata !185, null}
!201 = metadata !{i32 305, i32 5, metadata !185, null}
!202 = metadata !{i32 306, i32 5, metadata !185, null}
!203 = metadata !{i32 307, i32 5, metadata !185, null}
!204 = metadata !{i32 309, i32 9, metadata !205, null}
!205 = metadata !{i32 786443, metadata !185, i32 309, i32 5, metadata !100, i32 30} ; [ DW_TAG_lexical_block ]
!206 = metadata !{i32 309, i32 33, metadata !205, null}
!207 = metadata !{i32 309, i32 25, metadata !205, null}
!208 = metadata !{i32 312, i32 1, metadata !185, null}
!209 = metadata !{i32 790532, metadata !210, metadata !"rc", null, i32 315, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable_ro ]
!210 = metadata !{i32 786478, i32 0, metadata !100, metadata !"aes_expandDecKey", metadata !"aes_expandDecKey", metadata !"", metadata !100, i32 315, metadata !179, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !78, i32 316} ; [ DW_TAG_subprogram ]
!211 = metadata !{i32 315, i32 56, metadata !210, null}
!212 = metadata !{i32 319, i32 9, metadata !213, null}
!213 = metadata !{i32 786443, metadata !214, i32 319, i32 5, metadata !100, i32 17} ; [ DW_TAG_lexical_block ]
!214 = metadata !{i32 786443, metadata !210, i32 316, i32 1, metadata !100, i32 16} ; [ DW_TAG_lexical_block ]
!215 = metadata !{i32 319, i32 33, metadata !213, null}
!216 = metadata !{i32 319, i32 25, metadata !213, null}
!217 = metadata !{i32 786688, metadata !214, metadata !"i", metadata !100, i32 317, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!218 = metadata !{i32 322, i32 5, metadata !214, null}
!219 = metadata !{i32 323, i32 5, metadata !214, null}
!220 = metadata !{i32 324, i32 5, metadata !214, null}
!221 = metadata !{i32 325, i32 5, metadata !214, null}
!222 = metadata !{i32 327, i32 9, metadata !223, null}
!223 = metadata !{i32 786443, metadata !214, i32 327, i32 5, metadata !100, i32 18} ; [ DW_TAG_lexical_block ]
!224 = metadata !{i32 327, i32 32, metadata !223, null}
!225 = metadata !{i32 327, i32 24, metadata !223, null}
!226 = metadata !{i32 330, i32 5, metadata !214, null}
!227 = metadata !{i32 331, i32 5, metadata !214, null}
!228 = metadata !{i32 332, i32 5, metadata !214, null}
!229 = metadata !{i32 333, i32 5, metadata !214, null}
!230 = metadata !{i32 334, i32 5, metadata !214, null}
!231 = metadata !{i32 790534, metadata !210, metadata !"rc", null, i32 315, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable_wo ]
!232 = metadata !{i32 335, i32 1, metadata !214, null}
!233 = metadata !{i32 786689, metadata !234, metadata !"buf", null, i32 210, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!234 = metadata !{i32 786478, i32 0, metadata !100, metadata !"aes_addRoundKey", metadata !"aes_addRoundKey", metadata !"", metadata !100, i32 210, metadata !179, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !78, i32 211} ; [ DW_TAG_subprogram ]
!235 = metadata !{i32 210, i32 44, metadata !234, null}
!236 = metadata !{i32 786689, metadata !234, metadata !"key", null, i32 210, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!237 = metadata !{i32 210, i32 64, metadata !234, null}
!238 = metadata !{i32 214, i32 5, metadata !239, null}
!239 = metadata !{i32 786443, metadata !234, i32 211, i32 1, metadata !100, i32 21} ; [ DW_TAG_lexical_block ]
!240 = metadata !{i32 786688, metadata !239, metadata !"i", metadata !100, i32 212, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!241 = metadata !{i32 214, i32 17, metadata !239, null}
!242 = metadata !{i32 215, i32 1, metadata !239, null}
!243 = metadata !{metadata !244}
!244 = metadata !{i32 0, i32 7, metadata !245}
!245 = metadata !{metadata !246}
!246 = metadata !{metadata !"memptr", metadata !247, metadata !"unsigned char", i32 0, i32 7}
!247 = metadata !{metadata !248}
!248 = metadata !{i32 0, i32 63, i32 1}
!249 = metadata !{metadata !250}
!250 = metadata !{i32 0, i32 2, metadata !251}
!251 = metadata !{metadata !252}
!252 = metadata !{metadata !"mode", metadata !253, metadata !"enum ", i32 0, i32 2}
!253 = metadata !{metadata !254}
!254 = metadata !{i32 0, i32 0, i32 0}
!255 = metadata !{metadata !256}
!256 = metadata !{i32 0, i32 31, metadata !257}
!257 = metadata !{metadata !258}
!258 = metadata !{metadata !"inbuf_addr", metadata !253, metadata !"unsigned int", i32 0, i32 31}
!259 = metadata !{metadata !260}
!260 = metadata !{i32 0, i32 31, metadata !261}
!261 = metadata !{metadata !262}
!262 = metadata !{metadata !"outbuf_addr", metadata !253, metadata !"unsigned int", i32 0, i32 31}
!263 = metadata !{i32 786689, metadata !63, metadata !"memptr", null, i32 8, metadata !264, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!264 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !52, metadata !265, i32 0, i32 0} ; [ DW_TAG_array_type ]
!265 = metadata !{metadata !266}
!266 = metadata !{i32 786465, i64 0, i64 63}      ; [ DW_TAG_subrange_type ]
!267 = metadata !{i32 8, i32 30, metadata !63, null}
!268 = metadata !{i32 786689, metadata !63, metadata !"mode", metadata !43, i32 33554440, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!269 = metadata !{i32 8, i32 55, metadata !63, null}
!270 = metadata !{i32 786689, metadata !63, metadata !"inbuf_addr", metadata !43, i32 50331656, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!271 = metadata !{i32 8, i32 70, metadata !63, null}
!272 = metadata !{i32 786689, metadata !63, metadata !"outbuf_addr", metadata !43, i32 67108872, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!273 = metadata !{i32 8, i32 91, metadata !63, null}
!274 = metadata !{i32 9, i32 1, metadata !275, null}
!275 = metadata !{i32 786443, metadata !63, i32 8, i32 104, metadata !43, i32 0} ; [ DW_TAG_lexical_block ]
!276 = metadata !{i32 10, i32 1, metadata !275, null}
!277 = metadata !{i32 12, i32 1, metadata !275, null}
!278 = metadata !{i32 13, i32 1, metadata !275, null}
!279 = metadata !{i32 786688, metadata !275, metadata !"buf", metadata !43, i32 15, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!280 = metadata !{i32 15, i32 16, metadata !275, null}
!281 = metadata !{i32 23, i32 5, metadata !275, null}
!282 = metadata !{i32 25, i32 10, metadata !283, null}
!283 = metadata !{i32 786443, metadata !284, i32 25, i32 6, metadata !43, i32 2} ; [ DW_TAG_lexical_block ]
!284 = metadata !{i32 786443, metadata !275, i32 23, i32 20, metadata !43, i32 1} ; [ DW_TAG_lexical_block ]
!285 = metadata !{i32 31, i32 10, metadata !286, null}
!286 = metadata !{i32 786443, metadata !284, i32 31, i32 6, metadata !43, i32 4} ; [ DW_TAG_lexical_block ]
!287 = metadata !{i32 47, i32 10, metadata !288, null}
!288 = metadata !{i32 786443, metadata !284, i32 47, i32 6, metadata !43, i32 10} ; [ DW_TAG_lexical_block ]
!289 = metadata !{i32 65, i32 10, metadata !290, null}
!290 = metadata !{i32 786443, metadata !284, i32 65, i32 6, metadata !43, i32 18} ; [ DW_TAG_lexical_block ]
!291 = metadata !{i32 71, i32 10, metadata !292, null}
!292 = metadata !{i32 786443, metadata !284, i32 71, i32 6, metadata !43, i32 19} ; [ DW_TAG_lexical_block ]
!293 = metadata !{i32 344, i32 10, metadata !294, metadata !306}
!294 = metadata !{i32 786443, metadata !295, i32 344, i32 5, metadata !100, i32 1} ; [ DW_TAG_lexical_block ]
!295 = metadata !{i32 786443, metadata !296, i32 340, i32 1, metadata !100, i32 0} ; [ DW_TAG_lexical_block ]
!296 = metadata !{i32 786478, i32 0, metadata !100, metadata !"aes256_init", metadata !"aes256_init", metadata !"", metadata !100, i32 339, metadata !297, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !78, i32 340} ; [ DW_TAG_subprogram ]
!297 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !298, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!298 = metadata !{null, metadata !299, metadata !66}
!299 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !300} ; [ DW_TAG_pointer_type ]
!300 = metadata !{i32 786454, null, metadata !"aes256_context", metadata !100, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !301} ; [ DW_TAG_typedef ]
!301 = metadata !{i32 786451, null, metadata !"", metadata !45, i32 28, i64 768, i64 8, i32 0, i32 0, null, metadata !302, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!302 = metadata !{metadata !303, metadata !304, metadata !305}
!303 = metadata !{i32 786445, metadata !301, metadata !"key", metadata !45, i32 29, i64 256, i64 8, i64 0, i32 0, metadata !51} ; [ DW_TAG_member ]
!304 = metadata !{i32 786445, metadata !301, metadata !"enckey", metadata !45, i32 30, i64 256, i64 8, i64 256, i32 0, metadata !51} ; [ DW_TAG_member ]
!305 = metadata !{i32 786445, metadata !301, metadata !"deckey", metadata !45, i32 31, i64 256, i64 8, i64 512, i32 0, metadata !51} ; [ DW_TAG_member ]
!306 = metadata !{i32 26, i32 6, metadata !284, null}
!307 = metadata !{i32 25, i32 27, metadata !308, null}
!308 = metadata !{i32 786443, metadata !283, i32 25, i32 26, metadata !43, i32 3} ; [ DW_TAG_lexical_block ]
!309 = metadata !{i32 25, i32 21, metadata !283, null}
!310 = metadata !{i32 786688, metadata !275, metadata !"i", metadata !43, i32 21, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!311 = metadata !{i32 345, i32 10, metadata !312, metadata !306}
!312 = metadata !{i32 786443, metadata !295, i32 345, i32 5, metadata !100, i32 2} ; [ DW_TAG_lexical_block ]
!313 = metadata !{i32 344, i32 44, metadata !294, metadata !306}
!314 = metadata !{i32 344, i32 39, metadata !294, metadata !306}
!315 = metadata !{i32 786688, metadata !295, metadata !"i", metadata !100, i32 342, metadata !52, i32 0, metadata !306} ; [ DW_TAG_auto_variable ]
!316 = metadata !{i32 345, i32 23, metadata !312, metadata !306}
!317 = metadata !{i32 786688, metadata !295, metadata !"rcon", metadata !100, i32 341, metadata !52, i32 0, metadata !306} ; [ DW_TAG_auto_variable ]
!318 = metadata !{i32 34, i32 10, metadata !319, null}
!319 = metadata !{i32 786443, metadata !284, i32 34, i32 6, metadata !43, i32 5} ; [ DW_TAG_lexical_block ]
!320 = metadata !{i32 32, i32 7, metadata !286, null}
!321 = metadata !{i32 31, i32 21, metadata !286, null}
!322 = metadata !{i32 34, i32 28, metadata !323, null}
!323 = metadata !{i32 786443, metadata !319, i32 34, i32 26, metadata !43, i32 6} ; [ DW_TAG_lexical_block ]
!324 = metadata !{i32 34, i32 21, metadata !319, null}
!325 = metadata !{i32 36, i32 6, metadata !284, null}
!326 = metadata !{i32 38, i32 10, metadata !327, null}
!327 = metadata !{i32 786443, metadata !284, i32 38, i32 6, metadata !43, i32 7} ; [ DW_TAG_lexical_block ]
!328 = metadata !{i32 41, i32 10, metadata !329, null}
!329 = metadata !{i32 786443, metadata !284, i32 41, i32 6, metadata !43, i32 9} ; [ DW_TAG_lexical_block ]
!330 = metadata !{i32 38, i32 28, metadata !331, null}
!331 = metadata !{i32 786443, metadata !327, i32 38, i32 26, metadata !43, i32 8} ; [ DW_TAG_lexical_block ]
!332 = metadata !{i32 38, i32 21, metadata !327, null}
!333 = metadata !{i32 42, i32 7, metadata !329, null}
!334 = metadata !{i32 41, i32 21, metadata !329, null}
!335 = metadata !{i32 50, i32 10, metadata !336, null}
!336 = metadata !{i32 786443, metadata !284, i32 50, i32 6, metadata !43, i32 11} ; [ DW_TAG_lexical_block ]
!337 = metadata !{i32 48, i32 7, metadata !288, null}
!338 = metadata !{i32 47, i32 21, metadata !288, null}
!339 = metadata !{i32 50, i32 28, metadata !340, null}
!340 = metadata !{i32 786443, metadata !336, i32 50, i32 26, metadata !43, i32 12} ; [ DW_TAG_lexical_block ]
!341 = metadata !{i32 50, i32 21, metadata !336, null}
!342 = metadata !{i32 52, i32 6, metadata !284, null}
!343 = metadata !{i32 54, i32 10, metadata !344, null}
!344 = metadata !{i32 786443, metadata !284, i32 54, i32 6, metadata !43, i32 13} ; [ DW_TAG_lexical_block ]
!345 = metadata !{i32 56, i32 10, metadata !346, null}
!346 = metadata !{i32 786443, metadata !284, i32 56, i32 6, metadata !43, i32 15} ; [ DW_TAG_lexical_block ]
!347 = metadata !{i32 54, i32 28, metadata !348, null}
!348 = metadata !{i32 786443, metadata !344, i32 54, i32 26, metadata !43, i32 14} ; [ DW_TAG_lexical_block ]
!349 = metadata !{i32 54, i32 21, metadata !344, null}
!350 = metadata !{i32 59, i32 10, metadata !351, null}
!351 = metadata !{i32 786443, metadata !284, i32 59, i32 6, metadata !43, i32 17} ; [ DW_TAG_lexical_block ]
!352 = metadata !{i32 56, i32 28, metadata !353, null}
!353 = metadata !{i32 786443, metadata !346, i32 56, i32 26, metadata !43, i32 16} ; [ DW_TAG_lexical_block ]
!354 = metadata !{i32 56, i32 21, metadata !346, null}
!355 = metadata !{i32 60, i32 7, metadata !351, null}
!356 = metadata !{i32 59, i32 21, metadata !351, null}
!357 = metadata !{i32 66, i32 7, metadata !290, null}
!358 = metadata !{i32 65, i32 21, metadata !290, null}
!359 = metadata !{i32 72, i32 7, metadata !292, null}
!360 = metadata !{i32 71, i32 21, metadata !292, null}
!361 = metadata !{i32 75, i32 1, metadata !275, null}
!362 = metadata !{i32 786689, metadata !363, metadata !"buf", null, i32 358, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!363 = metadata !{i32 786478, i32 0, metadata !100, metadata !"aes256_encrypt_ecb", metadata !"aes256_encrypt_ecb", metadata !"", metadata !100, i32 358, metadata !297, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !78, i32 359} ; [ DW_TAG_subprogram ]
!364 = metadata !{i32 358, i32 61, metadata !363, null}
!365 = metadata !{i32 786689, metadata !366, metadata !"buf", null, i32 218, metadata !80, i32 0, metadata !369} ; [ DW_TAG_arg_variable ]
!366 = metadata !{i32 786478, i32 0, metadata !100, metadata !"aes_addRoundKey_cpy", metadata !"aes_addRoundKey_cpy", metadata !"", metadata !100, i32 218, metadata !367, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !78, i32 219} ; [ DW_TAG_subprogram ]
!367 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !368, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!368 = metadata !{null, metadata !66, metadata !66, metadata !66}
!369 = metadata !{i32 362, i32 5, metadata !370, null}
!370 = metadata !{i32 786443, metadata !363, i32 359, i32 1, metadata !100, i32 5} ; [ DW_TAG_lexical_block ]
!371 = metadata !{i32 218, i32 48, metadata !366, metadata !369}
!372 = metadata !{i32 222, i32 5, metadata !373, metadata !369}
!373 = metadata !{i32 786443, metadata !366, i32 219, i32 1, metadata !100, i32 27} ; [ DW_TAG_lexical_block ]
!374 = metadata !{i32 786688, metadata !373, metadata !"i", metadata !100, i32 220, metadata !52, i32 0, metadata !369} ; [ DW_TAG_auto_variable ]
!375 = metadata !{i32 231, i32 5, metadata !376, metadata !378}
!376 = metadata !{i32 786443, metadata !377, i32 228, i32 1, metadata !100, i32 25} ; [ DW_TAG_lexical_block ]
!377 = metadata !{i32 786478, i32 0, metadata !100, metadata !"aes_shiftRows", metadata !"aes_shiftRows", metadata !"", metadata !100, i32 227, metadata !108, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !78, i32 228} ; [ DW_TAG_subprogram ]
!378 = metadata !{i32 366, i32 9, metadata !379, null}
!379 = metadata !{i32 786443, metadata !380, i32 364, i32 5, metadata !100, i32 7} ; [ DW_TAG_lexical_block ]
!380 = metadata !{i32 786443, metadata !370, i32 363, i32 5, metadata !100, i32 6} ; [ DW_TAG_lexical_block ]
!381 = metadata !{i32 232, i32 5, metadata !376, metadata !378}
!382 = metadata !{i32 233, i32 5, metadata !376, metadata !378}
!383 = metadata !{i32 234, i32 5, metadata !376, metadata !378}
!384 = metadata !{i32 363, i32 9, metadata !380, null}
!385 = metadata !{i32 222, i32 17, metadata !373, metadata !369}
!386 = metadata !{i32 198, i32 5, metadata !387, metadata !389}
!387 = metadata !{i32 786443, metadata !388, i32 195, i32 1, metadata !100, i32 26} ; [ DW_TAG_lexical_block ]
!388 = metadata !{i32 786478, i32 0, metadata !100, metadata !"aes_subBytes", metadata !"aes_subBytes", metadata !"", metadata !100, i32 194, metadata !108, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !78, i32 195} ; [ DW_TAG_subprogram ]
!389 = metadata !{i32 365, i32 9, metadata !379, null}
!390 = metadata !{i32 198, i32 5, metadata !387, metadata !391}
!391 = metadata !{i32 371, i32 5, metadata !370, null}
!392 = metadata !{i32 786688, metadata !387, metadata !"i", metadata !100, i32 196, metadata !52, i32 0, metadata !389} ; [ DW_TAG_auto_variable ]
!393 = metadata !{i32 198, i32 17, metadata !387, metadata !389}
!394 = metadata !{i32 786689, metadata !377, metadata !"buf", null, i32 227, metadata !80, i32 0, metadata !378} ; [ DW_TAG_arg_variable ]
!395 = metadata !{i32 227, i32 42, metadata !377, metadata !378}
!396 = metadata !{i32 786688, metadata !376, metadata !"i", metadata !100, i32 229, metadata !52, i32 0, metadata !378} ; [ DW_TAG_auto_variable ]
!397 = metadata !{i32 786688, metadata !376, metadata !"j", metadata !100, i32 229, metadata !52, i32 0, metadata !378} ; [ DW_TAG_auto_variable ]
!398 = metadata !{i32 786689, metadata !399, metadata !"buf", null, i32 251, metadata !80, i32 0, metadata !400} ; [ DW_TAG_arg_variable ]
!399 = metadata !{i32 786478, i32 0, metadata !100, metadata !"aes_mixColumns", metadata !"aes_mixColumns", metadata !"", metadata !100, i32 251, metadata !108, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !78, i32 252} ; [ DW_TAG_subprogram ]
!400 = metadata !{i32 367, i32 9, metadata !379, null}
!401 = metadata !{i32 251, i32 43, metadata !399, metadata !400}
!402 = metadata !{i32 255, i32 10, metadata !403, metadata !400}
!403 = metadata !{i32 786443, metadata !404, i32 255, i32 5, metadata !100, i32 23} ; [ DW_TAG_lexical_block ]
!404 = metadata !{i32 786443, metadata !399, i32 252, i32 1, metadata !100, i32 22} ; [ DW_TAG_lexical_block ]
!405 = metadata !{i32 257, i32 9, metadata !406, metadata !400}
!406 = metadata !{i32 786443, metadata !403, i32 256, i32 5, metadata !100, i32 24} ; [ DW_TAG_lexical_block ]
!407 = metadata !{i32 786688, metadata !404, metadata !"a", metadata !100, i32 253, metadata !52, i32 0, metadata !400} ; [ DW_TAG_auto_variable ]
!408 = metadata !{i32 258, i32 9, metadata !406, metadata !400}
!409 = metadata !{i32 786688, metadata !404, metadata !"b", metadata !100, i32 253, metadata !52, i32 0, metadata !400} ; [ DW_TAG_auto_variable ]
!410 = metadata !{i32 259, i32 9, metadata !406, metadata !400}
!411 = metadata !{i32 786688, metadata !404, metadata !"c", metadata !100, i32 253, metadata !52, i32 0, metadata !400} ; [ DW_TAG_auto_variable ]
!412 = metadata !{i32 260, i32 9, metadata !406, metadata !400}
!413 = metadata !{i32 786688, metadata !404, metadata !"d", metadata !100, i32 253, metadata !52, i32 0, metadata !400} ; [ DW_TAG_auto_variable ]
!414 = metadata !{i32 261, i32 9, metadata !406, metadata !400}
!415 = metadata !{i32 786688, metadata !404, metadata !"e", metadata !100, i32 253, metadata !52, i32 0, metadata !400} ; [ DW_TAG_auto_variable ]
!416 = metadata !{i32 786689, metadata !126, metadata !"x", metadata !100, i32 16777403, metadata !52, i32 0, metadata !417} ; [ DW_TAG_arg_variable ]
!417 = metadata !{i32 262, i32 23, metadata !406, metadata !400}
!418 = metadata !{i32 187, i32 45, metadata !126, metadata !417}
!419 = metadata !{i32 189, i32 46, metadata !132, metadata !417}
!420 = metadata !{i32 786688, metadata !132, metadata !"y", metadata !100, i32 189, metadata !52, i32 0, metadata !417} ; [ DW_TAG_auto_variable ]
!421 = metadata !{i32 190, i32 5, metadata !132, metadata !417}
!422 = metadata !{i32 263, i32 27, metadata !406, metadata !400}
!423 = metadata !{i32 786689, metadata !126, metadata !"x", metadata !100, i32 16777403, metadata !52, i32 0, metadata !422} ; [ DW_TAG_arg_variable ]
!424 = metadata !{i32 187, i32 45, metadata !126, metadata !422}
!425 = metadata !{i32 189, i32 46, metadata !132, metadata !422}
!426 = metadata !{i32 786688, metadata !132, metadata !"y", metadata !100, i32 189, metadata !52, i32 0, metadata !422} ; [ DW_TAG_auto_variable ]
!427 = metadata !{i32 190, i32 5, metadata !132, metadata !422}
!428 = metadata !{i32 264, i32 27, metadata !406, metadata !400}
!429 = metadata !{i32 786689, metadata !126, metadata !"x", metadata !100, i32 16777403, metadata !52, i32 0, metadata !428} ; [ DW_TAG_arg_variable ]
!430 = metadata !{i32 187, i32 45, metadata !126, metadata !428}
!431 = metadata !{i32 189, i32 46, metadata !132, metadata !428}
!432 = metadata !{i32 786688, metadata !132, metadata !"y", metadata !100, i32 189, metadata !52, i32 0, metadata !428} ; [ DW_TAG_auto_variable ]
!433 = metadata !{i32 190, i32 5, metadata !132, metadata !428}
!434 = metadata !{i32 265, i32 27, metadata !406, metadata !400}
!435 = metadata !{i32 786689, metadata !126, metadata !"x", metadata !100, i32 16777403, metadata !52, i32 0, metadata !434} ; [ DW_TAG_arg_variable ]
!436 = metadata !{i32 187, i32 45, metadata !126, metadata !434}
!437 = metadata !{i32 189, i32 46, metadata !132, metadata !434}
!438 = metadata !{i32 786688, metadata !132, metadata !"y", metadata !100, i32 189, metadata !52, i32 0, metadata !434} ; [ DW_TAG_auto_variable ]
!439 = metadata !{i32 190, i32 5, metadata !132, metadata !434}
!440 = metadata !{i32 255, i32 25, metadata !403, metadata !400}
!441 = metadata !{i32 786688, metadata !404, metadata !"i", metadata !100, i32 253, metadata !52, i32 0, metadata !400} ; [ DW_TAG_auto_variable ]
!442 = metadata !{i32 368, i32 9, metadata !379, null}
!443 = metadata !{i32 368, i32 21, metadata !379, null}
!444 = metadata !{i32 369, i32 14, metadata !379, null}
!445 = metadata !{i32 786688, metadata !370, metadata !"rcon", metadata !100, i32 360, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!446 = metadata !{i32 369, i32 49, metadata !379, null}
!447 = metadata !{i32 363, i32 34, metadata !380, null}
!448 = metadata !{i32 786688, metadata !370, metadata !"i", metadata !100, i32 360, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!449 = metadata !{i32 786688, metadata !387, metadata !"i", metadata !100, i32 196, metadata !52, i32 0, metadata !391} ; [ DW_TAG_auto_variable ]
!450 = metadata !{i32 198, i32 17, metadata !387, metadata !391}
!451 = metadata !{i32 786689, metadata !377, metadata !"buf", null, i32 227, metadata !80, i32 0, metadata !452} ; [ DW_TAG_arg_variable ]
!452 = metadata !{i32 372, i32 5, metadata !370, null}
!453 = metadata !{i32 227, i32 42, metadata !377, metadata !452}
!454 = metadata !{i32 231, i32 5, metadata !376, metadata !452}
!455 = metadata !{i32 786688, metadata !376, metadata !"i", metadata !100, i32 229, metadata !52, i32 0, metadata !452} ; [ DW_TAG_auto_variable ]
!456 = metadata !{i32 232, i32 5, metadata !376, metadata !452}
!457 = metadata !{i32 233, i32 5, metadata !376, metadata !452}
!458 = metadata !{i32 786688, metadata !376, metadata !"j", metadata !100, i32 229, metadata !52, i32 0, metadata !452} ; [ DW_TAG_auto_variable ]
!459 = metadata !{i32 234, i32 5, metadata !376, metadata !452}
!460 = metadata !{i32 373, i32 5, metadata !370, null}
!461 = metadata !{i32 374, i32 5, metadata !370, null}
!462 = metadata !{i32 375, i32 1, metadata !370, null}
!463 = metadata !{i32 786689, metadata !464, metadata !"buf", null, i32 378, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!464 = metadata !{i32 786478, i32 0, metadata !100, metadata !"aes256_decrypt_ecb", metadata !"aes256_decrypt_ecb", metadata !"", metadata !100, i32 378, metadata !297, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !78, i32 379} ; [ DW_TAG_subprogram ]
!465 = metadata !{i32 378, i32 61, metadata !464, null}
!466 = metadata !{i32 786689, metadata !366, metadata !"buf", null, i32 218, metadata !80, i32 0, metadata !467} ; [ DW_TAG_arg_variable ]
!467 = metadata !{i32 382, i32 5, metadata !468, null}
!468 = metadata !{i32 786443, metadata !464, i32 379, i32 1, metadata !100, i32 8} ; [ DW_TAG_lexical_block ]
!469 = metadata !{i32 218, i32 48, metadata !366, metadata !467}
!470 = metadata !{i32 222, i32 5, metadata !373, metadata !467}
!471 = metadata !{i32 786688, metadata !373, metadata !"i", metadata !100, i32 220, metadata !52, i32 0, metadata !467} ; [ DW_TAG_auto_variable ]
!472 = metadata !{i32 222, i32 17, metadata !373, metadata !467}
!473 = metadata !{i32 786689, metadata !474, metadata !"buf", null, i32 239, metadata !80, i32 0, metadata !475} ; [ DW_TAG_arg_variable ]
!474 = metadata !{i32 786478, i32 0, metadata !100, metadata !"aes_shiftRows_inv", metadata !"aes_shiftRows_inv", metadata !"", metadata !100, i32 239, metadata !108, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !78, i32 240} ; [ DW_TAG_subprogram ]
!475 = metadata !{i32 383, i32 5, metadata !468, null}
!476 = metadata !{i32 239, i32 46, metadata !474, metadata !475}
!477 = metadata !{i32 243, i32 5, metadata !478, metadata !475}
!478 = metadata !{i32 786443, metadata !474, i32 240, i32 1, metadata !100, i32 20} ; [ DW_TAG_lexical_block ]
!479 = metadata !{i32 786688, metadata !478, metadata !"i", metadata !100, i32 241, metadata !52, i32 0, metadata !475} ; [ DW_TAG_auto_variable ]
!480 = metadata !{i32 244, i32 5, metadata !478, metadata !475}
!481 = metadata !{i32 245, i32 5, metadata !478, metadata !475}
!482 = metadata !{i32 786688, metadata !478, metadata !"j", metadata !100, i32 241, metadata !52, i32 0, metadata !475} ; [ DW_TAG_auto_variable ]
!483 = metadata !{i32 246, i32 5, metadata !478, metadata !475}
!484 = metadata !{i32 786689, metadata !485, metadata !"buf", null, i32 202, metadata !80, i32 0, metadata !486} ; [ DW_TAG_arg_variable ]
!485 = metadata !{i32 786478, i32 0, metadata !100, metadata !"aes_subBytes_inv", metadata !"aes_subBytes_inv", metadata !"", metadata !100, i32 202, metadata !108, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !78, i32 203} ; [ DW_TAG_subprogram ]
!486 = metadata !{i32 384, i32 5, metadata !468, null}
!487 = metadata !{i32 202, i32 45, metadata !485, metadata !486}
!488 = metadata !{i32 206, i32 5, metadata !489, metadata !486}
!489 = metadata !{i32 786443, metadata !485, i32 203, i32 1, metadata !100, i32 19} ; [ DW_TAG_lexical_block ]
!490 = metadata !{i32 786688, metadata !489, metadata !"i", metadata !100, i32 204, metadata !52, i32 0, metadata !486} ; [ DW_TAG_auto_variable ]
!491 = metadata !{i32 386, i32 10, metadata !492, null}
!492 = metadata !{i32 786443, metadata !468, i32 386, i32 5, metadata !100, i32 9} ; [ DW_TAG_lexical_block ]
!493 = metadata !{i32 206, i32 17, metadata !489, metadata !486}
!494 = metadata !{i32 786688, metadata !468, metadata !"i", metadata !100, i32 380, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!495 = metadata !{i32 388, i32 9, metadata !496, null}
!496 = metadata !{i32 786443, metadata !492, i32 387, i32 5, metadata !100, i32 10} ; [ DW_TAG_lexical_block ]
!497 = metadata !{i32 390, i32 13, metadata !498, null}
!498 = metadata !{i32 786443, metadata !496, i32 389, i32 9, metadata !100, i32 11} ; [ DW_TAG_lexical_block ]
!499 = metadata !{i32 786688, metadata !468, metadata !"rcon", metadata !100, i32 380, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!500 = metadata !{i32 391, i32 13, metadata !498, null}
!501 = metadata !{i32 392, i32 9, metadata !498, null}
!502 = metadata !{i32 393, i32 14, metadata !496, null}
!503 = metadata !{i32 394, i32 9, metadata !496, null}
!504 = metadata !{i32 786689, metadata !474, metadata !"buf", null, i32 239, metadata !80, i32 0, metadata !505} ; [ DW_TAG_arg_variable ]
!505 = metadata !{i32 395, i32 9, metadata !496, null}
!506 = metadata !{i32 239, i32 46, metadata !474, metadata !505}
!507 = metadata !{i32 243, i32 5, metadata !478, metadata !505}
!508 = metadata !{i32 786688, metadata !478, metadata !"i", metadata !100, i32 241, metadata !52, i32 0, metadata !505} ; [ DW_TAG_auto_variable ]
!509 = metadata !{i32 244, i32 5, metadata !478, metadata !505}
!510 = metadata !{i32 245, i32 5, metadata !478, metadata !505}
!511 = metadata !{i32 786688, metadata !478, metadata !"j", metadata !100, i32 241, metadata !52, i32 0, metadata !505} ; [ DW_TAG_auto_variable ]
!512 = metadata !{i32 246, i32 5, metadata !478, metadata !505}
!513 = metadata !{i32 786689, metadata !485, metadata !"buf", null, i32 202, metadata !80, i32 0, metadata !514} ; [ DW_TAG_arg_variable ]
!514 = metadata !{i32 396, i32 9, metadata !496, null}
!515 = metadata !{i32 202, i32 45, metadata !485, metadata !514}
!516 = metadata !{i32 206, i32 5, metadata !489, metadata !514}
!517 = metadata !{i32 786688, metadata !489, metadata !"i", metadata !100, i32 204, metadata !52, i32 0, metadata !514} ; [ DW_TAG_auto_variable ]
!518 = metadata !{i32 206, i32 17, metadata !489, metadata !514}
!519 = metadata !{i32 397, i32 5, metadata !496, null}
!520 = metadata !{i32 398, i32 5, metadata !468, null}
!521 = metadata !{i32 399, i32 1, metadata !468, null}
