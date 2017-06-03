; ModuleID = '/home/brett/Thesis/Vivado_WS/aes256cbc/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aes256_context.0 = type { [32 x i8], [32 x i8], [32 x i8] }

@xorv = internal unnamed_addr global [16 x i8] zeroinitializer, align 16 ; [#uses=5 type=[16 x i8]*]
@sboxinv = internal unnamed_addr constant [256 x i8] c"R\09j\D506\A58\BF@\A3\9E\81\F3\D7\FB|\E39\82\9B/\FF\874\8ECD\C4\DE\E9\CBT{\942\A6\C2#=\EEL\95\0BB\FA\C3N\08.\A1f(\D9$\B2v[\A2Im\8B\D1%r\F8\F6d\86h\98\16\D4\A4\5C\CC]e\B6\92lpHP\FD\ED\B9\DA^\15FW\A7\8D\9D\84\90\D8\AB\00\8C\BC\D3\0A\F7\E4X\05\B8\B3E\06\D0,\1E\8F\CA?\0F\02\C1\AF\BD\03\01\13\8Ak:\91\11AOg\DC\EA\97\F2\CF\CE\F0\B4\E6s\96\ACt\22\E7\AD5\85\E2\F97\E8\1Cu\DFnG\F1\1Aq\1D)\C5\89o\B7b\0E\AA\18\BE\1B\FCV>K\C6\D2y \9A\DB\C0\FEx\CDZ\F4\1F\DD\A83\88\07\C71\B1\12\10Y'\80\EC_`Q\7F\A9\19\B5J\0D-\E5z\9F\93\C9\9C\EF\A0\E0;M\AE*\F5\B0\C8\EB\BB<\83S\99a\17+\04~\BAw\D6&\E1i\14cU!\0C}", align 16 ; [#uses=1 type=[256 x i8]*]
@sbox = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 16 ; [#uses=17 type=[256 x i8]*]
@lastbuf = internal unnamed_addr global [16 x i8] zeroinitializer, align 16 ; [#uses=2 type=[16 x i8]*]
@key = internal global [32 x i8] zeroinitializer, align 16 ; [#uses=2 type=[32 x i8]*]
@iv = internal unnamed_addr global [16 x i8] zeroinitializer, align 16 ; [#uses=2 type=[16 x i8]*]
@ctx = internal global %struct.aes256_context.0 zeroinitializer, align 1 ; [#uses=6 type=%struct.aes256_context.0*]
@aes256cbc.str = internal unnamed_addr constant [10 x i8] c"aes256cbc\00" ; [#uses=1 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]

; [#uses=14]
define internal fastcc zeroext i8 @rj_xtime(i8 zeroext %x) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8 %x}, i64 0, metadata !145), !dbg !146 ; [debug line = 187:45] [debug variable = x]
  %y = shl i8 %x, 1, !dbg !147                    ; [#uses=2 type=i8] [debug line = 189:46]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !149), !dbg !147 ; [debug line = 189:46] [debug variable = y]
  %tmp = icmp slt i8 %x, 0, !dbg !150             ; [#uses=1 type=i1] [debug line = 190:5]
  %tmp.1 = xor i8 %y, 27, !dbg !150               ; [#uses=1 type=i8] [debug line = 190:5]
  %y.1 = select i1 %tmp, i8 %tmp.1, i8 %y, !dbg !150 ; [#uses=1 type=i8] [debug line = 190:5]
  call void @llvm.dbg.value(metadata !{i8 %y.1}, i64 0, metadata !149), !dbg !150 ; [debug line = 190:5] [debug variable = y]
  ret i8 %y.1, !dbg !150                          ; [debug line = 190:5]
}

; [#uses=72]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=4]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
define internal fastcc void @aes_subBytes_inv(i8* %buf) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !151), !dbg !152 ; [debug line = 202:45] [debug variable = buf]
  br label %1, !dbg !153                          ; [debug line = 206:5]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 16, %0 ], [ %i.1, %2 ]            ; [#uses=2 type=i8]
  %i.1 = add i8 %i, -1, !dbg !153                 ; [#uses=2 type=i8] [debug line = 206:5]
  call void @llvm.dbg.value(metadata !{i8 %i.1}, i64 0, metadata !155), !dbg !153 ; [debug line = 206:5] [debug variable = i]
  %tmp = icmp eq i8 %i, 0, !dbg !153              ; [#uses=1 type=i1] [debug line = 206:5]
  br i1 %tmp, label %3, label %2, !dbg !153       ; [debug line = 206:5]

; <label>:2                                       ; preds = %1
  %tmp.3 = zext i8 %i.1 to i64, !dbg !156         ; [#uses=1 type=i64] [debug line = 206:17]
  %buf.addr = getelementptr inbounds i8* %buf, i64 %tmp.3, !dbg !156 ; [#uses=2 type=i8*] [debug line = 206:17]
  %buf.load = load i8* %buf.addr, align 1, !dbg !156 ; [#uses=2 type=i8] [debug line = 206:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  %tmp.4 = zext i8 %buf.load to i64, !dbg !156    ; [#uses=1 type=i64] [debug line = 206:17]
  %sboxinv.addr = getelementptr inbounds [256 x i8]* @sboxinv, i64 0, i64 %tmp.4, !dbg !156 ; [#uses=1 type=i8*] [debug line = 206:17]
  %sboxinv.load = load i8* %sboxinv.addr, align 1, !dbg !156 ; [#uses=2 type=i8] [debug line = 206:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sboxinv.load) nounwind
  store i8 %sboxinv.load, i8* %buf.addr, align 1, !dbg !156 ; [debug line = 206:17]
  br label %1, !dbg !156                          ; [debug line = 206:17]

; <label>:3                                       ; preds = %1
  ret void, !dbg !157                             ; [debug line = 207:1]
}

; [#uses=2]
define internal fastcc void @aes_subBytes(i8* %buf) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !158), !dbg !159 ; [debug line = 194:41] [debug variable = buf]
  br label %1, !dbg !160                          ; [debug line = 198:5]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 16, %0 ], [ %i.2, %2 ]            ; [#uses=2 type=i8]
  %i.2 = add i8 %i, -1, !dbg !160                 ; [#uses=2 type=i8] [debug line = 198:5]
  call void @llvm.dbg.value(metadata !{i8 %i.2}, i64 0, metadata !162), !dbg !160 ; [debug line = 198:5] [debug variable = i]
  %tmp = icmp eq i8 %i, 0, !dbg !160              ; [#uses=1 type=i1] [debug line = 198:5]
  br i1 %tmp, label %3, label %2, !dbg !160       ; [debug line = 198:5]

; <label>:2                                       ; preds = %1
  %tmp.5 = zext i8 %i.2 to i64, !dbg !163         ; [#uses=1 type=i64] [debug line = 198:17]
  %buf.addr = getelementptr inbounds i8* %buf, i64 %tmp.5, !dbg !163 ; [#uses=2 type=i8*] [debug line = 198:17]
  %buf.load = load i8* %buf.addr, align 1, !dbg !163 ; [#uses=2 type=i8] [debug line = 198:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  %tmp.6 = zext i8 %buf.load to i64, !dbg !163    ; [#uses=1 type=i64] [debug line = 198:17]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.6, !dbg !163 ; [#uses=1 type=i8*] [debug line = 198:17]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !163 ; [#uses=2 type=i8] [debug line = 198:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load) nounwind
  store i8 %sbox.load, i8* %buf.addr, align 1, !dbg !163 ; [debug line = 198:17]
  br label %1, !dbg !163                          ; [debug line = 198:17]

; <label>:3                                       ; preds = %1
  ret void, !dbg !164                             ; [debug line = 199:1]
}

; [#uses=2]
define internal fastcc void @aes_shiftRows_inv(i8* %buf) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !165), !dbg !166 ; [debug line = 239:46] [debug variable = buf]
  %buf.addr = getelementptr inbounds i8* %buf, i64 1, !dbg !167 ; [#uses=2 type=i8*] [debug line = 243:5]
  %i = load i8* %buf.addr, align 1, !dbg !167     ; [#uses=2 type=i8] [debug line = 243:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %i) nounwind
  call void @llvm.dbg.value(metadata !{i8 %i}, i64 0, metadata !169), !dbg !167 ; [debug line = 243:5] [debug variable = i]
  %buf.addr.1 = getelementptr inbounds i8* %buf, i64 13, !dbg !167 ; [#uses=2 type=i8*] [debug line = 243:5]
  %buf.load = load i8* %buf.addr.1, align 1, !dbg !167 ; [#uses=2 type=i8] [debug line = 243:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  store i8 %buf.load, i8* %buf.addr, align 1, !dbg !167 ; [debug line = 243:5]
  %buf.addr.2 = getelementptr inbounds i8* %buf, i64 9, !dbg !167 ; [#uses=2 type=i8*] [debug line = 243:5]
  %buf.load.1 = load i8* %buf.addr.2, align 1, !dbg !167 ; [#uses=2 type=i8] [debug line = 243:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.1) nounwind
  store i8 %buf.load.1, i8* %buf.addr.1, align 1, !dbg !167 ; [debug line = 243:5]
  %buf.addr.3 = getelementptr inbounds i8* %buf, i64 5, !dbg !167 ; [#uses=2 type=i8*] [debug line = 243:5]
  %buf.load.2 = load i8* %buf.addr.3, align 1, !dbg !167 ; [#uses=2 type=i8] [debug line = 243:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.2) nounwind
  store i8 %buf.load.2, i8* %buf.addr.2, align 1, !dbg !167 ; [debug line = 243:5]
  store i8 %i, i8* %buf.addr.3, align 1, !dbg !167 ; [debug line = 243:5]
  %buf.addr.4 = getelementptr inbounds i8* %buf, i64 2, !dbg !170 ; [#uses=2 type=i8*] [debug line = 244:5]
  %i.3 = load i8* %buf.addr.4, align 1, !dbg !170 ; [#uses=2 type=i8] [debug line = 244:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %i.3) nounwind
  call void @llvm.dbg.value(metadata !{i8 %i.3}, i64 0, metadata !169), !dbg !170 ; [debug line = 244:5] [debug variable = i]
  %buf.addr.5 = getelementptr inbounds i8* %buf, i64 10, !dbg !170 ; [#uses=2 type=i8*] [debug line = 244:5]
  %buf.load.4 = load i8* %buf.addr.5, align 1, !dbg !170 ; [#uses=2 type=i8] [debug line = 244:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.4) nounwind
  store i8 %buf.load.4, i8* %buf.addr.4, align 1, !dbg !170 ; [debug line = 244:5]
  store i8 %i.3, i8* %buf.addr.5, align 1, !dbg !170 ; [debug line = 244:5]
  %buf.addr.6 = getelementptr inbounds i8* %buf, i64 3, !dbg !171 ; [#uses=2 type=i8*] [debug line = 245:5]
  %j = load i8* %buf.addr.6, align 1, !dbg !171   ; [#uses=2 type=i8] [debug line = 245:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %j) nounwind
  call void @llvm.dbg.value(metadata !{i8 %j}, i64 0, metadata !172), !dbg !171 ; [debug line = 245:5] [debug variable = j]
  %buf.addr.7 = getelementptr inbounds i8* %buf, i64 7, !dbg !171 ; [#uses=2 type=i8*] [debug line = 245:5]
  %buf.load.6 = load i8* %buf.addr.7, align 1, !dbg !171 ; [#uses=2 type=i8] [debug line = 245:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.6) nounwind
  store i8 %buf.load.6, i8* %buf.addr.6, align 1, !dbg !171 ; [debug line = 245:5]
  %buf.addr.8 = getelementptr inbounds i8* %buf, i64 11, !dbg !171 ; [#uses=2 type=i8*] [debug line = 245:5]
  %buf.load.7 = load i8* %buf.addr.8, align 1, !dbg !171 ; [#uses=2 type=i8] [debug line = 245:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.7) nounwind
  store i8 %buf.load.7, i8* %buf.addr.7, align 1, !dbg !171 ; [debug line = 245:5]
  %buf.addr.9 = getelementptr inbounds i8* %buf, i64 15, !dbg !171 ; [#uses=2 type=i8*] [debug line = 245:5]
  %buf.load.8 = load i8* %buf.addr.9, align 1, !dbg !171 ; [#uses=2 type=i8] [debug line = 245:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.8) nounwind
  store i8 %buf.load.8, i8* %buf.addr.8, align 1, !dbg !171 ; [debug line = 245:5]
  store i8 %j, i8* %buf.addr.9, align 1, !dbg !171 ; [debug line = 245:5]
  %buf.addr.10 = getelementptr inbounds i8* %buf, i64 6, !dbg !173 ; [#uses=2 type=i8*] [debug line = 246:5]
  %j.1 = load i8* %buf.addr.10, align 1, !dbg !173 ; [#uses=2 type=i8] [debug line = 246:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %j.1) nounwind
  call void @llvm.dbg.value(metadata !{i8 %j.1}, i64 0, metadata !172), !dbg !173 ; [debug line = 246:5] [debug variable = j]
  %buf.addr.11 = getelementptr inbounds i8* %buf, i64 14, !dbg !173 ; [#uses=2 type=i8*] [debug line = 246:5]
  %buf.load.10 = load i8* %buf.addr.11, align 1, !dbg !173 ; [#uses=2 type=i8] [debug line = 246:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.10) nounwind
  store i8 %buf.load.10, i8* %buf.addr.10, align 1, !dbg !173 ; [debug line = 246:5]
  store i8 %j.1, i8* %buf.addr.11, align 1, !dbg !173 ; [debug line = 246:5]
  ret void, !dbg !174                             ; [debug line = 248:1]
}

; [#uses=2]
define internal fastcc void @aes_shiftRows(i8* %buf) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !175), !dbg !176 ; [debug line = 227:42] [debug variable = buf]
  %buf.addr = getelementptr inbounds i8* %buf, i64 1, !dbg !177 ; [#uses=2 type=i8*] [debug line = 231:5]
  %i = load i8* %buf.addr, align 1, !dbg !177     ; [#uses=2 type=i8] [debug line = 231:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %i) nounwind
  call void @llvm.dbg.value(metadata !{i8 %i}, i64 0, metadata !179), !dbg !177 ; [debug line = 231:5] [debug variable = i]
  %buf.addr.12 = getelementptr inbounds i8* %buf, i64 5, !dbg !177 ; [#uses=2 type=i8*] [debug line = 231:5]
  %buf.load = load i8* %buf.addr.12, align 1, !dbg !177 ; [#uses=2 type=i8] [debug line = 231:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  store i8 %buf.load, i8* %buf.addr, align 1, !dbg !177 ; [debug line = 231:5]
  %buf.addr.13 = getelementptr inbounds i8* %buf, i64 9, !dbg !177 ; [#uses=2 type=i8*] [debug line = 231:5]
  %buf.load.11 = load i8* %buf.addr.13, align 1, !dbg !177 ; [#uses=2 type=i8] [debug line = 231:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.11) nounwind
  store i8 %buf.load.11, i8* %buf.addr.12, align 1, !dbg !177 ; [debug line = 231:5]
  %buf.addr.14 = getelementptr inbounds i8* %buf, i64 13, !dbg !177 ; [#uses=2 type=i8*] [debug line = 231:5]
  %buf.load.12 = load i8* %buf.addr.14, align 1, !dbg !177 ; [#uses=2 type=i8] [debug line = 231:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.12) nounwind
  store i8 %buf.load.12, i8* %buf.addr.13, align 1, !dbg !177 ; [debug line = 231:5]
  store i8 %i, i8* %buf.addr.14, align 1, !dbg !177 ; [debug line = 231:5]
  %buf.addr.15 = getelementptr inbounds i8* %buf, i64 10, !dbg !180 ; [#uses=2 type=i8*] [debug line = 232:5]
  %i.4 = load i8* %buf.addr.15, align 1, !dbg !180 ; [#uses=2 type=i8] [debug line = 232:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %i.4) nounwind
  call void @llvm.dbg.value(metadata !{i8 %i.4}, i64 0, metadata !179), !dbg !180 ; [debug line = 232:5] [debug variable = i]
  %buf.addr.16 = getelementptr inbounds i8* %buf, i64 2, !dbg !180 ; [#uses=2 type=i8*] [debug line = 232:5]
  %buf.load.14 = load i8* %buf.addr.16, align 1, !dbg !180 ; [#uses=2 type=i8] [debug line = 232:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.14) nounwind
  store i8 %buf.load.14, i8* %buf.addr.15, align 1, !dbg !180 ; [debug line = 232:5]
  store i8 %i.4, i8* %buf.addr.16, align 1, !dbg !180 ; [debug line = 232:5]
  %buf.addr.17 = getelementptr inbounds i8* %buf, i64 3, !dbg !181 ; [#uses=2 type=i8*] [debug line = 233:5]
  %j = load i8* %buf.addr.17, align 1, !dbg !181  ; [#uses=2 type=i8] [debug line = 233:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %j) nounwind
  call void @llvm.dbg.value(metadata !{i8 %j}, i64 0, metadata !182), !dbg !181 ; [debug line = 233:5] [debug variable = j]
  %buf.addr.18 = getelementptr inbounds i8* %buf, i64 15, !dbg !181 ; [#uses=2 type=i8*] [debug line = 233:5]
  %buf.load.16 = load i8* %buf.addr.18, align 1, !dbg !181 ; [#uses=2 type=i8] [debug line = 233:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.16) nounwind
  store i8 %buf.load.16, i8* %buf.addr.17, align 1, !dbg !181 ; [debug line = 233:5]
  %buf.addr.19 = getelementptr inbounds i8* %buf, i64 11, !dbg !181 ; [#uses=2 type=i8*] [debug line = 233:5]
  %buf.load.17 = load i8* %buf.addr.19, align 1, !dbg !181 ; [#uses=2 type=i8] [debug line = 233:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.17) nounwind
  store i8 %buf.load.17, i8* %buf.addr.18, align 1, !dbg !181 ; [debug line = 233:5]
  %buf.addr.20 = getelementptr inbounds i8* %buf, i64 7, !dbg !181 ; [#uses=2 type=i8*] [debug line = 233:5]
  %buf.load.18 = load i8* %buf.addr.20, align 1, !dbg !181 ; [#uses=2 type=i8] [debug line = 233:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.18) nounwind
  store i8 %buf.load.18, i8* %buf.addr.19, align 1, !dbg !181 ; [debug line = 233:5]
  store i8 %j, i8* %buf.addr.20, align 1, !dbg !181 ; [debug line = 233:5]
  %buf.addr.21 = getelementptr inbounds i8* %buf, i64 14, !dbg !183 ; [#uses=2 type=i8*] [debug line = 234:5]
  %j.2 = load i8* %buf.addr.21, align 1, !dbg !183 ; [#uses=2 type=i8] [debug line = 234:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %j.2) nounwind
  call void @llvm.dbg.value(metadata !{i8 %j.2}, i64 0, metadata !182), !dbg !183 ; [debug line = 234:5] [debug variable = j]
  %buf.addr.22 = getelementptr inbounds i8* %buf, i64 6, !dbg !183 ; [#uses=2 type=i8*] [debug line = 234:5]
  %buf.load.20 = load i8* %buf.addr.22, align 1, !dbg !183 ; [#uses=2 type=i8] [debug line = 234:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.20) nounwind
  store i8 %buf.load.20, i8* %buf.addr.21, align 1, !dbg !183 ; [debug line = 234:5]
  store i8 %j.2, i8* %buf.addr.22, align 1, !dbg !183 ; [debug line = 234:5]
  ret void, !dbg !184                             ; [debug line = 236:1]
}

; [#uses=1]
define internal fastcc void @aes_mixColumns_inv(i8* %buf) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !185), !dbg !186 ; [debug line = 270:40] [debug variable = buf]
  br label %1, !dbg !187                          ; [debug line = 274:10]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 0, %0 ], [ %i.5, %2 ]             ; [#uses=4 type=i8]
  %tmp = icmp ult i8 %i, 16, !dbg !187            ; [#uses=1 type=i1] [debug line = 274:10]
  br i1 %tmp, label %2, label %3, !dbg !187       ; [debug line = 274:10]

; <label>:2                                       ; preds = %1
  %tmp.7 = zext i8 %i to i64, !dbg !190           ; [#uses=1 type=i64] [debug line = 276:9]
  %buf.addr = getelementptr inbounds i8* %buf, i64 %tmp.7, !dbg !190 ; [#uses=3 type=i8*] [debug line = 276:9]
  %a = load i8* %buf.addr, align 1, !dbg !190     ; [#uses=4 type=i8] [debug line = 276:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %a) nounwind
  call void @llvm.dbg.value(metadata !{i8 %a}, i64 0, metadata !192), !dbg !190 ; [debug line = 276:9] [debug variable = a]
  %tmp.8 = zext i8 %i to i32, !dbg !193           ; [#uses=3 type=i32] [debug line = 277:9]
  %tmp.9 = or i32 %tmp.8, 1, !dbg !193            ; [#uses=1 type=i32] [debug line = 277:9]
  %tmp.10 = zext i32 %tmp.9 to i64, !dbg !193     ; [#uses=1 type=i64] [debug line = 277:9]
  %buf.addr.23 = getelementptr inbounds i8* %buf, i64 %tmp.10, !dbg !193 ; [#uses=3 type=i8*] [debug line = 277:9]
  %b = load i8* %buf.addr.23, align 1, !dbg !193  ; [#uses=4 type=i8] [debug line = 277:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %b) nounwind
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !194), !dbg !193 ; [debug line = 277:9] [debug variable = b]
  %tmp.11 = or i32 %tmp.8, 2, !dbg !195           ; [#uses=1 type=i32] [debug line = 278:9]
  %tmp.12 = zext i32 %tmp.11 to i64, !dbg !195    ; [#uses=1 type=i64] [debug line = 278:9]
  %buf.addr.24 = getelementptr inbounds i8* %buf, i64 %tmp.12, !dbg !195 ; [#uses=3 type=i8*] [debug line = 278:9]
  %c = load i8* %buf.addr.24, align 1, !dbg !195  ; [#uses=5 type=i8] [debug line = 278:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %c) nounwind
  call void @llvm.dbg.value(metadata !{i8 %c}, i64 0, metadata !196), !dbg !195 ; [debug line = 278:9] [debug variable = c]
  %tmp.13 = or i32 %tmp.8, 3, !dbg !197           ; [#uses=1 type=i32] [debug line = 279:9]
  %tmp.14 = zext i32 %tmp.13 to i64, !dbg !197    ; [#uses=1 type=i64] [debug line = 279:9]
  %buf.addr.25 = getelementptr inbounds i8* %buf, i64 %tmp.14, !dbg !197 ; [#uses=3 type=i8*] [debug line = 279:9]
  %d = load i8* %buf.addr.25, align 1, !dbg !197  ; [#uses=5 type=i8] [debug line = 279:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %d) nounwind
  call void @llvm.dbg.value(metadata !{i8 %d}, i64 0, metadata !198), !dbg !197 ; [debug line = 279:9] [debug variable = d]
  %tmp.15 = xor i8 %b, %a, !dbg !199              ; [#uses=2 type=i8] [debug line = 280:9]
  %tmp.16 = xor i8 %c, %tmp.15, !dbg !199         ; [#uses=1 type=i8] [debug line = 280:9]
  %e = xor i8 %tmp.16, %d, !dbg !199              ; [#uses=3 type=i8] [debug line = 280:9]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !200), !dbg !199 ; [debug line = 280:9] [debug variable = e]
  %z = call fastcc zeroext i8 @rj_xtime(i8 zeroext %e), !dbg !201 ; [#uses=2 type=i8] [debug line = 281:13]
  call void @llvm.dbg.value(metadata !{i8 %z}, i64 0, metadata !202), !dbg !201 ; [debug line = 281:13] [debug variable = z]
  %tmp.18 = xor i8 %c, %a, !dbg !203              ; [#uses=1 type=i8] [debug line = 282:26]
  %tmp.19 = xor i8 %tmp.18, %z, !dbg !203         ; [#uses=1 type=i8] [debug line = 282:26]
  %tmp.20 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.19), !dbg !203 ; [#uses=1 type=i8] [debug line = 282:26]
  %tmp.21 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.20), !dbg !203 ; [#uses=1 type=i8] [debug line = 282:26]
  %x = xor i8 %tmp.21, %e, !dbg !203              ; [#uses=2 type=i8] [debug line = 282:26]
  call void @llvm.dbg.value(metadata !{i8 %x}, i64 0, metadata !204), !dbg !203 ; [debug line = 282:26] [debug variable = x]
  %tmp.23 = xor i8 %d, %b, !dbg !205              ; [#uses=1 type=i8] [debug line = 283:26]
  %tmp.24 = xor i8 %tmp.23, %z, !dbg !205         ; [#uses=1 type=i8] [debug line = 283:26]
  %tmp.25 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.24), !dbg !205 ; [#uses=1 type=i8] [debug line = 283:26]
  %tmp.26 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.25), !dbg !205 ; [#uses=1 type=i8] [debug line = 283:26]
  %y = xor i8 %tmp.26, %e, !dbg !205              ; [#uses=2 type=i8] [debug line = 283:26]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !206), !dbg !205 ; [debug line = 283:26] [debug variable = y]
  %tmp.28 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.15), !dbg !207 ; [#uses=1 type=i8] [debug line = 284:23]
  %buf.load = load i8* %buf.addr, align 1, !dbg !207 ; [#uses=2 type=i8] [debug line = 284:23]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  %tmp.29 = xor i8 %tmp.28, %x, !dbg !207         ; [#uses=1 type=i8] [debug line = 284:23]
  %tmp.30 = xor i8 %tmp.29, %buf.load, !dbg !207  ; [#uses=1 type=i8] [debug line = 284:23]
  store i8 %tmp.30, i8* %buf.addr, align 1, !dbg !207 ; [debug line = 284:23]
  %tmp.31 = xor i8 %c, %b, !dbg !208              ; [#uses=1 type=i8] [debug line = 285:27]
  %tmp.32 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.31), !dbg !208 ; [#uses=1 type=i8] [debug line = 285:27]
  %buf.load.21 = load i8* %buf.addr.23, align 1, !dbg !208 ; [#uses=2 type=i8] [debug line = 285:27]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.21) nounwind
  %tmp.33 = xor i8 %tmp.32, %y, !dbg !208         ; [#uses=1 type=i8] [debug line = 285:27]
  %tmp.34 = xor i8 %tmp.33, %buf.load.21, !dbg !208 ; [#uses=1 type=i8] [debug line = 285:27]
  store i8 %tmp.34, i8* %buf.addr.23, align 1, !dbg !208 ; [debug line = 285:27]
  %tmp.35 = xor i8 %d, %c, !dbg !209              ; [#uses=1 type=i8] [debug line = 286:27]
  %tmp.36 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.35), !dbg !209 ; [#uses=1 type=i8] [debug line = 286:27]
  %buf.load.22 = load i8* %buf.addr.24, align 1, !dbg !209 ; [#uses=2 type=i8] [debug line = 286:27]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.22) nounwind
  %tmp.37 = xor i8 %tmp.36, %x, !dbg !209         ; [#uses=1 type=i8] [debug line = 286:27]
  %tmp.38 = xor i8 %tmp.37, %buf.load.22, !dbg !209 ; [#uses=1 type=i8] [debug line = 286:27]
  store i8 %tmp.38, i8* %buf.addr.24, align 1, !dbg !209 ; [debug line = 286:27]
  %tmp.39 = xor i8 %d, %a, !dbg !210              ; [#uses=1 type=i8] [debug line = 287:27]
  %tmp.40 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.39), !dbg !210 ; [#uses=1 type=i8] [debug line = 287:27]
  %buf.load.23 = load i8* %buf.addr.25, align 1, !dbg !210 ; [#uses=2 type=i8] [debug line = 287:27]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.23) nounwind
  %tmp.41 = xor i8 %tmp.40, %y, !dbg !210         ; [#uses=1 type=i8] [debug line = 287:27]
  %tmp.42 = xor i8 %tmp.41, %buf.load.23, !dbg !210 ; [#uses=1 type=i8] [debug line = 287:27]
  store i8 %tmp.42, i8* %buf.addr.25, align 1, !dbg !210 ; [debug line = 287:27]
  %i.5 = add i8 %i, 4, !dbg !211                  ; [#uses=1 type=i8] [debug line = 274:25]
  call void @llvm.dbg.value(metadata !{i8 %i.5}, i64 0, metadata !212), !dbg !211 ; [debug line = 274:25] [debug variable = i]
  br label %1, !dbg !211                          ; [debug line = 274:25]

; <label>:3                                       ; preds = %1
  ret void, !dbg !213                             ; [debug line = 289:1]
}

; [#uses=1]
define internal fastcc void @aes_mixColumns(i8* %buf) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !214), !dbg !215 ; [debug line = 251:43] [debug variable = buf]
  br label %1, !dbg !216                          ; [debug line = 255:10]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 0, %0 ], [ %i.6, %2 ]             ; [#uses=4 type=i8]
  %tmp = icmp ult i8 %i, 16, !dbg !216            ; [#uses=1 type=i1] [debug line = 255:10]
  br i1 %tmp, label %2, label %3, !dbg !216       ; [debug line = 255:10]

; <label>:2                                       ; preds = %1
  %tmp.44 = zext i8 %i to i64, !dbg !219          ; [#uses=1 type=i64] [debug line = 257:9]
  %buf.addr = getelementptr inbounds i8* %buf, i64 %tmp.44, !dbg !219 ; [#uses=3 type=i8*] [debug line = 257:9]
  %a = load i8* %buf.addr, align 1, !dbg !219     ; [#uses=3 type=i8] [debug line = 257:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %a) nounwind
  call void @llvm.dbg.value(metadata !{i8 %a}, i64 0, metadata !221), !dbg !219 ; [debug line = 257:9] [debug variable = a]
  %tmp.45 = zext i8 %i to i32, !dbg !222          ; [#uses=3 type=i32] [debug line = 258:9]
  %tmp.46 = or i32 %tmp.45, 1, !dbg !222          ; [#uses=1 type=i32] [debug line = 258:9]
  %tmp.47 = zext i32 %tmp.46 to i64, !dbg !222    ; [#uses=1 type=i64] [debug line = 258:9]
  %buf.addr.26 = getelementptr inbounds i8* %buf, i64 %tmp.47, !dbg !222 ; [#uses=3 type=i8*] [debug line = 258:9]
  %b = load i8* %buf.addr.26, align 1, !dbg !222  ; [#uses=3 type=i8] [debug line = 258:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %b) nounwind
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !223), !dbg !222 ; [debug line = 258:9] [debug variable = b]
  %tmp.48 = or i32 %tmp.45, 2, !dbg !224          ; [#uses=1 type=i32] [debug line = 259:9]
  %tmp.49 = zext i32 %tmp.48 to i64, !dbg !224    ; [#uses=1 type=i64] [debug line = 259:9]
  %buf.addr.27 = getelementptr inbounds i8* %buf, i64 %tmp.49, !dbg !224 ; [#uses=3 type=i8*] [debug line = 259:9]
  %c = load i8* %buf.addr.27, align 1, !dbg !224  ; [#uses=4 type=i8] [debug line = 259:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %c) nounwind
  call void @llvm.dbg.value(metadata !{i8 %c}, i64 0, metadata !225), !dbg !224 ; [debug line = 259:9] [debug variable = c]
  %tmp.50 = or i32 %tmp.45, 3, !dbg !226          ; [#uses=1 type=i32] [debug line = 260:9]
  %tmp.51 = zext i32 %tmp.50 to i64, !dbg !226    ; [#uses=1 type=i64] [debug line = 260:9]
  %buf.addr.28 = getelementptr inbounds i8* %buf, i64 %tmp.51, !dbg !226 ; [#uses=3 type=i8*] [debug line = 260:9]
  %d = load i8* %buf.addr.28, align 1, !dbg !226  ; [#uses=4 type=i8] [debug line = 260:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %d) nounwind
  call void @llvm.dbg.value(metadata !{i8 %d}, i64 0, metadata !227), !dbg !226 ; [debug line = 260:9] [debug variable = d]
  %tmp.52 = xor i8 %b, %a, !dbg !228              ; [#uses=2 type=i8] [debug line = 261:9]
  %tmp.53 = xor i8 %c, %tmp.52, !dbg !228         ; [#uses=1 type=i8] [debug line = 261:9]
  %e = xor i8 %tmp.53, %d, !dbg !228              ; [#uses=4 type=i8] [debug line = 261:9]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !229), !dbg !228 ; [debug line = 261:9] [debug variable = e]
  %tmp.55 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.52), !dbg !230 ; [#uses=1 type=i8] [debug line = 262:23]
  %buf.load = load i8* %buf.addr, align 1, !dbg !230 ; [#uses=2 type=i8] [debug line = 262:23]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  %tmp.56 = xor i8 %tmp.55, %e, !dbg !230         ; [#uses=1 type=i8] [debug line = 262:23]
  %tmp.57 = xor i8 %tmp.56, %buf.load, !dbg !230  ; [#uses=1 type=i8] [debug line = 262:23]
  store i8 %tmp.57, i8* %buf.addr, align 1, !dbg !230 ; [debug line = 262:23]
  %tmp.58 = xor i8 %c, %b, !dbg !231              ; [#uses=1 type=i8] [debug line = 263:27]
  %tmp.59 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.58), !dbg !231 ; [#uses=1 type=i8] [debug line = 263:27]
  %buf.load.24 = load i8* %buf.addr.26, align 1, !dbg !231 ; [#uses=2 type=i8] [debug line = 263:27]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.24) nounwind
  %tmp.60 = xor i8 %tmp.59, %e, !dbg !231         ; [#uses=1 type=i8] [debug line = 263:27]
  %tmp.61 = xor i8 %tmp.60, %buf.load.24, !dbg !231 ; [#uses=1 type=i8] [debug line = 263:27]
  store i8 %tmp.61, i8* %buf.addr.26, align 1, !dbg !231 ; [debug line = 263:27]
  %tmp.62 = xor i8 %d, %c, !dbg !232              ; [#uses=1 type=i8] [debug line = 264:27]
  %tmp.63 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.62), !dbg !232 ; [#uses=1 type=i8] [debug line = 264:27]
  %buf.load.25 = load i8* %buf.addr.27, align 1, !dbg !232 ; [#uses=2 type=i8] [debug line = 264:27]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.25) nounwind
  %tmp.64 = xor i8 %tmp.63, %e, !dbg !232         ; [#uses=1 type=i8] [debug line = 264:27]
  %tmp.65 = xor i8 %tmp.64, %buf.load.25, !dbg !232 ; [#uses=1 type=i8] [debug line = 264:27]
  store i8 %tmp.65, i8* %buf.addr.27, align 1, !dbg !232 ; [debug line = 264:27]
  %tmp.66 = xor i8 %d, %a, !dbg !233              ; [#uses=1 type=i8] [debug line = 265:27]
  %tmp.67 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.66), !dbg !233 ; [#uses=1 type=i8] [debug line = 265:27]
  %buf.load.26 = load i8* %buf.addr.28, align 1, !dbg !233 ; [#uses=2 type=i8] [debug line = 265:27]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.26) nounwind
  %tmp.68 = xor i8 %tmp.67, %e, !dbg !233         ; [#uses=1 type=i8] [debug line = 265:27]
  %tmp.69 = xor i8 %tmp.68, %buf.load.26, !dbg !233 ; [#uses=1 type=i8] [debug line = 265:27]
  store i8 %tmp.69, i8* %buf.addr.28, align 1, !dbg !233 ; [debug line = 265:27]
  %i.6 = add i8 %i, 4, !dbg !234                  ; [#uses=1 type=i8] [debug line = 255:25]
  call void @llvm.dbg.value(metadata !{i8 %i.6}, i64 0, metadata !235), !dbg !234 ; [debug line = 255:25] [debug variable = i]
  br label %1, !dbg !234                          ; [debug line = 255:25]

; <label>:3                                       ; preds = %1
  ret void, !dbg !236                             ; [debug line = 267:1]
}

; [#uses=3]
define internal fastcc void @aes_expandEncKey(i8* %k, i8* %rc) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %k}, i64 0, metadata !237), !dbg !238 ; [debug line = 292:45] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i8* %rc}, i64 0, metadata !239), !dbg !240 ; [debug line = 292:63] [debug variable = rc]
  %k.addr = getelementptr inbounds i8* %k, i64 29, !dbg !241 ; [#uses=1 type=i8*] [debug line = 296:5]
  %k.load = load i8* %k.addr, align 1, !dbg !241  ; [#uses=2 type=i8] [debug line = 296:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load) nounwind
  %tmp = zext i8 %k.load to i64, !dbg !241        ; [#uses=1 type=i64] [debug line = 296:5]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp, !dbg !241 ; [#uses=1 type=i8*] [debug line = 296:5]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !241 ; [#uses=2 type=i8] [debug line = 296:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load) nounwind
  %rc.load = load i8* %rc, align 1, !dbg !241     ; [#uses=1 type=i8] [debug line = 296:5]
  %k.load.1 = load i8* %k, align 1, !dbg !241     ; [#uses=2 type=i8] [debug line = 296:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.1) nounwind
  %tmp.71 = xor i8 %rc.load, %sbox.load, !dbg !241 ; [#uses=1 type=i8] [debug line = 296:5]
  %tmp.72 = xor i8 %tmp.71, %k.load.1, !dbg !241  ; [#uses=1 type=i8] [debug line = 296:5]
  store i8 %tmp.72, i8* %k, align 1, !dbg !241    ; [debug line = 296:5]
  %k.addr.1 = getelementptr inbounds i8* %k, i64 30, !dbg !243 ; [#uses=1 type=i8*] [debug line = 297:5]
  %k.load.2 = load i8* %k.addr.1, align 1, !dbg !243 ; [#uses=2 type=i8] [debug line = 297:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.2) nounwind
  %tmp.73 = zext i8 %k.load.2 to i64, !dbg !243   ; [#uses=1 type=i64] [debug line = 297:5]
  %sbox.addr.1 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.73, !dbg !243 ; [#uses=1 type=i8*] [debug line = 297:5]
  %sbox.load.1 = load i8* %sbox.addr.1, align 1, !dbg !243 ; [#uses=2 type=i8] [debug line = 297:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.1) nounwind
  %k.addr.2 = getelementptr inbounds i8* %k, i64 1, !dbg !243 ; [#uses=2 type=i8*] [debug line = 297:5]
  %k.load.3 = load i8* %k.addr.2, align 1, !dbg !243 ; [#uses=2 type=i8] [debug line = 297:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.3) nounwind
  %tmp.74 = xor i8 %k.load.3, %sbox.load.1, !dbg !243 ; [#uses=1 type=i8] [debug line = 297:5]
  store i8 %tmp.74, i8* %k.addr.2, align 1, !dbg !243 ; [debug line = 297:5]
  %k.addr.3 = getelementptr inbounds i8* %k, i64 31, !dbg !244 ; [#uses=1 type=i8*] [debug line = 298:5]
  %k.load.4 = load i8* %k.addr.3, align 1, !dbg !244 ; [#uses=2 type=i8] [debug line = 298:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.4) nounwind
  %tmp.75 = zext i8 %k.load.4 to i64, !dbg !244   ; [#uses=1 type=i64] [debug line = 298:5]
  %sbox.addr.2 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.75, !dbg !244 ; [#uses=1 type=i8*] [debug line = 298:5]
  %sbox.load.2 = load i8* %sbox.addr.2, align 1, !dbg !244 ; [#uses=2 type=i8] [debug line = 298:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.2) nounwind
  %k.addr.4 = getelementptr inbounds i8* %k, i64 2, !dbg !244 ; [#uses=2 type=i8*] [debug line = 298:5]
  %k.load.5 = load i8* %k.addr.4, align 1, !dbg !244 ; [#uses=2 type=i8] [debug line = 298:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.5) nounwind
  %tmp.76 = xor i8 %k.load.5, %sbox.load.2, !dbg !244 ; [#uses=1 type=i8] [debug line = 298:5]
  store i8 %tmp.76, i8* %k.addr.4, align 1, !dbg !244 ; [debug line = 298:5]
  %k.addr.5 = getelementptr inbounds i8* %k, i64 28, !dbg !245 ; [#uses=1 type=i8*] [debug line = 299:5]
  %k.load.6 = load i8* %k.addr.5, align 1, !dbg !245 ; [#uses=2 type=i8] [debug line = 299:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.6) nounwind
  %tmp.77 = zext i8 %k.load.6 to i64, !dbg !245   ; [#uses=1 type=i64] [debug line = 299:5]
  %sbox.addr.3 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.77, !dbg !245 ; [#uses=1 type=i8*] [debug line = 299:5]
  %sbox.load.3 = load i8* %sbox.addr.3, align 1, !dbg !245 ; [#uses=2 type=i8] [debug line = 299:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.3) nounwind
  %k.addr.6 = getelementptr inbounds i8* %k, i64 3, !dbg !245 ; [#uses=2 type=i8*] [debug line = 299:5]
  %k.load.7 = load i8* %k.addr.6, align 1, !dbg !245 ; [#uses=2 type=i8] [debug line = 299:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.7) nounwind
  %tmp.78 = xor i8 %k.load.7, %sbox.load.3, !dbg !245 ; [#uses=1 type=i8] [debug line = 299:5]
  store i8 %tmp.78, i8* %k.addr.6, align 1, !dbg !245 ; [debug line = 299:5]
  %rc.load.1 = load i8* %rc, align 1, !dbg !246   ; [#uses=1 type=i8] [debug line = 300:11]
  %tmp.79 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %rc.load.1), !dbg !246 ; [#uses=1 type=i8] [debug line = 300:11]
  store i8 %tmp.79, i8* %rc, align 1, !dbg !246   ; [debug line = 300:11]
  br label %1, !dbg !247                          ; [debug line = 302:9]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 4, %0 ], [ %i.7, %2 ]             ; [#uses=4 type=i8]
  %tmp.80 = icmp ult i8 %i, 16, !dbg !247         ; [#uses=1 type=i1] [debug line = 302:9]
  br i1 %tmp.80, label %2, label %3, !dbg !247    ; [debug line = 302:9]

; <label>:2                                       ; preds = %1
  %tmp.81 = zext i8 %i to i32, !dbg !249          ; [#uses=7 type=i32] [debug line = 302:32]
  %tmp.82 = add nsw i32 %tmp.81, -4, !dbg !249    ; [#uses=1 type=i32] [debug line = 302:32]
  %tmp.83 = sext i32 %tmp.82 to i64, !dbg !249    ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.7 = getelementptr inbounds i8* %k, i64 %tmp.83, !dbg !249 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k.load.8 = load i8* %k.addr.7, align 1, !dbg !249 ; [#uses=2 type=i8] [debug line = 302:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.8) nounwind
  %tmp.84 = zext i8 %i to i64, !dbg !249          ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.8 = getelementptr inbounds i8* %k, i64 %tmp.84, !dbg !249 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k.load.9 = load i8* %k.addr.8, align 1, !dbg !249 ; [#uses=2 type=i8] [debug line = 302:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.9) nounwind
  %tmp.85 = xor i8 %k.load.9, %k.load.8, !dbg !249 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp.85, i8* %k.addr.8, align 1, !dbg !249 ; [debug line = 302:32]
  %tmp.86 = add nsw i32 %tmp.81, -3, !dbg !249    ; [#uses=1 type=i32] [debug line = 302:32]
  %tmp.87 = sext i32 %tmp.86 to i64, !dbg !249    ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.9 = getelementptr inbounds i8* %k, i64 %tmp.87, !dbg !249 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k.load.10 = load i8* %k.addr.9, align 1, !dbg !249 ; [#uses=2 type=i8] [debug line = 302:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.10) nounwind
  %tmp.88 = or i32 %tmp.81, 1, !dbg !249          ; [#uses=1 type=i32] [debug line = 302:32]
  %tmp.89 = zext i32 %tmp.88 to i64, !dbg !249    ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.10 = getelementptr inbounds i8* %k, i64 %tmp.89, !dbg !249 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k.load.11 = load i8* %k.addr.10, align 1, !dbg !249 ; [#uses=2 type=i8] [debug line = 302:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.11) nounwind
  %tmp.90 = xor i8 %k.load.11, %k.load.10, !dbg !249 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp.90, i8* %k.addr.10, align 1, !dbg !249 ; [debug line = 302:32]
  %tmp.91 = add nsw i32 %tmp.81, -2, !dbg !249    ; [#uses=1 type=i32] [debug line = 302:32]
  %tmp.92 = sext i32 %tmp.91 to i64, !dbg !249    ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.11 = getelementptr inbounds i8* %k, i64 %tmp.92, !dbg !249 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k.load.12 = load i8* %k.addr.11, align 1, !dbg !249 ; [#uses=2 type=i8] [debug line = 302:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.12) nounwind
  %tmp.93 = or i32 %tmp.81, 2, !dbg !249          ; [#uses=1 type=i32] [debug line = 302:32]
  %tmp.94 = zext i32 %tmp.93 to i64, !dbg !249    ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.12 = getelementptr inbounds i8* %k, i64 %tmp.94, !dbg !249 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k.load.13 = load i8* %k.addr.12, align 1, !dbg !249 ; [#uses=2 type=i8] [debug line = 302:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.13) nounwind
  %tmp.95 = xor i8 %k.load.13, %k.load.12, !dbg !249 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp.95, i8* %k.addr.12, align 1, !dbg !249 ; [debug line = 302:32]
  %tmp.96 = add nsw i32 %tmp.81, -1, !dbg !249    ; [#uses=1 type=i32] [debug line = 302:32]
  %tmp.97 = sext i32 %tmp.96 to i64, !dbg !249    ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.13 = getelementptr inbounds i8* %k, i64 %tmp.97, !dbg !249 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k.load.14 = load i8* %k.addr.13, align 1, !dbg !249 ; [#uses=2 type=i8] [debug line = 302:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.14) nounwind
  %tmp.98 = or i32 %tmp.81, 3, !dbg !249          ; [#uses=1 type=i32] [debug line = 302:32]
  %tmp.99 = zext i32 %tmp.98 to i64, !dbg !249    ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.14 = getelementptr inbounds i8* %k, i64 %tmp.99, !dbg !249 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k.load.15 = load i8* %k.addr.14, align 1, !dbg !249 ; [#uses=2 type=i8] [debug line = 302:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.15) nounwind
  %tmp.100 = xor i8 %k.load.15, %k.load.14, !dbg !249 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp.100, i8* %k.addr.14, align 1, !dbg !249 ; [debug line = 302:32]
  %i.7 = add i8 %i, 4, !dbg !250                  ; [#uses=1 type=i8] [debug line = 302:24]
  call void @llvm.dbg.value(metadata !{i8 %i.7}, i64 0, metadata !251), !dbg !250 ; [debug line = 302:24] [debug variable = i]
  br label %1, !dbg !250                          ; [debug line = 302:24]

; <label>:3                                       ; preds = %1
  %k.addr.15 = getelementptr inbounds i8* %k, i64 12, !dbg !252 ; [#uses=1 type=i8*] [debug line = 304:5]
  %k.load.16 = load i8* %k.addr.15, align 1, !dbg !252 ; [#uses=2 type=i8] [debug line = 304:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.16) nounwind
  %tmp.102 = zext i8 %k.load.16 to i64, !dbg !252 ; [#uses=1 type=i64] [debug line = 304:5]
  %sbox.addr.4 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.102, !dbg !252 ; [#uses=1 type=i8*] [debug line = 304:5]
  %sbox.load.4 = load i8* %sbox.addr.4, align 1, !dbg !252 ; [#uses=2 type=i8] [debug line = 304:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.4) nounwind
  %k.addr.16 = getelementptr inbounds i8* %k, i64 16, !dbg !252 ; [#uses=2 type=i8*] [debug line = 304:5]
  %k.load.17 = load i8* %k.addr.16, align 1, !dbg !252 ; [#uses=2 type=i8] [debug line = 304:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.17) nounwind
  %tmp.103 = xor i8 %k.load.17, %sbox.load.4, !dbg !252 ; [#uses=1 type=i8] [debug line = 304:5]
  store i8 %tmp.103, i8* %k.addr.16, align 1, !dbg !252 ; [debug line = 304:5]
  %k.addr.17 = getelementptr inbounds i8* %k, i64 13, !dbg !253 ; [#uses=1 type=i8*] [debug line = 305:5]
  %k.load.18 = load i8* %k.addr.17, align 1, !dbg !253 ; [#uses=2 type=i8] [debug line = 305:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.18) nounwind
  %tmp.104 = zext i8 %k.load.18 to i64, !dbg !253 ; [#uses=1 type=i64] [debug line = 305:5]
  %sbox.addr.5 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.104, !dbg !253 ; [#uses=1 type=i8*] [debug line = 305:5]
  %sbox.load.5 = load i8* %sbox.addr.5, align 1, !dbg !253 ; [#uses=2 type=i8] [debug line = 305:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.5) nounwind
  %k.addr.18 = getelementptr inbounds i8* %k, i64 17, !dbg !253 ; [#uses=2 type=i8*] [debug line = 305:5]
  %k.load.19 = load i8* %k.addr.18, align 1, !dbg !253 ; [#uses=2 type=i8] [debug line = 305:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.19) nounwind
  %tmp.105 = xor i8 %k.load.19, %sbox.load.5, !dbg !253 ; [#uses=1 type=i8] [debug line = 305:5]
  store i8 %tmp.105, i8* %k.addr.18, align 1, !dbg !253 ; [debug line = 305:5]
  %k.addr.19 = getelementptr inbounds i8* %k, i64 14, !dbg !254 ; [#uses=1 type=i8*] [debug line = 306:5]
  %k.load.20 = load i8* %k.addr.19, align 1, !dbg !254 ; [#uses=2 type=i8] [debug line = 306:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.20) nounwind
  %tmp.106 = zext i8 %k.load.20 to i64, !dbg !254 ; [#uses=1 type=i64] [debug line = 306:5]
  %sbox.addr.6 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.106, !dbg !254 ; [#uses=1 type=i8*] [debug line = 306:5]
  %sbox.load.6 = load i8* %sbox.addr.6, align 1, !dbg !254 ; [#uses=2 type=i8] [debug line = 306:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.6) nounwind
  %k.addr.20 = getelementptr inbounds i8* %k, i64 18, !dbg !254 ; [#uses=2 type=i8*] [debug line = 306:5]
  %k.load.21 = load i8* %k.addr.20, align 1, !dbg !254 ; [#uses=2 type=i8] [debug line = 306:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.21) nounwind
  %tmp.107 = xor i8 %k.load.21, %sbox.load.6, !dbg !254 ; [#uses=1 type=i8] [debug line = 306:5]
  store i8 %tmp.107, i8* %k.addr.20, align 1, !dbg !254 ; [debug line = 306:5]
  %k.addr.21 = getelementptr inbounds i8* %k, i64 15, !dbg !255 ; [#uses=1 type=i8*] [debug line = 307:5]
  %k.load.22 = load i8* %k.addr.21, align 1, !dbg !255 ; [#uses=2 type=i8] [debug line = 307:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.22) nounwind
  %tmp.108 = zext i8 %k.load.22 to i64, !dbg !255 ; [#uses=1 type=i64] [debug line = 307:5]
  %sbox.addr.7 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.108, !dbg !255 ; [#uses=1 type=i8*] [debug line = 307:5]
  %sbox.load.7 = load i8* %sbox.addr.7, align 1, !dbg !255 ; [#uses=2 type=i8] [debug line = 307:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.7) nounwind
  %k.addr.22 = getelementptr inbounds i8* %k, i64 19, !dbg !255 ; [#uses=2 type=i8*] [debug line = 307:5]
  %k.load.23 = load i8* %k.addr.22, align 1, !dbg !255 ; [#uses=2 type=i8] [debug line = 307:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.23) nounwind
  %tmp.109 = xor i8 %k.load.23, %sbox.load.7, !dbg !255 ; [#uses=1 type=i8] [debug line = 307:5]
  store i8 %tmp.109, i8* %k.addr.22, align 1, !dbg !255 ; [debug line = 307:5]
  br label %4, !dbg !256                          ; [debug line = 309:9]

; <label>:4                                       ; preds = %5, %3
  %i.1 = phi i8 [ 20, %3 ], [ %i.8, %5 ]          ; [#uses=4 type=i8]
  %tmp.110 = icmp ult i8 %i.1, 32, !dbg !256      ; [#uses=1 type=i1] [debug line = 309:9]
  br i1 %tmp.110, label %5, label %6, !dbg !256   ; [debug line = 309:9]

; <label>:5                                       ; preds = %4
  %tmp.111 = zext i8 %i.1 to i32, !dbg !258       ; [#uses=7 type=i32] [debug line = 309:33]
  %tmp.112 = add nsw i32 %tmp.111, -4, !dbg !258  ; [#uses=1 type=i32] [debug line = 309:33]
  %tmp.113 = sext i32 %tmp.112 to i64, !dbg !258  ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.23 = getelementptr inbounds i8* %k, i64 %tmp.113, !dbg !258 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k.load.24 = load i8* %k.addr.23, align 1, !dbg !258 ; [#uses=2 type=i8] [debug line = 309:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.24) nounwind
  %tmp.114 = zext i8 %i.1 to i64, !dbg !258       ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.24 = getelementptr inbounds i8* %k, i64 %tmp.114, !dbg !258 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k.load.25 = load i8* %k.addr.24, align 1, !dbg !258 ; [#uses=2 type=i8] [debug line = 309:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.25) nounwind
  %tmp.115 = xor i8 %k.load.25, %k.load.24, !dbg !258 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp.115, i8* %k.addr.24, align 1, !dbg !258 ; [debug line = 309:33]
  %tmp.116 = add nsw i32 %tmp.111, -3, !dbg !258  ; [#uses=1 type=i32] [debug line = 309:33]
  %tmp.117 = sext i32 %tmp.116 to i64, !dbg !258  ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.25 = getelementptr inbounds i8* %k, i64 %tmp.117, !dbg !258 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k.load.26 = load i8* %k.addr.25, align 1, !dbg !258 ; [#uses=2 type=i8] [debug line = 309:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.26) nounwind
  %tmp.118 = or i32 %tmp.111, 1, !dbg !258        ; [#uses=1 type=i32] [debug line = 309:33]
  %tmp.119 = zext i32 %tmp.118 to i64, !dbg !258  ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.26 = getelementptr inbounds i8* %k, i64 %tmp.119, !dbg !258 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k.load.27 = load i8* %k.addr.26, align 1, !dbg !258 ; [#uses=2 type=i8] [debug line = 309:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.27) nounwind
  %tmp.120 = xor i8 %k.load.27, %k.load.26, !dbg !258 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp.120, i8* %k.addr.26, align 1, !dbg !258 ; [debug line = 309:33]
  %tmp.121 = add nsw i32 %tmp.111, -2, !dbg !258  ; [#uses=1 type=i32] [debug line = 309:33]
  %tmp.122 = sext i32 %tmp.121 to i64, !dbg !258  ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.27 = getelementptr inbounds i8* %k, i64 %tmp.122, !dbg !258 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k.load.28 = load i8* %k.addr.27, align 1, !dbg !258 ; [#uses=2 type=i8] [debug line = 309:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.28) nounwind
  %tmp.123 = or i32 %tmp.111, 2, !dbg !258        ; [#uses=1 type=i32] [debug line = 309:33]
  %tmp.124 = zext i32 %tmp.123 to i64, !dbg !258  ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.28 = getelementptr inbounds i8* %k, i64 %tmp.124, !dbg !258 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k.load.29 = load i8* %k.addr.28, align 1, !dbg !258 ; [#uses=2 type=i8] [debug line = 309:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.29) nounwind
  %tmp.125 = xor i8 %k.load.29, %k.load.28, !dbg !258 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp.125, i8* %k.addr.28, align 1, !dbg !258 ; [debug line = 309:33]
  %tmp.126 = add nsw i32 %tmp.111, -1, !dbg !258  ; [#uses=1 type=i32] [debug line = 309:33]
  %tmp.127 = sext i32 %tmp.126 to i64, !dbg !258  ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.29 = getelementptr inbounds i8* %k, i64 %tmp.127, !dbg !258 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k.load.30 = load i8* %k.addr.29, align 1, !dbg !258 ; [#uses=2 type=i8] [debug line = 309:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.30) nounwind
  %tmp.128 = or i32 %tmp.111, 3, !dbg !258        ; [#uses=1 type=i32] [debug line = 309:33]
  %tmp.129 = zext i32 %tmp.128 to i64, !dbg !258  ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.30 = getelementptr inbounds i8* %k, i64 %tmp.129, !dbg !258 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k.load.31 = load i8* %k.addr.30, align 1, !dbg !258 ; [#uses=2 type=i8] [debug line = 309:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.31) nounwind
  %tmp.130 = xor i8 %k.load.31, %k.load.30, !dbg !258 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp.130, i8* %k.addr.30, align 1, !dbg !258 ; [debug line = 309:33]
  %i.8 = add i8 %i.1, 4, !dbg !259                ; [#uses=1 type=i8] [debug line = 309:25]
  call void @llvm.dbg.value(metadata !{i8 %i.8}, i64 0, metadata !251), !dbg !259 ; [debug line = 309:25] [debug variable = i]
  br label %4, !dbg !259                          ; [debug line = 309:25]

; <label>:6                                       ; preds = %4
  ret void, !dbg !260                             ; [debug line = 312:1]
}

; [#uses=1]
define internal fastcc void @aes_expandDecKey(i8* %k, i8* %rc) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %k}, i64 0, metadata !261), !dbg !262 ; [debug line = 315:38] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i8* %rc}, i64 0, metadata !263), !dbg !264 ; [debug line = 315:56] [debug variable = rc]
  br label %1, !dbg !265                          ; [debug line = 319:9]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 28, %0 ], [ %i.9, %2 ]            ; [#uses=4 type=i8]
  %tmp = icmp ugt i8 %i, 16, !dbg !265            ; [#uses=1 type=i1] [debug line = 319:9]
  br i1 %tmp, label %2, label %3, !dbg !265       ; [debug line = 319:9]

; <label>:2                                       ; preds = %1
  %tmp.132 = zext i8 %i to i32, !dbg !268         ; [#uses=7 type=i32] [debug line = 319:33]
  %tmp.133 = add nsw i32 %tmp.132, -4, !dbg !268  ; [#uses=1 type=i32] [debug line = 319:33]
  %tmp.134 = sext i32 %tmp.133 to i64, !dbg !268  ; [#uses=1 type=i64] [debug line = 319:33]
  %k.addr = getelementptr inbounds i8* %k, i64 %tmp.134, !dbg !268 ; [#uses=1 type=i8*] [debug line = 319:33]
  %k.load = load i8* %k.addr, align 1, !dbg !268  ; [#uses=2 type=i8] [debug line = 319:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load) nounwind
  %tmp.135 = zext i8 %i to i64, !dbg !268         ; [#uses=1 type=i64] [debug line = 319:33]
  %k.addr.31 = getelementptr inbounds i8* %k, i64 %tmp.135, !dbg !268 ; [#uses=2 type=i8*] [debug line = 319:33]
  %k.load.32 = load i8* %k.addr.31, align 1, !dbg !268 ; [#uses=2 type=i8] [debug line = 319:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.32) nounwind
  %tmp.136 = xor i8 %k.load.32, %k.load, !dbg !268 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp.136, i8* %k.addr.31, align 1, !dbg !268 ; [debug line = 319:33]
  %tmp.137 = add nsw i32 %tmp.132, -3, !dbg !268  ; [#uses=1 type=i32] [debug line = 319:33]
  %tmp.138 = sext i32 %tmp.137 to i64, !dbg !268  ; [#uses=1 type=i64] [debug line = 319:33]
  %k.addr.32 = getelementptr inbounds i8* %k, i64 %tmp.138, !dbg !268 ; [#uses=1 type=i8*] [debug line = 319:33]
  %k.load.33 = load i8* %k.addr.32, align 1, !dbg !268 ; [#uses=2 type=i8] [debug line = 319:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.33) nounwind
  %tmp.139 = or i32 %tmp.132, 1, !dbg !268        ; [#uses=1 type=i32] [debug line = 319:33]
  %tmp.140 = zext i32 %tmp.139 to i64, !dbg !268  ; [#uses=1 type=i64] [debug line = 319:33]
  %k.addr.33 = getelementptr inbounds i8* %k, i64 %tmp.140, !dbg !268 ; [#uses=2 type=i8*] [debug line = 319:33]
  %k.load.34 = load i8* %k.addr.33, align 1, !dbg !268 ; [#uses=2 type=i8] [debug line = 319:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.34) nounwind
  %tmp.141 = xor i8 %k.load.34, %k.load.33, !dbg !268 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp.141, i8* %k.addr.33, align 1, !dbg !268 ; [debug line = 319:33]
  %tmp.142 = add nsw i32 %tmp.132, -2, !dbg !268  ; [#uses=1 type=i32] [debug line = 319:33]
  %tmp.143 = sext i32 %tmp.142 to i64, !dbg !268  ; [#uses=1 type=i64] [debug line = 319:33]
  %k.addr.34 = getelementptr inbounds i8* %k, i64 %tmp.143, !dbg !268 ; [#uses=1 type=i8*] [debug line = 319:33]
  %k.load.35 = load i8* %k.addr.34, align 1, !dbg !268 ; [#uses=2 type=i8] [debug line = 319:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.35) nounwind
  %tmp.144 = or i32 %tmp.132, 2, !dbg !268        ; [#uses=1 type=i32] [debug line = 319:33]
  %tmp.145 = zext i32 %tmp.144 to i64, !dbg !268  ; [#uses=1 type=i64] [debug line = 319:33]
  %k.addr.35 = getelementptr inbounds i8* %k, i64 %tmp.145, !dbg !268 ; [#uses=2 type=i8*] [debug line = 319:33]
  %k.load.36 = load i8* %k.addr.35, align 1, !dbg !268 ; [#uses=2 type=i8] [debug line = 319:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.36) nounwind
  %tmp.146 = xor i8 %k.load.36, %k.load.35, !dbg !268 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp.146, i8* %k.addr.35, align 1, !dbg !268 ; [debug line = 319:33]
  %tmp.147 = add nsw i32 %tmp.132, -1, !dbg !268  ; [#uses=1 type=i32] [debug line = 319:33]
  %tmp.148 = sext i32 %tmp.147 to i64, !dbg !268  ; [#uses=1 type=i64] [debug line = 319:33]
  %k.addr.36 = getelementptr inbounds i8* %k, i64 %tmp.148, !dbg !268 ; [#uses=1 type=i8*] [debug line = 319:33]
  %k.load.37 = load i8* %k.addr.36, align 1, !dbg !268 ; [#uses=2 type=i8] [debug line = 319:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.37) nounwind
  %tmp.149 = or i32 %tmp.132, 3, !dbg !268        ; [#uses=1 type=i32] [debug line = 319:33]
  %tmp.150 = zext i32 %tmp.149 to i64, !dbg !268  ; [#uses=1 type=i64] [debug line = 319:33]
  %k.addr.37 = getelementptr inbounds i8* %k, i64 %tmp.150, !dbg !268 ; [#uses=2 type=i8*] [debug line = 319:33]
  %k.load.38 = load i8* %k.addr.37, align 1, !dbg !268 ; [#uses=2 type=i8] [debug line = 319:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.38) nounwind
  %tmp.151 = xor i8 %k.load.38, %k.load.37, !dbg !268 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp.151, i8* %k.addr.37, align 1, !dbg !268 ; [debug line = 319:33]
  %i.9 = add i8 %i, -4, !dbg !269                 ; [#uses=1 type=i8] [debug line = 319:25]
  call void @llvm.dbg.value(metadata !{i8 %i.9}, i64 0, metadata !270), !dbg !269 ; [debug line = 319:25] [debug variable = i]
  br label %1, !dbg !269                          ; [debug line = 319:25]

; <label>:3                                       ; preds = %1
  %k.addr.38 = getelementptr inbounds i8* %k, i64 12, !dbg !271 ; [#uses=1 type=i8*] [debug line = 322:5]
  %k.load.39 = load i8* %k.addr.38, align 1, !dbg !271 ; [#uses=2 type=i8] [debug line = 322:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.39) nounwind
  %tmp.153 = zext i8 %k.load.39 to i64, !dbg !271 ; [#uses=1 type=i64] [debug line = 322:5]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.153, !dbg !271 ; [#uses=1 type=i8*] [debug line = 322:5]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !271 ; [#uses=2 type=i8] [debug line = 322:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load) nounwind
  %k.addr.39 = getelementptr inbounds i8* %k, i64 16, !dbg !271 ; [#uses=2 type=i8*] [debug line = 322:5]
  %k.load.40 = load i8* %k.addr.39, align 1, !dbg !271 ; [#uses=2 type=i8] [debug line = 322:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.40) nounwind
  %tmp.154 = xor i8 %k.load.40, %sbox.load, !dbg !271 ; [#uses=1 type=i8] [debug line = 322:5]
  store i8 %tmp.154, i8* %k.addr.39, align 1, !dbg !271 ; [debug line = 322:5]
  %k.addr.40 = getelementptr inbounds i8* %k, i64 13, !dbg !272 ; [#uses=1 type=i8*] [debug line = 323:5]
  %k.load.41 = load i8* %k.addr.40, align 1, !dbg !272 ; [#uses=2 type=i8] [debug line = 323:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.41) nounwind
  %tmp.155 = zext i8 %k.load.41 to i64, !dbg !272 ; [#uses=1 type=i64] [debug line = 323:5]
  %sbox.addr.8 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.155, !dbg !272 ; [#uses=1 type=i8*] [debug line = 323:5]
  %sbox.load.8 = load i8* %sbox.addr.8, align 1, !dbg !272 ; [#uses=2 type=i8] [debug line = 323:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.8) nounwind
  %k.addr.41 = getelementptr inbounds i8* %k, i64 17, !dbg !272 ; [#uses=2 type=i8*] [debug line = 323:5]
  %k.load.42 = load i8* %k.addr.41, align 1, !dbg !272 ; [#uses=2 type=i8] [debug line = 323:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.42) nounwind
  %tmp.156 = xor i8 %k.load.42, %sbox.load.8, !dbg !272 ; [#uses=1 type=i8] [debug line = 323:5]
  store i8 %tmp.156, i8* %k.addr.41, align 1, !dbg !272 ; [debug line = 323:5]
  %k.addr.42 = getelementptr inbounds i8* %k, i64 14, !dbg !273 ; [#uses=1 type=i8*] [debug line = 324:5]
  %k.load.43 = load i8* %k.addr.42, align 1, !dbg !273 ; [#uses=2 type=i8] [debug line = 324:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.43) nounwind
  %tmp.157 = zext i8 %k.load.43 to i64, !dbg !273 ; [#uses=1 type=i64] [debug line = 324:5]
  %sbox.addr.9 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.157, !dbg !273 ; [#uses=1 type=i8*] [debug line = 324:5]
  %sbox.load.9 = load i8* %sbox.addr.9, align 1, !dbg !273 ; [#uses=2 type=i8] [debug line = 324:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.9) nounwind
  %k.addr.43 = getelementptr inbounds i8* %k, i64 18, !dbg !273 ; [#uses=2 type=i8*] [debug line = 324:5]
  %k.load.44 = load i8* %k.addr.43, align 1, !dbg !273 ; [#uses=2 type=i8] [debug line = 324:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.44) nounwind
  %tmp.158 = xor i8 %k.load.44, %sbox.load.9, !dbg !273 ; [#uses=1 type=i8] [debug line = 324:5]
  store i8 %tmp.158, i8* %k.addr.43, align 1, !dbg !273 ; [debug line = 324:5]
  %k.addr.44 = getelementptr inbounds i8* %k, i64 15, !dbg !274 ; [#uses=1 type=i8*] [debug line = 325:5]
  %k.load.45 = load i8* %k.addr.44, align 1, !dbg !274 ; [#uses=2 type=i8] [debug line = 325:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.45) nounwind
  %tmp.159 = zext i8 %k.load.45 to i64, !dbg !274 ; [#uses=1 type=i64] [debug line = 325:5]
  %sbox.addr.10 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.159, !dbg !274 ; [#uses=1 type=i8*] [debug line = 325:5]
  %sbox.load.10 = load i8* %sbox.addr.10, align 1, !dbg !274 ; [#uses=2 type=i8] [debug line = 325:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.10) nounwind
  %k.addr.45 = getelementptr inbounds i8* %k, i64 19, !dbg !274 ; [#uses=2 type=i8*] [debug line = 325:5]
  %k.load.46 = load i8* %k.addr.45, align 1, !dbg !274 ; [#uses=2 type=i8] [debug line = 325:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.46) nounwind
  %tmp.160 = xor i8 %k.load.46, %sbox.load.10, !dbg !274 ; [#uses=1 type=i8] [debug line = 325:5]
  store i8 %tmp.160, i8* %k.addr.45, align 1, !dbg !274 ; [debug line = 325:5]
  br label %4, !dbg !275                          ; [debug line = 327:9]

; <label>:4                                       ; preds = %5, %3
  %i.1 = phi i8 [ 12, %3 ], [ %i.10, %5 ]         ; [#uses=4 type=i8]
  %tmp.161 = icmp eq i8 %i.1, 0, !dbg !275        ; [#uses=1 type=i1] [debug line = 327:9]
  br i1 %tmp.161, label %6, label %5, !dbg !275   ; [debug line = 327:9]

; <label>:5                                       ; preds = %4
  %tmp.176 = zext i8 %i.1 to i32, !dbg !277       ; [#uses=7 type=i32] [debug line = 327:32]
  %tmp.177 = add nsw i32 %tmp.176, -4, !dbg !277  ; [#uses=1 type=i32] [debug line = 327:32]
  %tmp.178 = sext i32 %tmp.177 to i64, !dbg !277  ; [#uses=1 type=i64] [debug line = 327:32]
  %k.addr.53 = getelementptr inbounds i8* %k, i64 %tmp.178, !dbg !277 ; [#uses=1 type=i8*] [debug line = 327:32]
  %k.load.55 = load i8* %k.addr.53, align 1, !dbg !277 ; [#uses=2 type=i8] [debug line = 327:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.55) nounwind
  %tmp.179 = zext i8 %i.1 to i64, !dbg !277       ; [#uses=1 type=i64] [debug line = 327:32]
  %k.addr.54 = getelementptr inbounds i8* %k, i64 %tmp.179, !dbg !277 ; [#uses=2 type=i8*] [debug line = 327:32]
  %k.load.56 = load i8* %k.addr.54, align 1, !dbg !277 ; [#uses=2 type=i8] [debug line = 327:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.56) nounwind
  %tmp.180 = xor i8 %k.load.56, %k.load.55, !dbg !277 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp.180, i8* %k.addr.54, align 1, !dbg !277 ; [debug line = 327:32]
  %tmp.181 = add nsw i32 %tmp.176, -3, !dbg !277  ; [#uses=1 type=i32] [debug line = 327:32]
  %tmp.182 = sext i32 %tmp.181 to i64, !dbg !277  ; [#uses=1 type=i64] [debug line = 327:32]
  %k.addr.55 = getelementptr inbounds i8* %k, i64 %tmp.182, !dbg !277 ; [#uses=1 type=i8*] [debug line = 327:32]
  %k.load.57 = load i8* %k.addr.55, align 1, !dbg !277 ; [#uses=2 type=i8] [debug line = 327:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.57) nounwind
  %tmp.183 = or i32 %tmp.176, 1, !dbg !277        ; [#uses=1 type=i32] [debug line = 327:32]
  %tmp.184 = zext i32 %tmp.183 to i64, !dbg !277  ; [#uses=1 type=i64] [debug line = 327:32]
  %k.addr.56 = getelementptr inbounds i8* %k, i64 %tmp.184, !dbg !277 ; [#uses=2 type=i8*] [debug line = 327:32]
  %k.load.58 = load i8* %k.addr.56, align 1, !dbg !277 ; [#uses=2 type=i8] [debug line = 327:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.58) nounwind
  %tmp.185 = xor i8 %k.load.58, %k.load.57, !dbg !277 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp.185, i8* %k.addr.56, align 1, !dbg !277 ; [debug line = 327:32]
  %tmp.186 = add nsw i32 %tmp.176, -2, !dbg !277  ; [#uses=1 type=i32] [debug line = 327:32]
  %tmp.187 = sext i32 %tmp.186 to i64, !dbg !277  ; [#uses=1 type=i64] [debug line = 327:32]
  %k.addr.57 = getelementptr inbounds i8* %k, i64 %tmp.187, !dbg !277 ; [#uses=1 type=i8*] [debug line = 327:32]
  %k.load.59 = load i8* %k.addr.57, align 1, !dbg !277 ; [#uses=2 type=i8] [debug line = 327:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.59) nounwind
  %tmp.188 = or i32 %tmp.176, 2, !dbg !277        ; [#uses=1 type=i32] [debug line = 327:32]
  %tmp.189 = zext i32 %tmp.188 to i64, !dbg !277  ; [#uses=1 type=i64] [debug line = 327:32]
  %k.addr.58 = getelementptr inbounds i8* %k, i64 %tmp.189, !dbg !277 ; [#uses=2 type=i8*] [debug line = 327:32]
  %k.load.60 = load i8* %k.addr.58, align 1, !dbg !277 ; [#uses=2 type=i8] [debug line = 327:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.60) nounwind
  %tmp.190 = xor i8 %k.load.60, %k.load.59, !dbg !277 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp.190, i8* %k.addr.58, align 1, !dbg !277 ; [debug line = 327:32]
  %tmp.191 = add nsw i32 %tmp.176, -1, !dbg !277  ; [#uses=1 type=i32] [debug line = 327:32]
  %tmp.192 = sext i32 %tmp.191 to i64, !dbg !277  ; [#uses=1 type=i64] [debug line = 327:32]
  %k.addr.59 = getelementptr inbounds i8* %k, i64 %tmp.192, !dbg !277 ; [#uses=1 type=i8*] [debug line = 327:32]
  %k.load.61 = load i8* %k.addr.59, align 1, !dbg !277 ; [#uses=2 type=i8] [debug line = 327:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.61) nounwind
  %tmp.193 = or i32 %tmp.176, 3, !dbg !277        ; [#uses=1 type=i32] [debug line = 327:32]
  %tmp.194 = zext i32 %tmp.193 to i64, !dbg !277  ; [#uses=1 type=i64] [debug line = 327:32]
  %k.addr.60 = getelementptr inbounds i8* %k, i64 %tmp.194, !dbg !277 ; [#uses=2 type=i8*] [debug line = 327:32]
  %k.load.62 = load i8* %k.addr.60, align 1, !dbg !277 ; [#uses=2 type=i8] [debug line = 327:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.62) nounwind
  %tmp.195 = xor i8 %k.load.62, %k.load.61, !dbg !277 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp.195, i8* %k.addr.60, align 1, !dbg !277 ; [debug line = 327:32]
  %i.10 = add i8 %i.1, -4, !dbg !278              ; [#uses=1 type=i8] [debug line = 327:24]
  call void @llvm.dbg.value(metadata !{i8 %i.10}, i64 0, metadata !270), !dbg !278 ; [debug line = 327:24] [debug variable = i]
  br label %4, !dbg !278                          ; [debug line = 327:24]

; <label>:6                                       ; preds = %4
  %rc.load = load i8* %rc, align 1, !dbg !279     ; [#uses=2 type=i8] [debug line = 330:5]
  %tmp.162 = lshr i8 %rc.load, 1, !dbg !279       ; [#uses=1 type=i8] [debug line = 330:5]
  %tmp.163 = and i8 %rc.load, 1, !dbg !279        ; [#uses=1 type=i8] [debug line = 330:5]
  %tmp.164 = icmp ne i8 %tmp.163, 0, !dbg !279    ; [#uses=1 type=i1] [debug line = 330:5]
  %tmp.165 = select i1 %tmp.164, i8 -115, i8 0, !dbg !279 ; [#uses=1 type=i8] [debug line = 330:5]
  %tmp.166 = xor i8 %tmp.165, %tmp.162, !dbg !279 ; [#uses=2 type=i8] [debug line = 330:5]
  store i8 %tmp.166, i8* %rc, align 1, !dbg !279  ; [debug line = 330:5]
  %k.addr.46 = getelementptr inbounds i8* %k, i64 29, !dbg !280 ; [#uses=1 type=i8*] [debug line = 331:5]
  %k.load.47 = load i8* %k.addr.46, align 1, !dbg !280 ; [#uses=2 type=i8] [debug line = 331:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.47) nounwind
  %tmp.167 = zext i8 %k.load.47 to i64, !dbg !280 ; [#uses=1 type=i64] [debug line = 331:5]
  %sbox.addr.11 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.167, !dbg !280 ; [#uses=1 type=i8*] [debug line = 331:5]
  %sbox.load.11 = load i8* %sbox.addr.11, align 1, !dbg !280 ; [#uses=2 type=i8] [debug line = 331:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.11) nounwind
  %k.load.48 = load i8* %k, align 1, !dbg !280    ; [#uses=2 type=i8] [debug line = 331:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.48) nounwind
  %tmp.168 = xor i8 %tmp.166, %sbox.load.11, !dbg !280 ; [#uses=1 type=i8] [debug line = 331:5]
  %tmp.169 = xor i8 %tmp.168, %k.load.48, !dbg !280 ; [#uses=1 type=i8] [debug line = 331:5]
  store i8 %tmp.169, i8* %k, align 1, !dbg !280   ; [debug line = 331:5]
  %k.addr.47 = getelementptr inbounds i8* %k, i64 30, !dbg !281 ; [#uses=1 type=i8*] [debug line = 332:5]
  %k.load.49 = load i8* %k.addr.47, align 1, !dbg !281 ; [#uses=2 type=i8] [debug line = 332:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.49) nounwind
  %tmp.170 = zext i8 %k.load.49 to i64, !dbg !281 ; [#uses=1 type=i64] [debug line = 332:5]
  %sbox.addr.12 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.170, !dbg !281 ; [#uses=1 type=i8*] [debug line = 332:5]
  %sbox.load.12 = load i8* %sbox.addr.12, align 1, !dbg !281 ; [#uses=2 type=i8] [debug line = 332:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.12) nounwind
  %k.addr.48 = getelementptr inbounds i8* %k, i64 1, !dbg !281 ; [#uses=2 type=i8*] [debug line = 332:5]
  %k.load.50 = load i8* %k.addr.48, align 1, !dbg !281 ; [#uses=2 type=i8] [debug line = 332:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.50) nounwind
  %tmp.171 = xor i8 %k.load.50, %sbox.load.12, !dbg !281 ; [#uses=1 type=i8] [debug line = 332:5]
  store i8 %tmp.171, i8* %k.addr.48, align 1, !dbg !281 ; [debug line = 332:5]
  %k.addr.49 = getelementptr inbounds i8* %k, i64 31, !dbg !282 ; [#uses=1 type=i8*] [debug line = 333:5]
  %k.load.51 = load i8* %k.addr.49, align 1, !dbg !282 ; [#uses=2 type=i8] [debug line = 333:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.51) nounwind
  %tmp.172 = zext i8 %k.load.51 to i64, !dbg !282 ; [#uses=1 type=i64] [debug line = 333:5]
  %sbox.addr.13 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.172, !dbg !282 ; [#uses=1 type=i8*] [debug line = 333:5]
  %sbox.load.13 = load i8* %sbox.addr.13, align 1, !dbg !282 ; [#uses=2 type=i8] [debug line = 333:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.13) nounwind
  %k.addr.50 = getelementptr inbounds i8* %k, i64 2, !dbg !282 ; [#uses=2 type=i8*] [debug line = 333:5]
  %k.load.52 = load i8* %k.addr.50, align 1, !dbg !282 ; [#uses=2 type=i8] [debug line = 333:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.52) nounwind
  %tmp.173 = xor i8 %k.load.52, %sbox.load.13, !dbg !282 ; [#uses=1 type=i8] [debug line = 333:5]
  store i8 %tmp.173, i8* %k.addr.50, align 1, !dbg !282 ; [debug line = 333:5]
  %k.addr.51 = getelementptr inbounds i8* %k, i64 28, !dbg !283 ; [#uses=1 type=i8*] [debug line = 334:5]
  %k.load.53 = load i8* %k.addr.51, align 1, !dbg !283 ; [#uses=2 type=i8] [debug line = 334:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.53) nounwind
  %tmp.174 = zext i8 %k.load.53 to i64, !dbg !283 ; [#uses=1 type=i64] [debug line = 334:5]
  %sbox.addr.14 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.174, !dbg !283 ; [#uses=1 type=i8*] [debug line = 334:5]
  %sbox.load.14 = load i8* %sbox.addr.14, align 1, !dbg !283 ; [#uses=2 type=i8] [debug line = 334:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.14) nounwind
  %k.addr.52 = getelementptr inbounds i8* %k, i64 3, !dbg !283 ; [#uses=2 type=i8*] [debug line = 334:5]
  %k.load.54 = load i8* %k.addr.52, align 1, !dbg !283 ; [#uses=2 type=i8] [debug line = 334:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.54) nounwind
  %tmp.175 = xor i8 %k.load.54, %sbox.load.14, !dbg !283 ; [#uses=1 type=i8] [debug line = 334:5]
  store i8 %tmp.175, i8* %k.addr.52, align 1, !dbg !283 ; [debug line = 334:5]
  ret void, !dbg !284                             ; [debug line = 335:1]
}

; [#uses=2]
define internal fastcc void @aes_addRoundKey_cpy(i8* %buf, i8* %key, i8* %cpk) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !285), !dbg !286 ; [debug line = 218:48] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !287), !dbg !288 ; [debug line = 218:68] [debug variable = key]
  call void @llvm.dbg.value(metadata !{i8* %cpk}, i64 0, metadata !289), !dbg !290 ; [debug line = 218:88] [debug variable = cpk]
  br label %1, !dbg !291                          ; [debug line = 222:5]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 16, %0 ], [ %i.11, %2 ]           ; [#uses=2 type=i8]
  %i.11 = add i8 %i, -1, !dbg !291                ; [#uses=3 type=i8] [debug line = 222:5]
  call void @llvm.dbg.value(metadata !{i8 %i.11}, i64 0, metadata !293), !dbg !291 ; [debug line = 222:5] [debug variable = i]
  %tmp = icmp eq i8 %i, 0, !dbg !291              ; [#uses=1 type=i1] [debug line = 222:5]
  br i1 %tmp, label %3, label %2, !dbg !291       ; [debug line = 222:5]

; <label>:2                                       ; preds = %1
  %tmp.197 = zext i8 %i.11 to i64, !dbg !294      ; [#uses=3 type=i64] [debug line = 222:17]
  %key.addr = getelementptr inbounds i8* %key, i64 %tmp.197, !dbg !294 ; [#uses=1 type=i8*] [debug line = 222:17]
  %key.load = load i8* %key.addr, align 1, !dbg !294 ; [#uses=3 type=i8] [debug line = 222:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %key.load) nounwind
  %cpk.addr = getelementptr inbounds i8* %cpk, i64 %tmp.197, !dbg !294 ; [#uses=1 type=i8*] [debug line = 222:17]
  store i8 %key.load, i8* %cpk.addr, align 1, !dbg !294 ; [debug line = 222:17]
  %buf.addr = getelementptr inbounds i8* %buf, i64 %tmp.197, !dbg !294 ; [#uses=2 type=i8*] [debug line = 222:17]
  %buf.load = load i8* %buf.addr, align 1, !dbg !294 ; [#uses=2 type=i8] [debug line = 222:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  %tmp.198 = xor i8 %buf.load, %key.load, !dbg !294 ; [#uses=1 type=i8] [debug line = 222:17]
  store i8 %tmp.198, i8* %buf.addr, align 1, !dbg !294 ; [debug line = 222:17]
  %tmp.199 = zext i8 %i.11 to i32, !dbg !294      ; [#uses=1 type=i32] [debug line = 222:17]
  %tmp.200 = add nsw i32 %tmp.199, 16, !dbg !294  ; [#uses=1 type=i32] [debug line = 222:17]
  %tmp.201 = zext i32 %tmp.200 to i64, !dbg !294  ; [#uses=2 type=i64] [debug line = 222:17]
  %key.addr.1 = getelementptr inbounds i8* %key, i64 %tmp.201, !dbg !294 ; [#uses=1 type=i8*] [debug line = 222:17]
  %key.load.1 = load i8* %key.addr.1, align 1, !dbg !294 ; [#uses=2 type=i8] [debug line = 222:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %key.load.1) nounwind
  %cpk.addr.1 = getelementptr inbounds i8* %cpk, i64 %tmp.201, !dbg !294 ; [#uses=1 type=i8*] [debug line = 222:17]
  store i8 %key.load.1, i8* %cpk.addr.1, align 1, !dbg !294 ; [debug line = 222:17]
  br label %1, !dbg !294                          ; [debug line = 222:17]

; <label>:3                                       ; preds = %1
  ret void, !dbg !295                             ; [debug line = 223:1]
}

; [#uses=6]
define internal fastcc void @aes_addRoundKey(i8* %buf, i8* %key) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !296), !dbg !297 ; [debug line = 210:44] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !298), !dbg !299 ; [debug line = 210:64] [debug variable = key]
  br label %1, !dbg !300                          ; [debug line = 214:5]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 16, %0 ], [ %i.12, %2 ]           ; [#uses=2 type=i8]
  %i.12 = add i8 %i, -1, !dbg !300                ; [#uses=2 type=i8] [debug line = 214:5]
  call void @llvm.dbg.value(metadata !{i8 %i.12}, i64 0, metadata !302), !dbg !300 ; [debug line = 214:5] [debug variable = i]
  %tmp = icmp eq i8 %i, 0, !dbg !300              ; [#uses=1 type=i1] [debug line = 214:5]
  br i1 %tmp, label %3, label %2, !dbg !300       ; [debug line = 214:5]

; <label>:2                                       ; preds = %1
  %tmp.202 = zext i8 %i.12 to i64, !dbg !303      ; [#uses=2 type=i64] [debug line = 214:17]
  %key.addr = getelementptr inbounds i8* %key, i64 %tmp.202, !dbg !303 ; [#uses=1 type=i8*] [debug line = 214:17]
  %key.load = load i8* %key.addr, align 1, !dbg !303 ; [#uses=2 type=i8] [debug line = 214:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %key.load) nounwind
  %buf.addr = getelementptr inbounds i8* %buf, i64 %tmp.202, !dbg !303 ; [#uses=2 type=i8*] [debug line = 214:17]
  %buf.load = load i8* %buf.addr, align 1, !dbg !303 ; [#uses=2 type=i8] [debug line = 214:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  %tmp.203 = xor i8 %buf.load, %key.load, !dbg !303 ; [#uses=1 type=i8] [debug line = 214:17]
  store i8 %tmp.203, i8* %buf.addr, align 1, !dbg !303 ; [debug line = 214:17]
  br label %1, !dbg !303                          ; [debug line = 214:17]

; <label>:3                                       ; preds = %1
  ret void, !dbg !304                             ; [debug line = 215:1]
}

; [#uses=0]
define void @aes256cbc(i8* %memptr, i3 zeroext %mode, i32 %inbuf_addr, i32 %outbuf_addr) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @aes256cbc.str) nounwind
  %buf = alloca [16 x i8], align 16               ; [#uses=10 type=[16 x i8]*]
  call void @llvm.dbg.value(metadata !{i8* %memptr}, i64 0, metadata !305), !dbg !306 ; [debug line = 8:30] [debug variable = memptr]
  call void @llvm.dbg.value(metadata !{i3 %mode}, i64 0, metadata !307), !dbg !308 ; [debug line = 8:55] [debug variable = mode]
  call void @llvm.dbg.value(metadata !{i32 %inbuf_addr}, i64 0, metadata !309), !dbg !310 ; [debug line = 8:70] [debug variable = inbuf_addr]
  call void @llvm.dbg.value(metadata !{i32 %outbuf_addr}, i64 0, metadata !311), !dbg !312 ; [debug line = 8:91] [debug variable = outbuf_addr]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %memptr, i32 64) nounwind, !dbg !313 ; [debug line = 8:105]
  call void (...)* @_ssdm_op_SpecInterface(i32 %outbuf_addr, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !315 ; [debug line = 9:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %inbuf_addr, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !316 ; [debug line = 10:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %memptr, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 64, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !317 ; [debug line = 11:1]
  %tmp = zext i3 %mode to i32, !dbg !318          ; [#uses=2 type=i32] [debug line = 12:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %tmp, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !318 ; [debug line = 12:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !319 ; [debug line = 13:1]
  call void @llvm.dbg.declare(metadata !{[16 x i8]* %buf}, metadata !320), !dbg !321 ; [debug line = 15:16] [debug variable = buf]
  switch i32 %tmp, label %.loopexit [
    i32 0, label %.preheader17.preheader
    i32 1, label %.preheader16.preheader
    i32 2, label %.preheader12.preheader
    i32 3, label %.preheader6.preheader
    i32 4, label %.preheader.preheader
  ], !dbg !322                                    ; [debug line = 23:5]

.preheader17.preheader:                           ; preds = %0
  br label %.preheader17, !dbg !323               ; [debug line = 25:10]

.preheader16.preheader:                           ; preds = %0
  %tmp.204 = zext i32 %inbuf_addr to i64, !dbg !326 ; [#uses=1 type=i64] [debug line = 32:7]
  br label %.preheader16, !dbg !328               ; [debug line = 31:10]

.preheader12.preheader:                           ; preds = %0
  %tmp.205 = zext i32 %inbuf_addr to i64, !dbg !329 ; [#uses=1 type=i64] [debug line = 48:7]
  br label %.preheader12, !dbg !331               ; [debug line = 47:10]

.preheader6.preheader:                            ; preds = %0
  %tmp.206 = zext i32 %inbuf_addr to i64, !dbg !332 ; [#uses=1 type=i64] [debug line = 66:7]
  br label %.preheader6, !dbg !334                ; [debug line = 65:10]

.preheader.preheader:                             ; preds = %0
  %tmp.207 = zext i32 %inbuf_addr to i64, !dbg !335 ; [#uses=1 type=i64] [debug line = 72:7]
  br label %.preheader, !dbg !337                 ; [debug line = 71:10]

.preheader17:                                     ; preds = %1, %.preheader17.preheader
  %i = phi i8 [ %i.13, %1 ], [ 0, %.preheader17.preheader ] ; [#uses=3 type=i8]
  %tmp.208 = icmp eq i8 %i, 16, !dbg !323         ; [#uses=1 type=i1] [debug line = 25:10]
  br i1 %tmp.208, label %2, label %1, !dbg !323   ; [debug line = 25:10]

; <label>:1                                       ; preds = %.preheader17
  %tmp.213 = zext i8 %i to i64, !dbg !338         ; [#uses=2 type=i64] [debug line = 25:27]
  %iv.addr = getelementptr inbounds [16 x i8]* @iv, i64 0, i64 %tmp.213, !dbg !338 ; [#uses=1 type=i8*] [debug line = 25:27]
  %iv.load = load i8* %iv.addr, align 1, !dbg !338 ; [#uses=2 type=i8] [debug line = 25:27]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %iv.load) nounwind
  %xorv.addr = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.213, !dbg !338 ; [#uses=1 type=i8*] [debug line = 25:27]
  store i8 %iv.load, i8* %xorv.addr, align 1, !dbg !338 ; [debug line = 25:27]
  %i.13 = add i8 %i, 1, !dbg !340                 ; [#uses=1 type=i8] [debug line = 25:21]
  call void @llvm.dbg.value(metadata !{i8 %i.13}, i64 0, metadata !341), !dbg !340 ; [debug line = 25:21] [debug variable = i]
  br label %.preheader17, !dbg !340               ; [debug line = 25:21]

; <label>:2                                       ; preds = %.preheader17
  call fastcc void @aes256_init(i8* getelementptr inbounds ([32 x i8]* @key, i64 0, i64 0)), !dbg !342 ; [debug line = 26:6]
  br label %.loopexit, !dbg !343                  ; [debug line = 27:6]

.preheader16:                                     ; preds = %3, %.preheader16.preheader
  %i.1 = phi i8 [ %i.14, %3 ], [ 0, %.preheader16.preheader ] ; [#uses=3 type=i8]
  %tmp.209 = icmp eq i8 %i.1, 16, !dbg !328       ; [#uses=1 type=i1] [debug line = 31:10]
  br i1 %tmp.209, label %.preheader15.preheader, label %3, !dbg !328 ; [debug line = 31:10]

.preheader15.preheader:                           ; preds = %.preheader16
  br label %.preheader15, !dbg !344               ; [debug line = 34:10]

; <label>:3                                       ; preds = %.preheader16
  %tmp.215 = zext i8 %i.1 to i64, !dbg !326       ; [#uses=2 type=i64] [debug line = 32:7]
  %.sum5 = add i64 %tmp.215, %tmp.204, !dbg !326  ; [#uses=1 type=i64] [debug line = 32:7]
  %memptr.addr = getelementptr inbounds i8* %memptr, i64 %.sum5, !dbg !326 ; [#uses=1 type=i8*] [debug line = 32:7]
  %memptr.load = load i8* %memptr.addr, align 1, !dbg !326 ; [#uses=2 type=i8] [debug line = 32:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %memptr.load) nounwind
  %buf.addr = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.215, !dbg !326 ; [#uses=1 type=i8*] [debug line = 32:7]
  store i8 %memptr.load, i8* %buf.addr, align 1, !dbg !326 ; [debug line = 32:7]
  %i.14 = add i8 %i.1, 1, !dbg !346               ; [#uses=1 type=i8] [debug line = 31:21]
  call void @llvm.dbg.value(metadata !{i8 %i.14}, i64 0, metadata !341), !dbg !346 ; [debug line = 31:21] [debug variable = i]
  br label %.preheader16, !dbg !346               ; [debug line = 31:21]

.preheader15:                                     ; preds = %4, %.preheader15.preheader
  %i.2 = phi i8 [ %i.18, %4 ], [ 0, %.preheader15.preheader ] ; [#uses=3 type=i8]
  %tmp.223 = icmp eq i8 %i.2, 16, !dbg !344       ; [#uses=1 type=i1] [debug line = 34:10]
  br i1 %tmp.223, label %5, label %4, !dbg !344   ; [debug line = 34:10]

; <label>:4                                       ; preds = %.preheader15
  %tmp.225 = zext i8 %i.2 to i64, !dbg !347       ; [#uses=2 type=i64] [debug line = 34:28]
  %buf.addr.31 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.225, !dbg !347 ; [#uses=2 type=i8*] [debug line = 34:28]
  %buf.load = load i8* %buf.addr.31, align 1, !dbg !347 ; [#uses=2 type=i8] [debug line = 34:28]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  %xorv.addr.1 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.225, !dbg !347 ; [#uses=1 type=i8*] [debug line = 34:28]
  %xorv.load = load i8* %xorv.addr.1, align 1, !dbg !347 ; [#uses=2 type=i8] [debug line = 34:28]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %xorv.load) nounwind
  %tmp.226 = xor i8 %xorv.load, %buf.load, !dbg !347 ; [#uses=1 type=i8] [debug line = 34:28]
  store i8 %tmp.226, i8* %buf.addr.31, align 1, !dbg !347 ; [debug line = 34:28]
  %i.18 = add i8 %i.2, 1, !dbg !349               ; [#uses=1 type=i8] [debug line = 34:21]
  call void @llvm.dbg.value(metadata !{i8 %i.18}, i64 0, metadata !341), !dbg !349 ; [debug line = 34:21] [debug variable = i]
  br label %.preheader15, !dbg !349               ; [debug line = 34:21]

; <label>:5                                       ; preds = %.preheader15
  %buf.addr.30 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 0, !dbg !350 ; [#uses=1 type=i8*] [debug line = 36:6]
  call fastcc void @aes256_encrypt_ecb(i8* %buf.addr.30), !dbg !350 ; [debug line = 36:6]
  br label %6, !dbg !351                          ; [debug line = 38:10]

; <label>:6                                       ; preds = %7, %5
  %i.3 = phi i8 [ 0, %5 ], [ %i.20, %7 ]          ; [#uses=3 type=i8]
  %tmp.230 = icmp eq i8 %i.3, 16, !dbg !351       ; [#uses=1 type=i1] [debug line = 38:10]
  br i1 %tmp.230, label %.preheader13.preheader, label %7, !dbg !351 ; [debug line = 38:10]

.preheader13.preheader:                           ; preds = %6
  %tmp.232 = zext i32 %outbuf_addr to i64, !dbg !353 ; [#uses=1 type=i64] [debug line = 42:7]
  br label %.preheader13, !dbg !355               ; [debug line = 41:10]

; <label>:7                                       ; preds = %6
  %tmp.233 = zext i8 %i.3 to i64, !dbg !356       ; [#uses=2 type=i64] [debug line = 38:28]
  %buf.addr.34 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.233, !dbg !356 ; [#uses=1 type=i8*] [debug line = 38:28]
  %buf.load.28 = load i8* %buf.addr.34, align 1, !dbg !356 ; [#uses=2 type=i8] [debug line = 38:28]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.28) nounwind
  %xorv.addr.2 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.233, !dbg !356 ; [#uses=1 type=i8*] [debug line = 38:28]
  store i8 %buf.load.28, i8* %xorv.addr.2, align 1, !dbg !356 ; [debug line = 38:28]
  %i.20 = add i8 %i.3, 1, !dbg !358               ; [#uses=1 type=i8] [debug line = 38:21]
  call void @llvm.dbg.value(metadata !{i8 %i.20}, i64 0, metadata !341), !dbg !358 ; [debug line = 38:21] [debug variable = i]
  br label %6, !dbg !358                          ; [debug line = 38:21]

.preheader13:                                     ; preds = %8, %.preheader13.preheader
  %i.4 = phi i8 [ %i.22, %8 ], [ 0, %.preheader13.preheader ] ; [#uses=3 type=i8]
  %tmp.238 = icmp eq i8 %i.4, 16, !dbg !355       ; [#uses=1 type=i1] [debug line = 41:10]
  br i1 %tmp.238, label %.loopexit.loopexit32, label %8, !dbg !355 ; [debug line = 41:10]

; <label>:8                                       ; preds = %.preheader13
  %tmp.240 = zext i8 %i.4 to i64, !dbg !353       ; [#uses=2 type=i64] [debug line = 42:7]
  %buf.addr.36 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.240, !dbg !353 ; [#uses=1 type=i8*] [debug line = 42:7]
  %buf.load.30 = load i8* %buf.addr.36, align 1, !dbg !353 ; [#uses=2 type=i8] [debug line = 42:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.30) nounwind
  %.sum4 = add i64 %tmp.240, %tmp.232, !dbg !353  ; [#uses=1 type=i64] [debug line = 42:7]
  %memptr.addr.4 = getelementptr inbounds i8* %memptr, i64 %.sum4, !dbg !353 ; [#uses=1 type=i8*] [debug line = 42:7]
  store i8 %buf.load.30, i8* %memptr.addr.4, align 1, !dbg !353 ; [debug line = 42:7]
  %i.22 = add i8 %i.4, 1, !dbg !359               ; [#uses=1 type=i8] [debug line = 41:21]
  call void @llvm.dbg.value(metadata !{i8 %i.22}, i64 0, metadata !341), !dbg !359 ; [debug line = 41:21] [debug variable = i]
  br label %.preheader13, !dbg !359               ; [debug line = 41:21]

.preheader12:                                     ; preds = %9, %.preheader12.preheader
  %i.5 = phi i8 [ %i.15, %9 ], [ 0, %.preheader12.preheader ] ; [#uses=3 type=i8]
  %tmp.210 = icmp eq i8 %i.5, 16, !dbg !331       ; [#uses=1 type=i1] [debug line = 47:10]
  br i1 %tmp.210, label %.preheader11.preheader, label %9, !dbg !331 ; [debug line = 47:10]

.preheader11.preheader:                           ; preds = %.preheader12
  br label %.preheader11, !dbg !360               ; [debug line = 50:10]

; <label>:9                                       ; preds = %.preheader12
  %tmp.217 = zext i8 %i.5 to i64, !dbg !329       ; [#uses=2 type=i64] [debug line = 48:7]
  %.sum3 = add i64 %tmp.217, %tmp.205, !dbg !329  ; [#uses=1 type=i64] [debug line = 48:7]
  %memptr.addr.1 = getelementptr inbounds i8* %memptr, i64 %.sum3, !dbg !329 ; [#uses=1 type=i8*] [debug line = 48:7]
  %memptr.load.1 = load i8* %memptr.addr.1, align 1, !dbg !329 ; [#uses=2 type=i8] [debug line = 48:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %memptr.load.1) nounwind
  %buf.addr.29 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.217, !dbg !329 ; [#uses=1 type=i8*] [debug line = 48:7]
  store i8 %memptr.load.1, i8* %buf.addr.29, align 1, !dbg !329 ; [debug line = 48:7]
  %i.15 = add i8 %i.5, 1, !dbg !362               ; [#uses=1 type=i8] [debug line = 47:21]
  call void @llvm.dbg.value(metadata !{i8 %i.15}, i64 0, metadata !341), !dbg !362 ; [debug line = 47:21] [debug variable = i]
  br label %.preheader12, !dbg !362               ; [debug line = 47:21]

.preheader11:                                     ; preds = %10, %.preheader11.preheader
  %i.6 = phi i8 [ %i.19, %10 ], [ 0, %.preheader11.preheader ] ; [#uses=3 type=i8]
  %tmp.224 = icmp eq i8 %i.6, 16, !dbg !360       ; [#uses=1 type=i1] [debug line = 50:10]
  br i1 %tmp.224, label %11, label %10, !dbg !360 ; [debug line = 50:10]

; <label>:10                                      ; preds = %.preheader11
  %tmp.228 = zext i8 %i.6 to i64, !dbg !363       ; [#uses=2 type=i64] [debug line = 50:28]
  %buf.addr.33 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.228, !dbg !363 ; [#uses=1 type=i8*] [debug line = 50:28]
  %buf.load.27 = load i8* %buf.addr.33, align 1, !dbg !363 ; [#uses=2 type=i8] [debug line = 50:28]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.27) nounwind
  %lastbuf.addr = getelementptr inbounds [16 x i8]* @lastbuf, i64 0, i64 %tmp.228, !dbg !363 ; [#uses=1 type=i8*] [debug line = 50:28]
  store i8 %buf.load.27, i8* %lastbuf.addr, align 1, !dbg !363 ; [debug line = 50:28]
  %i.19 = add i8 %i.6, 1, !dbg !365               ; [#uses=1 type=i8] [debug line = 50:21]
  call void @llvm.dbg.value(metadata !{i8 %i.19}, i64 0, metadata !341), !dbg !365 ; [debug line = 50:21] [debug variable = i]
  br label %.preheader11, !dbg !365               ; [debug line = 50:21]

; <label>:11                                      ; preds = %.preheader11
  %buf.addr.32 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 0, !dbg !366 ; [#uses=1 type=i8*] [debug line = 52:6]
  call fastcc void @aes256_decrypt_ecb(i8* %buf.addr.32), !dbg !366 ; [debug line = 52:6]
  br label %12, !dbg !367                         ; [debug line = 54:10]

; <label>:12                                      ; preds = %13, %11
  %i.7 = phi i8 [ 0, %11 ], [ %i.21, %13 ]        ; [#uses=3 type=i8]
  %tmp.231 = icmp eq i8 %i.7, 16, !dbg !367       ; [#uses=1 type=i1] [debug line = 54:10]
  br i1 %tmp.231, label %.preheader10.preheader, label %13, !dbg !367 ; [debug line = 54:10]

.preheader10.preheader:                           ; preds = %12
  br label %.preheader10, !dbg !369               ; [debug line = 56:10]

; <label>:13                                      ; preds = %12
  %tmp.235 = zext i8 %i.7 to i64, !dbg !371       ; [#uses=2 type=i64] [debug line = 54:28]
  %buf.addr.35 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.235, !dbg !371 ; [#uses=2 type=i8*] [debug line = 54:28]
  %buf.load.29 = load i8* %buf.addr.35, align 1, !dbg !371 ; [#uses=2 type=i8] [debug line = 54:28]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.29) nounwind
  %xorv.addr.3 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.235, !dbg !371 ; [#uses=1 type=i8*] [debug line = 54:28]
  %xorv.load.1 = load i8* %xorv.addr.3, align 1, !dbg !371 ; [#uses=2 type=i8] [debug line = 54:28]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %xorv.load.1) nounwind
  %tmp.236 = xor i8 %xorv.load.1, %buf.load.29, !dbg !371 ; [#uses=1 type=i8] [debug line = 54:28]
  store i8 %tmp.236, i8* %buf.addr.35, align 1, !dbg !371 ; [debug line = 54:28]
  %i.21 = add i8 %i.7, 1, !dbg !373               ; [#uses=1 type=i8] [debug line = 54:21]
  call void @llvm.dbg.value(metadata !{i8 %i.21}, i64 0, metadata !341), !dbg !373 ; [debug line = 54:21] [debug variable = i]
  br label %12, !dbg !373                         ; [debug line = 54:21]

.preheader10:                                     ; preds = %14, %.preheader10.preheader
  %i.8 = phi i8 [ %i.23, %14 ], [ 0, %.preheader10.preheader ] ; [#uses=3 type=i8]
  %tmp.239 = icmp eq i8 %i.8, 16, !dbg !369       ; [#uses=1 type=i1] [debug line = 56:10]
  br i1 %tmp.239, label %.preheader8.preheader, label %14, !dbg !369 ; [debug line = 56:10]

.preheader8.preheader:                            ; preds = %.preheader10
  %tmp.242 = zext i32 %outbuf_addr to i64, !dbg !374 ; [#uses=1 type=i64] [debug line = 60:7]
  br label %.preheader8, !dbg !376                ; [debug line = 59:10]

; <label>:14                                      ; preds = %.preheader10
  %tmp.243 = zext i8 %i.8 to i64, !dbg !377       ; [#uses=2 type=i64] [debug line = 56:28]
  %lastbuf.addr.1 = getelementptr inbounds [16 x i8]* @lastbuf, i64 0, i64 %tmp.243, !dbg !377 ; [#uses=1 type=i8*] [debug line = 56:28]
  %lastbuf.load = load i8* %lastbuf.addr.1, align 1, !dbg !377 ; [#uses=2 type=i8] [debug line = 56:28]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %lastbuf.load) nounwind
  %xorv.addr.4 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.243, !dbg !377 ; [#uses=1 type=i8*] [debug line = 56:28]
  store i8 %lastbuf.load, i8* %xorv.addr.4, align 1, !dbg !377 ; [debug line = 56:28]
  %i.23 = add i8 %i.8, 1, !dbg !379               ; [#uses=1 type=i8] [debug line = 56:21]
  call void @llvm.dbg.value(metadata !{i8 %i.23}, i64 0, metadata !341), !dbg !379 ; [debug line = 56:21] [debug variable = i]
  br label %.preheader10, !dbg !379               ; [debug line = 56:21]

.preheader8:                                      ; preds = %15, %.preheader8.preheader
  %i.9 = phi i8 [ %i.24, %15 ], [ 0, %.preheader8.preheader ] ; [#uses=3 type=i8]
  %tmp.245 = icmp eq i8 %i.9, 16, !dbg !376       ; [#uses=1 type=i1] [debug line = 59:10]
  br i1 %tmp.245, label %.loopexit.loopexit31, label %15, !dbg !376 ; [debug line = 59:10]

; <label>:15                                      ; preds = %.preheader8
  %tmp.246 = zext i8 %i.9 to i64, !dbg !374       ; [#uses=2 type=i64] [debug line = 60:7]
  %buf.addr.37 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.246, !dbg !374 ; [#uses=1 type=i8*] [debug line = 60:7]
  %buf.load.31 = load i8* %buf.addr.37, align 1, !dbg !374 ; [#uses=2 type=i8] [debug line = 60:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.31) nounwind
  %.sum2 = add i64 %tmp.246, %tmp.242, !dbg !374  ; [#uses=1 type=i64] [debug line = 60:7]
  %memptr.addr.5 = getelementptr inbounds i8* %memptr, i64 %.sum2, !dbg !374 ; [#uses=1 type=i8*] [debug line = 60:7]
  store i8 %buf.load.31, i8* %memptr.addr.5, align 1, !dbg !374 ; [debug line = 60:7]
  %i.24 = add i8 %i.9, 1, !dbg !380               ; [#uses=1 type=i8] [debug line = 59:21]
  call void @llvm.dbg.value(metadata !{i8 %i.24}, i64 0, metadata !341), !dbg !380 ; [debug line = 59:21] [debug variable = i]
  br label %.preheader8, !dbg !380                ; [debug line = 59:21]

.preheader6:                                      ; preds = %16, %.preheader6.preheader
  %i. = phi i8 [ %i.16, %16 ], [ 0, %.preheader6.preheader ] ; [#uses=3 type=i8]
  %tmp.211 = icmp eq i8 %i., 16, !dbg !334        ; [#uses=1 type=i1] [debug line = 65:10]
  br i1 %tmp.211, label %.loopexit.loopexit30, label %16, !dbg !334 ; [debug line = 65:10]

; <label>:16                                      ; preds = %.preheader6
  %tmp.219 = zext i8 %i. to i64, !dbg !332        ; [#uses=2 type=i64] [debug line = 66:7]
  %.sum1 = add i64 %tmp.219, %tmp.206, !dbg !332  ; [#uses=1 type=i64] [debug line = 66:7]
  %memptr.addr.2 = getelementptr inbounds i8* %memptr, i64 %.sum1, !dbg !332 ; [#uses=1 type=i8*] [debug line = 66:7]
  %memptr.load.2 = load i8* %memptr.addr.2, align 1, !dbg !332 ; [#uses=2 type=i8] [debug line = 66:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %memptr.load.2) nounwind
  %iv.addr.1 = getelementptr inbounds [16 x i8]* @iv, i64 0, i64 %tmp.219, !dbg !332 ; [#uses=1 type=i8*] [debug line = 66:7]
  store i8 %memptr.load.2, i8* %iv.addr.1, align 1, !dbg !332 ; [debug line = 66:7]
  %i.16 = add i8 %i., 1, !dbg !381                ; [#uses=1 type=i8] [debug line = 65:21]
  call void @llvm.dbg.value(metadata !{i8 %i.16}, i64 0, metadata !341), !dbg !381 ; [debug line = 65:21] [debug variable = i]
  br label %.preheader6, !dbg !381                ; [debug line = 65:21]

.preheader:                                       ; preds = %17, %.preheader.preheader
  %i.10 = phi i8 [ %i.17, %17 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i8]
  %tmp.212 = icmp eq i8 %i.10, 32, !dbg !337      ; [#uses=1 type=i1] [debug line = 71:10]
  br i1 %tmp.212, label %.loopexit.loopexit, label %17, !dbg !337 ; [debug line = 71:10]

; <label>:17                                      ; preds = %.preheader
  %tmp.221 = zext i8 %i.10 to i64, !dbg !335      ; [#uses=2 type=i64] [debug line = 72:7]
  %.sum = add i64 %tmp.221, %tmp.207, !dbg !335   ; [#uses=1 type=i64] [debug line = 72:7]
  %memptr.addr.3 = getelementptr inbounds i8* %memptr, i64 %.sum, !dbg !335 ; [#uses=1 type=i8*] [debug line = 72:7]
  %memptr.load.3 = load i8* %memptr.addr.3, align 1, !dbg !335 ; [#uses=2 type=i8] [debug line = 72:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %memptr.load.3) nounwind
  %key.addr = getelementptr inbounds [32 x i8]* @key, i64 0, i64 %tmp.221, !dbg !335 ; [#uses=1 type=i8*] [debug line = 72:7]
  store i8 %memptr.load.3, i8* %key.addr, align 1, !dbg !335 ; [debug line = 72:7]
  %i.17 = add i8 %i.10, 1, !dbg !382              ; [#uses=1 type=i8] [debug line = 71:21]
  call void @llvm.dbg.value(metadata !{i8 %i.17}, i64 0, metadata !341), !dbg !382 ; [debug line = 71:21] [debug variable = i]
  br label %.preheader, !dbg !382                 ; [debug line = 71:21]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit.loopexit30:                             ; preds = %.preheader6
  br label %.loopexit

.loopexit.loopexit31:                             ; preds = %.preheader8
  br label %.loopexit

.loopexit.loopexit32:                             ; preds = %.preheader13
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit32, %.loopexit.loopexit31, %.loopexit.loopexit30, %.loopexit.loopexit, %2, %0
  ret void, !dbg !383                             ; [debug line = 75:1]
}

; [#uses=1]
define internal fastcc void @aes256_init(i8* %k) nounwind uwtable {
  %rcon = alloca i8, align 1                      ; [#uses=2 type=i8*]
  call void @llvm.dbg.value(metadata !{i8* %k}, i64 0, metadata !384), !dbg !385 ; [debug line = 339:54] [debug variable = k]
  call void @llvm.dbg.declare(metadata !{i8* %rcon}, metadata !386), !dbg !388 ; [debug line = 341:19] [debug variable = rcon]
  store i8 1, i8* %rcon, align 1, !dbg !389       ; [debug line = 341:27]
  br label %1, !dbg !390                          ; [debug line = 344:10]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 0, %0 ], [ %i.25, %2 ]            ; [#uses=3 type=i8]
  %tmp = icmp eq i8 %i, 32, !dbg !390             ; [#uses=1 type=i1] [debug line = 344:10]
  br i1 %tmp, label %.preheader.preheader, label %2, !dbg !390 ; [debug line = 344:10]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !392                 ; [debug line = 345:10]

; <label>:2                                       ; preds = %1
  %tmp.248 = zext i8 %i to i64, !dbg !394         ; [#uses=3 type=i64] [debug line = 344:44]
  %k.addr = getelementptr inbounds i8* %k, i64 %tmp.248, !dbg !394 ; [#uses=1 type=i8*] [debug line = 344:44]
  %k.load = load i8* %k.addr, align 1, !dbg !394  ; [#uses=3 type=i8] [debug line = 344:44]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load) nounwind
  %ctx.addr = getelementptr inbounds %struct.aes256_context.0* @ctx, i64 0, i32 2, i64 %tmp.248, !dbg !394 ; [#uses=1 type=i8*] [debug line = 344:44]
  store i8 %k.load, i8* %ctx.addr, align 1, !dbg !394 ; [debug line = 344:44]
  %ctx.addr.1 = getelementptr inbounds %struct.aes256_context.0* @ctx, i64 0, i32 1, i64 %tmp.248, !dbg !394 ; [#uses=1 type=i8*] [debug line = 344:44]
  store i8 %k.load, i8* %ctx.addr.1, align 1, !dbg !394 ; [debug line = 344:44]
  %i.25 = add i8 %i, 1, !dbg !395                 ; [#uses=1 type=i8] [debug line = 344:39]
  call void @llvm.dbg.value(metadata !{i8 %i.25}, i64 0, metadata !396), !dbg !395 ; [debug line = 344:39] [debug variable = i]
  br label %1, !dbg !395                          ; [debug line = 344:39]

.preheader:                                       ; preds = %3, %.preheader.preheader
  %i.1 = phi i8 [ %phitmp, %3 ], [ 7, %.preheader.preheader ], !dbg !392 ; [#uses=2 type=i8] [debug line = 345:10]
  call void @llvm.dbg.value(metadata !{i8 %i.1}, i64 0, metadata !396), !dbg !392 ; [debug line = 345:10] [debug variable = i]
  %tmp.250 = icmp eq i8 %i.1, 0, !dbg !392        ; [#uses=1 type=i1] [debug line = 345:10]
  br i1 %tmp.250, label %4, label %3, !dbg !392   ; [debug line = 345:10]

; <label>:3                                       ; preds = %.preheader
  call fastcc void @aes_expandEncKey(i8* getelementptr inbounds (%struct.aes256_context.0* @ctx, i64 0, i32 2, i64 0), i8* %rcon), !dbg !397 ; [debug line = 345:23]
  %phitmp = add i8 %i.1, -1, !dbg !397            ; [#uses=1 type=i8] [debug line = 345:23]
  br label %.preheader, !dbg !397                 ; [debug line = 345:23]

; <label>:4                                       ; preds = %.preheader
  ret void, !dbg !398                             ; [debug line = 346:1]
}

; [#uses=1]
define internal fastcc void @aes256_encrypt_ecb(i8* %buf) nounwind uwtable {
  %rcon = alloca i8, align 1                      ; [#uses=3 type=i8*]
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !399), !dbg !400 ; [debug line = 358:61] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %rcon}, metadata !401), !dbg !403 ; [debug line = 360:22] [debug variable = rcon]
  call fastcc void @aes_addRoundKey_cpy(i8* %buf, i8* getelementptr inbounds (%struct.aes256_context.0* @ctx, i64 0, i32 1, i64 0), i8* getelementptr inbounds (%struct.aes256_context.0* @ctx, i64 0, i32 0, i64 0)), !dbg !404 ; [debug line = 362:5]
  store i8 1, i8* %rcon, align 1, !dbg !405       ; [debug line = 363:9]
  br label %1, !dbg !405                          ; [debug line = 363:9]

; <label>:1                                       ; preds = %5, %0
  %i = phi i8 [ 1, %0 ], [ %i.26, %5 ]            ; [#uses=3 type=i8]
  %exitcond = icmp eq i8 %i, 14, !dbg !405        ; [#uses=1 type=i1] [debug line = 363:9]
  br i1 %exitcond, label %6, label %2, !dbg !405  ; [debug line = 363:9]

; <label>:2                                       ; preds = %1
  call fastcc void @aes_subBytes(i8* %buf), !dbg !407 ; [debug line = 365:9]
  call fastcc void @aes_shiftRows(i8* %buf), !dbg !409 ; [debug line = 366:9]
  call fastcc void @aes_mixColumns(i8* %buf), !dbg !410 ; [debug line = 367:9]
  %tmp = and i8 %i, 1, !dbg !411                  ; [#uses=1 type=i8] [debug line = 368:9]
  %tmp.251 = icmp eq i8 %tmp, 0, !dbg !411        ; [#uses=1 type=i1] [debug line = 368:9]
  br i1 %tmp.251, label %4, label %3, !dbg !411   ; [debug line = 368:9]

; <label>:3                                       ; preds = %2
  call fastcc void @aes_addRoundKey(i8* %buf, i8* getelementptr inbounds (%struct.aes256_context.0* @ctx, i64 0, i32 0, i64 16)), !dbg !412 ; [debug line = 368:21]
  br label %5, !dbg !412                          ; [debug line = 368:21]

; <label>:4                                       ; preds = %2
  call fastcc void @aes_expandEncKey(i8* getelementptr inbounds (%struct.aes256_context.0* @ctx, i64 0, i32 0, i64 0), i8* %rcon), !dbg !413 ; [debug line = 369:14]
  call fastcc void @aes_addRoundKey(i8* %buf, i8* getelementptr inbounds (%struct.aes256_context.0* @ctx, i64 0, i32 0, i64 0)), !dbg !414 ; [debug line = 369:49]
  br label %5

; <label>:5                                       ; preds = %4, %3
  %i.26 = add i8 %i, 1, !dbg !415                 ; [#uses=1 type=i8] [debug line = 363:34]
  call void @llvm.dbg.value(metadata !{i8 %i.26}, i64 0, metadata !416), !dbg !415 ; [debug line = 363:34] [debug variable = i]
  br label %1, !dbg !415                          ; [debug line = 363:34]

; <label>:6                                       ; preds = %1
  call fastcc void @aes_subBytes(i8* %buf), !dbg !417 ; [debug line = 371:5]
  call fastcc void @aes_shiftRows(i8* %buf), !dbg !418 ; [debug line = 372:5]
  call fastcc void @aes_expandEncKey(i8* getelementptr inbounds (%struct.aes256_context.0* @ctx, i64 0, i32 0, i64 0), i8* %rcon), !dbg !419 ; [debug line = 373:5]
  call fastcc void @aes_addRoundKey(i8* %buf, i8* getelementptr inbounds (%struct.aes256_context.0* @ctx, i64 0, i32 0, i64 0)), !dbg !420 ; [debug line = 374:5]
  ret void, !dbg !421                             ; [debug line = 375:1]
}

; [#uses=1]
define internal fastcc void @aes256_decrypt_ecb(i8* %buf) nounwind uwtable {
  %rcon = alloca i8, align 1                      ; [#uses=2 type=i8*]
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !422), !dbg !423 ; [debug line = 378:61] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %rcon}, metadata !424), !dbg !426 ; [debug line = 380:22] [debug variable = rcon]
  call fastcc void @aes_addRoundKey_cpy(i8* %buf, i8* getelementptr inbounds (%struct.aes256_context.0* @ctx, i64 0, i32 2, i64 0), i8* getelementptr inbounds (%struct.aes256_context.0* @ctx, i64 0, i32 0, i64 0)), !dbg !427 ; [debug line = 382:5]
  call fastcc void @aes_shiftRows_inv(i8* %buf), !dbg !428 ; [debug line = 383:5]
  call fastcc void @aes_subBytes_inv(i8* %buf), !dbg !429 ; [debug line = 384:5]
  store i8 -128, i8* %rcon, align 1, !dbg !430    ; [debug line = 386:10]
  br label %1, !dbg !430                          ; [debug line = 386:10]

; <label>:1                                       ; preds = %5, %0
  %i = phi i8 [ 13, %0 ], [ %phitmp, %5 ], !dbg !430 ; [#uses=3 type=i8] [debug line = 386:10]
  call void @llvm.dbg.value(metadata !{i8 %i}, i64 0, metadata !432), !dbg !430 ; [debug line = 386:10] [debug variable = i]
  %tmp = icmp eq i8 %i, 0, !dbg !430              ; [#uses=1 type=i1] [debug line = 386:10]
  br i1 %tmp, label %6, label %2, !dbg !430       ; [debug line = 386:10]

; <label>:2                                       ; preds = %1
  %tmp.253 = and i8 %i, 1, !dbg !433              ; [#uses=1 type=i8] [debug line = 388:9]
  %tmp.254 = icmp eq i8 %tmp.253, 0, !dbg !433    ; [#uses=1 type=i1] [debug line = 388:9]
  br i1 %tmp.254, label %4, label %3, !dbg !433   ; [debug line = 388:9]

; <label>:3                                       ; preds = %2
  call fastcc void @aes_expandDecKey(i8* getelementptr inbounds (%struct.aes256_context.0* @ctx, i64 0, i32 0, i64 0), i8* %rcon), !dbg !435 ; [debug line = 390:13]
  call fastcc void @aes_addRoundKey(i8* %buf, i8* getelementptr inbounds (%struct.aes256_context.0* @ctx, i64 0, i32 0, i64 16)), !dbg !437 ; [debug line = 391:13]
  br label %5, !dbg !438                          ; [debug line = 392:9]

; <label>:4                                       ; preds = %2
  call fastcc void @aes_addRoundKey(i8* %buf, i8* getelementptr inbounds (%struct.aes256_context.0* @ctx, i64 0, i32 0, i64 0)), !dbg !439 ; [debug line = 393:14]
  br label %5

; <label>:5                                       ; preds = %4, %3
  call fastcc void @aes_mixColumns_inv(i8* %buf), !dbg !440 ; [debug line = 394:9]
  call fastcc void @aes_shiftRows_inv(i8* %buf), !dbg !441 ; [debug line = 395:9]
  call fastcc void @aes_subBytes_inv(i8* %buf), !dbg !442 ; [debug line = 396:9]
  %phitmp = add i8 %i, -1, !dbg !443              ; [#uses=1 type=i8] [debug line = 397:5]
  br label %1, !dbg !443                          ; [debug line = 397:5]

; <label>:6                                       ; preds = %1
  call fastcc void @aes_addRoundKey(i8* %buf, i8* getelementptr inbounds (%struct.aes256_context.0* @ctx, i64 0, i32 0, i64 0)), !dbg !444 ; [debug line = 398:5]
  ret void, !dbg !445                             ; [debug line = 399:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=5]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=144]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0, !54}
!opencl.kernels = !{!100, !107, !113, !119, !119, !121, !124, !128, !131, !132, !133, !135, !136, !137, !138, !144}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/brett/Thesis/Vivado_WS/aes256cbc/solution1/.autopilot/db/aes256cbc.pragma.2.c", metadata !"/home/brett/Thesis/Vivado_WS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !11, metadata !13, metadata !26} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, null, metadata !"", metadata !4, i32 7, i64 3, i64 4, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!4 = metadata !{i32 786473, metadata !"aes256cbc/src/aes256cbc.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10}
!6 = metadata !{i32 786472, metadata !"RESET", i64 0} ; [ DW_TAG_enumerator ]
!7 = metadata !{i32 786472, metadata !"ENCRYPT", i64 1} ; [ DW_TAG_enumerator ]
!8 = metadata !{i32 786472, metadata !"DECRYPT", i64 2} ; [ DW_TAG_enumerator ]
!9 = metadata !{i32 786472, metadata !"SET_IV", i64 3} ; [ DW_TAG_enumerator ]
!10 = metadata !{i32 786472, metadata !"SET_KEY", i64 4} ; [ DW_TAG_enumerator ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786478, i32 0, metadata !16, metadata !"aes256cbc", metadata !"aes256cbc", metadata !"", metadata !16, i32 8, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i3, i32, i32)* @aes256cbc, null, null, metadata !24, i32 8} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786473, metadata !"aes256cbc/src/aes256cbc.c", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{null, metadata !19, metadata !21, metadata !22, metadata !22}
!19 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!20 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!21 = metadata !{i32 786454, null, metadata !"ciphermode_t", metadata !16, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ]
!22 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !16, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!23 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !28, metadata !32, metadata !33, metadata !34, metadata !38, metadata !46, metadata !49, metadata !50, metadata !51}
!28 = metadata !{i32 786484, i32 0, metadata !15, metadata !"lastbuf", metadata !"lastbuf", metadata !"", metadata !16, i32 16, metadata !29, i32 1, i32 1, [16 x i8]* @lastbuf} ; [ DW_TAG_variable ]
!29 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !20, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!32 = metadata !{i32 786484, i32 0, metadata !15, metadata !"iv", metadata !"iv", metadata !"", metadata !16, i32 17, metadata !29, i32 1, i32 1, [16 x i8]* @iv} ; [ DW_TAG_variable ]
!33 = metadata !{i32 786484, i32 0, metadata !15, metadata !"xorv", metadata !"xorv", metadata !"", metadata !16, i32 18, metadata !29, i32 1, i32 1, [16 x i8]* @xorv} ; [ DW_TAG_variable ]
!34 = metadata !{i32 786484, i32 0, metadata !15, metadata !"key", metadata !"key", metadata !"", metadata !16, i32 19, metadata !35, i32 1, i32 1, [32 x i8]* @key} ; [ DW_TAG_variable ]
!35 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !20, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!38 = metadata !{i32 786484, i32 0, metadata !15, metadata !"ctx", metadata !"ctx", metadata !"", metadata !16, i32 20, metadata !39, i32 1, i32 1, %struct.aes256_context.0* @ctx} ; [ DW_TAG_variable ]
!39 = metadata !{i32 786454, null, metadata !"aes256_context", metadata !16, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_typedef ]
!40 = metadata !{i32 786451, null, metadata !"", metadata !41, i32 28, i64 768, i64 8, i32 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!41 = metadata !{i32 786473, metadata !"aes256cbc/src/aes256ecb.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!42 = metadata !{metadata !43, metadata !44, metadata !45}
!43 = metadata !{i32 786445, metadata !40, metadata !"key", metadata !41, i32 29, i64 256, i64 8, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ]
!44 = metadata !{i32 786445, metadata !40, metadata !"enckey", metadata !41, i32 30, i64 256, i64 8, i64 256, i32 0, metadata !35} ; [ DW_TAG_member ]
!45 = metadata !{i32 786445, metadata !40, metadata !"deckey", metadata !41, i32 31, i64 256, i64 8, i64 512, i32 0, metadata !35} ; [ DW_TAG_member ]
!46 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !47, i32 315, metadata !48, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!47 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!48 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !47, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!49 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !47, i32 316, metadata !48, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!50 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !47, i32 317, metadata !48, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!51 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !52, i32 26, metadata !53, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!52 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!53 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!54 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/brett/Thesis/Vivado_WS/aes256cbc/solution1/.autopilot/db/aes256ecb.pragma.2.c", metadata !"/home/brett/Thesis/Vivado_WS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !11, metadata !11, metadata !55, metadata !92} ; [ DW_TAG_compile_unit ]
!55 = metadata !{metadata !56}
!56 = metadata !{metadata !57, metadata !68, metadata !71, metadata !72, metadata !73, metadata !76, metadata !79, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !91}
!57 = metadata !{i32 786478, i32 0, metadata !58, metadata !"aes256_init", metadata !"aes256_init", metadata !"", metadata !58, i32 339, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 340} ; [ DW_TAG_subprogram ]
!58 = metadata !{i32 786473, metadata !"aes256cbc/src/aes256ecb.c", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!59 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!60 = metadata !{null, metadata !61, metadata !19}
!61 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ]
!62 = metadata !{i32 786454, null, metadata !"aes256_context", metadata !58, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ]
!63 = metadata !{i32 786451, null, metadata !"", metadata !41, i32 28, i64 768, i64 8, i32 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!64 = metadata !{metadata !65, metadata !66, metadata !67}
!65 = metadata !{i32 786445, metadata !63, metadata !"key", metadata !41, i32 29, i64 256, i64 8, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ]
!66 = metadata !{i32 786445, metadata !63, metadata !"enckey", metadata !41, i32 30, i64 256, i64 8, i64 256, i32 0, metadata !35} ; [ DW_TAG_member ]
!67 = metadata !{i32 786445, metadata !63, metadata !"deckey", metadata !41, i32 31, i64 256, i64 8, i64 512, i32 0, metadata !35} ; [ DW_TAG_member ]
!68 = metadata !{i32 786478, i32 0, metadata !58, metadata !"aes256_done", metadata !"aes256_done", metadata !"", metadata !58, i32 349, metadata !69, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 350} ; [ DW_TAG_subprogram ]
!69 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!70 = metadata !{null, metadata !61}
!71 = metadata !{i32 786478, i32 0, metadata !58, metadata !"aes256_encrypt_ecb", metadata !"aes256_encrypt_ecb", metadata !"", metadata !58, i32 358, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 359} ; [ DW_TAG_subprogram ]
!72 = metadata !{i32 786478, i32 0, metadata !58, metadata !"aes256_decrypt_ecb", metadata !"aes256_decrypt_ecb", metadata !"", metadata !58, i32 378, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 379} ; [ DW_TAG_subprogram ]
!73 = metadata !{i32 786478, i32 0, metadata !58, metadata !"aes_mixColumns_inv", metadata !"aes_mixColumns_inv", metadata !"", metadata !58, i32 270, metadata !74, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_mixColumns_inv, null, null, metadata !24, i32 271} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!75 = metadata !{null, metadata !19}
!76 = metadata !{i32 786478, i32 0, metadata !58, metadata !"rj_xtime", metadata !"rj_xtime", metadata !"", metadata !58, i32 187, metadata !77, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i8)* @rj_xtime, null, null, metadata !24, i32 188} ; [ DW_TAG_subprogram ]
!77 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!78 = metadata !{metadata !20, metadata !20}
!79 = metadata !{i32 786478, i32 0, metadata !58, metadata !"aes_expandDecKey", metadata !"aes_expandDecKey", metadata !"", metadata !58, i32 315, metadata !80, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*)* @aes_expandDecKey, null, null, metadata !24, i32 316} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!81 = metadata !{null, metadata !19, metadata !19}
!82 = metadata !{i32 786478, i32 0, metadata !58, metadata !"aes_subBytes_inv", metadata !"aes_subBytes_inv", metadata !"", metadata !58, i32 202, metadata !74, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_subBytes_inv, null, null, metadata !24, i32 203} ; [ DW_TAG_subprogram ]
!83 = metadata !{i32 786478, i32 0, metadata !58, metadata !"aes_shiftRows_inv", metadata !"aes_shiftRows_inv", metadata !"", metadata !58, i32 239, metadata !74, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_shiftRows_inv, null, null, metadata !24, i32 240} ; [ DW_TAG_subprogram ]
!84 = metadata !{i32 786478, i32 0, metadata !58, metadata !"aes_addRoundKey", metadata !"aes_addRoundKey", metadata !"", metadata !58, i32 210, metadata !80, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*)* @aes_addRoundKey, null, null, metadata !24, i32 211} ; [ DW_TAG_subprogram ]
!85 = metadata !{i32 786478, i32 0, metadata !58, metadata !"aes_mixColumns", metadata !"aes_mixColumns", metadata !"", metadata !58, i32 251, metadata !74, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_mixColumns, null, null, metadata !24, i32 252} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 786478, i32 0, metadata !58, metadata !"aes_shiftRows", metadata !"aes_shiftRows", metadata !"", metadata !58, i32 227, metadata !74, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_shiftRows, null, null, metadata !24, i32 228} ; [ DW_TAG_subprogram ]
!87 = metadata !{i32 786478, i32 0, metadata !58, metadata !"aes_subBytes", metadata !"aes_subBytes", metadata !"", metadata !58, i32 194, metadata !74, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_subBytes, null, null, metadata !24, i32 195} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 786478, i32 0, metadata !58, metadata !"aes_addRoundKey_cpy", metadata !"aes_addRoundKey_cpy", metadata !"", metadata !58, i32 218, metadata !89, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i8*)* @aes_addRoundKey_cpy, null, null, metadata !24, i32 219} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!90 = metadata !{null, metadata !19, metadata !19, metadata !19}
!91 = metadata !{i32 786478, i32 0, metadata !58, metadata !"aes_expandEncKey", metadata !"aes_expandEncKey", metadata !"", metadata !58, i32 292, metadata !80, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*)* @aes_expandEncKey, null, null, metadata !24, i32 293} ; [ DW_TAG_subprogram ]
!92 = metadata !{metadata !93}
!93 = metadata !{metadata !94, metadata !99}
!94 = metadata !{i32 786484, i32 0, null, metadata !"sbox", metadata !"sbox", metadata !"", metadata !58, i32 47, metadata !95, i32 1, i32 1, [256 x i8]* @sbox} ; [ DW_TAG_variable ]
!95 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !96, metadata !97, i32 0, i32 0} ; [ DW_TAG_array_type ]
!96 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_const_type ]
!97 = metadata !{metadata !98}
!98 = metadata !{i32 786465, i64 0, i64 255}      ; [ DW_TAG_subrange_type ]
!99 = metadata !{i32 786484, i32 0, null, metadata !"sboxinv", metadata !"sboxinv", metadata !"", metadata !58, i32 82, metadata !95, i32 1, i32 1, [256 x i8]* @sboxinv} ; [ DW_TAG_variable ]
!100 = metadata !{void (i8*, i3, i32, i32)* @aes256cbc, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106}
!101 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 0}
!102 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!103 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"ciphermode_t", metadata !"uint32_t", metadata !"uint32_t"}
!104 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!105 = metadata !{metadata !"kernel_arg_name", metadata !"memptr", metadata !"mode", metadata !"inbuf_addr", metadata !"outbuf_addr"}
!106 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!107 = metadata !{null, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !106}
!108 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!109 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!110 = metadata !{metadata !"kernel_arg_type", metadata !"aes256_context*", metadata !"uchar*"}
!111 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!112 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"k"}
!113 = metadata !{null, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !106}
!114 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!115 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!116 = metadata !{metadata !"kernel_arg_type", metadata !"aes256_context*"}
!117 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!118 = metadata !{metadata !"kernel_arg_name", metadata !"ctx"}
!119 = metadata !{null, metadata !108, metadata !109, metadata !110, metadata !111, metadata !120, metadata !106}
!120 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"buf"}
!121 = metadata !{void (i8*)* @aes_mixColumns_inv, metadata !114, metadata !115, metadata !122, metadata !117, metadata !123, metadata !106}
!122 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*"}
!123 = metadata !{metadata !"kernel_arg_name", metadata !"buf"}
!124 = metadata !{i8 (i8)* @rj_xtime, metadata !125, metadata !115, metadata !126, metadata !117, metadata !127, metadata !106}
!125 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!126 = metadata !{metadata !"kernel_arg_type", metadata !"uchar"}
!127 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!128 = metadata !{void (i8*, i8*)* @aes_expandDecKey, metadata !108, metadata !109, metadata !129, metadata !111, metadata !130, metadata !106}
!129 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*"}
!130 = metadata !{metadata !"kernel_arg_name", metadata !"k", metadata !"rc"}
!131 = metadata !{void (i8*)* @aes_subBytes_inv, metadata !114, metadata !115, metadata !122, metadata !117, metadata !123, metadata !106}
!132 = metadata !{void (i8*)* @aes_shiftRows_inv, metadata !114, metadata !115, metadata !122, metadata !117, metadata !123, metadata !106}
!133 = metadata !{void (i8*, i8*)* @aes_addRoundKey, metadata !108, metadata !109, metadata !129, metadata !111, metadata !134, metadata !106}
!134 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"key"}
!135 = metadata !{void (i8*)* @aes_mixColumns, metadata !114, metadata !115, metadata !122, metadata !117, metadata !123, metadata !106}
!136 = metadata !{void (i8*)* @aes_shiftRows, metadata !114, metadata !115, metadata !122, metadata !117, metadata !123, metadata !106}
!137 = metadata !{void (i8*)* @aes_subBytes, metadata !114, metadata !115, metadata !122, metadata !117, metadata !123, metadata !106}
!138 = metadata !{void (i8*, i8*, i8*)* @aes_addRoundKey_cpy, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !106}
!139 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!140 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!141 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*", metadata !"uchar*"}
!142 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!143 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"key", metadata !"cpk"}
!144 = metadata !{void (i8*, i8*)* @aes_expandEncKey, metadata !108, metadata !109, metadata !129, metadata !111, metadata !130, metadata !106}
!145 = metadata !{i32 786689, metadata !76, metadata !"x", metadata !58, i32 16777403, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!146 = metadata !{i32 187, i32 45, metadata !76, null}
!147 = metadata !{i32 189, i32 46, metadata !148, null}
!148 = metadata !{i32 786443, metadata !76, i32 188, i32 1, metadata !58, i32 15} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 786688, metadata !148, metadata !"y", metadata !58, i32 189, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!150 = metadata !{i32 190, i32 5, metadata !148, null}
!151 = metadata !{i32 786689, metadata !82, metadata !"buf", metadata !58, i32 16777418, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!152 = metadata !{i32 202, i32 45, metadata !82, null}
!153 = metadata !{i32 206, i32 5, metadata !154, null}
!154 = metadata !{i32 786443, metadata !82, i32 203, i32 1, metadata !58, i32 19} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 786688, metadata !154, metadata !"i", metadata !58, i32 204, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!156 = metadata !{i32 206, i32 17, metadata !154, null}
!157 = metadata !{i32 207, i32 1, metadata !154, null}
!158 = metadata !{i32 786689, metadata !87, metadata !"buf", metadata !58, i32 16777410, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!159 = metadata !{i32 194, i32 41, metadata !87, null}
!160 = metadata !{i32 198, i32 5, metadata !161, null}
!161 = metadata !{i32 786443, metadata !87, i32 195, i32 1, metadata !58, i32 26} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 786688, metadata !161, metadata !"i", metadata !58, i32 196, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!163 = metadata !{i32 198, i32 17, metadata !161, null}
!164 = metadata !{i32 199, i32 1, metadata !161, null}
!165 = metadata !{i32 786689, metadata !83, metadata !"buf", metadata !58, i32 16777455, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!166 = metadata !{i32 239, i32 46, metadata !83, null}
!167 = metadata !{i32 243, i32 5, metadata !168, null}
!168 = metadata !{i32 786443, metadata !83, i32 240, i32 1, metadata !58, i32 20} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 786688, metadata !168, metadata !"i", metadata !58, i32 241, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!170 = metadata !{i32 244, i32 5, metadata !168, null}
!171 = metadata !{i32 245, i32 5, metadata !168, null}
!172 = metadata !{i32 786688, metadata !168, metadata !"j", metadata !58, i32 241, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!173 = metadata !{i32 246, i32 5, metadata !168, null}
!174 = metadata !{i32 248, i32 1, metadata !168, null}
!175 = metadata !{i32 786689, metadata !86, metadata !"buf", metadata !58, i32 16777443, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!176 = metadata !{i32 227, i32 42, metadata !86, null}
!177 = metadata !{i32 231, i32 5, metadata !178, null}
!178 = metadata !{i32 786443, metadata !86, i32 228, i32 1, metadata !58, i32 25} ; [ DW_TAG_lexical_block ]
!179 = metadata !{i32 786688, metadata !178, metadata !"i", metadata !58, i32 229, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!180 = metadata !{i32 232, i32 5, metadata !178, null}
!181 = metadata !{i32 233, i32 5, metadata !178, null}
!182 = metadata !{i32 786688, metadata !178, metadata !"j", metadata !58, i32 229, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!183 = metadata !{i32 234, i32 5, metadata !178, null}
!184 = metadata !{i32 236, i32 1, metadata !178, null}
!185 = metadata !{i32 786689, metadata !73, metadata !"buf", metadata !58, i32 16777486, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!186 = metadata !{i32 270, i32 40, metadata !73, null}
!187 = metadata !{i32 274, i32 10, metadata !188, null}
!188 = metadata !{i32 786443, metadata !189, i32 274, i32 5, metadata !58, i32 13} ; [ DW_TAG_lexical_block ]
!189 = metadata !{i32 786443, metadata !73, i32 271, i32 1, metadata !58, i32 12} ; [ DW_TAG_lexical_block ]
!190 = metadata !{i32 276, i32 9, metadata !191, null}
!191 = metadata !{i32 786443, metadata !188, i32 275, i32 5, metadata !58, i32 14} ; [ DW_TAG_lexical_block ]
!192 = metadata !{i32 786688, metadata !189, metadata !"a", metadata !58, i32 272, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!193 = metadata !{i32 277, i32 9, metadata !191, null}
!194 = metadata !{i32 786688, metadata !189, metadata !"b", metadata !58, i32 272, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!195 = metadata !{i32 278, i32 9, metadata !191, null}
!196 = metadata !{i32 786688, metadata !189, metadata !"c", metadata !58, i32 272, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!197 = metadata !{i32 279, i32 9, metadata !191, null}
!198 = metadata !{i32 786688, metadata !189, metadata !"d", metadata !58, i32 272, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!199 = metadata !{i32 280, i32 9, metadata !191, null}
!200 = metadata !{i32 786688, metadata !189, metadata !"e", metadata !58, i32 272, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!201 = metadata !{i32 281, i32 13, metadata !191, null}
!202 = metadata !{i32 786688, metadata !189, metadata !"z", metadata !58, i32 272, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!203 = metadata !{i32 282, i32 26, metadata !191, null}
!204 = metadata !{i32 786688, metadata !189, metadata !"x", metadata !58, i32 272, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!205 = metadata !{i32 283, i32 26, metadata !191, null}
!206 = metadata !{i32 786688, metadata !189, metadata !"y", metadata !58, i32 272, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!207 = metadata !{i32 284, i32 23, metadata !191, null}
!208 = metadata !{i32 285, i32 27, metadata !191, null}
!209 = metadata !{i32 286, i32 27, metadata !191, null}
!210 = metadata !{i32 287, i32 27, metadata !191, null}
!211 = metadata !{i32 274, i32 25, metadata !188, null}
!212 = metadata !{i32 786688, metadata !189, metadata !"i", metadata !58, i32 272, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!213 = metadata !{i32 289, i32 1, metadata !189, null}
!214 = metadata !{i32 786689, metadata !85, metadata !"buf", metadata !58, i32 16777467, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!215 = metadata !{i32 251, i32 43, metadata !85, null}
!216 = metadata !{i32 255, i32 10, metadata !217, null}
!217 = metadata !{i32 786443, metadata !218, i32 255, i32 5, metadata !58, i32 23} ; [ DW_TAG_lexical_block ]
!218 = metadata !{i32 786443, metadata !85, i32 252, i32 1, metadata !58, i32 22} ; [ DW_TAG_lexical_block ]
!219 = metadata !{i32 257, i32 9, metadata !220, null}
!220 = metadata !{i32 786443, metadata !217, i32 256, i32 5, metadata !58, i32 24} ; [ DW_TAG_lexical_block ]
!221 = metadata !{i32 786688, metadata !218, metadata !"a", metadata !58, i32 253, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!222 = metadata !{i32 258, i32 9, metadata !220, null}
!223 = metadata !{i32 786688, metadata !218, metadata !"b", metadata !58, i32 253, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!224 = metadata !{i32 259, i32 9, metadata !220, null}
!225 = metadata !{i32 786688, metadata !218, metadata !"c", metadata !58, i32 253, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!226 = metadata !{i32 260, i32 9, metadata !220, null}
!227 = metadata !{i32 786688, metadata !218, metadata !"d", metadata !58, i32 253, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!228 = metadata !{i32 261, i32 9, metadata !220, null}
!229 = metadata !{i32 786688, metadata !218, metadata !"e", metadata !58, i32 253, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!230 = metadata !{i32 262, i32 23, metadata !220, null}
!231 = metadata !{i32 263, i32 27, metadata !220, null}
!232 = metadata !{i32 264, i32 27, metadata !220, null}
!233 = metadata !{i32 265, i32 27, metadata !220, null}
!234 = metadata !{i32 255, i32 25, metadata !217, null}
!235 = metadata !{i32 786688, metadata !218, metadata !"i", metadata !58, i32 253, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!236 = metadata !{i32 267, i32 1, metadata !218, null}
!237 = metadata !{i32 786689, metadata !91, metadata !"k", metadata !58, i32 16777508, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!238 = metadata !{i32 292, i32 45, metadata !91, null}
!239 = metadata !{i32 786689, metadata !91, metadata !"rc", metadata !58, i32 33554724, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!240 = metadata !{i32 292, i32 63, metadata !91, null}
!241 = metadata !{i32 296, i32 5, metadata !242, null}
!242 = metadata !{i32 786443, metadata !91, i32 293, i32 1, metadata !58, i32 28} ; [ DW_TAG_lexical_block ]
!243 = metadata !{i32 297, i32 5, metadata !242, null}
!244 = metadata !{i32 298, i32 5, metadata !242, null}
!245 = metadata !{i32 299, i32 5, metadata !242, null}
!246 = metadata !{i32 300, i32 11, metadata !242, null}
!247 = metadata !{i32 302, i32 9, metadata !248, null}
!248 = metadata !{i32 786443, metadata !242, i32 302, i32 5, metadata !58, i32 29} ; [ DW_TAG_lexical_block ]
!249 = metadata !{i32 302, i32 32, metadata !248, null}
!250 = metadata !{i32 302, i32 24, metadata !248, null}
!251 = metadata !{i32 786688, metadata !242, metadata !"i", metadata !58, i32 294, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!252 = metadata !{i32 304, i32 5, metadata !242, null}
!253 = metadata !{i32 305, i32 5, metadata !242, null}
!254 = metadata !{i32 306, i32 5, metadata !242, null}
!255 = metadata !{i32 307, i32 5, metadata !242, null}
!256 = metadata !{i32 309, i32 9, metadata !257, null}
!257 = metadata !{i32 786443, metadata !242, i32 309, i32 5, metadata !58, i32 30} ; [ DW_TAG_lexical_block ]
!258 = metadata !{i32 309, i32 33, metadata !257, null}
!259 = metadata !{i32 309, i32 25, metadata !257, null}
!260 = metadata !{i32 312, i32 1, metadata !242, null}
!261 = metadata !{i32 786689, metadata !79, metadata !"k", metadata !58, i32 16777531, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!262 = metadata !{i32 315, i32 38, metadata !79, null}
!263 = metadata !{i32 786689, metadata !79, metadata !"rc", metadata !58, i32 33554747, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!264 = metadata !{i32 315, i32 56, metadata !79, null}
!265 = metadata !{i32 319, i32 9, metadata !266, null}
!266 = metadata !{i32 786443, metadata !267, i32 319, i32 5, metadata !58, i32 17} ; [ DW_TAG_lexical_block ]
!267 = metadata !{i32 786443, metadata !79, i32 316, i32 1, metadata !58, i32 16} ; [ DW_TAG_lexical_block ]
!268 = metadata !{i32 319, i32 33, metadata !266, null}
!269 = metadata !{i32 319, i32 25, metadata !266, null}
!270 = metadata !{i32 786688, metadata !267, metadata !"i", metadata !58, i32 317, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!271 = metadata !{i32 322, i32 5, metadata !267, null}
!272 = metadata !{i32 323, i32 5, metadata !267, null}
!273 = metadata !{i32 324, i32 5, metadata !267, null}
!274 = metadata !{i32 325, i32 5, metadata !267, null}
!275 = metadata !{i32 327, i32 9, metadata !276, null}
!276 = metadata !{i32 786443, metadata !267, i32 327, i32 5, metadata !58, i32 18} ; [ DW_TAG_lexical_block ]
!277 = metadata !{i32 327, i32 32, metadata !276, null}
!278 = metadata !{i32 327, i32 24, metadata !276, null}
!279 = metadata !{i32 330, i32 5, metadata !267, null}
!280 = metadata !{i32 331, i32 5, metadata !267, null}
!281 = metadata !{i32 332, i32 5, metadata !267, null}
!282 = metadata !{i32 333, i32 5, metadata !267, null}
!283 = metadata !{i32 334, i32 5, metadata !267, null}
!284 = metadata !{i32 335, i32 1, metadata !267, null}
!285 = metadata !{i32 786689, metadata !88, metadata !"buf", metadata !58, i32 16777434, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!286 = metadata !{i32 218, i32 48, metadata !88, null}
!287 = metadata !{i32 786689, metadata !88, metadata !"key", metadata !58, i32 33554650, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!288 = metadata !{i32 218, i32 68, metadata !88, null}
!289 = metadata !{i32 786689, metadata !88, metadata !"cpk", metadata !58, i32 50331866, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!290 = metadata !{i32 218, i32 88, metadata !88, null}
!291 = metadata !{i32 222, i32 5, metadata !292, null}
!292 = metadata !{i32 786443, metadata !88, i32 219, i32 1, metadata !58, i32 27} ; [ DW_TAG_lexical_block ]
!293 = metadata !{i32 786688, metadata !292, metadata !"i", metadata !58, i32 220, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!294 = metadata !{i32 222, i32 17, metadata !292, null}
!295 = metadata !{i32 223, i32 1, metadata !292, null}
!296 = metadata !{i32 786689, metadata !84, metadata !"buf", metadata !58, i32 16777426, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!297 = metadata !{i32 210, i32 44, metadata !84, null}
!298 = metadata !{i32 786689, metadata !84, metadata !"key", metadata !58, i32 33554642, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!299 = metadata !{i32 210, i32 64, metadata !84, null}
!300 = metadata !{i32 214, i32 5, metadata !301, null}
!301 = metadata !{i32 786443, metadata !84, i32 211, i32 1, metadata !58, i32 21} ; [ DW_TAG_lexical_block ]
!302 = metadata !{i32 786688, metadata !301, metadata !"i", metadata !58, i32 212, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!303 = metadata !{i32 214, i32 17, metadata !301, null}
!304 = metadata !{i32 215, i32 1, metadata !301, null}
!305 = metadata !{i32 786689, metadata !15, metadata !"memptr", metadata !16, i32 16777224, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!306 = metadata !{i32 8, i32 30, metadata !15, null}
!307 = metadata !{i32 786689, metadata !15, metadata !"mode", metadata !16, i32 33554440, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!308 = metadata !{i32 8, i32 55, metadata !15, null}
!309 = metadata !{i32 786689, metadata !15, metadata !"inbuf_addr", metadata !16, i32 50331656, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!310 = metadata !{i32 8, i32 70, metadata !15, null}
!311 = metadata !{i32 786689, metadata !15, metadata !"outbuf_addr", metadata !16, i32 67108872, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!312 = metadata !{i32 8, i32 91, metadata !15, null}
!313 = metadata !{i32 8, i32 105, metadata !314, null}
!314 = metadata !{i32 786443, metadata !15, i32 8, i32 104, metadata !16, i32 0} ; [ DW_TAG_lexical_block ]
!315 = metadata !{i32 9, i32 1, metadata !314, null}
!316 = metadata !{i32 10, i32 1, metadata !314, null}
!317 = metadata !{i32 11, i32 1, metadata !314, null}
!318 = metadata !{i32 12, i32 1, metadata !314, null}
!319 = metadata !{i32 13, i32 1, metadata !314, null}
!320 = metadata !{i32 786688, metadata !314, metadata !"buf", metadata !16, i32 15, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!321 = metadata !{i32 15, i32 16, metadata !314, null}
!322 = metadata !{i32 23, i32 5, metadata !314, null}
!323 = metadata !{i32 25, i32 10, metadata !324, null}
!324 = metadata !{i32 786443, metadata !325, i32 25, i32 6, metadata !16, i32 2} ; [ DW_TAG_lexical_block ]
!325 = metadata !{i32 786443, metadata !314, i32 23, i32 20, metadata !16, i32 1} ; [ DW_TAG_lexical_block ]
!326 = metadata !{i32 32, i32 7, metadata !327, null}
!327 = metadata !{i32 786443, metadata !325, i32 31, i32 6, metadata !16, i32 4} ; [ DW_TAG_lexical_block ]
!328 = metadata !{i32 31, i32 10, metadata !327, null}
!329 = metadata !{i32 48, i32 7, metadata !330, null}
!330 = metadata !{i32 786443, metadata !325, i32 47, i32 6, metadata !16, i32 10} ; [ DW_TAG_lexical_block ]
!331 = metadata !{i32 47, i32 10, metadata !330, null}
!332 = metadata !{i32 66, i32 7, metadata !333, null}
!333 = metadata !{i32 786443, metadata !325, i32 65, i32 6, metadata !16, i32 18} ; [ DW_TAG_lexical_block ]
!334 = metadata !{i32 65, i32 10, metadata !333, null}
!335 = metadata !{i32 72, i32 7, metadata !336, null}
!336 = metadata !{i32 786443, metadata !325, i32 71, i32 6, metadata !16, i32 19} ; [ DW_TAG_lexical_block ]
!337 = metadata !{i32 71, i32 10, metadata !336, null}
!338 = metadata !{i32 25, i32 27, metadata !339, null}
!339 = metadata !{i32 786443, metadata !324, i32 25, i32 26, metadata !16, i32 3} ; [ DW_TAG_lexical_block ]
!340 = metadata !{i32 25, i32 21, metadata !324, null}
!341 = metadata !{i32 786688, metadata !314, metadata !"i", metadata !16, i32 21, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!342 = metadata !{i32 26, i32 6, metadata !325, null}
!343 = metadata !{i32 27, i32 6, metadata !325, null}
!344 = metadata !{i32 34, i32 10, metadata !345, null}
!345 = metadata !{i32 786443, metadata !325, i32 34, i32 6, metadata !16, i32 5} ; [ DW_TAG_lexical_block ]
!346 = metadata !{i32 31, i32 21, metadata !327, null}
!347 = metadata !{i32 34, i32 28, metadata !348, null}
!348 = metadata !{i32 786443, metadata !345, i32 34, i32 26, metadata !16, i32 6} ; [ DW_TAG_lexical_block ]
!349 = metadata !{i32 34, i32 21, metadata !345, null}
!350 = metadata !{i32 36, i32 6, metadata !325, null}
!351 = metadata !{i32 38, i32 10, metadata !352, null}
!352 = metadata !{i32 786443, metadata !325, i32 38, i32 6, metadata !16, i32 7} ; [ DW_TAG_lexical_block ]
!353 = metadata !{i32 42, i32 7, metadata !354, null}
!354 = metadata !{i32 786443, metadata !325, i32 41, i32 6, metadata !16, i32 9} ; [ DW_TAG_lexical_block ]
!355 = metadata !{i32 41, i32 10, metadata !354, null}
!356 = metadata !{i32 38, i32 28, metadata !357, null}
!357 = metadata !{i32 786443, metadata !352, i32 38, i32 26, metadata !16, i32 8} ; [ DW_TAG_lexical_block ]
!358 = metadata !{i32 38, i32 21, metadata !352, null}
!359 = metadata !{i32 41, i32 21, metadata !354, null}
!360 = metadata !{i32 50, i32 10, metadata !361, null}
!361 = metadata !{i32 786443, metadata !325, i32 50, i32 6, metadata !16, i32 11} ; [ DW_TAG_lexical_block ]
!362 = metadata !{i32 47, i32 21, metadata !330, null}
!363 = metadata !{i32 50, i32 28, metadata !364, null}
!364 = metadata !{i32 786443, metadata !361, i32 50, i32 26, metadata !16, i32 12} ; [ DW_TAG_lexical_block ]
!365 = metadata !{i32 50, i32 21, metadata !361, null}
!366 = metadata !{i32 52, i32 6, metadata !325, null}
!367 = metadata !{i32 54, i32 10, metadata !368, null}
!368 = metadata !{i32 786443, metadata !325, i32 54, i32 6, metadata !16, i32 13} ; [ DW_TAG_lexical_block ]
!369 = metadata !{i32 56, i32 10, metadata !370, null}
!370 = metadata !{i32 786443, metadata !325, i32 56, i32 6, metadata !16, i32 15} ; [ DW_TAG_lexical_block ]
!371 = metadata !{i32 54, i32 28, metadata !372, null}
!372 = metadata !{i32 786443, metadata !368, i32 54, i32 26, metadata !16, i32 14} ; [ DW_TAG_lexical_block ]
!373 = metadata !{i32 54, i32 21, metadata !368, null}
!374 = metadata !{i32 60, i32 7, metadata !375, null}
!375 = metadata !{i32 786443, metadata !325, i32 59, i32 6, metadata !16, i32 17} ; [ DW_TAG_lexical_block ]
!376 = metadata !{i32 59, i32 10, metadata !375, null}
!377 = metadata !{i32 56, i32 28, metadata !378, null}
!378 = metadata !{i32 786443, metadata !370, i32 56, i32 26, metadata !16, i32 16} ; [ DW_TAG_lexical_block ]
!379 = metadata !{i32 56, i32 21, metadata !370, null}
!380 = metadata !{i32 59, i32 21, metadata !375, null}
!381 = metadata !{i32 65, i32 21, metadata !333, null}
!382 = metadata !{i32 71, i32 21, metadata !336, null}
!383 = metadata !{i32 75, i32 1, metadata !314, null}
!384 = metadata !{i32 786689, metadata !57, metadata !"k", metadata !58, i32 33554771, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!385 = metadata !{i32 339, i32 54, metadata !57, null}
!386 = metadata !{i32 786688, metadata !387, metadata !"rcon", metadata !58, i32 341, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!387 = metadata !{i32 786443, metadata !57, i32 340, i32 1, metadata !58, i32 0} ; [ DW_TAG_lexical_block ]
!388 = metadata !{i32 341, i32 19, metadata !387, null}
!389 = metadata !{i32 341, i32 27, metadata !387, null}
!390 = metadata !{i32 344, i32 10, metadata !391, null}
!391 = metadata !{i32 786443, metadata !387, i32 344, i32 5, metadata !58, i32 1} ; [ DW_TAG_lexical_block ]
!392 = metadata !{i32 345, i32 10, metadata !393, null}
!393 = metadata !{i32 786443, metadata !387, i32 345, i32 5, metadata !58, i32 2} ; [ DW_TAG_lexical_block ]
!394 = metadata !{i32 344, i32 44, metadata !391, null}
!395 = metadata !{i32 344, i32 39, metadata !391, null}
!396 = metadata !{i32 786688, metadata !387, metadata !"i", metadata !58, i32 342, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!397 = metadata !{i32 345, i32 23, metadata !393, null}
!398 = metadata !{i32 346, i32 1, metadata !387, null}
!399 = metadata !{i32 786689, metadata !71, metadata !"buf", metadata !58, i32 33554790, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!400 = metadata !{i32 358, i32 61, metadata !71, null}
!401 = metadata !{i32 786688, metadata !402, metadata !"rcon", metadata !58, i32 360, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!402 = metadata !{i32 786443, metadata !71, i32 359, i32 1, metadata !58, i32 5} ; [ DW_TAG_lexical_block ]
!403 = metadata !{i32 360, i32 22, metadata !402, null}
!404 = metadata !{i32 362, i32 5, metadata !402, null}
!405 = metadata !{i32 363, i32 9, metadata !406, null}
!406 = metadata !{i32 786443, metadata !402, i32 363, i32 5, metadata !58, i32 6} ; [ DW_TAG_lexical_block ]
!407 = metadata !{i32 365, i32 9, metadata !408, null}
!408 = metadata !{i32 786443, metadata !406, i32 364, i32 5, metadata !58, i32 7} ; [ DW_TAG_lexical_block ]
!409 = metadata !{i32 366, i32 9, metadata !408, null}
!410 = metadata !{i32 367, i32 9, metadata !408, null}
!411 = metadata !{i32 368, i32 9, metadata !408, null}
!412 = metadata !{i32 368, i32 21, metadata !408, null}
!413 = metadata !{i32 369, i32 14, metadata !408, null}
!414 = metadata !{i32 369, i32 49, metadata !408, null}
!415 = metadata !{i32 363, i32 34, metadata !406, null}
!416 = metadata !{i32 786688, metadata !402, metadata !"i", metadata !58, i32 360, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!417 = metadata !{i32 371, i32 5, metadata !402, null}
!418 = metadata !{i32 372, i32 5, metadata !402, null}
!419 = metadata !{i32 373, i32 5, metadata !402, null}
!420 = metadata !{i32 374, i32 5, metadata !402, null}
!421 = metadata !{i32 375, i32 1, metadata !402, null}
!422 = metadata !{i32 786689, metadata !72, metadata !"buf", metadata !58, i32 33554810, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!423 = metadata !{i32 378, i32 61, metadata !72, null}
!424 = metadata !{i32 786688, metadata !425, metadata !"rcon", metadata !58, i32 380, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!425 = metadata !{i32 786443, metadata !72, i32 379, i32 1, metadata !58, i32 8} ; [ DW_TAG_lexical_block ]
!426 = metadata !{i32 380, i32 22, metadata !425, null}
!427 = metadata !{i32 382, i32 5, metadata !425, null}
!428 = metadata !{i32 383, i32 5, metadata !425, null}
!429 = metadata !{i32 384, i32 5, metadata !425, null}
!430 = metadata !{i32 386, i32 10, metadata !431, null}
!431 = metadata !{i32 786443, metadata !425, i32 386, i32 5, metadata !58, i32 9} ; [ DW_TAG_lexical_block ]
!432 = metadata !{i32 786688, metadata !425, metadata !"i", metadata !58, i32 380, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!433 = metadata !{i32 388, i32 9, metadata !434, null}
!434 = metadata !{i32 786443, metadata !431, i32 387, i32 5, metadata !58, i32 10} ; [ DW_TAG_lexical_block ]
!435 = metadata !{i32 390, i32 13, metadata !436, null}
!436 = metadata !{i32 786443, metadata !434, i32 389, i32 9, metadata !58, i32 11} ; [ DW_TAG_lexical_block ]
!437 = metadata !{i32 391, i32 13, metadata !436, null}
!438 = metadata !{i32 392, i32 9, metadata !436, null}
!439 = metadata !{i32 393, i32 14, metadata !434, null}
!440 = metadata !{i32 394, i32 9, metadata !434, null}
!441 = metadata !{i32 395, i32 9, metadata !434, null}
!442 = metadata !{i32 396, i32 9, metadata !434, null}
!443 = metadata !{i32 397, i32 5, metadata !434, null}
!444 = metadata !{i32 398, i32 5, metadata !425, null}
!445 = metadata !{i32 399, i32 1, metadata !425, null}
