.class Lcom/android/server/vr/Vr2dDisplay;
.super Ljava/lang/Object;
.source "Vr2dDisplay.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_ACTION_SET_MODE:Ljava/lang/String; = "com.android.server.vr.Vr2dDisplay.SET_MODE"

.field private static final DEBUG_ACTION_SET_SURFACE:Ljava/lang/String; = "com.android.server.vr.Vr2dDisplay.SET_SURFACE"

.field private static final DEBUG_EXTRA_MODE_ON:Ljava/lang/String; = "com.android.server.vr.Vr2dDisplay.EXTRA_MODE_ON"

.field private static final DEBUG_EXTRA_SURFACE:Ljava/lang/String; = "com.android.server.vr.Vr2dDisplay.EXTRA_SURFACE"

.field public static final DEFAULT_VIRTUAL_DISPLAY_DPI:I = 0x140

.field public static final DEFAULT_VIRTUAL_DISPLAY_HEIGHT:I = 0x708

.field public static final DEFAULT_VIRTUAL_DISPLAY_WIDTH:I = 0x578

.field private static final DISPLAY_NAME:Ljava/lang/String; = "VR 2D Display"

.field public static final MIN_VR_DISPLAY_DPI:I = 0x1

.field public static final MIN_VR_DISPLAY_HEIGHT:I = 0x1

.field public static final MIN_VR_DISPLAY_WIDTH:I = 0x1

.field private static final STOP_VIRTUAL_DISPLAY_DELAY_MILLIS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "Vr2dDisplay"

.field private static final UNIQUE_DISPLAY_ID:Ljava/lang/String; = "277f1a09-b88d-4d1e-8716-796f114d080b"


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private mBootsToVr:Z

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;

.field private mImageReader:Landroid/media/ImageReader;

.field private mIsPersistentVrModeEnabled:Z

.field private mIsVirtualDisplayAllowed:Z

.field private mIsVrModeOverrideEnabled:Z

.field private mStopVDRunnable:Ljava/lang/Runnable;

.field private mSurface:Landroid/view/Surface;

.field private final mVdLock:Ljava/lang/Object;

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field private mVirtualDisplayDpi:I

.field private mVirtualDisplayHeight:I

.field private mVirtualDisplayWidth:I

.field private final mVrManager:Landroid/service/vr/IVrManager;

.field private final mVrStateCallbacks:Landroid/service/vr/IPersistentVrStateCallbacks;

