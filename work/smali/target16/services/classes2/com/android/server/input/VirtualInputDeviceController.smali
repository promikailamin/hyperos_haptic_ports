.class Lcom/android/server/input/VirtualInputDeviceController;
.super Ljava/lang/Object;
.source "VirtualInputDeviceController.java"


# static fields
.field public static final sNextPhysId:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mInputDeviceDescriptors:Landroid/util/ArrayMap;

.field public final mLock:Ljava/lang/Object;

.field public final mNativeWrapper:Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;

.field public final mService:Lcom/android/server/input/InputManagerService;

.field public final mThreadVerifier:Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationThreadVerifier;


# direct methods
.method public static synthetic $r8$lambda$0GhqHpKcj73yMLHWLc_6NvhQv14(Lcom/android/server/input/VirtualInputDeviceController;Ljava/lang/String;IILjava/lang/String;II)Ljava/lang/Long;
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/input/VirtualInputDeviceController;->lambda$createTouchscreen$4(Ljava/lang/String;IILjava/lang/String;II)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$16YV2ZUeC-qdGbeve2TYzvXKJoM(Lcom/android/server/input/VirtualInputDeviceController;Ljava/lang/String;IILjava/lang/String;II)Ljava/lang/Long;
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/input/VirtualInputDeviceController;->lambda$createStylus$6(Ljava/lang/String;IILjava/lang/String;II)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1iBZpBLlOMdIKA3FkxlQkc3P9D0(Lcom/android/server/input/VirtualInputDeviceController;Landroid/os/IBinder;Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/VirtualInputDeviceController;->lambda$unregisterInputDevice$8(Landroid/os/IBinder;Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6_j5SjJzsq3Tyzz1ukeUBB-hXpo(Lcom/android/server/input/VirtualInputDeviceController;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/input/VirtualInputDeviceController;->lambda$createKeyboard$2(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7xJIO3EFAq9Kprc9ka9JlBG9_HY(Lcom/android/server/input/VirtualInputDeviceController;Ljava/lang/String;IILjava/lang/String;II)Ljava/lang/Long;
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/input/VirtualInputDeviceController;->lambda$createNavigationTouchpad$5(Ljava/lang/String;IILjava/lang/String;II)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9WDeNxZfXV0SL7F9hHa3O4YP2ps(Lcom/android/server/input/VirtualInputDeviceController;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/input/VirtualInputDeviceController;->lambda$createMouse$3(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9hQz5ZkK3Kytn3zuIDOPyDmO6Q4(Lcom/android/server/input/VirtualInputDeviceController;Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;)Landroid/graphics/PointF;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/VirtualInputDeviceController;->lambda$getCursorPositionInPhysicalDisplay$9(Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JqW9C_0H5fab50MTa0WtS4P22Z4(Lcom/android/server/input/VirtualInputDeviceController;Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;)Landroid/graphics/PointF;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/VirtualInputDeviceController;->lambda$getCursorPositionInLogicalDisplay$10(Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PBbTYl_PHGXDPBX3tfQuUYxfBgM(Lcom/android/server/input/VirtualInputDeviceController;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/input/VirtualInputDeviceController;->lambda$createRotaryEncoder$7(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jInJ9TedQZ36zXQQ4wgrwgXAkok(Landroid/os/Handler;)Z
    .registers 1

    .line 106
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$n1tq6mMAsbw5RHCopqw0HFRSGH4(Lcom/android/server/input/VirtualInputDeviceController;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/input/VirtualInputDeviceController;->lambda$createDpad$1(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tVOQSTY3d8NRaUGiNEQS4Sxp13I()V
    .registers 0

    .line 0
    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/input/VirtualInputDeviceController;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/input/VirtualInputDeviceController;)Lcom/android/server/input/InputManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mService:Lcom/android/server/input/InputManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smnativeCloseUinput(J)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/input/VirtualInputDeviceController;->nativeCloseUinput(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeOpenUinputDpad(Ljava/lang/String;IILjava/lang/String;)J
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/input/VirtualInputDeviceController;->nativeOpenUinputDpad(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smnativeOpenUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)J
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/input/VirtualInputDeviceController;->nativeOpenUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smnativeOpenUinputMouse(Ljava/lang/String;IILjava/lang/String;)J
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/input/VirtualInputDeviceController;->nativeOpenUinputMouse(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smnativeOpenUinputRotaryEncoder(Ljava/lang/String;IILjava/lang/String;)J
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/input/VirtualInputDeviceController;->nativeOpenUinputRotaryEncoder(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smnativeOpenUinputStylus(Ljava/lang/String;IILjava/lang/String;II)J
    .registers 6

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/input/VirtualInputDeviceController;->nativeOpenUinputStylus(Ljava/lang/String;IILjava/lang/String;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smnativeOpenUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J
    .registers 6

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/input/VirtualInputDeviceController;->nativeOpenUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteButtonEvent(JIIJ)Z
    .registers 6

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/input/VirtualInputDeviceController;->nativeWriteButtonEvent(JIIJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteDpadKeyEvent(JIIJ)Z
    .registers 6

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/input/VirtualInputDeviceController;->nativeWriteDpadKeyEvent(JIIJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteKeyEvent(JIIJ)Z
    .registers 6

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/input/VirtualInputDeviceController;->nativeWriteKeyEvent(JIIJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteRelativeEvent(JFFJ)Z
    .registers 6

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/input/VirtualInputDeviceController;->nativeWriteRelativeEvent(JFFJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteRotaryEncoderScrollEvent(JFJ)Z
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/input/VirtualInputDeviceController;->nativeWriteRotaryEncoderScrollEvent(JFJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteScrollEvent(JFFJ)Z
    .registers 6

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/input/VirtualInputDeviceController;->nativeWriteScrollEvent(JFFJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteStylusButtonEvent(JIIJ)Z
    .registers 6

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/input/VirtualInputDeviceController;->nativeWriteStylusButtonEvent(JIIJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteStylusMotionEvent(JIIIIIIIJ)Z
    .registers 11

    .line 0
    invoke-static/range {p0 .. p10}, Lcom/android/server/input/VirtualInputDeviceController;->nativeWriteStylusMotionEvent(JIIIIIIIJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteTouchEvent(JIIIFFFFJ)Z
    .registers 11

    .line 0
    invoke-static/range {p0 .. p10}, Lcom/android/server/input/VirtualInputDeviceController;->nativeWriteTouchEvent(JIIIFFFFJ)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/server/input/VirtualInputDeviceController;->sNextPhysId:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/input/InputManagerService;)V
    .registers 5

    .line 104
    new-instance v0, Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;

    invoke-direct {v0}, Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;-><init>()V

    new-instance v1, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda5;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/input/VirtualInputDeviceController;-><init>(Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;Landroid/os/Handler;Lcom/android/server/input/InputManagerService;Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationThreadVerifier;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;Landroid/os/Handler;Lcom/android/server/input/InputManagerService;Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationThreadVerifier;)V
    .registers 6

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mLock:Ljava/lang/Object;

    .line 94
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    .line 113
    iput-object p2, p0, Lcom/android/server/input/VirtualInputDeviceController;->mHandler:Landroid/os/Handler;

    .line 114
    iput-object p1, p0, Lcom/android/server/input/VirtualInputDeviceController;->mNativeWrapper:Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;

    .line 115
    iput-object p3, p0, Lcom/android/server/input/VirtualInputDeviceController;->mService:Lcom/android/server/input/InputManagerService;

    .line 116
    iput-object p4, p0, Lcom/android/server/input/VirtualInputDeviceController;->mThreadVerifier:Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationThreadVerifier;

    return-void
.end method

.method public static createPhys(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 276
    sget-object v0, Lcom/android/server/input/VirtualInputDeviceController;->sNextPhysId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "virtual%s:%d"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeCloseUinput(J)V
.end method

.method private static native nativeOpenUinputDpad(Ljava/lang/String;IILjava/lang/String;)J
.end method

.method private static native nativeOpenUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)J
.end method

.method private static native nativeOpenUinputMouse(Ljava/lang/String;IILjava/lang/String;)J
.end method

.method private static native nativeOpenUinputRotaryEncoder(Ljava/lang/String;IILjava/lang/String;)J
.end method

.method private static native nativeOpenUinputStylus(Ljava/lang/String;IILjava/lang/String;II)J
.end method

.method private static native nativeOpenUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J
.end method

.method private static native nativeWriteButtonEvent(JIIJ)Z
.end method

.method private static native nativeWriteDpadKeyEvent(JIIJ)Z
.end method

.method private static native nativeWriteKeyEvent(JIIJ)Z
.end method

.method private static native nativeWriteRelativeEvent(JFFJ)Z
.end method

.method private static native nativeWriteRotaryEncoderScrollEvent(JFJ)Z
.end method

.method private static native nativeWriteScrollEvent(JFFJ)Z
.end method

.method private static native nativeWriteStylusButtonEvent(JIIJ)Z
.end method

.method private static native nativeWriteStylusMotionEvent(JIIIIIIIJ)Z
.end method

.method private static native nativeWriteTouchEvent(JIIIFFFFJ)Z
.end method


# virtual methods
.method public addDeviceForTesting(Landroid/os/IBinder;JIILjava/lang/String;Ljava/lang/String;I)V
    .registers 22

    .line 449
    iget-object v1, p0, Lcom/android/server/input/VirtualInputDeviceController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 450
    :try_start_3
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;

    new-instance v6, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda1;-><init>()V

    move-object v3, p0

    move-object v12, p1

    move-wide v4, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v2 .. v12}, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;-><init>(Lcom/android/server/input/VirtualInputDeviceController;JLandroid/os/IBinder$DeathRecipient;IILjava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    monitor-exit v1

    return-void

    :catchall_21
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_21

    throw p0
.end method

.method public final closeInputDeviceDescriptorLocked(Landroid/os/IBinder;Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;)V
    .registers 5

    .line 228
    invoke-virtual {p2}, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->getDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 229
    iget-object p1, p0, Lcom/android/server/input/VirtualInputDeviceController;->mNativeWrapper:Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;

    invoke-virtual {p2}, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;->closeUinput(J)V

    .line 230
    invoke-virtual {p2}, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->getPhys()Ljava/lang/String;

    move-result-object p1

    .line 231
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerService;->removeUniqueIdAssociationByPort(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_26

    .line 238
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerService;->unsetTypeAssociationInternal(Ljava/lang/String;)V

    .line 241
    :cond_26
    invoke-virtual {p2}, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->getType()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_32

    .line 242
    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->removeKeyboardLayoutAssociation(Ljava/lang/String;)V

    :cond_32
    return-void
.end method

.method public final createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 20

    move-object/from16 v10, p5

    move-object/from16 v7, p7

    .line 884
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mThreadVerifier:Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationThreadVerifier;

    invoke-interface {v0}, Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationThreadVerifier;->isValidThread()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 889
    invoke-virtual {p0, p2}, Lcom/android/server/input/VirtualInputDeviceController;->validateDeviceName(Ljava/lang/String;)V

    move/from16 v6, p6

    .line 896
    invoke-virtual {p0, v6, v7}, Lcom/android/server/input/VirtualInputDeviceController;->setUniqueIdAssociation(ILjava/lang/String;)V

    .line 900
    :try_start_14
    new-instance v1, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;
    :try_end_16
    .catch Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException; {:try_start_14 .. :try_end_16} :catch_5e

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object v3, v7

    move v7, v6

    move v6, p4

    :try_start_1c
    invoke-direct/range {v1 .. v7}, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;-><init>(Lcom/android/server/input/VirtualInputDeviceController;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_1f
    .catch Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException; {:try_start_1c .. :try_end_1f} :catch_b1

    move-object p3, v1

    .line 902
    :try_start_20
    invoke-interface/range {p8 .. p8}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_71

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_8e

    .line 912
    :try_start_30
    invoke-virtual {p3}, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;->waitForDeviceCreation()I

    move-result v9

    .line 914
    new-instance v4, Lcom/android/server/input/VirtualInputDeviceController$BinderDeathRecipient;

    invoke-direct {v4, p0, v10}, Lcom/android/server/input/VirtualInputDeviceController$BinderDeathRecipient;-><init>(Lcom/android/server/input/VirtualInputDeviceController;Landroid/os/IBinder;)V
    :try_end_39
    .catch Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException; {:try_start_30 .. :try_end_39} :catch_75
    .catchall {:try_start_30 .. :try_end_39} :catchall_71

    const/4 v0, 0x0

    .line 916
    :try_start_3a
    invoke-interface {v10, v4, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3d} :catch_7a
    .catch Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException; {:try_start_3a .. :try_end_3d} :catch_75
    .catchall {:try_start_3a .. :try_end_3d} :catchall_71

    .line 926
    :try_start_3d
    new-instance v0, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;
    :try_end_3f
    .catchall {:try_start_3d .. :try_end_3f} :catchall_71

    move-object v1, p0

    move v5, p1

    move-object v8, p2

    move/from16 v6, p6

    move-object/from16 v7, p7

    :try_start_46
    invoke-direct/range {v0 .. v10}, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;-><init>(Lcom/android/server/input/VirtualInputDeviceController;JLandroid/os/IBinder$DeathRecipient;IILjava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V

    .line 929
    iget-object p1, p0, Lcom/android/server/input/VirtualInputDeviceController;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_6e

    .line 930
    :try_start_4c
    iget-object p2, p0, Lcom/android/server/input/VirtualInputDeviceController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {p2, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_64

    .line 934
    iget-object p2, p0, Lcom/android/server/input/VirtualInputDeviceController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {p2, v10, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    monitor-exit p1
    :try_end_5a
    .catchall {:try_start_4c .. :try_end_5a} :catchall_61

    .line 937
    :try_start_5a
    invoke-virtual {p3}, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;->close()V
    :try_end_5d
    .catch Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException; {:try_start_5a .. :try_end_5d} :catch_5e

    return-object v0

    :catch_5e
    move-exception v0

    :goto_5f
    move-object p1, v0

    goto :goto_b4

    :catchall_61
    move-exception v0

    move-object p2, v0

    goto :goto_6c

    .line 931
    :cond_64
    :try_start_64
    new-instance p2, Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException;

    const-string v0, "Cannot create new virtual input device with an existing token."

    invoke-direct {p2, v0}, Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 935
    :goto_6c
    monitor-exit p1
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_61

    :try_start_6d
    throw p2
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception v0

    :goto_6f
    move-object p1, v0

    goto :goto_a7

    :catchall_71
    move-exception v0

    move-object/from16 v7, p7

    goto :goto_6f

    :catch_75
    move-exception v0

    move-object/from16 v7, p7

    :goto_78
    move-object p1, v0

    goto :goto_88

    :catch_7a
    move-exception v0

    move-object/from16 v7, p7

    move-object p1, v0

    .line 918
    :try_start_7e
    new-instance p2, Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException;

    const-string v0, "Client died before virtual input device could be created."

    invoke-direct {p2, v0, p1}, Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_86
    .catch Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException; {:try_start_7e .. :try_end_86} :catch_86
    .catchall {:try_start_7e .. :try_end_86} :catchall_6e

    :catch_86
    move-exception v0

    goto :goto_78

    .line 922
    :goto_88
    :try_start_88
    iget-object p2, p0, Lcom/android/server/input/VirtualInputDeviceController;->mNativeWrapper:Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;

    invoke-virtual {p2, v2, v3}, Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;->closeUinput(J)V

    .line 923
    throw p1

    :cond_8e
    move-object/from16 v7, p7

    .line 905
    new-instance p1, Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A native error occurred when creating virtual input device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a7
    .catchall {:try_start_88 .. :try_end_a7} :catchall_6e

    .line 900
    :goto_a7
    :try_start_a7
    invoke-virtual {p3}, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;->close()V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_ab

    goto :goto_b0

    :catchall_ab
    move-exception v0

    move-object p2, v0

    :try_start_ad
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b0
    throw p1
    :try_end_b1
    .catch Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException; {:try_start_ad .. :try_end_b1} :catch_5e

    :catch_b1
    move-exception v0

    move-object v7, v3

    goto :goto_5f

    .line 938
    :goto_b4
    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, v7}, Lcom/android/server/input/InputManagerService;->removeUniqueIdAssociationByPort(Ljava/lang/String;)V

    .line 942
    throw p1

    .line 885
    :cond_ba
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Virtual input device creation should happen on an auxiliary thread (e.g. binder thread) and not from the handler\'s thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createDpad(Ljava/lang/String;IILandroid/os/IBinder;I)Landroid/hardware/input/IVirtualInputDevice;
    .registers 16

    .line 121
    const-string v0, "Dpad"

    invoke-static {v0}, Lcom/android/server/input/VirtualInputDeviceController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 123
    :try_start_6
    new-instance v1, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda10;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/input/VirtualInputDeviceController;Ljava/lang/String;IILjava/lang/String;)V

    move-object v9, v1

    move-object v1, v2

    const/4 v2, 0x4

    move v7, p5

    move-object v8, v6

    move-object v6, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/input/VirtualInputDeviceController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0
    :try_end_19
    .catch Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException; {:try_start_6 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception v0

    move-object p0, v0

    .line 127
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public createKeyboard(Ljava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 18

    .line 134
    const-string v0, "Keyboard"

    invoke-static {v0}, Lcom/android/server/input/VirtualInputDeviceController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 135
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mService:Lcom/android/server/input/InputManagerService;

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/input/InputManagerService;->addKeyboardLayoutAssociation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :try_start_f
    new-instance v9, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda2;
    :try_end_11
    .catch Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException; {:try_start_f .. :try_end_11} :catch_28

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v8

    move-object v1, v9

    :try_start_17
    invoke-direct/range {v1 .. v6}, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/input/VirtualInputDeviceController;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_1a
    .catch Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException; {:try_start_17 .. :try_end_1a} :catch_2b

    move-object v9, v1

    move-object v8, v6

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    :try_start_23
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/input/VirtualInputDeviceController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0
    :try_end_27
    .catch Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException; {:try_start_23 .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    move-exception v0

    :goto_29
    move-object p1, v0

    goto :goto_2e

    :catch_2b
    move-exception v0

    move-object v8, v6

    goto :goto_29

    .line 141
    :goto_2e
    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, v8}, Lcom/android/server/input/InputManagerService;->removeKeyboardLayoutAssociation(Ljava/lang/String;)V

    .line 142
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public createMouse(Ljava/lang/String;IILandroid/os/IBinder;I)Landroid/hardware/input/IVirtualInputDevice;
    .registers 16

    .line 148
    const-string v0, "Mouse"

    invoke-static {v0}, Lcom/android/server/input/VirtualInputDeviceController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 150
    :try_start_6
    new-instance v1, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda11;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/input/VirtualInputDeviceController;Ljava/lang/String;IILjava/lang/String;)V

    move-object v9, v1

    move-object v1, v2

    const/4 v2, 0x2

    move v7, p5

    move-object v8, v6

    move-object v6, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/input/VirtualInputDeviceController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0
    :try_end_19
    .catch Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException; {:try_start_6 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception v0

    move-object p0, v0

    .line 154
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public createNavigationTouchpad(Ljava/lang/String;IILandroid/os/IBinder;III)Landroid/hardware/input/IVirtualInputDevice;
    .registers 18

    .line 173
    const-string v0, "NavigationTouchpad"

    invoke-static {v0}, Lcom/android/server/input/VirtualInputDeviceController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 174
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mService:Lcom/android/server/input/InputManagerService;

    const-string/jumbo v1, "touchNavigation"

    invoke-virtual {v0, v8, v1}, Lcom/android/server/input/InputManagerService;->setTypeAssociationInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :try_start_e
    new-instance v9, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda6;
    :try_end_10
    .catch Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException; {:try_start_e .. :try_end_10} :catch_2b

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v7, p6

    move-object v6, v8

    move-object v1, v9

    move/from16 v8, p7

    :try_start_1a
    invoke-direct/range {v1 .. v8}, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/input/VirtualInputDeviceController;Ljava/lang/String;IILjava/lang/String;II)V
    :try_end_1d
    .catch Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException; {:try_start_1a .. :try_end_1d} :catch_2e

    move-object v9, v1

    move-object v8, v6

    const/4 v2, 0x5

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    :try_start_26
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/input/VirtualInputDeviceController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0
    :try_end_2a
    .catch Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException; {:try_start_26 .. :try_end_2a} :catch_2b

    return-object p0

    :catch_2b
    move-exception v0

    :goto_2c
    move-object p1, v0

    goto :goto_31

    :catch_2e
    move-exception v0

    move-object v8, v6

    goto :goto_2c

    .line 181
    :goto_31
    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, v8}, Lcom/android/server/input/InputManagerService;->unsetTypeAssociationInternal(Ljava/lang/String;)V

    .line 182
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public createRotaryEncoder(Ljava/lang/String;IILandroid/os/IBinder;I)Landroid/hardware/input/IVirtualInputDevice;
    .registers 16

    .line 201
    const-string v0, "RotaryEncoder"

    invoke-static {v0}, Lcom/android/server/input/VirtualInputDeviceController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 203
    :try_start_6
    new-instance v1, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda9;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/input/VirtualInputDeviceController;Ljava/lang/String;IILjava/lang/String;)V

    move-object v9, v1

    move-object v1, v2

    const/4 v2, 0x7

    move v7, p5

    move-object v8, v6

    move-object v6, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/input/VirtualInputDeviceController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0
    :try_end_19
    .catch Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException; {:try_start_6 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception v0

    move-object p0, v0

    .line 208
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public createStylus(Ljava/lang/String;IILandroid/os/IBinder;III)Landroid/hardware/input/IVirtualInputDevice;
    .registers 18

    .line 188
    const-string v0, "Stylus"

    invoke-static {v0}, Lcom/android/server/input/VirtualInputDeviceController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 190
    :try_start_6
    new-instance v9, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda8;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v7, p6

    move-object v6, v8

    move-object v1, v9

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/input/VirtualInputDeviceController;Ljava/lang/String;IILjava/lang/String;II)V

    move-object v9, v1

    move-object v8, v6

    const/4 v2, 0x6

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/input/VirtualInputDeviceController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0
    :try_end_22
    .catch Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException; {:try_start_6 .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    move-exception v0

    move-object p0, v0

    .line 195
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public createTouchscreen(Ljava/lang/String;IILandroid/os/IBinder;III)Landroid/hardware/input/IVirtualInputDevice;
    .registers 18

    .line 160
    const-string v0, "Touchscreen"

    invoke-static {v0}, Lcom/android/server/input/VirtualInputDeviceController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 162
    :try_start_6
    new-instance v9, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda7;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v7, p6

    move-object v6, v8

    move-object v1, v9

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/input/VirtualInputDeviceController;Ljava/lang/String;IILjava/lang/String;II)V

    move-object v9, v1

    move-object v8, v6

    const/4 v2, 0x3

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/input/VirtualInputDeviceController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0
    :try_end_22
    .catch Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException; {:try_start_6 .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    move-exception v0

    move-object p0, v0

    .line 167
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 8

    .line 429
    const-string v0, "VirtualInputController: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 431
    :try_start_8
    const-string v1, "  Active descriptors: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 432
    :goto_e
    iget-object v2, p0, Lcom/android/server/input/VirtualInputDeviceController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_b4

    .line 433
    iget-object v2, p0, Lcom/android/server/input/VirtualInputDeviceController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;

    .line 434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    ptr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      displayId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v2}, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->getAssociatedDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 435
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      creationOrder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v2}, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->getCreationOrderNumber()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 437
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      phys: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->getPhys()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      inputDeviceId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->getInputDeviceId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_e

    :catchall_b2
    move-exception p0

    goto :goto_b6

    .line 443
    :cond_b4
    monitor-exit v0

    return-void

    :goto_b6
    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_8 .. :try_end_b7} :catchall_b2

    throw p0
.end method

.method public getCursorPositionInLogicalDisplay(Landroid/os/IBinder;)Landroid/graphics/PointF;
    .registers 4

    .line 376
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 377
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/VirtualInputDeviceController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;

    if-eqz p1, :cond_1c

    .line 383
    new-instance v1, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/input/VirtualInputDeviceController;Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/PointF;

    monitor-exit v0

    return-object p0

    :catchall_1a
    move-exception p0

    goto :goto_24

    .line 380
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Could not get cursor position for input device for given token"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 385
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_1a

    throw p0
.end method

.method public getCursorPositionInPhysicalDisplay(Landroid/os/IBinder;)Landroid/graphics/PointF;
    .registers 4

    .line 362
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/VirtualInputDeviceController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;

    if-eqz p1, :cond_1c

    .line 369
    new-instance v1, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/VirtualInputDeviceController;Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/PointF;

    monitor-exit v0

    return-object p0

    :catchall_1a
    move-exception p0

    goto :goto_24

    .line 366
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Could not get cursor position for input device for given token"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 372
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_1a

    throw p0
.end method

.method public getInputDeviceDescriptors()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;",
            ">;"
        }
    .end annotation

    .line 457
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 458
    iget-object v1, p0, Lcom/android/server/input/VirtualInputDeviceController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 459
    :try_start_8
    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 460
    monitor-exit v1

    return-object v0

    :catchall_f
    move-exception p0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final synthetic lambda$createDpad$1(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;
    .registers 5

    .line 125
    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mNativeWrapper:Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;->openUinputDpad(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$createKeyboard$2(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;
    .registers 5

    .line 139
    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mNativeWrapper:Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;->openUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$createMouse$3(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;
    .registers 5

    .line 152
    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mNativeWrapper:Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;->openUinputMouse(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$createNavigationTouchpad$5(Ljava/lang/String;IILjava/lang/String;II)Ljava/lang/Long;
    .registers 7

    .line 178
    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mNativeWrapper:Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;->openUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$createRotaryEncoder$7(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;
    .registers 5

    .line 205
    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mNativeWrapper:Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;->openUinputRotaryEncoder(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$createStylus$6(Ljava/lang/String;IILjava/lang/String;II)Ljava/lang/Long;
    .registers 7

    .line 192
    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mNativeWrapper:Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;->openUinputStylus(Ljava/lang/String;IILjava/lang/String;II)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$createTouchscreen$4(Ljava/lang/String;IILjava/lang/String;II)Ljava/lang/Long;
    .registers 7

    .line 164
    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mNativeWrapper:Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;->openUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$getCursorPositionInLogicalDisplay$10(Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;)Landroid/graphics/PointF;
    .registers 2

    .line 383
    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mService:Lcom/android/server/input/InputManagerService;

    .line 384
    invoke-virtual {p1}, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->getAssociatedDisplayId()I

    move-result p1

    .line 383
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getCursorPositionInLogicalDisplay(I)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$getCursorPositionInPhysicalDisplay$9(Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;)Landroid/graphics/PointF;
    .registers 2

    .line 370
    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mService:Lcom/android/server/input/InputManagerService;

    .line 371
    invoke-virtual {p1}, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->getAssociatedDisplayId()I

    move-result p1

    .line 370
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getCursorPositionInPhysicalDisplay(I)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$unregisterInputDevice$8(Landroid/os/IBinder;Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;)V
    .registers 3

    .line 220
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/VirtualInputDeviceController;->closeInputDeviceDescriptorLocked(Landroid/os/IBinder;Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;)V

    return-void
.end method

.method public sendDpadKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z
    .registers 12

    .line 287
    iget-object v1, p0, Lcom/android/server/input/VirtualInputDeviceController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 288
    :try_start_3
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;

    if-nez p1, :cond_13

    const/4 p0, 0x0

    .line 291
    monitor-exit v1

    return p0

    :catchall_10
    move-exception v0

    move-object p0, v0

    goto :goto_2b

    .line 293
    :cond_13
    iget-object v2, p0, Lcom/android/server/input/VirtualInputDeviceController;->mNativeWrapper:Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v3

    .line 294
    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getAction()I

    move-result v6

    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getEventTimeNanos()J

    move-result-wide v7

    .line 293
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;->writeDpadKeyEvent(JIIJ)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 295
    :goto_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_10

    throw p0
.end method

.method public sendKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z
    .registers 12

    .line 299
    iget-object v1, p0, Lcom/android/server/input/VirtualInputDeviceController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 300
    :try_start_3
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;

    if-nez p1, :cond_13

    const/4 p0, 0x0

    .line 303
    monitor-exit v1

    return p0

    :catchall_10
    move-exception v0

    move-object p0, v0

    goto :goto_2b

    .line 305
    :cond_13
    iget-object v2, p0, Lcom/android/server/input/VirtualInputDeviceController;->mNativeWrapper:Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v3

    .line 306
    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getAction()I

    move-result v6

    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getEventTimeNanos()J

    move-result-wide v7

    .line 305
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;->writeKeyEvent(JIIJ)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 307
    :goto_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_10

    throw p0
.end method

.method public sendMouseButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z
    .registers 12

    .line 311
    iget-object v1, p0, Lcom/android/server/input/VirtualInputDeviceController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 312
    :try_start_3
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;

    if-nez p1, :cond_13

    const/4 p0, 0x0

    .line 315
    monitor-exit v1

    return p0

    :catchall_10
    move-exception v0

    move-object p0, v0

    goto :goto_2b

    .line 317
    :cond_13
    iget-object v2, p0, Lcom/android/server/input/VirtualInputDeviceController;->mNativeWrapper:Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v3

    .line 318
    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseButtonEvent;->getButtonCode()I

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseButtonEvent;->getAction()I

    move-result v6

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseButtonEvent;->getEventTimeNanos()J

    move-result-wide v7

    .line 317
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;->writeButtonEvent(JIIJ)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 319
    :goto_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_10

    throw p0
.end method

.method public sendMouseRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z
    .registers 12

    .line 338
    iget-object v1, p0, Lcom/android/server/input/VirtualInputDeviceController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 339
    :try_start_3
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;

    if-nez p1, :cond_13

    const/4 p0, 0x0

    .line 342
    monitor-exit v1

    return p0

    :catchall_10
    move-exception v0

    move-object p0, v0

    goto :goto_2b

    .line 344
    :cond_13
    iget-object v2, p0, Lcom/android/server/input/VirtualInputDeviceController;->mNativeWrapper:Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v3

    .line 345
    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseRelativeEvent;->getRelativeX()F

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseRelativeEvent;->getRelativeY()F

    move-result v6

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseRelativeEvent;->getEventTimeNanos()J

    move-result-wide v7

    .line 344
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;->writeRelativeEvent(JFFJ)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 346
    :goto_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_10

    throw p0
.end method

.method public sendMouseScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z
    .registers 12

    .line 350
    iget-object v1, p0, Lcom/android/server/input/VirtualInputDeviceController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 351
    :try_start_3
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;

    if-nez p1, :cond_13

    const/4 p0, 0x0

    .line 354
    monitor-exit v1

    return p0

    :catchall_10
    move-exception v0

    move-object p0, v0

    goto :goto_2b

    .line 356
    :cond_13
    iget-object v2, p0, Lcom/android/server/input/VirtualInputDeviceController;->mNativeWrapper:Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v3

    .line 357
    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseScrollEvent;->getXAxisMovement()F

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseScrollEvent;->getYAxisMovement()F

    move-result v6

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseScrollEvent;->getEventTimeNanos()J

    move-result-wide v7

    .line 356
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;->writeScrollEvent(JFFJ)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 358
    :goto_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_10

    throw p0
.end method

.method public sendRotaryEncoderScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;)Z
    .registers 11

    .line 416
    iget-object v1, p0, Lcom/android/server/input/VirtualInputDeviceController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 417
    :try_start_3
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;

    if-nez p1, :cond_13

    const/4 p0, 0x0

    .line 420
    monitor-exit v1

    return p0

    :catchall_10
    move-exception v0

    move-object p0, v0

    goto :goto_27

    .line 422
    :cond_13
    iget-object v2, p0, Lcom/android/server/input/VirtualInputDeviceController;->mNativeWrapper:Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;

    .line 423
    invoke-virtual {p1}, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;->getScrollAmount()F

    move-result v5

    .line 424
    invoke-virtual {p2}, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;->getEventTimeNanos()J

    move-result-wide v6

    .line 422
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;->writeRotaryEncoderScrollEvent(JFJ)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 425
    :goto_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_10

    throw p0
.end method

.method public sendStylusButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusButtonEvent;)Z
    .registers 12

    .line 403
    iget-object v1, p0, Lcom/android/server/input/VirtualInputDeviceController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 404
    :try_start_3
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;

    if-nez p1, :cond_13

    const/4 p0, 0x0

    .line 407
    monitor-exit v1

    return p0

    :catchall_10
    move-exception v0

    move-object p0, v0

    goto :goto_2b

    .line 409
    :cond_13
    iget-object v2, p0, Lcom/android/server/input/VirtualInputDeviceController;->mNativeWrapper:Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v3

    .line 410
    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusButtonEvent;->getButtonCode()I

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusButtonEvent;->getAction()I

    move-result v6

    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusButtonEvent;->getEventTimeNanos()J

    move-result-wide v7

    .line 409
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;->writeStylusButtonEvent(JIIJ)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 411
    :goto_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_10

    throw p0
.end method

.method public sendStylusMotionEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusMotionEvent;)Z
    .registers 17

    .line 389
    iget-object v1, p0, Lcom/android/server/input/VirtualInputDeviceController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 390
    :try_start_3
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;

    if-nez p1, :cond_13

    const/4 p0, 0x0

    .line 393
    monitor-exit v1

    return p0

    :catchall_10
    move-exception v0

    move-object p0, v0

    goto :goto_3f

    .line 395
    :cond_13
    iget-object v2, p0, Lcom/android/server/input/VirtualInputDeviceController;->mNativeWrapper:Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v3

    .line 396
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getToolType()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getX()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getY()I

    move-result v8

    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getPressure()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getTiltX()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getTiltY()I

    move-result v11

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getEventTimeNanos()J

    move-result-wide v12

    .line 395
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;->writeStylusMotionEvent(JIIIIIIIJ)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 399
    :goto_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_10

    throw p0
.end method

.method public sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z
    .registers 17

    .line 323
    iget-object v1, p0, Lcom/android/server/input/VirtualInputDeviceController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 324
    :try_start_3
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;

    if-nez p1, :cond_13

    const/4 p0, 0x0

    .line 327
    monitor-exit v1

    return p0

    :catchall_10
    move-exception v0

    move-object p0, v0

    goto :goto_3f

    .line 329
    :cond_13
    iget-object v2, p0, Lcom/android/server/input/VirtualInputDeviceController;->mNativeWrapper:Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v3

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualTouchEvent;->getPointerId()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualTouchEvent;->getToolType()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualTouchEvent;->getAction()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualTouchEvent;->getX()F

    move-result v8

    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualTouchEvent;->getY()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualTouchEvent;->getPressure()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualTouchEvent;->getMajorAxisSize()F

    move-result v11

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualTouchEvent;->getEventTimeNanos()J

    move-result-wide v12

    .line 329
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/input/VirtualInputDeviceController$NativeWrapper;->writeTouchEvent(JIIIFFFFJ)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 333
    :goto_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_10

    throw p0
.end method

.method public final setUniqueIdAssociation(ILjava/lang/String;)V
    .registers 4

    .line 280
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 281
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 282
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 283
    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/input/InputManagerService;->addUniqueIdAssociationByPort(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterInputDevice(Landroid/os/IBinder;)V
    .registers 5

    .line 213
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/VirtualInputDeviceController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;

    if-nez v1, :cond_17

    .line 217
    const-string p0, "VirtualInputController"

    const-string p1, "Could not unregister input device for given token."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    :catchall_15
    move-exception p0

    goto :goto_21

    .line 219
    :cond_17
    new-instance v2, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/input/VirtualInputDeviceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/VirtualInputDeviceController;Landroid/os/IBinder;Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 222
    :goto_1f
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_15

    throw p0
.end method

.method public final validateDeviceName(Ljava/lang/String;)V
    .registers 5

    .line 265
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 266
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/input/VirtualInputDeviceController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 267
    iget-object v2, p0, Lcom/android/server/input/VirtualInputDeviceController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;

    invoke-static {v2}, Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;->-$$Nest$fgetmName(Lcom/android/server/input/VirtualInputDeviceController$InputDeviceDescriptor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 268
    :cond_21
    new-instance p0, Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input device name already in use: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_38
    move-exception p0

    goto :goto_3c

    .line 272
    :cond_3a
    monitor-exit v0

    return-void

    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_4 .. :try_end_3d} :catchall_38

    throw p0
.end method
