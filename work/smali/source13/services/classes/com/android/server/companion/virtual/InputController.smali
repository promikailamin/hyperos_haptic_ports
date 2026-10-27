.class Lcom/android/server/companion/virtual/InputController;
.super Ljava/lang/Object;
.source "InputController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;,
        Lcom/android/server/companion/virtual/InputController$DeviceCreationException;,
        Lcom/android/server/companion/virtual/InputController$WaitForDevice;,
        Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;,
        Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;,
        Lcom/android/server/companion/virtual/InputController$NativeWrapper;,
        Lcom/android/server/companion/virtual/InputController$PhysType;
    }
.end annotation


# static fields
.field static final PHYS_TYPE_KEYBOARD:Ljava/lang/String; = "Keyboard"

.field static final PHYS_TYPE_MOUSE:Ljava/lang/String; = "Mouse"

.field static final PHYS_TYPE_TOUCHSCREEN:Ljava/lang/String; = "Touchscreen"

.field private static final TAG:Ljava/lang/String; = "VirtualInputController"

.field private static final sNextPhysId:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mHandler:Landroid/os/Handler;

.field final mInputDeviceDescriptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field private final mLock:Ljava/lang/Object;

.field private final mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

.field private final mThreadVerifier:Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/companion/virtual/InputController;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smnativeCloseUinput(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/companion/virtual/InputController;->nativeCloseUinput(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeOpenUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeOpenUinputMouse(Ljava/lang/String;IILjava/lang/String;)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputMouse(Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeOpenUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)I
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeWriteButtonEvent(III)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->nativeWriteButtonEvent(III)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeWriteKeyEvent(III)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->nativeWriteKeyEvent(III)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeWriteRelativeEvent(IFF)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->nativeWriteRelativeEvent(IFF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeWriteScrollEvent(IFF)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->nativeWriteScrollEvent(IFF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeWriteTouchEvent(IIIIFFFF)Z
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/android/server/companion/virtual/InputController;->nativeWriteTouchEvent(IIIIFFFF)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/server/companion/virtual/InputController;->sNextPhysId:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroid/os/Handler;Landroid/view/WindowManager;)V
    .registers 10
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "windowManager"    # Landroid/view/WindowManager;

    .line 92
    new-instance v2, Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-direct {v2}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;-><init>()V

    new-instance v5, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda0;

    invoke-direct {v5, p2}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/virtual/InputController;-><init>(Ljava/lang/Object;Lcom/android/server/companion/virtual/InputController$NativeWrapper;Landroid/os/Handler;Landroid/view/WindowManager;Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;)V

    .line 95
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lcom/android/server/companion/virtual/InputController$NativeWrapper;Landroid/os/Handler;Landroid/view/WindowManager;Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;)V
    .registers 7
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "nativeWrapper"    # Lcom/android/server/companion/virtual/InputController$NativeWrapper;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "windowManager"    # Landroid/view/WindowManager;
    .param p5, "threadVerifier"    # Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Ljava/util/Map;

    .line 101
    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    .line 102
    iput-object p3, p0, Lcom/android/server/companion/virtual/InputController;->mHandler:Landroid/os/Handler;

    .line 103
    iput-object p2, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    .line 104
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 105
    const-class v0, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    iput-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 106
    iput-object p4, p0, Lcom/android/server/companion/virtual/InputController;->mWindowManager:Landroid/view/WindowManager;

    .line 107
    iput-object p5, p0, Lcom/android/server/companion/virtual/InputController;->mThreadVerifier:Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;

    .line 108
    return-void
.end method

.method private closeInputDeviceDescriptorLocked(Landroid/os/IBinder;Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "inputDeviceDescriptor"    # Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 190
    invoke-virtual {p2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 191
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {p2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getFileDescriptor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->closeUinput(I)Z

    .line 192
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getPhys()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->removeUniqueIdAssociation(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->isMouse()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 198
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/input/InputManagerInternal;->getVirtualMousePointerDisplayId()I

    move-result v0

    .line 199
    invoke-virtual {p2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getDisplayId()I

    move-result v1

    if-ne v0, v1, :cond_31

    .line 200
    invoke-direct {p0}, Lcom/android/server/companion/virtual/InputController;->updateActivePointerDisplayIdLocked()V

    .line 203
    :cond_31
    return-void
.end method

.method private createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    .registers 26
    .param p1, "type"    # I
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "vendorId"    # I
    .param p4, "productId"    # I
    .param p5, "deviceToken"    # Landroid/os/IBinder;
    .param p6, "displayId"    # I
    .param p7, "phys"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Landroid/os/IBinder;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
        }
    .end annotation

    .line 593
    .local p8, "deviceOpener":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v9, p7

    iget-object v0, v1, Lcom/android/server/companion/virtual/InputController;->mThreadVerifier:Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;

    invoke-interface {v0}, Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;->isValidThread()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 602
    move/from16 v10, p6

    invoke-direct {v1, v10, v9}, Lcom/android/server/companion/virtual/InputController;->setUniqueIdAssociation(ILjava/lang/String;)V

    .line 603
    :try_start_13
    new-instance v0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;
    :try_end_15
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_13 .. :try_end_15} :catch_9c

    move-object/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    :try_start_1b
    invoke-direct {v0, v1, v11, v12, v13}, Lcom/android/server/companion/virtual/InputController$WaitForDevice;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;II)V
    :try_end_1e
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_1b .. :try_end_1e} :catch_9a

    move-object v3, v0

    .line 604
    .local v3, "waiter":Lcom/android/server/companion/virtual/InputController$WaitForDevice;
    :try_start_1f
    invoke-interface/range {p8 .. p8}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_8e

    move v14, v0

    .line 605
    .local v14, "fd":I
    if-ltz v14, :cond_74

    .line 611
    :try_start_2c
    invoke-virtual {v3}, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->waitForDeviceCreation()V

    .line 613
    new-instance v0, Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;

    invoke-direct {v0, v1, v2}, Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;-><init>(Lcom/android/server/companion/virtual/InputController;Landroid/os/IBinder;)V
    :try_end_34
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_2c .. :try_end_34} :catch_6c
    .catchall {:try_start_2c .. :try_end_34} :catchall_8e

    move-object v15, v0

    .line 615
    .local v15, "binderDeathRecipient":Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;
    const/4 v0, 0x0

    :try_start_36
    invoke-interface {v2, v15, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_39} :catch_61
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_36 .. :try_end_39} :catch_6c
    .catchall {:try_start_36 .. :try_end_39} :catchall_8e

    .line 619
    nop

    .line 623
    nop

    .line 624
    :try_start_3b
    invoke-virtual {v3}, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->close()V
    :try_end_3e
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_3b .. :try_end_3e} :catch_9a

    .line 627
    .end local v3    # "waiter":Lcom/android/server/companion/virtual/InputController$WaitForDevice;
    nop

    .line 629
    iget-object v8, v1, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 630
    :try_start_42
    iget-object v0, v1, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Ljava/util/Map;

    new-instance v7, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_5a

    move-object v3, v7

    move v4, v14

    move-object v5, v15

    move/from16 v6, p1

    move-object v10, v7

    move/from16 v7, p6

    move-object/from16 v16, v8

    move-object/from16 v8, p7

    :try_start_52
    invoke-direct/range {v3 .. v8}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;-><init>(ILandroid/os/IBinder$DeathRecipient;IILjava/lang/String;)V

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    monitor-exit v16

    .line 633
    return-void

    .line 632
    :catchall_5a
    move-exception v0

    move-object/from16 v16, v8

    :goto_5d
    monitor-exit v16
    :try_end_5e
    .catchall {:try_start_52 .. :try_end_5e} :catchall_5f

    throw v0

    :catchall_5f
    move-exception v0

    goto :goto_5d

    .line 616
    .restart local v3    # "waiter":Lcom/android/server/companion/virtual/InputController$WaitForDevice;
    :catch_61
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 617
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_64
    new-instance v4, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;

    const-string v5, "Client died before virtual device could be created."

    invoke-direct {v4, v5, v0}, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v3    # "waiter":Lcom/android/server/companion/virtual/InputController$WaitForDevice;
    .end local v14    # "fd":I
    .end local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .end local p1    # "type":I
    .end local p2    # "deviceName":Ljava/lang/String;
    .end local p3    # "vendorId":I
    .end local p4    # "productId":I
    .end local p5    # "deviceToken":Landroid/os/IBinder;
    .end local p6    # "displayId":I
    .end local p7    # "phys":Ljava/lang/String;
    .end local p8    # "deviceOpener":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    throw v4
    :try_end_6c
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_64 .. :try_end_6c} :catch_6c
    .catchall {:try_start_64 .. :try_end_6c} :catchall_8e

    .line 620
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v15    # "binderDeathRecipient":Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;
    .restart local v3    # "waiter":Lcom/android/server/companion/virtual/InputController$WaitForDevice;
    .restart local v14    # "fd":I
    .restart local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .restart local p1    # "type":I
    .restart local p2    # "deviceName":Ljava/lang/String;
    .restart local p3    # "vendorId":I
    .restart local p4    # "productId":I
    .restart local p5    # "deviceToken":Landroid/os/IBinder;
    .restart local p6    # "displayId":I
    .restart local p7    # "phys":Ljava/lang/String;
    .restart local p8    # "deviceOpener":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    :catch_6c
    move-exception v0

    .line 621
    .local v0, "e":Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
    :try_start_6d
    iget-object v4, v1, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {v4, v14}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->closeUinput(I)Z

    .line 622
    nop

    .end local v3    # "waiter":Lcom/android/server/companion/virtual/InputController$WaitForDevice;
    .end local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .end local p1    # "type":I
    .end local p2    # "deviceName":Ljava/lang/String;
    .end local p3    # "vendorId":I
    .end local p4    # "productId":I
    .end local p5    # "deviceToken":Landroid/os/IBinder;
    .end local p6    # "displayId":I
    .end local p7    # "phys":Ljava/lang/String;
    .end local p8    # "deviceOpener":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    throw v0

    .line 606
    .end local v0    # "e":Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
    .restart local v3    # "waiter":Lcom/android/server/companion/virtual/InputController$WaitForDevice;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .restart local p1    # "type":I
    .restart local p2    # "deviceName":Ljava/lang/String;
    .restart local p3    # "vendorId":I
    .restart local p4    # "productId":I
    .restart local p5    # "deviceToken":Landroid/os/IBinder;
    .restart local p6    # "displayId":I
    .restart local p7    # "phys":Ljava/lang/String;
    .restart local p8    # "deviceOpener":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    :cond_74
    new-instance v0, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A native error occurred when creating touchscreen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    neg-int v5, v14

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;-><init>(Ljava/lang/String;)V

    .end local v3    # "waiter":Lcom/android/server/companion/virtual/InputController$WaitForDevice;
    .end local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .end local p1    # "type":I
    .end local p2    # "deviceName":Ljava/lang/String;
    .end local p3    # "vendorId":I
    .end local p4    # "productId":I
    .end local p5    # "deviceToken":Landroid/os/IBinder;
    .end local p6    # "displayId":I
    .end local p7    # "phys":Ljava/lang/String;
    .end local p8    # "deviceOpener":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    throw v0
    :try_end_8e
    .catchall {:try_start_6d .. :try_end_8e} :catchall_8e

    .line 603
    .end local v14    # "fd":I
    .restart local v3    # "waiter":Lcom/android/server/companion/virtual/InputController$WaitForDevice;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .restart local p1    # "type":I
    .restart local p2    # "deviceName":Ljava/lang/String;
    .restart local p3    # "vendorId":I
    .restart local p4    # "productId":I
    .restart local p5    # "deviceToken":Landroid/os/IBinder;
    .restart local p6    # "displayId":I
    .restart local p7    # "phys":Ljava/lang/String;
    .restart local p8    # "deviceOpener":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    :catchall_8e
    move-exception v0

    move-object v4, v0

    :try_start_90
    invoke-virtual {v3}, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->close()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_94

    goto :goto_99

    :catchall_94
    move-exception v0

    move-object v5, v0

    :try_start_96
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .end local p1    # "type":I
    .end local p2    # "deviceName":Ljava/lang/String;
    .end local p3    # "vendorId":I
    .end local p4    # "productId":I
    .end local p5    # "deviceToken":Landroid/os/IBinder;
    .end local p6    # "displayId":I
    .end local p7    # "phys":Ljava/lang/String;
    .end local p8    # "deviceOpener":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    :goto_99
    throw v4
    :try_end_9a
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_96 .. :try_end_9a} :catch_9a

    .line 624
    .end local v3    # "waiter":Lcom/android/server/companion/virtual/InputController$WaitForDevice;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .restart local p1    # "type":I
    .restart local p2    # "deviceName":Ljava/lang/String;
    .restart local p3    # "vendorId":I
    .restart local p4    # "productId":I
    .restart local p5    # "deviceToken":Landroid/os/IBinder;
    .restart local p6    # "displayId":I
    .restart local p7    # "phys":Ljava/lang/String;
    .restart local p8    # "deviceOpener":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    :catch_9a
    move-exception v0

    goto :goto_a3

    :catch_9c
    move-exception v0

    move-object/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    .line 625
    .restart local v0    # "e":Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
    :goto_a3
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/hardware/input/InputManager;->removeUniqueIdAssociation(Ljava/lang/String;)V

    .line 626
    throw v0

    .line 594
    .end local v0    # "e":Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
    :cond_ab
    move-object/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Virtual device creation should happen on an auxiliary thread (e.g. binder thread) and not from the handler\'s thread."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createPhys(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "type"    # Ljava/lang/String;

    .line 248
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    sget-object v1, Lcom/android/server/companion/virtual/InputController;->sNextPhysId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "virtual%s:%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$0(Landroid/os/Handler;)Z
    .registers 2
    .param p0, "handler"    # Landroid/os/Handler;

    .line 94
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static native nativeCloseUinput(I)Z
.end method

