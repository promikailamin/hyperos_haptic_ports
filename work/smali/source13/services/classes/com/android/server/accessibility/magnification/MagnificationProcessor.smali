.class public Lcom/android/server/accessibility/magnification/MagnificationProcessor;
.super Ljava/lang/Object;
.source "MagnificationProcessor.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MagnificationProcessor"


# instance fields
.field private final mController:Lcom/android/server/accessibility/magnification/MagnificationController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationController;)V
    .registers 2
    .param p1, "controller"    # Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 67
    return-void
.end method

.method private dumpTrackingTypingFocusEnabledState(Ljava/io/PrintWriter;II)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "displayId"    # I
    .param p3, "mode"    # I

    .line 416
    const/4 v0, 0x2

    if-ne p3, v0, :cond_27

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    TrackingTypingFocusEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 418
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isTrackingTypingFocusEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 421
    :cond_27
    return-void
.end method

.method private getIdOfLastServiceToMagnify(II)I
    .registers 4
    .param p1, "mode"    # I
    .param p2, "displayId"    # I

    .line 407
    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    .line 409
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 408
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    .line 409
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getIdOfLastServiceToMagnify(I)I

    move-result v0

    goto :goto_18

    .line 410
    :cond_e
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getIdOfLastServiceToMagnify(I)I

    move-result v0

    .line 407
    :goto_18
    return v0
.end method

