; ModuleID = '/home/brett/Thesis/Vivado_WS/aescbc/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aes_context.0 = type { [32 x i8], [32 x i8], [32 x i8] }

@xorv = internal unnamed_addr global [16 x i8] zeroinitializer, align 16 ; [#uses=5 type=[16 x i8]*]
@sboxinv = internal unnamed_addr constant [256 x i8] c"R\09j\D506\A58\BF@\A3\9E\81\F3\D7\FB|\E39\82\9B/\FF\874\8ECD\C4\DE\E9\CBT{\942\A6\C2#=\EEL\95\0BB\FA\C3N\08.\A1f(\D9$\B2v[\A2Im\8B\D1%r\F8\F6d\86h\98\16\D4\A4\5C\CC]e\B6\92lpHP\FD\ED\B9\DA^\15FW\A7\8D\9D\84\90\D8\AB\00\8C\BC\D3\0A\F7\E4X\05\B8\B3E\06\D0,\1E\8F\CA?\0F\02\C1\AF\BD\03\01\13\8Ak:\91\11AOg\DC\EA\97\F2\CF\CE\F0\B4\E6s\96\ACt\22\E7\AD5\85\E2\F97\E8\1Cu\DFnG\F1\1Aq\1D)\C5\89o\B7b\0E\AA\18\BE\1B\FCV>K\C6\D2y \9A\DB\C0\FEx\CDZ\F4\1F\DD\A83\88\07\C71\B1\12\10Y'\80\EC_`Q\7F\A9\19\B5J\0D-\E5z\9F\93\C9\9C\EF\A0\E0;M\AE*\F5\B0\C8\EB\BB<\83S\99a\17+\04~\BAw\D6&\E1i\14cU!\0C}", align 16 ; [#uses=1 type=[256 x i8]*]
@sbox = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 16 ; [#uses=17 type=[256 x i8]*]
@lastbuf = internal unnamed_addr global [16 x i8] zeroinitializer, align 16 ; [#uses=2 type=[16 x i8]*]
@key = internal global [32 x i8] zeroinitializer, align 16 ; [#uses=2 type=[32 x i8]*]
@iv = internal unnamed_addr global [16 x i8] zeroinitializer, align 16 ; [#uses=2 type=[16 x i8]*]
@ctx = internal global %struct.aes_context.0 zeroinitializer, align 1 ; [#uses=6 type=%struct.aes_context.0*]
@aescbc.str = internal unnamed_addr constant [7 x i8] c"aescbc\00" ; [#uses=1 type=[7 x i8]*]
@.str7 = private unnamed_addr constant [17 x i8] c"loop_dataoutclr2\00", align 1 ; [#uses=1 type=[17 x i8]*]
@.str6 = private unnamed_addr constant [12 x i8] c"loop_setkey\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str5 = private unnamed_addr constant [17 x i8] c"loop_dataoutclr1\00", align 1 ; [#uses=1 type=[17 x i8]*]
@.str4 = private unnamed_addr constant [11 x i8] c"loop_setiv\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str3 = private unnamed_addr constant [15 x i8] c"loop_xorvreset\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str2 = private unnamed_addr constant [17 x i8] c"loop_dataoutclr0\00", align 1 ; [#uses=1 type=[17 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]

; [#uses=14]
define internal fastcc zeroext i8 @rj_xtime(i8 zeroext %x) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8 %x}, i64 0, metadata !148), !dbg !149 ; [debug line = 187:33] [debug variable = x]
  %y = shl i8 %x, 1, !dbg !150                    ; [#uses=2 type=i8] [debug line = 189:34]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !152), !dbg !150 ; [debug line = 189:34] [debug variable = y]
  %tmp = icmp slt i8 %x, 0, !dbg !153             ; [#uses=1 type=i1] [debug line = 190:5]
  %tmp.1 = xor i8 %y, 27, !dbg !153               ; [#uses=1 type=i8] [debug line = 190:5]
  %y.1 = select i1 %tmp, i8 %tmp.1, i8 %y, !dbg !153 ; [#uses=1 type=i8] [debug line = 190:5]
  call void @llvm.dbg.value(metadata !{i8 %y.1}, i64 0, metadata !152), !dbg !153 ; [debug line = 190:5] [debug variable = y]
  ret i8 %y.1, !dbg !153                          ; [debug line = 190:5]
}

; [#uses=74]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=4]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @aescbc(i3 zeroext %mode, i8* %data_in, i8* %data_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @aescbc.str) nounwind
  %buf = alloca [16 x i8], align 16               ; [#uses=10 type=[16 x i8]*]
  call void @llvm.dbg.value(metadata !{i3 %mode}, i64 0, metadata !154), !dbg !155 ; [debug line = 8:26] [debug variable = mode]
  call void @llvm.dbg.value(metadata !{i8* %data_in}, i64 0, metadata !156), !dbg !157 ; [debug line = 9:12] [debug variable = data_in]
  call void @llvm.dbg.value(metadata !{i8* %data_out}, i64 0, metadata !158), !dbg !159 ; [debug line = 10:12] [debug variable = data_out]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %data_out, i32 16) nounwind, !dbg !160 ; [debug line = 11:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %data_in, i32 32) nounwind, !dbg !162 ; [debug line = 11:38]
  call void (...)* @_ssdm_op_SpecInterface(i8* %data_in, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 32, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !163 ; [debug line = 14:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %data_out, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !164 ; [debug line = 15:1]
  %tmp = zext i3 %mode to i32, !dbg !165          ; [#uses=2 type=i32] [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %tmp, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !165 ; [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !166 ; [debug line = 17:1]
  call void @llvm.dbg.declare(metadata !{[16 x i8]* %buf}, metadata !167), !dbg !168 ; [debug line = 21:10] [debug variable = buf]
  switch i32 %tmp, label %.loopexit [
    i32 0, label %.preheader15.preheader
    i32 1, label %.preheader13.preheader
    i32 2, label %.preheader9.preheader
    i32 3, label %.preheader4.preheader
    i32 4, label %.preheader1.preheader
  ], !dbg !169                                    ; [debug line = 29:5]

.preheader15.preheader:                           ; preds = %0
  br label %.preheader15, !dbg !170               ; [debug line = 33:7]

.preheader13.preheader:                           ; preds = %0
  br label %.preheader13, !dbg !173               ; [debug line = 45:10]

.preheader9.preheader:                            ; preds = %0
  br label %.preheader9, !dbg !175                ; [debug line = 61:10]

.preheader4.preheader:                            ; preds = %0
  br label %.preheader4, !dbg !177                ; [debug line = 81:7]

.preheader1.preheader:                            ; preds = %0
  br label %.preheader1, !dbg !179                ; [debug line = 91:7]

.preheader15:                                     ; preds = %1, %.preheader15.preheader
  %i = phi i8 [ %i.13, %1 ], [ 0, %.preheader15.preheader ] ; [#uses=3 type=i8]
  %tmp.3 = icmp eq i8 %i, 16, !dbg !170           ; [#uses=1 type=i1] [debug line = 33:7]
  br i1 %tmp.3, label %.preheader14.preheader, label %1, !dbg !170 ; [debug line = 33:7]

.preheader14.preheader:                           ; preds = %.preheader15
  br label %.preheader14, !dbg !181               ; [debug line = 37:7]

; <label>:1                                       ; preds = %.preheader15
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !183 ; [debug line = 34:7]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !183 ; [#uses=1 type=i32] [debug line = 34:7]
  %tmp.8 = zext i8 %i to i64, !dbg !183           ; [#uses=1 type=i64] [debug line = 34:7]
  %data_out.addr = getelementptr inbounds i8* %data_out, i64 %tmp.8, !dbg !183 ; [#uses=1 type=i8*] [debug line = 34:7]
  store i8 0, i8* %data_out.addr, align 1, !dbg !183 ; [debug line = 34:7]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !185 ; [#uses=0 type=i32] [debug line = 34:21]
  %i.13 = add i8 %i, 1, !dbg !186                 ; [#uses=1 type=i8] [debug line = 33:18]
  call void @llvm.dbg.value(metadata !{i8 %i.13}, i64 0, metadata !187), !dbg !186 ; [debug line = 33:18] [debug variable = i]
  br label %.preheader15, !dbg !186               ; [debug line = 33:18]

.preheader14:                                     ; preds = %2, %.preheader14.preheader
  %i.1 = phi i8 [ %i.19, %2 ], [ 0, %.preheader14.preheader ] ; [#uses=3 type=i8]
  %tmp.18 = icmp eq i8 %i.1, 16, !dbg !181        ; [#uses=1 type=i1] [debug line = 37:7]
  br i1 %tmp.18, label %3, label %2, !dbg !181    ; [debug line = 37:7]

; <label>:2                                       ; preds = %.preheader14
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !188 ; [debug line = 38:7]
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !188 ; [#uses=1 type=i32] [debug line = 38:7]
  %tmp.23 = zext i8 %i.1 to i64, !dbg !188        ; [#uses=2 type=i64] [debug line = 38:7]
  %iv.addr.1 = getelementptr inbounds [16 x i8]* @iv, i64 0, i64 %tmp.23, !dbg !188 ; [#uses=1 type=i8*] [debug line = 38:7]
  %iv.load = load i8* %iv.addr.1, align 1, !dbg !188 ; [#uses=2 type=i8] [debug line = 38:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %iv.load) nounwind
  %xorv.addr = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.23, !dbg !188 ; [#uses=1 type=i8*] [debug line = 38:7]
  store i8 %iv.load, i8* %xorv.addr, align 1, !dbg !188 ; [debug line = 38:7]
  %rend37 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str3, i64 0, i64 0), i32 %rbegin3) nounwind, !dbg !190 ; [#uses=0 type=i32] [debug line = 38:21]
  %i.19 = add i8 %i.1, 1, !dbg !191               ; [#uses=1 type=i8] [debug line = 37:18]
  call void @llvm.dbg.value(metadata !{i8 %i.19}, i64 0, metadata !187), !dbg !191 ; [debug line = 37:18] [debug variable = i]
  br label %.preheader14, !dbg !191               ; [debug line = 37:18]

; <label>:3                                       ; preds = %.preheader14
  call fastcc void @aes_init(i8* getelementptr inbounds ([32 x i8]* @key, i64 0, i64 0)), !dbg !192 ; [debug line = 40:3]
  br label %.loopexit, !dbg !193                  ; [debug line = 41:6]

.preheader13:                                     ; preds = %4, %.preheader13.preheader
  %i.2 = phi i8 [ %i.15, %4 ], [ 0, %.preheader13.preheader ] ; [#uses=3 type=i8]
  %tmp.4 = icmp eq i8 %i.2, 16, !dbg !173         ; [#uses=1 type=i1] [debug line = 45:10]
  br i1 %tmp.4, label %.preheader12.preheader, label %4, !dbg !173 ; [debug line = 45:10]

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12, !dbg !194               ; [debug line = 48:10]

; <label>:4                                       ; preds = %.preheader13
  %tmp.10 = zext i8 %i.2 to i64, !dbg !196        ; [#uses=2 type=i64] [debug line = 46:7]
  %data_in.addr = getelementptr inbounds i8* %data_in, i64 %tmp.10, !dbg !196 ; [#uses=1 type=i8*] [debug line = 46:7]
  %data_in.load = load i8* %data_in.addr, align 1, !dbg !196 ; [#uses=2 type=i8] [debug line = 46:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %data_in.load) nounwind
  %buf.addr = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.10, !dbg !196 ; [#uses=1 type=i8*] [debug line = 46:7]
  store i8 %data_in.load, i8* %buf.addr, align 1, !dbg !196 ; [debug line = 46:7]
  %i.15 = add i8 %i.2, 1, !dbg !197               ; [#uses=1 type=i8] [debug line = 45:21]
  call void @llvm.dbg.value(metadata !{i8 %i.15}, i64 0, metadata !187), !dbg !197 ; [debug line = 45:21] [debug variable = i]
  br label %.preheader13, !dbg !197               ; [debug line = 45:21]

.preheader12:                                     ; preds = %5, %.preheader12.preheader
  %i.3 = phi i8 [ %i.20, %5 ], [ 0, %.preheader12.preheader ] ; [#uses=3 type=i8]
  %tmp.19 = icmp eq i8 %i.3, 16, !dbg !194        ; [#uses=1 type=i1] [debug line = 48:10]
  br i1 %tmp.19, label %6, label %5, !dbg !194    ; [debug line = 48:10]

; <label>:5                                       ; preds = %.preheader12
  %tmp.25 = zext i8 %i.3 to i64, !dbg !198        ; [#uses=2 type=i64] [debug line = 49:7]
  %buf.addr.3 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.25, !dbg !198 ; [#uses=2 type=i8*] [debug line = 49:7]
  %buf.load = load i8* %buf.addr.3, align 1, !dbg !198 ; [#uses=2 type=i8] [debug line = 49:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  %xorv.addr.1 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.25, !dbg !198 ; [#uses=1 type=i8*] [debug line = 49:7]
  %xorv.load = load i8* %xorv.addr.1, align 1, !dbg !198 ; [#uses=2 type=i8] [debug line = 49:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %xorv.load) nounwind
  %tmp.26 = xor i8 %xorv.load, %buf.load, !dbg !198 ; [#uses=1 type=i8] [debug line = 49:7]
  store i8 %tmp.26, i8* %buf.addr.3, align 1, !dbg !198 ; [debug line = 49:7]
  %i.20 = add i8 %i.3, 1, !dbg !199               ; [#uses=1 type=i8] [debug line = 48:21]
  call void @llvm.dbg.value(metadata !{i8 %i.20}, i64 0, metadata !187), !dbg !199 ; [debug line = 48:21] [debug variable = i]
  br label %.preheader12, !dbg !199               ; [debug line = 48:21]

; <label>:6                                       ; preds = %.preheader12
  %buf.addr.2 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 0, !dbg !200 ; [#uses=1 type=i8*] [debug line = 51:6]
  call fastcc void @aes_encrypt_ecb(i8* %buf.addr.2), !dbg !200 ; [debug line = 51:6]
  br label %7, !dbg !201                          ; [debug line = 53:10]

; <label>:7                                       ; preds = %8, %6
  %i.4 = phi i8 [ 0, %6 ], [ %i.24, %8 ]          ; [#uses=3 type=i8]
  %tmp.34 = icmp eq i8 %i.4, 16, !dbg !201        ; [#uses=1 type=i1] [debug line = 53:10]
  br i1 %tmp.34, label %.preheader10.preheader, label %8, !dbg !201 ; [debug line = 53:10]

.preheader10.preheader:                           ; preds = %7
  br label %.preheader10, !dbg !203               ; [debug line = 56:10]

; <label>:8                                       ; preds = %7
  %tmp.36 = zext i8 %i.4 to i64, !dbg !205        ; [#uses=2 type=i64] [debug line = 54:7]
  %buf.addr.6 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.36, !dbg !205 ; [#uses=1 type=i8*] [debug line = 54:7]
  %buf.load.2 = load i8* %buf.addr.6, align 1, !dbg !205 ; [#uses=2 type=i8] [debug line = 54:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.2) nounwind
  %xorv.addr.2 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.36, !dbg !205 ; [#uses=1 type=i8*] [debug line = 54:7]
  store i8 %buf.load.2, i8* %xorv.addr.2, align 1, !dbg !205 ; [debug line = 54:7]
  %i.24 = add i8 %i.4, 1, !dbg !206               ; [#uses=1 type=i8] [debug line = 53:21]
  call void @llvm.dbg.value(metadata !{i8 %i.24}, i64 0, metadata !187), !dbg !206 ; [debug line = 53:21] [debug variable = i]
  br label %7, !dbg !206                          ; [debug line = 53:21]

.preheader10:                                     ; preds = %9, %.preheader10.preheader
  %i.5 = phi i8 [ %i.26, %9 ], [ 0, %.preheader10.preheader ] ; [#uses=3 type=i8]
  %tmp.41 = icmp eq i8 %i.5, 16, !dbg !203        ; [#uses=1 type=i1] [debug line = 56:10]
  br i1 %tmp.41, label %.loopexit.loopexit40, label %9, !dbg !203 ; [debug line = 56:10]

; <label>:9                                       ; preds = %.preheader10
  %tmp.43 = zext i8 %i.5 to i64, !dbg !207        ; [#uses=2 type=i64] [debug line = 57:7]
  %buf.addr.8 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.43, !dbg !207 ; [#uses=1 type=i8*] [debug line = 57:7]
  %buf.load.4 = load i8* %buf.addr.8, align 1, !dbg !207 ; [#uses=2 type=i8] [debug line = 57:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.4) nounwind
  %data_out.addr.3 = getelementptr inbounds i8* %data_out, i64 %tmp.43, !dbg !207 ; [#uses=1 type=i8*] [debug line = 57:7]
  store i8 %buf.load.4, i8* %data_out.addr.3, align 1, !dbg !207 ; [debug line = 57:7]
  %i.26 = add i8 %i.5, 1, !dbg !208               ; [#uses=1 type=i8] [debug line = 56:21]
  call void @llvm.dbg.value(metadata !{i8 %i.26}, i64 0, metadata !187), !dbg !208 ; [debug line = 56:21] [debug variable = i]
  br label %.preheader10, !dbg !208               ; [debug line = 56:21]

.preheader9:                                      ; preds = %10, %.preheader9.preheader
  %i.6 = phi i8 [ %i.16, %10 ], [ 0, %.preheader9.preheader ] ; [#uses=3 type=i8]
  %tmp.5 = icmp eq i8 %i.6, 16, !dbg !175         ; [#uses=1 type=i1] [debug line = 61:10]
  br i1 %tmp.5, label %.preheader8.preheader, label %10, !dbg !175 ; [debug line = 61:10]

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8, !dbg !209                ; [debug line = 64:10]

; <label>:10                                      ; preds = %.preheader9
  %tmp.12 = zext i8 %i.6 to i64, !dbg !211        ; [#uses=2 type=i64] [debug line = 62:7]
  %data_in.addr.1 = getelementptr inbounds i8* %data_in, i64 %tmp.12, !dbg !211 ; [#uses=1 type=i8*] [debug line = 62:7]
  %data_in.load.1 = load i8* %data_in.addr.1, align 1, !dbg !211 ; [#uses=2 type=i8] [debug line = 62:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %data_in.load.1) nounwind
  %buf.addr.1 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.12, !dbg !211 ; [#uses=1 type=i8*] [debug line = 62:7]
  store i8 %data_in.load.1, i8* %buf.addr.1, align 1, !dbg !211 ; [debug line = 62:7]
  %i.16 = add i8 %i.6, 1, !dbg !212               ; [#uses=1 type=i8] [debug line = 61:21]
  call void @llvm.dbg.value(metadata !{i8 %i.16}, i64 0, metadata !187), !dbg !212 ; [debug line = 61:21] [debug variable = i]
  br label %.preheader9, !dbg !212                ; [debug line = 61:21]

.preheader8:                                      ; preds = %11, %.preheader8.preheader
  %i.7 = phi i8 [ %i.21, %11 ], [ 0, %.preheader8.preheader ] ; [#uses=3 type=i8]
  %tmp.20 = icmp eq i8 %i.7, 16, !dbg !209        ; [#uses=1 type=i1] [debug line = 64:10]
  br i1 %tmp.20, label %12, label %11, !dbg !209  ; [debug line = 64:10]

; <label>:11                                      ; preds = %.preheader8
  %tmp.28 = zext i8 %i.7 to i64, !dbg !213        ; [#uses=2 type=i64] [debug line = 65:7]
  %buf.addr.5 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.28, !dbg !213 ; [#uses=1 type=i8*] [debug line = 65:7]
  %buf.load.1 = load i8* %buf.addr.5, align 1, !dbg !213 ; [#uses=2 type=i8] [debug line = 65:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.1) nounwind
  %lastbuf.addr = getelementptr inbounds [16 x i8]* @lastbuf, i64 0, i64 %tmp.28, !dbg !213 ; [#uses=1 type=i8*] [debug line = 65:7]
  store i8 %buf.load.1, i8* %lastbuf.addr, align 1, !dbg !213 ; [debug line = 65:7]
  %i.21 = add i8 %i.7, 1, !dbg !214               ; [#uses=1 type=i8] [debug line = 64:21]
  call void @llvm.dbg.value(metadata !{i8 %i.21}, i64 0, metadata !187), !dbg !214 ; [debug line = 64:21] [debug variable = i]
  br label %.preheader8, !dbg !214                ; [debug line = 64:21]

; <label>:12                                      ; preds = %.preheader8
  %buf.addr.4 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 0, !dbg !215 ; [#uses=1 type=i8*] [debug line = 67:6]
  call fastcc void @aes_decrypt_ecb(i8* %buf.addr.4), !dbg !215 ; [debug line = 67:6]
  br label %13, !dbg !216                         ; [debug line = 69:10]

; <label>:13                                      ; preds = %14, %12
  %i.8 = phi i8 [ 0, %12 ], [ %i.25, %14 ]        ; [#uses=3 type=i8]
  %tmp.35 = icmp eq i8 %i.8, 16, !dbg !216        ; [#uses=1 type=i1] [debug line = 69:10]
  br i1 %tmp.35, label %.preheader7.preheader, label %14, !dbg !216 ; [debug line = 69:10]

.preheader7.preheader:                            ; preds = %13
  br label %.preheader7, !dbg !218                ; [debug line = 72:10]

; <label>:14                                      ; preds = %13
  %tmp.38 = zext i8 %i.8 to i64, !dbg !220        ; [#uses=2 type=i64] [debug line = 70:7]
  %buf.addr.7 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.38, !dbg !220 ; [#uses=2 type=i8*] [debug line = 70:7]
  %buf.load.3 = load i8* %buf.addr.7, align 1, !dbg !220 ; [#uses=2 type=i8] [debug line = 70:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.3) nounwind
  %xorv.addr.3 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.38, !dbg !220 ; [#uses=1 type=i8*] [debug line = 70:7]
  %xorv.load.1 = load i8* %xorv.addr.3, align 1, !dbg !220 ; [#uses=2 type=i8] [debug line = 70:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %xorv.load.1) nounwind
  %tmp.39 = xor i8 %xorv.load.1, %buf.load.3, !dbg !220 ; [#uses=1 type=i8] [debug line = 70:7]
  store i8 %tmp.39, i8* %buf.addr.7, align 1, !dbg !220 ; [debug line = 70:7]
  %i.25 = add i8 %i.8, 1, !dbg !221               ; [#uses=1 type=i8] [debug line = 69:21]
  call void @llvm.dbg.value(metadata !{i8 %i.25}, i64 0, metadata !187), !dbg !221 ; [debug line = 69:21] [debug variable = i]
  br label %13, !dbg !221                         ; [debug line = 69:21]

.preheader7:                                      ; preds = %15, %.preheader7.preheader
  %i.9 = phi i8 [ %i.27, %15 ], [ 0, %.preheader7.preheader ] ; [#uses=3 type=i8]
  %tmp.42 = icmp eq i8 %i.9, 16, !dbg !218        ; [#uses=1 type=i1] [debug line = 72:10]
  br i1 %tmp.42, label %.preheader5.preheader, label %15, !dbg !218 ; [debug line = 72:10]

.preheader5.preheader:                            ; preds = %.preheader7
  br label %.preheader5, !dbg !222                ; [debug line = 75:10]

; <label>:15                                      ; preds = %.preheader7
  %tmp.45 = zext i8 %i.9 to i64, !dbg !224        ; [#uses=2 type=i64] [debug line = 73:7]
  %lastbuf.addr.1 = getelementptr inbounds [16 x i8]* @lastbuf, i64 0, i64 %tmp.45, !dbg !224 ; [#uses=1 type=i8*] [debug line = 73:7]
  %lastbuf.load = load i8* %lastbuf.addr.1, align 1, !dbg !224 ; [#uses=2 type=i8] [debug line = 73:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %lastbuf.load) nounwind
  %xorv.addr.4 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.45, !dbg !224 ; [#uses=1 type=i8*] [debug line = 73:7]
  store i8 %lastbuf.load, i8* %xorv.addr.4, align 1, !dbg !224 ; [debug line = 73:7]
  %i.27 = add i8 %i.9, 1, !dbg !225               ; [#uses=1 type=i8] [debug line = 72:21]
  call void @llvm.dbg.value(metadata !{i8 %i.27}, i64 0, metadata !187), !dbg !225 ; [debug line = 72:21] [debug variable = i]
  br label %.preheader7, !dbg !225                ; [debug line = 72:21]

.preheader5:                                      ; preds = %16, %.preheader5.preheader
  %i.10 = phi i8 [ %i.28, %16 ], [ 0, %.preheader5.preheader ] ; [#uses=3 type=i8]
  %tmp.47 = icmp eq i8 %i.10, 16, !dbg !222       ; [#uses=1 type=i1] [debug line = 75:10]
  br i1 %tmp.47, label %.loopexit.loopexit39, label %16, !dbg !222 ; [debug line = 75:10]

; <label>:16                                      ; preds = %.preheader5
  %tmp.48 = zext i8 %i.10 to i64, !dbg !226       ; [#uses=2 type=i64] [debug line = 76:7]
  %buf.addr.9 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.48, !dbg !226 ; [#uses=1 type=i8*] [debug line = 76:7]
  %buf.load.5 = load i8* %buf.addr.9, align 1, !dbg !226 ; [#uses=2 type=i8] [debug line = 76:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.5) nounwind
  %data_out.addr.4 = getelementptr inbounds i8* %data_out, i64 %tmp.48, !dbg !226 ; [#uses=1 type=i8*] [debug line = 76:7]
  store i8 %buf.load.5, i8* %data_out.addr.4, align 1, !dbg !226 ; [debug line = 76:7]
  %i.28 = add i8 %i.10, 1, !dbg !227              ; [#uses=1 type=i8] [debug line = 75:21]
  call void @llvm.dbg.value(metadata !{i8 %i.28}, i64 0, metadata !187), !dbg !227 ; [debug line = 75:21] [debug variable = i]
  br label %.preheader5, !dbg !227                ; [debug line = 75:21]

.preheader4:                                      ; preds = %17, %.preheader4.preheader
  %i. = phi i8 [ %i.17, %17 ], [ 0, %.preheader4.preheader ] ; [#uses=3 type=i8]
  %tmp.6 = icmp eq i8 %i., 16, !dbg !177          ; [#uses=1 type=i1] [debug line = 81:7]
  br i1 %tmp.6, label %.preheader2.preheader, label %17, !dbg !177 ; [debug line = 81:7]

.preheader2.preheader:                            ; preds = %.preheader4
  br label %.preheader2, !dbg !228                ; [debug line = 85:7]

; <label>:17                                      ; preds = %.preheader4
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !230 ; [debug line = 82:7]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !230 ; [#uses=1 type=i32] [debug line = 82:7]
  %tmp.14 = zext i8 %i. to i64, !dbg !230         ; [#uses=2 type=i64] [debug line = 82:7]
  %data_in.addr.2 = getelementptr inbounds i8* %data_in, i64 %tmp.14, !dbg !230 ; [#uses=1 type=i8*] [debug line = 82:7]
  %data_in.load.2 = load i8* %data_in.addr.2, align 1, !dbg !230 ; [#uses=2 type=i8] [debug line = 82:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %data_in.load.2) nounwind
  %iv.addr = getelementptr inbounds [16 x i8]* @iv, i64 0, i64 %tmp.14, !dbg !230 ; [#uses=1 type=i8*] [debug line = 82:7]
  store i8 %data_in.load.2, i8* %iv.addr, align 1, !dbg !230 ; [debug line = 82:7]
  %rend33 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !232 ; [#uses=0 type=i32] [debug line = 82:24]
  %i.17 = add i8 %i., 1, !dbg !233                ; [#uses=1 type=i8] [debug line = 81:18]
  call void @llvm.dbg.value(metadata !{i8 %i.17}, i64 0, metadata !187), !dbg !233 ; [debug line = 81:18] [debug variable = i]
  br label %.preheader4, !dbg !233                ; [debug line = 81:18]

.preheader2:                                      ; preds = %18, %.preheader2.preheader
  %i.12 = phi i8 [ %i.22, %18 ], [ 0, %.preheader2.preheader ] ; [#uses=3 type=i8]
  %tmp.21 = icmp eq i8 %i.12, 16, !dbg !228       ; [#uses=1 type=i1] [debug line = 85:7]
  br i1 %tmp.21, label %.loopexit.loopexit38, label %18, !dbg !228 ; [debug line = 85:7]

; <label>:18                                      ; preds = %.preheader2
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([17 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !234 ; [debug line = 86:4]
  %rbegin4 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([17 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !234 ; [#uses=1 type=i32] [debug line = 86:4]
  %tmp.30 = zext i8 %i.12 to i64, !dbg !234       ; [#uses=1 type=i64] [debug line = 86:4]
  %data_out.addr.1 = getelementptr inbounds i8* %data_out, i64 %tmp.30, !dbg !234 ; [#uses=1 type=i8*] [debug line = 86:4]
  store i8 0, i8* %data_out.addr.1, align 1, !dbg !234 ; [debug line = 86:4]
  %rend29 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([17 x i8]* @.str5, i64 0, i64 0), i32 %rbegin4) nounwind, !dbg !236 ; [#uses=0 type=i32] [debug line = 86:18]
  %i.22 = add i8 %i.12, 1, !dbg !237              ; [#uses=1 type=i8] [debug line = 85:18]
  call void @llvm.dbg.value(metadata !{i8 %i.22}, i64 0, metadata !187), !dbg !237 ; [debug line = 85:18] [debug variable = i]
  br label %.preheader2, !dbg !237                ; [debug line = 85:18]

.preheader1:                                      ; preds = %19, %.preheader1.preheader
  %i.11 = phi i8 [ %i.18, %19 ], [ 0, %.preheader1.preheader ] ; [#uses=3 type=i8]
  %tmp.7 = icmp eq i8 %i.11, 32, !dbg !179        ; [#uses=1 type=i1] [debug line = 91:7]
  br i1 %tmp.7, label %.preheader.preheader, label %19, !dbg !179 ; [debug line = 91:7]

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader, !dbg !238                 ; [debug line = 95:7]

; <label>:19                                      ; preds = %.preheader1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !240 ; [debug line = 92:4]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !240 ; [#uses=1 type=i32] [debug line = 92:4]
  %tmp.16 = zext i8 %i.11 to i64, !dbg !240       ; [#uses=2 type=i64] [debug line = 92:4]
  %data_in.addr.3 = getelementptr inbounds i8* %data_in, i64 %tmp.16, !dbg !240 ; [#uses=1 type=i8*] [debug line = 92:4]
  %data_in.load.3 = load i8* %data_in.addr.3, align 1, !dbg !240 ; [#uses=2 type=i8] [debug line = 92:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %data_in.load.3) nounwind
  %key.addr = getelementptr inbounds [32 x i8]* @key, i64 0, i64 %tmp.16, !dbg !240 ; [#uses=1 type=i8*] [debug line = 92:4]
  store i8 %data_in.load.3, i8* %key.addr, align 1, !dbg !240 ; [debug line = 92:4]
  %rend35 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !242 ; [#uses=0 type=i32] [debug line = 92:22]
  %i.18 = add i8 %i.11, 1, !dbg !243              ; [#uses=1 type=i8] [debug line = 91:18]
  call void @llvm.dbg.value(metadata !{i8 %i.18}, i64 0, metadata !187), !dbg !243 ; [debug line = 91:18] [debug variable = i]
  br label %.preheader1, !dbg !243                ; [debug line = 91:18]

.preheader:                                       ; preds = %20, %.preheader.preheader
  %i.14 = phi i8 [ %i.23, %20 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i8]
  %tmp.22 = icmp eq i8 %i.14, 16, !dbg !238       ; [#uses=1 type=i1] [debug line = 95:7]
  br i1 %tmp.22, label %.loopexit.loopexit, label %20, !dbg !238 ; [debug line = 95:7]

; <label>:20                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([17 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !244 ; [debug line = 96:4]
  %rbegin5 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([17 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !244 ; [#uses=1 type=i32] [debug line = 96:4]
  %tmp.32 = zext i8 %i.14 to i64, !dbg !244       ; [#uses=1 type=i64] [debug line = 96:4]
  %data_out.addr.2 = getelementptr inbounds i8* %data_out, i64 %tmp.32, !dbg !244 ; [#uses=1 type=i8*] [debug line = 96:4]
  store i8 0, i8* %data_out.addr.2, align 1, !dbg !244 ; [debug line = 96:4]
  %rend31 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([17 x i8]* @.str7, i64 0, i64 0), i32 %rbegin5) nounwind, !dbg !246 ; [#uses=0 type=i32] [debug line = 96:18]
  %i.23 = add i8 %i.14, 1, !dbg !247              ; [#uses=1 type=i8] [debug line = 95:18]
  call void @llvm.dbg.value(metadata !{i8 %i.23}, i64 0, metadata !187), !dbg !247 ; [debug line = 95:18] [debug variable = i]
  br label %.preheader, !dbg !247                 ; [debug line = 95:18]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit.loopexit38:                             ; preds = %.preheader2
  br label %.loopexit

.loopexit.loopexit39:                             ; preds = %.preheader5
  br label %.loopexit

.loopexit.loopexit40:                             ; preds = %.preheader10
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit40, %.loopexit.loopexit39, %.loopexit.loopexit38, %.loopexit.loopexit, %3, %0
  ret void, !dbg !248                             ; [debug line = 99:1]
}

; [#uses=2]
define internal fastcc void @aes_subBytes_inv(i8* %buf) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !249), !dbg !250 ; [debug line = 202:39] [debug variable = buf]
  br label %1, !dbg !251                          ; [debug line = 206:5]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 16, %0 ], [ %i.29, %2 ]           ; [#uses=2 type=i8]
  %i.29 = add i8 %i, -1, !dbg !251                ; [#uses=2 type=i8] [debug line = 206:5]
  call void @llvm.dbg.value(metadata !{i8 %i.29}, i64 0, metadata !253), !dbg !251 ; [debug line = 206:5] [debug variable = i]
  %tmp = icmp eq i8 %i, 0, !dbg !251              ; [#uses=1 type=i1] [debug line = 206:5]
  br i1 %tmp, label %3, label %2, !dbg !251       ; [debug line = 206:5]

; <label>:2                                       ; preds = %1
  %tmp.50 = zext i8 %i.29 to i64, !dbg !254       ; [#uses=1 type=i64] [debug line = 206:17]
  %buf.addr = getelementptr inbounds i8* %buf, i64 %tmp.50, !dbg !254 ; [#uses=2 type=i8*] [debug line = 206:17]
  %buf.load = load i8* %buf.addr, align 1, !dbg !254 ; [#uses=2 type=i8] [debug line = 206:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  %tmp.51 = zext i8 %buf.load to i64, !dbg !254   ; [#uses=1 type=i64] [debug line = 206:17]
  %sboxinv.addr = getelementptr inbounds [256 x i8]* @sboxinv, i64 0, i64 %tmp.51, !dbg !254 ; [#uses=1 type=i8*] [debug line = 206:17]
  %sboxinv.load = load i8* %sboxinv.addr, align 1, !dbg !254 ; [#uses=2 type=i8] [debug line = 206:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sboxinv.load) nounwind
  store i8 %sboxinv.load, i8* %buf.addr, align 1, !dbg !254 ; [debug line = 206:17]
  br label %1, !dbg !254                          ; [debug line = 206:17]

; <label>:3                                       ; preds = %1
  ret void, !dbg !255                             ; [debug line = 207:1]
}

; [#uses=2]
define internal fastcc void @aes_subBytes(i8* %buf) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !256), !dbg !257 ; [debug line = 194:35] [debug variable = buf]
  br label %1, !dbg !258                          ; [debug line = 198:5]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 16, %0 ], [ %i.30, %2 ]           ; [#uses=2 type=i8]
  %i.30 = add i8 %i, -1, !dbg !258                ; [#uses=2 type=i8] [debug line = 198:5]
  call void @llvm.dbg.value(metadata !{i8 %i.30}, i64 0, metadata !260), !dbg !258 ; [debug line = 198:5] [debug variable = i]
  %tmp = icmp eq i8 %i, 0, !dbg !258              ; [#uses=1 type=i1] [debug line = 198:5]
  br i1 %tmp, label %3, label %2, !dbg !258       ; [debug line = 198:5]

; <label>:2                                       ; preds = %1
  %tmp.52 = zext i8 %i.30 to i64, !dbg !261       ; [#uses=1 type=i64] [debug line = 198:17]
  %buf.addr = getelementptr inbounds i8* %buf, i64 %tmp.52, !dbg !261 ; [#uses=2 type=i8*] [debug line = 198:17]
  %buf.load = load i8* %buf.addr, align 1, !dbg !261 ; [#uses=2 type=i8] [debug line = 198:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  %tmp.53 = zext i8 %buf.load to i64, !dbg !261   ; [#uses=1 type=i64] [debug line = 198:17]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.53, !dbg !261 ; [#uses=1 type=i8*] [debug line = 198:17]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !261 ; [#uses=2 type=i8] [debug line = 198:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load) nounwind
  store i8 %sbox.load, i8* %buf.addr, align 1, !dbg !261 ; [debug line = 198:17]
  br label %1, !dbg !261                          ; [debug line = 198:17]

; <label>:3                                       ; preds = %1
  ret void, !dbg !262                             ; [debug line = 199:1]
}

; [#uses=2]
define internal fastcc void @aes_shiftRows_inv(i8* %buf) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !263), !dbg !264 ; [debug line = 239:40] [debug variable = buf]
  %buf.addr = getelementptr inbounds i8* %buf, i64 1, !dbg !265 ; [#uses=2 type=i8*] [debug line = 243:5]
  %i = load i8* %buf.addr, align 1, !dbg !265     ; [#uses=2 type=i8] [debug line = 243:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %i) nounwind
  call void @llvm.dbg.value(metadata !{i8 %i}, i64 0, metadata !267), !dbg !265 ; [debug line = 243:5] [debug variable = i]
  %buf.addr.10 = getelementptr inbounds i8* %buf, i64 13, !dbg !265 ; [#uses=2 type=i8*] [debug line = 243:5]
  %buf.load = load i8* %buf.addr.10, align 1, !dbg !265 ; [#uses=2 type=i8] [debug line = 243:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  store i8 %buf.load, i8* %buf.addr, align 1, !dbg !265 ; [debug line = 243:5]
  %buf.addr.11 = getelementptr inbounds i8* %buf, i64 9, !dbg !265 ; [#uses=2 type=i8*] [debug line = 243:5]
  %buf.load.6 = load i8* %buf.addr.11, align 1, !dbg !265 ; [#uses=2 type=i8] [debug line = 243:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.6) nounwind
  store i8 %buf.load.6, i8* %buf.addr.10, align 1, !dbg !265 ; [debug line = 243:5]
  %buf.addr.12 = getelementptr inbounds i8* %buf, i64 5, !dbg !265 ; [#uses=2 type=i8*] [debug line = 243:5]
  %buf.load.7 = load i8* %buf.addr.12, align 1, !dbg !265 ; [#uses=2 type=i8] [debug line = 243:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.7) nounwind
  store i8 %buf.load.7, i8* %buf.addr.11, align 1, !dbg !265 ; [debug line = 243:5]
  store i8 %i, i8* %buf.addr.12, align 1, !dbg !265 ; [debug line = 243:5]
  %buf.addr.13 = getelementptr inbounds i8* %buf, i64 2, !dbg !268 ; [#uses=2 type=i8*] [debug line = 244:5]
  %i.31 = load i8* %buf.addr.13, align 1, !dbg !268 ; [#uses=2 type=i8] [debug line = 244:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %i.31) nounwind
  call void @llvm.dbg.value(metadata !{i8 %i.31}, i64 0, metadata !267), !dbg !268 ; [debug line = 244:5] [debug variable = i]
  %buf.addr.14 = getelementptr inbounds i8* %buf, i64 10, !dbg !268 ; [#uses=2 type=i8*] [debug line = 244:5]
  %buf.load.9 = load i8* %buf.addr.14, align 1, !dbg !268 ; [#uses=2 type=i8] [debug line = 244:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.9) nounwind
  store i8 %buf.load.9, i8* %buf.addr.13, align 1, !dbg !268 ; [debug line = 244:5]
  store i8 %i.31, i8* %buf.addr.14, align 1, !dbg !268 ; [debug line = 244:5]
  %buf.addr.15 = getelementptr inbounds i8* %buf, i64 3, !dbg !269 ; [#uses=2 type=i8*] [debug line = 245:5]
  %j = load i8* %buf.addr.15, align 1, !dbg !269  ; [#uses=2 type=i8] [debug line = 245:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %j) nounwind
  call void @llvm.dbg.value(metadata !{i8 %j}, i64 0, metadata !270), !dbg !269 ; [debug line = 245:5] [debug variable = j]
  %buf.addr.16 = getelementptr inbounds i8* %buf, i64 7, !dbg !269 ; [#uses=2 type=i8*] [debug line = 245:5]
  %buf.load.11 = load i8* %buf.addr.16, align 1, !dbg !269 ; [#uses=2 type=i8] [debug line = 245:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.11) nounwind
  store i8 %buf.load.11, i8* %buf.addr.15, align 1, !dbg !269 ; [debug line = 245:5]
  %buf.addr.17 = getelementptr inbounds i8* %buf, i64 11, !dbg !269 ; [#uses=2 type=i8*] [debug line = 245:5]
  %buf.load.12 = load i8* %buf.addr.17, align 1, !dbg !269 ; [#uses=2 type=i8] [debug line = 245:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.12) nounwind
  store i8 %buf.load.12, i8* %buf.addr.16, align 1, !dbg !269 ; [debug line = 245:5]
  %buf.addr.18 = getelementptr inbounds i8* %buf, i64 15, !dbg !269 ; [#uses=2 type=i8*] [debug line = 245:5]
  %buf.load.13 = load i8* %buf.addr.18, align 1, !dbg !269 ; [#uses=2 type=i8] [debug line = 245:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.13) nounwind
  store i8 %buf.load.13, i8* %buf.addr.17, align 1, !dbg !269 ; [debug line = 245:5]
  store i8 %j, i8* %buf.addr.18, align 1, !dbg !269 ; [debug line = 245:5]
  %buf.addr.19 = getelementptr inbounds i8* %buf, i64 6, !dbg !271 ; [#uses=2 type=i8*] [debug line = 246:5]
  %j.1 = load i8* %buf.addr.19, align 1, !dbg !271 ; [#uses=2 type=i8] [debug line = 246:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %j.1) nounwind
  call void @llvm.dbg.value(metadata !{i8 %j.1}, i64 0, metadata !270), !dbg !271 ; [debug line = 246:5] [debug variable = j]
  %buf.addr.20 = getelementptr inbounds i8* %buf, i64 14, !dbg !271 ; [#uses=2 type=i8*] [debug line = 246:5]
  %buf.load.15 = load i8* %buf.addr.20, align 1, !dbg !271 ; [#uses=2 type=i8] [debug line = 246:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.15) nounwind
  store i8 %buf.load.15, i8* %buf.addr.19, align 1, !dbg !271 ; [debug line = 246:5]
  store i8 %j.1, i8* %buf.addr.20, align 1, !dbg !271 ; [debug line = 246:5]
  ret void, !dbg !272                             ; [debug line = 248:1]
}

; [#uses=2]
define internal fastcc void @aes_shiftRows(i8* %buf) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !273), !dbg !274 ; [debug line = 227:36] [debug variable = buf]
  %buf.addr = getelementptr inbounds i8* %buf, i64 1, !dbg !275 ; [#uses=2 type=i8*] [debug line = 231:5]
  %i = load i8* %buf.addr, align 1, !dbg !275     ; [#uses=2 type=i8] [debug line = 231:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %i) nounwind
  call void @llvm.dbg.value(metadata !{i8 %i}, i64 0, metadata !277), !dbg !275 ; [debug line = 231:5] [debug variable = i]
  %buf.addr.21 = getelementptr inbounds i8* %buf, i64 5, !dbg !275 ; [#uses=2 type=i8*] [debug line = 231:5]
  %buf.load = load i8* %buf.addr.21, align 1, !dbg !275 ; [#uses=2 type=i8] [debug line = 231:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  store i8 %buf.load, i8* %buf.addr, align 1, !dbg !275 ; [debug line = 231:5]
  %buf.addr.22 = getelementptr inbounds i8* %buf, i64 9, !dbg !275 ; [#uses=2 type=i8*] [debug line = 231:5]
  %buf.load.16 = load i8* %buf.addr.22, align 1, !dbg !275 ; [#uses=2 type=i8] [debug line = 231:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.16) nounwind
  store i8 %buf.load.16, i8* %buf.addr.21, align 1, !dbg !275 ; [debug line = 231:5]
  %buf.addr.23 = getelementptr inbounds i8* %buf, i64 13, !dbg !275 ; [#uses=2 type=i8*] [debug line = 231:5]
  %buf.load.17 = load i8* %buf.addr.23, align 1, !dbg !275 ; [#uses=2 type=i8] [debug line = 231:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.17) nounwind
  store i8 %buf.load.17, i8* %buf.addr.22, align 1, !dbg !275 ; [debug line = 231:5]
  store i8 %i, i8* %buf.addr.23, align 1, !dbg !275 ; [debug line = 231:5]
  %buf.addr.24 = getelementptr inbounds i8* %buf, i64 10, !dbg !278 ; [#uses=2 type=i8*] [debug line = 232:5]
  %i.32 = load i8* %buf.addr.24, align 1, !dbg !278 ; [#uses=2 type=i8] [debug line = 232:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %i.32) nounwind
  call void @llvm.dbg.value(metadata !{i8 %i.32}, i64 0, metadata !277), !dbg !278 ; [debug line = 232:5] [debug variable = i]
  %buf.addr.25 = getelementptr inbounds i8* %buf, i64 2, !dbg !278 ; [#uses=2 type=i8*] [debug line = 232:5]
  %buf.load.19 = load i8* %buf.addr.25, align 1, !dbg !278 ; [#uses=2 type=i8] [debug line = 232:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.19) nounwind
  store i8 %buf.load.19, i8* %buf.addr.24, align 1, !dbg !278 ; [debug line = 232:5]
  store i8 %i.32, i8* %buf.addr.25, align 1, !dbg !278 ; [debug line = 232:5]
  %buf.addr.26 = getelementptr inbounds i8* %buf, i64 3, !dbg !279 ; [#uses=2 type=i8*] [debug line = 233:5]
  %j = load i8* %buf.addr.26, align 1, !dbg !279  ; [#uses=2 type=i8] [debug line = 233:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %j) nounwind
  call void @llvm.dbg.value(metadata !{i8 %j}, i64 0, metadata !280), !dbg !279 ; [debug line = 233:5] [debug variable = j]
  %buf.addr.27 = getelementptr inbounds i8* %buf, i64 15, !dbg !279 ; [#uses=2 type=i8*] [debug line = 233:5]
  %buf.load.21 = load i8* %buf.addr.27, align 1, !dbg !279 ; [#uses=2 type=i8] [debug line = 233:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.21) nounwind
  store i8 %buf.load.21, i8* %buf.addr.26, align 1, !dbg !279 ; [debug line = 233:5]
  %buf.addr.28 = getelementptr inbounds i8* %buf, i64 11, !dbg !279 ; [#uses=2 type=i8*] [debug line = 233:5]
  %buf.load.22 = load i8* %buf.addr.28, align 1, !dbg !279 ; [#uses=2 type=i8] [debug line = 233:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.22) nounwind
  store i8 %buf.load.22, i8* %buf.addr.27, align 1, !dbg !279 ; [debug line = 233:5]
  %buf.addr.29 = getelementptr inbounds i8* %buf, i64 7, !dbg !279 ; [#uses=2 type=i8*] [debug line = 233:5]
  %buf.load.23 = load i8* %buf.addr.29, align 1, !dbg !279 ; [#uses=2 type=i8] [debug line = 233:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.23) nounwind
  store i8 %buf.load.23, i8* %buf.addr.28, align 1, !dbg !279 ; [debug line = 233:5]
  store i8 %j, i8* %buf.addr.29, align 1, !dbg !279 ; [debug line = 233:5]
  %buf.addr.30 = getelementptr inbounds i8* %buf, i64 14, !dbg !281 ; [#uses=2 type=i8*] [debug line = 234:5]
  %j.2 = load i8* %buf.addr.30, align 1, !dbg !281 ; [#uses=2 type=i8] [debug line = 234:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %j.2) nounwind
  call void @llvm.dbg.value(metadata !{i8 %j.2}, i64 0, metadata !280), !dbg !281 ; [debug line = 234:5] [debug variable = j]
  %buf.addr.31 = getelementptr inbounds i8* %buf, i64 6, !dbg !281 ; [#uses=2 type=i8*] [debug line = 234:5]
  %buf.load.25 = load i8* %buf.addr.31, align 1, !dbg !281 ; [#uses=2 type=i8] [debug line = 234:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.25) nounwind
  store i8 %buf.load.25, i8* %buf.addr.30, align 1, !dbg !281 ; [debug line = 234:5]
  store i8 %j.2, i8* %buf.addr.31, align 1, !dbg !281 ; [debug line = 234:5]
  ret void, !dbg !282                             ; [debug line = 236:1]
}

; [#uses=1]
define internal fastcc void @aes_mixColumns_inv(i8* %buf) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !283), !dbg !284 ; [debug line = 270:34] [debug variable = buf]
  br label %1, !dbg !285                          ; [debug line = 274:10]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 0, %0 ], [ %i.33, %2 ]            ; [#uses=4 type=i8]
  %tmp = icmp ult i8 %i, 16, !dbg !285            ; [#uses=1 type=i1] [debug line = 274:10]
  br i1 %tmp, label %2, label %3, !dbg !285       ; [debug line = 274:10]

; <label>:2                                       ; preds = %1
  %tmp.54 = zext i8 %i to i64, !dbg !288          ; [#uses=1 type=i64] [debug line = 276:9]
  %buf.addr = getelementptr inbounds i8* %buf, i64 %tmp.54, !dbg !288 ; [#uses=3 type=i8*] [debug line = 276:9]
  %a = load i8* %buf.addr, align 1, !dbg !288     ; [#uses=4 type=i8] [debug line = 276:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %a) nounwind
  call void @llvm.dbg.value(metadata !{i8 %a}, i64 0, metadata !290), !dbg !288 ; [debug line = 276:9] [debug variable = a]
  %tmp.55 = zext i8 %i to i32, !dbg !291          ; [#uses=3 type=i32] [debug line = 277:9]
  %tmp.56 = or i32 %tmp.55, 1, !dbg !291          ; [#uses=1 type=i32] [debug line = 277:9]
  %tmp.57 = zext i32 %tmp.56 to i64, !dbg !291    ; [#uses=1 type=i64] [debug line = 277:9]
  %buf.addr.32 = getelementptr inbounds i8* %buf, i64 %tmp.57, !dbg !291 ; [#uses=3 type=i8*] [debug line = 277:9]
  %b = load i8* %buf.addr.32, align 1, !dbg !291  ; [#uses=4 type=i8] [debug line = 277:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %b) nounwind
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !292), !dbg !291 ; [debug line = 277:9] [debug variable = b]
  %tmp.58 = or i32 %tmp.55, 2, !dbg !293          ; [#uses=1 type=i32] [debug line = 278:9]
  %tmp.59 = zext i32 %tmp.58 to i64, !dbg !293    ; [#uses=1 type=i64] [debug line = 278:9]
  %buf.addr.33 = getelementptr inbounds i8* %buf, i64 %tmp.59, !dbg !293 ; [#uses=3 type=i8*] [debug line = 278:9]
  %c = load i8* %buf.addr.33, align 1, !dbg !293  ; [#uses=5 type=i8] [debug line = 278:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %c) nounwind
  call void @llvm.dbg.value(metadata !{i8 %c}, i64 0, metadata !294), !dbg !293 ; [debug line = 278:9] [debug variable = c]
  %tmp.60 = or i32 %tmp.55, 3, !dbg !295          ; [#uses=1 type=i32] [debug line = 279:9]
  %tmp.61 = zext i32 %tmp.60 to i64, !dbg !295    ; [#uses=1 type=i64] [debug line = 279:9]
  %buf.addr.34 = getelementptr inbounds i8* %buf, i64 %tmp.61, !dbg !295 ; [#uses=3 type=i8*] [debug line = 279:9]
  %d = load i8* %buf.addr.34, align 1, !dbg !295  ; [#uses=5 type=i8] [debug line = 279:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %d) nounwind
  call void @llvm.dbg.value(metadata !{i8 %d}, i64 0, metadata !296), !dbg !295 ; [debug line = 279:9] [debug variable = d]
  %tmp.62 = xor i8 %b, %a, !dbg !297              ; [#uses=2 type=i8] [debug line = 280:9]
  %tmp.63 = xor i8 %c, %tmp.62, !dbg !297         ; [#uses=1 type=i8] [debug line = 280:9]
  %e = xor i8 %tmp.63, %d, !dbg !297              ; [#uses=3 type=i8] [debug line = 280:9]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !298), !dbg !297 ; [debug line = 280:9] [debug variable = e]
  %z = call fastcc zeroext i8 @rj_xtime(i8 zeroext %e), !dbg !299 ; [#uses=2 type=i8] [debug line = 281:13]
  call void @llvm.dbg.value(metadata !{i8 %z}, i64 0, metadata !300), !dbg !299 ; [debug line = 281:13] [debug variable = z]
  %tmp.65 = xor i8 %c, %a, !dbg !301              ; [#uses=1 type=i8] [debug line = 282:26]
  %tmp.66 = xor i8 %tmp.65, %z, !dbg !301         ; [#uses=1 type=i8] [debug line = 282:26]
  %tmp.67 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.66), !dbg !301 ; [#uses=1 type=i8] [debug line = 282:26]
  %tmp.68 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.67), !dbg !301 ; [#uses=1 type=i8] [debug line = 282:26]
  %x = xor i8 %tmp.68, %e, !dbg !301              ; [#uses=2 type=i8] [debug line = 282:26]
  call void @llvm.dbg.value(metadata !{i8 %x}, i64 0, metadata !302), !dbg !301 ; [debug line = 282:26] [debug variable = x]
  %tmp.70 = xor i8 %d, %b, !dbg !303              ; [#uses=1 type=i8] [debug line = 283:26]
  %tmp.71 = xor i8 %tmp.70, %z, !dbg !303         ; [#uses=1 type=i8] [debug line = 283:26]
  %tmp.72 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.71), !dbg !303 ; [#uses=1 type=i8] [debug line = 283:26]
  %tmp.73 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.72), !dbg !303 ; [#uses=1 type=i8] [debug line = 283:26]
  %y = xor i8 %tmp.73, %e, !dbg !303              ; [#uses=2 type=i8] [debug line = 283:26]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !304), !dbg !303 ; [debug line = 283:26] [debug variable = y]
  %tmp.75 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.62), !dbg !305 ; [#uses=1 type=i8] [debug line = 284:23]
  %buf.load = load i8* %buf.addr, align 1, !dbg !305 ; [#uses=2 type=i8] [debug line = 284:23]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  %tmp.76 = xor i8 %tmp.75, %x, !dbg !305         ; [#uses=1 type=i8] [debug line = 284:23]
  %tmp.77 = xor i8 %tmp.76, %buf.load, !dbg !305  ; [#uses=1 type=i8] [debug line = 284:23]
  store i8 %tmp.77, i8* %buf.addr, align 1, !dbg !305 ; [debug line = 284:23]
  %tmp.78 = xor i8 %c, %b, !dbg !306              ; [#uses=1 type=i8] [debug line = 285:27]
  %tmp.79 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.78), !dbg !306 ; [#uses=1 type=i8] [debug line = 285:27]
  %buf.load.26 = load i8* %buf.addr.32, align 1, !dbg !306 ; [#uses=2 type=i8] [debug line = 285:27]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.26) nounwind
  %tmp.80 = xor i8 %tmp.79, %y, !dbg !306         ; [#uses=1 type=i8] [debug line = 285:27]
  %tmp.81 = xor i8 %tmp.80, %buf.load.26, !dbg !306 ; [#uses=1 type=i8] [debug line = 285:27]
  store i8 %tmp.81, i8* %buf.addr.32, align 1, !dbg !306 ; [debug line = 285:27]
  %tmp.82 = xor i8 %d, %c, !dbg !307              ; [#uses=1 type=i8] [debug line = 286:27]
  %tmp.83 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.82), !dbg !307 ; [#uses=1 type=i8] [debug line = 286:27]
  %buf.load.27 = load i8* %buf.addr.33, align 1, !dbg !307 ; [#uses=2 type=i8] [debug line = 286:27]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.27) nounwind
  %tmp.84 = xor i8 %tmp.83, %x, !dbg !307         ; [#uses=1 type=i8] [debug line = 286:27]
  %tmp.85 = xor i8 %tmp.84, %buf.load.27, !dbg !307 ; [#uses=1 type=i8] [debug line = 286:27]
  store i8 %tmp.85, i8* %buf.addr.33, align 1, !dbg !307 ; [debug line = 286:27]
  %tmp.86 = xor i8 %d, %a, !dbg !308              ; [#uses=1 type=i8] [debug line = 287:27]
  %tmp.87 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.86), !dbg !308 ; [#uses=1 type=i8] [debug line = 287:27]
  %buf.load.28 = load i8* %buf.addr.34, align 1, !dbg !308 ; [#uses=2 type=i8] [debug line = 287:27]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.28) nounwind
  %tmp.88 = xor i8 %tmp.87, %y, !dbg !308         ; [#uses=1 type=i8] [debug line = 287:27]
  %tmp.89 = xor i8 %tmp.88, %buf.load.28, !dbg !308 ; [#uses=1 type=i8] [debug line = 287:27]
  store i8 %tmp.89, i8* %buf.addr.34, align 1, !dbg !308 ; [debug line = 287:27]
  %i.33 = add i8 %i, 4, !dbg !309                 ; [#uses=1 type=i8] [debug line = 274:25]
  call void @llvm.dbg.value(metadata !{i8 %i.33}, i64 0, metadata !310), !dbg !309 ; [debug line = 274:25] [debug variable = i]
  br label %1, !dbg !309                          ; [debug line = 274:25]

; <label>:3                                       ; preds = %1
  ret void, !dbg !311                             ; [debug line = 289:1]
}

; [#uses=1]
define internal fastcc void @aes_mixColumns(i8* %buf) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !312), !dbg !313 ; [debug line = 251:37] [debug variable = buf]
  br label %1, !dbg !314                          ; [debug line = 255:10]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 0, %0 ], [ %i.34, %2 ]            ; [#uses=4 type=i8]
  %tmp = icmp ult i8 %i, 16, !dbg !314            ; [#uses=1 type=i1] [debug line = 255:10]
  br i1 %tmp, label %2, label %3, !dbg !314       ; [debug line = 255:10]

; <label>:2                                       ; preds = %1
  %tmp.91 = zext i8 %i to i64, !dbg !317          ; [#uses=1 type=i64] [debug line = 257:9]
  %buf.addr = getelementptr inbounds i8* %buf, i64 %tmp.91, !dbg !317 ; [#uses=3 type=i8*] [debug line = 257:9]
  %a = load i8* %buf.addr, align 1, !dbg !317     ; [#uses=3 type=i8] [debug line = 257:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %a) nounwind
  call void @llvm.dbg.value(metadata !{i8 %a}, i64 0, metadata !319), !dbg !317 ; [debug line = 257:9] [debug variable = a]
  %tmp.92 = zext i8 %i to i32, !dbg !320          ; [#uses=3 type=i32] [debug line = 258:9]
  %tmp.93 = or i32 %tmp.92, 1, !dbg !320          ; [#uses=1 type=i32] [debug line = 258:9]
  %tmp.94 = zext i32 %tmp.93 to i64, !dbg !320    ; [#uses=1 type=i64] [debug line = 258:9]
  %buf.addr.35 = getelementptr inbounds i8* %buf, i64 %tmp.94, !dbg !320 ; [#uses=3 type=i8*] [debug line = 258:9]
  %b = load i8* %buf.addr.35, align 1, !dbg !320  ; [#uses=3 type=i8] [debug line = 258:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %b) nounwind
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !321), !dbg !320 ; [debug line = 258:9] [debug variable = b]
  %tmp.95 = or i32 %tmp.92, 2, !dbg !322          ; [#uses=1 type=i32] [debug line = 259:9]
  %tmp.96 = zext i32 %tmp.95 to i64, !dbg !322    ; [#uses=1 type=i64] [debug line = 259:9]
  %buf.addr.36 = getelementptr inbounds i8* %buf, i64 %tmp.96, !dbg !322 ; [#uses=3 type=i8*] [debug line = 259:9]
  %c = load i8* %buf.addr.36, align 1, !dbg !322  ; [#uses=4 type=i8] [debug line = 259:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %c) nounwind
  call void @llvm.dbg.value(metadata !{i8 %c}, i64 0, metadata !323), !dbg !322 ; [debug line = 259:9] [debug variable = c]
  %tmp.97 = or i32 %tmp.92, 3, !dbg !324          ; [#uses=1 type=i32] [debug line = 260:9]
  %tmp.98 = zext i32 %tmp.97 to i64, !dbg !324    ; [#uses=1 type=i64] [debug line = 260:9]
  %buf.addr.37 = getelementptr inbounds i8* %buf, i64 %tmp.98, !dbg !324 ; [#uses=3 type=i8*] [debug line = 260:9]
  %d = load i8* %buf.addr.37, align 1, !dbg !324  ; [#uses=4 type=i8] [debug line = 260:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %d) nounwind
  call void @llvm.dbg.value(metadata !{i8 %d}, i64 0, metadata !325), !dbg !324 ; [debug line = 260:9] [debug variable = d]
  %tmp.99 = xor i8 %b, %a, !dbg !326              ; [#uses=2 type=i8] [debug line = 261:9]
  %tmp.100 = xor i8 %c, %tmp.99, !dbg !326        ; [#uses=1 type=i8] [debug line = 261:9]
  %e = xor i8 %tmp.100, %d, !dbg !326             ; [#uses=4 type=i8] [debug line = 261:9]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !327), !dbg !326 ; [debug line = 261:9] [debug variable = e]
  %tmp.102 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.99), !dbg !328 ; [#uses=1 type=i8] [debug line = 262:23]
  %buf.load = load i8* %buf.addr, align 1, !dbg !328 ; [#uses=2 type=i8] [debug line = 262:23]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  %tmp.103 = xor i8 %tmp.102, %e, !dbg !328       ; [#uses=1 type=i8] [debug line = 262:23]
  %tmp.104 = xor i8 %tmp.103, %buf.load, !dbg !328 ; [#uses=1 type=i8] [debug line = 262:23]
  store i8 %tmp.104, i8* %buf.addr, align 1, !dbg !328 ; [debug line = 262:23]
  %tmp.105 = xor i8 %c, %b, !dbg !329             ; [#uses=1 type=i8] [debug line = 263:27]
  %tmp.106 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.105), !dbg !329 ; [#uses=1 type=i8] [debug line = 263:27]
  %buf.load.29 = load i8* %buf.addr.35, align 1, !dbg !329 ; [#uses=2 type=i8] [debug line = 263:27]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.29) nounwind
  %tmp.107 = xor i8 %tmp.106, %e, !dbg !329       ; [#uses=1 type=i8] [debug line = 263:27]
  %tmp.108 = xor i8 %tmp.107, %buf.load.29, !dbg !329 ; [#uses=1 type=i8] [debug line = 263:27]
  store i8 %tmp.108, i8* %buf.addr.35, align 1, !dbg !329 ; [debug line = 263:27]
  %tmp.109 = xor i8 %d, %c, !dbg !330             ; [#uses=1 type=i8] [debug line = 264:27]
  %tmp.110 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.109), !dbg !330 ; [#uses=1 type=i8] [debug line = 264:27]
  %buf.load.30 = load i8* %buf.addr.36, align 1, !dbg !330 ; [#uses=2 type=i8] [debug line = 264:27]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.30) nounwind
  %tmp.111 = xor i8 %tmp.110, %e, !dbg !330       ; [#uses=1 type=i8] [debug line = 264:27]
  %tmp.112 = xor i8 %tmp.111, %buf.load.30, !dbg !330 ; [#uses=1 type=i8] [debug line = 264:27]
  store i8 %tmp.112, i8* %buf.addr.36, align 1, !dbg !330 ; [debug line = 264:27]
  %tmp.113 = xor i8 %d, %a, !dbg !331             ; [#uses=1 type=i8] [debug line = 265:27]
  %tmp.114 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.113), !dbg !331 ; [#uses=1 type=i8] [debug line = 265:27]
  %buf.load.31 = load i8* %buf.addr.37, align 1, !dbg !331 ; [#uses=2 type=i8] [debug line = 265:27]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.31) nounwind
  %tmp.115 = xor i8 %tmp.114, %e, !dbg !331       ; [#uses=1 type=i8] [debug line = 265:27]
  %tmp.116 = xor i8 %tmp.115, %buf.load.31, !dbg !331 ; [#uses=1 type=i8] [debug line = 265:27]
  store i8 %tmp.116, i8* %buf.addr.37, align 1, !dbg !331 ; [debug line = 265:27]
  %i.34 = add i8 %i, 4, !dbg !332                 ; [#uses=1 type=i8] [debug line = 255:25]
  call void @llvm.dbg.value(metadata !{i8 %i.34}, i64 0, metadata !333), !dbg !332 ; [debug line = 255:25] [debug variable = i]
  br label %1, !dbg !332                          ; [debug line = 255:25]

; <label>:3                                       ; preds = %1
  ret void, !dbg !334                             ; [debug line = 267:1]
}

; [#uses=1]
define internal fastcc void @aes_init(i8* %k) nounwind uwtable {
  %rcon = alloca i8, align 1                      ; [#uses=2 type=i8*]
  call void @llvm.dbg.value(metadata !{i8* %k}, i64 0, metadata !335), !dbg !336 ; [debug line = 339:42] [debug variable = k]
  call void @llvm.dbg.declare(metadata !{i8* %rcon}, metadata !337), !dbg !339 ; [debug line = 341:13] [debug variable = rcon]
  store i8 1, i8* %rcon, align 1, !dbg !340       ; [debug line = 341:21]
  br label %1, !dbg !341                          ; [debug line = 344:10]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 0, %0 ], [ %i.35, %2 ]            ; [#uses=3 type=i8]
  %tmp = icmp eq i8 %i, 32, !dbg !341             ; [#uses=1 type=i1] [debug line = 344:10]
  br i1 %tmp, label %.preheader.preheader, label %2, !dbg !341 ; [debug line = 344:10]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !343                 ; [debug line = 345:10]

; <label>:2                                       ; preds = %1
  %tmp.118 = zext i8 %i to i64, !dbg !345         ; [#uses=3 type=i64] [debug line = 344:44]
  %k.addr = getelementptr inbounds i8* %k, i64 %tmp.118, !dbg !345 ; [#uses=1 type=i8*] [debug line = 344:44]
  %k.load = load i8* %k.addr, align 1, !dbg !345  ; [#uses=3 type=i8] [debug line = 344:44]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load) nounwind
  %ctx.addr = getelementptr inbounds %struct.aes_context.0* @ctx, i64 0, i32 2, i64 %tmp.118, !dbg !345 ; [#uses=1 type=i8*] [debug line = 344:44]
  store i8 %k.load, i8* %ctx.addr, align 1, !dbg !345 ; [debug line = 344:44]
  %ctx.addr.1 = getelementptr inbounds %struct.aes_context.0* @ctx, i64 0, i32 1, i64 %tmp.118, !dbg !345 ; [#uses=1 type=i8*] [debug line = 344:44]
  store i8 %k.load, i8* %ctx.addr.1, align 1, !dbg !345 ; [debug line = 344:44]
  %i.35 = add i8 %i, 1, !dbg !346                 ; [#uses=1 type=i8] [debug line = 344:39]
  call void @llvm.dbg.value(metadata !{i8 %i.35}, i64 0, metadata !347), !dbg !346 ; [debug line = 344:39] [debug variable = i]
  br label %1, !dbg !346                          ; [debug line = 344:39]

.preheader:                                       ; preds = %3, %.preheader.preheader
  %i.1 = phi i8 [ %phitmp, %3 ], [ 7, %.preheader.preheader ], !dbg !343 ; [#uses=2 type=i8] [debug line = 345:10]
  call void @llvm.dbg.value(metadata !{i8 %i.1}, i64 0, metadata !347), !dbg !343 ; [debug line = 345:10] [debug variable = i]
  %tmp.120 = icmp eq i8 %i.1, 0, !dbg !343        ; [#uses=1 type=i1] [debug line = 345:10]
  br i1 %tmp.120, label %4, label %3, !dbg !343   ; [debug line = 345:10]

; <label>:3                                       ; preds = %.preheader
  call fastcc void @aes_expandEncKey(i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 2, i64 0), i8* %rcon), !dbg !348 ; [debug line = 345:23]
  %phitmp = add i8 %i.1, -1, !dbg !348            ; [#uses=1 type=i8] [debug line = 345:23]
  br label %.preheader, !dbg !348                 ; [debug line = 345:23]

; <label>:4                                       ; preds = %.preheader
  ret void, !dbg !349                             ; [debug line = 346:1]
}

; [#uses=3]
define internal fastcc void @aes_expandEncKey(i8* %k, i8* %rc) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %k}, i64 0, metadata !350), !dbg !351 ; [debug line = 292:39] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i8* %rc}, i64 0, metadata !352), !dbg !353 ; [debug line = 292:51] [debug variable = rc]
  %k.addr = getelementptr inbounds i8* %k, i64 29, !dbg !354 ; [#uses=1 type=i8*] [debug line = 296:5]
  %k.load = load i8* %k.addr, align 1, !dbg !354  ; [#uses=2 type=i8] [debug line = 296:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load) nounwind
  %tmp = zext i8 %k.load to i64, !dbg !354        ; [#uses=1 type=i64] [debug line = 296:5]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp, !dbg !354 ; [#uses=1 type=i8*] [debug line = 296:5]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !354 ; [#uses=2 type=i8] [debug line = 296:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load) nounwind
  %rc.load = load i8* %rc, align 1, !dbg !354     ; [#uses=1 type=i8] [debug line = 296:5]
  %k.load.1 = load i8* %k, align 1, !dbg !354     ; [#uses=2 type=i8] [debug line = 296:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.1) nounwind
  %tmp.121 = xor i8 %rc.load, %sbox.load, !dbg !354 ; [#uses=1 type=i8] [debug line = 296:5]
  %tmp.122 = xor i8 %tmp.121, %k.load.1, !dbg !354 ; [#uses=1 type=i8] [debug line = 296:5]
  store i8 %tmp.122, i8* %k, align 1, !dbg !354   ; [debug line = 296:5]
  %k.addr.1 = getelementptr inbounds i8* %k, i64 30, !dbg !356 ; [#uses=1 type=i8*] [debug line = 297:5]
  %k.load.2 = load i8* %k.addr.1, align 1, !dbg !356 ; [#uses=2 type=i8] [debug line = 297:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.2) nounwind
  %tmp.123 = zext i8 %k.load.2 to i64, !dbg !356  ; [#uses=1 type=i64] [debug line = 297:5]
  %sbox.addr.1 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.123, !dbg !356 ; [#uses=1 type=i8*] [debug line = 297:5]
  %sbox.load.1 = load i8* %sbox.addr.1, align 1, !dbg !356 ; [#uses=2 type=i8] [debug line = 297:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.1) nounwind
  %k.addr.2 = getelementptr inbounds i8* %k, i64 1, !dbg !356 ; [#uses=2 type=i8*] [debug line = 297:5]
  %k.load.3 = load i8* %k.addr.2, align 1, !dbg !356 ; [#uses=2 type=i8] [debug line = 297:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.3) nounwind
  %tmp.124 = xor i8 %k.load.3, %sbox.load.1, !dbg !356 ; [#uses=1 type=i8] [debug line = 297:5]
  store i8 %tmp.124, i8* %k.addr.2, align 1, !dbg !356 ; [debug line = 297:5]
  %k.addr.3 = getelementptr inbounds i8* %k, i64 31, !dbg !357 ; [#uses=1 type=i8*] [debug line = 298:5]
  %k.load.4 = load i8* %k.addr.3, align 1, !dbg !357 ; [#uses=2 type=i8] [debug line = 298:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.4) nounwind
  %tmp.125 = zext i8 %k.load.4 to i64, !dbg !357  ; [#uses=1 type=i64] [debug line = 298:5]
  %sbox.addr.2 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.125, !dbg !357 ; [#uses=1 type=i8*] [debug line = 298:5]
  %sbox.load.2 = load i8* %sbox.addr.2, align 1, !dbg !357 ; [#uses=2 type=i8] [debug line = 298:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.2) nounwind
  %k.addr.4 = getelementptr inbounds i8* %k, i64 2, !dbg !357 ; [#uses=2 type=i8*] [debug line = 298:5]
  %k.load.5 = load i8* %k.addr.4, align 1, !dbg !357 ; [#uses=2 type=i8] [debug line = 298:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.5) nounwind
  %tmp.126 = xor i8 %k.load.5, %sbox.load.2, !dbg !357 ; [#uses=1 type=i8] [debug line = 298:5]
  store i8 %tmp.126, i8* %k.addr.4, align 1, !dbg !357 ; [debug line = 298:5]
  %k.addr.5 = getelementptr inbounds i8* %k, i64 28, !dbg !358 ; [#uses=1 type=i8*] [debug line = 299:5]
  %k.load.6 = load i8* %k.addr.5, align 1, !dbg !358 ; [#uses=2 type=i8] [debug line = 299:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.6) nounwind
  %tmp.127 = zext i8 %k.load.6 to i64, !dbg !358  ; [#uses=1 type=i64] [debug line = 299:5]
  %sbox.addr.3 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.127, !dbg !358 ; [#uses=1 type=i8*] [debug line = 299:5]
  %sbox.load.3 = load i8* %sbox.addr.3, align 1, !dbg !358 ; [#uses=2 type=i8] [debug line = 299:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.3) nounwind
  %k.addr.6 = getelementptr inbounds i8* %k, i64 3, !dbg !358 ; [#uses=2 type=i8*] [debug line = 299:5]
  %k.load.7 = load i8* %k.addr.6, align 1, !dbg !358 ; [#uses=2 type=i8] [debug line = 299:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.7) nounwind
  %tmp.128 = xor i8 %k.load.7, %sbox.load.3, !dbg !358 ; [#uses=1 type=i8] [debug line = 299:5]
  store i8 %tmp.128, i8* %k.addr.6, align 1, !dbg !358 ; [debug line = 299:5]
  %rc.load.1 = load i8* %rc, align 1, !dbg !359   ; [#uses=1 type=i8] [debug line = 300:11]
  %tmp.129 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %rc.load.1), !dbg !359 ; [#uses=1 type=i8] [debug line = 300:11]
  store i8 %tmp.129, i8* %rc, align 1, !dbg !359  ; [debug line = 300:11]
  br label %1, !dbg !360                          ; [debug line = 302:9]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 4, %0 ], [ %i.36, %2 ]            ; [#uses=4 type=i8]
  %tmp.130 = icmp ult i8 %i, 16, !dbg !360        ; [#uses=1 type=i1] [debug line = 302:9]
  br i1 %tmp.130, label %2, label %3, !dbg !360   ; [debug line = 302:9]

; <label>:2                                       ; preds = %1
  %tmp.131 = zext i8 %i to i32, !dbg !362         ; [#uses=7 type=i32] [debug line = 302:32]
  %tmp.132 = add nsw i32 %tmp.131, -4, !dbg !362  ; [#uses=1 type=i32] [debug line = 302:32]
  %tmp.133 = sext i32 %tmp.132 to i64, !dbg !362  ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.7 = getelementptr inbounds i8* %k, i64 %tmp.133, !dbg !362 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k.load.8 = load i8* %k.addr.7, align 1, !dbg !362 ; [#uses=2 type=i8] [debug line = 302:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.8) nounwind
  %tmp.134 = zext i8 %i to i64, !dbg !362         ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.8 = getelementptr inbounds i8* %k, i64 %tmp.134, !dbg !362 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k.load.9 = load i8* %k.addr.8, align 1, !dbg !362 ; [#uses=2 type=i8] [debug line = 302:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.9) nounwind
  %tmp.135 = xor i8 %k.load.9, %k.load.8, !dbg !362 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp.135, i8* %k.addr.8, align 1, !dbg !362 ; [debug line = 302:32]
  %tmp.136 = add nsw i32 %tmp.131, -3, !dbg !362  ; [#uses=1 type=i32] [debug line = 302:32]
  %tmp.137 = sext i32 %tmp.136 to i64, !dbg !362  ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.9 = getelementptr inbounds i8* %k, i64 %tmp.137, !dbg !362 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k.load.10 = load i8* %k.addr.9, align 1, !dbg !362 ; [#uses=2 type=i8] [debug line = 302:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.10) nounwind
  %tmp.138 = or i32 %tmp.131, 1, !dbg !362        ; [#uses=1 type=i32] [debug line = 302:32]
  %tmp.139 = zext i32 %tmp.138 to i64, !dbg !362  ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.10 = getelementptr inbounds i8* %k, i64 %tmp.139, !dbg !362 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k.load.11 = load i8* %k.addr.10, align 1, !dbg !362 ; [#uses=2 type=i8] [debug line = 302:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.11) nounwind
  %tmp.140 = xor i8 %k.load.11, %k.load.10, !dbg !362 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp.140, i8* %k.addr.10, align 1, !dbg !362 ; [debug line = 302:32]
  %tmp.141 = add nsw i32 %tmp.131, -2, !dbg !362  ; [#uses=1 type=i32] [debug line = 302:32]
  %tmp.142 = sext i32 %tmp.141 to i64, !dbg !362  ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.11 = getelementptr inbounds i8* %k, i64 %tmp.142, !dbg !362 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k.load.12 = load i8* %k.addr.11, align 1, !dbg !362 ; [#uses=2 type=i8] [debug line = 302:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.12) nounwind
  %tmp.143 = or i32 %tmp.131, 2, !dbg !362        ; [#uses=1 type=i32] [debug line = 302:32]
  %tmp.144 = zext i32 %tmp.143 to i64, !dbg !362  ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.12 = getelementptr inbounds i8* %k, i64 %tmp.144, !dbg !362 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k.load.13 = load i8* %k.addr.12, align 1, !dbg !362 ; [#uses=2 type=i8] [debug line = 302:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.13) nounwind
  %tmp.145 = xor i8 %k.load.13, %k.load.12, !dbg !362 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp.145, i8* %k.addr.12, align 1, !dbg !362 ; [debug line = 302:32]
  %tmp.146 = add nsw i32 %tmp.131, -1, !dbg !362  ; [#uses=1 type=i32] [debug line = 302:32]
  %tmp.147 = sext i32 %tmp.146 to i64, !dbg !362  ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.13 = getelementptr inbounds i8* %k, i64 %tmp.147, !dbg !362 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k.load.14 = load i8* %k.addr.13, align 1, !dbg !362 ; [#uses=2 type=i8] [debug line = 302:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.14) nounwind
  %tmp.148 = or i32 %tmp.131, 3, !dbg !362        ; [#uses=1 type=i32] [debug line = 302:32]
  %tmp.149 = zext i32 %tmp.148 to i64, !dbg !362  ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.14 = getelementptr inbounds i8* %k, i64 %tmp.149, !dbg !362 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k.load.15 = load i8* %k.addr.14, align 1, !dbg !362 ; [#uses=2 type=i8] [debug line = 302:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.15) nounwind
  %tmp.150 = xor i8 %k.load.15, %k.load.14, !dbg !362 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp.150, i8* %k.addr.14, align 1, !dbg !362 ; [debug line = 302:32]
  %i.36 = add i8 %i, 4, !dbg !363                 ; [#uses=1 type=i8] [debug line = 302:24]
  call void @llvm.dbg.value(metadata !{i8 %i.36}, i64 0, metadata !364), !dbg !363 ; [debug line = 302:24] [debug variable = i]
  br label %1, !dbg !363                          ; [debug line = 302:24]

; <label>:3                                       ; preds = %1
  %k.addr.15 = getelementptr inbounds i8* %k, i64 12, !dbg !365 ; [#uses=1 type=i8*] [debug line = 304:5]
  %k.load.16 = load i8* %k.addr.15, align 1, !dbg !365 ; [#uses=2 type=i8] [debug line = 304:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.16) nounwind
  %tmp.152 = zext i8 %k.load.16 to i64, !dbg !365 ; [#uses=1 type=i64] [debug line = 304:5]
  %sbox.addr.4 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.152, !dbg !365 ; [#uses=1 type=i8*] [debug line = 304:5]
  %sbox.load.4 = load i8* %sbox.addr.4, align 1, !dbg !365 ; [#uses=2 type=i8] [debug line = 304:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.4) nounwind
  %k.addr.16 = getelementptr inbounds i8* %k, i64 16, !dbg !365 ; [#uses=2 type=i8*] [debug line = 304:5]
  %k.load.17 = load i8* %k.addr.16, align 1, !dbg !365 ; [#uses=2 type=i8] [debug line = 304:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.17) nounwind
  %tmp.153 = xor i8 %k.load.17, %sbox.load.4, !dbg !365 ; [#uses=1 type=i8] [debug line = 304:5]
  store i8 %tmp.153, i8* %k.addr.16, align 1, !dbg !365 ; [debug line = 304:5]
  %k.addr.17 = getelementptr inbounds i8* %k, i64 13, !dbg !366 ; [#uses=1 type=i8*] [debug line = 305:5]
  %k.load.18 = load i8* %k.addr.17, align 1, !dbg !366 ; [#uses=2 type=i8] [debug line = 305:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.18) nounwind
  %tmp.154 = zext i8 %k.load.18 to i64, !dbg !366 ; [#uses=1 type=i64] [debug line = 305:5]
  %sbox.addr.5 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.154, !dbg !366 ; [#uses=1 type=i8*] [debug line = 305:5]
  %sbox.load.5 = load i8* %sbox.addr.5, align 1, !dbg !366 ; [#uses=2 type=i8] [debug line = 305:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.5) nounwind
  %k.addr.18 = getelementptr inbounds i8* %k, i64 17, !dbg !366 ; [#uses=2 type=i8*] [debug line = 305:5]
  %k.load.19 = load i8* %k.addr.18, align 1, !dbg !366 ; [#uses=2 type=i8] [debug line = 305:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.19) nounwind
  %tmp.155 = xor i8 %k.load.19, %sbox.load.5, !dbg !366 ; [#uses=1 type=i8] [debug line = 305:5]
  store i8 %tmp.155, i8* %k.addr.18, align 1, !dbg !366 ; [debug line = 305:5]
  %k.addr.19 = getelementptr inbounds i8* %k, i64 14, !dbg !367 ; [#uses=1 type=i8*] [debug line = 306:5]
  %k.load.20 = load i8* %k.addr.19, align 1, !dbg !367 ; [#uses=2 type=i8] [debug line = 306:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.20) nounwind
  %tmp.156 = zext i8 %k.load.20 to i64, !dbg !367 ; [#uses=1 type=i64] [debug line = 306:5]
  %sbox.addr.6 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.156, !dbg !367 ; [#uses=1 type=i8*] [debug line = 306:5]
  %sbox.load.6 = load i8* %sbox.addr.6, align 1, !dbg !367 ; [#uses=2 type=i8] [debug line = 306:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.6) nounwind
  %k.addr.20 = getelementptr inbounds i8* %k, i64 18, !dbg !367 ; [#uses=2 type=i8*] [debug line = 306:5]
  %k.load.21 = load i8* %k.addr.20, align 1, !dbg !367 ; [#uses=2 type=i8] [debug line = 306:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.21) nounwind
  %tmp.157 = xor i8 %k.load.21, %sbox.load.6, !dbg !367 ; [#uses=1 type=i8] [debug line = 306:5]
  store i8 %tmp.157, i8* %k.addr.20, align 1, !dbg !367 ; [debug line = 306:5]
  %k.addr.21 = getelementptr inbounds i8* %k, i64 15, !dbg !368 ; [#uses=1 type=i8*] [debug line = 307:5]
  %k.load.22 = load i8* %k.addr.21, align 1, !dbg !368 ; [#uses=2 type=i8] [debug line = 307:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.22) nounwind
  %tmp.158 = zext i8 %k.load.22 to i64, !dbg !368 ; [#uses=1 type=i64] [debug line = 307:5]
  %sbox.addr.7 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.158, !dbg !368 ; [#uses=1 type=i8*] [debug line = 307:5]
  %sbox.load.7 = load i8* %sbox.addr.7, align 1, !dbg !368 ; [#uses=2 type=i8] [debug line = 307:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.7) nounwind
  %k.addr.22 = getelementptr inbounds i8* %k, i64 19, !dbg !368 ; [#uses=2 type=i8*] [debug line = 307:5]
  %k.load.23 = load i8* %k.addr.22, align 1, !dbg !368 ; [#uses=2 type=i8] [debug line = 307:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.23) nounwind
  %tmp.159 = xor i8 %k.load.23, %sbox.load.7, !dbg !368 ; [#uses=1 type=i8] [debug line = 307:5]
  store i8 %tmp.159, i8* %k.addr.22, align 1, !dbg !368 ; [debug line = 307:5]
  br label %4, !dbg !369                          ; [debug line = 309:9]

; <label>:4                                       ; preds = %5, %3
  %i.1 = phi i8 [ 20, %3 ], [ %i.37, %5 ]         ; [#uses=4 type=i8]
  %tmp.160 = icmp ult i8 %i.1, 32, !dbg !369      ; [#uses=1 type=i1] [debug line = 309:9]
  br i1 %tmp.160, label %5, label %6, !dbg !369   ; [debug line = 309:9]

; <label>:5                                       ; preds = %4
  %tmp.161 = zext i8 %i.1 to i32, !dbg !371       ; [#uses=7 type=i32] [debug line = 309:33]
  %tmp.162 = add nsw i32 %tmp.161, -4, !dbg !371  ; [#uses=1 type=i32] [debug line = 309:33]
  %tmp.163 = sext i32 %tmp.162 to i64, !dbg !371  ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.23 = getelementptr inbounds i8* %k, i64 %tmp.163, !dbg !371 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k.load.24 = load i8* %k.addr.23, align 1, !dbg !371 ; [#uses=2 type=i8] [debug line = 309:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.24) nounwind
  %tmp.164 = zext i8 %i.1 to i64, !dbg !371       ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.24 = getelementptr inbounds i8* %k, i64 %tmp.164, !dbg !371 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k.load.25 = load i8* %k.addr.24, align 1, !dbg !371 ; [#uses=2 type=i8] [debug line = 309:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.25) nounwind
  %tmp.165 = xor i8 %k.load.25, %k.load.24, !dbg !371 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp.165, i8* %k.addr.24, align 1, !dbg !371 ; [debug line = 309:33]
  %tmp.166 = add nsw i32 %tmp.161, -3, !dbg !371  ; [#uses=1 type=i32] [debug line = 309:33]
  %tmp.167 = sext i32 %tmp.166 to i64, !dbg !371  ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.25 = getelementptr inbounds i8* %k, i64 %tmp.167, !dbg !371 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k.load.26 = load i8* %k.addr.25, align 1, !dbg !371 ; [#uses=2 type=i8] [debug line = 309:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.26) nounwind
  %tmp.168 = or i32 %tmp.161, 1, !dbg !371        ; [#uses=1 type=i32] [debug line = 309:33]
  %tmp.169 = zext i32 %tmp.168 to i64, !dbg !371  ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.26 = getelementptr inbounds i8* %k, i64 %tmp.169, !dbg !371 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k.load.27 = load i8* %k.addr.26, align 1, !dbg !371 ; [#uses=2 type=i8] [debug line = 309:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.27) nounwind
  %tmp.170 = xor i8 %k.load.27, %k.load.26, !dbg !371 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp.170, i8* %k.addr.26, align 1, !dbg !371 ; [debug line = 309:33]
  %tmp.171 = add nsw i32 %tmp.161, -2, !dbg !371  ; [#uses=1 type=i32] [debug line = 309:33]
  %tmp.172 = sext i32 %tmp.171 to i64, !dbg !371  ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.27 = getelementptr inbounds i8* %k, i64 %tmp.172, !dbg !371 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k.load.28 = load i8* %k.addr.27, align 1, !dbg !371 ; [#uses=2 type=i8] [debug line = 309:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.28) nounwind
  %tmp.173 = or i32 %tmp.161, 2, !dbg !371        ; [#uses=1 type=i32] [debug line = 309:33]
  %tmp.174 = zext i32 %tmp.173 to i64, !dbg !371  ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.28 = getelementptr inbounds i8* %k, i64 %tmp.174, !dbg !371 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k.load.29 = load i8* %k.addr.28, align 1, !dbg !371 ; [#uses=2 type=i8] [debug line = 309:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.29) nounwind
  %tmp.175 = xor i8 %k.load.29, %k.load.28, !dbg !371 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp.175, i8* %k.addr.28, align 1, !dbg !371 ; [debug line = 309:33]
  %tmp.176 = add nsw i32 %tmp.161, -1, !dbg !371  ; [#uses=1 type=i32] [debug line = 309:33]
  %tmp.177 = sext i32 %tmp.176 to i64, !dbg !371  ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.29 = getelementptr inbounds i8* %k, i64 %tmp.177, !dbg !371 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k.load.30 = load i8* %k.addr.29, align 1, !dbg !371 ; [#uses=2 type=i8] [debug line = 309:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.30) nounwind
  %tmp.178 = or i32 %tmp.161, 3, !dbg !371        ; [#uses=1 type=i32] [debug line = 309:33]
  %tmp.179 = zext i32 %tmp.178 to i64, !dbg !371  ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.30 = getelementptr inbounds i8* %k, i64 %tmp.179, !dbg !371 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k.load.31 = load i8* %k.addr.30, align 1, !dbg !371 ; [#uses=2 type=i8] [debug line = 309:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.31) nounwind
  %tmp.180 = xor i8 %k.load.31, %k.load.30, !dbg !371 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp.180, i8* %k.addr.30, align 1, !dbg !371 ; [debug line = 309:33]
  %i.37 = add i8 %i.1, 4, !dbg !372               ; [#uses=1 type=i8] [debug line = 309:25]
  call void @llvm.dbg.value(metadata !{i8 %i.37}, i64 0, metadata !364), !dbg !372 ; [debug line = 309:25] [debug variable = i]
  br label %4, !dbg !372                          ; [debug line = 309:25]

; <label>:6                                       ; preds = %4
  ret void, !dbg !373                             ; [debug line = 312:1]
}

; [#uses=1]
define internal fastcc void @aes_expandDecKey(i8* %k, i8* %rc) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %k}, i64 0, metadata !374), !dbg !375 ; [debug line = 315:32] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i8* %rc}, i64 0, metadata !376), !dbg !377 ; [debug line = 315:44] [debug variable = rc]
  br label %1, !dbg !378                          ; [debug line = 319:9]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 28, %0 ], [ %i.38, %2 ]           ; [#uses=4 type=i8]
  %tmp = icmp ugt i8 %i, 16, !dbg !378            ; [#uses=1 type=i1] [debug line = 319:9]
  br i1 %tmp, label %2, label %3, !dbg !378       ; [debug line = 319:9]

; <label>:2                                       ; preds = %1
  %tmp.182 = zext i8 %i to i32, !dbg !381         ; [#uses=7 type=i32] [debug line = 319:33]
  %tmp.183 = add nsw i32 %tmp.182, -4, !dbg !381  ; [#uses=1 type=i32] [debug line = 319:33]
  %tmp.184 = sext i32 %tmp.183 to i64, !dbg !381  ; [#uses=1 type=i64] [debug line = 319:33]
  %k.addr = getelementptr inbounds i8* %k, i64 %tmp.184, !dbg !381 ; [#uses=1 type=i8*] [debug line = 319:33]
  %k.load = load i8* %k.addr, align 1, !dbg !381  ; [#uses=2 type=i8] [debug line = 319:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load) nounwind
  %tmp.185 = zext i8 %i to i64, !dbg !381         ; [#uses=1 type=i64] [debug line = 319:33]
  %k.addr.31 = getelementptr inbounds i8* %k, i64 %tmp.185, !dbg !381 ; [#uses=2 type=i8*] [debug line = 319:33]
  %k.load.32 = load i8* %k.addr.31, align 1, !dbg !381 ; [#uses=2 type=i8] [debug line = 319:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.32) nounwind
  %tmp.186 = xor i8 %k.load.32, %k.load, !dbg !381 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp.186, i8* %k.addr.31, align 1, !dbg !381 ; [debug line = 319:33]
  %tmp.187 = add nsw i32 %tmp.182, -3, !dbg !381  ; [#uses=1 type=i32] [debug line = 319:33]
  %tmp.188 = sext i32 %tmp.187 to i64, !dbg !381  ; [#uses=1 type=i64] [debug line = 319:33]
  %k.addr.32 = getelementptr inbounds i8* %k, i64 %tmp.188, !dbg !381 ; [#uses=1 type=i8*] [debug line = 319:33]
  %k.load.33 = load i8* %k.addr.32, align 1, !dbg !381 ; [#uses=2 type=i8] [debug line = 319:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.33) nounwind
  %tmp.189 = or i32 %tmp.182, 1, !dbg !381        ; [#uses=1 type=i32] [debug line = 319:33]
  %tmp.190 = zext i32 %tmp.189 to i64, !dbg !381  ; [#uses=1 type=i64] [debug line = 319:33]
  %k.addr.33 = getelementptr inbounds i8* %k, i64 %tmp.190, !dbg !381 ; [#uses=2 type=i8*] [debug line = 319:33]
  %k.load.34 = load i8* %k.addr.33, align 1, !dbg !381 ; [#uses=2 type=i8] [debug line = 319:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.34) nounwind
  %tmp.191 = xor i8 %k.load.34, %k.load.33, !dbg !381 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp.191, i8* %k.addr.33, align 1, !dbg !381 ; [debug line = 319:33]
  %tmp.192 = add nsw i32 %tmp.182, -2, !dbg !381  ; [#uses=1 type=i32] [debug line = 319:33]
  %tmp.193 = sext i32 %tmp.192 to i64, !dbg !381  ; [#uses=1 type=i64] [debug line = 319:33]
  %k.addr.34 = getelementptr inbounds i8* %k, i64 %tmp.193, !dbg !381 ; [#uses=1 type=i8*] [debug line = 319:33]
  %k.load.35 = load i8* %k.addr.34, align 1, !dbg !381 ; [#uses=2 type=i8] [debug line = 319:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.35) nounwind
  %tmp.194 = or i32 %tmp.182, 2, !dbg !381        ; [#uses=1 type=i32] [debug line = 319:33]
  %tmp.195 = zext i32 %tmp.194 to i64, !dbg !381  ; [#uses=1 type=i64] [debug line = 319:33]
  %k.addr.35 = getelementptr inbounds i8* %k, i64 %tmp.195, !dbg !381 ; [#uses=2 type=i8*] [debug line = 319:33]
  %k.load.36 = load i8* %k.addr.35, align 1, !dbg !381 ; [#uses=2 type=i8] [debug line = 319:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.36) nounwind
  %tmp.196 = xor i8 %k.load.36, %k.load.35, !dbg !381 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp.196, i8* %k.addr.35, align 1, !dbg !381 ; [debug line = 319:33]
  %tmp.197 = add nsw i32 %tmp.182, -1, !dbg !381  ; [#uses=1 type=i32] [debug line = 319:33]
  %tmp.198 = sext i32 %tmp.197 to i64, !dbg !381  ; [#uses=1 type=i64] [debug line = 319:33]
  %k.addr.36 = getelementptr inbounds i8* %k, i64 %tmp.198, !dbg !381 ; [#uses=1 type=i8*] [debug line = 319:33]
  %k.load.37 = load i8* %k.addr.36, align 1, !dbg !381 ; [#uses=2 type=i8] [debug line = 319:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.37) nounwind
  %tmp.199 = or i32 %tmp.182, 3, !dbg !381        ; [#uses=1 type=i32] [debug line = 319:33]
  %tmp.200 = zext i32 %tmp.199 to i64, !dbg !381  ; [#uses=1 type=i64] [debug line = 319:33]
  %k.addr.37 = getelementptr inbounds i8* %k, i64 %tmp.200, !dbg !381 ; [#uses=2 type=i8*] [debug line = 319:33]
  %k.load.38 = load i8* %k.addr.37, align 1, !dbg !381 ; [#uses=2 type=i8] [debug line = 319:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.38) nounwind
  %tmp.201 = xor i8 %k.load.38, %k.load.37, !dbg !381 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp.201, i8* %k.addr.37, align 1, !dbg !381 ; [debug line = 319:33]
  %i.38 = add i8 %i, -4, !dbg !382                ; [#uses=1 type=i8] [debug line = 319:25]
  call void @llvm.dbg.value(metadata !{i8 %i.38}, i64 0, metadata !383), !dbg !382 ; [debug line = 319:25] [debug variable = i]
  br label %1, !dbg !382                          ; [debug line = 319:25]

; <label>:3                                       ; preds = %1
  %k.addr.38 = getelementptr inbounds i8* %k, i64 12, !dbg !384 ; [#uses=1 type=i8*] [debug line = 322:5]
  %k.load.39 = load i8* %k.addr.38, align 1, !dbg !384 ; [#uses=2 type=i8] [debug line = 322:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.39) nounwind
  %tmp.203 = zext i8 %k.load.39 to i64, !dbg !384 ; [#uses=1 type=i64] [debug line = 322:5]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.203, !dbg !384 ; [#uses=1 type=i8*] [debug line = 322:5]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !384 ; [#uses=2 type=i8] [debug line = 322:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load) nounwind
  %k.addr.39 = getelementptr inbounds i8* %k, i64 16, !dbg !384 ; [#uses=2 type=i8*] [debug line = 322:5]
  %k.load.40 = load i8* %k.addr.39, align 1, !dbg !384 ; [#uses=2 type=i8] [debug line = 322:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.40) nounwind
  %tmp.204 = xor i8 %k.load.40, %sbox.load, !dbg !384 ; [#uses=1 type=i8] [debug line = 322:5]
  store i8 %tmp.204, i8* %k.addr.39, align 1, !dbg !384 ; [debug line = 322:5]
  %k.addr.40 = getelementptr inbounds i8* %k, i64 13, !dbg !385 ; [#uses=1 type=i8*] [debug line = 323:5]
  %k.load.41 = load i8* %k.addr.40, align 1, !dbg !385 ; [#uses=2 type=i8] [debug line = 323:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.41) nounwind
  %tmp.205 = zext i8 %k.load.41 to i64, !dbg !385 ; [#uses=1 type=i64] [debug line = 323:5]
  %sbox.addr.8 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.205, !dbg !385 ; [#uses=1 type=i8*] [debug line = 323:5]
  %sbox.load.8 = load i8* %sbox.addr.8, align 1, !dbg !385 ; [#uses=2 type=i8] [debug line = 323:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.8) nounwind
  %k.addr.41 = getelementptr inbounds i8* %k, i64 17, !dbg !385 ; [#uses=2 type=i8*] [debug line = 323:5]
  %k.load.42 = load i8* %k.addr.41, align 1, !dbg !385 ; [#uses=2 type=i8] [debug line = 323:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.42) nounwind
  %tmp.206 = xor i8 %k.load.42, %sbox.load.8, !dbg !385 ; [#uses=1 type=i8] [debug line = 323:5]
  store i8 %tmp.206, i8* %k.addr.41, align 1, !dbg !385 ; [debug line = 323:5]
  %k.addr.42 = getelementptr inbounds i8* %k, i64 14, !dbg !386 ; [#uses=1 type=i8*] [debug line = 324:5]
  %k.load.43 = load i8* %k.addr.42, align 1, !dbg !386 ; [#uses=2 type=i8] [debug line = 324:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.43) nounwind
  %tmp.207 = zext i8 %k.load.43 to i64, !dbg !386 ; [#uses=1 type=i64] [debug line = 324:5]
  %sbox.addr.9 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.207, !dbg !386 ; [#uses=1 type=i8*] [debug line = 324:5]
  %sbox.load.9 = load i8* %sbox.addr.9, align 1, !dbg !386 ; [#uses=2 type=i8] [debug line = 324:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.9) nounwind
  %k.addr.43 = getelementptr inbounds i8* %k, i64 18, !dbg !386 ; [#uses=2 type=i8*] [debug line = 324:5]
  %k.load.44 = load i8* %k.addr.43, align 1, !dbg !386 ; [#uses=2 type=i8] [debug line = 324:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.44) nounwind
  %tmp.208 = xor i8 %k.load.44, %sbox.load.9, !dbg !386 ; [#uses=1 type=i8] [debug line = 324:5]
  store i8 %tmp.208, i8* %k.addr.43, align 1, !dbg !386 ; [debug line = 324:5]
  %k.addr.44 = getelementptr inbounds i8* %k, i64 15, !dbg !387 ; [#uses=1 type=i8*] [debug line = 325:5]
  %k.load.45 = load i8* %k.addr.44, align 1, !dbg !387 ; [#uses=2 type=i8] [debug line = 325:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.45) nounwind
  %tmp.209 = zext i8 %k.load.45 to i64, !dbg !387 ; [#uses=1 type=i64] [debug line = 325:5]
  %sbox.addr.10 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.209, !dbg !387 ; [#uses=1 type=i8*] [debug line = 325:5]
  %sbox.load.10 = load i8* %sbox.addr.10, align 1, !dbg !387 ; [#uses=2 type=i8] [debug line = 325:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.10) nounwind
  %k.addr.45 = getelementptr inbounds i8* %k, i64 19, !dbg !387 ; [#uses=2 type=i8*] [debug line = 325:5]
  %k.load.46 = load i8* %k.addr.45, align 1, !dbg !387 ; [#uses=2 type=i8] [debug line = 325:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.46) nounwind
  %tmp.210 = xor i8 %k.load.46, %sbox.load.10, !dbg !387 ; [#uses=1 type=i8] [debug line = 325:5]
  store i8 %tmp.210, i8* %k.addr.45, align 1, !dbg !387 ; [debug line = 325:5]
  br label %4, !dbg !388                          ; [debug line = 327:9]

; <label>:4                                       ; preds = %5, %3
  %i.1 = phi i8 [ 12, %3 ], [ %i.39, %5 ]         ; [#uses=4 type=i8]
  %tmp.211 = icmp eq i8 %i.1, 0, !dbg !388        ; [#uses=1 type=i1] [debug line = 327:9]
  br i1 %tmp.211, label %6, label %5, !dbg !388   ; [debug line = 327:9]

; <label>:5                                       ; preds = %4
  %tmp.226 = zext i8 %i.1 to i32, !dbg !390       ; [#uses=7 type=i32] [debug line = 327:32]
  %tmp.227 = add nsw i32 %tmp.226, -4, !dbg !390  ; [#uses=1 type=i32] [debug line = 327:32]
  %tmp.228 = sext i32 %tmp.227 to i64, !dbg !390  ; [#uses=1 type=i64] [debug line = 327:32]
  %k.addr.53 = getelementptr inbounds i8* %k, i64 %tmp.228, !dbg !390 ; [#uses=1 type=i8*] [debug line = 327:32]
  %k.load.55 = load i8* %k.addr.53, align 1, !dbg !390 ; [#uses=2 type=i8] [debug line = 327:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.55) nounwind
  %tmp.229 = zext i8 %i.1 to i64, !dbg !390       ; [#uses=1 type=i64] [debug line = 327:32]
  %k.addr.54 = getelementptr inbounds i8* %k, i64 %tmp.229, !dbg !390 ; [#uses=2 type=i8*] [debug line = 327:32]
  %k.load.56 = load i8* %k.addr.54, align 1, !dbg !390 ; [#uses=2 type=i8] [debug line = 327:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.56) nounwind
  %tmp.230 = xor i8 %k.load.56, %k.load.55, !dbg !390 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp.230, i8* %k.addr.54, align 1, !dbg !390 ; [debug line = 327:32]
  %tmp.231 = add nsw i32 %tmp.226, -3, !dbg !390  ; [#uses=1 type=i32] [debug line = 327:32]
  %tmp.232 = sext i32 %tmp.231 to i64, !dbg !390  ; [#uses=1 type=i64] [debug line = 327:32]
  %k.addr.55 = getelementptr inbounds i8* %k, i64 %tmp.232, !dbg !390 ; [#uses=1 type=i8*] [debug line = 327:32]
  %k.load.57 = load i8* %k.addr.55, align 1, !dbg !390 ; [#uses=2 type=i8] [debug line = 327:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.57) nounwind
  %tmp.233 = or i32 %tmp.226, 1, !dbg !390        ; [#uses=1 type=i32] [debug line = 327:32]
  %tmp.234 = zext i32 %tmp.233 to i64, !dbg !390  ; [#uses=1 type=i64] [debug line = 327:32]
  %k.addr.56 = getelementptr inbounds i8* %k, i64 %tmp.234, !dbg !390 ; [#uses=2 type=i8*] [debug line = 327:32]
  %k.load.58 = load i8* %k.addr.56, align 1, !dbg !390 ; [#uses=2 type=i8] [debug line = 327:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.58) nounwind
  %tmp.235 = xor i8 %k.load.58, %k.load.57, !dbg !390 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp.235, i8* %k.addr.56, align 1, !dbg !390 ; [debug line = 327:32]
  %tmp.236 = add nsw i32 %tmp.226, -2, !dbg !390  ; [#uses=1 type=i32] [debug line = 327:32]
  %tmp.237 = sext i32 %tmp.236 to i64, !dbg !390  ; [#uses=1 type=i64] [debug line = 327:32]
  %k.addr.57 = getelementptr inbounds i8* %k, i64 %tmp.237, !dbg !390 ; [#uses=1 type=i8*] [debug line = 327:32]
  %k.load.59 = load i8* %k.addr.57, align 1, !dbg !390 ; [#uses=2 type=i8] [debug line = 327:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.59) nounwind
  %tmp.238 = or i32 %tmp.226, 2, !dbg !390        ; [#uses=1 type=i32] [debug line = 327:32]
  %tmp.239 = zext i32 %tmp.238 to i64, !dbg !390  ; [#uses=1 type=i64] [debug line = 327:32]
  %k.addr.58 = getelementptr inbounds i8* %k, i64 %tmp.239, !dbg !390 ; [#uses=2 type=i8*] [debug line = 327:32]
  %k.load.60 = load i8* %k.addr.58, align 1, !dbg !390 ; [#uses=2 type=i8] [debug line = 327:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.60) nounwind
  %tmp.240 = xor i8 %k.load.60, %k.load.59, !dbg !390 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp.240, i8* %k.addr.58, align 1, !dbg !390 ; [debug line = 327:32]
  %tmp.241 = add nsw i32 %tmp.226, -1, !dbg !390  ; [#uses=1 type=i32] [debug line = 327:32]
  %tmp.242 = sext i32 %tmp.241 to i64, !dbg !390  ; [#uses=1 type=i64] [debug line = 327:32]
  %k.addr.59 = getelementptr inbounds i8* %k, i64 %tmp.242, !dbg !390 ; [#uses=1 type=i8*] [debug line = 327:32]
  %k.load.61 = load i8* %k.addr.59, align 1, !dbg !390 ; [#uses=2 type=i8] [debug line = 327:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.61) nounwind
  %tmp.243 = or i32 %tmp.226, 3, !dbg !390        ; [#uses=1 type=i32] [debug line = 327:32]
  %tmp.244 = zext i32 %tmp.243 to i64, !dbg !390  ; [#uses=1 type=i64] [debug line = 327:32]
  %k.addr.60 = getelementptr inbounds i8* %k, i64 %tmp.244, !dbg !390 ; [#uses=2 type=i8*] [debug line = 327:32]
  %k.load.62 = load i8* %k.addr.60, align 1, !dbg !390 ; [#uses=2 type=i8] [debug line = 327:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.62) nounwind
  %tmp.245 = xor i8 %k.load.62, %k.load.61, !dbg !390 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp.245, i8* %k.addr.60, align 1, !dbg !390 ; [debug line = 327:32]
  %i.39 = add i8 %i.1, -4, !dbg !391              ; [#uses=1 type=i8] [debug line = 327:24]
  call void @llvm.dbg.value(metadata !{i8 %i.39}, i64 0, metadata !383), !dbg !391 ; [debug line = 327:24] [debug variable = i]
  br label %4, !dbg !391                          ; [debug line = 327:24]

; <label>:6                                       ; preds = %4
  %rc.load = load i8* %rc, align 1, !dbg !392     ; [#uses=2 type=i8] [debug line = 330:5]
  %tmp.212 = lshr i8 %rc.load, 1, !dbg !392       ; [#uses=1 type=i8] [debug line = 330:5]
  %tmp.213 = and i8 %rc.load, 1, !dbg !392        ; [#uses=1 type=i8] [debug line = 330:5]
  %tmp.214 = icmp ne i8 %tmp.213, 0, !dbg !392    ; [#uses=1 type=i1] [debug line = 330:5]
  %tmp.215 = select i1 %tmp.214, i8 -115, i8 0, !dbg !392 ; [#uses=1 type=i8] [debug line = 330:5]
  %tmp.216 = xor i8 %tmp.215, %tmp.212, !dbg !392 ; [#uses=2 type=i8] [debug line = 330:5]
  store i8 %tmp.216, i8* %rc, align 1, !dbg !392  ; [debug line = 330:5]
  %k.addr.46 = getelementptr inbounds i8* %k, i64 29, !dbg !393 ; [#uses=1 type=i8*] [debug line = 331:5]
  %k.load.47 = load i8* %k.addr.46, align 1, !dbg !393 ; [#uses=2 type=i8] [debug line = 331:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.47) nounwind
  %tmp.217 = zext i8 %k.load.47 to i64, !dbg !393 ; [#uses=1 type=i64] [debug line = 331:5]
  %sbox.addr.11 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.217, !dbg !393 ; [#uses=1 type=i8*] [debug line = 331:5]
  %sbox.load.11 = load i8* %sbox.addr.11, align 1, !dbg !393 ; [#uses=2 type=i8] [debug line = 331:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.11) nounwind
  %k.load.48 = load i8* %k, align 1, !dbg !393    ; [#uses=2 type=i8] [debug line = 331:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.48) nounwind
  %tmp.218 = xor i8 %tmp.216, %sbox.load.11, !dbg !393 ; [#uses=1 type=i8] [debug line = 331:5]
  %tmp.219 = xor i8 %tmp.218, %k.load.48, !dbg !393 ; [#uses=1 type=i8] [debug line = 331:5]
  store i8 %tmp.219, i8* %k, align 1, !dbg !393   ; [debug line = 331:5]
  %k.addr.47 = getelementptr inbounds i8* %k, i64 30, !dbg !394 ; [#uses=1 type=i8*] [debug line = 332:5]
  %k.load.49 = load i8* %k.addr.47, align 1, !dbg !394 ; [#uses=2 type=i8] [debug line = 332:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.49) nounwind
  %tmp.220 = zext i8 %k.load.49 to i64, !dbg !394 ; [#uses=1 type=i64] [debug line = 332:5]
  %sbox.addr.12 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.220, !dbg !394 ; [#uses=1 type=i8*] [debug line = 332:5]
  %sbox.load.12 = load i8* %sbox.addr.12, align 1, !dbg !394 ; [#uses=2 type=i8] [debug line = 332:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.12) nounwind
  %k.addr.48 = getelementptr inbounds i8* %k, i64 1, !dbg !394 ; [#uses=2 type=i8*] [debug line = 332:5]
  %k.load.50 = load i8* %k.addr.48, align 1, !dbg !394 ; [#uses=2 type=i8] [debug line = 332:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.50) nounwind
  %tmp.221 = xor i8 %k.load.50, %sbox.load.12, !dbg !394 ; [#uses=1 type=i8] [debug line = 332:5]
  store i8 %tmp.221, i8* %k.addr.48, align 1, !dbg !394 ; [debug line = 332:5]
  %k.addr.49 = getelementptr inbounds i8* %k, i64 31, !dbg !395 ; [#uses=1 type=i8*] [debug line = 333:5]
  %k.load.51 = load i8* %k.addr.49, align 1, !dbg !395 ; [#uses=2 type=i8] [debug line = 333:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.51) nounwind
  %tmp.222 = zext i8 %k.load.51 to i64, !dbg !395 ; [#uses=1 type=i64] [debug line = 333:5]
  %sbox.addr.13 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.222, !dbg !395 ; [#uses=1 type=i8*] [debug line = 333:5]
  %sbox.load.13 = load i8* %sbox.addr.13, align 1, !dbg !395 ; [#uses=2 type=i8] [debug line = 333:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.13) nounwind
  %k.addr.50 = getelementptr inbounds i8* %k, i64 2, !dbg !395 ; [#uses=2 type=i8*] [debug line = 333:5]
  %k.load.52 = load i8* %k.addr.50, align 1, !dbg !395 ; [#uses=2 type=i8] [debug line = 333:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.52) nounwind
  %tmp.223 = xor i8 %k.load.52, %sbox.load.13, !dbg !395 ; [#uses=1 type=i8] [debug line = 333:5]
  store i8 %tmp.223, i8* %k.addr.50, align 1, !dbg !395 ; [debug line = 333:5]
  %k.addr.51 = getelementptr inbounds i8* %k, i64 28, !dbg !396 ; [#uses=1 type=i8*] [debug line = 334:5]
  %k.load.53 = load i8* %k.addr.51, align 1, !dbg !396 ; [#uses=2 type=i8] [debug line = 334:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.53) nounwind
  %tmp.224 = zext i8 %k.load.53 to i64, !dbg !396 ; [#uses=1 type=i64] [debug line = 334:5]
  %sbox.addr.14 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.224, !dbg !396 ; [#uses=1 type=i8*] [debug line = 334:5]
  %sbox.load.14 = load i8* %sbox.addr.14, align 1, !dbg !396 ; [#uses=2 type=i8] [debug line = 334:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.14) nounwind
  %k.addr.52 = getelementptr inbounds i8* %k, i64 3, !dbg !396 ; [#uses=2 type=i8*] [debug line = 334:5]
  %k.load.54 = load i8* %k.addr.52, align 1, !dbg !396 ; [#uses=2 type=i8] [debug line = 334:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.54) nounwind
  %tmp.225 = xor i8 %k.load.54, %sbox.load.14, !dbg !396 ; [#uses=1 type=i8] [debug line = 334:5]
  store i8 %tmp.225, i8* %k.addr.52, align 1, !dbg !396 ; [debug line = 334:5]
  ret void, !dbg !397                             ; [debug line = 335:1]
}

; [#uses=1]
define internal fastcc void @aes_encrypt_ecb(i8* %buf) nounwind uwtable {
  %rcon = alloca i8, align 1                      ; [#uses=3 type=i8*]
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !398), !dbg !399 ; [debug line = 358:49] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %rcon}, metadata !400), !dbg !402 ; [debug line = 360:16] [debug variable = rcon]
  call fastcc void @aes_addRoundKey_cpy(i8* %buf, i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 1, i64 0), i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 0, i64 0)), !dbg !403 ; [debug line = 362:5]
  store i8 1, i8* %rcon, align 1, !dbg !404       ; [debug line = 363:9]
  br label %1, !dbg !404                          ; [debug line = 363:9]

; <label>:1                                       ; preds = %5, %0
  %i = phi i8 [ 1, %0 ], [ %i.40, %5 ]            ; [#uses=3 type=i8]
  %exitcond = icmp eq i8 %i, 14, !dbg !404        ; [#uses=1 type=i1] [debug line = 363:9]
  br i1 %exitcond, label %6, label %2, !dbg !404  ; [debug line = 363:9]

; <label>:2                                       ; preds = %1
  call fastcc void @aes_subBytes(i8* %buf), !dbg !406 ; [debug line = 365:9]
  call fastcc void @aes_shiftRows(i8* %buf), !dbg !408 ; [debug line = 366:9]
  call fastcc void @aes_mixColumns(i8* %buf), !dbg !409 ; [debug line = 367:9]
  %tmp = and i8 %i, 1, !dbg !410                  ; [#uses=1 type=i8] [debug line = 368:9]
  %tmp.247 = icmp eq i8 %tmp, 0, !dbg !410        ; [#uses=1 type=i1] [debug line = 368:9]
  br i1 %tmp.247, label %4, label %3, !dbg !410   ; [debug line = 368:9]

; <label>:3                                       ; preds = %2
  call fastcc void @aes_addRoundKey(i8* %buf, i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 0, i64 16)), !dbg !411 ; [debug line = 368:21]
  br label %5, !dbg !411                          ; [debug line = 368:21]

; <label>:4                                       ; preds = %2
  call fastcc void @aes_expandEncKey(i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 0, i64 0), i8* %rcon), !dbg !412 ; [debug line = 369:14]
  call fastcc void @aes_addRoundKey(i8* %buf, i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 0, i64 0)), !dbg !413 ; [debug line = 369:49]
  br label %5

; <label>:5                                       ; preds = %4, %3
  %i.40 = add i8 %i, 1, !dbg !414                 ; [#uses=1 type=i8] [debug line = 363:34]
  call void @llvm.dbg.value(metadata !{i8 %i.40}, i64 0, metadata !415), !dbg !414 ; [debug line = 363:34] [debug variable = i]
  br label %1, !dbg !414                          ; [debug line = 363:34]

; <label>:6                                       ; preds = %1
  call fastcc void @aes_subBytes(i8* %buf), !dbg !416 ; [debug line = 371:5]
  call fastcc void @aes_shiftRows(i8* %buf), !dbg !417 ; [debug line = 372:5]
  call fastcc void @aes_expandEncKey(i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 0, i64 0), i8* %rcon), !dbg !418 ; [debug line = 373:5]
  call fastcc void @aes_addRoundKey(i8* %buf, i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 0, i64 0)), !dbg !419 ; [debug line = 374:5]
  ret void, !dbg !420                             ; [debug line = 375:1]
}

; [#uses=1]
define internal fastcc void @aes_decrypt_ecb(i8* %buf) nounwind uwtable {
  %rcon = alloca i8, align 1                      ; [#uses=2 type=i8*]
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !421), !dbg !422 ; [debug line = 378:49] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %rcon}, metadata !423), !dbg !425 ; [debug line = 380:16] [debug variable = rcon]
  call fastcc void @aes_addRoundKey_cpy(i8* %buf, i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 2, i64 0), i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 0, i64 0)), !dbg !426 ; [debug line = 382:5]
  call fastcc void @aes_shiftRows_inv(i8* %buf), !dbg !427 ; [debug line = 383:5]
  call fastcc void @aes_subBytes_inv(i8* %buf), !dbg !428 ; [debug line = 384:5]
  store i8 -128, i8* %rcon, align 1, !dbg !429    ; [debug line = 386:10]
  br label %1, !dbg !429                          ; [debug line = 386:10]

; <label>:1                                       ; preds = %5, %0
  %i = phi i8 [ 13, %0 ], [ %phitmp, %5 ], !dbg !429 ; [#uses=3 type=i8] [debug line = 386:10]
  call void @llvm.dbg.value(metadata !{i8 %i}, i64 0, metadata !431), !dbg !429 ; [debug line = 386:10] [debug variable = i]
  %tmp = icmp eq i8 %i, 0, !dbg !429              ; [#uses=1 type=i1] [debug line = 386:10]
  br i1 %tmp, label %6, label %2, !dbg !429       ; [debug line = 386:10]

; <label>:2                                       ; preds = %1
  %tmp.249 = and i8 %i, 1, !dbg !432              ; [#uses=1 type=i8] [debug line = 388:9]
  %tmp.250 = icmp eq i8 %tmp.249, 0, !dbg !432    ; [#uses=1 type=i1] [debug line = 388:9]
  br i1 %tmp.250, label %4, label %3, !dbg !432   ; [debug line = 388:9]

; <label>:3                                       ; preds = %2
  call fastcc void @aes_expandDecKey(i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 0, i64 0), i8* %rcon), !dbg !434 ; [debug line = 390:13]
  call fastcc void @aes_addRoundKey(i8* %buf, i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 0, i64 16)), !dbg !436 ; [debug line = 391:13]
  br label %5, !dbg !437                          ; [debug line = 392:9]

; <label>:4                                       ; preds = %2
  call fastcc void @aes_addRoundKey(i8* %buf, i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 0, i64 0)), !dbg !438 ; [debug line = 393:14]
  br label %5

; <label>:5                                       ; preds = %4, %3
  call fastcc void @aes_mixColumns_inv(i8* %buf), !dbg !439 ; [debug line = 394:9]
  call fastcc void @aes_shiftRows_inv(i8* %buf), !dbg !440 ; [debug line = 395:9]
  call fastcc void @aes_subBytes_inv(i8* %buf), !dbg !441 ; [debug line = 396:9]
  %phitmp = add i8 %i, -1, !dbg !442              ; [#uses=1 type=i8] [debug line = 397:5]
  br label %1, !dbg !442                          ; [debug line = 397:5]

; <label>:6                                       ; preds = %1
  call fastcc void @aes_addRoundKey(i8* %buf, i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 0, i64 0)), !dbg !443 ; [debug line = 398:5]
  ret void, !dbg !444                             ; [debug line = 399:1]
}

; [#uses=2]
define internal fastcc void @aes_addRoundKey_cpy(i8* %buf, i8* %key, i8* %cpk) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !445), !dbg !446 ; [debug line = 218:42] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !447), !dbg !448 ; [debug line = 218:56] [debug variable = key]
  call void @llvm.dbg.value(metadata !{i8* %cpk}, i64 0, metadata !449), !dbg !450 ; [debug line = 218:70] [debug variable = cpk]
  br label %1, !dbg !451                          ; [debug line = 222:5]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 16, %0 ], [ %i.41, %2 ]           ; [#uses=2 type=i8]
  %i.41 = add i8 %i, -1, !dbg !451                ; [#uses=3 type=i8] [debug line = 222:5]
  call void @llvm.dbg.value(metadata !{i8 %i.41}, i64 0, metadata !453), !dbg !451 ; [debug line = 222:5] [debug variable = i]
  %tmp = icmp eq i8 %i, 0, !dbg !451              ; [#uses=1 type=i1] [debug line = 222:5]
  br i1 %tmp, label %3, label %2, !dbg !451       ; [debug line = 222:5]

; <label>:2                                       ; preds = %1
  %tmp.251 = zext i8 %i.41 to i64, !dbg !454      ; [#uses=3 type=i64] [debug line = 222:17]
  %key.addr = getelementptr inbounds i8* %key, i64 %tmp.251, !dbg !454 ; [#uses=1 type=i8*] [debug line = 222:17]
  %key.load = load i8* %key.addr, align 1, !dbg !454 ; [#uses=3 type=i8] [debug line = 222:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %key.load) nounwind
  %cpk.addr = getelementptr inbounds i8* %cpk, i64 %tmp.251, !dbg !454 ; [#uses=1 type=i8*] [debug line = 222:17]
  store i8 %key.load, i8* %cpk.addr, align 1, !dbg !454 ; [debug line = 222:17]
  %buf.addr = getelementptr inbounds i8* %buf, i64 %tmp.251, !dbg !454 ; [#uses=2 type=i8*] [debug line = 222:17]
  %buf.load = load i8* %buf.addr, align 1, !dbg !454 ; [#uses=2 type=i8] [debug line = 222:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  %tmp.252 = xor i8 %buf.load, %key.load, !dbg !454 ; [#uses=1 type=i8] [debug line = 222:17]
  store i8 %tmp.252, i8* %buf.addr, align 1, !dbg !454 ; [debug line = 222:17]
  %tmp.253 = zext i8 %i.41 to i32, !dbg !454      ; [#uses=1 type=i32] [debug line = 222:17]
  %tmp.254 = add nsw i32 %tmp.253, 16, !dbg !454  ; [#uses=1 type=i32] [debug line = 222:17]
  %tmp.255 = zext i32 %tmp.254 to i64, !dbg !454  ; [#uses=2 type=i64] [debug line = 222:17]
  %key.addr.1 = getelementptr inbounds i8* %key, i64 %tmp.255, !dbg !454 ; [#uses=1 type=i8*] [debug line = 222:17]
  %key.load.1 = load i8* %key.addr.1, align 1, !dbg !454 ; [#uses=2 type=i8] [debug line = 222:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %key.load.1) nounwind
  %cpk.addr.1 = getelementptr inbounds i8* %cpk, i64 %tmp.255, !dbg !454 ; [#uses=1 type=i8*] [debug line = 222:17]
  store i8 %key.load.1, i8* %cpk.addr.1, align 1, !dbg !454 ; [debug line = 222:17]
  br label %1, !dbg !454                          ; [debug line = 222:17]

; <label>:3                                       ; preds = %1
  ret void, !dbg !455                             ; [debug line = 223:1]
}

; [#uses=6]
define internal fastcc void @aes_addRoundKey(i8* %buf, i8* %key) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !456), !dbg !457 ; [debug line = 210:38] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !458), !dbg !459 ; [debug line = 210:52] [debug variable = key]
  br label %1, !dbg !460                          ; [debug line = 214:5]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 16, %0 ], [ %i.42, %2 ]           ; [#uses=2 type=i8]
  %i.42 = add i8 %i, -1, !dbg !460                ; [#uses=2 type=i8] [debug line = 214:5]
  call void @llvm.dbg.value(metadata !{i8 %i.42}, i64 0, metadata !462), !dbg !460 ; [debug line = 214:5] [debug variable = i]
  %tmp = icmp eq i8 %i, 0, !dbg !460              ; [#uses=1 type=i1] [debug line = 214:5]
  br i1 %tmp, label %3, label %2, !dbg !460       ; [debug line = 214:5]

; <label>:2                                       ; preds = %1
  %tmp.256 = zext i8 %i.42 to i64, !dbg !463      ; [#uses=2 type=i64] [debug line = 214:17]
  %key.addr = getelementptr inbounds i8* %key, i64 %tmp.256, !dbg !463 ; [#uses=1 type=i8*] [debug line = 214:17]
  %key.load = load i8* %key.addr, align 1, !dbg !463 ; [#uses=2 type=i8] [debug line = 214:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %key.load) nounwind
  %buf.addr = getelementptr inbounds i8* %buf, i64 %tmp.256, !dbg !463 ; [#uses=2 type=i8*] [debug line = 214:17]
  %buf.load = load i8* %buf.addr, align 1, !dbg !463 ; [#uses=2 type=i8] [debug line = 214:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  %tmp.257 = xor i8 %buf.load, %key.load, !dbg !463 ; [#uses=1 type=i8] [debug line = 214:17]
  store i8 %tmp.257, i8* %buf.addr, align 1, !dbg !463 ; [debug line = 214:17]
  br label %1, !dbg !463                          ; [debug line = 214:17]

; <label>:3                                       ; preds = %1
  ret void, !dbg !464                             ; [debug line = 215:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=6]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=6]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=6]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=4]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=144]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0, !56}
!opencl.kernels = !{!105, !112, !118, !124, !124, !126, !129, !133, !136, !137, !138, !140, !141, !142, !143, !147}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/brett/Thesis/Vivado_WS/aescbc/solution1/.autopilot/db/aescbc.pragma.2.c", metadata !"/home/brett/Thesis/Vivado_WS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !11, metadata !13, metadata !25} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, null, metadata !"", metadata !4, i32 8, i64 3, i64 4, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!4 = metadata !{i32 786473, metadata !"aescbc/src/aescbc.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
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
!15 = metadata !{i32 786478, i32 0, metadata !16, metadata !"aescbc", metadata !"aescbc", metadata !"", metadata !16, i32 8, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i3, i8*, i8*)* @aescbc, null, null, metadata !23, i32 11} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786473, metadata !"aescbc/src/aescbc.c", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{null, metadata !19, metadata !20, metadata !20}
!19 = metadata !{i32 786454, null, metadata !"ciphermode_t", metadata !16, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ]
!20 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ]
!21 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !16, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ]
!22 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !27, metadata !32, metadata !34, metadata !35, metadata !36, metadata !40, metadata !48, metadata !51, metadata !52, metadata !53}
!27 = metadata !{i32 786484, i32 0, metadata !15, metadata !"zeros", metadata !"zeros", metadata !"", metadata !16, i32 19, metadata !28, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!28 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !29, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!29 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_const_type ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!32 = metadata !{i32 786484, i32 0, metadata !15, metadata !"lastbuf", metadata !"lastbuf", metadata !"", metadata !16, i32 22, metadata !33, i32 1, i32 1, [16 x i8]* @lastbuf} ; [ DW_TAG_variable ]
!33 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !21, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!34 = metadata !{i32 786484, i32 0, metadata !15, metadata !"iv", metadata !"iv", metadata !"", metadata !16, i32 23, metadata !33, i32 1, i32 1, [16 x i8]* @iv} ; [ DW_TAG_variable ]
!35 = metadata !{i32 786484, i32 0, metadata !15, metadata !"xorv", metadata !"xorv", metadata !"", metadata !16, i32 24, metadata !33, i32 1, i32 1, [16 x i8]* @xorv} ; [ DW_TAG_variable ]
!36 = metadata !{i32 786484, i32 0, metadata !15, metadata !"key", metadata !"key", metadata !"", metadata !16, i32 25, metadata !37, i32 1, i32 1, [32 x i8]* @key} ; [ DW_TAG_variable ]
!37 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !21, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ]
!38 = metadata !{metadata !39}
!39 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!40 = metadata !{i32 786484, i32 0, metadata !15, metadata !"ctx", metadata !"ctx", metadata !"", metadata !16, i32 26, metadata !41, i32 1, i32 1, %struct.aes_context.0* @ctx} ; [ DW_TAG_variable ]
!41 = metadata !{i32 786454, null, metadata !"aes_context", metadata !16, i32 33, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_typedef ]
!42 = metadata !{i32 786451, null, metadata !"", metadata !43, i32 29, i64 768, i64 8, i32 0, i32 0, null, metadata !44, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!43 = metadata !{i32 786473, metadata !"aescbc/src/aesecb.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!44 = metadata !{metadata !45, metadata !46, metadata !47}
!45 = metadata !{i32 786445, metadata !42, metadata !"key", metadata !43, i32 30, i64 256, i64 8, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ]
!46 = metadata !{i32 786445, metadata !42, metadata !"enckey", metadata !43, i32 31, i64 256, i64 8, i64 256, i32 0, metadata !37} ; [ DW_TAG_member ]
!47 = metadata !{i32 786445, metadata !42, metadata !"deckey", metadata !43, i32 32, i64 256, i64 8, i64 512, i32 0, metadata !37} ; [ DW_TAG_member ]
!48 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !49, i32 315, metadata !50, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!49 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!50 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !49, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!51 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !49, i32 316, metadata !50, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!52 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !49, i32 317, metadata !50, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!53 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !54, i32 26, metadata !55, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!54 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!55 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!56 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/brett/Thesis/Vivado_WS/aescbc/solution1/.autopilot/db/aesecb.pragma.2.c", metadata !"/home/brett/Thesis/Vivado_WS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !11, metadata !11, metadata !57, metadata !97} ; [ DW_TAG_compile_unit ]
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !59, metadata !73, metadata !76, metadata !77, metadata !78, metadata !81, metadata !84, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !96}
!59 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_init", metadata !"aes_init", metadata !"", metadata !60, i32 339, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !23, i32 340} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786473, metadata !"aescbc/src/aesecb.c", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!61 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!62 = metadata !{null, metadata !63, metadata !72}
!63 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ]
!64 = metadata !{i32 786454, null, metadata !"aes_context", metadata !60, i32 33, i64 0, i64 0, i64 0, i32 0, metadata !65} ; [ DW_TAG_typedef ]
!65 = metadata !{i32 786451, null, metadata !"", metadata !43, i32 29, i64 768, i64 8, i32 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!66 = metadata !{metadata !67, metadata !70, metadata !71}
!67 = metadata !{i32 786445, metadata !65, metadata !"key", metadata !43, i32 30, i64 256, i64 8, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ]
!68 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !69, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ]
!69 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !43, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ]
!70 = metadata !{i32 786445, metadata !65, metadata !"enckey", metadata !43, i32 31, i64 256, i64 8, i64 256, i32 0, metadata !68} ; [ DW_TAG_member ]
!71 = metadata !{i32 786445, metadata !65, metadata !"deckey", metadata !43, i32 32, i64 256, i64 8, i64 512, i32 0, metadata !68} ; [ DW_TAG_member ]
!72 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ]
!73 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_done", metadata !"aes_done", metadata !"", metadata !60, i32 349, metadata !74, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !23, i32 350} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!75 = metadata !{null, metadata !63}
!76 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_encrypt_ecb", metadata !"aes_encrypt_ecb", metadata !"", metadata !60, i32 358, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !23, i32 359} ; [ DW_TAG_subprogram ]
!77 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_decrypt_ecb", metadata !"aes_decrypt_ecb", metadata !"", metadata !60, i32 378, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !23, i32 379} ; [ DW_TAG_subprogram ]
!78 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_mixColumns_inv", metadata !"aes_mixColumns_inv", metadata !"", metadata !60, i32 270, metadata !79, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_mixColumns_inv, null, null, metadata !23, i32 271} ; [ DW_TAG_subprogram ]
!79 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!80 = metadata !{null, metadata !72}
!81 = metadata !{i32 786478, i32 0, metadata !60, metadata !"rj_xtime", metadata !"rj_xtime", metadata !"", metadata !60, i32 187, metadata !82, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i8)* @rj_xtime, null, null, metadata !23, i32 188} ; [ DW_TAG_subprogram ]
!82 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!83 = metadata !{metadata !69, metadata !69}
!84 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_expandDecKey", metadata !"aes_expandDecKey", metadata !"", metadata !60, i32 315, metadata !85, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*)* @aes_expandDecKey, null, null, metadata !23, i32 316} ; [ DW_TAG_subprogram ]
!85 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!86 = metadata !{null, metadata !72, metadata !72}
!87 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_subBytes_inv", metadata !"aes_subBytes_inv", metadata !"", metadata !60, i32 202, metadata !79, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_subBytes_inv, null, null, metadata !23, i32 203} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_shiftRows_inv", metadata !"aes_shiftRows_inv", metadata !"", metadata !60, i32 239, metadata !79, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_shiftRows_inv, null, null, metadata !23, i32 240} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_addRoundKey", metadata !"aes_addRoundKey", metadata !"", metadata !60, i32 210, metadata !85, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*)* @aes_addRoundKey, null, null, metadata !23, i32 211} ; [ DW_TAG_subprogram ]
!90 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_mixColumns", metadata !"aes_mixColumns", metadata !"", metadata !60, i32 251, metadata !79, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_mixColumns, null, null, metadata !23, i32 252} ; [ DW_TAG_subprogram ]
!91 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_shiftRows", metadata !"aes_shiftRows", metadata !"", metadata !60, i32 227, metadata !79, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_shiftRows, null, null, metadata !23, i32 228} ; [ DW_TAG_subprogram ]
!92 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_subBytes", metadata !"aes_subBytes", metadata !"", metadata !60, i32 194, metadata !79, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_subBytes, null, null, metadata !23, i32 195} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_addRoundKey_cpy", metadata !"aes_addRoundKey_cpy", metadata !"", metadata !60, i32 218, metadata !94, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i8*)* @aes_addRoundKey_cpy, null, null, metadata !23, i32 219} ; [ DW_TAG_subprogram ]
!94 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !95, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!95 = metadata !{null, metadata !72, metadata !72, metadata !72}
!96 = metadata !{i32 786478, i32 0, metadata !60, metadata !"aes_expandEncKey", metadata !"aes_expandEncKey", metadata !"", metadata !60, i32 292, metadata !85, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*)* @aes_expandEncKey, null, null, metadata !23, i32 293} ; [ DW_TAG_subprogram ]
!97 = metadata !{metadata !98}
!98 = metadata !{metadata !99, metadata !104}
!99 = metadata !{i32 786484, i32 0, null, metadata !"sbox", metadata !"sbox", metadata !"", metadata !60, i32 47, metadata !100, i32 1, i32 1, [256 x i8]* @sbox} ; [ DW_TAG_variable ]
!100 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !101, metadata !102, i32 0, i32 0} ; [ DW_TAG_array_type ]
!101 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_const_type ]
!102 = metadata !{metadata !103}
!103 = metadata !{i32 786465, i64 0, i64 255}     ; [ DW_TAG_subrange_type ]
!104 = metadata !{i32 786484, i32 0, null, metadata !"sboxinv", metadata !"sboxinv", metadata !"", metadata !60, i32 82, metadata !100, i32 1, i32 1, [256 x i8]* @sboxinv} ; [ DW_TAG_variable ]
!105 = metadata !{void (i3, i8*, i8*)* @aescbc, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111}
!106 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1}
!107 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"ciphermode_t", metadata !"uint8_t*", metadata !"uint8_t*"}
!109 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!110 = metadata !{metadata !"kernel_arg_name", metadata !"mode", metadata !"data_in", metadata !"data_out"}
!111 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!112 = metadata !{null, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !111}
!113 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!114 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!115 = metadata !{metadata !"kernel_arg_type", metadata !"aes_context*", metadata !"uint8_t*"}
!116 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!117 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"k"}
!118 = metadata !{null, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !111}
!119 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!120 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!121 = metadata !{metadata !"kernel_arg_type", metadata !"aes_context*"}
!122 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!123 = metadata !{metadata !"kernel_arg_name", metadata !"ctx"}
!124 = metadata !{null, metadata !113, metadata !114, metadata !115, metadata !116, metadata !125, metadata !111}
!125 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"buf"}
!126 = metadata !{void (i8*)* @aes_mixColumns_inv, metadata !119, metadata !120, metadata !127, metadata !122, metadata !128, metadata !111}
!127 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*"}
!128 = metadata !{metadata !"kernel_arg_name", metadata !"buf"}
!129 = metadata !{i8 (i8)* @rj_xtime, metadata !130, metadata !120, metadata !131, metadata !122, metadata !132, metadata !111}
!130 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!131 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t"}
!132 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!133 = metadata !{void (i8*, i8*)* @aes_expandDecKey, metadata !113, metadata !114, metadata !134, metadata !116, metadata !135, metadata !111}
!134 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint8_t*"}
!135 = metadata !{metadata !"kernel_arg_name", metadata !"k", metadata !"rc"}
!136 = metadata !{void (i8*)* @aes_subBytes_inv, metadata !119, metadata !120, metadata !127, metadata !122, metadata !128, metadata !111}
!137 = metadata !{void (i8*)* @aes_shiftRows_inv, metadata !119, metadata !120, metadata !127, metadata !122, metadata !128, metadata !111}
!138 = metadata !{void (i8*, i8*)* @aes_addRoundKey, metadata !113, metadata !114, metadata !134, metadata !116, metadata !139, metadata !111}
!139 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"key"}
!140 = metadata !{void (i8*)* @aes_mixColumns, metadata !119, metadata !120, metadata !127, metadata !122, metadata !128, metadata !111}
!141 = metadata !{void (i8*)* @aes_shiftRows, metadata !119, metadata !120, metadata !127, metadata !122, metadata !128, metadata !111}
!142 = metadata !{void (i8*)* @aes_subBytes, metadata !119, metadata !120, metadata !127, metadata !122, metadata !128, metadata !111}
!143 = metadata !{void (i8*, i8*, i8*)* @aes_addRoundKey_cpy, metadata !144, metadata !107, metadata !145, metadata !109, metadata !146, metadata !111}
!144 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!145 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint8_t*", metadata !"uint8_t*"}
!146 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"key", metadata !"cpk"}
!147 = metadata !{void (i8*, i8*)* @aes_expandEncKey, metadata !113, metadata !114, metadata !134, metadata !116, metadata !135, metadata !111}
!148 = metadata !{i32 786689, metadata !81, metadata !"x", metadata !60, i32 16777403, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!149 = metadata !{i32 187, i32 33, metadata !81, null}
!150 = metadata !{i32 189, i32 34, metadata !151, null}
!151 = metadata !{i32 786443, metadata !81, i32 188, i32 1, metadata !60, i32 15} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 786688, metadata !151, metadata !"y", metadata !60, i32 189, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!153 = metadata !{i32 190, i32 5, metadata !151, null}
!154 = metadata !{i32 786689, metadata !15, metadata !"mode", metadata !16, i32 16777224, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!155 = metadata !{i32 8, i32 26, metadata !15, null}
!156 = metadata !{i32 786689, metadata !15, metadata !"data_in", metadata !16, i32 33554441, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!157 = metadata !{i32 9, i32 12, metadata !15, null}
!158 = metadata !{i32 786689, metadata !15, metadata !"data_out", metadata !16, i32 50331658, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!159 = metadata !{i32 10, i32 12, metadata !15, null}
!160 = metadata !{i32 11, i32 2, metadata !161, null}
!161 = metadata !{i32 786443, metadata !15, i32 11, i32 1, metadata !16, i32 0} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 11, i32 38, metadata !161, null}
!163 = metadata !{i32 14, i32 1, metadata !161, null}
!164 = metadata !{i32 15, i32 1, metadata !161, null}
!165 = metadata !{i32 16, i32 1, metadata !161, null}
!166 = metadata !{i32 17, i32 1, metadata !161, null}
!167 = metadata !{i32 786688, metadata !161, metadata !"buf", metadata !16, i32 21, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!168 = metadata !{i32 21, i32 10, metadata !161, null}
!169 = metadata !{i32 29, i32 5, metadata !161, null}
!170 = metadata !{i32 33, i32 7, metadata !171, null}
!171 = metadata !{i32 786443, metadata !172, i32 33, i32 3, metadata !16, i32 2} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 786443, metadata !161, i32 29, i32 20, metadata !16, i32 1} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 45, i32 10, metadata !174, null}
!174 = metadata !{i32 786443, metadata !172, i32 45, i32 6, metadata !16, i32 6} ; [ DW_TAG_lexical_block ]
!175 = metadata !{i32 61, i32 10, metadata !176, null}
!176 = metadata !{i32 786443, metadata !172, i32 61, i32 6, metadata !16, i32 10} ; [ DW_TAG_lexical_block ]
!177 = metadata !{i32 81, i32 7, metadata !178, null}
!178 = metadata !{i32 786443, metadata !172, i32 81, i32 3, metadata !16, i32 15} ; [ DW_TAG_lexical_block ]
!179 = metadata !{i32 91, i32 7, metadata !180, null}
!180 = metadata !{i32 786443, metadata !172, i32 91, i32 3, metadata !16, i32 19} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 37, i32 7, metadata !182, null}
!182 = metadata !{i32 786443, metadata !172, i32 37, i32 3, metadata !16, i32 4} ; [ DW_TAG_lexical_block ]
!183 = metadata !{i32 34, i32 7, metadata !184, null}
!184 = metadata !{i32 786443, metadata !171, i32 34, i32 7, metadata !16, i32 3} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 34, i32 21, metadata !184, null}
!186 = metadata !{i32 33, i32 18, metadata !171, null}
!187 = metadata !{i32 786688, metadata !161, metadata !"i", metadata !16, i32 27, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!188 = metadata !{i32 38, i32 7, metadata !189, null}
!189 = metadata !{i32 786443, metadata !182, i32 38, i32 7, metadata !16, i32 5} ; [ DW_TAG_lexical_block ]
!190 = metadata !{i32 38, i32 21, metadata !189, null}
!191 = metadata !{i32 37, i32 18, metadata !182, null}
!192 = metadata !{i32 40, i32 3, metadata !172, null}
!193 = metadata !{i32 41, i32 6, metadata !172, null}
!194 = metadata !{i32 48, i32 10, metadata !195, null}
!195 = metadata !{i32 786443, metadata !172, i32 48, i32 6, metadata !16, i32 7} ; [ DW_TAG_lexical_block ]
!196 = metadata !{i32 46, i32 7, metadata !174, null}
!197 = metadata !{i32 45, i32 21, metadata !174, null}
!198 = metadata !{i32 49, i32 7, metadata !195, null}
!199 = metadata !{i32 48, i32 21, metadata !195, null}
!200 = metadata !{i32 51, i32 6, metadata !172, null}
!201 = metadata !{i32 53, i32 10, metadata !202, null}
!202 = metadata !{i32 786443, metadata !172, i32 53, i32 6, metadata !16, i32 8} ; [ DW_TAG_lexical_block ]
!203 = metadata !{i32 56, i32 10, metadata !204, null}
!204 = metadata !{i32 786443, metadata !172, i32 56, i32 6, metadata !16, i32 9} ; [ DW_TAG_lexical_block ]
!205 = metadata !{i32 54, i32 7, metadata !202, null}
!206 = metadata !{i32 53, i32 21, metadata !202, null}
!207 = metadata !{i32 57, i32 7, metadata !204, null}
!208 = metadata !{i32 56, i32 21, metadata !204, null}
!209 = metadata !{i32 64, i32 10, metadata !210, null}
!210 = metadata !{i32 786443, metadata !172, i32 64, i32 6, metadata !16, i32 11} ; [ DW_TAG_lexical_block ]
!211 = metadata !{i32 62, i32 7, metadata !176, null}
!212 = metadata !{i32 61, i32 21, metadata !176, null}
!213 = metadata !{i32 65, i32 7, metadata !210, null}
!214 = metadata !{i32 64, i32 21, metadata !210, null}
!215 = metadata !{i32 67, i32 6, metadata !172, null}
!216 = metadata !{i32 69, i32 10, metadata !217, null}
!217 = metadata !{i32 786443, metadata !172, i32 69, i32 6, metadata !16, i32 12} ; [ DW_TAG_lexical_block ]
!218 = metadata !{i32 72, i32 10, metadata !219, null}
!219 = metadata !{i32 786443, metadata !172, i32 72, i32 6, metadata !16, i32 13} ; [ DW_TAG_lexical_block ]
!220 = metadata !{i32 70, i32 7, metadata !217, null}
!221 = metadata !{i32 69, i32 21, metadata !217, null}
!222 = metadata !{i32 75, i32 10, metadata !223, null}
!223 = metadata !{i32 786443, metadata !172, i32 75, i32 6, metadata !16, i32 14} ; [ DW_TAG_lexical_block ]
!224 = metadata !{i32 73, i32 7, metadata !219, null}
!225 = metadata !{i32 72, i32 21, metadata !219, null}
!226 = metadata !{i32 76, i32 7, metadata !223, null}
!227 = metadata !{i32 75, i32 21, metadata !223, null}
!228 = metadata !{i32 85, i32 7, metadata !229, null}
!229 = metadata !{i32 786443, metadata !172, i32 85, i32 3, metadata !16, i32 17} ; [ DW_TAG_lexical_block ]
!230 = metadata !{i32 82, i32 7, metadata !231, null}
!231 = metadata !{i32 786443, metadata !178, i32 82, i32 7, metadata !16, i32 16} ; [ DW_TAG_lexical_block ]
!232 = metadata !{i32 82, i32 24, metadata !231, null}
!233 = metadata !{i32 81, i32 18, metadata !178, null}
!234 = metadata !{i32 86, i32 4, metadata !235, null}
!235 = metadata !{i32 786443, metadata !229, i32 86, i32 4, metadata !16, i32 18} ; [ DW_TAG_lexical_block ]
!236 = metadata !{i32 86, i32 18, metadata !235, null}
!237 = metadata !{i32 85, i32 18, metadata !229, null}
!238 = metadata !{i32 95, i32 7, metadata !239, null}
!239 = metadata !{i32 786443, metadata !172, i32 95, i32 3, metadata !16, i32 21} ; [ DW_TAG_lexical_block ]
!240 = metadata !{i32 92, i32 4, metadata !241, null}
!241 = metadata !{i32 786443, metadata !180, i32 92, i32 4, metadata !16, i32 20} ; [ DW_TAG_lexical_block ]
!242 = metadata !{i32 92, i32 22, metadata !241, null}
!243 = metadata !{i32 91, i32 18, metadata !180, null}
!244 = metadata !{i32 96, i32 4, metadata !245, null}
!245 = metadata !{i32 786443, metadata !239, i32 96, i32 4, metadata !16, i32 22} ; [ DW_TAG_lexical_block ]
!246 = metadata !{i32 96, i32 18, metadata !245, null}
!247 = metadata !{i32 95, i32 18, metadata !239, null}
!248 = metadata !{i32 99, i32 1, metadata !161, null}
!249 = metadata !{i32 786689, metadata !87, metadata !"buf", metadata !60, i32 16777418, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!250 = metadata !{i32 202, i32 39, metadata !87, null}
!251 = metadata !{i32 206, i32 5, metadata !252, null}
!252 = metadata !{i32 786443, metadata !87, i32 203, i32 1, metadata !60, i32 19} ; [ DW_TAG_lexical_block ]
!253 = metadata !{i32 786688, metadata !252, metadata !"i", metadata !60, i32 204, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!254 = metadata !{i32 206, i32 17, metadata !252, null}
!255 = metadata !{i32 207, i32 1, metadata !252, null}
!256 = metadata !{i32 786689, metadata !92, metadata !"buf", metadata !60, i32 16777410, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!257 = metadata !{i32 194, i32 35, metadata !92, null}
!258 = metadata !{i32 198, i32 5, metadata !259, null}
!259 = metadata !{i32 786443, metadata !92, i32 195, i32 1, metadata !60, i32 26} ; [ DW_TAG_lexical_block ]
!260 = metadata !{i32 786688, metadata !259, metadata !"i", metadata !60, i32 196, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!261 = metadata !{i32 198, i32 17, metadata !259, null}
!262 = metadata !{i32 199, i32 1, metadata !259, null}
!263 = metadata !{i32 786689, metadata !88, metadata !"buf", metadata !60, i32 16777455, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!264 = metadata !{i32 239, i32 40, metadata !88, null}
!265 = metadata !{i32 243, i32 5, metadata !266, null}
!266 = metadata !{i32 786443, metadata !88, i32 240, i32 1, metadata !60, i32 20} ; [ DW_TAG_lexical_block ]
!267 = metadata !{i32 786688, metadata !266, metadata !"i", metadata !60, i32 241, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!268 = metadata !{i32 244, i32 5, metadata !266, null}
!269 = metadata !{i32 245, i32 5, metadata !266, null}
!270 = metadata !{i32 786688, metadata !266, metadata !"j", metadata !60, i32 241, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!271 = metadata !{i32 246, i32 5, metadata !266, null}
!272 = metadata !{i32 248, i32 1, metadata !266, null}
!273 = metadata !{i32 786689, metadata !91, metadata !"buf", metadata !60, i32 16777443, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!274 = metadata !{i32 227, i32 36, metadata !91, null}
!275 = metadata !{i32 231, i32 5, metadata !276, null}
!276 = metadata !{i32 786443, metadata !91, i32 228, i32 1, metadata !60, i32 25} ; [ DW_TAG_lexical_block ]
!277 = metadata !{i32 786688, metadata !276, metadata !"i", metadata !60, i32 229, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!278 = metadata !{i32 232, i32 5, metadata !276, null}
!279 = metadata !{i32 233, i32 5, metadata !276, null}
!280 = metadata !{i32 786688, metadata !276, metadata !"j", metadata !60, i32 229, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!281 = metadata !{i32 234, i32 5, metadata !276, null}
!282 = metadata !{i32 236, i32 1, metadata !276, null}
!283 = metadata !{i32 786689, metadata !78, metadata !"buf", metadata !60, i32 16777486, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!284 = metadata !{i32 270, i32 34, metadata !78, null}
!285 = metadata !{i32 274, i32 10, metadata !286, null}
!286 = metadata !{i32 786443, metadata !287, i32 274, i32 5, metadata !60, i32 13} ; [ DW_TAG_lexical_block ]
!287 = metadata !{i32 786443, metadata !78, i32 271, i32 1, metadata !60, i32 12} ; [ DW_TAG_lexical_block ]
!288 = metadata !{i32 276, i32 9, metadata !289, null}
!289 = metadata !{i32 786443, metadata !286, i32 275, i32 5, metadata !60, i32 14} ; [ DW_TAG_lexical_block ]
!290 = metadata !{i32 786688, metadata !287, metadata !"a", metadata !60, i32 272, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!291 = metadata !{i32 277, i32 9, metadata !289, null}
!292 = metadata !{i32 786688, metadata !287, metadata !"b", metadata !60, i32 272, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!293 = metadata !{i32 278, i32 9, metadata !289, null}
!294 = metadata !{i32 786688, metadata !287, metadata !"c", metadata !60, i32 272, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!295 = metadata !{i32 279, i32 9, metadata !289, null}
!296 = metadata !{i32 786688, metadata !287, metadata !"d", metadata !60, i32 272, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!297 = metadata !{i32 280, i32 9, metadata !289, null}
!298 = metadata !{i32 786688, metadata !287, metadata !"e", metadata !60, i32 272, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!299 = metadata !{i32 281, i32 13, metadata !289, null}
!300 = metadata !{i32 786688, metadata !287, metadata !"z", metadata !60, i32 272, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!301 = metadata !{i32 282, i32 26, metadata !289, null}
!302 = metadata !{i32 786688, metadata !287, metadata !"x", metadata !60, i32 272, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!303 = metadata !{i32 283, i32 26, metadata !289, null}
!304 = metadata !{i32 786688, metadata !287, metadata !"y", metadata !60, i32 272, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!305 = metadata !{i32 284, i32 23, metadata !289, null}
!306 = metadata !{i32 285, i32 27, metadata !289, null}
!307 = metadata !{i32 286, i32 27, metadata !289, null}
!308 = metadata !{i32 287, i32 27, metadata !289, null}
!309 = metadata !{i32 274, i32 25, metadata !286, null}
!310 = metadata !{i32 786688, metadata !287, metadata !"i", metadata !60, i32 272, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!311 = metadata !{i32 289, i32 1, metadata !287, null}
!312 = metadata !{i32 786689, metadata !90, metadata !"buf", metadata !60, i32 16777467, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!313 = metadata !{i32 251, i32 37, metadata !90, null}
!314 = metadata !{i32 255, i32 10, metadata !315, null}
!315 = metadata !{i32 786443, metadata !316, i32 255, i32 5, metadata !60, i32 23} ; [ DW_TAG_lexical_block ]
!316 = metadata !{i32 786443, metadata !90, i32 252, i32 1, metadata !60, i32 22} ; [ DW_TAG_lexical_block ]
!317 = metadata !{i32 257, i32 9, metadata !318, null}
!318 = metadata !{i32 786443, metadata !315, i32 256, i32 5, metadata !60, i32 24} ; [ DW_TAG_lexical_block ]
!319 = metadata !{i32 786688, metadata !316, metadata !"a", metadata !60, i32 253, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!320 = metadata !{i32 258, i32 9, metadata !318, null}
!321 = metadata !{i32 786688, metadata !316, metadata !"b", metadata !60, i32 253, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!322 = metadata !{i32 259, i32 9, metadata !318, null}
!323 = metadata !{i32 786688, metadata !316, metadata !"c", metadata !60, i32 253, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!324 = metadata !{i32 260, i32 9, metadata !318, null}
!325 = metadata !{i32 786688, metadata !316, metadata !"d", metadata !60, i32 253, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!326 = metadata !{i32 261, i32 9, metadata !318, null}
!327 = metadata !{i32 786688, metadata !316, metadata !"e", metadata !60, i32 253, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!328 = metadata !{i32 262, i32 23, metadata !318, null}
!329 = metadata !{i32 263, i32 27, metadata !318, null}
!330 = metadata !{i32 264, i32 27, metadata !318, null}
!331 = metadata !{i32 265, i32 27, metadata !318, null}
!332 = metadata !{i32 255, i32 25, metadata !315, null}
!333 = metadata !{i32 786688, metadata !316, metadata !"i", metadata !60, i32 253, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!334 = metadata !{i32 267, i32 1, metadata !316, null}
!335 = metadata !{i32 786689, metadata !59, metadata !"k", metadata !60, i32 33554771, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!336 = metadata !{i32 339, i32 42, metadata !59, null}
!337 = metadata !{i32 786688, metadata !338, metadata !"rcon", metadata !60, i32 341, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!338 = metadata !{i32 786443, metadata !59, i32 340, i32 1, metadata !60, i32 0} ; [ DW_TAG_lexical_block ]
!339 = metadata !{i32 341, i32 13, metadata !338, null}
!340 = metadata !{i32 341, i32 21, metadata !338, null}
!341 = metadata !{i32 344, i32 10, metadata !342, null}
!342 = metadata !{i32 786443, metadata !338, i32 344, i32 5, metadata !60, i32 1} ; [ DW_TAG_lexical_block ]
!343 = metadata !{i32 345, i32 10, metadata !344, null}
!344 = metadata !{i32 786443, metadata !338, i32 345, i32 5, metadata !60, i32 2} ; [ DW_TAG_lexical_block ]
!345 = metadata !{i32 344, i32 44, metadata !342, null}
!346 = metadata !{i32 344, i32 39, metadata !342, null}
!347 = metadata !{i32 786688, metadata !338, metadata !"i", metadata !60, i32 342, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!348 = metadata !{i32 345, i32 23, metadata !344, null}
!349 = metadata !{i32 346, i32 1, metadata !338, null}
!350 = metadata !{i32 786689, metadata !96, metadata !"k", metadata !60, i32 16777508, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!351 = metadata !{i32 292, i32 39, metadata !96, null}
!352 = metadata !{i32 786689, metadata !96, metadata !"rc", metadata !60, i32 33554724, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!353 = metadata !{i32 292, i32 51, metadata !96, null}
!354 = metadata !{i32 296, i32 5, metadata !355, null}
!355 = metadata !{i32 786443, metadata !96, i32 293, i32 1, metadata !60, i32 28} ; [ DW_TAG_lexical_block ]
!356 = metadata !{i32 297, i32 5, metadata !355, null}
!357 = metadata !{i32 298, i32 5, metadata !355, null}
!358 = metadata !{i32 299, i32 5, metadata !355, null}
!359 = metadata !{i32 300, i32 11, metadata !355, null}
!360 = metadata !{i32 302, i32 9, metadata !361, null}
!361 = metadata !{i32 786443, metadata !355, i32 302, i32 5, metadata !60, i32 29} ; [ DW_TAG_lexical_block ]
!362 = metadata !{i32 302, i32 32, metadata !361, null}
!363 = metadata !{i32 302, i32 24, metadata !361, null}
!364 = metadata !{i32 786688, metadata !355, metadata !"i", metadata !60, i32 294, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!365 = metadata !{i32 304, i32 5, metadata !355, null}
!366 = metadata !{i32 305, i32 5, metadata !355, null}
!367 = metadata !{i32 306, i32 5, metadata !355, null}
!368 = metadata !{i32 307, i32 5, metadata !355, null}
!369 = metadata !{i32 309, i32 9, metadata !370, null}
!370 = metadata !{i32 786443, metadata !355, i32 309, i32 5, metadata !60, i32 30} ; [ DW_TAG_lexical_block ]
!371 = metadata !{i32 309, i32 33, metadata !370, null}
!372 = metadata !{i32 309, i32 25, metadata !370, null}
!373 = metadata !{i32 312, i32 1, metadata !355, null}
!374 = metadata !{i32 786689, metadata !84, metadata !"k", metadata !60, i32 16777531, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!375 = metadata !{i32 315, i32 32, metadata !84, null}
!376 = metadata !{i32 786689, metadata !84, metadata !"rc", metadata !60, i32 33554747, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!377 = metadata !{i32 315, i32 44, metadata !84, null}
!378 = metadata !{i32 319, i32 9, metadata !379, null}
!379 = metadata !{i32 786443, metadata !380, i32 319, i32 5, metadata !60, i32 17} ; [ DW_TAG_lexical_block ]
!380 = metadata !{i32 786443, metadata !84, i32 316, i32 1, metadata !60, i32 16} ; [ DW_TAG_lexical_block ]
!381 = metadata !{i32 319, i32 33, metadata !379, null}
!382 = metadata !{i32 319, i32 25, metadata !379, null}
!383 = metadata !{i32 786688, metadata !380, metadata !"i", metadata !60, i32 317, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!384 = metadata !{i32 322, i32 5, metadata !380, null}
!385 = metadata !{i32 323, i32 5, metadata !380, null}
!386 = metadata !{i32 324, i32 5, metadata !380, null}
!387 = metadata !{i32 325, i32 5, metadata !380, null}
!388 = metadata !{i32 327, i32 9, metadata !389, null}
!389 = metadata !{i32 786443, metadata !380, i32 327, i32 5, metadata !60, i32 18} ; [ DW_TAG_lexical_block ]
!390 = metadata !{i32 327, i32 32, metadata !389, null}
!391 = metadata !{i32 327, i32 24, metadata !389, null}
!392 = metadata !{i32 330, i32 5, metadata !380, null}
!393 = metadata !{i32 331, i32 5, metadata !380, null}
!394 = metadata !{i32 332, i32 5, metadata !380, null}
!395 = metadata !{i32 333, i32 5, metadata !380, null}
!396 = metadata !{i32 334, i32 5, metadata !380, null}
!397 = metadata !{i32 335, i32 1, metadata !380, null}
!398 = metadata !{i32 786689, metadata !76, metadata !"buf", metadata !60, i32 33554790, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!399 = metadata !{i32 358, i32 49, metadata !76, null}
!400 = metadata !{i32 786688, metadata !401, metadata !"rcon", metadata !60, i32 360, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!401 = metadata !{i32 786443, metadata !76, i32 359, i32 1, metadata !60, i32 5} ; [ DW_TAG_lexical_block ]
!402 = metadata !{i32 360, i32 16, metadata !401, null}
!403 = metadata !{i32 362, i32 5, metadata !401, null}
!404 = metadata !{i32 363, i32 9, metadata !405, null}
!405 = metadata !{i32 786443, metadata !401, i32 363, i32 5, metadata !60, i32 6} ; [ DW_TAG_lexical_block ]
!406 = metadata !{i32 365, i32 9, metadata !407, null}
!407 = metadata !{i32 786443, metadata !405, i32 364, i32 5, metadata !60, i32 7} ; [ DW_TAG_lexical_block ]
!408 = metadata !{i32 366, i32 9, metadata !407, null}
!409 = metadata !{i32 367, i32 9, metadata !407, null}
!410 = metadata !{i32 368, i32 9, metadata !407, null}
!411 = metadata !{i32 368, i32 21, metadata !407, null}
!412 = metadata !{i32 369, i32 14, metadata !407, null}
!413 = metadata !{i32 369, i32 49, metadata !407, null}
!414 = metadata !{i32 363, i32 34, metadata !405, null}
!415 = metadata !{i32 786688, metadata !401, metadata !"i", metadata !60, i32 360, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!416 = metadata !{i32 371, i32 5, metadata !401, null}
!417 = metadata !{i32 372, i32 5, metadata !401, null}
!418 = metadata !{i32 373, i32 5, metadata !401, null}
!419 = metadata !{i32 374, i32 5, metadata !401, null}
!420 = metadata !{i32 375, i32 1, metadata !401, null}
!421 = metadata !{i32 786689, metadata !77, metadata !"buf", metadata !60, i32 33554810, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!422 = metadata !{i32 378, i32 49, metadata !77, null}
!423 = metadata !{i32 786688, metadata !424, metadata !"rcon", metadata !60, i32 380, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!424 = metadata !{i32 786443, metadata !77, i32 379, i32 1, metadata !60, i32 8} ; [ DW_TAG_lexical_block ]
!425 = metadata !{i32 380, i32 16, metadata !424, null}
!426 = metadata !{i32 382, i32 5, metadata !424, null}
!427 = metadata !{i32 383, i32 5, metadata !424, null}
!428 = metadata !{i32 384, i32 5, metadata !424, null}
!429 = metadata !{i32 386, i32 10, metadata !430, null}
!430 = metadata !{i32 786443, metadata !424, i32 386, i32 5, metadata !60, i32 9} ; [ DW_TAG_lexical_block ]
!431 = metadata !{i32 786688, metadata !424, metadata !"i", metadata !60, i32 380, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!432 = metadata !{i32 388, i32 9, metadata !433, null}
!433 = metadata !{i32 786443, metadata !430, i32 387, i32 5, metadata !60, i32 10} ; [ DW_TAG_lexical_block ]
!434 = metadata !{i32 390, i32 13, metadata !435, null}
!435 = metadata !{i32 786443, metadata !433, i32 389, i32 9, metadata !60, i32 11} ; [ DW_TAG_lexical_block ]
!436 = metadata !{i32 391, i32 13, metadata !435, null}
!437 = metadata !{i32 392, i32 9, metadata !435, null}
!438 = metadata !{i32 393, i32 14, metadata !433, null}
!439 = metadata !{i32 394, i32 9, metadata !433, null}
!440 = metadata !{i32 395, i32 9, metadata !433, null}
!441 = metadata !{i32 396, i32 9, metadata !433, null}
!442 = metadata !{i32 397, i32 5, metadata !433, null}
!443 = metadata !{i32 398, i32 5, metadata !424, null}
!444 = metadata !{i32 399, i32 1, metadata !424, null}
!445 = metadata !{i32 786689, metadata !93, metadata !"buf", metadata !60, i32 16777434, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!446 = metadata !{i32 218, i32 42, metadata !93, null}
!447 = metadata !{i32 786689, metadata !93, metadata !"key", metadata !60, i32 33554650, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!448 = metadata !{i32 218, i32 56, metadata !93, null}
!449 = metadata !{i32 786689, metadata !93, metadata !"cpk", metadata !60, i32 50331866, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!450 = metadata !{i32 218, i32 70, metadata !93, null}
!451 = metadata !{i32 222, i32 5, metadata !452, null}
!452 = metadata !{i32 786443, metadata !93, i32 219, i32 1, metadata !60, i32 27} ; [ DW_TAG_lexical_block ]
!453 = metadata !{i32 786688, metadata !452, metadata !"i", metadata !60, i32 220, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!454 = metadata !{i32 222, i32 17, metadata !452, null}
!455 = metadata !{i32 223, i32 1, metadata !452, null}
!456 = metadata !{i32 786689, metadata !89, metadata !"buf", metadata !60, i32 16777426, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!457 = metadata !{i32 210, i32 38, metadata !89, null}
!458 = metadata !{i32 786689, metadata !89, metadata !"key", metadata !60, i32 33554642, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!459 = metadata !{i32 210, i32 52, metadata !89, null}
!460 = metadata !{i32 214, i32 5, metadata !461, null}
!461 = metadata !{i32 786443, metadata !89, i32 211, i32 1, metadata !60, i32 21} ; [ DW_TAG_lexical_block ]
!462 = metadata !{i32 786688, metadata !461, metadata !"i", metadata !60, i32 212, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!463 = metadata !{i32 214, i32 17, metadata !461, null}
!464 = metadata !{i32 215, i32 1, metadata !461, null}
