.class public final Lcom/android/server/vibrator/Vibration$DebugInfoImpl;
.super Ljava/lang/Object;
.source "Vibration.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSession$DebugInfo;


# instance fields
.field public final mAdaptiveScale:F

.field public final mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

.field public final mCreateTime:J

.field public final mCreateUptime:J

.field public final mDurationMs:J

.field public final mEndTime:J

.field public final mOriginalEffect:Landroid/os/CombinedVibration;

.field public final mPlayedEffect:Landroid/os/CombinedVibration;

.field public final mScaleFactor:F

.field public final mScaleLevel:I

.field public final mStartTime:J

.field public final mStatsInfo:Lcom/android/server/vibrator/VibrationStats$StatsInfo;

.field public final mStatus:Lcom/android/server/vibrator/VibrationSession$Status;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;ILcom/android/server/vibrator/VibrationStats;Landroid/os/CombinedVibration;Landroid/os/CombinedVibration;IFF)V
    .registers 11

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iput-object p2, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    .line 162
    iget v0, p2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object p2, p2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 163
    invoke-virtual {p2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p2

    .line 162
    invoke-virtual {p4, v0, p3, p2, p1}, Lcom/android/server/vibrator/VibrationStats;->toStatsInfo(IIILcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/VibrationStats$StatsInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStatsInfo:Lcom/android/server/vibrator/VibrationStats$StatsInfo;

    .line 164
    iput-object p5, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mPlayedEffect:Landroid/os/CombinedVibration;

    .line 165
    iput-object p6, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mOriginalEffect:Landroid/os/CombinedVibration;

    .line 166
    iput p7, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mScaleLevel:I

    .line 167
    iput p8, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mScaleFactor:F

    .line 168
    iput p9, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mAdaptiveScale:F

    .line 169
    iput-object p1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 171
    invoke-virtual {p4}, Lcom/android/server/vibrator/VibrationStats;->getCreateUptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCreateUptime:J

    .line 172
    invoke-virtual {p4}, Lcom/android/server/vibrator/VibrationStats;->getCreateTimeDebug()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCreateTime:J

    .line 173
    invoke-virtual {p4}, Lcom/android/server/vibrator/VibrationStats;->getStartTimeDebug()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStartTime:J

    .line 174
    invoke-virtual {p4}, Lcom/android/server/vibrator/VibrationStats;->getEndTimeDebug()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mEndTime:J

    .line 175
    invoke-virtual {p4}, Lcom/android/server/vibrator/VibrationStats;->getDurationDebug()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mDurationMs:J

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 9

    .line 261
    const-string v0, "Vibration:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "durationMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mDurationMs:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCreateTime:J

    const/4 v1, 0x1

    invoke-static {v3, v4, v1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startTime = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStartTime:J

    invoke-static {v3, v4, v1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endTime = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mEndTime:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_89

    const/4 v1, 0x0

    goto :goto_8d

    .line 268
    :cond_89
    invoke-static {v3, v4, v1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    :goto_8d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "playedEffect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mPlayedEffect:Landroid/os/CombinedVibration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "originalEffect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mOriginalEffect:Landroid/os/CombinedVibration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mScaleLevel:I

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationScaler;->scaleLevelToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scaleFactor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mScaleFactor:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%.2f"

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adaptiveScale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mAdaptiveScale:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callerInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10

    .line 280
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10300000001L

    .line 281
    iget-wide v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStartTime:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000002L

    .line 282
    iget-wide v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mEndTime:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000007L

    .line 283
    iget-wide v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mDurationMs:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 284
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-wide v1, 0x10e00000008L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10b00000005L

    .line 286
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 287
    iget-object v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v2, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const-wide v3, 0x10500000001L

    .line 288
    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000002L

    .line 289
    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getAudioUsage()I

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000003L

    .line 290
    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 291
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 293
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mPlayedEffect:Landroid/os/CombinedVibration;

    if-eqz v0, :cond_70

    const-wide v1, 0x10b00000003L

    .line 294
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration;)V

    .line 296
    :cond_70
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mOriginalEffect:Landroid/os/CombinedVibration;

    if-eqz v0, :cond_7c

    const-wide v1, 0x10b00000004L

    .line 297
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration;)V

    .line 300
    :cond_7c
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpCompact(Landroid/util/IndentingPrintWriter;)V
    .registers 15

    .line 228
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mPlayedEffect:Landroid/os/CombinedVibration;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 229
    :goto_9
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-wide v4, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCreateTime:J

    .line 231
    invoke-static {v4, v5, v1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_17

    .line 232
    const-string v0, "external"

    :goto_15
    move-object v7, v0

    goto :goto_1a

    :cond_17
    const-string v0, "effect"

    goto :goto_15

    :goto_1a
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 233
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    iget-wide v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mDurationMs:J

    .line 234
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 235
    iget-wide v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v10, v0, v4

    const-string v12, ""

    if-nez v10, :cond_36

    move-object v10, v12

    goto :goto_3b

    :cond_36
    invoke-static {v0, v1, v2}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 236
    :goto_3b
    iget-wide v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mEndTime:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_43

    move-object v11, v12

    goto :goto_48

    :cond_43
    invoke-static {v0, v1, v2}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    :goto_48
    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    .line 229
    const-string v1, "%s | %8s | %20s | duration: %5dms | start: %12s | end: %12s"

    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 237
    iget v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mScaleLevel:I

    .line 239
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationScaler;->scaleLevelToString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mScaleFactor:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v4, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mAdaptiveScale:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v5, v5, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 240
    invoke-virtual {v5}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v6, v6, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 241
    invoke-virtual {v6}, Landroid/os/VibrationAttributes;->usageToString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v1, v2, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v1

    .line 237
    const-string v2, " | scale: %9s (%.2f) | adaptiveScale=%.2f | flags: %4s | usage: %s"

    invoke-static {v3, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 245
    iget-object v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v2, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getOriginalAudioUsage()I

    move-result v2

    if-eqz v2, :cond_aa

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " | audioUsage="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v4, v4, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 247
    invoke-virtual {v4}, Landroid/os/VibrationAttributes;->getOriginalAudioUsage()I

    move-result v4

    .line 246
    invoke-static {v4}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 249
    :cond_aa
    iget-object v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v4, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    iget v2, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    .line 251
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v5, v5, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->deviceId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v6, v6, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->reason:Ljava/lang/String;

    filled-new-array {v4, v2, v5, v6}, [Ljava/lang/Object;

    move-result-object v2

    .line 249
    const-string v4, " | %s (uid=%d, deviceId=%d) | reason: %s"

    invoke-static {v3, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 254
    iget-object v4, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mPlayedEffect:Landroid/os/CombinedVibration;

    const/4 v5, 0x0

    if-nez v4, :cond_d1

    move-object v4, v5

    goto :goto_d5

    :cond_d1
    invoke-virtual {v4}, Landroid/os/CombinedVibration;->toDebugString()Ljava/lang/String;

    move-result-object v4

    .line 255
    :goto_d5
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mOriginalEffect:Landroid/os/CombinedVibration;

    if-nez p0, :cond_da

    goto :goto_de

    :cond_da
    invoke-virtual {p0}, Landroid/os/CombinedVibration;->toDebugString()Ljava/lang/String;

    move-result-object v5

    :goto_de
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object p0

    .line 252
    const-string v4, " | played: %s | original: %s"

    invoke-static {v3, v4, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Mono;)V
    .registers 7

    .line 316
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x20b00000001L

    .line 317
    invoke-virtual {p4}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object p4

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/VibrationEffect;)V

    .line 318
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Stereo;)V
    .registers 9

    .line 323
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const/4 v0, 0x0

    .line 324
    :goto_5
    invoke-virtual {p4}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 325
    invoke-virtual {p4}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    const-wide v2, 0x20500000002L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 326
    invoke-virtual {p4}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/VibrationEffect;

    const-wide v2, 0x20b00000001L

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/VibrationEffect;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 328
    :cond_34
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration;)V
    .registers 8

    .line 305
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 306
    instance-of v0, p4, Landroid/os/CombinedVibration$Mono;

    const-wide v1, 0x20b00000001L

    if-eqz v0, :cond_13

    check-cast p4, Landroid/os/CombinedVibration$Mono;

    .line 307
    invoke-virtual {p0, p1, v1, v2, p4}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Mono;)V

    goto :goto_1c

    .line 308
    :cond_13
    instance-of v0, p4, Landroid/os/CombinedVibration$Stereo;

    if-eqz v0, :cond_1c

    check-cast p4, Landroid/os/CombinedVibration$Stereo;

    .line 309
    invoke-virtual {p0, p1, v1, v2, p4}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Stereo;)V

    .line 311
    :cond_1c
    :goto_1c
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/VibrationEffect;)V
    .registers 9

    .line 333
    instance-of v0, p4, Landroid/os/VibrationEffect$Composed;

    if-eqz v0, :cond_36

    check-cast p4, Landroid/os/VibrationEffect$Composed;

    .line 334
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 335
    invoke-virtual {p4}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    const-wide v2, 0x10b00000001L

    .line 336
    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/VibrationEffectSegment;)V

    goto :goto_12

    :cond_27
    const-wide v0, 0x10500000002L

    .line 338
    invoke-virtual {p4}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 339
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_36
    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/PrebakedSegment;)V
    .registers 7

    .line 378
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    .line 379
    invoke-virtual {p4}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000002L

    .line 380
    invoke-virtual {p4}, Landroid/os/vibrator/PrebakedSegment;->getEffectStrength()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000003L

    .line 381
    invoke-virtual {p4}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 382
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/PrimitiveSegment;)V
    .registers 7

    .line 387
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    .line 388
    invoke-virtual {p4}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10200000002L

    .line 389
    invoke-virtual {p4}, Landroid/os/vibrator/PrimitiveSegment;->getScale()F

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x10500000003L

    .line 390
    invoke-virtual {p4}, Landroid/os/vibrator/PrimitiveSegment;->getDelay()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 391
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/RampSegment;)V
    .registers 9

    .line 367
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    .line 368
    invoke-virtual {p4}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10200000002L

    .line 369
    invoke-virtual {p4}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x10200000003L

    .line 370
    invoke-virtual {p4}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x10200000004L

    .line 371
    invoke-virtual {p4}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x10200000005L

    .line 372
    invoke-virtual {p4}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 373
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/StepSegment;)V
    .registers 9

    .line 359
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    .line 360
    invoke-virtual {p4}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10200000002L

    .line 361
    invoke-virtual {p4}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x10200000003L

    .line 362
    invoke-virtual {p4}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 363
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/VibrationEffectSegment;)V
    .registers 7

    .line 345
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 346
    instance-of v0, p4, Landroid/os/vibrator/StepSegment;

    if-eqz v0, :cond_13

    const-wide v0, 0x10b00000003L

    .line 347
    check-cast p4, Landroid/os/vibrator/StepSegment;

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/StepSegment;)V

    goto :goto_3f

    .line 348
    :cond_13
    instance-of v0, p4, Landroid/os/vibrator/RampSegment;

    if-eqz v0, :cond_22

    const-wide v0, 0x10b00000004L

    .line 349
    check-cast p4, Landroid/os/vibrator/RampSegment;

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/RampSegment;)V

    goto :goto_3f

    .line 350
    :cond_22
    instance-of v0, p4, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v0, :cond_31

    const-wide v0, 0x10b00000001L

    .line 351
    check-cast p4, Landroid/os/vibrator/PrebakedSegment;

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/PrebakedSegment;)V

    goto :goto_3f

    .line 352
    :cond_31
    instance-of v0, p4, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v0, :cond_3f

    const-wide v0, 0x10b00000002L

    .line 353
    check-cast p4, Landroid/os/vibrator/PrimitiveSegment;

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/PrimitiveSegment;)V

    .line 355
    :cond_3f
    :goto_3f
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .registers 1

    .line 190
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    return-object p0
.end method

