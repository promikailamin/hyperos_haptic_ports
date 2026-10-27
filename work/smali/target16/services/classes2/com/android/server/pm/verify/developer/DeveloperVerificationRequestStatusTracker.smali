.class public final Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;
.super Ljava/lang/Object;
.source "DeveloperVerificationRequestStatusTracker.java"


# instance fields
.field public final mInjector:Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;

.field public final mMaxTimeoutTime:J

.field public final mStartTime:J

.field public mTimeoutTime:J

.field public final mUserId:I


# direct methods
.method public constructor <init>(JJLcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;I)V
    .registers 9

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p5}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;->getCurrentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->mStartTime:J

    add-long/2addr p1, v0

    .line 49
    iput-wide p1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->mTimeoutTime:J

    add-long/2addr v0, p3

    .line 50
    iput-wide v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->mMaxTimeoutTime:J

    .line 51
    iput-object p5, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->mInjector:Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;

    .line 52
    iput p6, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->mUserId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 104
    instance-of v0, p1, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    check-cast p1, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;

    .line 105
    iget-wide v2, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->mStartTime:J

    iget-wide v4, p1, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->mStartTime:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2d

    iget-wide v2, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->mTimeoutTime:J

    iget-wide v4, p1, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->mTimeoutTime:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2d

    iget-wide v2, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->mMaxTimeoutTime:J

    iget-wide v4, p1, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->mMaxTimeoutTime:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->mInjector:Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;

    iget-object v2, p1, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->mInjector:Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;

    if-ne v0, v2, :cond_2d

    iget p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->mUserId:I

    iget p1, p1, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->mUserId:I

    if-ne p0, p1, :cond_2d

    const/4 p0, 0x1

    return p0

    :cond_2d
    return v1
.end method

.method public extendTimeoutMillis(J)J
    .registers 9

    .line 83
    iget-wide v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->mTimeoutTime:J

    add-long v2, v0, p1

    iget-wide v4, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->mMaxTimeoutTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_c

    sub-long p1, v4, v0

    :cond_c
    add-long/2addr v0, p1

    .line 86
    iput-wide v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->mTimeoutTime:J

    return-wide p1
.end method

.method public getRemainingTime()J
    .registers 5

    .line 69
    iget-wide v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->mTimeoutTime:J

    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->mInjector:Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;->getCurrentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_10

    return-wide v2

    :cond_10
    return-wide v0
.end method

.method public getTimeoutTime()J
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->mTimeoutTime:J

    return-wide v0
.end method

.method public getUserId()I
    .registers 1

    .line 99
    iget p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->mUserId:I

    return p0
.end method

.method public isTimeout()Z
    .registers 5

    .line 95
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->mInjector:Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;->getCurrentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->mTimeoutTime:J

    cmp-long p0, v0, v2

    if-ltz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method
