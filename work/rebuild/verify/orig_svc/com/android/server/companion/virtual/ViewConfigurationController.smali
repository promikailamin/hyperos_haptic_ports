.class public Lcom/android/server/companion/virtual/ViewConfigurationController;
.super Ljava/lang/Object;
.source "ViewConfigurationController.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public mOverlayIdentifier:Landroid/content/om/OverlayIdentifier;

.field public final mOverlayManager:Landroid/content/om/OverlayManager;

.field public final mSettingsWriter:Lcom/android/server/companion/virtual/ViewConfigurationController$SettingsWriter;


# direct methods
.method public static synthetic $r8$lambda$1Zg6uqEdFNsh1yhCPbZk-EQnUds(Lcom/android/server/companion/virtual/ViewConfigurationController;Landroid/content/om/FabricatedOverlay;Landroid/content/om/OverlayIdentifier;II)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/ViewConfigurationController;->lambda$applyResourceOverlays$1(Landroid/content/om/FabricatedOverlay;Landroid/content/om/OverlayIdentifier;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$dw8F40DF9eNJtk5xh5NXfYAkOe0(Lcom/android/server/companion/virtual/ViewConfigurationController;Landroid/content/om/OverlayManagerTransaction;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/ViewConfigurationController;->lambda$close$0(Landroid/content/om/OverlayManagerTransaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z6WvJezQQAbVFwxSSrcQWyg8Pjo(Lcom/android/server/companion/virtual/ViewConfigurationController;ZLandroid/content/ContentResolver;IZI)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/companion/virtual/ViewConfigurationController;->lambda$applySettings$2(ZLandroid/content/ContentResolver;IZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 70
    new-instance v0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/companion/virtual/ViewConfigurationController;-><init>(Landroid/content/Context;Lcom/android/server/companion/virtual/ViewConfigurationController$SettingsWriter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/companion/virtual/ViewConfigurationController$SettingsWriter;)V
    .registers 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/ViewConfigurationController;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/android/server/companion/virtual/ViewConfigurationController;->mOverlayIdentifier:Landroid/content/om/OverlayIdentifier;

    .line 75
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/companion/virtual/ViewConfigurationController;->mContext:Landroid/content/Context;

    .line 76
    const-class v0, Landroid/content/om/OverlayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/om/OverlayManager;

    iput-object p1, p0, Lcom/android/server/companion/virtual/ViewConfigurationController;->mOverlayManager:Landroid/content/om/OverlayManager;

    .line 77
    iput-object p2, p0, Lcom/android/server/companion/virtual/ViewConfigurationController;->mSettingsWriter:Lcom/android/server/companion/virtual/ViewConfigurationController$SettingsWriter;

    return-void
.end method

.method public static isInvalid(F)Z
    .registers 2

    .line 0
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static setResourceFloatValue(Landroid/content/om/FabricatedOverlay;Ljava/lang/String;F)Z
    .registers 4

    .line 196
    invoke-static {p2}, Lcom/android/server/companion/virtual/ViewConfigurationController;->isInvalid(F)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;FLjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setResourceIntValue(Landroid/content/om/FabricatedOverlay;Ljava/lang/String;I)Z
    .registers 5

    int-to-float v0, p2

    .line 211
    invoke-static {v0}, Lcom/android/server/companion/virtual/ViewConfigurationController;->isInvalid(F)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 215
    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;IILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setResourcePixelValue(Landroid/content/om/FabricatedOverlay;Ljava/lang/String;I)Z
    .registers 5

    int-to-float p2, p2

    .line 180
    invoke-static {p2}, Lcom/android/server/companion/virtual/ViewConfigurationController;->isInvalid(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;FILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final applyResourceOverlays(ILandroid/companion/virtual/ViewConfigurationParams;)V
    .registers 12

    .line 112
    new-instance v0, Landroid/content/om/FabricatedOverlay$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vdOverlay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1, v2}, Landroid/content/om/FabricatedOverlay$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Landroid/content/om/FabricatedOverlay$Builder;->build()Landroid/content/om/FabricatedOverlay;

    move-result-object v5

    .line 117
    invoke-virtual {v5}, Landroid/content/om/FabricatedOverlay;->getIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v6

    .line 119
    const-string v0, "dimen/config_viewConfigurationTouchSlop"

    .line 120
    invoke-virtual {p2}, Landroid/companion/virtual/ViewConfigurationParams;->getTouchSlopPixels()I

    move-result v1

    .line 119
    invoke-static {v5, v0, v1}, Lcom/android/server/companion/virtual/ViewConfigurationController;->setResourcePixelValue(Landroid/content/om/FabricatedOverlay;Ljava/lang/String;I)Z

    move-result v0

    .line 121
    const-string v1, "dimen/config_viewMinFlingVelocity"

    .line 122
    invoke-virtual {p2}, Landroid/companion/virtual/ViewConfigurationParams;->getMinimumFlingVelocityPixelsPerSecond()I

    move-result v2

    .line 121
    invoke-static {v5, v1, v2}, Lcom/android/server/companion/virtual/ViewConfigurationController;->setResourcePixelValue(Landroid/content/om/FabricatedOverlay;Ljava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 123
    const-string v1, "dimen/config_viewMaxFlingVelocity"

    .line 124
    invoke-virtual {p2}, Landroid/companion/virtual/ViewConfigurationParams;->getMaximumFlingVelocityPixelsPerSecond()I

    move-result v2

    .line 123
    invoke-static {v5, v1, v2}, Lcom/android/server/companion/virtual/ViewConfigurationController;->setResourcePixelValue(Landroid/content/om/FabricatedOverlay;Ljava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 125
    const-string v1, "dimen/config_scrollFriction"

    .line 126
    invoke-virtual {p2}, Landroid/companion/virtual/ViewConfigurationParams;->getScrollFriction()F

    move-result v2

    .line 125
    invoke-static {v5, v1, v2}, Lcom/android/server/companion/virtual/ViewConfigurationController;->setResourceFloatValue(Landroid/content/om/FabricatedOverlay;Ljava/lang/String;F)Z

    move-result v1

    or-int/2addr v0, v1

    .line 128
    invoke-virtual {p2}, Landroid/companion/virtual/ViewConfigurationParams;->getTapTimeoutDuration()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    long-to-int v1, v1

    .line 127
    const-string v2, "integer/config_tapTimeoutMillis"

    invoke-static {v5, v2, v1}, Lcom/android/server/companion/virtual/ViewConfigurationController;->setResourceIntValue(Landroid/content/om/FabricatedOverlay;Ljava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 130
    invoke-virtual {p2}, Landroid/companion/virtual/ViewConfigurationParams;->getDoubleTapTimeoutDuration()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    long-to-int v1, v1

    .line 129
    const-string v2, "integer/config_doubleTapTimeoutMillis"

    invoke-static {v5, v2, v1}, Lcom/android/server/companion/virtual/ViewConfigurationController;->setResourceIntValue(Landroid/content/om/FabricatedOverlay;Ljava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 132
    invoke-virtual {p2}, Landroid/companion/virtual/ViewConfigurationParams;->getDoubleTapMinTimeDuration()Ljava/time/Duration;

    move-result-object p2

    invoke-virtual {p2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    long-to-int p2, v1

    .line 131
    const-string v1, "integer/config_doubleTapMinTimeMillis"

    invoke-static {v5, v1, p2}, Lcom/android/server/companion/virtual/ViewConfigurationController;->setResourceIntValue(Landroid/content/om/FabricatedOverlay;Ljava/lang/String;I)Z

    move-result p2

    or-int/2addr p2, v0

    if-nez p2, :cond_7f

    return-void

    .line 137
    :cond_7f
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 138
    new-instance v3, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda3;

    move-object v4, p0

    move v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/companion/virtual/ViewConfigurationController;Landroid/content/om/FabricatedOverlay;Landroid/content/om/OverlayIdentifier;II)V

    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final applySettings(ILandroid/companion/virtual/ViewConfigurationParams;)V
    .registers 12

    .line 155
    invoke-virtual {p2}, Landroid/companion/virtual/ViewConfigurationParams;->getLongPressTimeoutDuration()Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    long-to-int v6, v0

    .line 157
    invoke-virtual {p2}, Landroid/companion/virtual/ViewConfigurationParams;->getMultiPressTimeoutDuration()Ljava/time/Duration;

    move-result-object p2

    invoke-virtual {p2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    long-to-int v8, v0

    int-to-float p2, v6

    .line 158
    invoke-static {p2}, Lcom/android/server/companion/virtual/ViewConfigurationController;->isInvalid(F)Z

    move-result v4

    int-to-float p2, v8

    .line 159
    invoke-static {p2}, Lcom/android/server/companion/virtual/ViewConfigurationController;->isInvalid(F)Z

    move-result v7

    if-eqz v4, :cond_21

    if-eqz v7, :cond_21

    return-void

    .line 164
    :cond_21
    iget-object p2, p0, Lcom/android/server/companion/virtual/ViewConfigurationController;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->createDeviceContext(I)Landroid/content/Context;

    move-result-object p1

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 166
    new-instance v2, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda2;

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/virtual/ViewConfigurationController;ZLandroid/content/ContentResolver;IZI)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public applyViewConfigurationParams(ILandroid/companion/virtual/ViewConfigurationParams;)V
    .registers 3

    if-nez p2, :cond_3

    return-void

    .line 89
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/ViewConfigurationController;->applyResourceOverlays(ILandroid/companion/virtual/ViewConfigurationParams;)V

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/ViewConfigurationController;->applySettings(ILandroid/companion/virtual/ViewConfigurationParams;)V

    return-void
.end method

.method public close()V
    .registers 4

    .line 98
    iget-object v0, p0, Lcom/android/server/companion/virtual/ViewConfigurationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/ViewConfigurationController;->mOverlayIdentifier:Landroid/content/om/OverlayIdentifier;

    if-nez v1, :cond_b

    .line 100
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_24

    .line 103
    :cond_b
    new-instance v1, Landroid/content/om/OverlayManagerTransaction$Builder;

    invoke-direct {v1}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    iget-object v2, p0, Lcom/android/server/companion/virtual/ViewConfigurationController;->mOverlayIdentifier:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v1, v2}, Landroid/content/om/OverlayManagerTransaction$Builder;->unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;)Landroid/content/om/OverlayManagerTransaction$Builder;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    move-result-object v1

    .line 105
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_9

    .line 107
    new-instance v0, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/ViewConfigurationController;Landroid/content/om/OverlayManagerTransaction;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void

    .line 105
    :goto_24
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_9

    throw p0
.end method

.method public final synthetic lambda$applyResourceOverlays$1(Landroid/content/om/FabricatedOverlay;Landroid/content/om/OverlayIdentifier;II)V
    .registers 8

    .line 139
    iget-object v0, p0, Lcom/android/server/companion/virtual/ViewConfigurationController;->mOverlayManager:Landroid/content/om/OverlayManager;

    new-instance v1, Landroid/content/om/OverlayManagerTransaction$Builder;

    invoke-direct {v1}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    .line 141
    invoke-virtual {v1, p1}, Landroid/content/om/OverlayManagerTransaction$Builder;->registerFabricatedOverlay(Landroid/content/om/FabricatedOverlay;)Landroid/content/om/OverlayManagerTransaction$Builder;

    move-result-object p1

    new-instance v1, Landroid/content/om/OverlayConstraint;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p4}, Landroid/content/om/OverlayConstraint;-><init>(II)V

    .line 143
    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    .line 142
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZILjava/util/List;)Landroid/content/om/OverlayManagerTransaction$Builder;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    move-result-object p1

    .line 139
    invoke-virtual {v0, p1}, Landroid/content/om/OverlayManager;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    .line 146
    iget-object p1, p0, Lcom/android/server/companion/virtual/ViewConfigurationController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 147
    :try_start_23
    iput-object p2, p0, Lcom/android/server/companion/virtual/ViewConfigurationController;->mOverlayIdentifier:Landroid/content/om/OverlayIdentifier;

    .line 148
    monitor-exit p1

    return-void

    :catchall_27
    move-exception p0

    monitor-exit p1
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public final synthetic lambda$applySettings$2(ZLandroid/content/ContentResolver;IZI)V
    .registers 7

    if-nez p1, :cond_a

    .line 168
    iget-object p1, p0, Lcom/android/server/companion/virtual/ViewConfigurationController;->mSettingsWriter:Lcom/android/server/companion/virtual/ViewConfigurationController$SettingsWriter;

    const-string/jumbo v0, "long_press_timeout"

    invoke-interface {p1, p2, v0, p3}, Lcom/android/server/companion/virtual/ViewConfigurationController$SettingsWriter;->writeSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    :cond_a
    if-nez p4, :cond_14

    .line 172
    iget-object p0, p0, Lcom/android/server/companion/virtual/ViewConfigurationController;->mSettingsWriter:Lcom/android/server/companion/virtual/ViewConfigurationController$SettingsWriter;

    const-string/jumbo p1, "multi_press_timeout"

    invoke-interface {p0, p2, p1, p5}, Lcom/android/server/companion/virtual/ViewConfigurationController$SettingsWriter;->writeSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    :cond_14
    return-void
.end method

.method public final synthetic lambda$close$0(Landroid/content/om/OverlayManagerTransaction;)V
    .registers 2

    .line 107
    iget-object p0, p0, Lcom/android/server/companion/virtual/ViewConfigurationController;->mOverlayManager:Landroid/content/om/OverlayManager;

    invoke-virtual {p0, p1}, Landroid/content/om/OverlayManager;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    return-void
.end method