.field private final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsPersistentVrModeEnabled(Lcom/android/server/vr/Vr2dDisplay;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsPersistentVrModeEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVdLock(Lcom/android/server/vr/Vr2dDisplay;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVirtualDisplay(Lcom/android/server/vr/Vr2dDisplay;)Landroid/hardware/display/VirtualDisplay;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsPersistentVrModeEnabled(Lcom/android/server/vr/Vr2dDisplay;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsPersistentVrModeEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVirtualDisplay(Lcom/android/server/vr/Vr2dDisplay;Landroid/hardware/display/VirtualDisplay;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSurfaceLocked(Lcom/android/server/vr/Vr2dDisplay;Landroid/view/Surface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/Vr2dDisplay;->setSurfaceLocked(Landroid/view/Surface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldRunVirtualDisplay(Lcom/android/server/vr/Vr2dDisplay;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->shouldRunVirtualDisplay()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstopImageReader(Lcom/android/server/vr/Vr2dDisplay;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->stopImageReader()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDisplayId(Lcom/android/server/vr/Vr2dDisplay;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/Vr2dDisplay;->updateDisplayId(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateVirtualDisplay(Lcom/android/server/vr/Vr2dDisplay;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->updateVirtualDisplay()V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/display/DisplayManager;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Landroid/service/vr/IVrManager;)V
    .registers 6
    .param p1, "displayManager"    # Landroid/hardware/display/DisplayManager;
    .param p2, "activityManagerInternal"    # Landroid/app/ActivityManagerInternal;
    .param p3, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p4, "vrManager"    # Landroid/service/vr/IVrManager;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mHandler:Landroid/os/Handler;

    .line 83
    new-instance v0, Lcom/android/server/vr/Vr2dDisplay$1;

    invoke-direct {v0, p0}, Lcom/android/server/vr/Vr2dDisplay$1;-><init>(Lcom/android/server/vr/Vr2dDisplay;)V

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVrStateCallbacks:Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mBootsToVr:Z

    .line 106
    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 107
    iput-object p2, p0, Lcom/android/server/vr/Vr2dDisplay;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 108
    iput-object p3, p0, Lcom/android/server/vr/Vr2dDisplay;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 109
    iput-object p4, p0, Lcom/android/server/vr/Vr2dDisplay;->mVrManager:Landroid/service/vr/IVrManager;

    .line 110
    const/16 v0, 0x578

    iput v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    .line 111
    const/16 v0, 0x708

    iput v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    .line 112
    const/16 v0, 0x140

    iput v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    .line 113
    return-void
.end method

.method private setSurfaceLocked(Landroid/view/Surface;)V
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;

    .line 368
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    if-eq v0, p1, :cond_40

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 369
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting the new surface from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vr2dDisplay"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_37

    .line 371
    invoke-virtual {v0, p1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 373
    :cond_37
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_3e

    .line 374
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 376
    :cond_3e
    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    .line 378
    :cond_40
    return-void
.end method

.method private shouldRunVirtualDisplay()Z
    .registers 2

    .line 413
    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mBootsToVr:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsPersistentVrModeEnabled:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVrModeOverrideEnabled:Z

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private startDebugOnlyBroadcastReceiver(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 182
    return-void
.end method

.method private startImageReader()V
    .registers 5

    .line 386
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    if-nez v0, :cond_42

    .line 387
    iget v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    iget v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    .line 389
    const-string v0, "Vr2dDisplay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VD startImageReader: res = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dpi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_42
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_45
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/vr/Vr2dDisplay;->setSurfaceLocked(Landroid/view/Surface;)V

    .line 394
    monitor-exit v0

    .line 395
    return-void

    .line 394
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_50

    throw v1
.end method

.method private startVirtualDisplay()V
    .registers 11

    .line 281
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_c

    .line 282
    const-string v0, "Vr2dDisplay"

    const-string v1, "Cannot create virtual display because mDisplayManager == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void

    .line 286
    :cond_c
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_f
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_1c

    .line 288
    const-string v1, "Vr2dDisplay"

    const-string v2, "VD already exists, ignoring request"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    monitor-exit v0

    return-void

    .line 292
    :cond_1c
    const/16 v1, 0x40

    .line 293
    .local v1, "flags":I
    or-int/lit16 v1, v1, 0x80

    .line 294
    or-int/lit8 v1, v1, 0x1

    .line 295
    or-int/lit8 v1, v1, 0x8

    .line 296
    or-int/lit16 v1, v1, 0x100

    .line 297
    or-int/lit8 v1, v1, 0x4

    .line 298
    or-int/lit16 v1, v1, 0x400

    .line 300
    new-instance v2, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    const-string v3, "VR 2D Display"

    iget v4, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    iget v5, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    iget v6, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    .line 302
    .local v2, "builder":Landroid/hardware/display/VirtualDisplayConfig$Builder;
    const-string v3, "277f1a09-b88d-4d1e-8716-796f114d080b"

    invoke-virtual {v2, v3}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setUniqueId(Ljava/lang/String;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 303
    invoke-virtual {v2, v1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 304
    iget-object v4, p0, Lcom/android/server/vr/Vr2dDisplay;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v5, 0x0

    .line 305
    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->build()Landroid/hardware/display/VirtualDisplayConfig;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 304
    invoke-virtual/range {v4 .. v9}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;Landroid/content/Context;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 308
    if-eqz v3, :cond_7b

    .line 309
    invoke-virtual {v3}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/vr/Vr2dDisplay;->updateDisplayId(I)V

    .line 311
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->startImageReader()V

    .line 317
    .end local v1    # "flags":I
    .end local v2    # "builder":Landroid/hardware/display/VirtualDisplayConfig$Builder;
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_f .. :try_end_60} :catchall_88

    .line 319
    const-string v0, "Vr2dDisplay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VD created: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void

    .line 313
    .restart local v1    # "flags":I
    .restart local v2    # "builder":Landroid/hardware/display/VirtualDisplayConfig$Builder;
    :cond_7b
    :try_start_7b
    const-string v3, "Vr2dDisplay"

    const-string v4, "Virtual display id is null after createVirtualDisplay"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/android/server/vr/Vr2dDisplay;->updateDisplayId(I)V

    .line 315
    monitor-exit v0

    return-void

    .line 317
    .end local v1    # "flags":I
    .end local v2    # "builder":Landroid/hardware/display/VirtualDisplayConfig$Builder;
    :catchall_88
    move-exception v1

    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_7b .. :try_end_8a} :catchall_88

    throw v1
.end method

.method private startVrModeListener()V
    .registers 4

    .line 188
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVrManager:Landroid/service/vr/IVrManager;

    if-eqz v0, :cond_12

    .line 190
    :try_start_4
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVrStateCallbacks:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->registerPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 193
    goto :goto_12

    .line 191
    :catch_a
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Vr2dDisplay"

    const-string v2, "Could not register VR State listener."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method private stopImageReader()V
    .registers 2

    .line 401
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_a

    .line 402
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    .line 405
    :cond_a
    return-void
.end method

.method private stopVirtualDisplay()V
    .registers 5

    .line 333
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 334
    new-instance v0, Lcom/android/server/vr/Vr2dDisplay$3;

    invoke-direct {v0, p0}, Lcom/android/server/vr/Vr2dDisplay$3;-><init>(Lcom/android/server/vr/Vr2dDisplay;)V

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Ljava/lang/Runnable;

    .line 355
    :cond_b
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 356
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 357
    return-void
.end method

.method private updateDisplayId(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 323
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setVr2dDisplayId(I)V

    .line 324
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->setVr2dDisplayId(I)V

    .line 325
    return-void
.end method

.method private updateVirtualDisplay()V
    .registers 3

    .line 139
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->shouldRunVirtualDisplay()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 140
    const-string v0, "Vr2dDisplay"

    const-string v1, "Attempting to start virtual display"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->startVirtualDisplay()V

    goto :goto_14

    .line 146
    :cond_11
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->stopVirtualDisplay()V

    .line 148
    :goto_14
    return-void
.end method


# virtual methods
.method public getVirtualDisplayId()I
    .registers 3

    .line 261
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_11

    .line 263
    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 267
    .local v1, "virtualDisplayId":I
    monitor-exit v0

    return v1

    .line 269
    .end local v1    # "virtualDisplayId":I
    :cond_11
    monitor-exit v0

    .line 270
    const/4 v0, -0x1

    return v0

    .line 269
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public init(Landroid/content/Context;Z)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bootsToVr"    # Z

    .line 119
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->startVrModeListener()V

    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/vr/Vr2dDisplay;->startDebugOnlyBroadcastReceiver(Landroid/content/Context;)V

    .line 121
    iput-boolean p2, p0, Lcom/android/server/vr/Vr2dDisplay;->mBootsToVr:Z

    .line 122
    if-eqz p2, :cond_d

    .line 125
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->updateVirtualDisplay()V

    .line 127
    :cond_d
    return-void
.end method

.method public setVirtualDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    .registers 11
    .param p1, "displayProperties"    # Landroid/app/Vr2dDisplayProperties;

    .line 207
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_3
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getWidth()I

    move-result v1

    .line 214
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getHeight()I

    move-result v2

    .line 215
    .local v2, "height":I
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getDpi()I

    move-result v3

    .line 216
    .local v3, "dpi":I
    const/4 v4, 0x0

    .line 218
    .local v4, "resized":Z
    const/4 v5, 0x1

    if-lt v1, v5, :cond_4c

    if-lt v2, v5, :cond_4c

    if-ge v3, v5, :cond_18

    goto :goto_4c

    .line 223
    :cond_18
    const-string v6, "Vr2dDisplay"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting width/height/dpi to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iput v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    .line 225
    iput v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    .line 226
    iput v3, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    .line 227
    const/4 v4, 0x1

    goto :goto_78

    .line 220
    :cond_4c
    :goto_4c
    const-string v6, "Vr2dDisplay"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring Width/Height/Dpi values of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_78
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getAddedFlags()I

    move-result v6

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_82

    .line 233
    iput-boolean v5, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    goto :goto_8c

    .line 234
    :cond_82
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getRemovedFlags()I

    move-result v6

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_8c

    .line 237
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    .line 240
    :cond_8c
    :goto_8c
    iget-object v5, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v5, :cond_aa

    if-eqz v4, :cond_aa

    iget-boolean v6, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    if-eqz v6, :cond_aa

    .line 241
    iget v6, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    iget v7, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    iget v8, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    .line 243
    iget-object v5, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    .line 244
    .local v5, "oldImageReader":Landroid/media/ImageReader;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    .line 245
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->startImageReader()V

    .line 246
    invoke-virtual {v5}, Landroid/media/ImageReader;->close()V

    .line 250
    .end local v5    # "oldImageReader":Landroid/media/ImageReader;
    :cond_aa
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->updateVirtualDisplay()V

    .line 251
    .end local v1    # "width":I
    .end local v2    # "height":I
    .end local v3    # "dpi":I
    .end local v4    # "resized":Z
    monitor-exit v0

    .line 252
    return-void

    .line 251
    :catchall_af
    move-exception v1

    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_3 .. :try_end_b1} :catchall_af

    throw v1
.end method
