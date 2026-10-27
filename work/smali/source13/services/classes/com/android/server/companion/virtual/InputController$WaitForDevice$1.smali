.class Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;
.super Ljava/lang/Object;
.source "InputController.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/companion/virtual/InputController$WaitForDevice;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/companion/virtual/InputController$WaitForDevice;

.field final synthetic val$deviceName:Ljava/lang/String;

.field final synthetic val$productId:I

.field final synthetic val$this$0:Lcom/android/server/companion/virtual/InputController;

.field final synthetic val$vendorId:I


# direct methods
.method constructor <init>(Lcom/android/server/companion/virtual/InputController$WaitForDevice;Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;II)V
    .registers 6
    .param p1, "this$1"    # Lcom/android/server/companion/virtual/InputController$WaitForDevice;

    .line 518
    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->this$1:Lcom/android/server/companion/virtual/InputController$WaitForDevice;

    iput-object p2, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$this$0:Lcom/android/server/companion/virtual/InputController;

    iput-object p3, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$deviceName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$vendorId:I

    iput p5, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$productId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .registers 6
    .param p1, "deviceId"    # I

    .line 521
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 523
    .local v0, "device":Landroid/view/InputDevice;
    const-string v1, "Newly added input device was null."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 524
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 525
    return-void

    .line 527
    :cond_1a
    invoke-virtual {v0}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v1

    .line 528
    .local v1, "id":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v2

    iget v3, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$vendorId:I

    if-ne v2, v3, :cond_39

    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v2

    iget v3, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$productId:I

    if-eq v2, v3, :cond_2f

    goto :goto_39

    .line 531
    :cond_2f
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->this$1:Lcom/android/server/companion/virtual/InputController$WaitForDevice;

    invoke-static {v2}, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->-$$Nest$fgetmDeviceAddedLatch(Lcom/android/server/companion/virtual/InputController$WaitForDevice;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 532
    return-void

    .line 529
    :cond_39
    :goto_39
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .registers 2
    .param p1, "deviceId"    # I

    .line 542
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 2
    .param p1, "deviceId"    # I

    .line 537
    return-void
.end method
