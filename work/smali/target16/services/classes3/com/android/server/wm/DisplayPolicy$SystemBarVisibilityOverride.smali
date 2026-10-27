.class public Lcom/android/server/wm/DisplayPolicy$SystemBarVisibilityOverride;
.super Ljava/lang/Object;
.source "DisplayPolicy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCaller:Landroid/os/IBinder;

.field public mForciblyHidingInsetsTypes:I

.field public mForciblyShowingInsetsTypes:I

.field public final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayPolicy;Landroid/os/IBinder;)V
    .registers 3

    .line 2481
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$SystemBarVisibilityOverride;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2482
    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy$SystemBarVisibilityOverride;->mCaller:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 2507
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$SystemBarVisibilityOverride;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmService(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2508
    :try_start_c
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$SystemBarVisibilityOverride;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$SystemBarVisibilityOverride;->mCaller:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v2}, Lcom/android/server/wm/DisplayPolicy;->setSystemBarVisibilityOverride(Landroid/os/IBinder;II)V

    .line 2512
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_19
    move-exception p0

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getForciblyHidingInsetsTypes()I
    .registers 1

    .line 2502
    iget p0, p0, Lcom/android/server/wm/DisplayPolicy$SystemBarVisibilityOverride;->mForciblyHidingInsetsTypes:I

    return p0
.end method

.method public getForciblyShowingInsetsTypes()I
    .registers 1

    .line 2498
    iget p0, p0, Lcom/android/server/wm/DisplayPolicy$SystemBarVisibilityOverride;->mForciblyShowingInsetsTypes:I

    return p0
.end method

.method public set(II)Z
    .registers 4

    .line 2488
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy$SystemBarVisibilityOverride;->mForciblyShowingInsetsTypes:I

    if-ne v0, p1, :cond_b

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy$SystemBarVisibilityOverride;->mForciblyHidingInsetsTypes:I

    if-eq v0, p2, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    .line 2490
    :cond_b
    :goto_b
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy$SystemBarVisibilityOverride;->mForciblyShowingInsetsTypes:I

    .line 2491
    iput p2, p0, Lcom/android/server/wm/DisplayPolicy$SystemBarVisibilityOverride;->mForciblyHidingInsetsTypes:I

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemBarVisibilityOverride{@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$SystemBarVisibilityOverride;->mCaller:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " show:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy$SystemBarVisibilityOverride;->mForciblyShowingInsetsTypes:I

    .line 2518
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] hide: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/DisplayPolicy$SystemBarVisibilityOverride;->mForciblyHidingInsetsTypes:I

    .line 2519
    invoke-static {p0}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
