.class public abstract Lcom/android/server/tare/EconomicPolicy;
.super Ljava/lang/Object;
.source "EconomicPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tare/EconomicPolicy$Cost;,
        Lcom/android/server/tare/EconomicPolicy$Reward;,
        Lcom/android/server/tare/EconomicPolicy$Action;,
        Lcom/android/server/tare/EconomicPolicy$UtilityReward;,
        Lcom/android/server/tare/EconomicPolicy$EventType;,
        Lcom/android/server/tare/EconomicPolicy$AppAction;
    }
.end annotation


# static fields
.field private static final COST_MODIFIER_BY_INDEX:[Lcom/android/server/tare/Modifier;

.field static final MASK_EVENT:I = 0x1fffffff

.field static final MASK_POLICY:I = 0x20000000

.field static final MASK_TYPE:I = -0x40000000

.field static final POLICY_AM:I = 0x0

.field static final POLICY_JS:I = 0x20000000

.field static final REGULATION_BASIC_INCOME:I = 0x0

.field static final REGULATION_BIRTHRIGHT:I = 0x1

.field static final REGULATION_DEMOTION:I = 0x4

.field static final REGULATION_PROMOTION:I = 0x3

.field static final REGULATION_WEALTH_RECLAMATION:I = 0x2

.field static final REWARD_NOTIFICATION_INTERACTION:I = -0x7fffffff

.field static final REWARD_NOTIFICATION_SEEN:I = -0x80000000

.field static final REWARD_OTHER_USER_INTERACTION:I = -0x7ffffffc

.field static final REWARD_TOP_ACTIVITY:I = -0x7ffffffe

.field static final REWARD_WIDGET_INTERACTION:I = -0x7ffffffd

.field private static final SHIFT_POLICY:I = 0x1d

.field private static final SHIFT_TYPE:I = 0x1e

.field private static final TAG:Ljava/lang/String;

.field static final TYPE_ACTION:I = 0x40000000

.field static final TYPE_REGULATION:I = 0x0

.field static final TYPE_REWARD:I = -0x80000000


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/tare/EconomicPolicy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/EconomicPolicy;->TAG:Ljava/lang/String;

    .line 168
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/tare/Modifier;

    sput-object v0, Lcom/android/server/tare/EconomicPolicy;->COST_MODIFIER_BY_INDEX:[Lcom/android/server/tare/Modifier;

    return-void
.end method

.method constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .registers 6
    .param p1, "irs"    # Lcom/android/server/tare/InternalResourceService;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-virtual {p0}, Lcom/android/server/tare/EconomicPolicy;->getCostModifiers()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget v3, v0, v2

    .line 172
    .local v3, "mId":I
    invoke-static {v3, p1}, Lcom/android/server/tare/EconomicPolicy;->initModifier(ILcom/android/server/tare/InternalResourceService;)V

    .line 171
    .end local v3    # "mId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 174
    :cond_13
    return-void
.end method

.method static actionToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "eventId"    # I

    .line 328
    const/high16 v0, 0x20000000

    and-int/2addr v0, p0

    sparse-switch v0, :sswitch_data_64

    goto :goto_4b

    .line 353
    :sswitch_7
    packed-switch p0, :pswitch_data_6e

    goto :goto_4b

    .line 375
    :pswitch_b
    const-string v0, "JOB_TIMEOUT"

    return-object v0

    .line 373
    :pswitch_e
    const-string v0, "JOB_MIN_RUNNING"

    return-object v0

    .line 371
    :pswitch_11
    const-string v0, "JOB_MIN_START"

    return-object v0

    .line 369
    :pswitch_14
    const-string v0, "JOB_LOW_RUNNING"

    return-object v0

    .line 367
    :pswitch_17
    const-string v0, "JOB_LOW_START"

    return-object v0

    .line 365
    :pswitch_1a
    const-string v0, "JOB_DEFAULT_RUNNING"

    return-object v0

    .line 363
    :pswitch_1d
    const-string v0, "JOB_DEFAULT_START"

    return-object v0

    .line 361
    :pswitch_20
    const-string v0, "JOB_HIGH_RUNNING"

    return-object v0

    .line 359
    :pswitch_23
    const-string v0, "JOB_HIGH_START"

    return-object v0

    .line 357
    :pswitch_26
    const-string v0, "JOB_MAX_RUNNING"

    return-object v0

    .line 355
    :pswitch_29
    const-string v0, "JOB_MAX_START"

    return-object v0

    .line 330
    :sswitch_2c
    packed-switch p0, :pswitch_data_88

    .line 350
    goto :goto_4b

    .line 348
    :pswitch_30
    const-string v0, "ALARM_CLOCK"

    return-object v0

    .line 346
    :pswitch_33
    const-string v0, "ALARM_NONWAKEUP_INEXACT"

    return-object v0

    .line 344
    :pswitch_36
    const-string v0, "ALARM_NONWAKEUP_INEXACT_ALLOW_WHILE_IDLE"

    return-object v0

    .line 342
    :pswitch_39
    const-string v0, "ALARM_NONWAKEUP_EXACT"

    return-object v0

    .line 340
    :pswitch_3c
    const-string v0, "ALARM_NONWAKEUP_EXACT_ALLOW_WHILE_IDLE"

    return-object v0

    .line 338
    :pswitch_3f
    const-string v0, "ALARM_WAKEUP_INEXACT"

    return-object v0

    .line 336
    :pswitch_42
    const-string v0, "ALARM_WAKEUP_INEXACT_ALLOW_WHILE_IDLE"

    return-object v0

    .line 334
    :pswitch_45
    const-string v0, "ALARM_WAKEUP_EXACT"

    return-object v0

    .line 332
    :pswitch_48
    const-string v0, "ALARM_WAKEUP_EXACT_ALLOW_WHILE_IDLE"

    return-object v0

    .line 379
    :goto_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_ACTION:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_64
    .sparse-switch
        0x0 -> :sswitch_2c
        0x20000000 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_6e
    .packed-switch 0x60000000
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch

    :pswitch_data_88
    .packed-switch 0x40000000
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
    .end packed-switch
.end method

.method protected static dumpAction(Landroid/util/IndentingPrintWriter;Lcom/android/server/tare/EconomicPolicy$Action;)V
    .registers 4
    .param p0, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p1, "action"    # Lcom/android/server/tare/EconomicPolicy$Action;

    .line 450
    iget v0, p1, Lcom/android/server/tare/EconomicPolicy$Action;->id:I

    invoke-static {v0}, Lcom/android/server/tare/EconomicPolicy;->actionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 451
    const-string v0, ": "

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 452
    const-string v0, "ctp="

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 453
    iget-wide v0, p1, Lcom/android/server/tare/EconomicPolicy$Action;->costToProduce:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 454
    const-string v0, ", basePrice="

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 455
    iget-wide v0, p1, Lcom/android/server/tare/EconomicPolicy$Action;->basePrice:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 457
    return-void
.end method

.method protected static dumpActiveModifiers(Landroid/util/IndentingPrintWriter;)V
    .registers 4
    .param p0, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 433
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_24

    .line 434
    const-string v1, "Modifier "

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 436
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 438
    sget-object v1, Lcom/android/server/tare/EconomicPolicy;->COST_MODIFIER_BY_INDEX:[Lcom/android/server/tare/Modifier;

    aget-object v1, v1, v0

    .line 439
    .local v1, "modifier":Lcom/android/server/tare/Modifier;
    if-eqz v1, :cond_19

    .line 440
    invoke-virtual {v1, p0}, Lcom/android/server/tare/Modifier;->dump(Landroid/util/IndentingPrintWriter;)V

    goto :goto_1e

    .line 442
    :cond_19
    const-string v2, "NOT ACTIVE"

    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 445
    :goto_1e
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 433
    .end local v1    # "modifier":Lcom/android/server/tare/Modifier;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 447
    .end local v0    # "i":I
    :cond_24
    return-void
.end method

.method protected static dumpReward(Landroid/util/IndentingPrintWriter;Lcom/android/server/tare/EconomicPolicy$Reward;)V
    .registers 4
    .param p0, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p1, "reward"    # Lcom/android/server/tare/EconomicPolicy$Reward;

    .line 460
    iget v0, p1, Lcom/android/server/tare/EconomicPolicy$Reward;->id:I

    invoke-static {v0}, Lcom/android/server/tare/EconomicPolicy;->rewardToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 461
    const-string v0, ": "

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 462
    const-string v0, "instant="

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 463
    iget-wide v0, p1, Lcom/android/server/tare/EconomicPolicy$Reward;->instantReward:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 464
    const-string v0, ", ongoing/sec="

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 465
    iget-wide v0, p1, Lcom/android/server/tare/EconomicPolicy$Reward;->ongoingRewardPerSecond:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 466
    const-string v0, ", maxDaily="

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 467
    iget-wide v0, p1, Lcom/android/server/tare/EconomicPolicy$Reward;->maxDailyReward:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 469
    return-void
.end method

.method static eventToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "eventId"    # I

    .line 311
    const/high16 v0, -0x40000000    # -2.0f

    and-int/2addr v0, p0

    sparse-switch v0, :sswitch_data_2e

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_EVENT:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 313
    :sswitch_1e
    invoke-static {p0}, Lcom/android/server/tare/EconomicPolicy;->actionToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 316
    :sswitch_23
    invoke-static {p0}, Lcom/android/server/tare/EconomicPolicy;->regulationToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 319
    :sswitch_28
    invoke-static {p0}, Lcom/android/server/tare/EconomicPolicy;->rewardToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_2e
    .sparse-switch
        -0x80000000 -> :sswitch_28
        0x0 -> :sswitch_23
        0x40000000 -> :sswitch_1e
    .end sparse-switch
.end method

.method static getEventType(I)I
    .registers 2
    .param p0, "eventId"    # I

    .line 306
    const/high16 v0, -0x40000000    # -2.0f

    and-int/2addr v0, p0

    return v0
.end method

.method private static getModifier(I)Lcom/android/server/tare/Modifier;
    .registers 5
    .param p0, "modifierId"    # I

    .line 293
    if-ltz p0, :cond_2b

    sget-object v0, Lcom/android/server/tare/EconomicPolicy;->COST_MODIFIER_BY_INDEX:[Lcom/android/server/tare/Modifier;

    array-length v1, v0

    if-ge p0, v1, :cond_2b

    .line 296
    aget-object v0, v0, p0

    .line 297
    .local v0, "modifier":Lcom/android/server/tare/Modifier;
    if-eqz v0, :cond_c

    .line 301
    return-object v0

    .line 298
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modifier #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was never initialized"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 294
    .end local v0    # "modifier":Lcom/android/server/tare/Modifier;
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid modifier id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static initModifier(ILcom/android/server/tare/InternalResourceService;)V
    .registers 6
    .param p0, "modifierId"    # I
    .param p1, "irs"    # Lcom/android/server/tare/InternalResourceService;

    .line 266
    const-string v0, "Invalid modifier id "

    if-ltz p0, :cond_45

    sget-object v1, Lcom/android/server/tare/EconomicPolicy;->COST_MODIFIER_BY_INDEX:[Lcom/android/server/tare/Modifier;

    array-length v2, v1

    if-ge p0, v2, :cond_45

    .line 269
    aget-object v2, v1, p0

    .line 270
    .local v2, "modifier":Lcom/android/server/tare/Modifier;
    if-nez v2, :cond_44

    .line 271
    packed-switch p0, :pswitch_data_5c

    .line 285
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    :pswitch_27
    new-instance v0, Lcom/android/server/tare/ProcessStateModifier;

    invoke-direct {v0, p1}, Lcom/android/server/tare/ProcessStateModifier;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    .line 283
    .end local v2    # "modifier":Lcom/android/server/tare/Modifier;
    .local v0, "modifier":Lcom/android/server/tare/Modifier;
    move-object v2, v0

    goto :goto_42

    .line 279
    .end local v0    # "modifier":Lcom/android/server/tare/Modifier;
    .restart local v2    # "modifier":Lcom/android/server/tare/Modifier;
    :pswitch_2e
    new-instance v0, Lcom/android/server/tare/PowerSaveModeModifier;

    invoke-direct {v0, p1}, Lcom/android/server/tare/PowerSaveModeModifier;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    .line 280
    .end local v2    # "modifier":Lcom/android/server/tare/Modifier;
    .restart local v0    # "modifier":Lcom/android/server/tare/Modifier;
    move-object v2, v0

    goto :goto_42

    .line 276
    .end local v0    # "modifier":Lcom/android/server/tare/Modifier;
    .restart local v2    # "modifier":Lcom/android/server/tare/Modifier;
    :pswitch_35
    new-instance v0, Lcom/android/server/tare/DeviceIdleModifier;

    invoke-direct {v0, p1}, Lcom/android/server/tare/DeviceIdleModifier;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    .line 277
    .end local v2    # "modifier":Lcom/android/server/tare/Modifier;
    .restart local v0    # "modifier":Lcom/android/server/tare/Modifier;
    move-object v2, v0

    goto :goto_42

    .line 273
    .end local v0    # "modifier":Lcom/android/server/tare/Modifier;
    .restart local v2    # "modifier":Lcom/android/server/tare/Modifier;
    :pswitch_3c
    new-instance v0, Lcom/android/server/tare/ChargingModifier;

    invoke-direct {v0, p1}, Lcom/android/server/tare/ChargingModifier;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    .line 274
    .end local v2    # "modifier":Lcom/android/server/tare/Modifier;
    .restart local v0    # "modifier":Lcom/android/server/tare/Modifier;
    move-object v2, v0

    .line 287
    .end local v0    # "modifier":Lcom/android/server/tare/Modifier;
    .restart local v2    # "modifier":Lcom/android/server/tare/Modifier;
    :goto_42
    aput-object v2, v1, p0

    .line 289
    :cond_44
    return-void

    .line 267
    .end local v2    # "modifier":Lcom/android/server/tare/Modifier;
    :cond_45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_35
        :pswitch_2e
        :pswitch_27
    .end packed-switch
.end method

.method static regulationToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "eventId"    # I

    .line 384
    packed-switch p0, :pswitch_data_2a

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_REGULATION:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 394
    :pswitch_1b
    const-string v0, "DEMOTION"

    return-object v0

    .line 392
    :pswitch_1e
    const-string v0, "PROMOTION"

    return-object v0

    .line 390
    :pswitch_21
    const-string v0, "WEALTH_RECLAMATION"

    return-object v0

    .line 388
    :pswitch_24
    const-string v0, "BIRTHRIGHT"

    return-object v0

    .line 386
    :pswitch_27
    const-string v0, "BASIC_INCOME"

    return-object v0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
    .end packed-switch
.end method

.method static rewardToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "eventId"    # I

    .line 401
    packed-switch p0, :pswitch_data_2a

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_REWARD:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 411
    :pswitch_1b
    const-string v0, "REWARD_OTHER_USER_INTERACTION"

    return-object v0

    .line 409
    :pswitch_1e
    const-string v0, "REWARD_WIDGET_INTERACTION"

    return-object v0

    .line 403
    :pswitch_21
    const-string v0, "REWARD_TOP_ACTIVITY"

    return-object v0

    .line 407
    :pswitch_24
    const-string v0, "REWARD_NOTIFICATION_INTERACTION"

    return-object v0

    .line 405
    :pswitch_27
    const-string v0, "REWARD_NOTIFICATION_SEEN"

    return-object v0

    :pswitch_data_2a
    .packed-switch -0x80000000
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
    .end packed-switch
.end method


# virtual methods
.method dump(Landroid/util/IndentingPrintWriter;)V
    .registers 2
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 234
    return-void
.end method

.method abstract getAction(I)Lcom/android/server/tare/EconomicPolicy$Action;
.end method

.method protected getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J
    .registers 8
    .param p1, "parser"    # Landroid/util/KeyValueListParser;
    .param p2, "properties"    # Landroid/provider/DeviceConfig$Properties;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "defaultValCake"    # J

    .line 420
    invoke-virtual {p1}, Landroid/util/KeyValueListParser;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_10

    .line 424
    invoke-virtual {p1, p3, v1}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4, p5}, Landroid/app/tare/EconomyManager;->parseCreditValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    .line 426
    :cond_10
    if-eqz p2, :cond_1b

    .line 427
    invoke-virtual {p2, p3, v1}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4, p5}, Landroid/app/tare/EconomyManager;->parseCreditValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    .line 429
    :cond_1b
    return-wide p4
.end method

.method abstract getCostModifiers()[I
.end method

.method final getCostOfAction(IILjava/lang/String;)Lcom/android/server/tare/EconomicPolicy$Cost;
    .registers 20
    .param p1, "actionId"    # I
    .param p2, "userId"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 238
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/tare/EconomicPolicy;->getAction(I)Lcom/android/server/tare/EconomicPolicy$Action;

    move-result-object v0

    .line 239
    .local v0, "action":Lcom/android/server/tare/EconomicPolicy$Action;
    if-nez v0, :cond_e

    .line 240
    new-instance v1, Lcom/android/server/tare/EconomicPolicy$Cost;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Lcom/android/server/tare/EconomicPolicy$Cost;-><init>(JJ)V

    return-object v1

    .line 242
    :cond_e
    iget-wide v1, v0, Lcom/android/server/tare/EconomicPolicy$Action;->costToProduce:J

    .line 243
    .local v1, "ctp":J
    iget-wide v3, v0, Lcom/android/server/tare/EconomicPolicy$Action;->basePrice:J

    .line 244
    .local v3, "price":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/tare/EconomicPolicy;->getCostModifiers()[I

    move-result-object v5

    .line 245
    .local v5, "costModifiers":[I
    const/4 v6, 0x0

    .line 246
    .local v6, "useProcessStatePriceDeterminant":Z
    array-length v7, v5

    const/4 v8, 0x0

    :goto_19
    const/4 v9, 0x3

    if-ge v8, v7, :cond_31

    aget v10, v5, v8

    .line 247
    .local v10, "costModifier":I
    if-ne v10, v9, :cond_22

    .line 248
    const/4 v6, 0x1

    goto :goto_2e

    .line 250
    :cond_22
    invoke-static {v10}, Lcom/android/server/tare/EconomicPolicy;->getModifier(I)Lcom/android/server/tare/Modifier;

    move-result-object v9

    .line 251
    .local v9, "modifier":Lcom/android/server/tare/Modifier;
    invoke-virtual {v9, v1, v2}, Lcom/android/server/tare/Modifier;->getModifiedCostToProduce(J)J

    move-result-wide v1

    .line 252
    invoke-virtual {v9, v3, v4}, Lcom/android/server/tare/Modifier;->getModifiedPrice(J)J

    move-result-wide v3

    .line 246
    .end local v9    # "modifier":Lcom/android/server/tare/Modifier;
    .end local v10    # "costModifier":I
    :goto_2e
    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    .line 256
    :cond_31
    if-eqz v6, :cond_45

    .line 257
    nop

    .line 258
    invoke-static {v9}, Lcom/android/server/tare/EconomicPolicy;->getModifier(I)Lcom/android/server/tare/Modifier;

    move-result-object v7

    check-cast v7, Lcom/android/server/tare/ProcessStateModifier;

    .line 259
    .local v7, "processStateModifier":Lcom/android/server/tare/ProcessStateModifier;
    move-object v9, v7

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-wide v12, v1

    move-wide v14, v3

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/tare/ProcessStateModifier;->getModifiedPrice(ILjava/lang/String;JJ)J

    move-result-wide v3

    .line 261
    .end local v7    # "processStateModifier":Lcom/android/server/tare/ProcessStateModifier;
    :cond_45
    new-instance v7, Lcom/android/server/tare/EconomicPolicy$Cost;

    invoke-direct {v7, v1, v2, v3, v4}, Lcom/android/server/tare/EconomicPolicy$Cost;-><init>(JJ)V

    return-object v7
.end method

.method abstract getHardSatiatedConsumptionLimit()J
.end method

.method abstract getInitialSatiatedConsumptionLimit()J
.end method

.method abstract getMaxSatiatedBalance()J
.end method

.method abstract getMinSatiatedBalance(ILjava/lang/String;)J
.end method

.method abstract getReward(I)Lcom/android/server/tare/EconomicPolicy$Reward;
.end method

.method setup(Landroid/provider/DeviceConfig$Properties;)V
    .registers 4
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_10

    .line 179
    sget-object v1, Lcom/android/server/tare/EconomicPolicy;->COST_MODIFIER_BY_INDEX:[Lcom/android/server/tare/Modifier;

    aget-object v1, v1, v0

    .line 180
    .local v1, "modifier":Lcom/android/server/tare/Modifier;
    if-eqz v1, :cond_d

    .line 181
    invoke-virtual {v1}, Lcom/android/server/tare/Modifier;->setup()V

    .line 178
    .end local v1    # "modifier":Lcom/android/server/tare/Modifier;
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 184
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method tearDown()V
    .registers 3

    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_10

    .line 189
    sget-object v1, Lcom/android/server/tare/EconomicPolicy;->COST_MODIFIER_BY_INDEX:[Lcom/android/server/tare/Modifier;

    aget-object v1, v1, v0

    .line 190
    .local v1, "modifier":Lcom/android/server/tare/Modifier;
    if-eqz v1, :cond_d

    .line 191
    invoke-virtual {v1}, Lcom/android/server/tare/Modifier;->tearDown()V

    .line 188
    .end local v1    # "modifier":Lcom/android/server/tare/Modifier;
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    .end local v0    # "i":I
    :cond_10
    return-void
.end method
