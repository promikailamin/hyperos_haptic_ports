.class public Lcom/android/server/accessibility/MouseKeysInterceptor;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "MouseKeysInterceptor.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# static fields
.field public static final CURSOR_MOVEMENT_PARAMETER:F

.field public static final DEBUG:Z

.field public static final MOUSE_POINTER_MOVEMENT_STEP:F = 1.8f

.field public static final MOUSE_SCROLL_STEP:F = 0.2f


# instance fields
.field mAcceleration:F

.field public mActiveInputDeviceId:I

.field public mActiveMoveKey:I

.field public mActiveScrollKey:I

.field public final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final mContext:Landroid/content/Context;

.field final mCreateVirtualMouseThread:Ljava/lang/Thread;

.field public mCurrentMovementStep:F

.field public final mDeviceKeyCodeMap:Landroid/util/SparseArray;

.field public final mDeviceNumpadCapabilityCache:Landroid/util/SparseBooleanArray;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputManager:Landroid/hardware/input/InputManager;

.field public mLastTimeKeyActionPerformed:J

.field mMaxMovementStep:F

.field public mMouseKeysSettingsObserver:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeysSettingsObserver;

.field public mScrollToggleOn:Z

.field public final mTimeSource:Lcom/android/server/accessibility/TimeSource;

.field public final mUserId:I

.field public mUserSetPrimaryKeys:Z

.field public mVirtualDevice:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

.field public mVirtualMouse:Landroid/hardware/input/VirtualMouse;


