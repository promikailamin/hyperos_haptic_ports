.class public Lcom/android/server/lineage/health/ccprovider/Toggle;
.super Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;
.source "Toggle.java"


# instance fields
.field public final mChargingLimitMargin:I

.field public final mChargingTimeMargin:I

.field public mEstimatedFullTime:J

.field public mIsLimitSet:Z

.field public mSavedTargetTime:J

.field public mStage:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

.field public final mToggleSetAlways:Z


# direct methods
.method public constructor <init>(Lvendor/lineage/health/IChargingControl;Landroid/content/Context;)V
    .registers 4

    .line 69
    invoke-direct {p0, p2, p1}, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;-><init>(Landroid/content/Context;Lvendor/lineage/health/IChargingControl;)V

    .line 35
    iget-object p1, p0, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110128

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mToggleSetAlways:Z

    .line 40
    sget-object p1, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;->STAGE_NONE:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    iput-object p1, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mStage:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    const/4 p1, 0x3

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->isHALModeSupported(I)Z

    move-result p1

    if-nez p1, :cond_2d

    .line 74
    iget-object p2, p0, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e0057

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mChargingLimitMargin:I

    goto :goto_30

    :cond_2d
    const/4 p2, 0x1

    .line 77
    iput p2, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mChargingLimitMargin:I

    .line 79
    :goto_30
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isBypassSupported: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LineageHealth"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object p1, p0, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e0058

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const p2, 0xea60

    mul-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mChargingTimeMargin:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsLimitSet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mIsLimitSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSavedTargetTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mSavedTargetTime:J

    invoke-static {v1, v2, v3}, Lcom/android/server/lineage/health/Util;->msToString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEstimatedFullTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mEstimatedFullTime:J

    invoke-static {v1, v2}, Lcom/android/server/lineage/health/Util;->msToHMSString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mStage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mStage:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mChargeLimitMargin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mChargingLimitMargin:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getNextStage(FJJ)Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;
    .registers 16

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 122
    iget-object v2, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mStage:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    .line 124
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 125
    iget-object v4, p0, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v3

    .line 126
    const-string/jumbo v4, "plugged"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_22

    move v3, v4

    goto :goto_23

    :cond_22
    const/4 v3, 0x0

    :goto_23
    cmp-long p2, p2, v0

    if-lez p2, :cond_2e

    .line 128
    sget-object p2, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;->STAGE_CONTINUE:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    if-eq v2, p2, :cond_2e

    .line 130
    sget-object p0, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;->STAGE_NONE:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    return-object p0

    .line 133
    :cond_2e
    iget-wide p2, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mSavedTargetTime:J

    cmp-long v5, p2, p4

    const-string v7, "LineageHealth"

    if-eqz v5, :cond_49

    const-wide/16 v8, 0x0

    cmp-long v5, p2, v8

    if-eqz v5, :cond_40

    cmp-long p2, p2, v0

    if-ltz p2, :cond_49

    .line 135
    :cond_40
    const-string p2, "User changed target time, reassign it"

    invoke-static {v7, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iput-wide p4, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mSavedTargetTime:J

    .line 137
    sget-object v2, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;->STAGE_INITIAL:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    .line 140
    :cond_49
    iget-object p2, p0, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->mContext:Landroid/content/Context;

    const-class p3, Landroid/os/BatteryStatsManager;

    .line 141
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/BatteryStatsManager;

    .line 140
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p3, p2

    check-cast p3, Landroid/os/BatteryStatsManager;

    .line 142
    invoke-virtual {p2}, Landroid/os/BatteryStatsManager;->getBatteryUsageStats()Landroid/os/BatteryUsageStats;

    move-result-object p2

    .line 143
    invoke-virtual {p2}, Landroid/os/BatteryUsageStats;->getChargeTimeRemainingMs()J

    move-result-wide p2

    .line 144
    iget v5, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mChargingTimeMargin:I

    int-to-long v8, v5

    add-long/2addr p2, v8

    .line 145
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current estimated time to full: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/android/server/lineage/health/Util;->msToHMSString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sub-long/2addr p4, v0

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current time to target: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4, p5}, Lcom/android/server/lineage/health/Util;->msToHMSString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_bf

    if-eq v0, v4, :cond_bf

    if-eq v0, v6, :cond_b3

    const/4 p0, 0x3

    if-eq v0, p0, :cond_ab

    .line 179
    const-string p0, "Possible bug: code reaches out of switch case"

    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sget-object p0, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;->STAGE_NONE:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    return-object p0

    :cond_ab
    if-nez v3, :cond_b0

    .line 173
    sget-object p0, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;->STAGE_INITIAL:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    return-object p0

    .line 175
    :cond_b0
    sget-object p0, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;->STAGE_CONTINUE:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    return-object p0

    .line 165
    :cond_b3
    iget-wide p0, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mEstimatedFullTime:J

    cmp-long p0, p4, p0

    if-gtz p0, :cond_bc

    .line 166
    sget-object p0, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;->STAGE_CONTINUE:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    return-object p0

    .line 168
    :cond_bc
    sget-object p0, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;->STAGE_WAITING:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    return-object p0

    :cond_bf
    if-eqz v3, :cond_da

    const/high16 v0, 0x42a00000    # 80.0f

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_da

    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-nez p1, :cond_ce

    goto :goto_da

    :cond_ce
    cmp-long p1, p4, p2

    if-lez p1, :cond_d7

    .line 157
    iput-wide p2, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mEstimatedFullTime:J

    .line 158
    sget-object p0, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;->STAGE_WAITING:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    return-object p0

    .line 161
    :cond_d7
    sget-object p0, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;->STAGE_CONTINUE:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    return-object p0

    .line 154
    :cond_da
    :goto_da
    sget-object p0, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;->STAGE_INITIAL:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    return-object p0
