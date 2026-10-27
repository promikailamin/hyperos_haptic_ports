.class public Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$1;
.super Landroid/os/IThermalEventListener$Stub;
.source "DisplayModeDirector.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V
    .registers 2

    .line 1808
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyThrottling(Landroid/os/Temperature;)V
    .registers 4

    .line 1811
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result p1

    .line 1812
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1813
    :try_start_d
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmThermalStatus(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)I

    move-result v1

    if-eq v1, p1, :cond_1d

    .line 1814
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fputmThermalStatus(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;I)V

    goto :goto_1d

    :catchall_1b
    move-exception p0

    goto :goto_24

    .line 1816
    :cond_1d
    :goto_1d
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$mupdateFlickerRefreshRateVotes(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V

    .line 1817
    monitor-exit v0

    return-void

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_1b

    throw p0
.end method
