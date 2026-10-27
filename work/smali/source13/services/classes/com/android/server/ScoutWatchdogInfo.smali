.class public Lcom/android/server/ScoutWatchdogInfo;
.super Ljava/lang/Object;
.source "ScoutWatchdogInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ScoutWatchdogInfo$ScoutId;
    }
.end annotation


# instance fields
.field private mBinderTransInfo:Ljava/lang/String;

.field private mHasDThread:Z

.field private mMonkeyPid:I

.field private scoutId:Lcom/android/server/ScoutWatchdogInfo$ScoutId;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ScoutWatchdogInfo;->mBinderTransInfo:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getBinderTransInfo()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/android/server/ScoutWatchdogInfo;->mBinderTransInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getDThreadState()Z
    .registers 2

    .line 28
    iget-boolean v0, p0, Lcom/android/server/ScoutWatchdogInfo;->mHasDThread:Z

    return v0
.end method

.method public getMonkeyPid()I
    .registers 2

    .line 32
    iget v0, p0, Lcom/android/server/ScoutWatchdogInfo;->mMonkeyPid:I

    return v0
.end method

.method public getScoutIdInstance()Lcom/android/server/ScoutWatchdogInfo$ScoutId;
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/android/server/ScoutWatchdogInfo;->scoutId:Lcom/android/server/ScoutWatchdogInfo$ScoutId;

    if-nez v0, :cond_13

    .line 41
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "uuid":Ljava/lang/String;
    new-instance v1, Lcom/android/server/ScoutWatchdogInfo$ScoutId;

    invoke-direct {v1, v0}, Lcom/android/server/ScoutWatchdogInfo$ScoutId;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/ScoutWatchdogInfo;->scoutId:Lcom/android/server/ScoutWatchdogInfo$ScoutId;

    .line 44
    .end local v0    # "uuid":Ljava/lang/String;
    :cond_13
    iget-object v0, p0, Lcom/android/server/ScoutWatchdogInfo;->scoutId:Lcom/android/server/ScoutWatchdogInfo$ScoutId;

    return-object v0
.end method

.method public setBinderTransInfo(Ljava/lang/String;)V
    .registers 2
    .param p1, "mBinderTransInfo"    # Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/android/server/ScoutWatchdogInfo;->mBinderTransInfo:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setDThreadState(Z)V
    .registers 2
    .param p1, "mHasDThread"    # Z

    .line 16
    iput-boolean p1, p0, Lcom/android/server/ScoutWatchdogInfo;->mHasDThread:Z

    .line 17
    return-void
.end method

.method public setMonkeyPid(I)V
    .registers 2
    .param p1, "monkeyPid"    # I

    .line 20
    iput p1, p0, Lcom/android/server/ScoutWatchdogInfo;->mMonkeyPid:I

    .line 21
    return-void
.end method
