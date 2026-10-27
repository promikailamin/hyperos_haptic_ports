.class Lcom/android/server/alarm/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"


# static fields
.field public static final APP_STANDBY_POLICY_INDEX:I = 0x1

.field public static final BATTERY_SAVER_POLICY_INDEX:I = 0x3

.field public static final DEVICE_IDLE_POLICY_INDEX:I = 0x2

.field static final EXACT_ALLOW_REASON_ALLOW_LIST:I = 0x1

.field static final EXACT_ALLOW_REASON_COMPAT:I = 0x2

.field static final EXACT_ALLOW_REASON_NOT_APPLICABLE:I = -0x1

.field static final EXACT_ALLOW_REASON_PERMISSION:I = 0x0

.field static final EXACT_ALLOW_REASON_POLICY_PERMISSION:I = 0x3

.field public static final NUM_POLICIES:I = 0x6

.field public static final POWER_PENDING_POLICY_INDEX:I = 0x5

.field public static final REQUESTER_POLICY_INDEX:I = 0x0

.field public static final TARE_POLICY_INDEX:I = 0x4


# instance fields
.field public final alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

.field public count:I

.field public final creatorUid:I

.field public final flags:I

.field public final listener:Landroid/app/IAlarmListener;

.field public final listenerTag:Ljava/lang/String;

.field public mExactAllowReason:I

.field public mIdleOptions:Landroid/os/Bundle;

.field private mMaxWhenElapsed:J

