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
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]

; [#uses=14]
define internal fastcc zeroext i8 @rj_xtime(i8 zeroext %x) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8 %x}, i64 0, metadata !147), !dbg !148 ; [debug line = 187:33] [debug variable = x]
  %y = shl i8 %x, 1, !dbg !149                    ; [#uses=2 type=i8] [debug line = 189:34]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !151), !dbg !149 ; [debug line = 189:34] [debug variable = y]
  %tmp = icmp slt i8 %x, 0, !dbg !152             ; [#uses=1 type=i1] [debug line = 190:5]
  %tmp.1 = xor i8 %y, 27, !dbg !152               ; [#uses=1 type=i8] [debug line = 190:5]
  %y.1 = select i1 %tmp, i8 %tmp.1, i8 %y, !dbg !152 ; [#uses=1 type=i8] [debug line = 190:5]
  call void @llvm.dbg.value(metadata !{i8 %y.1}, i64 0, metadata !151), !dbg !152 ; [debug line = 190:5] [debug variable = y]
  ret i8 %y.1, !dbg !152                          ; [debug line = 190:5]
}

; [#uses=74]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=4]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @aescbc(i8* %data_in, i8* %data_out, i3 zeroext %mode, i8* %key_in, i8* %iv_in) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @aescbc.str) nounwind
  %buf = alloca [16 x i8], align 16               ; [#uses=10 type=[16 x i8]*]
  call void @llvm.dbg.value(metadata !{i8* %data_in}, i64 0, metadata !153), !dbg !154 ; [debug line = 8:21] [debug variable = data_in]
  call void @llvm.dbg.value(metadata !{i8* %data_out}, i64 0, metadata !155), !dbg !156 ; [debug line = 9:12] [debug variable = data_out]
  call void @llvm.dbg.value(metadata !{i3 %mode}, i64 0, metadata !157), !dbg !158 ; [debug line = 10:20] [debug variable = mode]
  call void @llvm.dbg.value(metadata !{i8* %key_in}, i64 0, metadata !159), !dbg !160 ; [debug line = 11:12] [debug variable = key_in]
  call void @llvm.dbg.value(metadata !{i8* %iv_in}, i64 0, metadata !161), !dbg !162 ; [debug line = 12:12] [debug variable = iv_in]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %iv_in, i32 16) nounwind, !dbg !163 ; [debug line = 13:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %key_in, i32 32) nounwind, !dbg !165 ; [debug line = 13:35]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %data_out, i32 16) nounwind, !dbg !166 ; [debug line = 13:69]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %data_in, i32 16) nounwind, !dbg !167 ; [debug line = 13:105]
  call void (...)* @_ssdm_op_SpecInterface(i8* %key_in, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 32, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !168 ; [debug line = 14:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %iv_in, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !169 ; [debug line = 15:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %data_in, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !170 ; [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %data_out, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !171 ; [debug line = 17:1]
  %tmp = zext i3 %mode to i32, !dbg !172          ; [#uses=2 type=i32] [debug line = 18:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %tmp, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !172 ; [debug line = 18:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !173 ; [debug line = 19:1]
  call void @llvm.dbg.declare(metadata !{[16 x i8]* %buf}, metadata !174), !dbg !175 ; [debug line = 21:10] [debug variable = buf]
  switch i32 %tmp, label %.loopexit [
    i32 0, label %.preheader11.preheader
    i32 1, label %.preheader7.preheader
    i32 2, label %.preheader3.preheader
  ], !dbg !176                                    ; [debug line = 29:5]

.preheader11.preheader:                           ; preds = %0
  br label %.preheader11, !dbg !177               ; [debug line = 32:25]

.preheader7.preheader:                            ; preds = %0
  br label %.preheader7, !dbg !180                ; [debug line = 45:25]

.preheader3.preheader:                            ; preds = %0
  br label %.preheader3, !dbg !182                ; [debug line = 61:24]

.preheader11:                                     ; preds = %1, %.preheader11.preheader
  %i = phi i8 [ %i.13, %1 ], [ 0, %.preheader11.preheader ] ; [#uses=3 type=i8]
  %tmp.3 = icmp eq i8 %i, 16, !dbg !177           ; [#uses=1 type=i1] [debug line = 32:25]
  br i1 %tmp.3, label %.preheader10.preheader, label %1, !dbg !177 ; [debug line = 32:25]

.preheader10.preheader:                           ; preds = %.preheader11
  br label %.preheader10, !dbg !184               ; [debug line = 34:21]

; <label>:1                                       ; preds = %.preheader11
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !186 ; [debug line = 33:7]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !186 ; [#uses=1 type=i32] [debug line = 33:7]
  %tmp.6 = zext i8 %i to i64, !dbg !186           ; [#uses=1 type=i64] [debug line = 33:7]
  %data_out.addr = getelementptr inbounds i8* %data_out, i64 %tmp.6, !dbg !186 ; [#uses=1 type=i8*] [debug line = 33:7]
  store i8 0, i8* %data_out.addr, align 1, !dbg !186 ; [debug line = 33:7]
  %rend23 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str2, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !188 ; [#uses=0 type=i32] [debug line = 33:21]
  %i.13 = add i8 %i, 1, !dbg !189                 ; [#uses=1 type=i8] [debug line = 32:36]
  call void @llvm.dbg.value(metadata !{i8 %i.13}, i64 0, metadata !190), !dbg !189 ; [debug line = 32:36] [debug variable = i]
  br label %.preheader11, !dbg !189               ; [debug line = 32:36]

.preheader10:                                     ; preds = %2, %.preheader10.preheader
  %i.1 = phi i8 [ %i.16, %2 ], [ 0, %.preheader10.preheader ] ; [#uses=3 type=i8]
  %tmp.12 = icmp eq i8 %i.1, 32, !dbg !184        ; [#uses=1 type=i1] [debug line = 34:21]
  br i1 %tmp.12, label %.preheader9.preheader, label %2, !dbg !184 ; [debug line = 34:21]

.preheader9.preheader:                            ; preds = %.preheader10
  br label %.preheader9, !dbg !191                ; [debug line = 36:25]

; <label>:2                                       ; preds = %.preheader10
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !193 ; [debug line = 35:4]
  %rbegin4 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !193 ; [#uses=1 type=i32] [debug line = 35:4]
  %tmp.15 = zext i8 %i.1 to i64, !dbg !193        ; [#uses=2 type=i64] [debug line = 35:4]
  %key_in.addr = getelementptr inbounds i8* %key_in, i64 %tmp.15, !dbg !193 ; [#uses=1 type=i8*] [debug line = 35:4]
  %key_in.load = load i8* %key_in.addr, align 1, !dbg !193 ; [#uses=2 type=i8] [debug line = 35:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %key_in.load) nounwind
  %key.addr = getelementptr inbounds [32 x i8]* @key, i64 0, i64 %tmp.15, !dbg !193 ; [#uses=1 type=i8*] [debug line = 35:4]
  store i8 %key_in.load, i8* %key.addr, align 1, !dbg !193 ; [debug line = 35:4]
  %rend29 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0), i32 %rbegin4) nounwind, !dbg !195 ; [#uses=0 type=i32] [debug line = 35:21]
  %i.16 = add i8 %i.1, 1, !dbg !196               ; [#uses=1 type=i8] [debug line = 34:32]
  call void @llvm.dbg.value(metadata !{i8 %i.16}, i64 0, metadata !190), !dbg !196 ; [debug line = 34:32] [debug variable = i]
  br label %.preheader10, !dbg !196               ; [debug line = 34:32]

.preheader9:                                      ; preds = %3, %.preheader9.preheader
  %i.2 = phi i8 [ %i.19, %3 ], [ 0, %.preheader9.preheader ] ; [#uses=3 type=i8]
  %tmp.22 = icmp eq i8 %i.2, 16, !dbg !191        ; [#uses=1 type=i1] [debug line = 36:25]
  br i1 %tmp.22, label %.preheader8.preheader, label %3, !dbg !191 ; [debug line = 36:25]

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8, !dbg !197                ; [debug line = 38:25]

; <label>:3                                       ; preds = %.preheader9
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !199 ; [debug line = 37:7]
  %rbegin7 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !199 ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.25 = zext i8 %i.2 to i64, !dbg !199        ; [#uses=2 type=i64] [debug line = 37:7]
  %iv_in.addr = getelementptr inbounds i8* %iv_in, i64 %tmp.25, !dbg !199 ; [#uses=1 type=i8*] [debug line = 37:7]
  %iv_in.load = load i8* %iv_in.addr, align 1, !dbg !199 ; [#uses=2 type=i8] [debug line = 37:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %iv_in.load) nounwind
  %iv.addr = getelementptr inbounds [16 x i8]* @iv, i64 0, i64 %tmp.25, !dbg !199 ; [#uses=1 type=i8*] [debug line = 37:7]
  store i8 %iv_in.load, i8* %iv.addr, align 1, !dbg !199 ; [debug line = 37:7]
  %rend19 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str4, i64 0, i64 0), i32 %rbegin7) nounwind, !dbg !201 ; [#uses=0 type=i32] [debug line = 37:22]
  %i.19 = add i8 %i.2, 1, !dbg !202               ; [#uses=1 type=i8] [debug line = 36:36]
  call void @llvm.dbg.value(metadata !{i8 %i.19}, i64 0, metadata !190), !dbg !202 ; [debug line = 36:36] [debug variable = i]
  br label %.preheader9, !dbg !202                ; [debug line = 36:36]

.preheader8:                                      ; preds = %4, %.preheader8.preheader
  %i.3 = phi i8 [ %i.22, %4 ], [ 0, %.preheader8.preheader ] ; [#uses=3 type=i8]
  %tmp.32 = icmp eq i8 %i.3, 16, !dbg !197        ; [#uses=1 type=i1] [debug line = 38:25]
  br i1 %tmp.32, label %5, label %4, !dbg !197    ; [debug line = 38:25]

; <label>:4                                       ; preds = %.preheader8
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !203 ; [debug line = 39:7]
  %rbegin10 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !203 ; [#uses=1 type=i32] [debug line = 39:7]
  %tmp.35 = zext i8 %i.3 to i64, !dbg !203        ; [#uses=2 type=i64] [debug line = 39:7]
  %iv.addr.1 = getelementptr inbounds [16 x i8]* @iv, i64 0, i64 %tmp.35, !dbg !203 ; [#uses=1 type=i8*] [debug line = 39:7]
  %iv.load = load i8* %iv.addr.1, align 1, !dbg !203 ; [#uses=2 type=i8] [debug line = 39:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %iv.load) nounwind
  %xorv.addr.3 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.35, !dbg !203 ; [#uses=1 type=i8*] [debug line = 39:7]
  store i8 %iv.load, i8* %xorv.addr.3, align 1, !dbg !203 ; [debug line = 39:7]
  %rend21 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str5, i64 0, i64 0), i32 %rbegin10) nounwind, !dbg !205 ; [#uses=0 type=i32] [debug line = 39:21]
  %i.22 = add i8 %i.3, 1, !dbg !206               ; [#uses=1 type=i8] [debug line = 38:36]
  call void @llvm.dbg.value(metadata !{i8 %i.22}, i64 0, metadata !190), !dbg !206 ; [debug line = 38:36] [debug variable = i]
  br label %.preheader8, !dbg !206                ; [debug line = 38:36]

; <label>:5                                       ; preds = %.preheader8
  call fastcc void @aes_init(i8* getelementptr inbounds ([32 x i8]* @key, i64 0, i64 0)), !dbg !207 ; [debug line = 40:6]
  br label %.loopexit, !dbg !208                  ; [debug line = 41:6]

.preheader7:                                      ; preds = %6, %.preheader7.preheader
  %i.4 = phi i8 [ %i.14, %6 ], [ 0, %.preheader7.preheader ] ; [#uses=3 type=i8]
  %tmp.4 = icmp eq i8 %i.4, 16, !dbg !180         ; [#uses=1 type=i1] [debug line = 45:25]
  br i1 %tmp.4, label %.preheader6.preheader, label %6, !dbg !180 ; [debug line = 45:25]

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6, !dbg !209                ; [debug line = 48:24]

; <label>:6                                       ; preds = %.preheader7
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !211 ; [debug line = 46:7]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !211 ; [#uses=1 type=i32] [debug line = 46:7]
  %tmp.8 = zext i8 %i.4 to i64, !dbg !211         ; [#uses=2 type=i64] [debug line = 46:7]
  %data_in.addr = getelementptr inbounds i8* %data_in, i64 %tmp.8, !dbg !211 ; [#uses=1 type=i8*] [debug line = 46:7]
  %data_in.load = load i8* %data_in.addr, align 1, !dbg !211 ; [#uses=2 type=i8] [debug line = 46:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %data_in.load) nounwind
  %buf.addr = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.8, !dbg !211 ; [#uses=1 type=i8*] [debug line = 46:7]
  store i8 %data_in.load, i8* %buf.addr, align 1, !dbg !211 ; [debug line = 46:7]
  %rend17 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !213 ; [#uses=0 type=i32] [debug line = 46:25]
  %i.14 = add i8 %i.4, 1, !dbg !214               ; [#uses=1 type=i8] [debug line = 45:36]
  call void @llvm.dbg.value(metadata !{i8 %i.14}, i64 0, metadata !190), !dbg !214 ; [debug line = 45:36] [debug variable = i]
  br label %.preheader7, !dbg !214                ; [debug line = 45:36]

.preheader6:                                      ; preds = %7, %.preheader6.preheader
  %i.5 = phi i8 [ %i.17, %7 ], [ 0, %.preheader6.preheader ] ; [#uses=3 type=i8]
  %tmp.13 = icmp eq i8 %i.5, 16, !dbg !209        ; [#uses=1 type=i1] [debug line = 48:24]
  br i1 %tmp.13, label %8, label %7, !dbg !209    ; [debug line = 48:24]

; <label>:7                                       ; preds = %.preheader6
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !215 ; [debug line = 49:7]
  %rbegin5 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !215 ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.17 = zext i8 %i.5 to i64, !dbg !215        ; [#uses=2 type=i64] [debug line = 49:7]
  %buf.addr.3 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.17, !dbg !215 ; [#uses=2 type=i8*] [debug line = 49:7]
  %buf.load = load i8* %buf.addr.3, align 1, !dbg !215 ; [#uses=2 type=i8] [debug line = 49:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  %xorv.addr = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.17, !dbg !215 ; [#uses=1 type=i8*] [debug line = 49:7]
  %xorv.load = load i8* %xorv.addr, align 1, !dbg !215 ; [#uses=2 type=i8] [debug line = 49:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %xorv.load) nounwind
  %tmp.18 = xor i8 %xorv.load, %buf.load, !dbg !215 ; [#uses=1 type=i8] [debug line = 49:7]
  store i8 %tmp.18, i8* %buf.addr.3, align 1, !dbg !215 ; [debug line = 49:7]
  %rend35 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), i32 %rbegin5) nounwind, !dbg !217 ; [#uses=0 type=i32] [debug line = 49:29]
  %i.17 = add i8 %i.5, 1, !dbg !218               ; [#uses=1 type=i8] [debug line = 48:35]
  call void @llvm.dbg.value(metadata !{i8 %i.17}, i64 0, metadata !190), !dbg !218 ; [debug line = 48:35] [debug variable = i]
  br label %.preheader6, !dbg !218                ; [debug line = 48:35]

; <label>:8                                       ; preds = %.preheader6
  %buf.addr.2 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 0, !dbg !219 ; [#uses=1 type=i8*] [debug line = 51:6]
  call fastcc void @aes_encrypt_ecb(i8* %buf.addr.2), !dbg !219 ; [debug line = 51:6]
  br label %9, !dbg !220                          ; [debug line = 53:24]

; <label>:9                                       ; preds = %10, %8
  %i.6 = phi i8 [ 0, %8 ], [ %i.20, %10 ]         ; [#uses=3 type=i8]
  %tmp.23 = icmp eq i8 %i.6, 16, !dbg !220        ; [#uses=1 type=i1] [debug line = 53:24]
  br i1 %tmp.23, label %.preheader4.preheader, label %10, !dbg !220 ; [debug line = 53:24]

.preheader4.preheader:                            ; preds = %9
  br label %.preheader4, !dbg !222                ; [debug line = 56:24]

; <label>:10                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !224 ; [debug line = 54:7]
  %rbegin8 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !224 ; [#uses=1 type=i32] [debug line = 54:7]
  %tmp.27 = zext i8 %i.6 to i64, !dbg !224        ; [#uses=2 type=i64] [debug line = 54:7]
  %buf.addr.6 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.27, !dbg !224 ; [#uses=1 type=i8*] [debug line = 54:7]
  %buf.load.2 = load i8* %buf.addr.6, align 1, !dbg !224 ; [#uses=2 type=i8] [debug line = 54:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.2) nounwind
  %xorv.addr.1 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.27, !dbg !224 ; [#uses=1 type=i8*] [debug line = 54:7]
  store i8 %buf.load.2, i8* %xorv.addr.1, align 1, !dbg !224 ; [debug line = 54:7]
  %rend39 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0), i32 %rbegin8) nounwind, !dbg !226 ; [#uses=0 type=i32] [debug line = 54:22]
  %i.20 = add i8 %i.6, 1, !dbg !227               ; [#uses=1 type=i8] [debug line = 53:35]
  call void @llvm.dbg.value(metadata !{i8 %i.20}, i64 0, metadata !190), !dbg !227 ; [debug line = 53:35] [debug variable = i]
  br label %9, !dbg !227                          ; [debug line = 53:35]

.preheader4:                                      ; preds = %11, %.preheader4.preheader
  %i.7 = phi i8 [ %i.23, %11 ], [ 0, %.preheader4.preheader ] ; [#uses=3 type=i8]
  %tmp.33 = icmp eq i8 %i.7, 16, !dbg !222        ; [#uses=1 type=i1] [debug line = 56:24]
  br i1 %tmp.33, label %.loopexit.loopexit40, label %11, !dbg !222 ; [debug line = 56:24]

; <label>:11                                      ; preds = %.preheader4
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !228 ; [debug line = 57:7]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !228 ; [#uses=1 type=i32] [debug line = 57:7]
  %tmp.37 = zext i8 %i.7 to i64, !dbg !228        ; [#uses=2 type=i64] [debug line = 57:7]
  %buf.addr.8 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.37, !dbg !228 ; [#uses=1 type=i8*] [debug line = 57:7]
  %buf.load.4 = load i8* %buf.addr.8, align 1, !dbg !228 ; [#uses=2 type=i8] [debug line = 57:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.4) nounwind
  %data_out.addr.1 = getelementptr inbounds i8* %data_out, i64 %tmp.37, !dbg !228 ; [#uses=1 type=i8*] [debug line = 57:7]
  store i8 %buf.load.4, i8* %data_out.addr.1, align 1, !dbg !228 ; [debug line = 57:7]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !230 ; [#uses=0 type=i32] [debug line = 57:26]
  %i.23 = add i8 %i.7, 1, !dbg !231               ; [#uses=1 type=i8] [debug line = 56:35]
  call void @llvm.dbg.value(metadata !{i8 %i.23}, i64 0, metadata !190), !dbg !231 ; [debug line = 56:35] [debug variable = i]
  br label %.preheader4, !dbg !231                ; [debug line = 56:35]

.preheader3:                                      ; preds = %12, %.preheader3.preheader
  %i.8 = phi i8 [ %i.15, %12 ], [ 0, %.preheader3.preheader ] ; [#uses=3 type=i8]
  %tmp.5 = icmp eq i8 %i.8, 16, !dbg !182         ; [#uses=1 type=i1] [debug line = 61:24]
  br i1 %tmp.5, label %.preheader2.preheader, label %12, !dbg !182 ; [debug line = 61:24]

.preheader2.preheader:                            ; preds = %.preheader3
  br label %.preheader2, !dbg !232                ; [debug line = 64:24]

; <label>:12                                      ; preds = %.preheader3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !234 ; [debug line = 62:7]
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !234 ; [#uses=1 type=i32] [debug line = 62:7]
  %tmp.10 = zext i8 %i.8 to i64, !dbg !234        ; [#uses=2 type=i64] [debug line = 62:7]
  %data_in.addr.1 = getelementptr inbounds i8* %data_in, i64 %tmp.10, !dbg !234 ; [#uses=1 type=i8*] [debug line = 62:7]
  %data_in.load.1 = load i8* %data_in.addr.1, align 1, !dbg !234 ; [#uses=2 type=i8] [debug line = 62:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %data_in.load.1) nounwind
  %buf.addr.1 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.10, !dbg !234 ; [#uses=1 type=i8*] [debug line = 62:7]
  store i8 %data_in.load.1, i8* %buf.addr.1, align 1, !dbg !234 ; [debug line = 62:7]
  %rend25 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0), i32 %rbegin3) nounwind, !dbg !236 ; [#uses=0 type=i32] [debug line = 62:25]
  %i.15 = add i8 %i.8, 1, !dbg !237               ; [#uses=1 type=i8] [debug line = 61:35]
  call void @llvm.dbg.value(metadata !{i8 %i.15}, i64 0, metadata !190), !dbg !237 ; [debug line = 61:35] [debug variable = i]
  br label %.preheader3, !dbg !237                ; [debug line = 61:35]

.preheader2:                                      ; preds = %13, %.preheader2.preheader
  %i.9 = phi i8 [ %i.18, %13 ], [ 0, %.preheader2.preheader ] ; [#uses=3 type=i8]
  %tmp.14 = icmp eq i8 %i.9, 16, !dbg !232        ; [#uses=1 type=i1] [debug line = 64:24]
  br i1 %tmp.14, label %14, label %13, !dbg !232  ; [debug line = 64:24]

; <label>:13                                      ; preds = %.preheader2
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0)) nounwind, !dbg !238 ; [debug line = 65:7]
  %rbegin6 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0)) nounwind, !dbg !238 ; [#uses=1 type=i32] [debug line = 65:7]
  %tmp.20 = zext i8 %i.9 to i64, !dbg !238        ; [#uses=2 type=i64] [debug line = 65:7]
  %buf.addr.5 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.20, !dbg !238 ; [#uses=1 type=i8*] [debug line = 65:7]
  %buf.load.1 = load i8* %buf.addr.5, align 1, !dbg !238 ; [#uses=2 type=i8] [debug line = 65:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.1) nounwind
  %lastbuf.addr = getelementptr inbounds [16 x i8]* @lastbuf, i64 0, i64 %tmp.20, !dbg !238 ; [#uses=1 type=i8*] [debug line = 65:7]
  store i8 %buf.load.1, i8* %lastbuf.addr, align 1, !dbg !238 ; [debug line = 65:7]
  %rend27 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0), i32 %rbegin6) nounwind, !dbg !240 ; [#uses=0 type=i32] [debug line = 65:25]
  %i.18 = add i8 %i.9, 1, !dbg !241               ; [#uses=1 type=i8] [debug line = 64:35]
  call void @llvm.dbg.value(metadata !{i8 %i.18}, i64 0, metadata !190), !dbg !241 ; [debug line = 64:35] [debug variable = i]
  br label %.preheader2, !dbg !241                ; [debug line = 64:35]

; <label>:14                                      ; preds = %.preheader2
  %buf.addr.4 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 0, !dbg !242 ; [#uses=1 type=i8*] [debug line = 67:6]
  call fastcc void @aes_decrypt_ecb(i8* %buf.addr.4), !dbg !242 ; [debug line = 67:6]
  br label %15, !dbg !243                         ; [debug line = 69:24]

; <label>:15                                      ; preds = %16, %14
  %i. = phi i8 [ 0, %14 ], [ %i.21, %16 ]         ; [#uses=3 type=i8]
  %tmp.24 = icmp eq i8 %i., 16, !dbg !243         ; [#uses=1 type=i1] [debug line = 69:24]
  br i1 %tmp.24, label %.preheader1.preheader, label %16, !dbg !243 ; [debug line = 69:24]

.preheader1.preheader:                            ; preds = %15
  br label %.preheader1, !dbg !245                ; [debug line = 72:24]

; <label>:16                                      ; preds = %15
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0)) nounwind, !dbg !247 ; [debug line = 70:7]
  %rbegin9 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0)) nounwind, !dbg !247 ; [#uses=1 type=i32] [debug line = 70:7]
  %tmp.29 = zext i8 %i. to i64, !dbg !247         ; [#uses=2 type=i64] [debug line = 70:7]
  %buf.addr.7 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.29, !dbg !247 ; [#uses=2 type=i8*] [debug line = 70:7]
  %buf.load.3 = load i8* %buf.addr.7, align 1, !dbg !247 ; [#uses=2 type=i8] [debug line = 70:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.3) nounwind
  %xorv.addr.2 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.29, !dbg !247 ; [#uses=1 type=i8*] [debug line = 70:7]
  %xorv.load.1 = load i8* %xorv.addr.2, align 1, !dbg !247 ; [#uses=2 type=i8] [debug line = 70:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %xorv.load.1) nounwind
  %tmp.30 = xor i8 %xorv.load.1, %buf.load.3, !dbg !247 ; [#uses=1 type=i8] [debug line = 70:7]
  store i8 %tmp.30, i8* %buf.addr.7, align 1, !dbg !247 ; [debug line = 70:7]
  %rend31 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i32 %rbegin9) nounwind, !dbg !249 ; [#uses=0 type=i32] [debug line = 70:29]
  %i.21 = add i8 %i., 1, !dbg !250                ; [#uses=1 type=i8] [debug line = 69:35]
  call void @llvm.dbg.value(metadata !{i8 %i.21}, i64 0, metadata !190), !dbg !250 ; [debug line = 69:35] [debug variable = i]
  br label %15, !dbg !250                         ; [debug line = 69:35]

.preheader1:                                      ; preds = %17, %.preheader1.preheader
  %i.10 = phi i8 [ %i.24, %17 ], [ 0, %.preheader1.preheader ] ; [#uses=3 type=i8]
  %tmp.34 = icmp eq i8 %i.10, 16, !dbg !245       ; [#uses=1 type=i1] [debug line = 72:24]
  br i1 %tmp.34, label %.preheader.preheader, label %17, !dbg !245 ; [debug line = 72:24]

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader, !dbg !251                 ; [debug line = 75:24]

; <label>:17                                      ; preds = %.preheader1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0)) nounwind, !dbg !253 ; [debug line = 73:7]
  %rbegin11 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0)) nounwind, !dbg !253 ; [#uses=1 type=i32] [debug line = 73:7]
  %tmp.39 = zext i8 %i.10 to i64, !dbg !253       ; [#uses=2 type=i64] [debug line = 73:7]
  %lastbuf.addr.1 = getelementptr inbounds [16 x i8]* @lastbuf, i64 0, i64 %tmp.39, !dbg !253 ; [#uses=1 type=i8*] [debug line = 73:7]
  %lastbuf.load = load i8* %lastbuf.addr.1, align 1, !dbg !253 ; [#uses=2 type=i8] [debug line = 73:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %lastbuf.load) nounwind
  %xorv.addr.4 = getelementptr inbounds [16 x i8]* @xorv, i64 0, i64 %tmp.39, !dbg !253 ; [#uses=1 type=i8*] [debug line = 73:7]
  store i8 %lastbuf.load, i8* %xorv.addr.4, align 1, !dbg !253 ; [debug line = 73:7]
  %rend37 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0), i32 %rbegin11) nounwind, !dbg !255 ; [#uses=0 type=i32] [debug line = 73:26]
  %i.24 = add i8 %i.10, 1, !dbg !256              ; [#uses=1 type=i8] [debug line = 72:35]
  call void @llvm.dbg.value(metadata !{i8 %i.24}, i64 0, metadata !190), !dbg !256 ; [debug line = 72:35] [debug variable = i]
  br label %.preheader1, !dbg !256                ; [debug line = 72:35]

.preheader:                                       ; preds = %18, %.preheader.preheader
  %i.11 = phi i8 [ %i.25, %18 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i8]
  %tmp.41 = icmp eq i8 %i.11, 16, !dbg !251       ; [#uses=1 type=i1] [debug line = 75:24]
  br i1 %tmp.41, label %.loopexit.loopexit, label %18, !dbg !251 ; [debug line = 75:24]

; <label>:18                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str14, i64 0, i64 0)) nounwind, !dbg !257 ; [debug line = 76:7]
  %rbegin12 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str14, i64 0, i64 0)) nounwind, !dbg !257 ; [#uses=1 type=i32] [debug line = 76:7]
  %tmp.42 = zext i8 %i.11 to i64, !dbg !257       ; [#uses=2 type=i64] [debug line = 76:7]
  %buf.addr.9 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %tmp.42, !dbg !257 ; [#uses=1 type=i8*] [debug line = 76:7]
  %buf.load.5 = load i8* %buf.addr.9, align 1, !dbg !257 ; [#uses=2 type=i8] [debug line = 76:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.5) nounwind
  %data_out.addr.2 = getelementptr inbounds i8* %data_out, i64 %tmp.42, !dbg !257 ; [#uses=1 type=i8*] [debug line = 76:7]
  store i8 %buf.load.5, i8* %data_out.addr.2, align 1, !dbg !257 ; [debug line = 76:7]
  %rend33 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str14, i64 0, i64 0), i32 %rbegin12) nounwind, !dbg !259 ; [#uses=0 type=i32] [debug line = 76:26]
  %i.25 = add i8 %i.11, 1, !dbg !260              ; [#uses=1 type=i8] [debug line = 75:35]
  call void @llvm.dbg.value(metadata !{i8 %i.25}, i64 0, metadata !190), !dbg !260 ; [debug line = 75:35] [debug variable = i]
  br label %.preheader, !dbg !260                 ; [debug line = 75:35]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit.loopexit40:                             ; preds = %.preheader4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit40, %.loopexit.loopexit, %5, %0
  ret void, !dbg !261                             ; [debug line = 87:1]
}

; [#uses=2]
define internal fastcc void @aes_subBytes_inv(i8* %buf) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !262), !dbg !263 ; [debug line = 202:39] [debug variable = buf]
  br label %1, !dbg !264                          ; [debug line = 206:5]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 16, %0 ], [ %i.26, %2 ]           ; [#uses=2 type=i8]
  %i.26 = add i8 %i, -1, !dbg !264                ; [#uses=2 type=i8] [debug line = 206:5]
  call void @llvm.dbg.value(metadata !{i8 %i.26}, i64 0, metadata !266), !dbg !264 ; [debug line = 206:5] [debug variable = i]
  %tmp = icmp eq i8 %i, 0, !dbg !264              ; [#uses=1 type=i1] [debug line = 206:5]
  br i1 %tmp, label %3, label %2, !dbg !264       ; [debug line = 206:5]

; <label>:2                                       ; preds = %1
  %tmp.44 = zext i8 %i.26 to i64, !dbg !267       ; [#uses=1 type=i64] [debug line = 206:17]
  %buf.addr = getelementptr inbounds i8* %buf, i64 %tmp.44, !dbg !267 ; [#uses=2 type=i8*] [debug line = 206:17]
  %buf.load = load i8* %buf.addr, align 1, !dbg !267 ; [#uses=2 type=i8] [debug line = 206:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  %tmp.45 = zext i8 %buf.load to i64, !dbg !267   ; [#uses=1 type=i64] [debug line = 206:17]
  %sboxinv.addr = getelementptr inbounds [256 x i8]* @sboxinv, i64 0, i64 %tmp.45, !dbg !267 ; [#uses=1 type=i8*] [debug line = 206:17]
  %sboxinv.load = load i8* %sboxinv.addr, align 1, !dbg !267 ; [#uses=2 type=i8] [debug line = 206:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sboxinv.load) nounwind
  store i8 %sboxinv.load, i8* %buf.addr, align 1, !dbg !267 ; [debug line = 206:17]
  br label %1, !dbg !267                          ; [debug line = 206:17]

; <label>:3                                       ; preds = %1
  ret void, !dbg !268                             ; [debug line = 207:1]
}

; [#uses=2]
define internal fastcc void @aes_subBytes(i8* %buf) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !269), !dbg !270 ; [debug line = 194:35] [debug variable = buf]
  br label %1, !dbg !271                          ; [debug line = 198:5]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 16, %0 ], [ %i.27, %2 ]           ; [#uses=2 type=i8]
  %i.27 = add i8 %i, -1, !dbg !271                ; [#uses=2 type=i8] [debug line = 198:5]
  call void @llvm.dbg.value(metadata !{i8 %i.27}, i64 0, metadata !273), !dbg !271 ; [debug line = 198:5] [debug variable = i]
  %tmp = icmp eq i8 %i, 0, !dbg !271              ; [#uses=1 type=i1] [debug line = 198:5]
  br i1 %tmp, label %3, label %2, !dbg !271       ; [debug line = 198:5]

; <label>:2                                       ; preds = %1
  %tmp.46 = zext i8 %i.27 to i64, !dbg !274       ; [#uses=1 type=i64] [debug line = 198:17]
  %buf.addr = getelementptr inbounds i8* %buf, i64 %tmp.46, !dbg !274 ; [#uses=2 type=i8*] [debug line = 198:17]
  %buf.load = load i8* %buf.addr, align 1, !dbg !274 ; [#uses=2 type=i8] [debug line = 198:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  %tmp.47 = zext i8 %buf.load to i64, !dbg !274   ; [#uses=1 type=i64] [debug line = 198:17]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.47, !dbg !274 ; [#uses=1 type=i8*] [debug line = 198:17]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !274 ; [#uses=2 type=i8] [debug line = 198:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load) nounwind
  store i8 %sbox.load, i8* %buf.addr, align 1, !dbg !274 ; [debug line = 198:17]
  br label %1, !dbg !274                          ; [debug line = 198:17]

; <label>:3                                       ; preds = %1
  ret void, !dbg !275                             ; [debug line = 199:1]
}

; [#uses=2]
define internal fastcc void @aes_shiftRows_inv(i8* %buf) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !276), !dbg !277 ; [debug line = 239:40] [debug variable = buf]
  %buf.addr = getelementptr inbounds i8* %buf, i64 1, !dbg !278 ; [#uses=2 type=i8*] [debug line = 243:5]
  %i = load i8* %buf.addr, align 1, !dbg !278     ; [#uses=2 type=i8] [debug line = 243:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %i) nounwind
  call void @llvm.dbg.value(metadata !{i8 %i}, i64 0, metadata !280), !dbg !278 ; [debug line = 243:5] [debug variable = i]
  %buf.addr.10 = getelementptr inbounds i8* %buf, i64 13, !dbg !278 ; [#uses=2 type=i8*] [debug line = 243:5]
  %buf.load = load i8* %buf.addr.10, align 1, !dbg !278 ; [#uses=2 type=i8] [debug line = 243:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  store i8 %buf.load, i8* %buf.addr, align 1, !dbg !278 ; [debug line = 243:5]
  %buf.addr.11 = getelementptr inbounds i8* %buf, i64 9, !dbg !278 ; [#uses=2 type=i8*] [debug line = 243:5]
  %buf.load.6 = load i8* %buf.addr.11, align 1, !dbg !278 ; [#uses=2 type=i8] [debug line = 243:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.6) nounwind
  store i8 %buf.load.6, i8* %buf.addr.10, align 1, !dbg !278 ; [debug line = 243:5]
  %buf.addr.12 = getelementptr inbounds i8* %buf, i64 5, !dbg !278 ; [#uses=2 type=i8*] [debug line = 243:5]
  %buf.load.7 = load i8* %buf.addr.12, align 1, !dbg !278 ; [#uses=2 type=i8] [debug line = 243:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.7) nounwind
  store i8 %buf.load.7, i8* %buf.addr.11, align 1, !dbg !278 ; [debug line = 243:5]
  store i8 %i, i8* %buf.addr.12, align 1, !dbg !278 ; [debug line = 243:5]
  %buf.addr.13 = getelementptr inbounds i8* %buf, i64 2, !dbg !281 ; [#uses=2 type=i8*] [debug line = 244:5]
  %i.28 = load i8* %buf.addr.13, align 1, !dbg !281 ; [#uses=2 type=i8] [debug line = 244:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %i.28) nounwind
  call void @llvm.dbg.value(metadata !{i8 %i.28}, i64 0, metadata !280), !dbg !281 ; [debug line = 244:5] [debug variable = i]
  %buf.addr.14 = getelementptr inbounds i8* %buf, i64 10, !dbg !281 ; [#uses=2 type=i8*] [debug line = 244:5]
  %buf.load.9 = load i8* %buf.addr.14, align 1, !dbg !281 ; [#uses=2 type=i8] [debug line = 244:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.9) nounwind
  store i8 %buf.load.9, i8* %buf.addr.13, align 1, !dbg !281 ; [debug line = 244:5]
  store i8 %i.28, i8* %buf.addr.14, align 1, !dbg !281 ; [debug line = 244:5]
  %buf.addr.15 = getelementptr inbounds i8* %buf, i64 3, !dbg !282 ; [#uses=2 type=i8*] [debug line = 245:5]
  %j = load i8* %buf.addr.15, align 1, !dbg !282  ; [#uses=2 type=i8] [debug line = 245:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %j) nounwind
  call void @llvm.dbg.value(metadata !{i8 %j}, i64 0, metadata !283), !dbg !282 ; [debug line = 245:5] [debug variable = j]
  %buf.addr.16 = getelementptr inbounds i8* %buf, i64 7, !dbg !282 ; [#uses=2 type=i8*] [debug line = 245:5]
  %buf.load.11 = load i8* %buf.addr.16, align 1, !dbg !282 ; [#uses=2 type=i8] [debug line = 245:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.11) nounwind
  store i8 %buf.load.11, i8* %buf.addr.15, align 1, !dbg !282 ; [debug line = 245:5]
  %buf.addr.17 = getelementptr inbounds i8* %buf, i64 11, !dbg !282 ; [#uses=2 type=i8*] [debug line = 245:5]
  %buf.load.12 = load i8* %buf.addr.17, align 1, !dbg !282 ; [#uses=2 type=i8] [debug line = 245:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.12) nounwind
  store i8 %buf.load.12, i8* %buf.addr.16, align 1, !dbg !282 ; [debug line = 245:5]
  %buf.addr.18 = getelementptr inbounds i8* %buf, i64 15, !dbg !282 ; [#uses=2 type=i8*] [debug line = 245:5]
  %buf.load.13 = load i8* %buf.addr.18, align 1, !dbg !282 ; [#uses=2 type=i8] [debug line = 245:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.13) nounwind
  store i8 %buf.load.13, i8* %buf.addr.17, align 1, !dbg !282 ; [debug line = 245:5]
  store i8 %j, i8* %buf.addr.18, align 1, !dbg !282 ; [debug line = 245:5]
  %buf.addr.19 = getelementptr inbounds i8* %buf, i64 6, !dbg !284 ; [#uses=2 type=i8*] [debug line = 246:5]
  %j.1 = load i8* %buf.addr.19, align 1, !dbg !284 ; [#uses=2 type=i8] [debug line = 246:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %j.1) nounwind
  call void @llvm.dbg.value(metadata !{i8 %j.1}, i64 0, metadata !283), !dbg !284 ; [debug line = 246:5] [debug variable = j]
  %buf.addr.20 = getelementptr inbounds i8* %buf, i64 14, !dbg !284 ; [#uses=2 type=i8*] [debug line = 246:5]
  %buf.load.15 = load i8* %buf.addr.20, align 1, !dbg !284 ; [#uses=2 type=i8] [debug line = 246:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.15) nounwind
  store i8 %buf.load.15, i8* %buf.addr.19, align 1, !dbg !284 ; [debug line = 246:5]
  store i8 %j.1, i8* %buf.addr.20, align 1, !dbg !284 ; [debug line = 246:5]
  ret void, !dbg !285                             ; [debug line = 248:1]
}

; [#uses=2]
define internal fastcc void @aes_shiftRows(i8* %buf) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !286), !dbg !287 ; [debug line = 227:36] [debug variable = buf]
  %buf.addr = getelementptr inbounds i8* %buf, i64 1, !dbg !288 ; [#uses=2 type=i8*] [debug line = 231:5]
  %i = load i8* %buf.addr, align 1, !dbg !288     ; [#uses=2 type=i8] [debug line = 231:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %i) nounwind
  call void @llvm.dbg.value(metadata !{i8 %i}, i64 0, metadata !290), !dbg !288 ; [debug line = 231:5] [debug variable = i]
  %buf.addr.21 = getelementptr inbounds i8* %buf, i64 5, !dbg !288 ; [#uses=2 type=i8*] [debug line = 231:5]
  %buf.load = load i8* %buf.addr.21, align 1, !dbg !288 ; [#uses=2 type=i8] [debug line = 231:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  store i8 %buf.load, i8* %buf.addr, align 1, !dbg !288 ; [debug line = 231:5]
  %buf.addr.22 = getelementptr inbounds i8* %buf, i64 9, !dbg !288 ; [#uses=2 type=i8*] [debug line = 231:5]
  %buf.load.16 = load i8* %buf.addr.22, align 1, !dbg !288 ; [#uses=2 type=i8] [debug line = 231:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.16) nounwind
  store i8 %buf.load.16, i8* %buf.addr.21, align 1, !dbg !288 ; [debug line = 231:5]
  %buf.addr.23 = getelementptr inbounds i8* %buf, i64 13, !dbg !288 ; [#uses=2 type=i8*] [debug line = 231:5]
  %buf.load.17 = load i8* %buf.addr.23, align 1, !dbg !288 ; [#uses=2 type=i8] [debug line = 231:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.17) nounwind
  store i8 %buf.load.17, i8* %buf.addr.22, align 1, !dbg !288 ; [debug line = 231:5]
  store i8 %i, i8* %buf.addr.23, align 1, !dbg !288 ; [debug line = 231:5]
  %buf.addr.24 = getelementptr inbounds i8* %buf, i64 10, !dbg !291 ; [#uses=2 type=i8*] [debug line = 232:5]
  %i.29 = load i8* %buf.addr.24, align 1, !dbg !291 ; [#uses=2 type=i8] [debug line = 232:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %i.29) nounwind
  call void @llvm.dbg.value(metadata !{i8 %i.29}, i64 0, metadata !290), !dbg !291 ; [debug line = 232:5] [debug variable = i]
  %buf.addr.25 = getelementptr inbounds i8* %buf, i64 2, !dbg !291 ; [#uses=2 type=i8*] [debug line = 232:5]
  %buf.load.19 = load i8* %buf.addr.25, align 1, !dbg !291 ; [#uses=2 type=i8] [debug line = 232:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.19) nounwind
  store i8 %buf.load.19, i8* %buf.addr.24, align 1, !dbg !291 ; [debug line = 232:5]
  store i8 %i.29, i8* %buf.addr.25, align 1, !dbg !291 ; [debug line = 232:5]
  %buf.addr.26 = getelementptr inbounds i8* %buf, i64 3, !dbg !292 ; [#uses=2 type=i8*] [debug line = 233:5]
  %j = load i8* %buf.addr.26, align 1, !dbg !292  ; [#uses=2 type=i8] [debug line = 233:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %j) nounwind
  call void @llvm.dbg.value(metadata !{i8 %j}, i64 0, metadata !293), !dbg !292 ; [debug line = 233:5] [debug variable = j]
  %buf.addr.27 = getelementptr inbounds i8* %buf, i64 15, !dbg !292 ; [#uses=2 type=i8*] [debug line = 233:5]
  %buf.load.21 = load i8* %buf.addr.27, align 1, !dbg !292 ; [#uses=2 type=i8] [debug line = 233:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.21) nounwind
  store i8 %buf.load.21, i8* %buf.addr.26, align 1, !dbg !292 ; [debug line = 233:5]
  %buf.addr.28 = getelementptr inbounds i8* %buf, i64 11, !dbg !292 ; [#uses=2 type=i8*] [debug line = 233:5]
  %buf.load.22 = load i8* %buf.addr.28, align 1, !dbg !292 ; [#uses=2 type=i8] [debug line = 233:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.22) nounwind
  store i8 %buf.load.22, i8* %buf.addr.27, align 1, !dbg !292 ; [debug line = 233:5]
  %buf.addr.29 = getelementptr inbounds i8* %buf, i64 7, !dbg !292 ; [#uses=2 type=i8*] [debug line = 233:5]
  %buf.load.23 = load i8* %buf.addr.29, align 1, !dbg !292 ; [#uses=2 type=i8] [debug line = 233:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.23) nounwind
  store i8 %buf.load.23, i8* %buf.addr.28, align 1, !dbg !292 ; [debug line = 233:5]
  store i8 %j, i8* %buf.addr.29, align 1, !dbg !292 ; [debug line = 233:5]
  %buf.addr.30 = getelementptr inbounds i8* %buf, i64 14, !dbg !294 ; [#uses=2 type=i8*] [debug line = 234:5]
  %j.2 = load i8* %buf.addr.30, align 1, !dbg !294 ; [#uses=2 type=i8] [debug line = 234:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %j.2) nounwind
  call void @llvm.dbg.value(metadata !{i8 %j.2}, i64 0, metadata !293), !dbg !294 ; [debug line = 234:5] [debug variable = j]
  %buf.addr.31 = getelementptr inbounds i8* %buf, i64 6, !dbg !294 ; [#uses=2 type=i8*] [debug line = 234:5]
  %buf.load.25 = load i8* %buf.addr.31, align 1, !dbg !294 ; [#uses=2 type=i8] [debug line = 234:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.25) nounwind
  store i8 %buf.load.25, i8* %buf.addr.30, align 1, !dbg !294 ; [debug line = 234:5]
  store i8 %j.2, i8* %buf.addr.31, align 1, !dbg !294 ; [debug line = 234:5]
  ret void, !dbg !295                             ; [debug line = 236:1]
}

; [#uses=1]
define internal fastcc void @aes_mixColumns_inv(i8* %buf) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !296), !dbg !297 ; [debug line = 270:34] [debug variable = buf]
  br label %1, !dbg !298                          ; [debug line = 274:10]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 0, %0 ], [ %i.30, %2 ]            ; [#uses=4 type=i8]
  %tmp = icmp ult i8 %i, 16, !dbg !298            ; [#uses=1 type=i1] [debug line = 274:10]
  br i1 %tmp, label %2, label %3, !dbg !298       ; [debug line = 274:10]

; <label>:2                                       ; preds = %1
  %tmp.48 = zext i8 %i to i64, !dbg !301          ; [#uses=1 type=i64] [debug line = 276:9]
  %buf.addr = getelementptr inbounds i8* %buf, i64 %tmp.48, !dbg !301 ; [#uses=3 type=i8*] [debug line = 276:9]
  %a = load i8* %buf.addr, align 1, !dbg !301     ; [#uses=4 type=i8] [debug line = 276:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %a) nounwind
  call void @llvm.dbg.value(metadata !{i8 %a}, i64 0, metadata !303), !dbg !301 ; [debug line = 276:9] [debug variable = a]
  %tmp.49 = zext i8 %i to i32, !dbg !304          ; [#uses=3 type=i32] [debug line = 277:9]
  %tmp.50 = or i32 %tmp.49, 1, !dbg !304          ; [#uses=1 type=i32] [debug line = 277:9]
  %tmp.51 = zext i32 %tmp.50 to i64, !dbg !304    ; [#uses=1 type=i64] [debug line = 277:9]
  %buf.addr.32 = getelementptr inbounds i8* %buf, i64 %tmp.51, !dbg !304 ; [#uses=3 type=i8*] [debug line = 277:9]
  %b = load i8* %buf.addr.32, align 1, !dbg !304  ; [#uses=4 type=i8] [debug line = 277:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %b) nounwind
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !305), !dbg !304 ; [debug line = 277:9] [debug variable = b]
  %tmp.52 = or i32 %tmp.49, 2, !dbg !306          ; [#uses=1 type=i32] [debug line = 278:9]
  %tmp.53 = zext i32 %tmp.52 to i64, !dbg !306    ; [#uses=1 type=i64] [debug line = 278:9]
  %buf.addr.33 = getelementptr inbounds i8* %buf, i64 %tmp.53, !dbg !306 ; [#uses=3 type=i8*] [debug line = 278:9]
  %c = load i8* %buf.addr.33, align 1, !dbg !306  ; [#uses=5 type=i8] [debug line = 278:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %c) nounwind
  call void @llvm.dbg.value(metadata !{i8 %c}, i64 0, metadata !307), !dbg !306 ; [debug line = 278:9] [debug variable = c]
  %tmp.54 = or i32 %tmp.49, 3, !dbg !308          ; [#uses=1 type=i32] [debug line = 279:9]
  %tmp.55 = zext i32 %tmp.54 to i64, !dbg !308    ; [#uses=1 type=i64] [debug line = 279:9]
  %buf.addr.34 = getelementptr inbounds i8* %buf, i64 %tmp.55, !dbg !308 ; [#uses=3 type=i8*] [debug line = 279:9]
  %d = load i8* %buf.addr.34, align 1, !dbg !308  ; [#uses=5 type=i8] [debug line = 279:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %d) nounwind
  call void @llvm.dbg.value(metadata !{i8 %d}, i64 0, metadata !309), !dbg !308 ; [debug line = 279:9] [debug variable = d]
  %tmp.56 = xor i8 %b, %a, !dbg !310              ; [#uses=2 type=i8] [debug line = 280:9]
  %tmp.57 = xor i8 %c, %tmp.56, !dbg !310         ; [#uses=1 type=i8] [debug line = 280:9]
  %e = xor i8 %tmp.57, %d, !dbg !310              ; [#uses=3 type=i8] [debug line = 280:9]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !311), !dbg !310 ; [debug line = 280:9] [debug variable = e]
  %z = call fastcc zeroext i8 @rj_xtime(i8 zeroext %e), !dbg !312 ; [#uses=2 type=i8] [debug line = 281:13]
  call void @llvm.dbg.value(metadata !{i8 %z}, i64 0, metadata !313), !dbg !312 ; [debug line = 281:13] [debug variable = z]
  %tmp.59 = xor i8 %c, %a, !dbg !314              ; [#uses=1 type=i8] [debug line = 282:26]
  %tmp.60 = xor i8 %tmp.59, %z, !dbg !314         ; [#uses=1 type=i8] [debug line = 282:26]
  %tmp.61 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.60), !dbg !314 ; [#uses=1 type=i8] [debug line = 282:26]
  %tmp.62 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.61), !dbg !314 ; [#uses=1 type=i8] [debug line = 282:26]
  %x = xor i8 %tmp.62, %e, !dbg !314              ; [#uses=2 type=i8] [debug line = 282:26]
  call void @llvm.dbg.value(metadata !{i8 %x}, i64 0, metadata !315), !dbg !314 ; [debug line = 282:26] [debug variable = x]
  %tmp.64 = xor i8 %d, %b, !dbg !316              ; [#uses=1 type=i8] [debug line = 283:26]
  %tmp.65 = xor i8 %tmp.64, %z, !dbg !316         ; [#uses=1 type=i8] [debug line = 283:26]
  %tmp.66 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.65), !dbg !316 ; [#uses=1 type=i8] [debug line = 283:26]
  %tmp.67 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.66), !dbg !316 ; [#uses=1 type=i8] [debug line = 283:26]
  %y = xor i8 %tmp.67, %e, !dbg !316              ; [#uses=2 type=i8] [debug line = 283:26]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !317), !dbg !316 ; [debug line = 283:26] [debug variable = y]
  %tmp.69 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.56), !dbg !318 ; [#uses=1 type=i8] [debug line = 284:23]
  %buf.load = load i8* %buf.addr, align 1, !dbg !318 ; [#uses=2 type=i8] [debug line = 284:23]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  %tmp.70 = xor i8 %tmp.69, %x, !dbg !318         ; [#uses=1 type=i8] [debug line = 284:23]
  %tmp.71 = xor i8 %tmp.70, %buf.load, !dbg !318  ; [#uses=1 type=i8] [debug line = 284:23]
  store i8 %tmp.71, i8* %buf.addr, align 1, !dbg !318 ; [debug line = 284:23]
  %tmp.72 = xor i8 %c, %b, !dbg !319              ; [#uses=1 type=i8] [debug line = 285:27]
  %tmp.73 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.72), !dbg !319 ; [#uses=1 type=i8] [debug line = 285:27]
  %buf.load.26 = load i8* %buf.addr.32, align 1, !dbg !319 ; [#uses=2 type=i8] [debug line = 285:27]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.26) nounwind
  %tmp.74 = xor i8 %tmp.73, %y, !dbg !319         ; [#uses=1 type=i8] [debug line = 285:27]
  %tmp.75 = xor i8 %tmp.74, %buf.load.26, !dbg !319 ; [#uses=1 type=i8] [debug line = 285:27]
  store i8 %tmp.75, i8* %buf.addr.32, align 1, !dbg !319 ; [debug line = 285:27]
  %tmp.76 = xor i8 %d, %c, !dbg !320              ; [#uses=1 type=i8] [debug line = 286:27]
  %tmp.77 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.76), !dbg !320 ; [#uses=1 type=i8] [debug line = 286:27]
  %buf.load.27 = load i8* %buf.addr.33, align 1, !dbg !320 ; [#uses=2 type=i8] [debug line = 286:27]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.27) nounwind
  %tmp.78 = xor i8 %tmp.77, %x, !dbg !320         ; [#uses=1 type=i8] [debug line = 286:27]
  %tmp.79 = xor i8 %tmp.78, %buf.load.27, !dbg !320 ; [#uses=1 type=i8] [debug line = 286:27]
  store i8 %tmp.79, i8* %buf.addr.33, align 1, !dbg !320 ; [debug line = 286:27]
  %tmp.80 = xor i8 %d, %a, !dbg !321              ; [#uses=1 type=i8] [debug line = 287:27]
  %tmp.81 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.80), !dbg !321 ; [#uses=1 type=i8] [debug line = 287:27]
  %buf.load.28 = load i8* %buf.addr.34, align 1, !dbg !321 ; [#uses=2 type=i8] [debug line = 287:27]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.28) nounwind
  %tmp.82 = xor i8 %tmp.81, %y, !dbg !321         ; [#uses=1 type=i8] [debug line = 287:27]
  %tmp.83 = xor i8 %tmp.82, %buf.load.28, !dbg !321 ; [#uses=1 type=i8] [debug line = 287:27]
  store i8 %tmp.83, i8* %buf.addr.34, align 1, !dbg !321 ; [debug line = 287:27]
  %i.30 = add i8 %i, 4, !dbg !322                 ; [#uses=1 type=i8] [debug line = 274:25]
  call void @llvm.dbg.value(metadata !{i8 %i.30}, i64 0, metadata !323), !dbg !322 ; [debug line = 274:25] [debug variable = i]
  br label %1, !dbg !322                          ; [debug line = 274:25]

; <label>:3                                       ; preds = %1
  ret void, !dbg !324                             ; [debug line = 289:1]
}

; [#uses=1]
define internal fastcc void @aes_mixColumns(i8* %buf) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !325), !dbg !326 ; [debug line = 251:37] [debug variable = buf]
  br label %1, !dbg !327                          ; [debug line = 255:10]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 0, %0 ], [ %i.31, %2 ]            ; [#uses=4 type=i8]
  %tmp = icmp ult i8 %i, 16, !dbg !327            ; [#uses=1 type=i1] [debug line = 255:10]
  br i1 %tmp, label %2, label %3, !dbg !327       ; [debug line = 255:10]

; <label>:2                                       ; preds = %1
  %tmp.85 = zext i8 %i to i64, !dbg !330          ; [#uses=1 type=i64] [debug line = 257:9]
  %buf.addr = getelementptr inbounds i8* %buf, i64 %tmp.85, !dbg !330 ; [#uses=3 type=i8*] [debug line = 257:9]
  %a = load i8* %buf.addr, align 1, !dbg !330     ; [#uses=3 type=i8] [debug line = 257:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %a) nounwind
  call void @llvm.dbg.value(metadata !{i8 %a}, i64 0, metadata !332), !dbg !330 ; [debug line = 257:9] [debug variable = a]
  %tmp.86 = zext i8 %i to i32, !dbg !333          ; [#uses=3 type=i32] [debug line = 258:9]
  %tmp.87 = or i32 %tmp.86, 1, !dbg !333          ; [#uses=1 type=i32] [debug line = 258:9]
  %tmp.88 = zext i32 %tmp.87 to i64, !dbg !333    ; [#uses=1 type=i64] [debug line = 258:9]
  %buf.addr.35 = getelementptr inbounds i8* %buf, i64 %tmp.88, !dbg !333 ; [#uses=3 type=i8*] [debug line = 258:9]
  %b = load i8* %buf.addr.35, align 1, !dbg !333  ; [#uses=3 type=i8] [debug line = 258:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %b) nounwind
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !334), !dbg !333 ; [debug line = 258:9] [debug variable = b]
  %tmp.89 = or i32 %tmp.86, 2, !dbg !335          ; [#uses=1 type=i32] [debug line = 259:9]
  %tmp.90 = zext i32 %tmp.89 to i64, !dbg !335    ; [#uses=1 type=i64] [debug line = 259:9]
  %buf.addr.36 = getelementptr inbounds i8* %buf, i64 %tmp.90, !dbg !335 ; [#uses=3 type=i8*] [debug line = 259:9]
  %c = load i8* %buf.addr.36, align 1, !dbg !335  ; [#uses=4 type=i8] [debug line = 259:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %c) nounwind
  call void @llvm.dbg.value(metadata !{i8 %c}, i64 0, metadata !336), !dbg !335 ; [debug line = 259:9] [debug variable = c]
  %tmp.91 = or i32 %tmp.86, 3, !dbg !337          ; [#uses=1 type=i32] [debug line = 260:9]
  %tmp.92 = zext i32 %tmp.91 to i64, !dbg !337    ; [#uses=1 type=i64] [debug line = 260:9]
  %buf.addr.37 = getelementptr inbounds i8* %buf, i64 %tmp.92, !dbg !337 ; [#uses=3 type=i8*] [debug line = 260:9]
  %d = load i8* %buf.addr.37, align 1, !dbg !337  ; [#uses=4 type=i8] [debug line = 260:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %d) nounwind
  call void @llvm.dbg.value(metadata !{i8 %d}, i64 0, metadata !338), !dbg !337 ; [debug line = 260:9] [debug variable = d]
  %tmp.93 = xor i8 %b, %a, !dbg !339              ; [#uses=2 type=i8] [debug line = 261:9]
  %tmp.94 = xor i8 %c, %tmp.93, !dbg !339         ; [#uses=1 type=i8] [debug line = 261:9]
  %e = xor i8 %tmp.94, %d, !dbg !339              ; [#uses=4 type=i8] [debug line = 261:9]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !340), !dbg !339 ; [debug line = 261:9] [debug variable = e]
  %tmp.96 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.93), !dbg !341 ; [#uses=1 type=i8] [debug line = 262:23]
  %buf.load = load i8* %buf.addr, align 1, !dbg !341 ; [#uses=2 type=i8] [debug line = 262:23]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  %tmp.97 = xor i8 %tmp.96, %e, !dbg !341         ; [#uses=1 type=i8] [debug line = 262:23]
  %tmp.98 = xor i8 %tmp.97, %buf.load, !dbg !341  ; [#uses=1 type=i8] [debug line = 262:23]
  store i8 %tmp.98, i8* %buf.addr, align 1, !dbg !341 ; [debug line = 262:23]
  %tmp.99 = xor i8 %c, %b, !dbg !342              ; [#uses=1 type=i8] [debug line = 263:27]
  %tmp.100 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.99), !dbg !342 ; [#uses=1 type=i8] [debug line = 263:27]
  %buf.load.29 = load i8* %buf.addr.35, align 1, !dbg !342 ; [#uses=2 type=i8] [debug line = 263:27]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.29) nounwind
  %tmp.101 = xor i8 %tmp.100, %e, !dbg !342       ; [#uses=1 type=i8] [debug line = 263:27]
  %tmp.102 = xor i8 %tmp.101, %buf.load.29, !dbg !342 ; [#uses=1 type=i8] [debug line = 263:27]
  store i8 %tmp.102, i8* %buf.addr.35, align 1, !dbg !342 ; [debug line = 263:27]
  %tmp.103 = xor i8 %d, %c, !dbg !343             ; [#uses=1 type=i8] [debug line = 264:27]
  %tmp.104 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.103), !dbg !343 ; [#uses=1 type=i8] [debug line = 264:27]
  %buf.load.30 = load i8* %buf.addr.36, align 1, !dbg !343 ; [#uses=2 type=i8] [debug line = 264:27]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.30) nounwind
  %tmp.105 = xor i8 %tmp.104, %e, !dbg !343       ; [#uses=1 type=i8] [debug line = 264:27]
  %tmp.106 = xor i8 %tmp.105, %buf.load.30, !dbg !343 ; [#uses=1 type=i8] [debug line = 264:27]
  store i8 %tmp.106, i8* %buf.addr.36, align 1, !dbg !343 ; [debug line = 264:27]
  %tmp.107 = xor i8 %d, %a, !dbg !344             ; [#uses=1 type=i8] [debug line = 265:27]
  %tmp.108 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.107), !dbg !344 ; [#uses=1 type=i8] [debug line = 265:27]
  %buf.load.31 = load i8* %buf.addr.37, align 1, !dbg !344 ; [#uses=2 type=i8] [debug line = 265:27]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.31) nounwind
  %tmp.109 = xor i8 %tmp.108, %e, !dbg !344       ; [#uses=1 type=i8] [debug line = 265:27]
  %tmp.110 = xor i8 %tmp.109, %buf.load.31, !dbg !344 ; [#uses=1 type=i8] [debug line = 265:27]
  store i8 %tmp.110, i8* %buf.addr.37, align 1, !dbg !344 ; [debug line = 265:27]
  %i.31 = add i8 %i, 4, !dbg !345                 ; [#uses=1 type=i8] [debug line = 255:25]
  call void @llvm.dbg.value(metadata !{i8 %i.31}, i64 0, metadata !346), !dbg !345 ; [debug line = 255:25] [debug variable = i]
  br label %1, !dbg !345                          ; [debug line = 255:25]

; <label>:3                                       ; preds = %1
  ret void, !dbg !347                             ; [debug line = 267:1]
}

; [#uses=1]
define internal fastcc void @aes_init(i8* %k) nounwind uwtable {
  %rcon = alloca i8, align 1                      ; [#uses=2 type=i8*]
  call void @llvm.dbg.value(metadata !{i8* %k}, i64 0, metadata !348), !dbg !349 ; [debug line = 339:42] [debug variable = k]
  call void @llvm.dbg.declare(metadata !{i8* %rcon}, metadata !350), !dbg !352 ; [debug line = 341:13] [debug variable = rcon]
  store i8 1, i8* %rcon, align 1, !dbg !353       ; [debug line = 341:21]
  br label %1, !dbg !354                          ; [debug line = 344:10]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 0, %0 ], [ %i.32, %2 ]            ; [#uses=3 type=i8]
  %tmp = icmp eq i8 %i, 32, !dbg !354             ; [#uses=1 type=i1] [debug line = 344:10]
  br i1 %tmp, label %.preheader.preheader, label %2, !dbg !354 ; [debug line = 344:10]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !356                 ; [debug line = 345:10]

; <label>:2                                       ; preds = %1
  %tmp.112 = zext i8 %i to i64, !dbg !358         ; [#uses=3 type=i64] [debug line = 344:44]
  %k.addr = getelementptr inbounds i8* %k, i64 %tmp.112, !dbg !358 ; [#uses=1 type=i8*] [debug line = 344:44]
  %k.load = load i8* %k.addr, align 1, !dbg !358  ; [#uses=3 type=i8] [debug line = 344:44]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load) nounwind
  %ctx.addr = getelementptr inbounds %struct.aes_context.0* @ctx, i64 0, i32 2, i64 %tmp.112, !dbg !358 ; [#uses=1 type=i8*] [debug line = 344:44]
  store i8 %k.load, i8* %ctx.addr, align 1, !dbg !358 ; [debug line = 344:44]
  %ctx.addr.1 = getelementptr inbounds %struct.aes_context.0* @ctx, i64 0, i32 1, i64 %tmp.112, !dbg !358 ; [#uses=1 type=i8*] [debug line = 344:44]
  store i8 %k.load, i8* %ctx.addr.1, align 1, !dbg !358 ; [debug line = 344:44]
  %i.32 = add i8 %i, 1, !dbg !359                 ; [#uses=1 type=i8] [debug line = 344:39]
  call void @llvm.dbg.value(metadata !{i8 %i.32}, i64 0, metadata !360), !dbg !359 ; [debug line = 344:39] [debug variable = i]
  br label %1, !dbg !359                          ; [debug line = 344:39]

.preheader:                                       ; preds = %3, %.preheader.preheader
  %i.1 = phi i8 [ %phitmp, %3 ], [ 7, %.preheader.preheader ], !dbg !356 ; [#uses=2 type=i8] [debug line = 345:10]
  call void @llvm.dbg.value(metadata !{i8 %i.1}, i64 0, metadata !360), !dbg !356 ; [debug line = 345:10] [debug variable = i]
  %tmp.114 = icmp eq i8 %i.1, 0, !dbg !356        ; [#uses=1 type=i1] [debug line = 345:10]
  br i1 %tmp.114, label %4, label %3, !dbg !356   ; [debug line = 345:10]

; <label>:3                                       ; preds = %.preheader
  call fastcc void @aes_expandEncKey(i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 2, i64 0), i8* %rcon), !dbg !361 ; [debug line = 345:23]
  %phitmp = add i8 %i.1, -1, !dbg !361            ; [#uses=1 type=i8] [debug line = 345:23]
  br label %.preheader, !dbg !361                 ; [debug line = 345:23]

; <label>:4                                       ; preds = %.preheader
  ret void, !dbg !362                             ; [debug line = 346:1]
}

; [#uses=3]
define internal fastcc void @aes_expandEncKey(i8* %k, i8* %rc) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %k}, i64 0, metadata !363), !dbg !364 ; [debug line = 292:39] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i8* %rc}, i64 0, metadata !365), !dbg !366 ; [debug line = 292:51] [debug variable = rc]
  %k.addr = getelementptr inbounds i8* %k, i64 29, !dbg !367 ; [#uses=1 type=i8*] [debug line = 296:5]
  %k.load = load i8* %k.addr, align 1, !dbg !367  ; [#uses=2 type=i8] [debug line = 296:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load) nounwind
  %tmp = zext i8 %k.load to i64, !dbg !367        ; [#uses=1 type=i64] [debug line = 296:5]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp, !dbg !367 ; [#uses=1 type=i8*] [debug line = 296:5]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !367 ; [#uses=2 type=i8] [debug line = 296:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load) nounwind
  %rc.load = load i8* %rc, align 1, !dbg !367     ; [#uses=1 type=i8] [debug line = 296:5]
  %k.load.1 = load i8* %k, align 1, !dbg !367     ; [#uses=2 type=i8] [debug line = 296:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.1) nounwind
  %tmp.115 = xor i8 %rc.load, %sbox.load, !dbg !367 ; [#uses=1 type=i8] [debug line = 296:5]
  %tmp.116 = xor i8 %tmp.115, %k.load.1, !dbg !367 ; [#uses=1 type=i8] [debug line = 296:5]
  store i8 %tmp.116, i8* %k, align 1, !dbg !367   ; [debug line = 296:5]
  %k.addr.1 = getelementptr inbounds i8* %k, i64 30, !dbg !369 ; [#uses=1 type=i8*] [debug line = 297:5]
  %k.load.2 = load i8* %k.addr.1, align 1, !dbg !369 ; [#uses=2 type=i8] [debug line = 297:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.2) nounwind
  %tmp.117 = zext i8 %k.load.2 to i64, !dbg !369  ; [#uses=1 type=i64] [debug line = 297:5]
  %sbox.addr.1 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.117, !dbg !369 ; [#uses=1 type=i8*] [debug line = 297:5]
  %sbox.load.1 = load i8* %sbox.addr.1, align 1, !dbg !369 ; [#uses=2 type=i8] [debug line = 297:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.1) nounwind
  %k.addr.2 = getelementptr inbounds i8* %k, i64 1, !dbg !369 ; [#uses=2 type=i8*] [debug line = 297:5]
  %k.load.3 = load i8* %k.addr.2, align 1, !dbg !369 ; [#uses=2 type=i8] [debug line = 297:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.3) nounwind
  %tmp.118 = xor i8 %k.load.3, %sbox.load.1, !dbg !369 ; [#uses=1 type=i8] [debug line = 297:5]
  store i8 %tmp.118, i8* %k.addr.2, align 1, !dbg !369 ; [debug line = 297:5]
  %k.addr.3 = getelementptr inbounds i8* %k, i64 31, !dbg !370 ; [#uses=1 type=i8*] [debug line = 298:5]
  %k.load.4 = load i8* %k.addr.3, align 1, !dbg !370 ; [#uses=2 type=i8] [debug line = 298:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.4) nounwind
  %tmp.119 = zext i8 %k.load.4 to i64, !dbg !370  ; [#uses=1 type=i64] [debug line = 298:5]
  %sbox.addr.2 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.119, !dbg !370 ; [#uses=1 type=i8*] [debug line = 298:5]
  %sbox.load.2 = load i8* %sbox.addr.2, align 1, !dbg !370 ; [#uses=2 type=i8] [debug line = 298:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.2) nounwind
  %k.addr.4 = getelementptr inbounds i8* %k, i64 2, !dbg !370 ; [#uses=2 type=i8*] [debug line = 298:5]
  %k.load.5 = load i8* %k.addr.4, align 1, !dbg !370 ; [#uses=2 type=i8] [debug line = 298:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.5) nounwind
  %tmp.120 = xor i8 %k.load.5, %sbox.load.2, !dbg !370 ; [#uses=1 type=i8] [debug line = 298:5]
  store i8 %tmp.120, i8* %k.addr.4, align 1, !dbg !370 ; [debug line = 298:5]
  %k.addr.5 = getelementptr inbounds i8* %k, i64 28, !dbg !371 ; [#uses=1 type=i8*] [debug line = 299:5]
  %k.load.6 = load i8* %k.addr.5, align 1, !dbg !371 ; [#uses=2 type=i8] [debug line = 299:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.6) nounwind
  %tmp.121 = zext i8 %k.load.6 to i64, !dbg !371  ; [#uses=1 type=i64] [debug line = 299:5]
  %sbox.addr.3 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.121, !dbg !371 ; [#uses=1 type=i8*] [debug line = 299:5]
  %sbox.load.3 = load i8* %sbox.addr.3, align 1, !dbg !371 ; [#uses=2 type=i8] [debug line = 299:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.3) nounwind
  %k.addr.6 = getelementptr inbounds i8* %k, i64 3, !dbg !371 ; [#uses=2 type=i8*] [debug line = 299:5]
  %k.load.7 = load i8* %k.addr.6, align 1, !dbg !371 ; [#uses=2 type=i8] [debug line = 299:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.7) nounwind
  %tmp.122 = xor i8 %k.load.7, %sbox.load.3, !dbg !371 ; [#uses=1 type=i8] [debug line = 299:5]
  store i8 %tmp.122, i8* %k.addr.6, align 1, !dbg !371 ; [debug line = 299:5]
  %rc.load.1 = load i8* %rc, align 1, !dbg !372   ; [#uses=1 type=i8] [debug line = 300:11]
  %tmp.123 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %rc.load.1), !dbg !372 ; [#uses=1 type=i8] [debug line = 300:11]
  store i8 %tmp.123, i8* %rc, align 1, !dbg !372  ; [debug line = 300:11]
  br label %1, !dbg !373                          ; [debug line = 302:9]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 4, %0 ], [ %i.33, %2 ]            ; [#uses=4 type=i8]
  %tmp.124 = icmp ult i8 %i, 16, !dbg !373        ; [#uses=1 type=i1] [debug line = 302:9]
  br i1 %tmp.124, label %2, label %3, !dbg !373   ; [debug line = 302:9]

; <label>:2                                       ; preds = %1
  %tmp.125 = zext i8 %i to i32, !dbg !375         ; [#uses=7 type=i32] [debug line = 302:32]
  %tmp.126 = add nsw i32 %tmp.125, -4, !dbg !375  ; [#uses=1 type=i32] [debug line = 302:32]
  %tmp.127 = sext i32 %tmp.126 to i64, !dbg !375  ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.7 = getelementptr inbounds i8* %k, i64 %tmp.127, !dbg !375 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k.load.8 = load i8* %k.addr.7, align 1, !dbg !375 ; [#uses=2 type=i8] [debug line = 302:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.8) nounwind
  %tmp.128 = zext i8 %i to i64, !dbg !375         ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.8 = getelementptr inbounds i8* %k, i64 %tmp.128, !dbg !375 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k.load.9 = load i8* %k.addr.8, align 1, !dbg !375 ; [#uses=2 type=i8] [debug line = 302:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.9) nounwind
  %tmp.129 = xor i8 %k.load.9, %k.load.8, !dbg !375 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp.129, i8* %k.addr.8, align 1, !dbg !375 ; [debug line = 302:32]
  %tmp.130 = add nsw i32 %tmp.125, -3, !dbg !375  ; [#uses=1 type=i32] [debug line = 302:32]
  %tmp.131 = sext i32 %tmp.130 to i64, !dbg !375  ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.9 = getelementptr inbounds i8* %k, i64 %tmp.131, !dbg !375 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k.load.10 = load i8* %k.addr.9, align 1, !dbg !375 ; [#uses=2 type=i8] [debug line = 302:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.10) nounwind
  %tmp.132 = or i32 %tmp.125, 1, !dbg !375        ; [#uses=1 type=i32] [debug line = 302:32]
  %tmp.133 = zext i32 %tmp.132 to i64, !dbg !375  ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.10 = getelementptr inbounds i8* %k, i64 %tmp.133, !dbg !375 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k.load.11 = load i8* %k.addr.10, align 1, !dbg !375 ; [#uses=2 type=i8] [debug line = 302:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.11) nounwind
  %tmp.134 = xor i8 %k.load.11, %k.load.10, !dbg !375 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp.134, i8* %k.addr.10, align 1, !dbg !375 ; [debug line = 302:32]
  %tmp.135 = add nsw i32 %tmp.125, -2, !dbg !375  ; [#uses=1 type=i32] [debug line = 302:32]
  %tmp.136 = sext i32 %tmp.135 to i64, !dbg !375  ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.11 = getelementptr inbounds i8* %k, i64 %tmp.136, !dbg !375 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k.load.12 = load i8* %k.addr.11, align 1, !dbg !375 ; [#uses=2 type=i8] [debug line = 302:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.12) nounwind
  %tmp.137 = or i32 %tmp.125, 2, !dbg !375        ; [#uses=1 type=i32] [debug line = 302:32]
  %tmp.138 = zext i32 %tmp.137 to i64, !dbg !375  ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.12 = getelementptr inbounds i8* %k, i64 %tmp.138, !dbg !375 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k.load.13 = load i8* %k.addr.12, align 1, !dbg !375 ; [#uses=2 type=i8] [debug line = 302:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.13) nounwind
  %tmp.139 = xor i8 %k.load.13, %k.load.12, !dbg !375 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp.139, i8* %k.addr.12, align 1, !dbg !375 ; [debug line = 302:32]
  %tmp.140 = add nsw i32 %tmp.125, -1, !dbg !375  ; [#uses=1 type=i32] [debug line = 302:32]
  %tmp.141 = sext i32 %tmp.140 to i64, !dbg !375  ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.13 = getelementptr inbounds i8* %k, i64 %tmp.141, !dbg !375 ; [#uses=1 type=i8*] [debug line = 302:32]
  %k.load.14 = load i8* %k.addr.13, align 1, !dbg !375 ; [#uses=2 type=i8] [debug line = 302:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.14) nounwind
  %tmp.142 = or i32 %tmp.125, 3, !dbg !375        ; [#uses=1 type=i32] [debug line = 302:32]
  %tmp.143 = zext i32 %tmp.142 to i64, !dbg !375  ; [#uses=1 type=i64] [debug line = 302:32]
  %k.addr.14 = getelementptr inbounds i8* %k, i64 %tmp.143, !dbg !375 ; [#uses=2 type=i8*] [debug line = 302:32]
  %k.load.15 = load i8* %k.addr.14, align 1, !dbg !375 ; [#uses=2 type=i8] [debug line = 302:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.15) nounwind
  %tmp.144 = xor i8 %k.load.15, %k.load.14, !dbg !375 ; [#uses=1 type=i8] [debug line = 302:32]
  store i8 %tmp.144, i8* %k.addr.14, align 1, !dbg !375 ; [debug line = 302:32]
  %i.33 = add i8 %i, 4, !dbg !376                 ; [#uses=1 type=i8] [debug line = 302:24]
  call void @llvm.dbg.value(metadata !{i8 %i.33}, i64 0, metadata !377), !dbg !376 ; [debug line = 302:24] [debug variable = i]
  br label %1, !dbg !376                          ; [debug line = 302:24]

; <label>:3                                       ; preds = %1
  %k.addr.15 = getelementptr inbounds i8* %k, i64 12, !dbg !378 ; [#uses=1 type=i8*] [debug line = 304:5]
  %k.load.16 = load i8* %k.addr.15, align 1, !dbg !378 ; [#uses=2 type=i8] [debug line = 304:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.16) nounwind
  %tmp.146 = zext i8 %k.load.16 to i64, !dbg !378 ; [#uses=1 type=i64] [debug line = 304:5]
  %sbox.addr.4 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.146, !dbg !378 ; [#uses=1 type=i8*] [debug line = 304:5]
  %sbox.load.4 = load i8* %sbox.addr.4, align 1, !dbg !378 ; [#uses=2 type=i8] [debug line = 304:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.4) nounwind
  %k.addr.16 = getelementptr inbounds i8* %k, i64 16, !dbg !378 ; [#uses=2 type=i8*] [debug line = 304:5]
  %k.load.17 = load i8* %k.addr.16, align 1, !dbg !378 ; [#uses=2 type=i8] [debug line = 304:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.17) nounwind
  %tmp.147 = xor i8 %k.load.17, %sbox.load.4, !dbg !378 ; [#uses=1 type=i8] [debug line = 304:5]
  store i8 %tmp.147, i8* %k.addr.16, align 1, !dbg !378 ; [debug line = 304:5]
  %k.addr.17 = getelementptr inbounds i8* %k, i64 13, !dbg !379 ; [#uses=1 type=i8*] [debug line = 305:5]
  %k.load.18 = load i8* %k.addr.17, align 1, !dbg !379 ; [#uses=2 type=i8] [debug line = 305:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.18) nounwind
  %tmp.148 = zext i8 %k.load.18 to i64, !dbg !379 ; [#uses=1 type=i64] [debug line = 305:5]
  %sbox.addr.5 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.148, !dbg !379 ; [#uses=1 type=i8*] [debug line = 305:5]
  %sbox.load.5 = load i8* %sbox.addr.5, align 1, !dbg !379 ; [#uses=2 type=i8] [debug line = 305:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.5) nounwind
  %k.addr.18 = getelementptr inbounds i8* %k, i64 17, !dbg !379 ; [#uses=2 type=i8*] [debug line = 305:5]
  %k.load.19 = load i8* %k.addr.18, align 1, !dbg !379 ; [#uses=2 type=i8] [debug line = 305:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.19) nounwind
  %tmp.149 = xor i8 %k.load.19, %sbox.load.5, !dbg !379 ; [#uses=1 type=i8] [debug line = 305:5]
  store i8 %tmp.149, i8* %k.addr.18, align 1, !dbg !379 ; [debug line = 305:5]
  %k.addr.19 = getelementptr inbounds i8* %k, i64 14, !dbg !380 ; [#uses=1 type=i8*] [debug line = 306:5]
  %k.load.20 = load i8* %k.addr.19, align 1, !dbg !380 ; [#uses=2 type=i8] [debug line = 306:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.20) nounwind
  %tmp.150 = zext i8 %k.load.20 to i64, !dbg !380 ; [#uses=1 type=i64] [debug line = 306:5]
  %sbox.addr.6 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.150, !dbg !380 ; [#uses=1 type=i8*] [debug line = 306:5]
  %sbox.load.6 = load i8* %sbox.addr.6, align 1, !dbg !380 ; [#uses=2 type=i8] [debug line = 306:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.6) nounwind
  %k.addr.20 = getelementptr inbounds i8* %k, i64 18, !dbg !380 ; [#uses=2 type=i8*] [debug line = 306:5]
  %k.load.21 = load i8* %k.addr.20, align 1, !dbg !380 ; [#uses=2 type=i8] [debug line = 306:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.21) nounwind
  %tmp.151 = xor i8 %k.load.21, %sbox.load.6, !dbg !380 ; [#uses=1 type=i8] [debug line = 306:5]
  store i8 %tmp.151, i8* %k.addr.20, align 1, !dbg !380 ; [debug line = 306:5]
  %k.addr.21 = getelementptr inbounds i8* %k, i64 15, !dbg !381 ; [#uses=1 type=i8*] [debug line = 307:5]
  %k.load.22 = load i8* %k.addr.21, align 1, !dbg !381 ; [#uses=2 type=i8] [debug line = 307:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.22) nounwind
  %tmp.152 = zext i8 %k.load.22 to i64, !dbg !381 ; [#uses=1 type=i64] [debug line = 307:5]
  %sbox.addr.7 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.152, !dbg !381 ; [#uses=1 type=i8*] [debug line = 307:5]
  %sbox.load.7 = load i8* %sbox.addr.7, align 1, !dbg !381 ; [#uses=2 type=i8] [debug line = 307:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.7) nounwind
  %k.addr.22 = getelementptr inbounds i8* %k, i64 19, !dbg !381 ; [#uses=2 type=i8*] [debug line = 307:5]
  %k.load.23 = load i8* %k.addr.22, align 1, !dbg !381 ; [#uses=2 type=i8] [debug line = 307:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.23) nounwind
  %tmp.153 = xor i8 %k.load.23, %sbox.load.7, !dbg !381 ; [#uses=1 type=i8] [debug line = 307:5]
  store i8 %tmp.153, i8* %k.addr.22, align 1, !dbg !381 ; [debug line = 307:5]
  br label %4, !dbg !382                          ; [debug line = 309:9]

; <label>:4                                       ; preds = %5, %3
  %i.1 = phi i8 [ 20, %3 ], [ %i.34, %5 ]         ; [#uses=4 type=i8]
  %tmp.154 = icmp ult i8 %i.1, 32, !dbg !382      ; [#uses=1 type=i1] [debug line = 309:9]
  br i1 %tmp.154, label %5, label %6, !dbg !382   ; [debug line = 309:9]

; <label>:5                                       ; preds = %4
  %tmp.155 = zext i8 %i.1 to i32, !dbg !384       ; [#uses=7 type=i32] [debug line = 309:33]
  %tmp.156 = add nsw i32 %tmp.155, -4, !dbg !384  ; [#uses=1 type=i32] [debug line = 309:33]
  %tmp.157 = sext i32 %tmp.156 to i64, !dbg !384  ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.23 = getelementptr inbounds i8* %k, i64 %tmp.157, !dbg !384 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k.load.24 = load i8* %k.addr.23, align 1, !dbg !384 ; [#uses=2 type=i8] [debug line = 309:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.24) nounwind
  %tmp.158 = zext i8 %i.1 to i64, !dbg !384       ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.24 = getelementptr inbounds i8* %k, i64 %tmp.158, !dbg !384 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k.load.25 = load i8* %k.addr.24, align 1, !dbg !384 ; [#uses=2 type=i8] [debug line = 309:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.25) nounwind
  %tmp.159 = xor i8 %k.load.25, %k.load.24, !dbg !384 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp.159, i8* %k.addr.24, align 1, !dbg !384 ; [debug line = 309:33]
  %tmp.160 = add nsw i32 %tmp.155, -3, !dbg !384  ; [#uses=1 type=i32] [debug line = 309:33]
  %tmp.161 = sext i32 %tmp.160 to i64, !dbg !384  ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.25 = getelementptr inbounds i8* %k, i64 %tmp.161, !dbg !384 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k.load.26 = load i8* %k.addr.25, align 1, !dbg !384 ; [#uses=2 type=i8] [debug line = 309:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.26) nounwind
  %tmp.162 = or i32 %tmp.155, 1, !dbg !384        ; [#uses=1 type=i32] [debug line = 309:33]
  %tmp.163 = zext i32 %tmp.162 to i64, !dbg !384  ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.26 = getelementptr inbounds i8* %k, i64 %tmp.163, !dbg !384 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k.load.27 = load i8* %k.addr.26, align 1, !dbg !384 ; [#uses=2 type=i8] [debug line = 309:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.27) nounwind
  %tmp.164 = xor i8 %k.load.27, %k.load.26, !dbg !384 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp.164, i8* %k.addr.26, align 1, !dbg !384 ; [debug line = 309:33]
  %tmp.165 = add nsw i32 %tmp.155, -2, !dbg !384  ; [#uses=1 type=i32] [debug line = 309:33]
  %tmp.166 = sext i32 %tmp.165 to i64, !dbg !384  ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.27 = getelementptr inbounds i8* %k, i64 %tmp.166, !dbg !384 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k.load.28 = load i8* %k.addr.27, align 1, !dbg !384 ; [#uses=2 type=i8] [debug line = 309:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.28) nounwind
  %tmp.167 = or i32 %tmp.155, 2, !dbg !384        ; [#uses=1 type=i32] [debug line = 309:33]
  %tmp.168 = zext i32 %tmp.167 to i64, !dbg !384  ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.28 = getelementptr inbounds i8* %k, i64 %tmp.168, !dbg !384 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k.load.29 = load i8* %k.addr.28, align 1, !dbg !384 ; [#uses=2 type=i8] [debug line = 309:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.29) nounwind
  %tmp.169 = xor i8 %k.load.29, %k.load.28, !dbg !384 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp.169, i8* %k.addr.28, align 1, !dbg !384 ; [debug line = 309:33]
  %tmp.170 = add nsw i32 %tmp.155, -1, !dbg !384  ; [#uses=1 type=i32] [debug line = 309:33]
  %tmp.171 = sext i32 %tmp.170 to i64, !dbg !384  ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.29 = getelementptr inbounds i8* %k, i64 %tmp.171, !dbg !384 ; [#uses=1 type=i8*] [debug line = 309:33]
  %k.load.30 = load i8* %k.addr.29, align 1, !dbg !384 ; [#uses=2 type=i8] [debug line = 309:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.30) nounwind
  %tmp.172 = or i32 %tmp.155, 3, !dbg !384        ; [#uses=1 type=i32] [debug line = 309:33]
  %tmp.173 = zext i32 %tmp.172 to i64, !dbg !384  ; [#uses=1 type=i64] [debug line = 309:33]
  %k.addr.30 = getelementptr inbounds i8* %k, i64 %tmp.173, !dbg !384 ; [#uses=2 type=i8*] [debug line = 309:33]
  %k.load.31 = load i8* %k.addr.30, align 1, !dbg !384 ; [#uses=2 type=i8] [debug line = 309:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.31) nounwind
  %tmp.174 = xor i8 %k.load.31, %k.load.30, !dbg !384 ; [#uses=1 type=i8] [debug line = 309:33]
  store i8 %tmp.174, i8* %k.addr.30, align 1, !dbg !384 ; [debug line = 309:33]
  %i.34 = add i8 %i.1, 4, !dbg !385               ; [#uses=1 type=i8] [debug line = 309:25]
  call void @llvm.dbg.value(metadata !{i8 %i.34}, i64 0, metadata !377), !dbg !385 ; [debug line = 309:25] [debug variable = i]
  br label %4, !dbg !385                          ; [debug line = 309:25]

; <label>:6                                       ; preds = %4
  ret void, !dbg !386                             ; [debug line = 312:1]
}

; [#uses=1]
define internal fastcc void @aes_expandDecKey(i8* %k, i8* %rc) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %k}, i64 0, metadata !387), !dbg !388 ; [debug line = 315:32] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i8* %rc}, i64 0, metadata !389), !dbg !390 ; [debug line = 315:44] [debug variable = rc]
  br label %1, !dbg !391                          ; [debug line = 319:9]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 28, %0 ], [ %i.35, %2 ]           ; [#uses=4 type=i8]
  %tmp = icmp ugt i8 %i, 16, !dbg !391            ; [#uses=1 type=i1] [debug line = 319:9]
  br i1 %tmp, label %2, label %3, !dbg !391       ; [debug line = 319:9]

; <label>:2                                       ; preds = %1
  %tmp.176 = zext i8 %i to i32, !dbg !394         ; [#uses=7 type=i32] [debug line = 319:33]
  %tmp.177 = add nsw i32 %tmp.176, -4, !dbg !394  ; [#uses=1 type=i32] [debug line = 319:33]
  %tmp.178 = sext i32 %tmp.177 to i64, !dbg !394  ; [#uses=1 type=i64] [debug line = 319:33]
  %k.addr = getelementptr inbounds i8* %k, i64 %tmp.178, !dbg !394 ; [#uses=1 type=i8*] [debug line = 319:33]
  %k.load = load i8* %k.addr, align 1, !dbg !394  ; [#uses=2 type=i8] [debug line = 319:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load) nounwind
  %tmp.179 = zext i8 %i to i64, !dbg !394         ; [#uses=1 type=i64] [debug line = 319:33]
  %k.addr.31 = getelementptr inbounds i8* %k, i64 %tmp.179, !dbg !394 ; [#uses=2 type=i8*] [debug line = 319:33]
  %k.load.32 = load i8* %k.addr.31, align 1, !dbg !394 ; [#uses=2 type=i8] [debug line = 319:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.32) nounwind
  %tmp.180 = xor i8 %k.load.32, %k.load, !dbg !394 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp.180, i8* %k.addr.31, align 1, !dbg !394 ; [debug line = 319:33]
  %tmp.181 = add nsw i32 %tmp.176, -3, !dbg !394  ; [#uses=1 type=i32] [debug line = 319:33]
  %tmp.182 = sext i32 %tmp.181 to i64, !dbg !394  ; [#uses=1 type=i64] [debug line = 319:33]
  %k.addr.32 = getelementptr inbounds i8* %k, i64 %tmp.182, !dbg !394 ; [#uses=1 type=i8*] [debug line = 319:33]
  %k.load.33 = load i8* %k.addr.32, align 1, !dbg !394 ; [#uses=2 type=i8] [debug line = 319:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.33) nounwind
  %tmp.183 = or i32 %tmp.176, 1, !dbg !394        ; [#uses=1 type=i32] [debug line = 319:33]
  %tmp.184 = zext i32 %tmp.183 to i64, !dbg !394  ; [#uses=1 type=i64] [debug line = 319:33]
  %k.addr.33 = getelementptr inbounds i8* %k, i64 %tmp.184, !dbg !394 ; [#uses=2 type=i8*] [debug line = 319:33]
  %k.load.34 = load i8* %k.addr.33, align 1, !dbg !394 ; [#uses=2 type=i8] [debug line = 319:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.34) nounwind
  %tmp.185 = xor i8 %k.load.34, %k.load.33, !dbg !394 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp.185, i8* %k.addr.33, align 1, !dbg !394 ; [debug line = 319:33]
  %tmp.186 = add nsw i32 %tmp.176, -2, !dbg !394  ; [#uses=1 type=i32] [debug line = 319:33]
  %tmp.187 = sext i32 %tmp.186 to i64, !dbg !394  ; [#uses=1 type=i64] [debug line = 319:33]
  %k.addr.34 = getelementptr inbounds i8* %k, i64 %tmp.187, !dbg !394 ; [#uses=1 type=i8*] [debug line = 319:33]
  %k.load.35 = load i8* %k.addr.34, align 1, !dbg !394 ; [#uses=2 type=i8] [debug line = 319:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.35) nounwind
  %tmp.188 = or i32 %tmp.176, 2, !dbg !394        ; [#uses=1 type=i32] [debug line = 319:33]
  %tmp.189 = zext i32 %tmp.188 to i64, !dbg !394  ; [#uses=1 type=i64] [debug line = 319:33]
  %k.addr.35 = getelementptr inbounds i8* %k, i64 %tmp.189, !dbg !394 ; [#uses=2 type=i8*] [debug line = 319:33]
  %k.load.36 = load i8* %k.addr.35, align 1, !dbg !394 ; [#uses=2 type=i8] [debug line = 319:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.36) nounwind
  %tmp.190 = xor i8 %k.load.36, %k.load.35, !dbg !394 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp.190, i8* %k.addr.35, align 1, !dbg !394 ; [debug line = 319:33]
  %tmp.191 = add nsw i32 %tmp.176, -1, !dbg !394  ; [#uses=1 type=i32] [debug line = 319:33]
  %tmp.192 = sext i32 %tmp.191 to i64, !dbg !394  ; [#uses=1 type=i64] [debug line = 319:33]
  %k.addr.36 = getelementptr inbounds i8* %k, i64 %tmp.192, !dbg !394 ; [#uses=1 type=i8*] [debug line = 319:33]
  %k.load.37 = load i8* %k.addr.36, align 1, !dbg !394 ; [#uses=2 type=i8] [debug line = 319:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.37) nounwind
  %tmp.193 = or i32 %tmp.176, 3, !dbg !394        ; [#uses=1 type=i32] [debug line = 319:33]
  %tmp.194 = zext i32 %tmp.193 to i64, !dbg !394  ; [#uses=1 type=i64] [debug line = 319:33]
  %k.addr.37 = getelementptr inbounds i8* %k, i64 %tmp.194, !dbg !394 ; [#uses=2 type=i8*] [debug line = 319:33]
  %k.load.38 = load i8* %k.addr.37, align 1, !dbg !394 ; [#uses=2 type=i8] [debug line = 319:33]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.38) nounwind
  %tmp.195 = xor i8 %k.load.38, %k.load.37, !dbg !394 ; [#uses=1 type=i8] [debug line = 319:33]
  store i8 %tmp.195, i8* %k.addr.37, align 1, !dbg !394 ; [debug line = 319:33]
  %i.35 = add i8 %i, -4, !dbg !395                ; [#uses=1 type=i8] [debug line = 319:25]
  call void @llvm.dbg.value(metadata !{i8 %i.35}, i64 0, metadata !396), !dbg !395 ; [debug line = 319:25] [debug variable = i]
  br label %1, !dbg !395                          ; [debug line = 319:25]

; <label>:3                                       ; preds = %1
  %k.addr.38 = getelementptr inbounds i8* %k, i64 12, !dbg !397 ; [#uses=1 type=i8*] [debug line = 322:5]
  %k.load.39 = load i8* %k.addr.38, align 1, !dbg !397 ; [#uses=2 type=i8] [debug line = 322:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.39) nounwind
  %tmp.197 = zext i8 %k.load.39 to i64, !dbg !397 ; [#uses=1 type=i64] [debug line = 322:5]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.197, !dbg !397 ; [#uses=1 type=i8*] [debug line = 322:5]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !397 ; [#uses=2 type=i8] [debug line = 322:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load) nounwind
  %k.addr.39 = getelementptr inbounds i8* %k, i64 16, !dbg !397 ; [#uses=2 type=i8*] [debug line = 322:5]
  %k.load.40 = load i8* %k.addr.39, align 1, !dbg !397 ; [#uses=2 type=i8] [debug line = 322:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.40) nounwind
  %tmp.198 = xor i8 %k.load.40, %sbox.load, !dbg !397 ; [#uses=1 type=i8] [debug line = 322:5]
  store i8 %tmp.198, i8* %k.addr.39, align 1, !dbg !397 ; [debug line = 322:5]
  %k.addr.40 = getelementptr inbounds i8* %k, i64 13, !dbg !398 ; [#uses=1 type=i8*] [debug line = 323:5]
  %k.load.41 = load i8* %k.addr.40, align 1, !dbg !398 ; [#uses=2 type=i8] [debug line = 323:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.41) nounwind
  %tmp.199 = zext i8 %k.load.41 to i64, !dbg !398 ; [#uses=1 type=i64] [debug line = 323:5]
  %sbox.addr.8 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.199, !dbg !398 ; [#uses=1 type=i8*] [debug line = 323:5]
  %sbox.load.8 = load i8* %sbox.addr.8, align 1, !dbg !398 ; [#uses=2 type=i8] [debug line = 323:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.8) nounwind
  %k.addr.41 = getelementptr inbounds i8* %k, i64 17, !dbg !398 ; [#uses=2 type=i8*] [debug line = 323:5]
  %k.load.42 = load i8* %k.addr.41, align 1, !dbg !398 ; [#uses=2 type=i8] [debug line = 323:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.42) nounwind
  %tmp.200 = xor i8 %k.load.42, %sbox.load.8, !dbg !398 ; [#uses=1 type=i8] [debug line = 323:5]
  store i8 %tmp.200, i8* %k.addr.41, align 1, !dbg !398 ; [debug line = 323:5]
  %k.addr.42 = getelementptr inbounds i8* %k, i64 14, !dbg !399 ; [#uses=1 type=i8*] [debug line = 324:5]
  %k.load.43 = load i8* %k.addr.42, align 1, !dbg !399 ; [#uses=2 type=i8] [debug line = 324:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.43) nounwind
  %tmp.201 = zext i8 %k.load.43 to i64, !dbg !399 ; [#uses=1 type=i64] [debug line = 324:5]
  %sbox.addr.9 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.201, !dbg !399 ; [#uses=1 type=i8*] [debug line = 324:5]
  %sbox.load.9 = load i8* %sbox.addr.9, align 1, !dbg !399 ; [#uses=2 type=i8] [debug line = 324:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.9) nounwind
  %k.addr.43 = getelementptr inbounds i8* %k, i64 18, !dbg !399 ; [#uses=2 type=i8*] [debug line = 324:5]
  %k.load.44 = load i8* %k.addr.43, align 1, !dbg !399 ; [#uses=2 type=i8] [debug line = 324:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.44) nounwind
  %tmp.202 = xor i8 %k.load.44, %sbox.load.9, !dbg !399 ; [#uses=1 type=i8] [debug line = 324:5]
  store i8 %tmp.202, i8* %k.addr.43, align 1, !dbg !399 ; [debug line = 324:5]
  %k.addr.44 = getelementptr inbounds i8* %k, i64 15, !dbg !400 ; [#uses=1 type=i8*] [debug line = 325:5]
  %k.load.45 = load i8* %k.addr.44, align 1, !dbg !400 ; [#uses=2 type=i8] [debug line = 325:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.45) nounwind
  %tmp.203 = zext i8 %k.load.45 to i64, !dbg !400 ; [#uses=1 type=i64] [debug line = 325:5]
  %sbox.addr.10 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.203, !dbg !400 ; [#uses=1 type=i8*] [debug line = 325:5]
  %sbox.load.10 = load i8* %sbox.addr.10, align 1, !dbg !400 ; [#uses=2 type=i8] [debug line = 325:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.10) nounwind
  %k.addr.45 = getelementptr inbounds i8* %k, i64 19, !dbg !400 ; [#uses=2 type=i8*] [debug line = 325:5]
  %k.load.46 = load i8* %k.addr.45, align 1, !dbg !400 ; [#uses=2 type=i8] [debug line = 325:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.46) nounwind
  %tmp.204 = xor i8 %k.load.46, %sbox.load.10, !dbg !400 ; [#uses=1 type=i8] [debug line = 325:5]
  store i8 %tmp.204, i8* %k.addr.45, align 1, !dbg !400 ; [debug line = 325:5]
  br label %4, !dbg !401                          ; [debug line = 327:9]

; <label>:4                                       ; preds = %5, %3
  %i.1 = phi i8 [ 12, %3 ], [ %i.36, %5 ]         ; [#uses=4 type=i8]
  %tmp.205 = icmp eq i8 %i.1, 0, !dbg !401        ; [#uses=1 type=i1] [debug line = 327:9]
  br i1 %tmp.205, label %6, label %5, !dbg !401   ; [debug line = 327:9]

; <label>:5                                       ; preds = %4
  %tmp.220 = zext i8 %i.1 to i32, !dbg !403       ; [#uses=7 type=i32] [debug line = 327:32]
  %tmp.221 = add nsw i32 %tmp.220, -4, !dbg !403  ; [#uses=1 type=i32] [debug line = 327:32]
  %tmp.222 = sext i32 %tmp.221 to i64, !dbg !403  ; [#uses=1 type=i64] [debug line = 327:32]
  %k.addr.53 = getelementptr inbounds i8* %k, i64 %tmp.222, !dbg !403 ; [#uses=1 type=i8*] [debug line = 327:32]
  %k.load.55 = load i8* %k.addr.53, align 1, !dbg !403 ; [#uses=2 type=i8] [debug line = 327:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.55) nounwind
  %tmp.223 = zext i8 %i.1 to i64, !dbg !403       ; [#uses=1 type=i64] [debug line = 327:32]
  %k.addr.54 = getelementptr inbounds i8* %k, i64 %tmp.223, !dbg !403 ; [#uses=2 type=i8*] [debug line = 327:32]
  %k.load.56 = load i8* %k.addr.54, align 1, !dbg !403 ; [#uses=2 type=i8] [debug line = 327:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.56) nounwind
  %tmp.224 = xor i8 %k.load.56, %k.load.55, !dbg !403 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp.224, i8* %k.addr.54, align 1, !dbg !403 ; [debug line = 327:32]
  %tmp.225 = add nsw i32 %tmp.220, -3, !dbg !403  ; [#uses=1 type=i32] [debug line = 327:32]
  %tmp.226 = sext i32 %tmp.225 to i64, !dbg !403  ; [#uses=1 type=i64] [debug line = 327:32]
  %k.addr.55 = getelementptr inbounds i8* %k, i64 %tmp.226, !dbg !403 ; [#uses=1 type=i8*] [debug line = 327:32]
  %k.load.57 = load i8* %k.addr.55, align 1, !dbg !403 ; [#uses=2 type=i8] [debug line = 327:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.57) nounwind
  %tmp.227 = or i32 %tmp.220, 1, !dbg !403        ; [#uses=1 type=i32] [debug line = 327:32]
  %tmp.228 = zext i32 %tmp.227 to i64, !dbg !403  ; [#uses=1 type=i64] [debug line = 327:32]
  %k.addr.56 = getelementptr inbounds i8* %k, i64 %tmp.228, !dbg !403 ; [#uses=2 type=i8*] [debug line = 327:32]
  %k.load.58 = load i8* %k.addr.56, align 1, !dbg !403 ; [#uses=2 type=i8] [debug line = 327:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.58) nounwind
  %tmp.229 = xor i8 %k.load.58, %k.load.57, !dbg !403 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp.229, i8* %k.addr.56, align 1, !dbg !403 ; [debug line = 327:32]
  %tmp.230 = add nsw i32 %tmp.220, -2, !dbg !403  ; [#uses=1 type=i32] [debug line = 327:32]
  %tmp.231 = sext i32 %tmp.230 to i64, !dbg !403  ; [#uses=1 type=i64] [debug line = 327:32]
  %k.addr.57 = getelementptr inbounds i8* %k, i64 %tmp.231, !dbg !403 ; [#uses=1 type=i8*] [debug line = 327:32]
  %k.load.59 = load i8* %k.addr.57, align 1, !dbg !403 ; [#uses=2 type=i8] [debug line = 327:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.59) nounwind
  %tmp.232 = or i32 %tmp.220, 2, !dbg !403        ; [#uses=1 type=i32] [debug line = 327:32]
  %tmp.233 = zext i32 %tmp.232 to i64, !dbg !403  ; [#uses=1 type=i64] [debug line = 327:32]
  %k.addr.58 = getelementptr inbounds i8* %k, i64 %tmp.233, !dbg !403 ; [#uses=2 type=i8*] [debug line = 327:32]
  %k.load.60 = load i8* %k.addr.58, align 1, !dbg !403 ; [#uses=2 type=i8] [debug line = 327:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.60) nounwind
  %tmp.234 = xor i8 %k.load.60, %k.load.59, !dbg !403 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp.234, i8* %k.addr.58, align 1, !dbg !403 ; [debug line = 327:32]
  %tmp.235 = add nsw i32 %tmp.220, -1, !dbg !403  ; [#uses=1 type=i32] [debug line = 327:32]
  %tmp.236 = sext i32 %tmp.235 to i64, !dbg !403  ; [#uses=1 type=i64] [debug line = 327:32]
  %k.addr.59 = getelementptr inbounds i8* %k, i64 %tmp.236, !dbg !403 ; [#uses=1 type=i8*] [debug line = 327:32]
  %k.load.61 = load i8* %k.addr.59, align 1, !dbg !403 ; [#uses=2 type=i8] [debug line = 327:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.61) nounwind
  %tmp.237 = or i32 %tmp.220, 3, !dbg !403        ; [#uses=1 type=i32] [debug line = 327:32]
  %tmp.238 = zext i32 %tmp.237 to i64, !dbg !403  ; [#uses=1 type=i64] [debug line = 327:32]
  %k.addr.60 = getelementptr inbounds i8* %k, i64 %tmp.238, !dbg !403 ; [#uses=2 type=i8*] [debug line = 327:32]
  %k.load.62 = load i8* %k.addr.60, align 1, !dbg !403 ; [#uses=2 type=i8] [debug line = 327:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.62) nounwind
  %tmp.239 = xor i8 %k.load.62, %k.load.61, !dbg !403 ; [#uses=1 type=i8] [debug line = 327:32]
  store i8 %tmp.239, i8* %k.addr.60, align 1, !dbg !403 ; [debug line = 327:32]
  %i.36 = add i8 %i.1, -4, !dbg !404              ; [#uses=1 type=i8] [debug line = 327:24]
  call void @llvm.dbg.value(metadata !{i8 %i.36}, i64 0, metadata !396), !dbg !404 ; [debug line = 327:24] [debug variable = i]
  br label %4, !dbg !404                          ; [debug line = 327:24]

; <label>:6                                       ; preds = %4
  %rc.load = load i8* %rc, align 1, !dbg !405     ; [#uses=2 type=i8] [debug line = 330:5]
  %tmp.206 = lshr i8 %rc.load, 1, !dbg !405       ; [#uses=1 type=i8] [debug line = 330:5]
  %tmp.207 = and i8 %rc.load, 1, !dbg !405        ; [#uses=1 type=i8] [debug line = 330:5]
  %tmp.208 = icmp ne i8 %tmp.207, 0, !dbg !405    ; [#uses=1 type=i1] [debug line = 330:5]
  %tmp.209 = select i1 %tmp.208, i8 -115, i8 0, !dbg !405 ; [#uses=1 type=i8] [debug line = 330:5]
  %tmp.210 = xor i8 %tmp.209, %tmp.206, !dbg !405 ; [#uses=2 type=i8] [debug line = 330:5]
  store i8 %tmp.210, i8* %rc, align 1, !dbg !405  ; [debug line = 330:5]
  %k.addr.46 = getelementptr inbounds i8* %k, i64 29, !dbg !406 ; [#uses=1 type=i8*] [debug line = 331:5]
  %k.load.47 = load i8* %k.addr.46, align 1, !dbg !406 ; [#uses=2 type=i8] [debug line = 331:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.47) nounwind
  %tmp.211 = zext i8 %k.load.47 to i64, !dbg !406 ; [#uses=1 type=i64] [debug line = 331:5]
  %sbox.addr.11 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.211, !dbg !406 ; [#uses=1 type=i8*] [debug line = 331:5]
  %sbox.load.11 = load i8* %sbox.addr.11, align 1, !dbg !406 ; [#uses=2 type=i8] [debug line = 331:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.11) nounwind
  %k.load.48 = load i8* %k, align 1, !dbg !406    ; [#uses=2 type=i8] [debug line = 331:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.48) nounwind
  %tmp.212 = xor i8 %tmp.210, %sbox.load.11, !dbg !406 ; [#uses=1 type=i8] [debug line = 331:5]
  %tmp.213 = xor i8 %tmp.212, %k.load.48, !dbg !406 ; [#uses=1 type=i8] [debug line = 331:5]
  store i8 %tmp.213, i8* %k, align 1, !dbg !406   ; [debug line = 331:5]
  %k.addr.47 = getelementptr inbounds i8* %k, i64 30, !dbg !407 ; [#uses=1 type=i8*] [debug line = 332:5]
  %k.load.49 = load i8* %k.addr.47, align 1, !dbg !407 ; [#uses=2 type=i8] [debug line = 332:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.49) nounwind
  %tmp.214 = zext i8 %k.load.49 to i64, !dbg !407 ; [#uses=1 type=i64] [debug line = 332:5]
  %sbox.addr.12 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.214, !dbg !407 ; [#uses=1 type=i8*] [debug line = 332:5]
  %sbox.load.12 = load i8* %sbox.addr.12, align 1, !dbg !407 ; [#uses=2 type=i8] [debug line = 332:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.12) nounwind
  %k.addr.48 = getelementptr inbounds i8* %k, i64 1, !dbg !407 ; [#uses=2 type=i8*] [debug line = 332:5]
  %k.load.50 = load i8* %k.addr.48, align 1, !dbg !407 ; [#uses=2 type=i8] [debug line = 332:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.50) nounwind
  %tmp.215 = xor i8 %k.load.50, %sbox.load.12, !dbg !407 ; [#uses=1 type=i8] [debug line = 332:5]
  store i8 %tmp.215, i8* %k.addr.48, align 1, !dbg !407 ; [debug line = 332:5]
  %k.addr.49 = getelementptr inbounds i8* %k, i64 31, !dbg !408 ; [#uses=1 type=i8*] [debug line = 333:5]
  %k.load.51 = load i8* %k.addr.49, align 1, !dbg !408 ; [#uses=2 type=i8] [debug line = 333:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.51) nounwind
  %tmp.216 = zext i8 %k.load.51 to i64, !dbg !408 ; [#uses=1 type=i64] [debug line = 333:5]
  %sbox.addr.13 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.216, !dbg !408 ; [#uses=1 type=i8*] [debug line = 333:5]
  %sbox.load.13 = load i8* %sbox.addr.13, align 1, !dbg !408 ; [#uses=2 type=i8] [debug line = 333:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.13) nounwind
  %k.addr.50 = getelementptr inbounds i8* %k, i64 2, !dbg !408 ; [#uses=2 type=i8*] [debug line = 333:5]
  %k.load.52 = load i8* %k.addr.50, align 1, !dbg !408 ; [#uses=2 type=i8] [debug line = 333:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.52) nounwind
  %tmp.217 = xor i8 %k.load.52, %sbox.load.13, !dbg !408 ; [#uses=1 type=i8] [debug line = 333:5]
  store i8 %tmp.217, i8* %k.addr.50, align 1, !dbg !408 ; [debug line = 333:5]
  %k.addr.51 = getelementptr inbounds i8* %k, i64 28, !dbg !409 ; [#uses=1 type=i8*] [debug line = 334:5]
  %k.load.53 = load i8* %k.addr.51, align 1, !dbg !409 ; [#uses=2 type=i8] [debug line = 334:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.53) nounwind
  %tmp.218 = zext i8 %k.load.53 to i64, !dbg !409 ; [#uses=1 type=i64] [debug line = 334:5]
  %sbox.addr.14 = getelementptr inbounds [256 x i8]* @sbox, i64 0, i64 %tmp.218, !dbg !409 ; [#uses=1 type=i8*] [debug line = 334:5]
  %sbox.load.14 = load i8* %sbox.addr.14, align 1, !dbg !409 ; [#uses=2 type=i8] [debug line = 334:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.14) nounwind
  %k.addr.52 = getelementptr inbounds i8* %k, i64 3, !dbg !409 ; [#uses=2 type=i8*] [debug line = 334:5]
  %k.load.54 = load i8* %k.addr.52, align 1, !dbg !409 ; [#uses=2 type=i8] [debug line = 334:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.54) nounwind
  %tmp.219 = xor i8 %k.load.54, %sbox.load.14, !dbg !409 ; [#uses=1 type=i8] [debug line = 334:5]
  store i8 %tmp.219, i8* %k.addr.52, align 1, !dbg !409 ; [debug line = 334:5]
  ret void, !dbg !410                             ; [debug line = 335:1]
}

; [#uses=1]
define internal fastcc void @aes_encrypt_ecb(i8* %buf) nounwind uwtable {
  %rcon = alloca i8, align 1                      ; [#uses=3 type=i8*]
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !411), !dbg !412 ; [debug line = 358:49] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %rcon}, metadata !413), !dbg !415 ; [debug line = 360:16] [debug variable = rcon]
  call fastcc void @aes_addRoundKey_cpy(i8* %buf, i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 1, i64 0), i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 0, i64 0)), !dbg !416 ; [debug line = 362:5]
  store i8 1, i8* %rcon, align 1, !dbg !417       ; [debug line = 363:9]
  br label %1, !dbg !417                          ; [debug line = 363:9]

; <label>:1                                       ; preds = %5, %0
  %i = phi i8 [ 1, %0 ], [ %i.37, %5 ]            ; [#uses=3 type=i8]
  %exitcond = icmp eq i8 %i, 14, !dbg !417        ; [#uses=1 type=i1] [debug line = 363:9]
  br i1 %exitcond, label %6, label %2, !dbg !417  ; [debug line = 363:9]

; <label>:2                                       ; preds = %1
  call fastcc void @aes_subBytes(i8* %buf), !dbg !419 ; [debug line = 365:9]
  call fastcc void @aes_shiftRows(i8* %buf), !dbg !421 ; [debug line = 366:9]
  call fastcc void @aes_mixColumns(i8* %buf), !dbg !422 ; [debug line = 367:9]
  %tmp = and i8 %i, 1, !dbg !423                  ; [#uses=1 type=i8] [debug line = 368:9]
  %tmp.241 = icmp eq i8 %tmp, 0, !dbg !423        ; [#uses=1 type=i1] [debug line = 368:9]
  br i1 %tmp.241, label %4, label %3, !dbg !423   ; [debug line = 368:9]

; <label>:3                                       ; preds = %2
  call fastcc void @aes_addRoundKey(i8* %buf, i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 0, i64 16)), !dbg !424 ; [debug line = 368:21]
  br label %5, !dbg !424                          ; [debug line = 368:21]

; <label>:4                                       ; preds = %2
  call fastcc void @aes_expandEncKey(i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 0, i64 0), i8* %rcon), !dbg !425 ; [debug line = 369:14]
  call fastcc void @aes_addRoundKey(i8* %buf, i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 0, i64 0)), !dbg !426 ; [debug line = 369:49]
  br label %5

; <label>:5                                       ; preds = %4, %3
  %i.37 = add i8 %i, 1, !dbg !427                 ; [#uses=1 type=i8] [debug line = 363:34]
  call void @llvm.dbg.value(metadata !{i8 %i.37}, i64 0, metadata !428), !dbg !427 ; [debug line = 363:34] [debug variable = i]
  br label %1, !dbg !427                          ; [debug line = 363:34]

; <label>:6                                       ; preds = %1
  call fastcc void @aes_subBytes(i8* %buf), !dbg !429 ; [debug line = 371:5]
  call fastcc void @aes_shiftRows(i8* %buf), !dbg !430 ; [debug line = 372:5]
  call fastcc void @aes_expandEncKey(i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 0, i64 0), i8* %rcon), !dbg !431 ; [debug line = 373:5]
  call fastcc void @aes_addRoundKey(i8* %buf, i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 0, i64 0)), !dbg !432 ; [debug line = 374:5]
  ret void, !dbg !433                             ; [debug line = 375:1]
}

; [#uses=1]
define internal fastcc void @aes_decrypt_ecb(i8* %buf) nounwind uwtable {
  %rcon = alloca i8, align 1                      ; [#uses=2 type=i8*]
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !434), !dbg !435 ; [debug line = 378:49] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %rcon}, metadata !436), !dbg !438 ; [debug line = 380:16] [debug variable = rcon]
  call fastcc void @aes_addRoundKey_cpy(i8* %buf, i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 2, i64 0), i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 0, i64 0)), !dbg !439 ; [debug line = 382:5]
  call fastcc void @aes_shiftRows_inv(i8* %buf), !dbg !440 ; [debug line = 383:5]
  call fastcc void @aes_subBytes_inv(i8* %buf), !dbg !441 ; [debug line = 384:5]
  store i8 -128, i8* %rcon, align 1, !dbg !442    ; [debug line = 386:10]
  br label %1, !dbg !442                          ; [debug line = 386:10]

; <label>:1                                       ; preds = %5, %0
  %i = phi i8 [ 13, %0 ], [ %phitmp, %5 ], !dbg !442 ; [#uses=3 type=i8] [debug line = 386:10]
  call void @llvm.dbg.value(metadata !{i8 %i}, i64 0, metadata !444), !dbg !442 ; [debug line = 386:10] [debug variable = i]
  %tmp = icmp eq i8 %i, 0, !dbg !442              ; [#uses=1 type=i1] [debug line = 386:10]
  br i1 %tmp, label %6, label %2, !dbg !442       ; [debug line = 386:10]

; <label>:2                                       ; preds = %1
  %tmp.243 = and i8 %i, 1, !dbg !445              ; [#uses=1 type=i8] [debug line = 388:9]
  %tmp.244 = icmp eq i8 %tmp.243, 0, !dbg !445    ; [#uses=1 type=i1] [debug line = 388:9]
  br i1 %tmp.244, label %4, label %3, !dbg !445   ; [debug line = 388:9]

; <label>:3                                       ; preds = %2
  call fastcc void @aes_expandDecKey(i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 0, i64 0), i8* %rcon), !dbg !447 ; [debug line = 390:13]
  call fastcc void @aes_addRoundKey(i8* %buf, i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 0, i64 16)), !dbg !449 ; [debug line = 391:13]
  br label %5, !dbg !450                          ; [debug line = 392:9]

; <label>:4                                       ; preds = %2
  call fastcc void @aes_addRoundKey(i8* %buf, i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 0, i64 0)), !dbg !451 ; [debug line = 393:14]
  br label %5

; <label>:5                                       ; preds = %4, %3
  call fastcc void @aes_mixColumns_inv(i8* %buf), !dbg !452 ; [debug line = 394:9]
  call fastcc void @aes_shiftRows_inv(i8* %buf), !dbg !453 ; [debug line = 395:9]
  call fastcc void @aes_subBytes_inv(i8* %buf), !dbg !454 ; [debug line = 396:9]
  %phitmp = add i8 %i, -1, !dbg !455              ; [#uses=1 type=i8] [debug line = 397:5]
  br label %1, !dbg !455                          ; [debug line = 397:5]

; <label>:6                                       ; preds = %1
  call fastcc void @aes_addRoundKey(i8* %buf, i8* getelementptr inbounds (%struct.aes_context.0* @ctx, i64 0, i32 0, i64 0)), !dbg !456 ; [debug line = 398:5]
  ret void, !dbg !457                             ; [debug line = 399:1]
}

; [#uses=2]
define internal fastcc void @aes_addRoundKey_cpy(i8* %buf, i8* %key, i8* %cpk) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !458), !dbg !459 ; [debug line = 218:42] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !460), !dbg !461 ; [debug line = 218:56] [debug variable = key]
  call void @llvm.dbg.value(metadata !{i8* %cpk}, i64 0, metadata !462), !dbg !463 ; [debug line = 218:70] [debug variable = cpk]
  br label %1, !dbg !464                          ; [debug line = 222:5]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 16, %0 ], [ %i.38, %2 ]           ; [#uses=2 type=i8]
  %i.38 = add i8 %i, -1, !dbg !464                ; [#uses=3 type=i8] [debug line = 222:5]
  call void @llvm.dbg.value(metadata !{i8 %i.38}, i64 0, metadata !466), !dbg !464 ; [debug line = 222:5] [debug variable = i]
  %tmp = icmp eq i8 %i, 0, !dbg !464              ; [#uses=1 type=i1] [debug line = 222:5]
  br i1 %tmp, label %3, label %2, !dbg !464       ; [debug line = 222:5]

; <label>:2                                       ; preds = %1
  %tmp.245 = zext i8 %i.38 to i64, !dbg !467      ; [#uses=3 type=i64] [debug line = 222:17]
  %key.addr = getelementptr inbounds i8* %key, i64 %tmp.245, !dbg !467 ; [#uses=1 type=i8*] [debug line = 222:17]
  %key.load = load i8* %key.addr, align 1, !dbg !467 ; [#uses=3 type=i8] [debug line = 222:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %key.load) nounwind
  %cpk.addr = getelementptr inbounds i8* %cpk, i64 %tmp.245, !dbg !467 ; [#uses=1 type=i8*] [debug line = 222:17]
  store i8 %key.load, i8* %cpk.addr, align 1, !dbg !467 ; [debug line = 222:17]
  %buf.addr = getelementptr inbounds i8* %buf, i64 %tmp.245, !dbg !467 ; [#uses=2 type=i8*] [debug line = 222:17]
  %buf.load = load i8* %buf.addr, align 1, !dbg !467 ; [#uses=2 type=i8] [debug line = 222:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  %tmp.246 = xor i8 %buf.load, %key.load, !dbg !467 ; [#uses=1 type=i8] [debug line = 222:17]
  store i8 %tmp.246, i8* %buf.addr, align 1, !dbg !467 ; [debug line = 222:17]
  %tmp.247 = zext i8 %i.38 to i32, !dbg !467      ; [#uses=1 type=i32] [debug line = 222:17]
  %tmp.248 = add nsw i32 %tmp.247, 16, !dbg !467  ; [#uses=1 type=i32] [debug line = 222:17]
  %tmp.249 = zext i32 %tmp.248 to i64, !dbg !467  ; [#uses=2 type=i64] [debug line = 222:17]
  %key.addr.1 = getelementptr inbounds i8* %key, i64 %tmp.249, !dbg !467 ; [#uses=1 type=i8*] [debug line = 222:17]
  %key.load.1 = load i8* %key.addr.1, align 1, !dbg !467 ; [#uses=2 type=i8] [debug line = 222:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %key.load.1) nounwind
  %cpk.addr.1 = getelementptr inbounds i8* %cpk, i64 %tmp.249, !dbg !467 ; [#uses=1 type=i8*] [debug line = 222:17]
  store i8 %key.load.1, i8* %cpk.addr.1, align 1, !dbg !467 ; [debug line = 222:17]
  br label %1, !dbg !467                          ; [debug line = 222:17]

; <label>:3                                       ; preds = %1
  ret void, !dbg !468                             ; [debug line = 223:1]
}

; [#uses=6]
define internal fastcc void @aes_addRoundKey(i8* %buf, i8* %key) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !469), !dbg !470 ; [debug line = 210:38] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !471), !dbg !472 ; [debug line = 210:52] [debug variable = key]
  br label %1, !dbg !473                          ; [debug line = 214:5]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 16, %0 ], [ %i.39, %2 ]           ; [#uses=2 type=i8]
  %i.39 = add i8 %i, -1, !dbg !473                ; [#uses=2 type=i8] [debug line = 214:5]
  call void @llvm.dbg.value(metadata !{i8 %i.39}, i64 0, metadata !475), !dbg !473 ; [debug line = 214:5] [debug variable = i]
  %tmp = icmp eq i8 %i, 0, !dbg !473              ; [#uses=1 type=i1] [debug line = 214:5]
  br i1 %tmp, label %3, label %2, !dbg !473       ; [debug line = 214:5]

; <label>:2                                       ; preds = %1
  %tmp.250 = zext i8 %i.39 to i64, !dbg !476      ; [#uses=2 type=i64] [debug line = 214:17]
  %key.addr = getelementptr inbounds i8* %key, i64 %tmp.250, !dbg !476 ; [#uses=1 type=i8*] [debug line = 214:17]
  %key.load = load i8* %key.addr, align 1, !dbg !476 ; [#uses=2 type=i8] [debug line = 214:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %key.load) nounwind
  %buf.addr = getelementptr inbounds i8* %buf, i64 %tmp.250, !dbg !476 ; [#uses=2 type=i8*] [debug line = 214:17]
  %buf.load = load i8* %buf.addr, align 1, !dbg !476 ; [#uses=2 type=i8] [debug line = 214:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  %tmp.251 = xor i8 %buf.load, %key.load, !dbg !476 ; [#uses=1 type=i8] [debug line = 214:17]
  store i8 %tmp.251, i8* %buf.addr, align 1, !dbg !476 ; [debug line = 214:17]
  br label %1, !dbg !476                          ; [debug line = 214:17]

; <label>:3                                       ; preds = %1
  ret void, !dbg !477                             ; [debug line = 215:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=13]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=13]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=13]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=6]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=144]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=4]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0, !53}
!opencl.kernels = !{!102, !109, !115, !121, !121, !123, !126, !130, !133, !134, !135, !137, !138, !139, !140, !146}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/brett/Thesis/Vivado_WS/aescbc/solution1/.autopilot/db/aescbc.pragma.2.c", metadata !"/home/brett/Thesis/Vivado_WS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !11, metadata !13, metadata !25} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, null, metadata !"", metadata !4, i32 9, i64 3, i64 4, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
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
!15 = metadata !{i32 786478, i32 0, metadata !16, metadata !"aescbc", metadata !"aescbc", metadata !"", metadata !16, i32 8, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i3, i8*, i8*)* @aescbc, null, null, metadata !23, i32 13} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786473, metadata !"aescbc/src/aescbc.c", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{null, metadata !19, metadata !19, metadata !22, metadata !19, metadata !19}
!19 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!20 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !16, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ]
!21 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!22 = metadata !{i32 786454, null, metadata !"ciphermode_t", metadata !16, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !27, metadata !31, metadata !32, metadata !33, metadata !37, metadata !45, metadata !48, metadata !49, metadata !50}
!27 = metadata !{i32 786484, i32 0, metadata !15, metadata !"lastbuf", metadata !"lastbuf", metadata !"", metadata !16, i32 22, metadata !28, i32 1, i32 1, [16 x i8]* @lastbuf} ; [ DW_TAG_variable ]
!28 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !20, metadata !29, i32 0, i32 0} ; [ DW_TAG_array_type ]
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!31 = metadata !{i32 786484, i32 0, metadata !15, metadata !"iv", metadata !"iv", metadata !"", metadata !16, i32 23, metadata !28, i32 1, i32 1, [16 x i8]* @iv} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786484, i32 0, metadata !15, metadata !"xorv", metadata !"xorv", metadata !"", metadata !16, i32 24, metadata !28, i32 1, i32 1, [16 x i8]* @xorv} ; [ DW_TAG_variable ]
!33 = metadata !{i32 786484, i32 0, metadata !15, metadata !"key", metadata !"key", metadata !"", metadata !16, i32 25, metadata !34, i32 1, i32 1, [32 x i8]* @key} ; [ DW_TAG_variable ]
!34 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !20, metadata !35, i32 0, i32 0} ; [ DW_TAG_array_type ]
!35 = metadata !{metadata !36}
!36 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!37 = metadata !{i32 786484, i32 0, metadata !15, metadata !"ctx", metadata !"ctx", metadata !"", metadata !16, i32 26, metadata !38, i32 1, i32 1, %struct.aes_context.0* @ctx} ; [ DW_TAG_variable ]
!38 = metadata !{i32 786454, null, metadata !"aes_context", metadata !16, i32 33, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!39 = metadata !{i32 786451, null, metadata !"", metadata !40, i32 29, i64 768, i64 8, i32 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!40 = metadata !{i32 786473, metadata !"aescbc/src/aesecb.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!41 = metadata !{metadata !42, metadata !43, metadata !44}
!42 = metadata !{i32 786445, metadata !39, metadata !"key", metadata !40, i32 30, i64 256, i64 8, i64 0, i32 0, metadata !34} ; [ DW_TAG_member ]
!43 = metadata !{i32 786445, metadata !39, metadata !"enckey", metadata !40, i32 31, i64 256, i64 8, i64 256, i32 0, metadata !34} ; [ DW_TAG_member ]
!44 = metadata !{i32 786445, metadata !39, metadata !"deckey", metadata !40, i32 32, i64 256, i64 8, i64 512, i32 0, metadata !34} ; [ DW_TAG_member ]
!45 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !46, i32 315, metadata !47, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!46 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!47 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !46, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!48 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !46, i32 316, metadata !47, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!49 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !46, i32 317, metadata !47, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!50 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !51, i32 26, metadata !52, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!51 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!52 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!53 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/brett/Thesis/Vivado_WS/aescbc/solution1/.autopilot/db/aesecb.pragma.2.c", metadata !"/home/brett/Thesis/Vivado_WS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !11, metadata !11, metadata !54, metadata !94} ; [ DW_TAG_compile_unit ]
!54 = metadata !{metadata !55}
!55 = metadata !{metadata !56, metadata !70, metadata !73, metadata !74, metadata !75, metadata !78, metadata !81, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !93}
!56 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_init", metadata !"aes_init", metadata !"", metadata !57, i32 339, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !23, i32 340} ; [ DW_TAG_subprogram ]
!57 = metadata !{i32 786473, metadata !"aescbc/src/aesecb.c", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!58 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!59 = metadata !{null, metadata !60, metadata !69}
!60 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ]
!61 = metadata !{i32 786454, null, metadata !"aes_context", metadata !57, i32 33, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ]
!62 = metadata !{i32 786451, null, metadata !"", metadata !40, i32 29, i64 768, i64 8, i32 0, i32 0, null, metadata !63, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!63 = metadata !{metadata !64, metadata !67, metadata !68}
!64 = metadata !{i32 786445, metadata !62, metadata !"key", metadata !40, i32 30, i64 256, i64 8, i64 0, i32 0, metadata !65} ; [ DW_TAG_member ]
!65 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !66, metadata !35, i32 0, i32 0} ; [ DW_TAG_array_type ]
!66 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !40, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ]
!67 = metadata !{i32 786445, metadata !62, metadata !"enckey", metadata !40, i32 31, i64 256, i64 8, i64 256, i32 0, metadata !65} ; [ DW_TAG_member ]
!68 = metadata !{i32 786445, metadata !62, metadata !"deckey", metadata !40, i32 32, i64 256, i64 8, i64 512, i32 0, metadata !65} ; [ DW_TAG_member ]
!69 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !66} ; [ DW_TAG_pointer_type ]
!70 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_done", metadata !"aes_done", metadata !"", metadata !57, i32 349, metadata !71, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !23, i32 350} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{null, metadata !60}
!73 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_encrypt_ecb", metadata !"aes_encrypt_ecb", metadata !"", metadata !57, i32 358, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !23, i32 359} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_decrypt_ecb", metadata !"aes_decrypt_ecb", metadata !"", metadata !57, i32 378, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !23, i32 379} ; [ DW_TAG_subprogram ]
!75 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_mixColumns_inv", metadata !"aes_mixColumns_inv", metadata !"", metadata !57, i32 270, metadata !76, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_mixColumns_inv, null, null, metadata !23, i32 271} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!77 = metadata !{null, metadata !69}
!78 = metadata !{i32 786478, i32 0, metadata !57, metadata !"rj_xtime", metadata !"rj_xtime", metadata !"", metadata !57, i32 187, metadata !79, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i8)* @rj_xtime, null, null, metadata !23, i32 188} ; [ DW_TAG_subprogram ]
!79 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!80 = metadata !{metadata !66, metadata !66}
!81 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_expandDecKey", metadata !"aes_expandDecKey", metadata !"", metadata !57, i32 315, metadata !82, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*)* @aes_expandDecKey, null, null, metadata !23, i32 316} ; [ DW_TAG_subprogram ]
!82 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!83 = metadata !{null, metadata !69, metadata !69}
!84 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_subBytes_inv", metadata !"aes_subBytes_inv", metadata !"", metadata !57, i32 202, metadata !76, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_subBytes_inv, null, null, metadata !23, i32 203} ; [ DW_TAG_subprogram ]
!85 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_shiftRows_inv", metadata !"aes_shiftRows_inv", metadata !"", metadata !57, i32 239, metadata !76, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_shiftRows_inv, null, null, metadata !23, i32 240} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_addRoundKey", metadata !"aes_addRoundKey", metadata !"", metadata !57, i32 210, metadata !82, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*)* @aes_addRoundKey, null, null, metadata !23, i32 211} ; [ DW_TAG_subprogram ]
!87 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_mixColumns", metadata !"aes_mixColumns", metadata !"", metadata !57, i32 251, metadata !76, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_mixColumns, null, null, metadata !23, i32 252} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_shiftRows", metadata !"aes_shiftRows", metadata !"", metadata !57, i32 227, metadata !76, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_shiftRows, null, null, metadata !23, i32 228} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_subBytes", metadata !"aes_subBytes", metadata !"", metadata !57, i32 194, metadata !76, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_subBytes, null, null, metadata !23, i32 195} ; [ DW_TAG_subprogram ]
!90 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_addRoundKey_cpy", metadata !"aes_addRoundKey_cpy", metadata !"", metadata !57, i32 218, metadata !91, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i8*)* @aes_addRoundKey_cpy, null, null, metadata !23, i32 219} ; [ DW_TAG_subprogram ]
!91 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !92, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!92 = metadata !{null, metadata !69, metadata !69, metadata !69}
!93 = metadata !{i32 786478, i32 0, metadata !57, metadata !"aes_expandEncKey", metadata !"aes_expandEncKey", metadata !"", metadata !57, i32 292, metadata !82, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*)* @aes_expandEncKey, null, null, metadata !23, i32 293} ; [ DW_TAG_subprogram ]
!94 = metadata !{metadata !95}
!95 = metadata !{metadata !96, metadata !101}
!96 = metadata !{i32 786484, i32 0, null, metadata !"sbox", metadata !"sbox", metadata !"", metadata !57, i32 47, metadata !97, i32 1, i32 1, [256 x i8]* @sbox} ; [ DW_TAG_variable ]
!97 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !98, metadata !99, i32 0, i32 0} ; [ DW_TAG_array_type ]
!98 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_const_type ]
!99 = metadata !{metadata !100}
!100 = metadata !{i32 786465, i64 0, i64 255}     ; [ DW_TAG_subrange_type ]
!101 = metadata !{i32 786484, i32 0, null, metadata !"sboxinv", metadata !"sboxinv", metadata !"", metadata !57, i32 82, metadata !97, i32 1, i32 1, [256 x i8]* @sboxinv} ; [ DW_TAG_variable ]
!102 = metadata !{void (i8*, i8*, i3, i8*, i8*)* @aescbc, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108}
!103 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0, i32 1, i32 1}
!104 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint8_t*", metadata !"ciphermode_t", metadata !"uint8_t*", metadata !"uint8_t*"}
!106 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!107 = metadata !{metadata !"kernel_arg_name", metadata !"data_in", metadata !"data_out", metadata !"mode", metadata !"key_in", metadata !"iv_in"}
!108 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!109 = metadata !{null, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !108}
!110 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!111 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!112 = metadata !{metadata !"kernel_arg_type", metadata !"aes_context*", metadata !"uint8_t*"}
!113 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!114 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"k"}
!115 = metadata !{null, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !108}
!116 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!117 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!118 = metadata !{metadata !"kernel_arg_type", metadata !"aes_context*"}
!119 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!120 = metadata !{metadata !"kernel_arg_name", metadata !"ctx"}
!121 = metadata !{null, metadata !110, metadata !111, metadata !112, metadata !113, metadata !122, metadata !108}
!122 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"buf"}
!123 = metadata !{void (i8*)* @aes_mixColumns_inv, metadata !116, metadata !117, metadata !124, metadata !119, metadata !125, metadata !108}
!124 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*"}
!125 = metadata !{metadata !"kernel_arg_name", metadata !"buf"}
!126 = metadata !{i8 (i8)* @rj_xtime, metadata !127, metadata !117, metadata !128, metadata !119, metadata !129, metadata !108}
!127 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!128 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t"}
!129 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!130 = metadata !{void (i8*, i8*)* @aes_expandDecKey, metadata !110, metadata !111, metadata !131, metadata !113, metadata !132, metadata !108}
!131 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint8_t*"}
!132 = metadata !{metadata !"kernel_arg_name", metadata !"k", metadata !"rc"}
!133 = metadata !{void (i8*)* @aes_subBytes_inv, metadata !116, metadata !117, metadata !124, metadata !119, metadata !125, metadata !108}
!134 = metadata !{void (i8*)* @aes_shiftRows_inv, metadata !116, metadata !117, metadata !124, metadata !119, metadata !125, metadata !108}
!135 = metadata !{void (i8*, i8*)* @aes_addRoundKey, metadata !110, metadata !111, metadata !131, metadata !113, metadata !136, metadata !108}
!136 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"key"}
!137 = metadata !{void (i8*)* @aes_mixColumns, metadata !116, metadata !117, metadata !124, metadata !119, metadata !125, metadata !108}
!138 = metadata !{void (i8*)* @aes_shiftRows, metadata !116, metadata !117, metadata !124, metadata !119, metadata !125, metadata !108}
!139 = metadata !{void (i8*)* @aes_subBytes, metadata !116, metadata !117, metadata !124, metadata !119, metadata !125, metadata !108}
!140 = metadata !{void (i8*, i8*, i8*)* @aes_addRoundKey_cpy, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !108}
!141 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!142 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!143 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint8_t*", metadata !"uint8_t*"}
!144 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!145 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"key", metadata !"cpk"}
!146 = metadata !{void (i8*, i8*)* @aes_expandEncKey, metadata !110, metadata !111, metadata !131, metadata !113, metadata !132, metadata !108}
!147 = metadata !{i32 786689, metadata !78, metadata !"x", metadata !57, i32 16777403, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!148 = metadata !{i32 187, i32 33, metadata !78, null}
!149 = metadata !{i32 189, i32 34, metadata !150, null}
!150 = metadata !{i32 786443, metadata !78, i32 188, i32 1, metadata !57, i32 15} ; [ DW_TAG_lexical_block ]
!151 = metadata !{i32 786688, metadata !150, metadata !"y", metadata !57, i32 189, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!152 = metadata !{i32 190, i32 5, metadata !150, null}
!153 = metadata !{i32 786689, metadata !15, metadata !"data_in", metadata !16, i32 16777224, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!154 = metadata !{i32 8, i32 21, metadata !15, null}
!155 = metadata !{i32 786689, metadata !15, metadata !"data_out", metadata !16, i32 33554441, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!156 = metadata !{i32 9, i32 12, metadata !15, null}
!157 = metadata !{i32 786689, metadata !15, metadata !"mode", metadata !16, i32 50331658, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!158 = metadata !{i32 10, i32 20, metadata !15, null}
!159 = metadata !{i32 786689, metadata !15, metadata !"key_in", metadata !16, i32 67108875, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!160 = metadata !{i32 11, i32 12, metadata !15, null}
!161 = metadata !{i32 786689, metadata !15, metadata !"iv_in", metadata !16, i32 83886092, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!162 = metadata !{i32 12, i32 12, metadata !15, null}
!163 = metadata !{i32 13, i32 2, metadata !164, null}
!164 = metadata !{i32 786443, metadata !15, i32 13, i32 1, metadata !16, i32 0} ; [ DW_TAG_lexical_block ]
!165 = metadata !{i32 13, i32 35, metadata !164, null}
!166 = metadata !{i32 13, i32 69, metadata !164, null}
!167 = metadata !{i32 13, i32 105, metadata !164, null}
!168 = metadata !{i32 14, i32 1, metadata !164, null}
!169 = metadata !{i32 15, i32 1, metadata !164, null}
!170 = metadata !{i32 16, i32 1, metadata !164, null}
!171 = metadata !{i32 17, i32 1, metadata !164, null}
!172 = metadata !{i32 18, i32 1, metadata !164, null}
!173 = metadata !{i32 19, i32 1, metadata !164, null}
!174 = metadata !{i32 786688, metadata !164, metadata !"buf", metadata !16, i32 21, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!175 = metadata !{i32 21, i32 10, metadata !164, null}
!176 = metadata !{i32 29, i32 5, metadata !164, null}
!177 = metadata !{i32 32, i32 25, metadata !178, null}
!178 = metadata !{i32 786443, metadata !179, i32 32, i32 21, metadata !16, i32 2} ; [ DW_TAG_lexical_block ]
!179 = metadata !{i32 786443, metadata !164, i32 29, i32 20, metadata !16, i32 1} ; [ DW_TAG_lexical_block ]
!180 = metadata !{i32 45, i32 25, metadata !181, null}
!181 = metadata !{i32 786443, metadata !179, i32 45, i32 21, metadata !16, i32 10} ; [ DW_TAG_lexical_block ]
!182 = metadata !{i32 61, i32 24, metadata !183, null}
!183 = metadata !{i32 786443, metadata !179, i32 61, i32 20, metadata !16, i32 18} ; [ DW_TAG_lexical_block ]
!184 = metadata !{i32 34, i32 21, metadata !185, null}
!185 = metadata !{i32 786443, metadata !179, i32 34, i32 17, metadata !16, i32 4} ; [ DW_TAG_lexical_block ]
!186 = metadata !{i32 33, i32 7, metadata !187, null}
!187 = metadata !{i32 786443, metadata !178, i32 33, i32 7, metadata !16, i32 3} ; [ DW_TAG_lexical_block ]
!188 = metadata !{i32 33, i32 21, metadata !187, null}
!189 = metadata !{i32 32, i32 36, metadata !178, null}
!190 = metadata !{i32 786688, metadata !164, metadata !"i", metadata !16, i32 27, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!191 = metadata !{i32 36, i32 25, metadata !192, null}
!192 = metadata !{i32 786443, metadata !179, i32 36, i32 21, metadata !16, i32 6} ; [ DW_TAG_lexical_block ]
!193 = metadata !{i32 35, i32 4, metadata !194, null}
!194 = metadata !{i32 786443, metadata !185, i32 35, i32 4, metadata !16, i32 5} ; [ DW_TAG_lexical_block ]
!195 = metadata !{i32 35, i32 21, metadata !194, null}
!196 = metadata !{i32 34, i32 32, metadata !185, null}
!197 = metadata !{i32 38, i32 25, metadata !198, null}
!198 = metadata !{i32 786443, metadata !179, i32 38, i32 21, metadata !16, i32 8} ; [ DW_TAG_lexical_block ]
!199 = metadata !{i32 37, i32 7, metadata !200, null}
!200 = metadata !{i32 786443, metadata !192, i32 37, i32 7, metadata !16, i32 7} ; [ DW_TAG_lexical_block ]
!201 = metadata !{i32 37, i32 22, metadata !200, null}
!202 = metadata !{i32 36, i32 36, metadata !192, null}
!203 = metadata !{i32 39, i32 7, metadata !204, null}
!204 = metadata !{i32 786443, metadata !198, i32 39, i32 7, metadata !16, i32 9} ; [ DW_TAG_lexical_block ]
!205 = metadata !{i32 39, i32 21, metadata !204, null}
!206 = metadata !{i32 38, i32 36, metadata !198, null}
!207 = metadata !{i32 40, i32 6, metadata !179, null}
!208 = metadata !{i32 41, i32 6, metadata !179, null}
!209 = metadata !{i32 48, i32 24, metadata !210, null}
!210 = metadata !{i32 786443, metadata !179, i32 48, i32 20, metadata !16, i32 12} ; [ DW_TAG_lexical_block ]
!211 = metadata !{i32 46, i32 7, metadata !212, null}
!212 = metadata !{i32 786443, metadata !181, i32 46, i32 7, metadata !16, i32 11} ; [ DW_TAG_lexical_block ]
!213 = metadata !{i32 46, i32 25, metadata !212, null}
!214 = metadata !{i32 45, i32 36, metadata !181, null}
!215 = metadata !{i32 49, i32 7, metadata !216, null}
!216 = metadata !{i32 786443, metadata !210, i32 49, i32 7, metadata !16, i32 13} ; [ DW_TAG_lexical_block ]
!217 = metadata !{i32 49, i32 29, metadata !216, null}
!218 = metadata !{i32 48, i32 35, metadata !210, null}
!219 = metadata !{i32 51, i32 6, metadata !179, null}
!220 = metadata !{i32 53, i32 24, metadata !221, null}
!221 = metadata !{i32 786443, metadata !179, i32 53, i32 20, metadata !16, i32 14} ; [ DW_TAG_lexical_block ]
!222 = metadata !{i32 56, i32 24, metadata !223, null}
!223 = metadata !{i32 786443, metadata !179, i32 56, i32 20, metadata !16, i32 16} ; [ DW_TAG_lexical_block ]
!224 = metadata !{i32 54, i32 7, metadata !225, null}
!225 = metadata !{i32 786443, metadata !221, i32 54, i32 7, metadata !16, i32 15} ; [ DW_TAG_lexical_block ]
!226 = metadata !{i32 54, i32 22, metadata !225, null}
!227 = metadata !{i32 53, i32 35, metadata !221, null}
!228 = metadata !{i32 57, i32 7, metadata !229, null}
!229 = metadata !{i32 786443, metadata !223, i32 57, i32 7, metadata !16, i32 17} ; [ DW_TAG_lexical_block ]
!230 = metadata !{i32 57, i32 26, metadata !229, null}
!231 = metadata !{i32 56, i32 35, metadata !223, null}
!232 = metadata !{i32 64, i32 24, metadata !233, null}
!233 = metadata !{i32 786443, metadata !179, i32 64, i32 20, metadata !16, i32 20} ; [ DW_TAG_lexical_block ]
!234 = metadata !{i32 62, i32 7, metadata !235, null}
!235 = metadata !{i32 786443, metadata !183, i32 62, i32 7, metadata !16, i32 19} ; [ DW_TAG_lexical_block ]
!236 = metadata !{i32 62, i32 25, metadata !235, null}
!237 = metadata !{i32 61, i32 35, metadata !183, null}
!238 = metadata !{i32 65, i32 7, metadata !239, null}
!239 = metadata !{i32 786443, metadata !233, i32 65, i32 7, metadata !16, i32 21} ; [ DW_TAG_lexical_block ]
!240 = metadata !{i32 65, i32 25, metadata !239, null}
!241 = metadata !{i32 64, i32 35, metadata !233, null}
!242 = metadata !{i32 67, i32 6, metadata !179, null}
!243 = metadata !{i32 69, i32 24, metadata !244, null}
!244 = metadata !{i32 786443, metadata !179, i32 69, i32 20, metadata !16, i32 22} ; [ DW_TAG_lexical_block ]
!245 = metadata !{i32 72, i32 24, metadata !246, null}
!246 = metadata !{i32 786443, metadata !179, i32 72, i32 20, metadata !16, i32 24} ; [ DW_TAG_lexical_block ]
!247 = metadata !{i32 70, i32 7, metadata !248, null}
!248 = metadata !{i32 786443, metadata !244, i32 70, i32 7, metadata !16, i32 23} ; [ DW_TAG_lexical_block ]
!249 = metadata !{i32 70, i32 29, metadata !248, null}
!250 = metadata !{i32 69, i32 35, metadata !244, null}
!251 = metadata !{i32 75, i32 24, metadata !252, null}
!252 = metadata !{i32 786443, metadata !179, i32 75, i32 20, metadata !16, i32 26} ; [ DW_TAG_lexical_block ]
!253 = metadata !{i32 73, i32 7, metadata !254, null}
!254 = metadata !{i32 786443, metadata !246, i32 73, i32 7, metadata !16, i32 25} ; [ DW_TAG_lexical_block ]
!255 = metadata !{i32 73, i32 26, metadata !254, null}
!256 = metadata !{i32 72, i32 35, metadata !246, null}
!257 = metadata !{i32 76, i32 7, metadata !258, null}
!258 = metadata !{i32 786443, metadata !252, i32 76, i32 7, metadata !16, i32 27} ; [ DW_TAG_lexical_block ]
!259 = metadata !{i32 76, i32 26, metadata !258, null}
!260 = metadata !{i32 75, i32 35, metadata !252, null}
!261 = metadata !{i32 87, i32 1, metadata !164, null}
!262 = metadata !{i32 786689, metadata !84, metadata !"buf", metadata !57, i32 16777418, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!263 = metadata !{i32 202, i32 39, metadata !84, null}
!264 = metadata !{i32 206, i32 5, metadata !265, null}
!265 = metadata !{i32 786443, metadata !84, i32 203, i32 1, metadata !57, i32 19} ; [ DW_TAG_lexical_block ]
!266 = metadata !{i32 786688, metadata !265, metadata !"i", metadata !57, i32 204, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!267 = metadata !{i32 206, i32 17, metadata !265, null}
!268 = metadata !{i32 207, i32 1, metadata !265, null}
!269 = metadata !{i32 786689, metadata !89, metadata !"buf", metadata !57, i32 16777410, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!270 = metadata !{i32 194, i32 35, metadata !89, null}
!271 = metadata !{i32 198, i32 5, metadata !272, null}
!272 = metadata !{i32 786443, metadata !89, i32 195, i32 1, metadata !57, i32 26} ; [ DW_TAG_lexical_block ]
!273 = metadata !{i32 786688, metadata !272, metadata !"i", metadata !57, i32 196, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!274 = metadata !{i32 198, i32 17, metadata !272, null}
!275 = metadata !{i32 199, i32 1, metadata !272, null}
!276 = metadata !{i32 786689, metadata !85, metadata !"buf", metadata !57, i32 16777455, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!277 = metadata !{i32 239, i32 40, metadata !85, null}
!278 = metadata !{i32 243, i32 5, metadata !279, null}
!279 = metadata !{i32 786443, metadata !85, i32 240, i32 1, metadata !57, i32 20} ; [ DW_TAG_lexical_block ]
!280 = metadata !{i32 786688, metadata !279, metadata !"i", metadata !57, i32 241, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!281 = metadata !{i32 244, i32 5, metadata !279, null}
!282 = metadata !{i32 245, i32 5, metadata !279, null}
!283 = metadata !{i32 786688, metadata !279, metadata !"j", metadata !57, i32 241, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!284 = metadata !{i32 246, i32 5, metadata !279, null}
!285 = metadata !{i32 248, i32 1, metadata !279, null}
!286 = metadata !{i32 786689, metadata !88, metadata !"buf", metadata !57, i32 16777443, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!287 = metadata !{i32 227, i32 36, metadata !88, null}
!288 = metadata !{i32 231, i32 5, metadata !289, null}
!289 = metadata !{i32 786443, metadata !88, i32 228, i32 1, metadata !57, i32 25} ; [ DW_TAG_lexical_block ]
!290 = metadata !{i32 786688, metadata !289, metadata !"i", metadata !57, i32 229, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!291 = metadata !{i32 232, i32 5, metadata !289, null}
!292 = metadata !{i32 233, i32 5, metadata !289, null}
!293 = metadata !{i32 786688, metadata !289, metadata !"j", metadata !57, i32 229, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!294 = metadata !{i32 234, i32 5, metadata !289, null}
!295 = metadata !{i32 236, i32 1, metadata !289, null}
!296 = metadata !{i32 786689, metadata !75, metadata !"buf", metadata !57, i32 16777486, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!297 = metadata !{i32 270, i32 34, metadata !75, null}
!298 = metadata !{i32 274, i32 10, metadata !299, null}
!299 = metadata !{i32 786443, metadata !300, i32 274, i32 5, metadata !57, i32 13} ; [ DW_TAG_lexical_block ]
!300 = metadata !{i32 786443, metadata !75, i32 271, i32 1, metadata !57, i32 12} ; [ DW_TAG_lexical_block ]
!301 = metadata !{i32 276, i32 9, metadata !302, null}
!302 = metadata !{i32 786443, metadata !299, i32 275, i32 5, metadata !57, i32 14} ; [ DW_TAG_lexical_block ]
!303 = metadata !{i32 786688, metadata !300, metadata !"a", metadata !57, i32 272, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!304 = metadata !{i32 277, i32 9, metadata !302, null}
!305 = metadata !{i32 786688, metadata !300, metadata !"b", metadata !57, i32 272, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!306 = metadata !{i32 278, i32 9, metadata !302, null}
!307 = metadata !{i32 786688, metadata !300, metadata !"c", metadata !57, i32 272, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!308 = metadata !{i32 279, i32 9, metadata !302, null}
!309 = metadata !{i32 786688, metadata !300, metadata !"d", metadata !57, i32 272, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!310 = metadata !{i32 280, i32 9, metadata !302, null}
!311 = metadata !{i32 786688, metadata !300, metadata !"e", metadata !57, i32 272, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!312 = metadata !{i32 281, i32 13, metadata !302, null}
!313 = metadata !{i32 786688, metadata !300, metadata !"z", metadata !57, i32 272, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!314 = metadata !{i32 282, i32 26, metadata !302, null}
!315 = metadata !{i32 786688, metadata !300, metadata !"x", metadata !57, i32 272, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!316 = metadata !{i32 283, i32 26, metadata !302, null}
!317 = metadata !{i32 786688, metadata !300, metadata !"y", metadata !57, i32 272, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!318 = metadata !{i32 284, i32 23, metadata !302, null}
!319 = metadata !{i32 285, i32 27, metadata !302, null}
!320 = metadata !{i32 286, i32 27, metadata !302, null}
!321 = metadata !{i32 287, i32 27, metadata !302, null}
!322 = metadata !{i32 274, i32 25, metadata !299, null}
!323 = metadata !{i32 786688, metadata !300, metadata !"i", metadata !57, i32 272, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!324 = metadata !{i32 289, i32 1, metadata !300, null}
!325 = metadata !{i32 786689, metadata !87, metadata !"buf", metadata !57, i32 16777467, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!326 = metadata !{i32 251, i32 37, metadata !87, null}
!327 = metadata !{i32 255, i32 10, metadata !328, null}
!328 = metadata !{i32 786443, metadata !329, i32 255, i32 5, metadata !57, i32 23} ; [ DW_TAG_lexical_block ]
!329 = metadata !{i32 786443, metadata !87, i32 252, i32 1, metadata !57, i32 22} ; [ DW_TAG_lexical_block ]
!330 = metadata !{i32 257, i32 9, metadata !331, null}
!331 = metadata !{i32 786443, metadata !328, i32 256, i32 5, metadata !57, i32 24} ; [ DW_TAG_lexical_block ]
!332 = metadata !{i32 786688, metadata !329, metadata !"a", metadata !57, i32 253, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!333 = metadata !{i32 258, i32 9, metadata !331, null}
!334 = metadata !{i32 786688, metadata !329, metadata !"b", metadata !57, i32 253, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!335 = metadata !{i32 259, i32 9, metadata !331, null}
!336 = metadata !{i32 786688, metadata !329, metadata !"c", metadata !57, i32 253, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!337 = metadata !{i32 260, i32 9, metadata !331, null}
!338 = metadata !{i32 786688, metadata !329, metadata !"d", metadata !57, i32 253, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!339 = metadata !{i32 261, i32 9, metadata !331, null}
!340 = metadata !{i32 786688, metadata !329, metadata !"e", metadata !57, i32 253, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!341 = metadata !{i32 262, i32 23, metadata !331, null}
!342 = metadata !{i32 263, i32 27, metadata !331, null}
!343 = metadata !{i32 264, i32 27, metadata !331, null}
!344 = metadata !{i32 265, i32 27, metadata !331, null}
!345 = metadata !{i32 255, i32 25, metadata !328, null}
!346 = metadata !{i32 786688, metadata !329, metadata !"i", metadata !57, i32 253, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!347 = metadata !{i32 267, i32 1, metadata !329, null}
!348 = metadata !{i32 786689, metadata !56, metadata !"k", metadata !57, i32 33554771, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!349 = metadata !{i32 339, i32 42, metadata !56, null}
!350 = metadata !{i32 786688, metadata !351, metadata !"rcon", metadata !57, i32 341, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!351 = metadata !{i32 786443, metadata !56, i32 340, i32 1, metadata !57, i32 0} ; [ DW_TAG_lexical_block ]
!352 = metadata !{i32 341, i32 13, metadata !351, null}
!353 = metadata !{i32 341, i32 21, metadata !351, null}
!354 = metadata !{i32 344, i32 10, metadata !355, null}
!355 = metadata !{i32 786443, metadata !351, i32 344, i32 5, metadata !57, i32 1} ; [ DW_TAG_lexical_block ]
!356 = metadata !{i32 345, i32 10, metadata !357, null}
!357 = metadata !{i32 786443, metadata !351, i32 345, i32 5, metadata !57, i32 2} ; [ DW_TAG_lexical_block ]
!358 = metadata !{i32 344, i32 44, metadata !355, null}
!359 = metadata !{i32 344, i32 39, metadata !355, null}
!360 = metadata !{i32 786688, metadata !351, metadata !"i", metadata !57, i32 342, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!361 = metadata !{i32 345, i32 23, metadata !357, null}
!362 = metadata !{i32 346, i32 1, metadata !351, null}
!363 = metadata !{i32 786689, metadata !93, metadata !"k", metadata !57, i32 16777508, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!364 = metadata !{i32 292, i32 39, metadata !93, null}
!365 = metadata !{i32 786689, metadata !93, metadata !"rc", metadata !57, i32 33554724, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!366 = metadata !{i32 292, i32 51, metadata !93, null}
!367 = metadata !{i32 296, i32 5, metadata !368, null}
!368 = metadata !{i32 786443, metadata !93, i32 293, i32 1, metadata !57, i32 28} ; [ DW_TAG_lexical_block ]
!369 = metadata !{i32 297, i32 5, metadata !368, null}
!370 = metadata !{i32 298, i32 5, metadata !368, null}
!371 = metadata !{i32 299, i32 5, metadata !368, null}
!372 = metadata !{i32 300, i32 11, metadata !368, null}
!373 = metadata !{i32 302, i32 9, metadata !374, null}
!374 = metadata !{i32 786443, metadata !368, i32 302, i32 5, metadata !57, i32 29} ; [ DW_TAG_lexical_block ]
!375 = metadata !{i32 302, i32 32, metadata !374, null}
!376 = metadata !{i32 302, i32 24, metadata !374, null}
!377 = metadata !{i32 786688, metadata !368, metadata !"i", metadata !57, i32 294, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!378 = metadata !{i32 304, i32 5, metadata !368, null}
!379 = metadata !{i32 305, i32 5, metadata !368, null}
!380 = metadata !{i32 306, i32 5, metadata !368, null}
!381 = metadata !{i32 307, i32 5, metadata !368, null}
!382 = metadata !{i32 309, i32 9, metadata !383, null}
!383 = metadata !{i32 786443, metadata !368, i32 309, i32 5, metadata !57, i32 30} ; [ DW_TAG_lexical_block ]
!384 = metadata !{i32 309, i32 33, metadata !383, null}
!385 = metadata !{i32 309, i32 25, metadata !383, null}
!386 = metadata !{i32 312, i32 1, metadata !368, null}
!387 = metadata !{i32 786689, metadata !81, metadata !"k", metadata !57, i32 16777531, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!388 = metadata !{i32 315, i32 32, metadata !81, null}
!389 = metadata !{i32 786689, metadata !81, metadata !"rc", metadata !57, i32 33554747, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!390 = metadata !{i32 315, i32 44, metadata !81, null}
!391 = metadata !{i32 319, i32 9, metadata !392, null}
!392 = metadata !{i32 786443, metadata !393, i32 319, i32 5, metadata !57, i32 17} ; [ DW_TAG_lexical_block ]
!393 = metadata !{i32 786443, metadata !81, i32 316, i32 1, metadata !57, i32 16} ; [ DW_TAG_lexical_block ]
!394 = metadata !{i32 319, i32 33, metadata !392, null}
!395 = metadata !{i32 319, i32 25, metadata !392, null}
!396 = metadata !{i32 786688, metadata !393, metadata !"i", metadata !57, i32 317, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!397 = metadata !{i32 322, i32 5, metadata !393, null}
!398 = metadata !{i32 323, i32 5, metadata !393, null}
!399 = metadata !{i32 324, i32 5, metadata !393, null}
!400 = metadata !{i32 325, i32 5, metadata !393, null}
!401 = metadata !{i32 327, i32 9, metadata !402, null}
!402 = metadata !{i32 786443, metadata !393, i32 327, i32 5, metadata !57, i32 18} ; [ DW_TAG_lexical_block ]
!403 = metadata !{i32 327, i32 32, metadata !402, null}
!404 = metadata !{i32 327, i32 24, metadata !402, null}
!405 = metadata !{i32 330, i32 5, metadata !393, null}
!406 = metadata !{i32 331, i32 5, metadata !393, null}
!407 = metadata !{i32 332, i32 5, metadata !393, null}
!408 = metadata !{i32 333, i32 5, metadata !393, null}
!409 = metadata !{i32 334, i32 5, metadata !393, null}
!410 = metadata !{i32 335, i32 1, metadata !393, null}
!411 = metadata !{i32 786689, metadata !73, metadata !"buf", metadata !57, i32 33554790, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!412 = metadata !{i32 358, i32 49, metadata !73, null}
!413 = metadata !{i32 786688, metadata !414, metadata !"rcon", metadata !57, i32 360, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!414 = metadata !{i32 786443, metadata !73, i32 359, i32 1, metadata !57, i32 5} ; [ DW_TAG_lexical_block ]
!415 = metadata !{i32 360, i32 16, metadata !414, null}
!416 = metadata !{i32 362, i32 5, metadata !414, null}
!417 = metadata !{i32 363, i32 9, metadata !418, null}
!418 = metadata !{i32 786443, metadata !414, i32 363, i32 5, metadata !57, i32 6} ; [ DW_TAG_lexical_block ]
!419 = metadata !{i32 365, i32 9, metadata !420, null}
!420 = metadata !{i32 786443, metadata !418, i32 364, i32 5, metadata !57, i32 7} ; [ DW_TAG_lexical_block ]
!421 = metadata !{i32 366, i32 9, metadata !420, null}
!422 = metadata !{i32 367, i32 9, metadata !420, null}
!423 = metadata !{i32 368, i32 9, metadata !420, null}
!424 = metadata !{i32 368, i32 21, metadata !420, null}
!425 = metadata !{i32 369, i32 14, metadata !420, null}
!426 = metadata !{i32 369, i32 49, metadata !420, null}
!427 = metadata !{i32 363, i32 34, metadata !418, null}
!428 = metadata !{i32 786688, metadata !414, metadata !"i", metadata !57, i32 360, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!429 = metadata !{i32 371, i32 5, metadata !414, null}
!430 = metadata !{i32 372, i32 5, metadata !414, null}
!431 = metadata !{i32 373, i32 5, metadata !414, null}
!432 = metadata !{i32 374, i32 5, metadata !414, null}
!433 = metadata !{i32 375, i32 1, metadata !414, null}
!434 = metadata !{i32 786689, metadata !74, metadata !"buf", metadata !57, i32 33554810, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!435 = metadata !{i32 378, i32 49, metadata !74, null}
!436 = metadata !{i32 786688, metadata !437, metadata !"rcon", metadata !57, i32 380, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!437 = metadata !{i32 786443, metadata !74, i32 379, i32 1, metadata !57, i32 8} ; [ DW_TAG_lexical_block ]
!438 = metadata !{i32 380, i32 16, metadata !437, null}
!439 = metadata !{i32 382, i32 5, metadata !437, null}
!440 = metadata !{i32 383, i32 5, metadata !437, null}
!441 = metadata !{i32 384, i32 5, metadata !437, null}
!442 = metadata !{i32 386, i32 10, metadata !443, null}
!443 = metadata !{i32 786443, metadata !437, i32 386, i32 5, metadata !57, i32 9} ; [ DW_TAG_lexical_block ]
!444 = metadata !{i32 786688, metadata !437, metadata !"i", metadata !57, i32 380, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!445 = metadata !{i32 388, i32 9, metadata !446, null}
!446 = metadata !{i32 786443, metadata !443, i32 387, i32 5, metadata !57, i32 10} ; [ DW_TAG_lexical_block ]
!447 = metadata !{i32 390, i32 13, metadata !448, null}
!448 = metadata !{i32 786443, metadata !446, i32 389, i32 9, metadata !57, i32 11} ; [ DW_TAG_lexical_block ]
!449 = metadata !{i32 391, i32 13, metadata !448, null}
!450 = metadata !{i32 392, i32 9, metadata !448, null}
!451 = metadata !{i32 393, i32 14, metadata !446, null}
!452 = metadata !{i32 394, i32 9, metadata !446, null}
!453 = metadata !{i32 395, i32 9, metadata !446, null}
!454 = metadata !{i32 396, i32 9, metadata !446, null}
!455 = metadata !{i32 397, i32 5, metadata !446, null}
!456 = metadata !{i32 398, i32 5, metadata !437, null}
!457 = metadata !{i32 399, i32 1, metadata !437, null}
!458 = metadata !{i32 786689, metadata !90, metadata !"buf", metadata !57, i32 16777434, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!459 = metadata !{i32 218, i32 42, metadata !90, null}
!460 = metadata !{i32 786689, metadata !90, metadata !"key", metadata !57, i32 33554650, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!461 = metadata !{i32 218, i32 56, metadata !90, null}
!462 = metadata !{i32 786689, metadata !90, metadata !"cpk", metadata !57, i32 50331866, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!463 = metadata !{i32 218, i32 70, metadata !90, null}
!464 = metadata !{i32 222, i32 5, metadata !465, null}
!465 = metadata !{i32 786443, metadata !90, i32 219, i32 1, metadata !57, i32 27} ; [ DW_TAG_lexical_block ]
!466 = metadata !{i32 786688, metadata !465, metadata !"i", metadata !57, i32 220, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!467 = metadata !{i32 222, i32 17, metadata !465, null}
!468 = metadata !{i32 223, i32 1, metadata !465, null}
!469 = metadata !{i32 786689, metadata !86, metadata !"buf", metadata !57, i32 16777426, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!470 = metadata !{i32 210, i32 38, metadata !86, null}
!471 = metadata !{i32 786689, metadata !86, metadata !"key", metadata !57, i32 33554642, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!472 = metadata !{i32 210, i32 52, metadata !86, null}
!473 = metadata !{i32 214, i32 5, metadata !474, null}
!474 = metadata !{i32 786443, metadata !86, i32 211, i32 1, metadata !57, i32 21} ; [ DW_TAG_lexical_block ]
!475 = metadata !{i32 786688, metadata !474, metadata !"i", metadata !57, i32 212, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!476 = metadata !{i32 214, i32 17, metadata !474, null}
!477 = metadata !{i32 215, i32 1, metadata !474, null}