.method private static native nativeOpenUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)I
.end method

.method private static native nativeOpenUinputMouse(Ljava/lang/String;IILjava/lang/String;)I
.end method

.method private static native nativeOpenUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)I
.end method

.method private static native nativeWriteButtonEvent(III)Z
.end method

.method private static native nativeWriteKeyEvent(III)Z
.end method

.method private static native nativeWriteRelativeEvent(IFF)Z
.end method

.method private static native nativeWriteScrollEvent(IFF)Z
.end method

.method private static native nativeWriteTouchEvent(IIIIFFFF)Z
.end method

.method private setUniqueIdAssociation(ILjava/lang/String;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "phys"    # Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 253
    .local v0, "displayUniqueId":Ljava/lang/String;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/hardware/input/InputManager;->addUniqueIdAssociation(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method private updateActivePointerDisplayIdLocked()V
    .registers 8

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "mostRecentlyCreatedMouse":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 230
    .local v2, "otherInputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->isMouse()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 231
    if-eqz v0, :cond_2b

    .line 232
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getCreationOrderNumber()J

    move-result-wide v3

    .line 233
    invoke-virtual {v0}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getCreationOrderNumber()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_2c

    .line 234
    :cond_2b
    move-object v0, v2

    .line 237
    .end local v2    # "otherInputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :cond_2c
    goto :goto_b

    .line 238
    :cond_2d
    if-eqz v0, :cond_39

    .line 239
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 240
    invoke-virtual {v0}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getDisplayId()I

    move-result v2

    .line 239
    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManagerInternal;->setVirtualMousePointerDisplayId(I)Z

    goto :goto_3f

    .line 243
    :cond_39
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManagerInternal;->setVirtualMousePointerDisplayId(I)Z

    .line 245
    :goto_3f
    return-void
.end method


# virtual methods
.method close()V
    .registers 6

    .line 111
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Ljava/util/Map;

    .line 113
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 114
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;>;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 116
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 117
    .local v3, "token":Landroid/os/IBinder;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 118
    .local v4, "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 119
    invoke-direct {p0, v3, v4}, Lcom/android/server/companion/virtual/InputController;->closeInputDeviceDescriptorLocked(Landroid/os/IBinder;Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;)V

    .line 121
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;>;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;>;"
    .end local v3    # "token":Landroid/os/IBinder;
    .end local v4    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :cond_2b
    monitor-exit v0

    .line 122
    return-void

    .line 121
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method createKeyboard(Ljava/lang/String;IILandroid/os/IBinder;I)V
    .registers 16
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "deviceToken"    # Landroid/os/IBinder;
    .param p5, "displayId"    # I

    .line 129
    const-string v0, "Keyboard"

    invoke-static {v0}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "phys":Ljava/lang/String;
    const/4 v7, 0x1

    :try_start_7
    new-instance v9, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda3;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;)V

    move-object v1, p0

    move v2, v7

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    :try_end_1d
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_7 .. :try_end_1d} :catch_1f

    .line 137
    nop

    .line 138
    return-void

    .line 134
    :catch_1f
    move-exception v1

    .line 135
    .local v1, "e":Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create virtual keyboard device \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method createMouse(Ljava/lang/String;IILandroid/os/IBinder;I)V
    .registers 16
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "deviceToken"    # Landroid/os/IBinder;
    .param p5, "displayId"    # I

    .line 145
    const-string v0, "Mouse"

    invoke-static {v0}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "phys":Ljava/lang/String;
    const/4 v7, 0x2

    :try_start_7
    new-instance v9, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda2;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;)V

    move-object v1, p0

    move v2, v7

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    :try_end_1d
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_7 .. :try_end_1d} :catch_24

    .line 153
    nop

    .line 154
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v1, p5}, Landroid/hardware/input/InputManagerInternal;->setVirtualMousePointerDisplayId(I)Z

    .line 155
    return-void

    .line 150
    :catch_24
    move-exception v1

    .line 151
    .local v1, "e":Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create virtual mouse device: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method createTouchscreen(Ljava/lang/String;IILandroid/os/IBinder;ILandroid/graphics/Point;)V
    .registers 18
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "deviceToken"    # Landroid/os/IBinder;
    .param p5, "displayId"    # I
    .param p6, "screenSize"    # Landroid/graphics/Point;

    .line 163
    const-string v0, "Touchscreen"

    invoke-static {v0}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 165
    .local v10, "phys":Ljava/lang/String;
    const/4 v0, 0x3

    :try_start_7
    new-instance v9, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v10

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;Landroid/graphics/Point;)V

    move-object v1, p0

    move v2, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move-object v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    :try_end_20
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_7 .. :try_end_20} :catch_22

    .line 172
    nop

    .line 173
    return-void

    .line 169
    :catch_22
    move-exception v0

    .line 170
    .local v0, "e":Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create virtual touchscreen device \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "fout"    # Ljava/io/PrintWriter;

    .line 355
    const-string v0, "    InputController: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_8
    const-string v1, "      Active descriptors: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 359
    .local v2, "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "        fd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getFileDescriptor()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "          displayId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "          creationOrder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 362
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getCreationOrderNumber()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 361
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "          type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "          phys: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getPhys()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    .end local v2    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    goto/16 :goto_17

    .line 366
    :cond_a7
    monitor-exit v0

    .line 367
    return-void

    .line 366
    :catchall_a9
    move-exception v1

    monitor-exit v0
    :try_end_ab
    .catchall {:try_start_8 .. :try_end_ab} :catchall_a9

    throw v1
