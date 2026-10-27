.class public Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SynchronizedStrongAuthTracker"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 332
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    .line 333
    return-void
.end method


# virtual methods
.method public getStrongAuthForUser(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 344
    monitor-enter p0

    .line 345
    :try_start_1
    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    monitor-exit p0

    return v0

    .line 346
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method protected handleStrongAuthRequiredChanged(II)V
    .registers 4
    .param p1, "strongAuthFlags"    # I
    .param p2, "userId"    # I

    .line 337
    monitor-enter p0

    .line 338
    :try_start_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->handleStrongAuthRequiredChanged(II)V

    .line 339
    monitor-exit p0

    .line 340
    return-void

    .line 339
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method register(Lcom/android/server/locksettings/LockSettingsStrongAuth;)V
    .registers 3
    .param p1, "strongAuth"    # Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 350
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->getStub()Landroid/app/trust/IStrongAuthTracker$Stub;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 351
    return-void
.end method
