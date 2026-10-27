.class public final Lcom/android/server/lights/LightsService$LightImpl;
.super Lcom/android/server/lights/LogicalLight;
.source "LightsService.java"


# instance fields
.field public mBrightnessMode:I

.field public mColor:I

.field public mFlashing:Z

.field public mHwLight:Landroid/hardware/light/HwLight;

.field public mInitialized:Z

.field public mLastBrightnessMode:I

.field public mLastColor:I

.field public mMode:I

.field public mOffMS:I

.field public mOnMS:I

.field public mUseLowPersistenceForVR:Z

.field public mVrModeEnabled:Z

.field public final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method public static synthetic $r8$lambda$Z3uqkXxEDZLexB4LNlzNFDxneWo(Lcom/android/server/lights/LightsService$LightImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService$LightImpl;->stopFlashing()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHwLight(Lcom/android/server/lights/LightsService$LightImpl;)Landroid/hardware/light/HwLight;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetColor(Lcom/android/server/lights/LightsService$LightImpl;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService$LightImpl;->getColor()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misSystemLight(Lcom/android/server/lights/LightsService$LightImpl;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService$LightImpl;->isSystemLight()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Landroid/hardware/light/HwLight;)V
    .registers 4

    .line 292
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/android/server/lights/LogicalLight;-><init>()V

    .line 293
    iput-object p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Landroid/hardware/light/HwLight;Lcom/android/server/lights/LightsService-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Landroid/hardware/light/HwLight;)V

    return-void
.end method


# virtual methods
.method public final getColor()I
    .registers 1

    .line 447
    iget p0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    return p0
.end method

.method public final isSystemLight()Z
    .registers 2

    .line 443
    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget-byte p0, p0, Landroid/hardware/light/HwLight;->type:B

    if-ltz p0, :cond_c

    const/16 v0, 0x8

    if-ge p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public pulse()V
    .registers 3

    const v0, 0xffffff

    const/4 v1, 0x7

    .line 337
    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService$LightImpl;->pulse(II)V

    return-void
.end method

.method public pulse(II)V
    .registers 10

    .line 342
    monitor-enter p0

    .line 343
    :try_start_1
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-nez v0, :cond_29

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mFlashing:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2b

    if-nez v0, :cond_29

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    const/4 v3, 0x2

    move-object v1, p0

    move v2, p1

    move v4, p2

    .line 344
    :try_start_10
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    const/4 p0, 0x0

    .line 346
    iput p0, v1, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 347
    iget-object p0, v1, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p0}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmH(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object p0

    new-instance p1, Lcom/android/server/lights/LightsService$LightImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, v1}, Lcom/android/server/lights/LightsService$LightImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/lights/LightsService$LightImpl;)V

    int-to-long v2, v4

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2e

    :catchall_26
    move-exception v0

    :goto_27
    move-object p0, v0

    goto :goto_30

    :cond_29
    move-object v1, p0

    goto :goto_2e

    :catchall_2b
    move-exception v0

    move-object v1, p0

    goto :goto_27

    .line 349
    :goto_2e
    monitor-exit v1

    return-void

    :goto_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_26

    throw p0
.end method

.method public setBrightness(F)V
    .registers 3

    const/4 v0, 0x0

    .line 298
    invoke-virtual {p0, p1, v0}, Lcom/android/server/lights/LightsService$LightImpl;->setBrightness(FI)V

    return-void
.end method

.method public setBrightness(FI)V
    .registers 10

    .line 303
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 304
    const-string p0, "LightsService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Brightness is not valid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 307
    :cond_1d
    monitor-enter p0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4a

    .line 310
    :try_start_21
    const-string p2, "LightsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBrightness with LOW_PERSISTENCE unexpected #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget v1, v1, Landroid/hardware/light/HwLight;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": brightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_21 .. :try_end_45} :catchall_46

    return-void

    :catchall_46
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_6a

    .line 314
    :cond_4a
    :try_start_4a
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p1
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_67

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 v0, p1, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    or-int v2, v0, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v6, p2

    .line 317
    :try_start_5f
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 318
    monitor-exit v1

    return-void

    :catchall_64
    move-exception v0

    :goto_65
    move-object p1, v0

    goto :goto_6a

    :catchall_67
    move-exception v0

    move-object v1, p0

    goto :goto_65

    :goto_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_5f .. :try_end_6b} :catchall_64

    throw p1
