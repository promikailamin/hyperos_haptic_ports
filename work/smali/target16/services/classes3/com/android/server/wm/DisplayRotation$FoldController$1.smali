.class public Lcom/android/server/wm/DisplayRotation$FoldController$1;
.super Ljava/lang/Object;
.source "DisplayRotation.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/wm/DisplayRotation$FoldController;

.field public final synthetic val$this$0:Lcom/android/server/wm/DisplayRotation;


# direct methods
.method public static synthetic $r8$lambda$C6W7vAoGNpW3vWiUHZ-lRgUXqqU(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 1823
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    return v0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayRotation$FoldController;Lcom/android/server/wm/DisplayRotation;)V
    .registers 3

    .line 1815
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$FoldController$1;->this$1:Lcom/android/server/wm/DisplayRotation$FoldController;

    iput-object p2, p0, Lcom/android/server/wm/DisplayRotation$FoldController$1;->val$this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1817
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController$1;->this$1:Lcom/android/server/wm/DisplayRotation$FoldController;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation$FoldController;->-$$Nest$fgetmDeviceStateEnum(Lcom/android/server/wm/DisplayRotation$FoldController;)Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;->OPEN:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController$1;->this$1:Lcom/android/server/wm/DisplayRotation$FoldController;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation$FoldController;->-$$Nest$fgetmDeviceStateEnum(Lcom/android/server/wm/DisplayRotation$FoldController;)Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    if-ne v0, v1, :cond_15

    goto :goto_16

    :cond_15
    return-void

    .line 1820
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController$1;->this$1:Lcom/android/server/wm/DisplayRotation$FoldController;

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmLock(Lcom/android/server/wm/DisplayRotation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1821
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController$1;->this$1:Lcom/android/server/wm/DisplayRotation$FoldController;

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {p0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    new-instance v1, Lcom/android/server/wm/DisplayRotation$FoldController$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/DisplayRotation$FoldController$1$$ExternalSyntheticLambda0;-><init>()V

    .line 1822
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_3e

    .line 1826
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_3e

    .line 1828
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    goto :goto_3e

    :catchall_3c
    move-exception p0

    goto :goto_40

    .line 1831
    :cond_3e
    :goto_3e
    monitor-exit v0

    return-void

    :goto_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_1f .. :try_end_41} :catchall_3c

    throw p0
.end method