.field private mPolicyWhenElapsed:[J

.field public mUsingReserveQuota:Z

.field private mWhenElapsed:J

.field public final operation:Landroid/app/PendingIntent;

.field public final origWhen:J

.field public final packageName:Ljava/lang/String;

.field public priorityClass:Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

.field public final repeatInterval:J

.field public final sourcePackage:Ljava/lang/String;

.field public final statsTag:Ljava/lang/String;

.field public final type:I

.field public final uid:I

.field public final wakeup:Z

.field public windowLength:J

.field public final workSource:Landroid/os/WorkSource;


# direct methods
.method constructor <init>(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V
    .registers 37
    .param p1, "type"    # I
    .param p2, "when"    # J
    .param p4, "requestedWhenElapsed"    # J
    .param p6, "windowLength"    # J
    .param p8, "interval"    # J
    .param p10, "op"    # Landroid/app/PendingIntent;
    .param p11, "rec"    # Landroid/app/IAlarmListener;
    .param p12, "listenerTag"    # Ljava/lang/String;
    .param p13, "ws"    # Landroid/os/WorkSource;
    .param p14, "flags"    # I
    .param p15, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p16, "uid"    # I
    .param p17, "pkgName"    # Ljava/lang/String;
    .param p18, "idleOptions"    # Landroid/os/Bundle;
    .param p19, "exactAllowReason"    # I

    .line 138
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    move-object/from16 v6, p10

    move-object/from16 v7, p12

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput v1, v0, Lcom/android/server/alarm/Alarm;->type:I

    .line 140
    move-wide/from16 v8, p2

    iput-wide v8, v0, Lcom/android/server/alarm/Alarm;->origWhen:J

    .line 141
    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eq v1, v11, :cond_1e

    if-nez v1, :cond_1c

    goto :goto_1e

    :cond_1c
    move v11, v10

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v11, 0x1

    :goto_1f
    iput-boolean v11, v0, Lcom/android/server/alarm/Alarm;->wakeup:Z

    .line 143
    const/4 v11, 0x6

    new-array v11, v11, [J

    iput-object v11, v0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    .line 144
    aput-wide v2, v11, v10

    .line 145
    iput-wide v2, v0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 146
    iput-wide v4, v0, Lcom/android/server/alarm/Alarm;->windowLength:J

    .line 147
    add-long v11, v2, v4

    invoke-static {v11, v12}, Lcom/android/server/alarm/AlarmManagerService;->clampPositive(J)J

    move-result-wide v11

    iput-wide v11, v0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    .line 148
    move-wide/from16 v11, p8

    iput-wide v11, v0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    .line 149
    iput-object v6, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 150
    move-object/from16 v13, p11

    iput-object v13, v0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    .line 151
    iput-object v7, v0, Lcom/android/server/alarm/Alarm;->listenerTag:Ljava/lang/String;

    .line 152
    invoke-static {v6, v7, v1}, Lcom/android/server/alarm/Alarm;->makeTag(Landroid/app/PendingIntent;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v0, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    .line 153
    move-object/from16 v14, p13

    iput-object v14, v0, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    .line 154
    move/from16 v15, p14

    iput v15, v0, Lcom/android/server/alarm/Alarm;->flags:I

    .line 155
    move-object/from16 v10, p15

    iput-object v10, v0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 156
    move/from16 v1, p16

    iput v1, v0, Lcom/android/server/alarm/Alarm;->uid:I

    .line 157
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    .line 158
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    .line 159
    move/from16 v1, p19

    iput v1, v0, Lcom/android/server/alarm/Alarm;->mExactAllowReason:I

    .line 160
    if-eqz v6, :cond_6b

    invoke-virtual/range {p10 .. p10}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, v16

    goto :goto_6d

    :cond_6b
    move-object/from16 v1, p17

    :goto_6d
    iput-object v1, v0, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 161
    if-eqz v6, :cond_76

    invoke-virtual/range {p10 .. p10}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    goto :goto_78

    :cond_76
    move/from16 v1, p16

    :goto_78
    iput v1, v0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 162
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    .line 163
    return-void
.end method

.method private static exactReasonToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "reason"    # I

    .line 288
    packed-switch p0, :pswitch_data_18

    .line 300
    const-string v0, "--unknown--"

    return-object v0

    .line 296
    :pswitch_6
    const-string/jumbo v0, "policy_permission"

    return-object v0

    .line 292
    :pswitch_a
    const-string v0, "compat"

    return-object v0

    .line 290
    :pswitch_d
    const-string v0, "allow-listed"

    return-object v0

    .line 294
    :pswitch_10
    const-string/jumbo v0, "permission"

    return-object v0

    .line 298
    :pswitch_14
    const-string v0, "N/A"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch -0x1
        :pswitch_14
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_6
    .end packed-switch
.end method

.method public static makeTag(Landroid/app/PendingIntent;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p0, "pi"    # Landroid/app/PendingIntent;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 166
    const/4 v0, 0x2

    if-eq p2, v0, :cond_9

    if-nez p2, :cond_6

    goto :goto_9

    .line 167
    :cond_6
    const-string v0, "*alarm*:"

    goto :goto_b

    :cond_9
    :goto_9
    const-string v0, "*walarm*:"

    .line 168
    .local v0, "alarmString":Ljava/lang/String;
    :goto_b
    if-eqz p0, :cond_12

    invoke-virtual {p0, v0}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_23
    return-object v1
.end method

.method private static policyIndexToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "index"    # I

    .line 267
    packed-switch p0, :pswitch_data_32

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 280
    :pswitch_1d
    const-string/jumbo v0, "power_pending"

    return-object v0

    .line 277
    :pswitch_21
    const-string/jumbo v0, "tare"

    return-object v0

    .line 275
    :pswitch_25
    const-string v0, "battery_saver"

    return-object v0

    .line 273
    :pswitch_28
    const-string v0, "device_idle"

    return-object v0

    .line 271
    :pswitch_2b
    const-string v0, "app_standby"

    return-object v0

    .line 269
    :pswitch_2e
    const-string/jumbo v0, "requester"

    return-object v0

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_21
        :pswitch_1d
    .end packed-switch
.end method

.method public static typeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 305
    packed-switch p0, :pswitch_data_12

    .line 315
    const-string v0, "--unknown--"

    return-object v0

    .line 311
    :pswitch_6
    const-string v0, "ELAPSED"

    return-object v0

    .line 313
    :pswitch_9
    const-string v0, "ELAPSED_WAKEUP"

    return-object v0

    .line 307
    :pswitch_c
    const-string v0, "RTC"

    return-object v0

    .line 309
    :pswitch_f
    const-string v0, "RTC_WAKEUP"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private updateWhenElapsed()Z
    .registers 13

    .line 234
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 235
    .local v0, "oldWhenElapsed":J
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 236
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    const/4 v3, 0x6

    if-ge v2, v3, :cond_19

    .line 237
    iget-wide v3, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    iget-object v5, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aget-wide v5, v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 240
    .end local v2    # "i":I
    :cond_19
    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    .line 242
    .local v2, "oldMaxWhenElapsed":J
    iget-object v4, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    const/4 v5, 0x0

    aget-wide v6, v4, v5

    iget-wide v8, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Lcom/android/server/alarm/AlarmManagerService;->clampPositive(J)J

    move-result-wide v6

    .line 244
    .local v6, "maxRequestedElapsed":J
    iget-wide v8, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    .line 246
    iget-wide v10, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    cmp-long v4, v0, v10

    if-nez v4, :cond_39

    cmp-long v4, v2, v8

    if-eqz v4, :cond_3a

    :cond_39
    const/4 v5, 0x1

    :cond_3a
    return v5
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V
    .registers 9
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "nowELAPSED"    # J
    .param p4, "sdf"    # Ljava/text/SimpleDateFormat;

    .line 320
    iget v0, p0, Lcom/android/server/alarm/Alarm;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    if-nez v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_9
    move v0, v1

    .line 321
    .local v0, "isRtc":Z
    const-string/jumbo v1, "tag="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 324
    const-string/jumbo v1, "type="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 325
    iget v1, p0, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v1}, Lcom/android/server/alarm/Alarm;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 326
    const-string v1, " origWhen="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 327
    if-eqz v0, :cond_3a

    .line 328
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->origWhen:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3f

    .line 330
    :cond_3a
    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->origWhen:J

    invoke-static {v1, v2, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 332
    :goto_3f
    const-string v1, " window="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 333
    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 334
    iget v1, p0, Lcom/android/server/alarm/Alarm;->mExactAllowReason:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5c

    .line 335
    const-string v1, " exactAllowReason="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 336
    iget v1, p0, Lcom/android/server/alarm/Alarm;->mExactAllowReason:I

    invoke-static {v1}, Lcom/android/server/alarm/Alarm;->exactReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 338
    :cond_5c
    const-string v1, " repeatInterval="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 339
    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 340
    const-string v1, " count="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 341
    iget v1, p0, Lcom/android/server/alarm/Alarm;->count:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 342
    const-string v1, " flags=0x"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 343
    iget v1, p0, Lcom/android/server/alarm/Alarm;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 345
    const-string/jumbo v1, "policyWhenElapsed:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 346
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_85
    const/4 v2, 0x6

    if-ge v1, v2, :cond_b2

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/alarm/Alarm;->policyIndexToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 348
    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aget-wide v2, v2, v1

    invoke-static {v2, v3, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_85

    .line 350
    .end local v1    # "i":I
    :cond_b2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 352
    const-string/jumbo v1, "whenElapsed="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v1

    invoke-static {v1, v2, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 354
    const-string v1, " maxWhenElapsed="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 355
    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    invoke-static {v1, v2, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 356
    iget-boolean v1, p0, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    if-eqz v1, :cond_d5

    .line 357
    const-string v1, " usingReserveQuota=true"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 359
    :cond_d5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 361
    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_106

    .line 362
    const-string v1, "Alarm clock:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 364
    const-string v1, "  triggerTime="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 365
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v2}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 367
    const-string v1, "  showIntent="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 370
    :cond_106
    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v1, :cond_115

    .line 371
    const-string/jumbo v1, "operation="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 374
    :cond_115
    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz v1, :cond_128

    .line 375
    const-string/jumbo v1, "listener="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v1}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 378
    :cond_128
    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    if-eqz v1, :cond_13b

    .line 379
    const-string/jumbo v1, "idle-options="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 382
    :cond_13b
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V
    .registers 12
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "nowElapsed"    # J

    .line 385
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 387
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 388
    iget v2, p0, Lcom/android/server/alarm/Alarm;->type:I

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 389
    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v2

    sub-long/2addr v2, p4

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 390
    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    const-wide v4, 0x10300000004L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 391
    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide v4, 0x10300000005L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 392
    iget v2, p0, Lcom/android/server/alarm/Alarm;->count:I

    const-wide v3, 0x10500000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 393
    iget v2, p0, Lcom/android/server/alarm/Alarm;->flags:I

    const-wide v3, 0x10500000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 394
    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v2, :cond_59

    .line 395
    const-wide v3, 0x10b00000008L

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/AlarmManager$AlarmClockInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 397
    :cond_59
    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v2, :cond_65

    .line 398
    const-wide v3, 0x10b00000009L

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/PendingIntent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 400
    :cond_65
    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz v2, :cond_79

    .line 401
    const-wide v3, 0x1090000000aL

    invoke-interface {v2}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 404
    :cond_79
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 405
    return-void
.end method

.method public getMaxWhenElapsed()J
    .registers 3

    .line 212
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    return-wide v0
.end method

.method getPolicyElapsed(I)J
    .registers 4
    .param p1, "policyIndex"    # I

    .line 190
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getRequestedElapsed()J
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getWhenElapsed()J
    .registers 3

    .line 204
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    return-wide v0
.end method

.method public matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z
    .registers 5
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "rec"    # Landroid/app/IAlarmListener;

    .line 173
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_9

    .line 174
    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1e

    .line 175
    :cond_9
    if-eqz p2, :cond_1d

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v0}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p2}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 173
    :goto_1e
    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setPolicyElapsed(IJ)Z
    .registers 5
    .param p1, "policyIndex"    # I
    .param p2, "policyElapsed"    # J

    .line 225
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aput-wide p2, v0, p1

    .line 226
    invoke-direct {p0}, Lcom/android/server/alarm/Alarm;->updateWhenElapsed()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 252
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Alarm{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const-string v1, " type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget v1, p0, Lcom/android/server/alarm/Alarm;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    const-string v1, " origWhen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->origWhen:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 258
    const-string v1, " whenElapsed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 260
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