.end method

.method public isChargingControlModeSupported(I)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :cond_b
    :goto_b
    return p0
.end method

.method public isSupported()Z
    .registers 2

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->isHALModeSupported(I)Z

    move-result p0

    return p0
.end method

.method public onBatteryChanged(FI)Z
    .registers 5

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/android/server/lineage/health/ccprovider/Toggle;->shouldStopCharging(FI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mIsLimitSet:Z

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current battery level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", target: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", limit set: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mIsLimitSet:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LineageHealth"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-boolean p1, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mIsLimitSet:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/health/ccprovider/Toggle;->setChargingEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public onBatteryChanged(FJJI)Z
    .registers 9

    const/4 v0, 0x1

    .line 186
    const-string v1, "LineageHealth"

    if-eq p6, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p6, v0, :cond_1e

    .line 187
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Possible bug: onBatteryChanged called with unsupported mode: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 192
    :cond_1e
    iget-object p6, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mStage:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    .line 193
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/lineage/health/ccprovider/Toggle;->getNextStage(FJJ)Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mStage:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "State change: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mStage:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object p1, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mStage:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/health/ccprovider/Toggle;->onStage(Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;)Z

    move-result p0

    return p0
.end method

.method public onDisable()V
    .registers 1

    .line 220
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ccprovider/Toggle;->onReset()V

    return-void
.end method

.method public onEnabled()V
    .registers 1

    .line 215
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ccprovider/Toggle;->onReset()V

    return-void
.end method

.method public onReset()V
    .registers 3

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->mChargingControl:Lvendor/lineage/health/IChargingControl;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lvendor/lineage/health/IChargingControl;->setChargingEnabled(Z)V

    const/4 v0, 0x0

    .line 227
    iput-boolean v0, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mIsLimitSet:Z

    const-wide/16 v0, 0x0

    .line 228
    iput-wide v0, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mSavedTargetTime:J

    .line 229
    iput-wide v0, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mEstimatedFullTime:J

    .line 230
    sget-object v0, Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;->STAGE_NONE:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;

    iput-object v0, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mStage:Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 232
    const-string v0, "LineageHealth"

    const-string v1, "Failed to set charging enabled"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onStage(Lcom/android/server/lineage/health/ccprovider/Toggle$chgCtrlStage;)Z
    .registers 5

    .line 104
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1b

    if-eq p1, v1, :cond_16

    const/4 v2, 0x2

    if-eq p1, v2, :cond_11

    const/4 v2, 0x3

    if-eq p1, v2, :cond_16

    return v0

    .line 113
    :cond_11
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/health/ccprovider/Toggle;->setChargingEnabled(Z)Z

    move-result p0

    return p0

    .line 110
    :cond_16
    invoke-virtual {p0, v1}, Lcom/android/server/lineage/health/ccprovider/Toggle;->setChargingEnabled(Z)Z

    move-result p0

    return p0

    .line 106
    :cond_1b
    invoke-virtual {p0, v1}, Lcom/android/server/lineage/health/ccprovider/Toggle;->setChargingEnabled(Z)Z

    return v0
.end method

.method public requiresBatteryLevelMonitoring()Z
    .registers 2

    const/4 v0, 0x2

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->isHALModeSupported(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final setChargingEnabled(Z)Z
    .registers 3

    .line 201
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mToggleSetAlways:Z

    if-eqz v0, :cond_a

    .line 202
    iget-object p0, p0, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->mChargingControl:Lvendor/lineage/health/IChargingControl;

    invoke-interface {p0, p1}, Lvendor/lineage/health/IChargingControl;->setChargingEnabled(Z)V

    goto :goto_17

    .line 203
    :cond_a
    iget-object v0, p0, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->mChargingControl:Lvendor/lineage/health/IChargingControl;

    invoke-interface {v0}, Lvendor/lineage/health/IChargingControl;->getChargingEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_17

    .line 204
    iget-object p0, p0, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->mChargingControl:Lvendor/lineage/health/IChargingControl;

    invoke-interface {p0, p1}, Lvendor/lineage/health/IChargingControl;->setChargingEnabled(Z)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0

    :catch_19
    move-exception p0

    .line 208
    const-string p1, "LineageHealth"

    const-string v0, "Failed to set charging enabled"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final shouldStopCharging(FI)Z
    .registers 6

    .line 252
    iget-boolean v0, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mIsLimitSet:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    .line 253
    iget p0, p0, Lcom/android/server/lineage/health/ccprovider/Toggle;->mChargingLimitMargin:I

    sub-int/2addr p2, p0

    int-to-float p0, p2

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_f

    return v2

    :cond_f
    return v1

    :cond_10
    int-to-float p0, p2

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_16

    return v2

    :cond_16
    return v1
.end method
