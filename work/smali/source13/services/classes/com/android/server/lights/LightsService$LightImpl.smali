.class Lcom/android/server/lights/LightsService$LightImpl;
.super Lcom/android/server/lights/LogicalLight;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LightImpl"
.end annotation


# instance fields
.field private mBrightnessMode:I

.field private mColor:I

.field private mFlashing:Z

.field mHwLight:Landroid/hardware/light/HwLight;

.field private mInitialized:Z

.field private mLastBrightnessMode:I

.field private mLastColor:I

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field private mUseLowPersistenceForVR:Z

.field private mVrModeEnabled:Z

.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method public static synthetic $r8$lambda$HOo5xvbDNj6nMx4NiLxHGXF9Bcw(Lcom/android/server/lights/LightsService$LightImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->stopFlashing()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetColor(Lcom/android/server/lights/LightsService$LightImpl;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->getColor()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSystemLight(Lcom/android/server/lights/LightsService$LightImpl;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->isSystemLight()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Landroid/hardware/light/HwLight;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/lights/LightsService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "hwLight"    # Landroid/hardware/light/HwLight;

    .line 289
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/android/server/lights/LogicalLight;-><init>()V

    .line 290
    iput-object p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    .line 291
    return-void
.end method

.method private getColor()I
    .registers 2

    .line 457
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    return v0
.end method

.method private isSystemLight()Z
    .registers 3

    .line 453
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget-byte v0, v0, Landroid/hardware/light/HwLight;->type:B

    if-ltz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget-byte v0, v0, Landroid/hardware/light/HwLight;->type:B

    const/16 v1, 0x8

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private setLightUnchecked(IIIII)V
    .registers 15
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLightState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget v1, v1, Landroid/hardware/light/HwLight;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 422
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 424
    :try_start_32
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmVintfLights(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 425
    new-instance v0, Landroid/hardware/light/HwLightState;

    invoke-direct {v0}, Landroid/hardware/light/HwLightState;-><init>()V

    .line 426
    .local v0, "lightState":Landroid/hardware/light/HwLightState;
    iput p1, v0, Landroid/hardware/light/HwLightState;->color:I

    .line 427
    int-to-byte v3, p2

    iput-byte v3, v0, Landroid/hardware/light/HwLightState;->flashMode:B

    .line 428
    iput p3, v0, Landroid/hardware/light/HwLightState;->flashOnMs:I

    .line 429
    iput p4, v0, Landroid/hardware/light/HwLightState;->flashOffMs:I

    .line 430
    int-to-byte v3, p5

    iput-byte v3, v0, Landroid/hardware/light/HwLightState;->brightnessMode:B

    .line 431
    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmVintfLights(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/light/ILights;

    iget-object v4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget v4, v4, Landroid/hardware/light/HwLight;->id:I

    invoke-interface {v3, v4, v0}, Landroid/hardware/light/ILights;->setLightState(ILandroid/hardware/light/HwLightState;)V

    .line 432
    .end local v0    # "lightState":Landroid/hardware/light/HwLightState;
    goto :goto_6b

    .line 433
    :cond_5f
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget v3, v0, Landroid/hardware/light/HwLight;->id:I

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v3 .. v8}, Lcom/android/server/lights/LightsService;->setLight_native(IIIIII)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_6b} :catch_6e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_32 .. :try_end_6b} :catch_6e
    .catchall {:try_start_32 .. :try_end_6b} :catchall_6c

    .line 438
    :goto_6b
    goto :goto_77

    :catchall_6c
    move-exception v0

    goto :goto_7c

    .line 435
    :catch_6e
    move-exception v0

    .line 436
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_6f
    const-string v3, "LightsService"

    const-string v4, "Failed issuing setLightState"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_6c

    .line 438
    nop

    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_77
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 439
    nop

    .line 440
    return-void

    .line 438
    :goto_7c
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 439
    throw v0
.end method

.method private shouldBeInLowPersistenceMode()Z
    .registers 2

    .line 443
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mUseLowPersistenceForVR:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private stopFlashing()V
    .registers 7

    .line 388
    monitor-enter p0

    .line 389
    :try_start_1
    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 390
    monitor-exit p0

    .line 391
    return-void

    .line 390
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method


# virtual methods
.method public pulse()V
    .registers 3

    .line 345
    const v0, 0xffffff

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService$LightImpl;->pulse(II)V

    .line 346
    return-void
.end method

.method public pulse(II)V
    .registers 10
    .param p1, "color"    # I
    .param p2, "onMS"    # I

    .line 350
    monitor-enter p0

    .line 351
    :try_start_1
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mFlashing:Z

    if-nez v0, :cond_25

    .line 352
    const/4 v3, 0x2

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 354
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 355
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmH(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/lights/LightsService$LightImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$LightImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/lights/LightsService$LightImpl;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 357
    :cond_25
    monitor-exit p0

    .line 358
    return-void

    .line 357
    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public setBrightness(F)V
    .registers 3
    .param p1, "brightness"    # F

    .line 295
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/lights/LightsService$LightImpl;->setBrightness(FI)V

    .line 296
    return-void
.end method

.method public setBrightness(FI)V
    .registers 11
    .param p1, "brightness"    # F
    .param p2, "brightnessMode"    # I

    .line 300
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 301
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Brightness is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void

    .line 304
    :cond_1f
    monitor-enter p0

    .line 306
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4c

    .line 307
    :try_start_23
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBrightness with LOW_PERSISTENCE unexpected #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget v2, v2, Landroid/hardware/light/HwLight;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    monitor-exit p0

    return-void

    .line 311
    :cond_4c
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v0

    .line 313
    .local v0, "brightnessInt":I
    sget-boolean v1, Lcom/android/server/lights/LightsService;->DEBUG:Z

    if-eqz v1, :cond_77

    .line 314
    const-string v1, "LightsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBrightness: brightnessFloat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", to brightnessInt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_77
    invoke-static {}, Lcom/android/server/lights/LightsManagerStub;->getInstance()Lcom/android/server/lights/LightsManagerStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget v2, v2, Landroid/hardware/light/HwLight;->id:I

    iget v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    invoke-interface {v1, v2, v0, v3}, Lcom/android/server/lights/LightsManagerStub;->brightnessToColor(III)I

    move-result v1

    .line 320
    .local v1, "color":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_93

    .line 321
    and-int/lit16 v1, v0, 0xff

    .line 322
    const/high16 v2, -0x1000000

    shl-int/lit8 v3, v1, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, v1, 0x8

    or-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 325
    :cond_93
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v3, v1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 326
    .end local v0    # "brightnessInt":I
    .end local v1    # "color":I
    monitor-exit p0

    .line 327
    return-void

    .line 326
    :catchall_9e
    move-exception v0

    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_23 .. :try_end_a0} :catchall_9e

    throw v0
.end method

.method public setColor(I)V
    .registers 8
    .param p1, "color"    # I

    .line 331
    monitor-enter p0

    .line 332
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    :try_start_7
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 333
    monitor-exit p0

    .line 334
    return-void

    .line 333
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public setFlashing(IIII)V
    .registers 11
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I

    .line 338
    monitor-enter p0

    .line 339
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    :try_start_7
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 340
    monitor-exit p0

    .line 341
    return-void

    .line 340
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v0
.end method

.method setLightLocked(IIIII)V
    .registers 12
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .line 396
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInLowPersistenceMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 397
    const/4 p5, 0x2

    goto :goto_d

    .line 398
    :cond_8
    const/4 v0, 0x2

    if-ne p5, v0, :cond_d

    .line 399
    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    .line 402
    :cond_d
    :goto_d
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-ne p1, v0, :cond_25

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    if-ne p2, v0, :cond_25

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    if-ne p3, v0, :cond_25

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    if-ne p4, v0, :cond_25

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    if-eq v0, p5, :cond_78

    .line 404
    :cond_25
    sget-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG:Z

    if-eqz v0, :cond_5e

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLight #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget v1, v1, Landroid/hardware/light/HwLight;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": color=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 406
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": brightnessMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    const-string v1, "LightsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_5e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    .line 409
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastColor:I

    .line 410
    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 411
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    .line 412
    iput p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    .line 413
    iput p4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    .line 414
    iput p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    .line 415
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightUnchecked(IIIII)V

    .line 417
    :cond_78
    return-void
.end method

.method public setVrMode(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 369
    monitor-enter p0

    .line 370
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    if-eq v0, p1, :cond_1e

    .line 371
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    .line 373
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 374
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-$$Nest$mgetVrDisplayMode(Lcom/android/server/lights/LightsService;)I

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mUseLowPersistenceForVR:Z

    .line 375
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInLowPersistenceMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 376
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    .line 384
    :cond_1e
    monitor-exit p0

    .line 385
    return-void

    .line 384
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public turnOff()V
    .registers 7

    .line 362
    monitor-enter p0

    .line 363
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_7
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 364
    monitor-exit p0

    .line 365
    return-void

    .line 364
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v0
.end method