.end method

.method public getCursorPosition(Landroid/os/IBinder;)Landroid/graphics/PointF;
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 338
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 341
    .local v1, "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    if-eqz v1, :cond_2f

    .line 345
    invoke-virtual {v1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getDisplayId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 346
    invoke-virtual {v3}, Landroid/hardware/input/InputManagerInternal;->getVirtualMousePointerDisplayId()I

    move-result v3

    if-ne v2, v3, :cond_27

    .line 350
    const-class v2, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v2}, Landroid/hardware/input/InputManagerInternal;->getCursorPosition()Landroid/graphics/PointF;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 347
    :cond_27
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Display id associated with this mouse is not currently targetable"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v2

    .line 342
    .restart local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .restart local p1    # "token":Landroid/os/IBinder;
    :cond_2f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Could not get cursor position for input device for given token"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v2

    .line 351
    .end local v1    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method synthetic lambda$createKeyboard$1$com-android-server-companion-virtual-InputController(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Integer;
    .registers 6
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "phys"    # Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->openUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$createMouse$2$com-android-server-companion-virtual-InputController(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Integer;
    .registers 6
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "phys"    # Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->openUinputMouse(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$createTouchscreen$3$com-android-server-companion-virtual-InputController(Ljava/lang/String;IILjava/lang/String;Landroid/graphics/Point;)Ljava/lang/Integer;
    .registers 13
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "phys"    # Ljava/lang/String;
    .param p5, "screenSize"    # Landroid/graphics/Point;

    .line 167
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    iget v5, p5, Landroid/graphics/Point;->y:I

    iget v6, p5, Landroid/graphics/Point;->x:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->openUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method sendButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualMouseButtonEvent;

    .line 270
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 273
    .local v1, "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    if-eqz v1, :cond_35

    .line 277
    invoke-virtual {v1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getDisplayId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 278
    invoke-virtual {v3}, Landroid/hardware/input/InputManagerInternal;->getVirtualMousePointerDisplayId()I

    move-result v3

    if-ne v2, v3, :cond_2d

    .line 282
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getFileDescriptor()I

    move-result v3

    .line 283
    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseButtonEvent;->getButtonCode()I

    move-result v4

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseButtonEvent;->getAction()I

    move-result v5

    .line 282
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeButtonEvent(III)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 279
    :cond_2d
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Display id associated with this mouse is not currently targetable"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "event":Landroid/hardware/input/VirtualMouseButtonEvent;
    throw v2

    .line 274
    .restart local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "event":Landroid/hardware/input/VirtualMouseButtonEvent;
    :cond_35
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Could not send button event to input device for given token"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "event":Landroid/hardware/input/VirtualMouseButtonEvent;
    throw v2

    .line 284
    .end local v1    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "event":Landroid/hardware/input/VirtualMouseButtonEvent;
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method sendKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualKeyEvent;

    .line 257
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 260
    .local v1, "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    if-eqz v1, :cond_21

    .line 264
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getFileDescriptor()I

    move-result v3

    .line 265
    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getAction()I

    move-result v5

    .line 264
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeKeyEvent(III)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 261
    :cond_21
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Could not send key event to input device for given token"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "event":Landroid/hardware/input/VirtualKeyEvent;
    throw v2

    .line 266
    .end local v1    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "event":Landroid/hardware/input/VirtualKeyEvent;
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method sendRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualMouseRelativeEvent;

    .line 302
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 305
    .local v1, "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    if-eqz v1, :cond_35

    .line 309
    invoke-virtual {v1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getDisplayId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 310
    invoke-virtual {v3}, Landroid/hardware/input/InputManagerInternal;->getVirtualMousePointerDisplayId()I

    move-result v3

    if-ne v2, v3, :cond_2d

    .line 314
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getFileDescriptor()I

    move-result v3

    .line 315
    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseRelativeEvent;->getRelativeX()F

    move-result v4

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseRelativeEvent;->getRelativeY()F

    move-result v5

    .line 314
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeRelativeEvent(IFF)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 311
    :cond_2d
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Display id associated with this mouse is not currently targetable"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "event":Landroid/hardware/input/VirtualMouseRelativeEvent;
    throw v2

    .line 306
    .restart local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "event":Landroid/hardware/input/VirtualMouseRelativeEvent;
    :cond_35
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Could not send relative event to input device for given token"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "event":Landroid/hardware/input/VirtualMouseRelativeEvent;
    throw v2

    .line 316
    .end local v1    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "event":Landroid/hardware/input/VirtualMouseRelativeEvent;
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method sendScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualMouseScrollEvent;

    .line 320
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 323
    .local v1, "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    if-eqz v1, :cond_35

    .line 327
    invoke-virtual {v1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getDisplayId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 328
    invoke-virtual {v3}, Landroid/hardware/input/InputManagerInternal;->getVirtualMousePointerDisplayId()I

    move-result v3

    if-ne v2, v3, :cond_2d

    .line 332
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getFileDescriptor()I

    move-result v3

    .line 333
    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseScrollEvent;->getXAxisMovement()F

    move-result v4

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseScrollEvent;->getYAxisMovement()F

    move-result v5

    .line 332
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeScrollEvent(IFF)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 329
    :cond_2d
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Display id associated with this mouse is not currently targetable"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "event":Landroid/hardware/input/VirtualMouseScrollEvent;
    throw v2

    .line 324
    .restart local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "event":Landroid/hardware/input/VirtualMouseScrollEvent;
    :cond_35
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Could not send scroll event to input device for given token"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "event":Landroid/hardware/input/VirtualMouseScrollEvent;
    throw v2

    .line 334
    .end local v1    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "event":Landroid/hardware/input/VirtualMouseScrollEvent;
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z
    .registers 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualTouchEvent;

    .line 288
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 291
    .local v1, "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    if-eqz v1, :cond_35

    .line 295
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getFileDescriptor()I

    move-result v3

    .line 296
    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getPointerId()I

    move-result v4

    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getToolType()I

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getAction()I

    move-result v6

    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getX()F

    move-result v7

    .line 297
    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getY()F

    move-result v8

    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getPressure()F

    move-result v9

    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getMajorAxisSize()F

    move-result v10

    .line 295
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeTouchEvent(IIIIFFFF)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 292
    :cond_35
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Could not send touch event to input device for given token"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "event":Landroid/hardware/input/VirtualTouchEvent;
    throw v2

    .line 298
    .end local v1    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "event":Landroid/hardware/input/VirtualTouchEvent;
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method setDisplayEligibilityForPointerCapture(ZI)V
    .registers 4
    .param p1, "isEligible"    # Z
    .param p2, "displayId"    # I

    .line 214
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v0, p2, p1}, Landroid/hardware/input/InputManagerInternal;->setDisplayEligibilityForPointerCapture(IZ)V

    .line 215
    return-void
.end method

.method setLocalIme(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 219
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->flags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_13

    .line 221
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mWindowManager:Landroid/view/WindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->setDisplayImePolicy(II)V

    .line 224
    :cond_13
    return-void
.end method

.method setPointerAcceleration(FI)V
    .registers 4
    .param p1, "pointerAcceleration"    # F
    .param p2, "displayId"    # I

    .line 210
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerInternal;->setPointerAcceleration(FI)V

    .line 211
    return-void
.end method

.method setShowPointerIcon(ZI)V
    .registers 4
    .param p1, "visible"    # Z
    .param p2, "displayId"    # I

    .line 206
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerInternal;->setPointerIconVisible(ZI)V

    .line 207
    return-void
.end method

.method unregisterInputDevice(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 176
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 179
    .local v1, "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    if-eqz v1, :cond_12

    .line 183
    invoke-direct {p0, p1, v1}, Lcom/android/server/companion/virtual/InputController;->closeInputDeviceDescriptorLocked(Landroid/os/IBinder;Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;)V

    .line 184
    .end local v1    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    monitor-exit v0

    .line 185
    return-void

    .line 180
    .restart local v1    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    :cond_12
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Could not unregister input device for given token"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v2

    .line 184
    .end local v1    # "inputDeviceDescriptor":Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/InputController;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method