.method public getCreateUptimeMillis()J
    .registers 3

    .line 185
    iget-wide v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCreateUptime:J

    return-wide v0
.end method

.method public getDumpAggregationKey()Ljava/lang/Object;
    .registers 1

    .line 196
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mPlayedEffect:Landroid/os/CombinedVibration;

    return-object p0
.end method

.method public getStatus()Lcom/android/server/vibrator/VibrationSession$Status;
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0
.end method

.method public logMetrics(Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;)V
    .registers 4

    .line 217
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mAdaptiveScale:F

    invoke-virtual {p1, v0, v1}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationAdaptiveHapticScale(IF)V

    .line 218
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStatsInfo:Lcom/android/server/vibrator/VibrationStats$StatsInfo;

    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->writeVibrationReportedAsync(Lcom/android/server/vibrator/VibrationStats$StatsInfo;)V

    .line 221
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    .line 222
    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mOriginalEffect:Landroid/os/CombinedVibration;

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mPlayedEffect:Landroid/os/CombinedVibration;

    .line 221
    :goto_19
    invoke-virtual {p1, v0, v1}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationCountAndSizeIfVendorEffect(ILandroid/os/CombinedVibration;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCreateTime:J

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStartTime:J

    .line 202
    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", endTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mEndTime:J

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_31

    const/4 v1, 0x0

    goto :goto_35

    :cond_31
    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    :goto_35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", durationMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mDurationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 206
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playedEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mPlayedEffect:Landroid/os/CombinedVibration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", originalEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mOriginalEffect:Landroid/os/CombinedVibration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scaleLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mScaleLevel:I

    .line 209
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationScaler;->scaleLevelToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", scaleFactor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mScaleFactor:F

    .line 210
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%.2f"

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adaptiveScale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mAdaptiveScale:F

    .line 211
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callerInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
