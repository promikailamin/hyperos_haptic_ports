.class public Lcom/android/server/vibrator/VibratorController$NativeWrapper;
.super Ljava/lang/Object;
.source "VibratorController.java"


# instance fields
.field public mNativePtr:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 478
    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    return-void
.end method

.method private static native alwaysOnDisable(JJ)V
.end method

.method private static native alwaysOnEnable(JJJJ)V
.end method

.method private static native getInfo(JLandroid/os/VibratorInfo$Builder;)Z
.end method

.method private static native getNativeFinalizer()J
.end method

.method private static native nativeInit(ILcom/android/server/vibrator/HalVibrator$Callbacks;)J
.end method

.method private static native off(J)V
.end method

.method private static native on(JJJJ)J
.end method

.method private static native performComposedEffect(J[Landroid/os/vibrator/PrimitiveSegment;JJ)J
.end method

.method private static native performEffect(JJJJJ)J
.end method

.method private static native performPwleEffect(J[Landroid/os/vibrator/RampSegment;IJJ)J
.end method

.method private static native performPwleV2Effect(J[Landroid/os/vibrator/PwlePoint;JJ)J
.end method

.method private static native performVendorEffect(JLandroid/os/Parcel;JFFJJ)J
.end method

.method private static native setAmplitude(JF)V
.end method

.method private static native setExternalControl(JZ)V
.end method


# virtual methods
.method public alwaysOnDisable(J)V
    .registers 5

    .line 548
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnDisable(JJ)V

    return-void
.end method

.method public alwaysOnEnable(JJJ)V
    .registers 15

    .line 543
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnEnable(JJJJ)V

    return-void
.end method

.method public compose([Landroid/os/vibrator/PrimitiveSegment;JJ)J
    .registers 13

    .line 522
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performComposedEffect(J[Landroid/os/vibrator/PrimitiveSegment;JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public composePwle([Landroid/os/vibrator/RampSegment;IJJ)J
    .registers 15

    .line 528
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performPwleEffect(J[Landroid/os/vibrator/RampSegment;IJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public composePwleV2([Landroid/os/vibrator/PwlePoint;JJ)J
    .registers 13

    .line 533
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performPwleV2Effect(J[Landroid/os/vibrator/PwlePoint;JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getInfo(Landroid/os/VibratorInfo$Builder;)Z
    .registers 4

    .line 555
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getInfo(JLandroid/os/VibratorInfo$Builder;)Z

    move-result p0

    return p0
.end method

.method public init(ILcom/android/server/vibrator/HalVibrator$Callbacks;)V
    .registers 5

    .line 482
    invoke-static {p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->nativeInit(ILcom/android/server/vibrator/HalVibrator$Callbacks;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    .line 483
    invoke-static {}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getNativeFinalizer()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1f

    .line 486
    const-class v0, Lcom/android/server/vibrator/VibratorController;

    .line 488
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 487
    invoke-static {v0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object p1

    .line 489
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-virtual {p1, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    :cond_1f
    return-void
.end method

.method public off()V
    .registers 3

    .line 500
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->off(J)V

    return-void
.end method

.method public on(JJJ)J
    .registers 15

    .line 495
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->on(JJJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public perform(JJJJ)J
    .registers 19

    .line 510
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-static/range {v0 .. v9}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performEffect(JJJJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public performVendorEffect(Landroid/os/Parcel;JFFJJ)J
    .registers 21

    .line 516
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v10}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performVendorEffect(JLandroid/os/Parcel;JFFJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public setAmplitude(F)V
    .registers 4

    .line 505
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setAmplitude(JF)V

    return-void
.end method

.method public setExternalControl(Z)V
    .registers 4

    .line 538
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setExternalControl(JZ)V

    return-void
.end method
