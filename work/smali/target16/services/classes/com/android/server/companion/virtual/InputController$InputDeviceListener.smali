.class public Lcom/android/server/companion/virtual/InputController$InputDeviceListener;
.super Ljava/lang/Object;
.source "InputController.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/virtual/InputController;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/InputController;)V
    .registers 2

    .line 208
    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceListener;->this$0:Lcom/android/server/companion/virtual/InputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/InputController;Lcom/android/server/companion/virtual/InputController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/companion/virtual/InputController$InputDeviceListener;-><init>(Lcom/android/server/companion/virtual/InputController;)V

    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 4

    .line 218
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceListener;->this$0:Lcom/android/server/companion/virtual/InputController;

    invoke-static {v0}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$fgetmLock(Lcom/android/server/companion/virtual/InputController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 219
    :try_start_7
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceListener;->this$0:Lcom/android/server/companion/virtual/InputController;

    invoke-static {v1, p1}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$mgetTokenForInputDeviceIdLocked(Lcom/android/server/companion/virtual/InputController;I)Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 221
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceListener;->this$0:Lcom/android/server/companion/virtual/InputController;

    invoke-static {p0}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$fgetmInputDevices(Lcom/android/server/companion/virtual/InputController;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :catchall_19
    move-exception p0

    goto :goto_1d

    .line 223
    :cond_1b
    :goto_1b
    monitor-exit v0

    return-void

    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_19

    throw p0
.end method