# direct methods
.method public static synthetic $r8$lambda$bmlvUec6jxm8e9vAdANaoGIFYyk(Lcom/android/server/accessibility/MouseKeysInterceptor;Landroid/view/KeyEvent;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/MouseKeysInterceptor;->lambda$onKeyEvent$1(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dSqd1rgrVUZV5NMqrkklERpGuZ0(Lcom/android/server/accessibility/MouseKeysInterceptor;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MouseKeysInterceptor;->lambda$new$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wk5OZrrrRXLaJvhXFs3Q-lNgiRo(Lcom/android/server/accessibility/MouseKeysInterceptor;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/MouseKeysInterceptor;->lambda$onDestroy$2()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 82
    const-string v0, "MouseKeysInterceptor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/accessibility/MouseKeysInterceptor;->DEBUG:Z

    const/high16 v0, 0x40000000    # 2.0f

    .line 121
    invoke-static {v0}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v0

    sput v0, Lcom/android/server/accessibility/MouseKeysInterceptor;->CURSOR_MOVEMENT_PARAMETER:F

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/content/Context;Landroid/os/Looper;ILcom/android/server/accessibility/TimeSource;I)V
    .registers 9

    .line 318
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 144
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualDevice:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    .line 149
    iput-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualMouse:Landroid/hardware/input/VirtualMouse;

    const/4 v0, -0x1

    .line 157
    iput v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    .line 160
    iput v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    const-wide/16 v0, 0x0

    .line 163
    iput-wide v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mLastTimeKeyActionPerformed:J

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mScrollToggleOn:Z

    .line 169
    iput v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    const/high16 v0, 0x41200000    # 10.0f

    .line 172
    iput v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mMaxMovementStep:F

    const v0, 0x3dcccccd    # 0.1f

    .line 176
    iput v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mAcceleration:F

    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mUserSetPrimaryKeys:Z

    .line 190
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceNumpadCapabilityCache:Landroid/util/SparseBooleanArray;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 193
    iput v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mCurrentMovementStep:F

    .line 319
    iput-object p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 320
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    .line 321
    iput-object p5, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mTimeSource:Lcom/android/server/accessibility/TimeSource;

    .line 326
    new-instance p3, Ljava/lang/Thread;

    new-instance p5, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda0;

    invoke-direct {p5, p0, p4}, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/MouseKeysInterceptor;I)V

    invoke-direct {p3, p5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p3, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mCreateVirtualMouseThread:Ljava/lang/Thread;

    .line 329
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 330
    iput-object p2, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mContext:Landroid/content/Context;

    .line 331
    iput p6, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mUserId:I

    .line 332
    const-class p3, Landroid/hardware/input/InputManager;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/input/InputManager;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p3, p2

    check-cast p3, Landroid/hardware/input/InputManager;

    iput-object p2, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mInputManager:Landroid/hardware/input/InputManager;

    .line 335
    invoke-virtual {p2, p0, p1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final createVirtualMouse(I)Landroid/hardware/input/VirtualMouse;
    .registers 5

    .line 608
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 609
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 610
    new-instance v1, Landroid/companion/virtual/VirtualDeviceParams$Builder;

    invoke-direct {v1}, Landroid/companion/virtual/VirtualDeviceParams$Builder;-><init>()V

    const-string v2, "Mouse Keys Virtual Device"

    .line 611
    invoke-virtual {v1, v2}, Landroid/companion/virtual/VirtualDeviceParams$Builder;->setName(Ljava/lang/String;)Landroid/companion/virtual/VirtualDeviceParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDeviceParams$Builder;->build()Landroid/companion/virtual/VirtualDeviceParams;

    move-result-object v1

    .line 610
    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->createVirtualDevice(Landroid/companion/virtual/VirtualDeviceParams;)Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualDevice:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    .line 612
    new-instance p0, Landroid/hardware/input/VirtualMouseConfig$Builder;

    invoke-direct {p0}, Landroid/hardware/input/VirtualMouseConfig$Builder;-><init>()V

    const-string v1, "Mouse Keys Virtual Mouse"

    .line 614
    invoke-virtual {p0, v1}, Landroid/hardware/input/VirtualMouseConfig$Builder;->setInputDeviceName(Ljava/lang/String;)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/VirtualMouseConfig$Builder;

    .line 615
    invoke-virtual {p0, p1}, Landroid/hardware/input/VirtualMouseConfig$Builder;->setAssociatedDisplayId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/VirtualMouseConfig$Builder;

    .line 616
    invoke-virtual {p0}, Landroid/hardware/input/VirtualMouseConfig$Builder;->build()Landroid/hardware/input/VirtualMouseConfig;

    move-result-object p0

    .line 612
    invoke-virtual {v0, p0}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;)Landroid/hardware/input/VirtualMouse;

    move-result-object p0

    return-object p0
.end method

.method public final deviceHasNumpad(Landroid/view/InputDevice;)Z
    .registers 8

    .line 738
    invoke-virtual {p1}, Landroid/view/InputDevice;->getId()I

    move-result v0

    .line 741
    iget-object v1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceNumpadCapabilityCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_13

    .line 742
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceNumpadCapabilityCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0

    :cond_13
    const/4 v0, 0x0

    .line 745
    invoke-static {v0}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getAllMouseKeys(Z)[I

    move-result-object v1

    .line 746
    invoke-virtual {p1, v1}, Landroid/view/InputDevice;->hasKeys([I)[Z

    move-result-object v2

    move v3, v0

    .line 748
    :goto_1d
    array-length v4, v2

    const-string v5, "MouseKeysInterceptor"

    if-ge v3, v4, :cond_55

    .line 749
    aget-boolean v4, v2, v3

    if-nez v4, :cond_52

    .line 750
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Numpad Keycode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not supported on device "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 750
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceNumpadCapabilityCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/view/InputDevice;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return v0

    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 757
    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " supports all numpad keys."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceNumpadCapabilityCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/view/InputDevice;->getId()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    .line 771
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v0

    .line 775
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1f

    const/4 v0, 0x2

    if-eq v2, v0, :cond_15

    .line 783
    const-string p0, "MouseKeysInterceptor"

    const-string p1, "Unexpected message type"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 780
    :cond_15
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v1

    iget p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/android/server/accessibility/MouseKeysInterceptor;->handleMouseMessage(JII)V

    goto :goto_24

    .line 777
    :cond_1f
    iget p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor;->handleMouseMessage(JII)V

    :goto_24
    return v3
.end method

.method public handleMouseMessage(JII)V
    .registers 9

    .line 831
    iget-wide v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mLastTimeKeyActionPerformed:J

    sub-long v0, p1, v0

    const/16 v2, 0xa

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1a

    const/4 v0, 0x1

    if-ne p4, v0, :cond_12

    .line 833
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/MouseKeysInterceptor;->performMousePointerAction(I)V

    goto :goto_18

    :cond_12
    const/4 v0, 0x2

    if-ne p4, v0, :cond_18

    .line 835
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/MouseKeysInterceptor;->performMouseScrollAction(I)V

    .line 837
    :cond_18
    :goto_18
    iput-wide p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mLastTimeKeyActionPerformed:J

    :cond_1a
    const/4 p1, -0x1

    if-eq p3, p1, :cond_24

    .line 847
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0xa

    invoke-virtual {p0, p4, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_24
    return-void
.end method

.method public initializeDeviceToEnumMap(Landroid/view/InputDevice;Z)V
    .registers 10

    .line 294
    invoke-virtual {p1}, Landroid/view/InputDevice;->getId()I

    move-result v0

    .line 295
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 296
    invoke-static {}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->values()[Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_1d

    aget-object v5, v2, v4

    .line 297
    invoke-virtual {v5, p1, p2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->getKeyCode(Landroid/view/InputDevice;Z)I

    move-result v6

    .line 298
    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 300
    :cond_1d
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final isDeviceEligible(Landroid/view/InputDevice;)Z
    .registers 2

    if-eqz p1, :cond_10

    .line 914
    invoke-virtual {p1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-virtual {p1}, Landroid/view/InputDevice;->isPhysicalDevice()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final isMouseButtonKey(I)Z
    .registers 3

    .line 584
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-static {p1, v0, p0}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->from(IILandroid/util/SparseArray;)Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    move-result-object p0

    .line 587
    sget-object p1, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->LEFT_CLICK:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    if-eq p0, p1, :cond_13

    sget-object p1, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->RIGHT_CLICK:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    if-ne p0, p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public final isMouseKey(II)Z
    .registers 3

    .line 579
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    .line 580
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    return p0
.end method

.method public final isMouseScrollKey(I)Z
    .registers 3

    .line 592
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-static {p1, v0, p0}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->from(IILandroid/util/SparseArray;)Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    move-result-object p0

    .line 595
    sget-object p1, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->UP_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    if-eq p0, p1, :cond_1b

    sget-object p1, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->DOWN_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    if-eq p0, p1, :cond_1b

    sget-object p1, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->LEFT_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    if-eq p0, p1, :cond_1b

    sget-object p1, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->RIGHT_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    if-ne p0, p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$new$0(I)V
    .registers 2

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MouseKeysInterceptor;->createVirtualMouse(I)Landroid/hardware/input/VirtualMouse;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualMouse:Landroid/hardware/input/VirtualMouse;

    return-void
.end method

.method public final synthetic lambda$onDestroy$2()V
    .registers 3

    const/4 v0, -0x1

    .line 857
    iput v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    .line 858
    iput v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    const-wide/16 v0, 0x0

    .line 859
    iput-wide v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mLastTimeKeyActionPerformed:J

    .line 860
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final synthetic lambda$onKeyEvent$1(Landroid/view/KeyEvent;I)V
    .registers 3

    .line 644
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/MouseKeysInterceptor;->onKeyEventInternal(Landroid/view/KeyEvent;I)V

    .line 645
    invoke-virtual {p1}, Landroid/view/KeyEvent;->recycle()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 855
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/MouseKeysInterceptor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 863
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 864
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualDevice:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    if-eqz v0, :cond_17

    .line 865
    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->close()V

    .line 871
    :cond_17
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceNumpadCapabilityCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 872
    const-string p0, "MouseKeysInterceptor"

    const-string v0, "MouseKeysInterceptor.onDestroy() called!"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInputDeviceAdded(I)V
    .registers 2

    .line 883
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MouseKeysInterceptor;->onInputDeviceChangedInternal(I)V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .registers 2

    .line 901
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MouseKeysInterceptor;->onInputDeviceChangedInternal(I)V

    return-void
.end method

.method public final onInputDeviceChangedInternal(I)V
    .registers 4

    .line 905
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 907
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/MouseKeysInterceptor;->isDeviceEligible(Landroid/view/InputDevice;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 908
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/MouseKeysInterceptor;->shouldUsePrimaryKeysForDevice(Landroid/view/InputDevice;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/MouseKeysInterceptor;->initializeDeviceToEnumMap(Landroid/view/InputDevice;Z)V

    .line 909
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Updating key code enum map for device ID: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MouseKeysInterceptor"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 3

    .line 888
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 889
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceNumpadCapabilityCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 8

    .line 629
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x1000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 630
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";policyFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MouseKeysInterceptor.onKeyEvent"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 642
    :cond_32
    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object p1

    .line 643
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/MouseKeysInterceptor;Landroid/view/KeyEvent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onKeyEventInternal(Landroid/view/KeyEvent;I)V
    .registers 10

    .line 651
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 652
    :goto_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 653
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    .line 655
    iget-object v4, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v4, v3}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    .line 656
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/MouseKeysInterceptor;->isDeviceEligible(Landroid/view/InputDevice;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 658
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    return-void

    .line 661
    :cond_22
    iput v3, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    .line 662
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/MouseKeysInterceptor;->shouldUsePrimaryKeysForDevice(Landroid/view/InputDevice;)Z

    move-result v3

    .line 664
    iget-object v5, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    iget v6, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result v5

    if-nez v5, :cond_35

    .line 665
    invoke-virtual {p0, v4, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor;->initializeDeviceToEnumMap(Landroid/view/InputDevice;Z)V

    .line 667
    :cond_35
    iget v3, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    iget-object v4, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-static {v2, v3, v4}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->from(IILandroid/util/SparseArray;)Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    move-result-object v3

    .line 671
    iget v4, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    invoke-virtual {p0, v2, v4}, Lcom/android/server/accessibility/MouseKeysInterceptor;->isMouseKey(II)Z

    move-result v4

    if-nez v4, :cond_49

    .line 673
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    return-void

    :cond_49
    const/4 p2, 0x2

    .line 674
    const-string v4, "MouseKeysInterceptor"

    const/4 v5, -0x1

    if-eqz v0, :cond_c6

    .line 675
    sget-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->SCROLL_TOGGLE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    if-ne v3, v0, :cond_7a

    .line 676
    iget-boolean p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mScrollToggleOn:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mScrollToggleOn:Z

    .line 677
    sget-boolean p1, Lcom/android/server/accessibility/MouseKeysInterceptor;->DEBUG:Z

    if-eqz p1, :cond_c5

    .line 678
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Scroll toggle "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mScrollToggleOn:Z

    if-eqz p0, :cond_6d

    const-string p0, "ON"

    goto :goto_6f

    :cond_6d
    const-string p0, "OFF"

    :goto_6f
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 680
    :cond_7a
    sget-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->HOLD:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    if-ne v3, v0, :cond_84

    const/16 p1, 0xb

    .line 681
    invoke-virtual {p0, v1, p1}, Lcom/android/server/accessibility/MouseKeysInterceptor;->sendVirtualMouseButtonEvent(II)V

    return-void

    .line 685
    :cond_84
    sget-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->RELEASE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    if-ne v3, v0, :cond_8e

    const/16 p1, 0xc

    .line 686
    invoke-virtual {p0, v1, p1}, Lcom/android/server/accessibility/MouseKeysInterceptor;->sendVirtualMouseButtonEvent(II)V

    return-void

    .line 690
    :cond_8e
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor;->isMouseButtonKey(I)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 691
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor;->performMouseButtonAction(I)V

    return-void

    .line 692
    :cond_98
    iget-boolean v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mScrollToggleOn:Z

    if-eqz v0, :cond_b4

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor;->isMouseScrollKey(I)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 695
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    if-ne v0, v5, :cond_c5

    .line 696
    iput v2, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    .line 697
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mLastTimeKeyActionPerformed:J

    .line 698
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 704
    :cond_b4
    iget p2, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    if-ne p2, v5, :cond_c5

    .line 705
    iput v2, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    .line 706
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mLastTimeKeyActionPerformed:J

    .line 707
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_c5
    return-void

    .line 712
    :cond_c6
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    if-ne v0, v2, :cond_d7

    .line 714
    iput v5, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    const p1, 0x3fe66666    # 1.8f

    .line 716
    iput p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mCurrentMovementStep:F

    .line 717
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    .line 718
    :cond_d7
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    if-ne v0, v2, :cond_e3

    .line 720
    iput v5, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    .line 721
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    .line 723
    :cond_e3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Dropping event with key code: \'"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\', with no matching down event from deviceId = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 723
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final performMouseButtonAction(I)V
    .registers 5

    .line 443
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    iget-object v1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-static {p1, v0, v1}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->from(IILandroid/util/SparseArray;)Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    move-result-object p1

    .line 445
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, -0x1

    if-eq v0, v1, :cond_19

    const/16 v1, 0x9

    if-eq v0, v1, :cond_17

    move v0, v2

    goto :goto_1a

    :cond_17
    const/4 v0, 0x2

    goto :goto_1a

    :cond_19
    const/4 v0, 0x1

    :goto_1a
    if-eq v0, v2, :cond_26

    const/16 v1, 0xb

    .line 451
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/MouseKeysInterceptor;->sendVirtualMouseButtonEvent(II)V

    const/16 v1, 0xc

    .line 453
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/MouseKeysInterceptor;->sendVirtualMouseButtonEvent(II)V

    .line 456
    :cond_26
    sget-boolean p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->DEBUG:Z

    if-eqz p0, :cond_64

    .line 457
    const-string p0, "MouseKeysInterceptor"

    if-ne v0, v2, :cond_47

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Button code is unknown for mouse key event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 458
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 461
    :cond_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Performed mouse key event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for button action"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    return-void
.end method

.method public final performMousePointerAction(I)V
    .registers 6

    const v0, 0x3fe66666    # 1.8f

    .line 502
    iput v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mCurrentMovementStep:F

    .line 504
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    iget-object v1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-static {p1, v0, v1}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->from(IILandroid/util/SparseArray;)Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    move-result-object p1

    .line 507
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_aa

    :cond_17
    move v0, v2

    goto :goto_73

    .line 518
    :pswitch_19
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mCurrentMovementStep:F

    invoke-static {v1}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v2

    div-float v2, v0, v2

    .line 519
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mCurrentMovementStep:F

    invoke-static {v1}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v1

    :goto_27
    div-float/2addr v0, v1

    goto :goto_73

    .line 513
    :pswitch_29
    iget-boolean v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mScrollToggleOn:Z

    if-nez v0, :cond_17

    .line 514
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mCurrentMovementStep:F

    goto :goto_73

    .line 509
    :pswitch_30
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mCurrentMovementStep:F

    neg-float v0, v0

    invoke-static {v1}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v2

    div-float v2, v0, v2

    .line 510
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mCurrentMovementStep:F

    invoke-static {v1}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v1

    goto :goto_27

    .line 525
    :pswitch_40
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mCurrentMovementStep:F

    :goto_42
    move v3, v2

    move v2, v0

    move v0, v3

    goto :goto_73

    .line 522
    :pswitch_46
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mCurrentMovementStep:F

    neg-float v0, v0

    goto :goto_42

    .line 537
    :pswitch_4a
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mCurrentMovementStep:F

    invoke-static {v1}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v2

    div-float v2, v0, v2

    .line 538
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mCurrentMovementStep:F

    neg-float v0, v0

    invoke-static {v1}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v1

    goto :goto_27

    .line 532
    :pswitch_5a
    iget-boolean v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mScrollToggleOn:Z

    if-nez v0, :cond_17

    .line 533
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mCurrentMovementStep:F

    neg-float v0, v0

    goto :goto_73

    .line 528
    :pswitch_62
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mCurrentMovementStep:F

    neg-float v0, v0

    invoke-static {v1}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v2

    div-float v2, v0, v2

    .line 529
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mCurrentMovementStep:F

    neg-float v0, v0

    invoke-static {v1}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v1

    goto :goto_27

    .line 545
    :goto_73
    invoke-virtual {p0, v2, v0}, Lcom/android/server/accessibility/MouseKeysInterceptor;->sendVirtualMouseRelativeEvent(FF)V

    .line 546
    sget-boolean p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->DEBUG:Z

    if-eqz p0, :cond_a9

    .line 547
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Performed mouse key event: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for relative pointer movement (x="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", y="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MouseKeysInterceptor"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a9
    return-void

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_62
        :pswitch_5a
        :pswitch_4a
        :pswitch_46
        :pswitch_40
        :pswitch_30
        :pswitch_29
        :pswitch_19
    .end packed-switch
.end method

.method public final performMouseScrollAction(I)V
    .registers 8

    .line 398
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveInputDeviceId:I

    iget-object v1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-static {p1, v0, v1}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->from(IILandroid/util/SparseArray;)Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    move-result-object p1

    .line 403
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    if-eq v0, v1, :cond_26

    const/4 v1, 0x6

    const v4, -0x41b33333    # -0.2f

    if-eq v0, v1, :cond_23

    const/4 v1, 0x3

    if-eq v0, v1, :cond_29

    const/4 v1, 0x4

    if-eq v0, v1, :cond_21

    move v2, v3

    goto :goto_29

    :cond_21
    move v2, v4

    goto :goto_29

    :cond_23
    move v2, v3

    move v3, v4

    goto :goto_29

    :cond_26
    move v5, v3

    move v3, v2

    move v2, v5

    .line 421
    :cond_29
    :goto_29
    invoke-virtual {p0, v2, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor;->sendVirtualMouseScrollEvent(FF)V

    .line 422
    sget-boolean p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->DEBUG:Z

    if-eqz p0, :cond_5f

    .line 423
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Performed mouse key event: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for scroll action with axis movement (x="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", y="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MouseKeysInterceptor"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    return-void
.end method

.method public final sendVirtualMouseButtonEvent(II)V
    .registers 4

    .line 365
    invoke-virtual {p0}, Lcom/android/server/accessibility/MouseKeysInterceptor;->waitForVirtualMouseCreation()V

    .line 366
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualMouse:Landroid/hardware/input/VirtualMouse;

    new-instance v0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;

    invoke-direct {v0}, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;-><init>()V

    .line 367
    invoke-virtual {v0, p2}, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->setAction(I)Landroid/hardware/input/VirtualMouseButtonEvent$Builder;

    move-result-object p2

    .line 368
    invoke-virtual {p2, p1}, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->setButtonCode(I)Landroid/hardware/input/VirtualMouseButtonEvent$Builder;

    move-result-object p1

    .line 369
    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->build()Landroid/hardware/input/VirtualMouseButtonEvent;

    move-result-object p1

    .line 366
    invoke-virtual {p0, p1}, Landroid/hardware/input/VirtualMouse;->sendButtonEvent(Landroid/hardware/input/VirtualMouseButtonEvent;)V

    return-void
.end method

.method public final sendVirtualMouseRelativeEvent(FF)V
    .registers 4

    .line 355
    invoke-virtual {p0}, Lcom/android/server/accessibility/MouseKeysInterceptor;->waitForVirtualMouseCreation()V

    .line 356
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualMouse:Landroid/hardware/input/VirtualMouse;

    new-instance v0, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;

    invoke-direct {v0}, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;-><init>()V

    .line 357
    invoke-virtual {v0, p1}, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;->setRelativeX(F)Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;

    move-result-object p1

    .line 358
    invoke-virtual {p1, p2}, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;->setRelativeY(F)Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;

    move-result-object p1

    .line 359
    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;->build()Landroid/hardware/input/VirtualMouseRelativeEvent;

    move-result-object p1

    .line 356
    invoke-virtual {p0, p1}, Landroid/hardware/input/VirtualMouse;->sendRelativeEvent(Landroid/hardware/input/VirtualMouseRelativeEvent;)V

    return-void
.end method

.method public final sendVirtualMouseScrollEvent(FF)V
    .registers 4

    .line 375
    invoke-virtual {p0}, Lcom/android/server/accessibility/MouseKeysInterceptor;->waitForVirtualMouseCreation()V

    .line 376
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualMouse:Landroid/hardware/input/VirtualMouse;

    new-instance v0, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;

    invoke-direct {v0}, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;-><init>()V

    .line 377
    invoke-virtual {v0, p1}, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;->setXAxisMovement(F)Landroid/hardware/input/VirtualMouseScrollEvent$Builder;

    move-result-object p1

    .line 378
    invoke-virtual {p1, p2}, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;->setYAxisMovement(F)Landroid/hardware/input/VirtualMouseScrollEvent$Builder;

    move-result-object p1

    .line 379
    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;->build()Landroid/hardware/input/VirtualMouseScrollEvent;

    move-result-object p1

    .line 376
    invoke-virtual {p0, p1}, Landroid/hardware/input/VirtualMouse;->sendScrollEvent(Landroid/hardware/input/VirtualMouseScrollEvent;)V

    return-void
.end method

.method public final shouldUsePrimaryKeysForDevice(Landroid/view/InputDevice;)Z
    .registers 4

    .line 565
    invoke-virtual {p1}, Landroid/view/InputDevice;->getGeneration()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 566
    iget-boolean p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mUserSetPrimaryKeys:Z

    return p0

    .line 567
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mUserSetPrimaryKeys:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    return v1

    .line 569
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MouseKeysInterceptor;->deviceHasNumpad(Landroid/view/InputDevice;)Z

    move-result p0

    if-nez p0, :cond_31

    .line 570
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Defaulting back to primary mouse key bindings since not all numpad keys exist on device "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 570
    const-string p1, "MouseKeysInterceptor"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_31
    const/4 p0, 0x0

    return p0
.end method

.method public final waitForVirtualMouseCreation()V
    .registers 2

    .line 346
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mCreateVirtualMouseThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 348
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 349
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
