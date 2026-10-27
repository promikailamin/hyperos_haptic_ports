.class public Lcom/android/server/policy/PhoneWindowManager$5;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "PhoneWindowManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 3

    .line 2553
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked(Z)V
    .registers 4

    .line 2565
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mhandleTransitionForKeyguardLw(Lcom/android/server/policy/PhoneWindowManager;ZZ)I

    .line 2569
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmLock(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2570
    :try_start_d
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fputmLockAfterDreamingTransitionFinished(Lcom/android/server/policy/PhoneWindowManager;Z)V

    .line 2571
    monitor-exit p1

    return-void

    :catchall_15
    move-exception p0

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw p0
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .registers 4

    .line 2576
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmLock(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2577
    :try_start_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mgetDreamManagerInternal(Lcom/android/server/policy/PhoneWindowManager;)Landroid/service/dreams/DreamManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 2580
    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmLockAfterDreamingTransitionFinished(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2582
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    goto :goto_26

    :catchall_24
    move-exception p0

    goto :goto_2e

    .line 2584
    :cond_26
    :goto_26
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fputmLockAfterDreamingTransitionFinished(Lcom/android/server/policy/PhoneWindowManager;Z)V

    .line 2585
    monitor-exit p1

    return-void

    :goto_2e
    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_24

    throw p0
.end method

.method public onAppTransitionStartingLocked(JJ)I
    .registers 5

    .line 2557
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 p1, 0x0

    invoke-static {p0, p1, p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mhandleTransitionForKeyguardLw(Lcom/android/server/policy/PhoneWindowManager;ZZ)I

    move-result p0

    return p0
.end method
