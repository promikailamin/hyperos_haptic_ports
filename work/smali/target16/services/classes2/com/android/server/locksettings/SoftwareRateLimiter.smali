.class public Lcom/android/server/locksettings/SoftwareRateLimiter;
.super Ljava/lang/Object;
.source "SoftwareRateLimiter.java"


# static fields
.field static final MAX_SAVED_WRONG_GUESSES:I = 0x5

.field static final SAVED_WRONG_GUESS_TIMEOUT:Ljava/time/Duration;

.field public static final TIMEOUT_TABLE:[Ljava/time/Duration;


# instance fields
.field public final mEnforcing:Z

.field public final mInjector:Lcom/android/server/locksettings/SoftwareRateLimiter$Injector;

.field public final mState:Landroid/util/ArrayMap;


# direct methods
.method public static synthetic $r8$lambda$sA59ekXpBo0SPFlDnbNgnSfG71c(Lcom/android/server/locksettings/SoftwareRateLimiter;Lcom/android/server/locksettings/LskfIdentifier;Ljava/time/Duration;Lcom/android/server/locksettings/LskfIdentifier;)Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/SoftwareRateLimiter;->lambda$getOrComputeState$0(Lcom/android/server/locksettings/LskfIdentifier;Ljava/time/Duration;Lcom/android/server/locksettings/LskfIdentifier;)Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$z7n07uUyXV7fgBfIMqy9uq7LpmU(Lcom/android/server/locksettings/SoftwareRateLimiter;Lcom/android/server/locksettings/LskfIdentifier;Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/SoftwareRateLimiter;->lambda$reportFailure$1(Lcom/android/server/locksettings/LskfIdentifier;Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    const-wide/16 v0, 0x5

    .line 84
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v2

    sput-object v2, Lcom/android/server/locksettings/SoftwareRateLimiter;->SAVED_WRONG_GUESS_TIMEOUT:Ljava/time/Duration;

    const/16 v2, 0x14

    .line 90
    new-array v2, v2, [Ljava/time/Duration;

    sget-object v3, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const/4 v4, 0x4

    aput-object v3, v2, v4

    const-wide/16 v3, 0x1

    .line 97
    invoke-static {v3, v4}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    const/4 v3, 0x6

    .line 98
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    aput-object v0, v2, v3

    const-wide/16 v0, 0xf

    .line 99
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, v2, v1

    const-wide/16 v0, 0x1e

    .line 100
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, v2, v1

    const-wide/16 v0, 0x5a

    .line 101
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, v2, v1

    const-wide/16 v0, 0x4

    .line 102
    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v2, v4

    const-wide/16 v3, 0xc

    .line 103
    invoke-static {v3, v4}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v2, v4

    const-wide/16 v3, 0x24

    .line 104
    invoke-static {v3, v4}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v3

    const/16 v4, 0xc

    aput-object v3, v2, v4

    const/16 v3, 0xd

    .line 105
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    aput-object v0, v2, v3

    const-wide/16 v0, 0xd

    .line 106
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, v2, v1

    const-wide/16 v0, 0x29

    .line 107
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, v2, v1

    const-wide/16 v0, 0x7b

    .line 108
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, v2, v1

    const-wide/16 v0, 0x16d

    .line 109
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    const/16 v1, 0x11

    aput-object v0, v2, v1

    const-wide/16 v0, 0x447

    .line 110
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    const/16 v1, 0x12

    aput-object v0, v2, v1

    const-wide/16 v0, 0xcd5

    .line 111
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    const/16 v1, 0x13

    aput-object v0, v2, v1

    sput-object v2, Lcom/android/server/locksettings/SoftwareRateLimiter;->TIMEOUT_TABLE:[Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/locksettings/SoftwareRateLimiter$Injector;Z)V
    .registers 4

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mState:Landroid/util/ArrayMap;

    .line 181
    iput-object p1, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mInjector:Lcom/android/server/locksettings/SoftwareRateLimiter$Injector;

    .line 182
    iput-boolean p2, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mEnforcing:Z

    return-void
.end method

.method public static getStatsCredentialType(Lcom/android/internal/widget/LockscreenCredential;)I
    .registers 2

    .line 477
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPin()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x3

    return p0

    .line 479
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPattern()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x1

    return p0

    .line 483
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isUnifiedProfilePassword()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p0, 0x4

    return p0

    .line 486
    :cond_18
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPassword()Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x2

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public declared-synchronized apply(Lcom/android/server/locksettings/LskfIdentifier;Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/server/locksettings/SoftwareRateLimiterResult;
    .registers 9

    monitor-enter p0

    .line 201
    :try_start_1
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_10

    const/4 v4, 0x3

    if-eq v0, v4, :cond_10

    if-eq v0, v1, :cond_10

    move v1, v2

    .line 208
    :cond_10
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v0

    if-ge v0, v1, :cond_32

    .line 209
    const-string p1, "SoftwareRateLimiter"

    const-string v0, "Credential is too short; size=%d"

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-static {}, Lcom/android/server/locksettings/SoftwareRateLimiterResult;->credentialTooShort()Lcom/android/server/locksettings/SoftwareRateLimiterResult;

    move-result-object p1
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return-object p1

    :catchall_2f
    move-exception p1

    goto/16 :goto_d1

    .line 213
    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mInjector:Lcom/android/server/locksettings/SoftwareRateLimiter$Injector;

    invoke-interface {v0}, Lcom/android/server/locksettings/SoftwareRateLimiter$Injector;->getTimeSinceBoot()Ljava/time/Duration;

    move-result-object v0

    .line 214
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/SoftwareRateLimiter;->getOrComputeState(Lcom/android/server/locksettings/LskfIdentifier;Ljava/time/Duration;)Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;

    move-result-object v1

    .line 215
    iget v4, v1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->statsCredentialType:I

    if-nez v4, :cond_46

    .line 217
    invoke-static {p2}, Lcom/android/server/locksettings/SoftwareRateLimiter;->getStatsCredentialType(Lcom/android/internal/widget/LockscreenCredential;)I

    move-result v4

    iput v4, v1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->statsCredentialType:I

    .line 225
    :cond_46
    iget-boolean v4, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mEnforcing:Z

    if-eqz v4, :cond_68

    iget v4, v1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->numFailures:I

    sget-object v5, Lcom/android/server/locksettings/SoftwareRateLimiter;->TIMEOUT_TABLE:[Ljava/time/Duration;

    array-length v5, v5

    if-ge v4, v5, :cond_53

    if-gez v4, :cond_68

    .line 226
    :cond_53
    const-string p1, "SoftwareRateLimiter"

    const-string p2, "No more guesses allowed; numFailures=%d"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    invoke-static {}, Lcom/android/server/locksettings/SoftwareRateLimiterResult;->noMoreGuesses()Lcom/android/server/locksettings/SoftwareRateLimiterResult;

    move-result-object p1
    :try_end_66
    .catchall {:try_start_32 .. :try_end_66} :catchall_2f

    monitor-exit p0

    return-object p1

    .line 229
    :cond_68
    :try_start_68
    invoke-virtual {p0, v1, v0}, Lcom/android/server/locksettings/SoftwareRateLimiter;->computeRemainingTimeout(Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljava/time/Duration;->isPositive()Z

    move-result v4

    if-eqz v4, :cond_89

    .line 231
    const-string p1, "SoftwareRateLimiter"

    const-string p2, "Rate-limited; numFailures=%d, timeout=%s"

    iget v1, v1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->numFailures:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    invoke-static {v0}, Lcom/android/server/locksettings/SoftwareRateLimiterResult;->rateLimited(Ljava/time/Duration;)Lcom/android/server/locksettings/SoftwareRateLimiterResult;

    move-result-object p1
    :try_end_87
    .catchall {:try_start_68 .. :try_end_87} :catchall_2f

    monitor-exit p0

    return-object p1

    :cond_89
    move v0, v2

    :goto_8a
    const/4 v4, 0x5

    if-ge v0, v4, :cond_cb

    .line 237
    :try_start_8d
    iget-object v4, v1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->savedWrongGuesses:[Lcom/android/internal/widget/LockscreenCredential;

    aget-object v4, v4, v0

    if-eqz v4, :cond_c8

    .line 238
    invoke-virtual {v4, p2}, Lcom/android/internal/widget/LockscreenCredential;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 239
    const-string p2, "SoftwareRateLimiter"

    const-string v5, "Duplicate wrong guess"

    invoke-static {p2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a0
    if-lt v0, v3, :cond_ad

    .line 243
    iget-object p2, v1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->savedWrongGuesses:[Lcom/android/internal/widget/LockscreenCredential;

    add-int/lit8 v5, v0, -0x1

    aget-object v5, p2, v5

    aput-object v5, p2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_a0

    .line 245
    :cond_ad
    iget-object p2, v1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->savedWrongGuesses:[Lcom/android/internal/widget/LockscreenCredential;

    aput-object v4, p2, v2

    .line 246
    iget p2, v1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->numDuplicateWrongGuesses:I

    add-int/2addr p2, v3

    iput p2, v1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->numDuplicateWrongGuesses:I

    .line 247
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/locksettings/SoftwareRateLimiter;->writeStats(Lcom/android/server/locksettings/LskfIdentifier;Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;Z)V

    .line 248
    iget-boolean p1, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mEnforcing:Z

    if-eqz p1, :cond_c2

    .line 249
    invoke-static {}, Lcom/android/server/locksettings/SoftwareRateLimiterResult;->duplicateWrongGuess()Lcom/android/server/locksettings/SoftwareRateLimiterResult;

    move-result-object p1

    goto :goto_c6

    .line 250
    :cond_c2
    invoke-static {}, Lcom/android/server/locksettings/SoftwareRateLimiterResult;->continueToHardware()Lcom/android/server/locksettings/SoftwareRateLimiterResult;

    move-result-object p1
    :try_end_c6
    .catchall {:try_start_8d .. :try_end_c6} :catchall_2f

    .line 248
    :goto_c6
    monitor-exit p0

    return-object p1

    :cond_c8
    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    .line 255
    :cond_cb
    :try_start_cb
    invoke-static {}, Lcom/android/server/locksettings/SoftwareRateLimiterResult;->continueToHardware()Lcom/android/server/locksettings/SoftwareRateLimiterResult;

    move-result-object p1
    :try_end_cf
    .catchall {:try_start_cb .. :try_end_cf} :catchall_2f

    monitor-exit p0

    return-object p1

    :goto_d1
    :try_start_d1
    monitor-exit p0
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_2f

    throw p1
.end method

.method public final clearLockoutEndTime(Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;)V
    .registers 2

    .line 339
    iget-object p0, p1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->lockoutEndTime:Ljava/time/Duration;

    invoke-virtual {p0}, Ljava/time/Duration;->isZero()Z

    move-result p0

    if-nez p0, :cond_c

    .line 340
    sget-object p0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    iput-object p0, p1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->lockoutEndTime:Ljava/time/Duration;

    :cond_c
    return-void
.end method

.method public declared-synchronized clearLskfState(Lcom/android/server/locksettings/LskfIdentifier;)V
    .registers 3

    monitor-enter p0

    .line 540
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_f

    .line 542
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SoftwareRateLimiter;->clearLskfStateAtIndex(I)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    goto :goto_f

    :catchall_d
    move-exception p1

    goto :goto_11

    .line 544
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    :goto_11
    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_d

    throw p1
.end method

.method public final clearLskfStateAtIndex(I)V
    .registers 3

    .line 562
    iget-object v0, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;

    .line 563
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SoftwareRateLimiter;->forgetSavedWrongGuesses(Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;)V

    .line 567
    iget-object p0, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mState:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized clearUserState(I)V
    .registers 4

    monitor-enter p0

    .line 552
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_20

    .line 553
    iget-object v1, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/locksettings/LskfIdentifier;

    .line 554
    iget v1, v1, Lcom/android/server/locksettings/LskfIdentifier;->userId:I

    if-ne v1, p1, :cond_1d

    .line 555
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SoftwareRateLimiter;->clearLskfStateAtIndex(I)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_1d

    :catchall_1b
    move-exception p1

    goto :goto_22

    :cond_1d
    :goto_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 558
    :cond_20
    monitor-exit p0

    return-void

    :goto_22
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1b

    throw p1
.end method

.method public final computeRemainingTimeout(Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;Ljava/time/Duration;)Ljava/time/Duration;
    .registers 3

    .line 282
    iget-object p0, p1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->lockoutEndTime:Ljava/time/Duration;

    invoke-virtual {p0, p2}, Ljava/time/Duration;->minus(Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object p0

    .line 283
    invoke-virtual {p0}, Ljava/time/Duration;->isPositive()Z

    move-result p1

    if-eqz p1, :cond_d

    return-object p0

    :cond_d
    sget-object p0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    return-object p0
.end method

.method public declared-synchronized dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8

    monitor-enter p0

    .line 595
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enforcing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mEnforcing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 596
    :goto_18
    iget-object v1, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_f0

    .line 597
    iget-object v1, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/locksettings/LskfIdentifier;

    .line 598
    const-string/jumbo v2, "userId=%d, protectorId=%016x"

    iget v3, v1, Lcom/android/server/locksettings/LskfIdentifier;->userId:I

    .line 600
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/server/locksettings/LskfIdentifier;->protectorId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 599
    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 598
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 601
    iget-object v1, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;

    .line 602
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "numFailures="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->numFailures:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "numDuplicateWrongGuesses="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->numDuplicateWrongGuesses:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "statsCredentialType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->statsCredentialType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timeSinceBootOfLastFailure="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->timeSinceBootOfLastFailure:Ljava/time/Duration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockoutEndTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->lockoutEndTime:Ljava/time/Duration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 608
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "numSavedWrongGuesses="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->savedWrongGuesses:[Lcom/android/internal/widget/LockscreenCredential;

    .line 610
    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/server/locksettings/SoftwareRateLimiter$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/server/locksettings/SoftwareRateLimiter$$ExternalSyntheticLambda2;-><init>()V

    .line 611
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 612
    invoke-interface {v1}, Ljava/util/stream/Stream;->count()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 608
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_ea
    .catchall {:try_start_1 .. :try_end_ea} :catchall_ee

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_18

    :catchall_ee
    move-exception p1

    goto :goto_f2

    .line 615
    :cond_f0
    monitor-exit p0

    return-void

    :goto_f2
    :try_start_f2
    monitor-exit p0
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_ee

    throw p1
.end method

.method public final evaluateSoftwareRateLimit(Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;Ljava/time/Duration;)V
    .registers 5

    .line 292
    iget v0, p1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->numFailures:I

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SoftwareRateLimiter;->getOriginalTimeout(I)Ljava/time/Duration;

    move-result-object v0

    .line 293
    iget-object v1, p1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->timeSinceBootOfLastFailure:Ljava/time/Duration;

    .line 294
    invoke-virtual {v1, v0}, Ljava/time/Duration;->plus(Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object v0

    .line 295
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/locksettings/SoftwareRateLimiter;->updateLockoutEndTime(Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;Ljava/time/Duration;Ljava/time/Duration;)V

    return-void
.end method

.method public final forgetSavedWrongGuesses(Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;)V
    .registers 3

    .line 520
    iget-object v0, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mInjector:Lcom/android/server/locksettings/SoftwareRateLimiter$Injector;

    invoke-interface {v0, p1}, Lcom/android/server/locksettings/SoftwareRateLimiter$Injector;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 521
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SoftwareRateLimiter;->forgetSavedWrongGuessesNoCancel(Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;)V

    return-void
.end method

.method public final forgetSavedWrongGuessesNoCancel(Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;)V
    .registers 4

    const/4 p0, 0x0

    :goto_1
    const/4 v0, 0x5

    if-ge p0, v0, :cond_15

    .line 527
    iget-object v0, p1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->savedWrongGuesses:[Lcom/android/internal/widget/LockscreenCredential;

    aget-object v0, v0, p0

    if-eqz v0, :cond_12

    .line 528
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 529
    iget-object v0, p1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->savedWrongGuesses:[Lcom/android/internal/widget/LockscreenCredential;

    const/4 v1, 0x0

    aput-object v1, v0, p0

    :cond_12
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method public final getExistingState(Lcom/android/server/locksettings/LskfIdentifier;)Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;
    .registers 2

    .line 507
    iget-object p0, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mState:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;

    if-eqz p0, :cond_b

    return-object p0

    .line 513
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not find RateLimiterState"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized getLockoutEndTime(Lcom/android/server/locksettings/LskfIdentifier;)Ljava/time/Duration;
    .registers 5

    monitor-enter p0

    .line 304
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mInjector:Lcom/android/server/locksettings/SoftwareRateLimiter$Injector;

    invoke-interface {v0}, Lcom/android/server/locksettings/SoftwareRateLimiter$Injector;->getTimeSinceBoot()Ljava/time/Duration;

    move-result-object v0

    .line 305
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/SoftwareRateLimiter;->getOrComputeState(Lcom/android/server/locksettings/LskfIdentifier;Ljava/time/Duration;)Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;

    move-result-object p1

    .line 306
    iget-object v1, p1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->lockoutEndTime:Ljava/time/Duration;

    .line 309
    invoke-virtual {v1}, Ljava/time/Duration;->isZero()Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual {v1, v0}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v0

    if-gez v0, :cond_22

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SoftwareRateLimiter;->clearLockoutEndTime(Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;)V

    .line 311
    sget-object p1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object p1

    :catchall_20
    move-exception p1

    goto :goto_24

    .line 313
    :cond_22
    monitor-exit p0

    return-object v1

    :goto_24
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_20

    throw p1
.end method

.method public final getOrComputeState(Lcom/android/server/locksettings/LskfIdentifier;Ljava/time/Duration;)Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;
    .registers 5

    .line 260
    iget-object v0, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mState:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/locksettings/SoftwareRateLimiter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/locksettings/SoftwareRateLimiter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/SoftwareRateLimiter;Lcom/android/server/locksettings/LskfIdentifier;Ljava/time/Duration;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;

    return-object p0
.end method

.method public final getOriginalTimeout(I)Ljava/time/Duration;
    .registers 3

    .line 465
    iget-boolean p0, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mEnforcing:Z

    if-nez p0, :cond_7

    .line 466
    sget-object p0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    return-object p0

    .line 468
    :cond_7
    sget-object p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->TIMEOUT_TABLE:[Ljava/time/Duration;

    array-length v0, p0

    if-ge p1, v0, :cond_12

    if-gez p1, :cond_f

    goto :goto_12

    .line 473
    :cond_f
    aget-object p0, p0, p1

    return-object p0

    .line 471
    :cond_12
    :goto_12
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getTimeoutTable()[Ljava/time/Duration;
    .registers 1

    .line 591
    sget-object p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->TIMEOUT_TABLE:[Ljava/time/Duration;

    return-object p0
.end method

.method public final insertNewWrongGuess(Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;Lcom/android/internal/widget/LockscreenCredential;)V
    .registers 5

    .line 370
    iget-object p0, p1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->savedWrongGuesses:[Lcom/android/internal/widget/LockscreenCredential;

    const/4 v0, 0x4

    aget-object p0, p0, v0

    if-eqz p0, :cond_a

    .line 371
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_a
    :goto_a
    const/4 p0, 0x1

    if-lt v0, p0, :cond_18

    .line 374
    iget-object p0, p1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->savedWrongGuesses:[Lcom/android/internal/widget/LockscreenCredential;

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p0, v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 379
    :cond_18
    iget-object p0, p1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->savedWrongGuesses:[Lcom/android/internal/widget/LockscreenCredential;

    const/4 p1, 0x0

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->duplicate()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p2

    aput-object p2, p0, p1

    return-void
.end method

.method public final synthetic lambda$getOrComputeState$0(Lcom/android/server/locksettings/LskfIdentifier;Ljava/time/Duration;Lcom/android/server/locksettings/LskfIdentifier;)Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;
    .registers 4

    .line 274
    new-instance p3, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SoftwareRateLimiter;->readFailureCounter(Lcom/android/server/locksettings/LskfIdentifier;)I

    move-result p1

    invoke-direct {p3, p1}, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;-><init>(I)V

    .line 275
    invoke-virtual {p0, p3, p2}, Lcom/android/server/locksettings/SoftwareRateLimiter;->evaluateSoftwareRateLimit(Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;Ljava/time/Duration;)V

    return-object p3
.end method

.method public final synthetic lambda$reportFailure$1(Lcom/android/server/locksettings/LskfIdentifier;Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;)V
    .registers 8

    .line 448
    const-string v0, "SoftwareRateLimiter"

    const-string v1, "Forgetting wrong LSKF guesses for user %d, protector %016x"

    iget v2, p1, Lcom/android/server/locksettings/LskfIdentifier;->userId:I

    .line 451
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/server/locksettings/LskfIdentifier;->protectorId:J

    .line 452
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 448
    invoke-static {v0, v1, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    monitor-enter p0

    .line 454
    :try_start_18
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/SoftwareRateLimiter;->forgetSavedWrongGuessesNoCancel(Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;)V

    .line 455
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public final readFailureCounter(Lcom/android/server/locksettings/LskfIdentifier;)I
    .registers 3

    .line 571
    invoke-virtual {p1}, Lcom/android/server/locksettings/LskfIdentifier;->isSpecialCredential()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 576
    :cond_8
    iget-object p0, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mInjector:Lcom/android/server/locksettings/SoftwareRateLimiter$Injector;

    invoke-interface {p0, p1}, Lcom/android/server/locksettings/SoftwareRateLimiter$Injector;->readFailureCounter(Lcom/android/server/locksettings/LskfIdentifier;)I

    move-result p0

    return p0
.end method

.method public declared-synchronized reportFailure(Lcom/android/server/locksettings/LskfIdentifier;Lcom/android/internal/widget/LockscreenCredential;ZLjava/time/Duration;)Ljava/time/Duration;
    .registers 8

    monitor-enter p0

    .line 402
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SoftwareRateLimiter;->getExistingState(Lcom/android/server/locksettings/LskfIdentifier;)Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;

    move-result-object p4

    .line 404
    iget-object v0, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mInjector:Lcom/android/server/locksettings/SoftwareRateLimiter$Injector;

    invoke-interface {v0}, Lcom/android/server/locksettings/SoftwareRateLimiter$Injector;->getTimeSinceBoot()Ljava/time/Duration;

    move-result-object v0

    .line 413
    iget-boolean v1, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mEnforcing:Z

    if-nez v1, :cond_1d

    iget-object v1, p4, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->savedWrongGuesses:[Lcom/android/internal/widget/LockscreenCredential;

    invoke-static {v1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 416
    sget-object p1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 414
    monitor-exit p0

    return-object p1

    :catchall_1b
    move-exception p1

    goto :goto_4f

    .line 427
    :cond_1d
    :try_start_1d
    iget v1, p4, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->numFailures:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p4, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->numFailures:I

    .line 428
    iput-object v0, p4, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->timeSinceBootOfLastFailure:Ljava/time/Duration;

    .line 430
    invoke-virtual {p0, p4, v0}, Lcom/android/server/locksettings/SoftwareRateLimiter;->evaluateSoftwareRateLimit(Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;Ljava/time/Duration;)V

    .line 435
    invoke-virtual {p0, p1, p4}, Lcom/android/server/locksettings/SoftwareRateLimiter;->writeFailureCounter(Lcom/android/server/locksettings/LskfIdentifier;Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;)V

    const/4 v1, 0x0

    .line 437
    invoke-virtual {p0, p1, p4, v1}, Lcom/android/server/locksettings/SoftwareRateLimiter;->writeStats(Lcom/android/server/locksettings/LskfIdentifier;Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;Z)V

    if-eqz p3, :cond_49

    .line 441
    invoke-virtual {p0, p4, p2}, Lcom/android/server/locksettings/SoftwareRateLimiter;->insertNewWrongGuess(Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;Lcom/android/internal/widget/LockscreenCredential;)V

    .line 445
    iget-object p2, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mInjector:Lcom/android/server/locksettings/SoftwareRateLimiter$Injector;

    invoke-interface {p2, p4}, Lcom/android/server/locksettings/SoftwareRateLimiter$Injector;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 446
    iget-object p2, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mInjector:Lcom/android/server/locksettings/SoftwareRateLimiter$Injector;

    new-instance p3, Lcom/android/server/locksettings/SoftwareRateLimiter$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1, p4}, Lcom/android/server/locksettings/SoftwareRateLimiter$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/locksettings/SoftwareRateLimiter;Lcom/android/server/locksettings/LskfIdentifier;Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;)V

    sget-object p1, Lcom/android/server/locksettings/SoftwareRateLimiter;->SAVED_WRONG_GUESS_TIMEOUT:Ljava/time/Duration;

    .line 458
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    .line 446
    invoke-interface {p2, p3, p4, v1, v2}, Lcom/android/server/locksettings/SoftwareRateLimiter$Injector;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)V

    .line 461
    :cond_49
    invoke-virtual {p0, p4, v0}, Lcom/android/server/locksettings/SoftwareRateLimiter;->computeRemainingTimeout(Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object p1
    :try_end_4d
    .catchall {:try_start_1d .. :try_end_4d} :catchall_1b

    monitor-exit p0

    return-object p1

    :goto_4f
    :try_start_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_1b

    throw p1
.end method

.method public declared-synchronized reportSuccess(Lcom/android/server/locksettings/LskfIdentifier;)V
    .registers 4

    monitor-enter p0

    .line 352
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SoftwareRateLimiter;->getExistingState(Lcom/android/server/locksettings/LskfIdentifier;)Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;

    move-result-object v0

    const/4 v1, 0x1

    .line 353
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/locksettings/SoftwareRateLimiter;->writeStats(Lcom/android/server/locksettings/LskfIdentifier;Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;Z)V

    .line 357
    iget v1, v0, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->numFailures:I

    if-eqz v1, :cond_1e

    const/4 v1, 0x0

    .line 358
    iput v1, v0, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->numFailures:I

    .line 359
    iput v1, v0, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->numDuplicateWrongGuesses:I

    .line 360
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/SoftwareRateLimiter;->writeFailureCounter(Lcom/android/server/locksettings/LskfIdentifier;Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;)V

    .line 361
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SoftwareRateLimiter;->forgetSavedWrongGuesses(Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;)V

    .line 362
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SoftwareRateLimiter;->clearLockoutEndTime(Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1c

    goto :goto_1e

    :catchall_1c
    move-exception p1

    goto :goto_20

    .line 364
    :cond_1e
    :goto_1e
    monitor-exit p0

    return-void

    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1c

    throw p1
.end method

.method public final updateLockoutEndTime(Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;Ljava/time/Duration;Ljava/time/Duration;)V
    .registers 4

    .line 323
    iget-object p0, p1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->lockoutEndTime:Ljava/time/Duration;

    invoke-virtual {p0, p3}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result p0

    if-lez p0, :cond_a

    .line 324
    iget-object p3, p1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->lockoutEndTime:Ljava/time/Duration;

    .line 326
    :cond_a
    invoke-virtual {p2, p3}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result p0

    if-ltz p0, :cond_12

    .line 327
    sget-object p3, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    .line 329
    :cond_12
    iget-object p0, p1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->lockoutEndTime:Ljava/time/Duration;

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    .line 330
    iput-object p3, p1, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->lockoutEndTime:Ljava/time/Duration;

    :cond_1c
    return-void
.end method

.method public final writeFailureCounter(Lcom/android/server/locksettings/LskfIdentifier;Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;)V
    .registers 4

    .line 580
    invoke-virtual {p1}, Lcom/android/server/locksettings/LskfIdentifier;->isSpecialCredential()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 585
    :cond_7
    iget-object p0, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mInjector:Lcom/android/server/locksettings/SoftwareRateLimiter$Injector;

    iget p2, p2, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->numFailures:I

    invoke-interface {p0, p1, p2}, Lcom/android/server/locksettings/SoftwareRateLimiter$Injector;->writeFailureCounter(Lcom/android/server/locksettings/LskfIdentifier;I)V

    return-void
.end method

.method public final writeStats(Lcom/android/server/locksettings/LskfIdentifier;Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;Z)V
    .registers 11

    .line 495
    iget v2, p2, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->numFailures:I

    iget v3, p2, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->numDuplicateWrongGuesses:I

    iget v4, p2, Lcom/android/server/locksettings/SoftwareRateLimiter$RateLimiterState;->statsCredentialType:I

    iget-boolean v5, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mEnforcing:Z

    iget-object p0, p0, Lcom/android/server/locksettings/SoftwareRateLimiter;->mInjector:Lcom/android/server/locksettings/SoftwareRateLimiter$Injector;

    .line 502
    invoke-interface {p0, p1}, Lcom/android/server/locksettings/SoftwareRateLimiter$Injector;->getHardwareRateLimiter(Lcom/android/server/locksettings/LskfIdentifier;)I

    move-result v6

    const/16 v0, 0x44b

    move v1, p3

    .line 495
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZIIIZI)V

    return-void
.end method