.method private isRegistered(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 361
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isRegistered(I)Z

    move-result v0

    return v0
.end method

.method private register(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 368
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->register(I)V

    .line 369
    return-void
.end method

.method private registerDisplayMagnificationIfNeeded(IZ)Z
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "canControlMagnification"    # Z

    .line 353
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->isRegistered(I)Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz p2, :cond_d

    .line 354
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->register(I)V

    .line 355
    const/4 v0, 0x1

    return v0

    .line 357
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private setScaleAndCenterForFullScreenMagnification(IFFFZI)Z
    .registers 15
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "animate"    # Z
    .param p6, "id"    # I

    .line 137
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->isRegistered(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 138
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->register(I)V

    .line 140
    :cond_9
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZI)Z

    move-result v0

    return v0
.end method

.method private transitionModeIfNeeded(ILandroid/accessibilityservice/MagnificationConfig;ZI)Z
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "config"    # Landroid/accessibilityservice/MagnificationConfig;
    .param p3, "animate"    # Z
    .param p4, "id"    # I

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getControllingMode(I)I

    move-result v0

    .line 151
    .local v0, "currentMode":I
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 152
    return v2

    .line 155
    :cond_c
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    move-result v1

    if-ne v0, v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->hasDisableMagnificationCallback(I)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 157
    return v2

    .line 159
    :cond_1b
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/accessibility/magnification/MagnificationController;->transitionMagnificationConfigMode(ILandroid/accessibilityservice/MagnificationConfig;ZI)V

    .line 160
    const/4 v1, 0x1

    return v1
.end method

.method private unregister(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 375
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregister(I)V

    .line 376
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Landroid/view/Display;",
            ">;)V"
        }
    .end annotation

    .line 383
    .local p2, "displaysList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_92

    .line 384
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 386
    .local v1, "displayId":I
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getMagnificationConfig(I)Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v2

    .line 387
    .local v2, "config":Landroid/accessibilityservice/MagnificationConfig;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Magnifier on display#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 390
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    .line 391
    .local v3, "region":Landroid/graphics/Region;
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getCurrentMagnificationRegion(ILandroid/graphics/Region;Z)V

    .line 392
    invoke-virtual {v3}, Landroid/graphics/Region;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_65

    .line 393
    const-string v4, "    Magnification region="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Region;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 395
    :cond_65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    IdOfLastServiceToMagnify="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 396
    invoke-virtual {v2}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    move-result v5

    invoke-direct {p0, v5, v1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getIdOfLastServiceToMagnify(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 395
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    .line 396
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 398
    invoke-virtual {v2}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    move-result v4

    invoke-direct {p0, p1, v1, v4}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->dumpTrackingTypingFocusEnabledState(Ljava/io/PrintWriter;II)V

    .line 383
    .end local v1    # "displayId":I
    .end local v2    # "config":Landroid/accessibilityservice/MagnificationConfig;
    .end local v3    # "region":Landroid/graphics/Region;
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 400
    .end local v0    # "i":I
    :cond_92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    SupportWindowMagnification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 401
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->supportWindowMagnification()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    WindowMagnificationConnectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 403
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getConnectionState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 404
    return-void
.end method

.method public getCenterX(IZ)F
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "canControlMagnification"    # Z

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->registerDisplayMagnificationIfNeeded(IZ)Z

    move-result v0

    .line 188
    .local v0, "registeredJustForThisCall":Z
    :try_start_4
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterX(I)F

    move-result v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_14

    .line 190
    if-eqz v0, :cond_13

    .line 191
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->unregister(I)V

    .line 188
    :cond_13
    return v1

    .line 190
    :catchall_14
    move-exception v1

    if-eqz v0, :cond_1a

    .line 191
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->unregister(I)V

    .line 193
    :cond_1a
    throw v1
.end method

.method public getCenterY(IZ)F
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "canControlMagnification"    # Z

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->registerDisplayMagnificationIfNeeded(IZ)Z

    move-result v0

    .line 210
    .local v0, "registeredJustForThisCall":Z
    :try_start_4
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    move-result v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_14

    .line 212
    if-eqz v0, :cond_13

    .line 213
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->unregister(I)V

    .line 210
    :cond_13
    return v1

    .line 212
    :catchall_14
    move-exception v1

    if-eqz v0, :cond_1a

    .line 213
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->unregister(I)V

    .line 215
    :cond_1a
    throw v1
.end method

.method public getControllingMode(I)I
    .registers 5
    .param p1, "displayId"    # I

    .line 337
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 339
    return v1

    .line 340
    :cond_a
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 342
    return v2

    .line 344
    :cond_14
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getLastMagnificationActivatedMode(I)I

    move-result v0

    if-ne v0, v1, :cond_1d

    .line 346
    goto :goto_1e

    .line 347
    :cond_1d
    move v1, v2

    .line 344
    :goto_1e
    return v1
.end method

.method public getCurrentMagnificationRegion(ILandroid/graphics/Region;Z)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "outRegion"    # Landroid/graphics/Region;
    .param p3, "canControlMagnification"    # Z

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getControllingMode(I)I

    move-result v0

    .line 240
    .local v0, "currentMode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 241
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getFullscreenMagnificationRegion(ILandroid/graphics/Region;Z)V

    goto :goto_17

    .line 242
    :cond_b
    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 243
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getMagnificationSourceBounds(ILandroid/graphics/Region;)V

    .line 246
    :cond_17
    :goto_17
    return-void
.end method

.method public getFullscreenMagnificationRegion(ILandroid/graphics/Region;Z)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "outRegion"    # Landroid/graphics/Region;
    .param p3, "canControlMagnification"    # Z

    .line 257
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->registerDisplayMagnificationIfNeeded(IZ)Z

    move-result v0

    .line 260
    .local v0, "registeredJustForThisCall":Z
    :try_start_4
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getMagnificationRegion(ILandroid/graphics/Region;)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_13

    .line 263
    if-eqz v0, :cond_12

    .line 264
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->unregister(I)V

    .line 267
    :cond_12
    return-void

    .line 263
    :catchall_13
    move-exception v1

    if-eqz v0, :cond_19

    .line 264
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->unregister(I)V

    .line 266
    :cond_19
    throw v1
.end method

.method public getMagnificationConfig(I)Landroid/accessibilityservice/MagnificationConfig;
    .registers 7
    .param p1, "displayId"    # I

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getControllingMode(I)I

    move-result v0

    .line 77
    .local v0, "mode":I
    new-instance v1, Landroid/accessibilityservice/MagnificationConfig$Builder;

    invoke-direct {v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;-><init>()V

    .line 78
    .local v1, "builder":Landroid/accessibilityservice/MagnificationConfig$Builder;
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2e

    .line 79
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 80
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v2

    .line 81
    .local v2, "fullScreenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    invoke-virtual {v1, v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v3

    .line 82
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setScale(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v3

    .line 83
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterX(I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterX(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v3

    .line 84
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterY(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .end local v2    # "fullScreenMagnificationController":Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    goto :goto_53

    .line 85
    :cond_2e
    const/4 v2, 0x2

    if-ne v0, v2, :cond_53

    .line 86
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 87
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v2

    .line 88
    .local v2, "windowMagnificationManager":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    invoke-virtual {v1, v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v3

    .line 89
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getScale(I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setScale(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v3

    .line 90
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getCenterX(I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterX(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v3

    .line 91
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getCenterY(I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterY(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    goto :goto_54

    .line 85
    .end local v2    # "windowMagnificationManager":Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    :cond_53
    :goto_53
    nop

    .line 93
    :goto_54
    invoke-virtual {v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->build()Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v2

    return-object v2
.end method

.method public getScale(I)F
    .registers 3
    .param p1, "displayId"    # I

    .line 171
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result v0

    return v0
.end method

.method public isMagnifying(I)Z
    .registers 4
    .param p1, "displayId"    # I

    .line 320
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getControllingMode(I)I

    move-result v0

    .line 321
    .local v0, "mode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 322
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isMagnifying(I)Z

    move-result v1

    return v1

    .line 323
    :cond_12
    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    .line 324
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isWindowMagnifierEnabled(I)Z

    move-result v1

    return v1

    .line 326
    :cond_20
    const/4 v1, 0x0

    return v1
.end method

.method public resetAllIfNeeded(I)V
    .registers 3
    .param p1, "connectionId"    # I

    .line 311
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetAllIfNeeded(I)V

    .line 312
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->resetAllIfNeeded(I)V

    .line 313
    return-void
.end method

.method public resetCurrentMagnification(IZ)Z
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "animate"    # Z

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getControllingMode(I)I

    move-result v0

    .line 281
    .local v0, "mode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 282
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    move-result v1

    return v1

    .line 283
    :cond_12
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_27

    .line 284
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v1

    .line 285
    if-eqz p2, :cond_21

    sget-object v3, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    goto :goto_22

    :cond_21
    const/4 v3, 0x0

    .line 284
    :goto_22
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v1

    return v1

    .line 287
    :cond_27
    return v2
.end method

.method public resetFullscreenMagnification(IZ)Z
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "animate"    # Z

    .line 300
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    move-result v0

    return v0
.end method

.method public setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;ZI)Z
    .registers 14
    .param p1, "displayId"    # I
    .param p2, "config"    # Landroid/accessibilityservice/MagnificationConfig;
    .param p3, "animate"    # Z
    .param p4, "id"    # I

    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->transitionModeIfNeeded(ILandroid/accessibilityservice/MagnificationConfig;ZI)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 114
    return v1

    .line 117
    :cond_8
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    move-result v0

    .line 118
    .local v0, "configMode":I
    if-nez v0, :cond_12

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getControllingMode(I)I

    move-result v0

    .line 121
    :cond_12
    if-ne v0, v1, :cond_29

    .line 122
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    move-result v4

    .line 123
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    move-result v5

    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    move-result v6

    .line 122
    move-object v2, p0

    move v3, p1

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->setScaleAndCenterForFullScreenMagnification(IFFFZI)Z

    move-result v1

    return v1

    .line 125
    :cond_29
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4c

    .line 126
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v2

    .line 127
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    move-result v4

    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    move-result v5

    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    move-result v6

    .line 128
    if-eqz p3, :cond_43

    sget-object v1, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    goto :goto_44

    :cond_43
    const/4 v1, 0x0

    :goto_44
    move-object v7, v1

    .line 126
    move v3, p1

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-result v1

    return v1

    .line 131
    :cond_4c
    const/4 v1, 0x0

    return v1
.end method
