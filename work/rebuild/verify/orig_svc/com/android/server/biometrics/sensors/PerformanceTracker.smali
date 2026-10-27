.class public Lcom/android/server/biometrics/sensors/PerformanceTracker;
.super Ljava/lang/Object;
.source "PerformanceTracker.java"


# static fields
.field public static final sTrackers:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final mAllUsersInfo:Landroid/util/SparseArray;

.field public mHALDeathCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->sTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    return-void
.end method

.method public static getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;
    .registers 4

    .line 34
    sget-object v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->sTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/sensors/PerformanceTracker;

    invoke-direct {v2}, Lcom/android/server/biometrics/sensors/PerformanceTracker;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/PerformanceTracker;

    if-eqz v1, :cond_14

    return-object v1

    .line 35
    :cond_14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;

    return-object p0
.end method


# virtual methods
.method public final createUserEntryIfNecessary(I)V
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 61
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;-><init>(Lcom/android/server/biometrics/sensors/PerformanceTracker-IA;)V

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_13
    return-void
.end method

.method public getAcceptCryptoForUser(I)I
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcceptCrypto:I

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public getAcceptForUser(I)I
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAccept:I

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public getAcquireCryptoForUser(I)I
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquireCrypto:I

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public getAcquireForUser(I)I
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquire:I

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public getHALDeathCount()I
    .registers 1

    .line 149
    iget p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mHALDeathCount:I

    return p0
.end method

.method public getPermanentLockoutForUser(I)I
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mPermanentLockout:I

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public getRejectCryptoForUser(I)I
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mRejectCrypto:I

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public getRejectForUser(I)I
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mReject:I

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public getTimedLockoutForUser(I)I
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mTimedLockout:I

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public incrementAcquireForUser(IZ)V
    .registers 3

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    if-eqz p2, :cond_14

    .line 89
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquireCrypto:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquireCrypto:I

    return-void

    .line 91
    :cond_14
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquire:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquire:I

    return-void
.end method

.method public incrementAuthForUser(IZ)V
    .registers 3

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    if-eqz p2, :cond_14

    .line 69
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAccept:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAccept:I

    return-void

    .line 71
    :cond_14
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mReject:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mReject:I

    return-void
.end method

.method public incrementCryptoAuthForUser(IZ)V
    .registers 3

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    if-eqz p2, :cond_14

    .line 79
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcceptCrypto:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcceptCrypto:I

    return-void

    .line 81
    :cond_14
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mRejectCrypto:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mRejectCrypto:I

    return-void
.end method

.method public incrementHALDeathCount()V
    .registers 2

    .line 108
    iget v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mHALDeathCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mHALDeathCount:I

    return-void
.end method

.method public incrementPermanentLockoutForUser(I)V
    .registers 2

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    .line 104
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mPermanentLockout:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mPermanentLockout:I

    return-void
.end method

.method public incrementTimedLockoutForUser(I)V
    .registers 2

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    .line 98
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mTimedLockout:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mTimedLockout:I

    return-void
.end method
