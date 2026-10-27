.class public Lcom/android/server/biometrics/sensors/PerformanceTracker;
.super Ljava/lang/Object;
.source "PerformanceTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PerformanceTracker"

.field private static sTrackers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/biometrics/sensors/PerformanceTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAllUsersInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;",
            ">;"
        }
    .end annotation
.end field

.field private mHALDeathCount:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 60
    return-void
.end method

.method private createUserEntryIfNecessary(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 63
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 64
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;-><init>(Lcom/android/server/biometrics/sensors/PerformanceTracker$Info-IA;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    :cond_13
    return-void
.end method

.method public static getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;
    .registers 3
    .param p0, "sensorId"    # I

    .line 31
    sget-object v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->sTrackers:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->sTrackers:Landroid/util/SparseArray;

    .line 35
    :cond_b
    sget-object v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->sTrackers:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 36
    sget-object v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->sTrackers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/biometrics/sensors/PerformanceTracker;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;-><init>()V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    :cond_1d
    sget-object v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->sTrackers:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mHALDeathCount:I

    .line 117
    return-void
.end method

.method public getAcceptCryptoForUser(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 132
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v0, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcceptCrypto:I

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public getAcceptForUser(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 120
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v0, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAccept:I

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public getAcquireCryptoForUser(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 140
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v0, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquireCrypto:I

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public getAcquireForUser(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 128
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v0, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquire:I

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public getHALDeathCount()I
    .registers 2

    .line 152
    iget v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mHALDeathCount:I

    return v0
.end method

.method public getPermanentLockoutForUser(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 148
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v0, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mPermanentLockout:I

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public getRejectCryptoForUser(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 136
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v0, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mRejectCrypto:I

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public getRejectForUser(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 124
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v0, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mReject:I

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public getTimedLockoutForUser(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 144
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v0, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mTimedLockout:I

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method incrementAcquireForUser(IZ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "isCrypto"    # Z

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    .line 91
    if-eqz p2, :cond_14

    .line 92
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquireCrypto:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquireCrypto:I

    goto :goto_22

    .line 94
    :cond_14
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquire:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquire:I

    .line 96
    :goto_22
    return-void
.end method

.method public incrementAuthForUser(IZ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "accepted"    # Z

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    .line 71
    if-eqz p2, :cond_14

    .line 72
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAccept:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAccept:I

    goto :goto_22

    .line 74
    :cond_14
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mReject:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mReject:I

    .line 76
    :goto_22
    return-void
.end method

.method incrementCryptoAuthForUser(IZ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "accepted"    # Z

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    .line 81
    if-eqz p2, :cond_14

    .line 82
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcceptCrypto:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcceptCrypto:I

    goto :goto_22

    .line 84
    :cond_14
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mRejectCrypto:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mRejectCrypto:I

    .line 86
    :goto_22
    return-void
.end method

.method public incrementHALDeathCount()V
    .registers 2

    .line 111
    iget v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mHALDeathCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mHALDeathCount:I

    .line 112
    return-void
.end method

.method incrementPermanentLockoutForUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    .line 107
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mPermanentLockout:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mPermanentLockout:I

    .line 108
    return-void
.end method

.method incrementTimedLockoutForUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mTimedLockout:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mTimedLockout:I

    .line 102
    return-void
.end method
