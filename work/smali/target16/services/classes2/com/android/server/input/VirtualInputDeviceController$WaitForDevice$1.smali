.class public Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice$1;
.super Ljava/lang/Object;
.source "VirtualInputDeviceController.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;

.field public final synthetic val$associatedDisplayId:I

.field public final synthetic val$deviceName:Ljava/lang/String;

.field public final synthetic val$phys:Ljava/lang/String;

.field public final synthetic val$productId:I

.field public final synthetic val$this$0:Lcom/android/server/input/VirtualInputDeviceController;

.field public final synthetic val$vendorId:I


# direct methods
.method public constructor <init>(Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;Lcom/android/server/input/VirtualInputDeviceController;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 8

    .line 777
    iput-object p1, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice$1;->this$1:Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;

    iput-object p2, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice$1;->val$this$0:Lcom/android/server/input/VirtualInputDeviceController;

    iput-object p3, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice$1;->val$deviceName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice$1;->val$phys:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice$1;->val$vendorId:I

    iput p6, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice$1;->val$productId:I

    iput p7, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice$1;->val$associatedDisplayId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isMatchingDevice(I)Z
    .registers 6

    .line 796
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice$1;->this$1:Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;

    iget-object v0, v0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;->this$0:Lcom/android/server/input/VirtualInputDeviceController;

    invoke-static {v0}, Lcom/android/server/input/VirtualInputDeviceController;->-$$Nest$fgetmService(Lcom/android/server/input/VirtualInputDeviceController;)Lcom/android/server/input/InputManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerService;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 800
    :cond_10
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice$1;->val$deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    return v1

    .line 803
    :cond_1d
    iget-object v2, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice$1;->val$phys:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice$1;->this$1:Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;

    iget-object v3, v3, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;->this$0:Lcom/android/server/input/VirtualInputDeviceController;

    invoke-static {v3}, Lcom/android/server/input/VirtualInputDeviceController;->-$$Nest$fgetmService(Lcom/android/server/input/VirtualInputDeviceController;)Lcom/android/server/input/InputManagerService;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/input/InputManagerService;->getPhysicalLocationPath(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    return v1

    .line 806
    :cond_32
    invoke-virtual {v0}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object p1

    .line 807
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v2

    iget v3, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice$1;->val$vendorId:I

    if-ne v2, v3, :cond_52

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result p1

    iget v2, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice$1;->val$productId:I

    if-eq p1, v2, :cond_47

    goto :goto_52

    .line 810
    :cond_47
    invoke-virtual {v0}, Landroid/view/InputDevice;->getAssociatedDisplayId()I

    move-result p1

    iget p0, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice$1;->val$associatedDisplayId:I

    if-eq p1, p0, :cond_50

    return v1

    :cond_50
    const/4 p0, 0x1

    return p0

    :cond_52
    :goto_52
    return v1
.end method

.method public onInputDeviceAdded(I)V
    .registers 2

    .line 780
    invoke-virtual {p0, p1}, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice$1;->onInputDeviceChanged(I)V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .registers 3

    .line 789
    invoke-virtual {p0, p1}, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice$1;->isMatchingDevice(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 790
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice$1;->this$1:Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;

    invoke-static {v0, p1}, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;->-$$Nest$fputmInputDeviceId(Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;I)V

    .line 791
    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice$1;->this$1:Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;

    invoke-static {p0}, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;->-$$Nest$fgetmDeviceAddedLatch(Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_14
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 2

    .line 0
    return-void
.end method
