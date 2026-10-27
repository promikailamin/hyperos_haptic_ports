.class public final Landroid/companion/virtual/computercontrol/ComputerControlSession;
.super Ljava/lang/Object;
.source "ComputerControlSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListenerProxy;,
        Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListener;,
        Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;,
        Landroid/companion/virtual/computercontrol/ComputerControlSession$Callback;,
        Landroid/companion/virtual/computercontrol/ComputerControlSession$Action;,
        Landroid/companion/virtual/computercontrol/ComputerControlSession$SessionCreationError;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_GO_BACK:I = 0x1

.field public static final blacklist ACTION_REQUEST_ACCESS:Ljava/lang/String; = "android.companion.virtual.computercontrol.action.REQUEST_ACCESS"

.field public static final blacklist ERROR_DEVICE_LOCKED:I = 0x2

.field public static final blacklist ERROR_PERMISSION_DENIED:I = 0x3

.field public static final blacklist ERROR_SESSION_LIMIT_REACHED:I = 0x1

.field public static final blacklist EXTRA_AUTOMATING_PACKAGE_NAME:Ljava/lang/String; = "android.companion.virtual.computercontrol.extra.AUTOMATING_PACKAGE_NAME"


# instance fields
.field private blacklist mImageReader:Landroid/media/ImageReader;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mSession:Landroid/companion/virtual/computercontrol/IComputerControlSession;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mcloseImageReader(Landroid/companion/virtual/computercontrol/ComputerControlSession;)V
    .registers 1

    invoke-direct {p0}, Landroid/companion/virtual/computercontrol/ComputerControlSession;->closeImageReader()V

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/hardware/display/IVirtualDisplayCallback;Landroid/companion/virtual/computercontrol/IComputerControlSession;)V
    .registers 5

    .line 128
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/companion/virtual/computercontrol/ComputerControlSession;-><init>(ILandroid/hardware/display/IVirtualDisplayCallback;Landroid/companion/virtual/computercontrol/IComputerControlSession;Landroid/hardware/display/DisplayManagerGlobal;)V

    .line 129
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/hardware/display/IVirtualDisplayCallback;Landroid/companion/virtual/computercontrol/IComputerControlSession;Landroid/hardware/display/DisplayManagerGlobal;)V
    .registers 7

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession;->mLock:Ljava/lang/Object;

    .line 136
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/companion/virtual/computercontrol/IComputerControlSession;

    iput-object p3, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession;->mSession:Landroid/companion/virtual/computercontrol/IComputerControlSession;

    .line 139
    const/4 p3, -0x1

    if-eq p1, p3, :cond_3a

    .line 140
    invoke-virtual {p4, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object p1

    .line 141
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance p3, Landroid/view/DisplayInfo;

    invoke-direct {p3}, Landroid/view/DisplayInfo;-><init>()V

    .line 143
    invoke-virtual {p1, p3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 145
    iget p1, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget p3, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {p1, p3, v0, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession;->mImageReader:Landroid/media/ImageReader;

    .line 148
    iget-object p1, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p4, p2, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    .line 149
    goto :goto_3d

    .line 150
    :cond_3a
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession;->mImageReader:Landroid/media/ImageReader;

    .line 152
    :goto_3d
    return-void
.end method

.method private blacklist closeImageReader()V
    .registers 3

    .line 379
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession;->mImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_f

    .line 381
    iget-object v1, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 382
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession;->mImageReader:Landroid/media/ImageReader;

    .line 384
    :cond_f
    monitor-exit v0

    .line 385
    return-void

    .line 384
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method


# virtual methods
.method public blacklist clearStabilityListener()V
    .registers 3

    .line 363
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession;->mSession:Landroid/companion/virtual/computercontrol/IComputerControlSession;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/companion/virtual/computercontrol/IComputerControlSession;->setStabilityListener(Landroid/companion/virtual/computercontrol/IComputerControlStabilityListener;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    .line 366
    nop

    .line 367
    return-void

    .line 364
    :catch_8
    move-exception v0

    .line 365
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 2

    .line 372
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession;->mSession:Landroid/companion/virtual/computercontrol/IComputerControlSession;

    invoke-interface {v0}, Landroid/companion/virtual/computercontrol/IComputerControlSession;->close()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 375
    nop

    .line 376
    return-void

    .line 373
    :catch_7
    move-exception v0

    .line 374
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist createInteractiveMirrorDisplay(IILandroid/view/Surface;)Landroid/companion/virtual/computercontrol/InteractiveMirrorDisplay;
    .registers 5

    .line 324
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    if-lez p1, :cond_1d

    if-lez p2, :cond_1d

    .line 329
    :try_start_7
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession;->mSession:Landroid/companion/virtual/computercontrol/IComputerControlSession;

    .line 330
    invoke-interface {v0, p1, p2, p3}, Landroid/companion/virtual/computercontrol/IComputerControlSession;->createInteractiveMirrorDisplay(IILandroid/view/Surface;)Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay;

    move-result-object p1

    .line 331
    if-nez p1, :cond_11

    .line 332
    const/4 p1, 0x0

    return-object p1

    .line 334
    :cond_11
    new-instance p2, Landroid/companion/virtual/computercontrol/InteractiveMirrorDisplay;

    invoke-direct {p2, p1}, Landroid/companion/virtual/computercontrol/InteractiveMirrorDisplay;-><init>(Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_16} :catch_17

    return-object p2

    .line 335
    :catch_17
    move-exception p1

    .line 336
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 326
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Display dimensions must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getScreenshot()Landroid/media/Image;
    .registers 3

    .line 195
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession;->mImageReader:Landroid/media/ImageReader;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_f

    :cond_9
    iget-object v1, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v1

    :goto_f
    monitor-exit v0

    return-object v1

    .line 197
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist getVirtualDisplayId()I
    .registers 2

    .line 260
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession;->mSession:Landroid/companion/virtual/computercontrol/IComputerControlSession;

    invoke-interface {v0}, Landroid/companion/virtual/computercontrol/IComputerControlSession;->getVirtualDisplayId()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 261
    :catch_7
    move-exception v0

    .line 262
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist handOverApplications()V
    .registers 2

    .line 178
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession;->mSession:Landroid/companion/virtual/computercontrol/IComputerControlSession;

    invoke-interface {v0}, Landroid/companion/virtual/computercontrol/IComputerControlSession;->handOverApplications()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 181
    nop

    .line 182
    return-void

    .line 179
    :catch_7
    move-exception v0

    .line 180
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist insertText(Ljava/lang/String;ZZ)V
    .registers 5

    .line 295
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession;->mSession:Landroid/companion/virtual/computercontrol/IComputerControlSession;

    invoke-interface {v0, p1, p2, p3}, Landroid/companion/virtual/computercontrol/IComputerControlSession;->insertText(Ljava/lang/String;ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 298
    nop

    .line 299
    return-void

    .line 296
    :catch_7
    move-exception p1

    .line 297
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist launchApplication(Ljava/lang/String;)V
    .registers 3

    .line 162
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession;->mSession:Landroid/companion/virtual/computercontrol/IComputerControlSession;

    invoke-interface {v0, p1}, Landroid/companion/virtual/computercontrol/IComputerControlSession;->launchApplication(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 165
    nop

    .line 166
    return-void

    .line 163
    :catch_7
    move-exception p1

    .line 164
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist longPress(II)V
    .registers 4

    .line 247
    if-ltz p1, :cond_11

    if-ltz p2, :cond_11

    .line 251
    :try_start_4
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession;->mSession:Landroid/companion/virtual/computercontrol/IComputerControlSession;

    invoke-interface {v0, p1, p2}, Landroid/companion/virtual/computercontrol/IComputerControlSession;->longPress(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    .line 254
    nop

    .line 255
    return-void

    .line 252
    :catch_b
    move-exception p1

    .line 253
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 248
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Long press coordinates must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist performAction(I)V
    .registers 3

    .line 304
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession;->mSession:Landroid/companion/virtual/computercontrol/IComputerControlSession;

    invoke-interface {v0, p1}, Landroid/companion/virtual/computercontrol/IComputerControlSession;->performAction(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 307
    nop

    .line 308
    return-void

    .line 305
    :catch_7
    move-exception p1

    .line 306
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist sendKeyEvent(Landroid/hardware/input/VirtualKeyEvent;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 275
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession;->mSession:Landroid/companion/virtual/computercontrol/IComputerControlSession;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualKeyEvent;

    invoke-interface {v0, p1}, Landroid/companion/virtual/computercontrol/IComputerControlSession;->sendKeyEvent(Landroid/hardware/input/VirtualKeyEvent;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 278
    nop

    .line 279
    return-void

    .line 276
    :catch_d
    move-exception p1

    .line 277
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist sendTouchEvent(Landroid/hardware/input/VirtualTouchEvent;)V
    .registers 3

    .line 313
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession;->mSession:Landroid/companion/virtual/computercontrol/IComputerControlSession;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualTouchEvent;

    invoke-interface {v0, p1}, Landroid/companion/virtual/computercontrol/IComputerControlSession;->sendTouchEvent(Landroid/hardware/input/VirtualTouchEvent;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 316
    nop

    .line 317
    return-void

    .line 314
    :catch_d
    move-exception p1

    .line 315
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setStabilityListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListener;)V
    .registers 5

    .line 348
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :try_start_6
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession;->mSession:Landroid/companion/virtual/computercontrol/IComputerControlSession;

    new-instance v1, Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListenerProxy;

    invoke-direct {v1, p1, p2}, Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListenerProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/computercontrol/ComputerControlSession$StabilityListener;)V

    invoke-interface {v0, v1}, Landroid/companion/virtual/computercontrol/IComputerControlSession;->setStabilityListener(Landroid/companion/virtual/computercontrol/IComputerControlStabilityListener;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_12

    .line 354
    nop

    .line 355
    return-void

    .line 352
    :catch_12
    move-exception p1

    .line 353
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist swipe(IIII)V
    .registers 6

    .line 230
    if-ltz p1, :cond_15

    if-ltz p2, :cond_15

    if-ltz p3, :cond_15

    if-ltz p4, :cond_15

    .line 234
    :try_start_8
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession;->mSession:Landroid/companion/virtual/computercontrol/IComputerControlSession;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/companion/virtual/computercontrol/IComputerControlSession;->swipe(IIII)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    .line 237
    nop

    .line 238
    return-void

    .line 235
    :catch_f
    move-exception p1

    .line 236
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 231
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Swipe coordinates must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist tap(II)V
    .registers 4

    .line 207
    if-ltz p1, :cond_11

    if-ltz p2, :cond_11

    .line 211
    :try_start_4
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSession;->mSession:Landroid/companion/virtual/computercontrol/IComputerControlSession;

    invoke-interface {v0, p1, p2}, Landroid/companion/virtual/computercontrol/IComputerControlSession;->tap(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    .line 214
    nop

    .line 215
    return-void

    .line 212
    :catch_b
    move-exception p1

    .line 213
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 208
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Tap coordinates must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
