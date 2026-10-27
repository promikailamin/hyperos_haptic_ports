.class public Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;
.super Landroid/os/BatteryStats$Uid$Proc;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;


# instance fields
.field public mActive:Z

.field public mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public mExcessivePower:Ljava/util/ArrayList;

.field public mForegroundTimeMs:J

.field public final mName:Ljava/lang/String;

.field public mNumAnrs:I

.field public mNumCrashes:I

.field public mStarts:I

.field public mSystemTimeMs:J

.field public mUserTimeMs:J


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Ljava/lang/String;)V
    .registers 4

    .line 9859
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Proc;-><init>()V

    const/4 v0, 0x1

    .line 9825
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mActive:Z

    .line 9860
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 9861
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mName:Ljava/lang/String;

    .line 9862
    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {p1, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method


# virtual methods
.method public addCpuTimeLocked(II)V
    .registers 4

    .line 9968
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(IIZ)V

    return-void
.end method

.method public addCpuTimeLocked(IIZ)V
    .registers 8

    if-eqz p3, :cond_e

    .line 9973
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    .line 9974
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    :cond_e
    return-void
.end method

.method public addExcessiveCpu(JJ)V
    .registers 7

    .line 9899
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 9900
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    .line 9902
    :cond_b
    new-instance v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    invoke-direct {v0}, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;-><init>()V

    const/4 v1, 0x2

    .line 9903
    iput v1, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    .line 9904
    iput-wide p1, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    .line 9905
    iput-wide p3, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    .line 9906
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addForegroundTimeLocked(J)V
    .registers 5

    .line 9979
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mForegroundTimeMs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mForegroundTimeMs:J

    return-void
.end method

.method public countExcessivePowers()I
    .registers 1

    .line 9888
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public detach()V
    .registers 2

    const/4 v0, 0x0

    .line 9883
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mActive:Z

    .line 9884
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->remove(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    .registers 2

    .line 9892
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    if-eqz p0, :cond_b

    .line 9893
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getForegroundTime(I)J
    .registers 2

    .line 10011
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mForegroundTimeMs:J

    return-wide p0
.end method

.method public getNumAnrs(I)I
    .registers 2

    .line 10026
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    return p0
.end method

.method public getNumCrashes(I)I
    .registers 2

    .line 10021
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    return p0
.end method

.method public getStarts(I)I
    .registers 2

    .line 10016
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mStarts:I

    return p0
.end method

.method public getSystemTime(I)J
    .registers 2

    .line 10006
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    return-wide p0
.end method

.method public getUserTime(I)J
    .registers 2

    .line 10001
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    return-wide p0
.end method

.method public incNumAnrsLocked()V
    .registers 2

    .line 9991
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    return-void
.end method

.method public incNumCrashesLocked()V
    .registers 2

    .line 9987
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    return-void
.end method

.method public incStartsLocked()V
    .registers 2

    .line 9983
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mStarts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mStarts:I

    return-void
.end method

.method public isActive()Z
    .registers 1

    .line 9996
    iget-boolean p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mActive:Z

    return p0
.end method

.method public onTimeStarted(JJJ)V
    .registers 7

    .line 0
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .registers 7

    .line 0
    return-void
.end method

.method public readExcessivePowerFromParcelLocked(Landroid/os/Parcel;)V
    .registers 7

    .line 9926
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    .line 9928
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    return-void

    :cond_a
    const/16 v1, 0x2710

    if-gt v0, v1, :cond_38

    .line 9937
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_37

    .line 9939
    new-instance v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    invoke-direct {v2}, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;-><init>()V

    .line 9940
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    .line 9941
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    .line 9942
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    .line 9943
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_37
    return-void

    .line 9933
    :cond_38
    new-instance p0, Landroid/os/ParcelFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File corrupt: too many excessive power entries "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset(ZJ)Z
    .registers 4

    if-eqz p1, :cond_5

    .line 9876
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->detach()V

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public writeExcessivePowerToParcelLocked(Landroid/os/Parcel;)V
    .registers 7

    .line 9910
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 9911
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 9915
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9916
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_10
    if-ge v1, v0, :cond_2c

    .line 9918
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    .line 9919
    iget v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9920
    iget-wide v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 9921
    iget-wide v2, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_2c
    return-void
.end method
