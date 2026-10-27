.class public Lcom/android/server/inputmethod/InputMethodManagerService$4;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final synthetic val$im:Landroid/hardware/input/InputManager;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/hardware/input/InputManager;)V
    .registers 3

    .line 4482
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->val$im:Landroid/hardware/input/InputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(I)V
    .registers 3

    .line 4510
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4511
    :try_start_3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$maddStylusDeviceIdLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)V

    .line 4512
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public onInputDeviceAdded(I)V
    .registers 3

    .line 4485
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->val$im:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 4486
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$smisStylusDevice(Landroid/view/InputDevice;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4487
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$4;->add(I)V

    :cond_11
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .registers 3

    .line 4498
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->val$im:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 4502
    :cond_9
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$smisStylusDevice(Landroid/view/InputDevice;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4503
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$4;->add(I)V

    return-void

    .line 4505
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$4;->remove(I)V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 2

    .line 4493
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$4;->remove(I)V

    return-void
.end method

.method public final remove(I)V
    .registers 3

    .line 4516
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4517
    :try_start_3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mremoveStylusDeviceIdLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)V

    .line 4518
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
