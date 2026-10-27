.class public Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "LockSettingsService.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 398
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getStrongAuthForUser(I)I
    .registers 2

    .line 410
    monitor-enter p0

    .line 411
    :try_start_1
    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_7
    move-exception p1

    .line 412
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public handleStrongAuthRequiredChanged(II)V
    .registers 3

    .line 403
    monitor-enter p0

    .line 404
    :try_start_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->handleStrongAuthRequiredChanged(II)V

    .line 405
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public register(Lcom/android/server/locksettings/LockSettingsStrongAuth;)V
    .registers 2

    .line 416
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStub()Landroid/app/trust/IStrongAuthTracker$Stub;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method
