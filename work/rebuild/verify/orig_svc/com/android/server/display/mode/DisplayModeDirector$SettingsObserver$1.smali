.class public Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;)V
    .registers 2

    .line 974
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    .line 977
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 978
    :try_start_9
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->-$$Nest$mupdateLowPowerModeAllowedModesLocked(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;)V

    .line 979
    monitor-exit p1

    return-void

    :catchall_10
    move-exception p0

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public onDisplayChanged(I)V
    .registers 2

    .line 990
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 991
    :try_start_9
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->-$$Nest$mupdateLowPowerModeAllowedModesLocked(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;)V

    .line 992
    monitor-exit p1

    return-void

    :catchall_10
    move-exception p0

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public onDisplayRemoved(I)V
    .registers 4

    .line 984
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object p0

    const/16 v0, 0x12

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void
.end method