.end method

.method public setColor(I)V
    .registers 9

    .line 323
    monitor-enter p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    .line 324
    :try_start_7
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 325
    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_c

    throw p0
.end method

.method public setFlashing(IIII)V
    .registers 12

    .line 330
    monitor-enter p0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 331
    :try_start_7
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 332
    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_c

    throw p0
.end method

.method public final setLightLocked(IIIII)V
    .registers 12

    .line 386
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInLowPersistenceMode()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_9

    move v5, v1

    goto :goto_e

    :cond_9
    if-ne p5, v1, :cond_d

    .line 389
    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    :cond_d
    move v5, p5

    .line 392
    :goto_e
    iget-boolean p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    if-eqz p5, :cond_28

    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-ne p1, p5, :cond_28

    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    if-ne p2, p5, :cond_28

    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    if-ne p3, p5, :cond_28

    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    if-ne p4, p5, :cond_28

    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    if-eq p5, v5, :cond_27

    goto :goto_28

    :cond_27
    return-void

    :cond_28
    :goto_28
    const/4 p5, 0x1

    .line 398
    iput-boolean p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    .line 399
    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    iput p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastColor:I

    .line 400
    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 401
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    .line 402
    iput p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    .line 403
    iput p4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    .line 404
    iput v5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 405
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightUnchecked(IIIII)V

    return-void
.end method

.method public final setLightUnchecked(IIIII)V
    .registers 15

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLightState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget v1, v1, Landroid/hardware/light/HwLight;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x20000

    .line 411
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 414
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmVintfLights(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 415
    new-instance v0, Landroid/hardware/light/HwLightState;

    invoke-direct {v0}, Landroid/hardware/light/HwLightState;-><init>()V

    .line 416
    iput p1, v0, Landroid/hardware/light/HwLightState;->color:I

    int-to-byte p1, p2

    .line 417
    iput-byte p1, v0, Landroid/hardware/light/HwLightState;->flashMode:B

    .line 418
    iput p3, v0, Landroid/hardware/light/HwLightState;->flashOnMs:I

    .line 419
    iput p4, v0, Landroid/hardware/light/HwLightState;->flashOffMs:I

    int-to-byte p1, p5

    .line 420
    iput-byte p1, v0, Landroid/hardware/light/HwLightState;->brightnessMode:B

    .line 421
    iget-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmVintfLights(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/light/ILights;

    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget p0, p0, Landroid/hardware/light/HwLight;->id:I

    invoke-interface {p1, p0, v0}, Landroid/hardware/light/ILights;->setLightState(ILandroid/hardware/light/HwLightState;)V

    goto :goto_6c

    :catchall_5a
    move-exception v0

    move-object p0, v0

    goto :goto_7b

    :catch_5d
    move-exception v0

    move-object p0, v0

    goto :goto_70

    .line 423
    :cond_60
    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget v3, p0, Landroid/hardware/light/HwLight;->id:I

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v3 .. v8}, Lcom/android/server/lights/LightsService;->setLight_native(IIIIII)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_6c} :catch_5d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2d .. :try_end_6c} :catch_5d
    .catchall {:try_start_2d .. :try_end_6c} :catchall_5a

    .line 428
    :goto_6c
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 426
    :goto_70
    :try_start_70
    const-string p1, "LightsService"

    const-string p2, "Failed issuing setLightState"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_77
    .catchall {:try_start_70 .. :try_end_77} :catchall_5a

    .line 428
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_7b
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 429
    throw p0
.end method

.method public final shouldBeInLowPersistenceMode()Z
    .registers 2

    .line 433
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mUseLowPersistenceForVR:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final stopFlashing()V
    .registers 8

    .line 380
    monitor-enter p0

    .line 381
    :try_start_1
    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    :try_start_8
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 382
    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    :goto_e
    move-object p0, v0

    goto :goto_13

    :catchall_10
    move-exception v0

    move-object v1, p0

    goto :goto_e

    :goto_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_d

    throw p0
.end method

.method public turnOff()V
    .registers 8

    .line 354
    monitor-enter p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .line 355
    :try_start_7
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 356
    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_c

    throw p0
.end method
