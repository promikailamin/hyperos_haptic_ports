.class public Lcom/android/server/wallpaper/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"

# interfaces
.implements Lcom/android/server/wallpaper/IWallpaperManagerService;


# static fields
.field public static final LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

.field public static final sWallpaperType:Ljava/util/Map;


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mColorsChangedListeners:Landroid/util/SparseArray;

.field public final mColorsChangedListenersInternal:Ljava/util/Map;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mDefaultWallpaperComponent:Landroid/content/ComponentName;

.field public final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

.field public final mFallbackWallpaperComponent:Landroid/content/ComponentName;

.field public mHandlerThread:Lcom/android/server/ServiceThread;

.field public mHomeWallpaperWaitingForUnlock:Z

.field public final mIPackageManager:Landroid/content/pm/IPackageManager;

.field public final mImageWallpaper:Landroid/content/ComponentName;

.field public mInAmbientMode:Z

.field public mInitialUserSwitch:Z

.field public final mKeyguardObserver:Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

.field public mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

.field public mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

.field public mLocalColorRepo:Lcom/android/server/wallpaper/LocalColorRepository;

.field public final mLock:Ljava/lang/Object;

.field public final mLockWallpaperMap:Landroid/util/SparseArray;

.field public mLockWallpaperWaitingForUnlock:Z

.field public final mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPendingMigrationViaStatic:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;

.field public mShuttingDown:Z

.field public final mUserRestorecon:Landroid/util/SparseBooleanArray;

.field public final mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

.field final mWallpaperDataParser:Lcom/android/server/wallpaper/WallpaperDataParser;

.field final mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

.field public final mWallpaperMap:Landroid/util/SparseArray;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$6W4luAcYHTz2GhajJLIQhbrFu_I(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/wallpaper/WallpaperDescription;IIZZLandroid/os/IRemoteCallback;)Ljava/lang/Boolean;
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$clearWallpaperLocked$7(Landroid/app/wallpaper/WallpaperDescription;IIZZLandroid/os/IRemoteCallback;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7sD2ovY5Ddyfycrp4owOoSrKC1U(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$clearWallpaperLocked$8(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8n62Xa8j8noLW1G26Xy7uM_D1Wc(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .registers 3

    .line 3751
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AmUWA-zo1T459jgxbE0_PDcVzx4(Lcom/android/server/wallpaper/WallpaperManagerInternal$ColorsChangedCallbackInternal;Landroid/app/WallpaperColors;Lcom/android/server/wallpaper/WallpaperData;I)V
    .registers 10

    .line 511
    iget v2, p2, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget v4, p2, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    iget-boolean v5, p2, Lcom/android/server/wallpaper/WallpaperData;->fromForegroundApp:Z

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerInternal$ColorsChangedCallbackInternal;->onColorsChanged(Landroid/app/WallpaperColors;IIIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$FDd0NauyzBfvtg4VpSNj3ma_TLM(ZLcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .registers 3

    .line 2621
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz p1, :cond_12

    xor-int/lit8 p0, p0, 0x1

    .line 2623
    :try_start_6
    invoke-interface {p1, p0}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 2625
    const-string p1, "WallpaperManagerService"

    const-string v0, "Failed to set visibility"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    return-void
.end method

.method public static synthetic $r8$lambda$FzpNUNxWIS3lB0CDOv4XcgobCHY(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .registers 3

    .line 4167
    const-string v0, "     mDisplayId="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4168
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDisplayId:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4169
    const-string v0, "     mToken="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4170
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4171
    const-string v0, "     mEngine="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4172
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GVPGBkCFbn0kkMURbwJ7DguuOIs(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;)V
    .registers 3

    .line 4136
    const-string v0, "  displayId="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4137
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mDisplayId:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4138
    const-string v0, "  mWidth="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4139
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4140
    const-string v0, "  mHeight="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4141
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4142
    const-string v0, "  mPadding="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LAWfrsXZ_goDWjTIc_a8sVDYeN0(IILandroid/os/Bundle;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .registers 10

    .line 2664
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_17

    .line 2666
    :try_start_4
    const-string v1, "android.wallpaper.goingtosleep"

    const/4 v4, -0x1

    move v2, p0

    move v3, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception v0

    move-object p0, v0

    .line 2670
    const-string p1, "WallpaperManagerService"

    const-string p2, "Failed to dispatch COMMAND_GOING_TO_SLEEP"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    return-void
.end method

.method public static synthetic $r8$lambda$LOFc1rjb9gSmkyr5HQ4tPzWIlBc(Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .registers 7

    .line 3351
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_d

    .line 3352
    const-string v1, "android.wallpaper.reapply"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    :cond_d
    return-void

    :catch_e
    move-exception v0

    move-object p0, v0

    .line 3356
    const-string v0, "WallpaperManagerService"

    const-string v1, "Error sending apply message to wallpaper"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic $r8$lambda$LyY25WBWiX2zaHVzwga1cvlWyM8(Lcom/android/server/wallpaper/WallpaperData;Landroid/graphics/Rect;)V
    .registers 3

    .line 2355
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$QDGC4or8HL4hcFAdyAcdxNM0tu0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .registers 3

    .line 731
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_7

    .line 732
    invoke-virtual {p1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->disconnectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    :cond_7
    return-void
.end method

.method public static synthetic $r8$lambda$QJp7AkItXamN0I6nnFgz-pLypWg(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .registers 8

    .line 2749
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_2d

    .line 2751
    :try_start_4
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_14

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v1, p0

    :try_start_d
    invoke-interface/range {v0 .. v5}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception v0

    :goto_12
    move-object p0, v0

    goto :goto_17

    :catch_14
    move-exception v0

    move-object v1, p0

    goto :goto_12

    .line 2754
    :goto_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to dispatch wallpaper command: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WallpaperManagerService"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2d
    return-void
.end method

.method public static synthetic $r8$lambda$RqM18bwSfhszUrY7sPA00h7DUVg(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/view/Display;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$updateFallbackConnection$3(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/view/Display;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VYQjp4PEdDH08z7IiiaBIPAG008(FLcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .registers 3

    .line 2918
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz p1, :cond_10

    .line 2920
    :try_start_4
    invoke-interface {p1, p0}, Landroid/service/wallpaper/IWallpaperEngine;->applyDimming(F)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 2922
    const-string p1, "WallpaperManagerService"

    const-string v0, "Can\'t apply dimming on wallpaper display connector"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    return-void
.end method

.method public static synthetic $r8$lambda$WHuXDsFjXXz8hoFHY0j50D9PujQ(Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .registers 2

    .line 3701
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {p1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->disconnectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XnQR-1xDqKRKK6hNKSBI1igjr0w(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$isFromForegroundApp$19(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$a0Gwa7AgUlkWKCYLhvBBgAo3EXE(IILandroid/os/Bundle;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .registers 10

    .line 2643
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_17

    .line 2645
    :try_start_4
    const-string v1, "android.wallpaper.wakingup"

    const/4 v4, -0x1

    move v2, p0

    move v3, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception v0

    move-object p0, v0

    .line 2648
    const-string p1, "WallpaperManagerService"

    const-string p2, "Failed to dispatch COMMAND_WAKING_UP"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    return-void
.end method

.method public static synthetic $r8$lambda$cNNF-fGDDXw-b3gmBmJlEZmx0Vs(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$updateEngineFlags$17(Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ms_iQPzT5SLERFrd1Tsybu5hc04(I)V
    .registers 4

    .line 1830
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "WallpaperManagerService"

    invoke-direct {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 1831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper_selinux_restorecon-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1833
    :try_start_1b
    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperFiles(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_23
    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 1834
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1835
    invoke-static {v1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z
    :try_end_38
    .catchall {:try_start_1b .. :try_end_38} :catchall_39

    goto :goto_23

    :catchall_39
    move-exception p0

    goto :goto_3f

    .line 1839
    :cond_3b
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :goto_3f
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1840
    throw p0
.end method

.method public static synthetic $r8$lambda$ofGYz2L8HHKCULIPQDgOO99JlXk(Lcom/android/server/wallpaper/WallpaperManagerService;ILjava/lang/Integer;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$errorCheck$5(ILjava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pRbDlKnuXuH2cuSxUxGHR4zK0uM(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$notifyWallpaperColorsChanged$0(Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yXsyFQg9RKOVCjdcKNeP1HV0s74(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$updateFallbackConnection$4(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManager(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/app/ActivityManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/android/server/wallpaper/WallpaperManagerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultWallpaperComponent(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIPackageManager(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/pm/IPackageManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmImageWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInAmbientMode(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInAmbientMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLocalColorRepo(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/LocalColorRepository;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLocalColorRepo:Lcom/android/server/wallpaper/LocalColorRepository;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShuttingDown(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManagerInternal(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmShuttingDown(Lcom/android/server/wallpaper/WallpaperManagerService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mattachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearWallpaperBitmaps(Lcom/android/server/wallpaper/WallpaperManagerService;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperBitmaps(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService;IIZLandroid/os/IRemoteCallback;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(IIZLandroid/os/IRemoteCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdetachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$merrorCheck(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->errorCheck(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetWallpapers(Lcom/android/server/wallpaper/WallpaperManagerService;)[Lcom/android/server/wallpaper/WallpaperData;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpapers()[Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mloadSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService;IZI)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyKeyguardAppearing(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyKeyguardAppearing()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyKeyguardGoingAway(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyKeyguardGoingAway()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyScreenTurnedOn(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyScreenTurnedOn(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyScreenTurningOn(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyScreenTurningOn(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyWallpaperChanged(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperChanged(Lcom/android/server/wallpaper/WallpaperData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperData;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyWallpaperComplete(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperComplete(Lcom/android/server/wallpaper/WallpaperData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monDisplayAddSystemDecorationsInternal(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->onDisplayAddSystemDecorationsInternal(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monDisplayRemovedInternal(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->onDisplayRemovedInternal(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpauseOrResumeRenderingImmediately(Lcom/android/server/wallpaper/WallpaperManagerService;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->pauseOrResumeRenderingImmediately(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateEngineFlags(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateEngineFlags(Lcom/android/server/wallpaper/WallpaperData;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 168
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    const/4 v0, 0x1

    .line 1773
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    .line 1774
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "decode_lock_record"

    .line 1772
    const-string v3, "decode_record"

    invoke-static {v0, v3, v1, v2}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->sWallpaperType:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 15

    .line 1503
    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    .line 214
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 529
    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInitialUserSwitch:Z

    .line 538
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 604
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 605
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    .line 609
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    const/16 v1, -0x2710

    .line 610
    iput v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 612
    new-instance v1, Lcom/android/server/wallpaper/LocalColorRepository;

    invoke-direct {v1}, Lcom/android/server/wallpaper/LocalColorRepository;-><init>()V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLocalColorRepo:Lcom/android/server/wallpaper/LocalColorRepository;

    .line 1574
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardObserver:Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    .line 1505
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 1506
    iput-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    .line 1508
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10404f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1507
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 1509
    invoke-static {p1}, Lcom/android/server/wm/DesktopModeHelper;->isDeviceEligibleForDesktopExperienceWallpaper(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6a

    .line 1511
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1040440

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1510
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaperComponent:Landroid/content/ComponentName;

    goto :goto_6c

    .line 1513
    :cond_6a
    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaperComponent:Landroid/content/ComponentName;

    .line 1515
    :goto_6c
    invoke-static {p1}, Landroid/app/WallpaperManager;->getCmfDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_73

    goto :goto_74

    :cond_73
    move-object v2, v3

    .line 1516
    :goto_74
    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    .line 1517
    const-class v2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1518
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1519
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1520
    const-string v3, "appops"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1521
    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 1522
    invoke-virtual {v3, v0, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1523
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1524
    new-instance v5, Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 1525
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v3, v0, v2, v6}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;-><init>(Landroid/hardware/display/DisplayManager;Landroid/view/WindowManager;Lcom/android/server/wm/WindowManagerInternal;Landroid/content/res/Resources;)V

    iput-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 1526
    new-instance v0, Lcom/android/server/wallpaper/WallpaperCropper;

    invoke-direct {v0, v5}, Lcom/android/server/wallpaper/WallpaperCropper;-><init>(Lcom/android/server/wallpaper/WallpaperDisplayHelper;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

    .line 1527
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 1529
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x111022b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 1532
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1070124

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 1534
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    .line 1535
    array-length v3, p1

    move v5, v1

    :goto_e8
    const-string v6, "WallpaperManagerService"

    if-ge v5, v3, :cond_109

    aget-object v0, p1, v5

    .line 1537
    :try_start_ee
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1539
    invoke-virtual {v2, v0}, Landroid/util/IntArray;->add(I)V
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_fd} :catch_fe

    goto :goto_106

    :catch_fe
    move-exception v0

    .line 1541
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_106
    add-int/lit8 v5, v5, 0x1

    goto :goto_e8

    .line 1544
    :cond_109
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result p1

    if-lez p1, :cond_12d

    .line 1546
    :try_start_10f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    new-instance v8, Lcom/android/server/wallpaper/WallpaperManagerService$2;

    invoke-direct {v8, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$2;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    const-string v11, "android"

    .line 1555
    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v12

    const/4 v9, 0x1

    const/4 v10, 0x2

    .line 1546
    invoke-interface/range {v7 .. v12}, Landroid/app/IActivityManager;->registerUidObserverForUids(Landroid/app/IUidObserver;IILjava/lang/String;[I)Landroid/os/IBinder;
    :try_end_123
    .catch Landroid/os/RemoteException; {:try_start_10f .. :try_end_123} :catch_124

    goto :goto_12d

    :catch_124
    move-exception v0

    move-object p1, v0

    .line 1557
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :cond_12d
    :goto_12d
    new-instance p1, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {p1, p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService-IA;)V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    .line 1563
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    .line 1564
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListenersInternal:Ljava/util/Map;

    .line 1565
    new-instance p1, Lcom/android/server/wallpaper/WallpaperDataParser;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperDataParser;-><init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperDisplayHelper;Lcom/android/server/wallpaper/WallpaperCropper;)V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDataParser:Lcom/android/server/wallpaper/WallpaperDataParser;

    .line 1567
    new-instance p1, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    invoke-direct {p1, p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService-IA;)V

    const-class v0, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    invoke-static {v0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1569
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardObserver:Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    .line 1570
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    return-void
.end method


# virtual methods
.method public addOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V
    .registers 7

    const/4 v0, 0x2

    if-eq p3, v0, :cond_f

    const/4 v0, 0x1

    if-ne p3, v0, :cond_7

    goto :goto_f

    .line 2807
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "which should be either FLAG_LOCK or FLAG_SYSTEM"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2809
    :cond_f
    :goto_f
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getEngine(III)Landroid/service/wallpaper/IWallpaperEngine;

    move-result-object p3

    if-nez p3, :cond_16

    return-void

    .line 2811
    :cond_16
    iget-object p4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 2812
    :try_start_19
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLocalColorRepo:Lcom/android/server/wallpaper/LocalColorRepository;

    invoke-virtual {p0, p1, p2, p5}, Lcom/android/server/wallpaper/LocalColorRepository;->addAreas(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;I)V

    .line 2813
    monitor-exit p4
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_23

    .line 2814
    invoke-interface {p3, p2}, Landroid/service/wallpaper/IWallpaperEngine;->addLocalColorsAreas(Ljava/util/List;)V

    return-void

    :catchall_23
    move-exception p0

    .line 2813
    :try_start_24
    monitor-exit p4
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public final attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 4

    .line 3749
    new-instance p0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v0, "WallpaperManagerService"

    invoke-direct {p0, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 3750
    const-string v0, "WPMS.attachServiceLocked"

    invoke-virtual {p0, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3751
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V

    invoke-virtual {p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 3752
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)Z
    .registers 12

    .line 3464
    new-instance v0, Landroid/app/wallpaper/WallpaperDescription$Builder;

    invoke-direct {v0}, Landroid/app/wallpaper/WallpaperDescription$Builder;-><init>()V

    .line 3465
    invoke-virtual {v0, p1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setComponent(Landroid/content/ComponentName;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->build()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 3464
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperDescriptionLocked(Landroid/app/wallpaper/WallpaperDescription;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result p0

    return p0
.end method

.method public bindWallpaperDescriptionLocked(Landroid/app/wallpaper/WallpaperDescription;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)Z
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    .line 3471
    invoke-virtual/range {p1 .. p1}, Landroid/app/wallpaper/WallpaperDescription;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 3473
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindWallpaperComponentLocked: componentName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WallpaperManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-nez p2, :cond_44

    .line 3475
    iget-object v7, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 3476
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getDescription()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v8

    move-object/from16 v9, p1

    .line 3475
    invoke-virtual {v0, v9, v7, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->changingToSame(Landroid/app/wallpaper/WallpaperDescription;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/app/wallpaper/WallpaperDescription;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 3480
    :try_start_32
    const-string v0, "Changing to the same component, ignoring"

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_43

    .line 3482
    invoke-interface {v2, v4}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3c} :catch_3d

    goto :goto_43

    :catch_3d
    move-exception v0

    .line 3484
    const-string v1, "Failed to send callback"

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_43
    :goto_43
    return v6

    :cond_44
    move-object/from16 v9, p1

    .line 3489
    :cond_46
    new-instance v7, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v7, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 3490
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WPMS.bindWallpaperComponentLocked-"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/4 v8, 0x0

    if-nez v3, :cond_79

    .line 3493
    :try_start_62
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    .line 3494
    invoke-virtual {v9}, Landroid/app/wallpaper/WallpaperDescription;->toBuilder()Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setComponent(Landroid/content/ComponentName;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/wallpaper/WallpaperDescription$Builder;->build()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v9

    goto :goto_79

    :catchall_71
    move-exception v0

    goto/16 :goto_2ba

    :catch_74
    move-exception v0

    move/from16 p2, v8

    goto/16 :goto_292

    .line 3496
    :cond_79
    :goto_79
    iget v15, v1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 3497
    iget-object v10, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v11, 0x1080

    invoke-interface {v10, v3, v11, v12, v15}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v10

    if-nez v10, :cond_a2

    .line 3501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted wallpaper "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is unavailable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_9e} :catch_74
    .catchall {:try_start_62 .. :try_end_9e} :catchall_71

    .line 3635
    invoke-virtual {v7}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return v8

    .line 3504
    :cond_a2
    :try_start_a2
    const-string v11, "android.permission.BIND_WALLPAPER"

    iget-object v12, v10, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_cc

    .line 3505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Selected service does not have android.permission.BIND_WALLPAPER: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_c6

    .line 3511
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_c2} :catch_74
    .catchall {:try_start_a2 .. :try_end_c2} :catchall_71

    .line 3635
    invoke-virtual {v7}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return v8

    .line 3509
    :cond_c6
    :try_start_c6
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3518
    :cond_cc
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.service.wallpaper.WallpaperService"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_18d

    .line 3519
    iget-object v12, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v3, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_18d

    .line 3522
    iget-object v12, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v12, :cond_f2

    .line 3523
    invoke-virtual {v3, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f2

    .line 3527
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    iget-object v12, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v11

    :cond_f2
    move-object v12, v10

    .line 3529
    iget-object v10, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v13, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 3531
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, v12

    move-object v12, v13

    const-wide/16 v13, 0x80

    move-object/from16 v4, v16

    .line 3530
    invoke-interface/range {v10 .. v15}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v10

    .line 3532
    invoke-virtual {v10}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v10

    move v12, v8

    .line 3533
    :goto_10f
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_168

    .line 3534
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 3535
    iget-object v14, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move/from16 v16, v6

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_163

    iget-object v6, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v13, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 3536
    invoke-virtual {v6, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_131
    .catch Landroid/os/RemoteException; {:try_start_c6 .. :try_end_131} :catch_74
    .catchall {:try_start_c6 .. :try_end_131} :catchall_71

    if-eqz v6, :cond_163

    .line 3538
    :try_start_133
    new-instance v4, Landroid/app/WallpaperInfo;

    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4, v6, v10}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_140
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_133 .. :try_end_140} :catch_143
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_140} :catch_141
    .catch Landroid/os/RemoteException; {:try_start_133 .. :try_end_140} :catch_74
    .catchall {:try_start_133 .. :try_end_140} :catchall_71

    goto :goto_16b

    :catch_141
    move-exception v0

    goto :goto_145

    :catch_143
    move-exception v0

    goto :goto_154

    :goto_145
    if-nez p3, :cond_14e

    .line 3549
    :try_start_147
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14a
    .catch Landroid/os/RemoteException; {:try_start_147 .. :try_end_14a} :catch_74
    .catchall {:try_start_147 .. :try_end_14a} :catchall_71

    .line 3635
    invoke-virtual {v7}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return v8

    .line 3547
    :cond_14e
    :try_start_14e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_154
    if-nez p3, :cond_15d

    .line 3543
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_159
    .catch Landroid/os/RemoteException; {:try_start_14e .. :try_end_159} :catch_74
    .catchall {:try_start_14e .. :try_end_159} :catchall_71

    .line 3635
    invoke-virtual {v7}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return v8

    .line 3541
    :cond_15d
    :try_start_15d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_163
    add-int/lit8 v12, v12, 0x1

    move/from16 v6, v16

    goto :goto_10f

    :cond_168
    move/from16 v16, v6

    const/4 v4, 0x0

    :goto_16b
    if-nez v4, :cond_190

    .line 3556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Selected service is not a wallpaper: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_187

    .line 3561
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_183
    .catch Landroid/os/RemoteException; {:try_start_15d .. :try_end_183} :catch_74
    .catchall {:try_start_15d .. :try_end_183} :catchall_71

    .line 3635
    invoke-virtual {v7}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return v8

    .line 3559
    :cond_187
    :try_start_187
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18d
    move/from16 v16, v6

    const/4 v4, 0x0

    :cond_190
    if-eqz v4, :cond_1d0

    .line 3566
    invoke-virtual {v4}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result v6

    if-eqz v6, :cond_1d0

    .line 3567
    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v10, "android.permission.AMBIENT_WALLPAPER"

    .line 3568
    invoke-virtual {v4}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 3567
    invoke-interface {v6, v10, v12, v15}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1d0

    .line 3571
    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v10, "android.hardware.type.watch"

    .line 3572
    invoke-interface {v6, v10, v8}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_1d0

    .line 3573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Selected service does not have android.permission.AMBIENT_WALLPAPER: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_1ca

    .line 3579
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c6
    .catch Landroid/os/RemoteException; {:try_start_187 .. :try_end_1c6} :catch_74
    .catchall {:try_start_187 .. :try_end_1c6} :catchall_71

    .line 3635
    invoke-virtual {v7}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return v8

    .line 3577
    :cond_1ca
    :try_start_1ca
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3584
    :cond_1d0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    const/4 v10, 0x2

    .line 3585
    invoke-virtual {v6, v10}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 3587
    iget-object v10, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v13, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v14, 0x104020b

    .line 3590
    invoke-virtual {v13, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 3588
    invoke-static {v12, v13}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v19

    .line 3591
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v21

    .line 3592
    invoke-static {v15}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v22

    const/16 v18, 0x0

    const/high16 v20, 0x4000000

    move-object/from16 v17, v10

    .line 3587
    invoke-static/range {v17 .. v22}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 3596
    iget-object v10, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget v13, v1, Lcom/android/server/wallpaper/WallpaperData;->userId:I
    :try_end_209
    .catch Landroid/os/RemoteException; {:try_start_1ca .. :try_end_209} :catch_74
    .catchall {:try_start_1ca .. :try_end_209} :catchall_71

    move/from16 p2, v8

    move-object v14, v9

    const-wide/32 v8, 0x10000000

    :try_start_20f
    invoke-interface {v10, v12, v8, v9, v13}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v8

    .line 3598
    new-instance v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-direct {v9, v0, v4, v1, v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperData;I)V

    .line 3599
    invoke-virtual {v11, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3600
    const-string v4, "android.intent.extra.client_label"

    const v10, 0x1040b06

    invoke-virtual {v11, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3602
    const-string v4, "android.intent.extra.client_intent"

    invoke-virtual {v11, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3607
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x11102d1

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_23d

    const v4, 0x22081001

    :goto_23a
    move/from16 v20, v4

    goto :goto_241

    :cond_23d
    const v4, 0x22001001

    goto :goto_23a

    .line 3611
    :goto_241
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 3612
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getHandlerForBindingWallpaperLocked()Landroid/os/Handler;

    move-result-object v21

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v15}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v17, v4

    move-object/from16 v22, v6

    move-object/from16 v19, v9

    move-object/from16 v18, v11

    .line 3611
    invoke-virtual/range {v17 .. v22}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v4

    move-object/from16 v6, v19

    if-nez v4, :cond_27e

    .line 3614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to bind service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_278

    .line 3618
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_272
    .catch Landroid/os/RemoteException; {:try_start_20f .. :try_end_272} :catch_276
    .catchall {:try_start_20f .. :try_end_272} :catchall_71

    .line 3635
    invoke-virtual {v7}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return p2

    :catch_276
    move-exception v0

    goto :goto_292

    .line 3616
    :cond_278
    :try_start_278
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3621
    :cond_27e
    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->maybeDetachLastWallpapers(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 3622
    invoke-virtual {v1, v14}, Lcom/android/server/wallpaper/WallpaperData;->setDescription(Landroid/app/wallpaper/WallpaperDescription;)V

    .line 3623
    iput-object v6, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 3624
    iput-object v2, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 3625
    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateCurrentWallpapers(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 3626
    invoke-virtual {v0, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateFallbackConnection(I)V
    :try_end_28e
    .catch Landroid/os/RemoteException; {:try_start_278 .. :try_end_28e} :catch_276
    .catchall {:try_start_278 .. :try_end_28e} :catchall_71

    .line 3635
    invoke-virtual {v7}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return v16

    .line 3628
    :goto_292
    :try_start_292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_2b4

    .line 3632
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b0
    .catchall {:try_start_292 .. :try_end_2b0} :catchall_71

    .line 3635
    invoke-virtual {v7}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return p2

    .line 3630
    :cond_2b4
    :try_start_2b4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2ba
    .catchall {:try_start_2b4 .. :try_end_2ba} :catchall_71

    .line 3635
    :goto_2ba
    invoke-virtual {v7}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3636
    throw v0
.end method

.method public final changingToSame(Landroid/app/wallpaper/WallpaperDescription;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/app/wallpaper/WallpaperDescription;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    .line 3434
    :cond_4
    invoke-virtual {p1}, Landroid/app/wallpaper/WallpaperDescription;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDefaultComponent(Landroid/content/ComponentName;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_1a

    .line 3435
    invoke-virtual {p3}, Landroid/app/wallpaper/WallpaperDescription;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    .line 3434
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDefaultComponent(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_1a

    return v1

    .line 3439
    :cond_1a
    invoke-virtual {p1, p3}, Landroid/app/wallpaper/WallpaperDescription;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    return v1

    :cond_21
    return v0
.end method

.method public final checkCallerIsSystemOrSystemUi()V
    .registers 3

    .line 3811
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_1d

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_15

    goto :goto_1d

    .line 3813
    :cond_15
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Access denied: only system processes can call this"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    :goto_1d
    return-void
.end method

.method public final checkPermission(Ljava/lang/String;)V
    .registers 4

    .line 3778
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 3779
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Access denied to process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", must have permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearWallpaper(Ljava/lang/String;II)V
    .registers 12

    .line 1949
    const-string v0, "android.permission.SET_WALLPAPER"

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1950
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_50

    .line 1953
    :cond_12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1954
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v6, "clearWallpaper"

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v3, p3

    .line 1953
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 1957
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1958
    :try_start_27
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isFromForegroundApp(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    .line 1959
    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(IIZLandroid/os/IRemoteCallback;)V

    const/4 p1, 0x2

    if-ne p2, p1, :cond_3f

    .line 1962
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    goto :goto_3f

    :catchall_3c
    move-exception v0

    move-object p0, v0

    goto :goto_4e

    :cond_3f
    :goto_3f
    const/4 p1, 0x1

    if-eq p2, p1, :cond_44

    if-nez v0, :cond_4c

    .line 1965
    :cond_44
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wallpaper/WallpaperData;

    .line 1967
    :cond_4c
    monitor-exit v1

    return-void

    :goto_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_27 .. :try_end_4f} :catchall_3c

    throw p0

    :cond_50
    :goto_50
    return-void
.end method

.method public final clearWallpaperBitmaps(II)V
    .registers 4

    .line 1789
    new-instance v0, Lcom/android/server/wallpaper/WallpaperData;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wallpaper/WallpaperData;-><init>(II)V

    .line 1790
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperBitmaps(Lcom/android/server/wallpaper/WallpaperData;)Z

    return-void
.end method

.method public final clearWallpaperBitmaps(Lcom/android/server/wallpaper/WallpaperData;)Z
    .registers 4

    .line 1794
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->sourceExists()Z

    move-result p0

    .line 1795
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->cropExists()Z

    move-result v0

    if-eqz p0, :cond_11

    .line 1796
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_11
    if-eqz v0, :cond_1a

    .line 1797
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1a
    if-nez p0, :cond_21

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x1

    return p0
.end method

.method public final clearWallpaperLocked(IIZLandroid/os/IRemoteCallback;)V
    .registers 15

    .line 1974
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 1975
    invoke-virtual {p0, p2, v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZI)V

    .line 1977
    :cond_d
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/wallpaper/WallpaperData;

    .line 1978
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_25

    if-nez v0, :cond_25

    goto/16 :goto_b6

    :cond_25
    const/4 v9, 0x0

    .line 1989
    :try_start_26
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq p2, v4, :cond_36

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->hasCrossUserPermission()Z

    move-result v4

    if-nez v4, :cond_36

    goto/16 :goto_b6

    :catch_32
    move-exception v0

    move-object p1, v0

    goto/16 :goto_9a

    .line 1992
    :cond_36
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v5, p1, 0x2

    if-lez v5, :cond_44

    if-eqz v0, :cond_44

    .line 1993
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_44
    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_4b

    .line 1994
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1995
    :cond_4b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v5, v2

    :goto_50
    if-ge v5, v0, :cond_6c

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/wallpaper/WallpaperData;

    .line 1996
    invoke-virtual {p0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperBitmaps(Lcom/android/server/wallpaper/WallpaperData;)Z

    .line 1998
    iget-object v7, v6, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    .line 1999
    iget-object v7, v6, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v7, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    const/high16 v7, 0x3f800000    # 1.0f

    .line 2000
    iput v7, v6, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    goto :goto_50

    :cond_6c
    if-ne p1, v3, :cond_73

    .line 2009
    invoke-virtual {v8}, Lcom/android/server/wallpaper/WallpaperData;->getDescription()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v0

    goto :goto_7d

    .line 2012
    :cond_73
    new-instance v0, Landroid/app/wallpaper/WallpaperDescription$Builder;

    invoke-direct {v0}, Landroid/app/wallpaper/WallpaperDescription$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/app/wallpaper/WallpaperDescription$Builder;->build()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v0

    move v1, p1

    :goto_7d
    if-eq p1, v3, :cond_80

    const/4 v2, 0x1

    :cond_80
    move v5, v2

    move-object v2, v0

    .line 2018
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda5;

    move v4, p2

    move v6, p3

    move-object v7, p4

    move v3, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/wallpaper/WallpaperDescription;IIZZLandroid/os/IRemoteCallback;)V

    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_96
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_96} :catch_32

    if-eqz p1, :cond_99

    goto :goto_b6

    :cond_99
    move-object p1, v9

    .line 2029
    :goto_9a
    const-string p2, "Default wallpaper component not found!"

    const-string v2, "WallpaperManagerService"

    invoke-static {v2, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2030
    new-instance p1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, v8, p4}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V

    invoke-static {p1}, Landroid/app/IWallpaperManager$Stub;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    if-eqz p4, :cond_b6

    .line 2036
    :try_start_ab
    invoke-interface {p4, v9}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_ae} :catch_af

    goto :goto_b6

    :catch_af
    move-exception v0

    move-object p0, v0

    .line 2038
    const-string p1, "Failed to notify callback after wallpaper clear"

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b6
    :goto_b6
    return-void
.end method

.method public final detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 6

    if-eqz p1, :cond_77

    .line 3688
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_77

    .line 3692
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    const-string v1, "WallpaperManagerService"

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    .line 3694
    :try_start_d
    invoke-interface {v0, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_17

    :catch_11
    move-exception v0

    .line 3696
    const-string v3, "Error sending reply to wallpaper before disconnect"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3698
    :goto_17
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 3700
    :cond_1b
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v3, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wallpaper/WallpaperData;)V

    invoke-virtual {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 3702
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 3703
    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3705
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmResetRunnable(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3706
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisconnectRunnable(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3708
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmTryToRebindRunnable(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3712
    :try_start_5b
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_62
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5b .. :try_end_62} :catch_63

    goto :goto_69

    :catch_63
    move-exception v0

    .line 3714
    const-string v3, "Error unbinding wallpaper when detaching"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3716
    :goto_69
    iput-object v2, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 3717
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-ne p1, v0, :cond_71

    .line 3718
    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 3720
    :cond_71
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-ne p1, v0, :cond_77

    .line 3721
    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    :cond_77
    return-void
.end method

.method public final dispatchKeyguardCommand(Ljava/lang/String;)V
    .registers 8

    .line 2741
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2742
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getActiveWallpapers()[Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_25

    aget-object v4, v1, v3

    .line 2743
    const-string v5, "android.permission.SUBSCRIBE_TO_KEYGUARD_LOCKED_STATE"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->hasPermission(Lcom/android/server/wallpaper/WallpaperData;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    goto :goto_20

    .line 2748
    :cond_16
    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda22;

    invoke-direct {v5, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda22;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :catchall_23
    move-exception p0

    goto :goto_27

    .line 2759
    :cond_25
    monitor-exit v0

    return-void

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_23

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 4183
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string p3, "WallpaperManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 4185
    :cond_b
    const-string p1, "mDefaultWallpaperComponent="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4186
    const-string p1, "mImageWallpaper="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4188
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4189
    :try_start_22
    const-string p3, "System wallpaper state:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p3, 0x0

    move v0, p3

    .line 4190
    :goto_29
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_41

    .line 4191
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->dumpWallpaper(Lcom/android/server/wallpaper/WallpaperData;Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :catchall_3f
    move-exception p0

    goto :goto_6a

    .line 4193
    :cond_41
    const-string v0, "Lock wallpaper state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4194
    :goto_46
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p3, v0, :cond_5c

    .line 4195
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->dumpWallpaper(Lcom/android/server/wallpaper/WallpaperData;Ljava/io/PrintWriter;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_46

    .line 4197
    :cond_5c
    const-string p3, "Fallback wallpaper state:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4198
    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-eqz p3, :cond_68

    .line 4199
    invoke-virtual {p0, p3, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->dumpWallpaper(Lcom/android/server/wallpaper/WallpaperData;Ljava/io/PrintWriter;)V

    .line 4201
    :cond_68
    monitor-exit p1

    return-void

    :goto_6a
    monitor-exit p1
    :try_end_6b
    .catchall {:try_start_22 .. :try_end_6b} :catchall_3f

    throw p0
.end method

.method public final dumpWallpaper(Lcom/android/server/wallpaper/WallpaperData;Ljava/io/PrintWriter;)V
    .registers 5

    if-nez p1, :cond_8

    .line 4126
    const-string p0, " (null entry)"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 4129
    :cond_8
    const-string v0, " User "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4130
    const-string v0, ": id="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4131
    const-string v0, ": mWhich="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4132
    const-string v0, ": mSystemWasBoth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4133
    const-string v0, ": mBindSource="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4134
    const-string v0, " Display state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4135
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->forEachDisplayData(Ljava/util/function/Consumer;)V

    .line 4144
    const-string p0, "  mCropHint="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4145
    const-string p0, "  mCropHints="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4146
    const-string p0, "  mSampleSize="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p0, p1, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(F)V

    .line 4147
    const-string p0, "  mName="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4148
    const-string p0, "  mAllowBackup="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p1, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4149
    const-string p0, "  mWallpaperComponent="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4150
    const-string p0, "  mWallpaperDimAmount="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p0, p1, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(F)V

    .line 4151
    const-string p0, "  isColorExtracted="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p1, Lcom/android/server/wallpaper/WallpaperData;->mIsColorExtractedFromDim:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4152
    const-string p0, "  mUidToDimAmount:"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 4153
    :goto_a5
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p0, v0, :cond_cc

    .line 4154
    const-string v0, "    UID="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4155
    const-string v0, " dimAmount="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_a5

    .line 4157
    :cond_cc
    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz p0, :cond_110

    .line 4159
    const-string v0, "  Wallpaper connection "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4160
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4161
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4162
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v0, :cond_ef

    .line 4163
    const-string v0, "    mInfo.component="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4164
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4166
    :cond_ef
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda13;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 4174
    const-string v0, "    mService="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4175
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4176
    const-string p0, "    mLastDiedTime="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4177
    iget-wide p0, p1, Lcom/android/server/wallpaper/WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr p0, v0

    invoke-virtual {p2, p0, p1}, Ljava/io/PrintWriter;->println(J)V

    :cond_110
    return-void
.end method

.method public final enforcePackageBelongsToUid(Ljava/lang/String;I)V
    .registers 4

    .line 3797
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->packageBelongsToUid(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 3798
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid package or package does not belong to uid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final errorCheck(I)V
    .registers 4

    .line 1777
    sget-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->sWallpaperType:Ljava/util/Map;

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public finalize()V
    .registers 3

    .line 1649
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    const/4 v0, 0x0

    .line 1650
    :goto_4
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 1651
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperData;

    .line 1652
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1c
    return-void
.end method

.method public final findWallpaperAtDisplay(II)Lcom/android/server/wallpaper/WallpaperData;
    .registers 4

    .line 3025
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_11

    .line 3026
    invoke-virtual {v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 3027
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    return-object p0

    .line 3029
    :cond_11
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wallpaper/WallpaperData;

    return-object p0
.end method

.method public final getActiveWallpapers()[Lcom/android/server/wallpaper/WallpaperData;
    .registers 6

    .line 2763
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    .line 2764
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wallpaper/WallpaperData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    .line 2765
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_1e

    move v3, v1

    goto :goto_1f

    :cond_1e
    move v3, v2

    :goto_1f
    if-eqz p0, :cond_27

    .line 2766
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v4, :cond_27

    move v4, v1

    goto :goto_28

    :cond_27
    move v4, v2

    :goto_28
    if-eqz v3, :cond_34

    if-eqz v4, :cond_34

    const/4 v3, 0x2

    .line 2767
    new-array v3, v3, [Lcom/android/server/wallpaper/WallpaperData;

    aput-object v0, v3, v2

    aput-object p0, v3, v1

    return-object v3

    :cond_34
    if-eqz v3, :cond_3b

    .line 2768
    new-array p0, v1, [Lcom/android/server/wallpaper/WallpaperData;

    aput-object v0, p0, v2

    return-object p0

    :cond_3b
    if-eqz v4, :cond_42

    .line 2769
    new-array v0, v1, [Lcom/android/server/wallpaper/WallpaperData;

    aput-object p0, v0, v2

    return-object v0

    .line 2770
    :cond_42
    new-array p0, v2, [Lcom/android/server/wallpaper/WallpaperData;

    return-object p0
.end method

.method public getAdjustedWallpaperColorsOnDimming(Lcom/android/server/wallpaper/WallpaperData;)Landroid/app/WallpaperColors;
    .registers 6

    .line 3007
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 3008
    :try_start_3
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz v0, :cond_31

    .line 3011
    invoke-virtual {v0}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_31

    iget p1, p1, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_31

    .line 3013
    invoke-virtual {v0}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result p1

    and-int/lit8 p1, p1, -0x4

    .line 3016
    new-instance v1, Landroid/app/WallpaperColors;

    .line 3017
    invoke-virtual {v0}, Landroid/app/WallpaperColors;->getPrimaryColor()Landroid/graphics/Color;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/WallpaperColors;->getSecondaryColor()Landroid/graphics/Color;

    move-result-object v3

    .line 3018
    invoke-virtual {v0}, Landroid/app/WallpaperColors;->getTertiaryColor()Landroid/graphics/Color;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0, p1}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V

    monitor-exit p0

    return-object v1

    :catchall_2f
    move-exception p1

    goto :goto_33

    .line 3020
    :cond_31
    monitor-exit p0

    return-object v0

    .line 3021
    :goto_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_2f

    throw p1
.end method

.method public getBitmapCrop(Landroid/graphics/Point;[ILjava/util/List;)Landroid/graphics/Rect;
    .registers 4

    .line 2405
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCropMap([ILjava/util/List;)Landroid/util/SparseArray;

    move-result-object p2

    .line 2406
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wallpaper/WallpaperCropper;->getDefaultCrops(Landroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;

    move-result-object p0

    .line 2407
    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperCropper;->getTotalCrop(Landroid/util/SparseArray;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getBitmapCrops(Ljava/util/List;IZI)Ljava/util/List;
    .registers 13

    .line 2312
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2313
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getBitmapCrop"

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v2, p4

    .line 2312
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p4

    .line 2314
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2315
    :try_start_15
    const-string v0, "android.permission.READ_WALLPAPER_INTERNAL"

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2a

    .line 2316
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wallpaper/WallpaperData;

    goto :goto_32

    :catchall_26
    move-exception v0

    move-object p0, v0

    goto/16 :goto_ee

    .line 2317
    :cond_2a
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wallpaper/WallpaperData;

    :goto_32
    const/4 p4, 0x0

    if-eqz p2, :cond_ec

    .line 2318
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {p2}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_ec

    .line 2322
    :cond_43
    invoke-static {p2, p3}, Lcom/android/server/wallpaper/WallpaperCropper;->getRelativeCropHints(Lcom/android/server/wallpaper/WallpaperData;Z)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz p3, :cond_5b

    .line 2325
    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_80

    .line 2326
    :cond_5b
    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 2327
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p2, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 2328
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget v5, p2, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    :goto_80
    const/4 v3, 0x0

    .line 2329
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Point;->equals(II)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 2333
    monitor-exit v1

    return-object p4

    .line 2335
    :cond_89
    iget-object p4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

    .line 2336
    invoke-virtual {p4, v0, v2}, Lcom/android/server/wallpaper/WallpaperCropper;->getDefaultCrops(Landroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;

    move-result-object p4

    .line 2337
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    move v5, v3

    .line 2338
    :goto_95
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_b1

    .line 2339
    invoke-virtual {p4, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 2340
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_ae

    .line 2341
    invoke-virtual {p4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_ae
    add-int/lit8 v5, v5, 0x1

    goto :goto_95

    .line 2344
    :cond_b1
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 2345
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c2

    move v3, v5

    .line 2347
    :cond_c2
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 2348
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDefaultDisplayInfo()Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    move-result-object p0

    .line 2349
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_cc
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 2350
    invoke-static {v4, p0, v2, v0, v3}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object v4

    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_cc

    :cond_e0
    if-eqz p3, :cond_ea

    .line 2354
    new-instance p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda3;

    invoke-direct {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wallpaper/WallpaperData;)V

    invoke-interface {p4, p0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2357
    :cond_ea
    monitor-exit v1

    return-object p4

    .line 2319
    :cond_ec
    :goto_ec
    monitor-exit v1

    return-object p4

    .line 2358
    :goto_ee
    monitor-exit v1
    :try_end_ef
    .catchall {:try_start_15 .. :try_end_ef} :catchall_26

    throw p0
.end method

.method public final getCropMap([ILjava/util/List;)Landroid/util/SparseArray;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    :goto_7
    if-nez p1, :cond_a

    goto :goto_b

    :cond_a
    move v1, v0

    :goto_b
    xor-int/2addr v1, v2

    if-nez v1, :cond_3c

    if-eqz p2, :cond_17

    .line 3159
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    array-length v2, p1

    if-ne v1, v2, :cond_3c

    .line 3163
    :cond_17
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    if-eqz p2, :cond_38

    .line 3164
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_38

    .line 3165
    :goto_24
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_38

    .line 3166
    aget v2, p1, v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 3169
    :cond_38
    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->validateCrops(Landroid/util/SparseArray;)V

    return-object v1

    .line 3160
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal crops/orientations lists: must both be null, or both the same size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCurrentBitmapCrops(II)Landroid/os/Bundle;
    .registers 10

    .line 2363
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2364
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getBitmapCrop"

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v2, p2

    .line 2363
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2365
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2366
    :try_start_15
    const-string v0, "android.permission.READ_WALLPAPER_INTERNAL"

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_29

    .line 2367
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wallpaper/WallpaperData;

    goto :goto_31

    :catchall_26
    move-exception v0

    move-object p0, v0

    goto :goto_6b

    .line 2368
    :cond_29
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wallpaper/WallpaperData;

    :goto_31
    if-eqz p1, :cond_68

    .line 2369
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_40

    goto :goto_68

    .line 2372
    :cond_40
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 p2, 0x0

    .line 2373
    :goto_46
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_66

    .line 2374
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2375
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 2376
    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_46

    .line 2378
    :cond_66
    monitor-exit v1

    return-object p0

    :cond_68
    :goto_68
    const/4 p0, 0x0

    .line 2370
    monitor-exit v1

    return-object p0

    .line 2379
    :goto_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_15 .. :try_end_6c} :catchall_26

    throw p0
.end method

.method public getCurrentWallpaperData(II)Lcom/android/server/wallpaper/WallpaperData;
    .registers 5

    .line 1496
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_b

    .line 1498
    :try_start_6
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    goto :goto_d

    :catchall_9
    move-exception p0

    goto :goto_15

    :cond_b
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    .line 1499
    :goto_d
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wallpaper/WallpaperData;

    monitor-exit v0

    return-object p0

    .line 1500
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_9

    throw p0
.end method

.method public final getEngine(III)Landroid/service/wallpaper/IWallpaperEngine;
    .registers 8

    .line 2785
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->findWallpaperAtDisplay(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_8

    return-object v0

    .line 2787
    :cond_8
    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-nez p2, :cond_d

    return-object v0

    .line 2790
    :cond_d
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    const/4 v1, 0x0

    .line 2791
    :goto_11
    :try_start_11
    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_49

    .line 2792
    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    iget v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDisplayId:I

    .line 2793
    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDisplayId:I

    if-eq v2, p3, :cond_3a

    if-eq v3, p1, :cond_3a

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 2795
    :cond_3a
    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    goto :goto_49

    :catchall_47
    move-exception p1

    goto :goto_4b

    .line 2798
    :cond_49
    :goto_49
    monitor-exit p0

    return-object v0

    :goto_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_11 .. :try_end_4c} :catchall_47

    throw p1
.end method

.method public getFutureBitmapCrops(Landroid/graphics/Point;Ljava/util/List;[ILjava/util/List;)Ljava/util/List;
    .registers 7

    .line 2385
    invoke-virtual {p0, p3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCropMap([ILjava/util/List;)Landroid/util/SparseArray;

    move-result-object p3

    .line 2386
    iget-object p4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

    invoke-virtual {p4, p3, p1}, Lcom/android/server/wallpaper/WallpaperCropper;->getDefaultCrops(Landroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;

    move-result-object p3

    .line 2387
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 2388
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 2390
    :goto_1c
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 2391
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDefaultDisplayInfo()Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    move-result-object p0

    .line 2392
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_26
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 2393
    invoke-static {v0, p0, p1, p3, v1}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_3a
    return-object p4
.end method

.method public final getHandlerForBindingWallpaperLocked()Landroid/os/Handler;
    .registers 5

    .line 3644
    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInitialUserSwitch:Z

    if-eqz v0, :cond_b

    .line 3645
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0

    .line 3647
    :cond_b
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-nez v0, :cond_1d

    .line 3648
    new-instance v0, Lcom/android/server/ServiceThread;

    const/4 v1, -0x2

    const/4 v2, 0x1

    const-string v3, "WallpaperManagerService"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 3649
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 3651
    :cond_1d
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public getHeightHint(I)I
    .registers 5

    .line 2167
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2168
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->isValidDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2171
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v1, :cond_25

    .line 2173
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 2174
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    move-result-object p0

    .line 2175
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    monitor-exit v0

    return p0

    :catchall_23
    move-exception p0

    goto :goto_3f

    :cond_25
    const/4 p0, 0x0

    .line 2177
    monitor-exit v0

    return p0

    .line 2169
    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find display with id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2179
    :goto_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_23

    throw p0
.end method

.method public final getHighestDimAmountFromMap(Landroid/util/SparseArray;)F
    .registers 4

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 2963
    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 2964
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_19
    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 1731
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1b

    .line 1734
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1735
    :try_start_b
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wallpaper/WallpaperData;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_18
    move-exception p0

    .line 1736
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw p0

    .line 1732
    :cond_1b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "getName() can only be called from the system process"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWallpaper(Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    .registers 14

    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .line 2244
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IZ)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;
    .registers 3

    .line 460
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    .line 461
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-eqz p0, :cond_11

    .line 463
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperColors(III)Landroid/app/WallpaperColors;
    .registers 12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_f

    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    goto :goto_f

    .line 2973
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "which should be either FLAG_LOCK or FLAG_SYSTEM"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2975
    :cond_f
    :goto_f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v6, "getWallpaperColors"

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v3, p2

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2980
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_33

    .line 2982
    :try_start_27
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wallpaper/WallpaperData;

    goto :goto_34

    :catchall_30
    move-exception v0

    move-object p0, v0

    goto :goto_44

    :cond_33
    move-object p1, v2

    :goto_34
    if-nez p1, :cond_3a

    .line 2988
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->findWallpaperAtDisplay(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p1

    :cond_3a
    if-nez p1, :cond_3e

    .line 2992
    monitor-exit v1

    return-object v2

    .line 2994
    :cond_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_27 .. :try_end_3f} :catchall_30

    .line 2996
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAdjustedWallpaperColorsOnDimming(Lcom/android/server/wallpaper/WallpaperData;)Landroid/app/WallpaperColors;

    move-result-object p0

    return-object p0

    .line 2994
    :goto_44
    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_30

    throw p0
.end method

.method public getWallpaperDimAmount()F
    .registers 4

    .line 2941
    const-string v0, "android.permission.SET_WALLPAPER_DIM_AMOUNT"

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2942
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2943
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperData;

    if-nez v1, :cond_2c

    .line 2945
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/server/wallpaper/WallpaperData;

    if-nez v1, :cond_2c

    .line 2947
    const-string p0, "WallpaperManagerService"

    const-string v1, "getWallpaperDimAmount: wallpaperData is null"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 2948
    monitor-exit v0

    return p0

    :catchall_2a
    move-exception p0

    goto :goto_30

    .line 2951
    :cond_2c
    iget p0, v1, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    monitor-exit v0

    return p0

    .line 2952
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_2a

    throw p0
.end method

.method public getWallpaperIdForUser(II)I
    .registers 10

    .line 2521
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2522
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getWallpaperIdForUser"

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v2, p2

    .line 2521
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_21

    if-ne p1, v1, :cond_19

    goto :goto_21

    .line 2525
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must specify exactly one kind of wallpaper"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    :goto_21
    if-ne p1, v1, :cond_26

    .line 2529
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_28

    :cond_26
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 2530
    :goto_28
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 2531
    :try_start_2b
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wallpaper/WallpaperData;

    if-eqz p1, :cond_3a

    .line 2533
    iget p1, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    monitor-exit p0

    return p1

    :catchall_37
    move-exception v0

    move-object p1, v0

    goto :goto_3d

    .line 2535
    :cond_3a
    monitor-exit p0

    const/4 p0, -0x1

    return p0

    :goto_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_2b .. :try_end_3e} :catchall_37

    throw p1
.end method

.method public getWallpaperInfo(I)Landroid/app/WallpaperInfo;
    .registers 3

    const/4 v0, 0x1

    .line 2444
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperInfoWithFlags(II)Landroid/app/WallpaperInfo;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperInfoFile(I)Landroid/os/ParcelFileDescriptor;
    .registers 5

    .line 2502
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, 0x0

    .line 2504
    :try_start_4
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperDir(I)Ljava/io/File;

    move-result-object p1

    const-string v2, "wallpaper_info.xml"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2506
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_13} :catch_21
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    if-nez p1, :cond_19

    .line 2507
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_17

    return-object v0

    :catchall_17
    move-exception p1

    goto :goto_2b

    :cond_19
    const/high16 p1, 0x10000000

    .line 2510
    :try_start_1b
    invoke-static {v1, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1f} :catch_21
    .catchall {:try_start_1b .. :try_end_1f} :catchall_17

    :try_start_1f
    monitor-exit p0

    return-object p1

    :catch_21
    move-exception p1

    .line 2513
    const-string v1, "WallpaperManagerService"

    const-string v2, "Error getting wallpaper info file"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2515
    monitor-exit p0

    return-object v0

    .line 2516
    :goto_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_17

    throw p1
.end method

.method public getWallpaperInfoWithFlags(II)Landroid/app/WallpaperInfo;
    .registers 4

    const/4 v0, 0x0

    .line 2449
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperInstance(IIZ)Landroid/app/wallpaper/WallpaperInstance;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 2450
    invoke-virtual {p0}, Landroid/app/wallpaper/WallpaperInstance;->getInfo()Landroid/app/WallpaperInfo;

    move-result-object p0

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperInstance(II)Landroid/app/wallpaper/WallpaperInstance;
    .registers 4

    const/4 v0, 0x1

    .line 2456
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperInstance(IIZ)Landroid/app/wallpaper/WallpaperInstance;

    move-result-object p0

    return-object p0
.end method

.method public final getWallpaperInstance(IIZ)Landroid/app/wallpaper/WallpaperInstance;
    .registers 11

    .line 2461
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2462
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getWallpaperInfo"

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v2, p2

    .line 2461
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2463
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_24

    .line 2464
    :try_start_18
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wallpaper/WallpaperData;

    goto :goto_2c

    :catchall_21
    move-exception v0

    move-object p0, v0

    goto :goto_7f

    .line 2465
    :cond_24
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wallpaper/WallpaperData;

    :goto_2c
    const/4 p2, 0x0

    if-eqz p1, :cond_7d

    .line 2466
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-nez v0, :cond_34

    goto :goto_7d

    .line 2468
    :cond_34
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v0, :cond_4f

    .line 2469
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2470
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2469
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    goto :goto_4f

    :cond_4d
    const/4 v2, 0x0

    goto :goto_50

    :cond_4f
    :goto_4f
    const/4 v2, 0x1

    .line 2471
    :goto_50
    const-string v3, "android.permission.READ_WALLPAPER_INTERNAL"

    invoke-virtual {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5f

    if-eqz v2, :cond_5d

    if-nez p3, :cond_5d

    goto :goto_5f

    .line 2481
    :cond_5d
    monitor-exit v1

    return-object p2

    .line 2475
    :cond_5f
    :goto_5f
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->getDescription()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/wallpaper/WallpaperDescription;->toBuilder()Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setCropHints(Landroid/util/SparseArray;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object p0

    if-nez v0, :cond_72

    .line 2478
    invoke-virtual {p0, p2}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setComponent(Landroid/content/ComponentName;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    .line 2479
    :cond_72
    new-instance p1, Landroid/app/wallpaper/WallpaperInstance;

    invoke-virtual {p0}, Landroid/app/wallpaper/WallpaperDescription$Builder;->build()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/app/wallpaper/WallpaperInstance;-><init>(Landroid/app/WallpaperInfo;Landroid/app/wallpaper/WallpaperDescription;)V

    monitor-exit v1

    return-object p1

    .line 2466
    :cond_7d
    :goto_7d
    monitor-exit v1

    return-object p2

    .line 2483
    :goto_7f
    monitor-exit v1
    :try_end_80
    .catchall {:try_start_18 .. :try_end_80} :catchall_21

    throw p0
.end method

.method public getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;
    .registers 7

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 4022
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_8

    :cond_6
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 4023
    :goto_8
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperData;

    if-nez v2, :cond_42

    if-ne p2, v0, :cond_14

    move v2, v0

    goto :goto_15

    :cond_14
    const/4 v2, 0x3

    :goto_15
    const/4 v3, 0x0

    .line 4030
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZI)V

    .line 4031
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperData;

    if-nez v1, :cond_41

    if-ne p2, v0, :cond_2e

    .line 4037
    new-instance p2, Lcom/android/server/wallpaper/WallpaperData;

    invoke-direct {p2, p1, v0}, Lcom/android/server/wallpaper/WallpaperData;-><init>(II)V

    .line 4038
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p2

    .line 4042
    :cond_2e
    const-string p2, "WallpaperManagerService"

    const-string v0, "Didn\'t find wallpaper in non-lock case!"

    invoke-static {p2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4043
    new-instance p2, Lcom/android/server/wallpaper/WallpaperData;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lcom/android/server/wallpaper/WallpaperData;-><init>(II)V

    .line 4044
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p2

    :cond_41
    return-object v1

    :cond_42
    return-object v2
.end method

.method public getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IZ)Landroid/os/ParcelFileDescriptor;
    .registers 15

    .line 2252
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2253
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2254
    const-string v1, "android.permission.READ_WALLPAPER_INTERNAL"

    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 2256
    const-string v1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v2, "android.permission.MANAGE_EXTERNAL_STORAGE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWallpaperWithFeature from package: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 2257
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->hasAppOpPermission(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    move-object p1, v1

    if-eqz p0, :cond_36

    goto :goto_49

    .line 2260
    :cond_36
    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class p2, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    const/4 v1, 0x1

    move v2, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/storage/StorageManager;->checkPermissionReadImages(ZIILjava/lang/String;Ljava/lang/String;)Z

    move v0, v2

    goto :goto_49

    :cond_48
    move-object p1, p0

    .line 2265
    :goto_49
    const-string v5, "getWallpaper"

    const/4 v6, 0x0

    move v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v2, p6

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 p2, 0x1

    const/4 p6, 0x2

    if-eq p4, p2, :cond_63

    if-ne p4, p6, :cond_5b

    goto :goto_63

    .line 2269
    :cond_5b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must specify exactly one kind of wallpaper to read"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2272
    :cond_63
    :goto_63
    iget-object p2, p1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    if-ne p4, p6, :cond_6e

    .line 2274
    :try_start_68
    iget-object p4, p1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_70

    :catchall_6b
    move-exception v0

    move-object p0, v0

    goto :goto_c1

    :cond_6e
    iget-object p4, p1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 2275
    :goto_70
    invoke-virtual {p4, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wallpaper/WallpaperData;

    const/4 p4, 0x0

    if-nez p0, :cond_7b

    .line 2280
    monitor-exit p2

    return-object p4

    .line 2283
    :cond_7b
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    const/4 p6, 0x0

    .line 2284
    invoke-virtual {p1, p6}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    move-result-object p1
    :try_end_82
    .catchall {:try_start_68 .. :try_end_82} :catchall_6b

    if-eqz p5, :cond_96

    .line 2287
    :try_start_84
    const-string p6, "width"

    iget v0, p1, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    invoke-virtual {p5, p6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2288
    const-string p6, "height"

    iget p1, p1, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    invoke-virtual {p5, p6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_96

    :catch_93
    move-exception v0

    move-object p0, v0

    goto :goto_b8

    :cond_96
    :goto_96
    if-eqz p3, :cond_9d

    .line 2291
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1, p3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_9d
    if-eqz p7, :cond_a4

    .line 2294
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object p0

    goto :goto_a8

    :cond_a4
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object p0

    .line 2296
    :goto_a8
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_ac
    .catch Ljava/io/FileNotFoundException; {:try_start_84 .. :try_end_ac} :catch_93
    .catchall {:try_start_84 .. :try_end_ac} :catchall_6b

    if-nez p1, :cond_b0

    .line 2297
    :try_start_ae
    monitor-exit p2
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_6b

    return-object p4

    :cond_b0
    const/high16 p1, 0x10000000

    .line 2300
    :try_start_b2
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_b6
    .catch Ljava/io/FileNotFoundException; {:try_start_b2 .. :try_end_b6} :catch_93
    .catchall {:try_start_b2 .. :try_end_b6} :catchall_6b

    :try_start_b6
    monitor-exit p2

    return-object p0

    .line 2303
    :goto_b8
    const-string p1, "WallpaperManagerService"

    const-string p3, "Error getting wallpaper"

    invoke-static {p1, p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2305
    monitor-exit p2

    return-object p4

    .line 2306
    :goto_c1
    monitor-exit p2
    :try_end_c2
    .catchall {:try_start_b6 .. :try_end_c2} :catchall_6b

    throw p0
.end method

.method public final getWallpapers()[Lcom/android/server/wallpaper/WallpaperData;
    .registers 6

    .line 2774
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    .line 2775
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wallpaper/WallpaperData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    move v3, v1

    goto :goto_1b

    :cond_1a
    move v3, v2

    :goto_1b
    if-eqz p0, :cond_1f

    move v4, v1

    goto :goto_20

    :cond_1f
    move v4, v2

    :goto_20
    if-eqz v3, :cond_2c

    if-eqz v4, :cond_2c

    const/4 v3, 0x2

    .line 2778
    new-array v3, v3, [Lcom/android/server/wallpaper/WallpaperData;

    aput-object v0, v3, v2

    aput-object p0, v3, v1

    return-object v3

    :cond_2c
    if-eqz v3, :cond_33

    .line 2779
    new-array p0, v1, [Lcom/android/server/wallpaper/WallpaperData;

    aput-object v0, p0, v2

    return-object p0

    :cond_33
    if-eqz v4, :cond_3a

    .line 2780
    new-array v0, v1, [Lcom/android/server/wallpaper/WallpaperData;

    aput-object p0, v0, v2

    return-object v0

    .line 2781
    :cond_3a
    new-array p0, v2, [Lcom/android/server/wallpaper/WallpaperData;

    return-object p0
.end method

.method public getWidthHint(I)I
    .registers 5

    .line 2148
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2149
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->isValidDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2152
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v1, :cond_25

    .line 2154
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 2155
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    move-result-object p0

    .line 2156
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    monitor-exit v0

    return p0

    :catchall_23
    move-exception p0

    goto :goto_3f

    :cond_25
    const/4 p0, 0x0

    .line 2158
    monitor-exit v0

    return p0

    .line 2150
    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find display with id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2160
    :goto_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_23

    throw p0
.end method

.method public final hasAppOpPermission(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    .line 2428
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2429
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1d

    const/4 p3, 0x3

    if-eq p2, p3, :cond_18

    const/4 p0, 0x4

    if-eq p2, p0, :cond_1d

    const/4 p0, 0x0

    return p0

    .line 2436
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method public final hasCrossUserPermission()Z
    .registers 2

    .line 2044
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 2045
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public hasNamedWallpaper(Ljava/lang/String;)Z
    .registers 10

    .line 2051
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2052
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->hasCrossUserPermission()Z

    move-result v1

    .line 2058
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2060
    :try_start_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_38

    .line 2062
    :try_start_f
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_6d

    .line 2064
    :try_start_1d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2066
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_24
    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    if-nez v1, :cond_3a

    .line 2067
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v6, :cond_3a

    goto :goto_24

    :catchall_38
    move-exception p0

    goto :goto_72

    .line 2073
    :cond_3a
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v6

    if-eqz v6, :cond_41

    goto :goto_24

    .line 2076
    :cond_41
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wallpaper/WallpaperData;

    if-nez v6, :cond_5e

    .line 2079
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    const/4 v7, 0x3

    invoke-virtual {p0, v6, v5, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZI)V

    .line 2080
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/server/wallpaper/WallpaperData;

    :cond_5e
    if-eqz v6, :cond_24

    .line 2082
    iget-object v4, v6, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    const/4 p0, 0x1

    .line 2083
    monitor-exit v2

    return p0

    .line 2086
    :cond_6b
    monitor-exit v2

    return v5

    :catchall_6d
    move-exception p0

    .line 2064
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2065
    throw p0

    .line 2086
    :goto_72
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_1d .. :try_end_73} :catchall_38

    throw p0
.end method

.method public final hasPermission(Lcom/android/server/wallpaper/WallpaperData;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 2416
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 2418
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 2416
    invoke-interface {p0, p2, v1, p1}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_16

    if-nez p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    return v0

    :catch_16
    move-exception p0

    .line 2421
    const-string p1, "WallpaperManagerService"

    const-string p2, "Failed to check wallpaper service permission"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public final hasPermission(Ljava/lang/String;)Z
    .registers 2

    .line 2411
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public initialize()V
    .registers 6

    .line 1637
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    const/4 v0, 0x0

    .line 1638
    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    const/4 v1, 0x3

    .line 1643
    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZI)V

    .line 1644
    invoke-virtual {p0, v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    return-void
.end method

.method public final initializeFallbackWallpaper()V
    .registers 9

    .line 4071
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-nez v0, :cond_33

    .line 4074
    new-instance v0, Lcom/android/server/wallpaper/WallpaperData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/android/server/wallpaper/WallpaperData;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 4075
    iput-boolean v2, v0, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    .line 4076
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperUtils;->makeWallpaperIdLocked()I

    move-result v1

    iput v1, v0, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 4077
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    sget-object v0, Lcom/android/server/wallpaper/WallpaperData$BindSource;->INITIALIZE_FALLBACK:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    iput-object v0, v6, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 4078
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaperComponent:Landroid/content/ComponentName;

    if-nez v3, :cond_29

    .line 4079
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)Z

    return-void

    :cond_29
    move-object v2, p0

    const/4 p0, 0x3

    .line 4082
    iput p0, v6, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 4083
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)Z

    :cond_33
    return-void
.end method

.method public final isDefaultComponent(Landroid/content/ComponentName;)Z
    .registers 2

    if-eqz p1, :cond_d

    .line 3409
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public final isFromForegroundApp(Ljava/lang/String;)Z
    .registers 3

    .line 3805
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSetWallpaperAllowed(Ljava/lang/String;)Z
    .registers 6

    .line 3831
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 3832
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    .line 3833
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x0

    return p0

    .line 3837
    :cond_1a
    const-class p0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3838
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManagerInternal;

    const/4 v0, 0x1

    if-eqz p0, :cond_2c

    .line 3839
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->isDeviceOrProfileOwnerInCallingUser(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2c

    return v0

    .line 3842
    :cond_2c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    .line 3843
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3845
    :try_start_34
    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    .line 3846
    const-string v3, "no_set_wallpaper"

    invoke-virtual {p1, v3, p0}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0
    :try_end_42
    .catchall {:try_start_34 .. :try_end_42} :catchall_47

    xor-int/2addr p0, v0

    .line 3848
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_47
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3849
    throw p0
.end method

.method public isStaticWallpaper(I)Z
    .registers 4

    .line 2860
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_b

    .line 2861
    :try_start_6
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_d

    :catchall_9
    move-exception p0

    goto :goto_26

    :cond_b
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    :goto_d
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 2862
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wallpaper/WallpaperData;

    if-nez p1, :cond_1a

    const/4 p0, 0x0

    .line 2863
    monitor-exit v0

    return p0

    .line 2864
    :cond_1a
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 2865
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_9

    throw p0
.end method

.method public isWallpaperBackupEligible(II)Z
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 3855
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wallpaper/WallpaperData;

    goto :goto_14

    .line 3856
    :cond_c
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wallpaper/WallpaperData;

    :goto_14
    if-eqz p0, :cond_19

    .line 3857
    iget-boolean p0, p0, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public isWallpaperCompatibleForDisplay(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    .line 626
    :cond_4
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/wm/DesktopModeHelper;->isDeviceEligibleForDesktopExperienceWallpaper(Landroid/content/Context;)Z

    move-result v1

    .line 628
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 630
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 629
    const-string v3, "persist.wm.debug.desktop_support_live_wallpaper"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 634
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    const/4 v4, 0x1

    if-eqz v3, :cond_3b

    if-eqz v1, :cond_36

    if-nez v2, :cond_36

    .line 638
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaperComponent:Landroid/content/ComponentName;

    if-eqz p0, :cond_35

    .line 639
    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_35

    return v4

    :cond_35
    return v0

    .line 641
    :cond_36
    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->supportsMultipleDisplays()Z

    move-result p0

    return p0

    :cond_3b
    if-eqz v1, :cond_46

    .line 646
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperCropper;->isWallpaperCompatibleForDisplay(ILcom/android/server/wallpaper/WallpaperData;)Z

    move-result p0

    return p0

    :cond_46
    return v4
.end method

.method public isWallpaperSupported(Ljava/lang/String;)Z
    .registers 4

    .line 3822
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3823
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->enforcePackageBelongsToUid(Ljava/lang/String;I)V

    .line 3825
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x30

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$clearWallpaperLocked$7(Landroid/app/wallpaper/WallpaperDescription;IIZZLandroid/os/IRemoteCallback;)Ljava/lang/Boolean;
    .registers 7

    .line 2018
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperDescriptionInternal(Landroid/app/wallpaper/WallpaperDescription;IIZZLandroid/os/IRemoteCallback;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$clearWallpaperLocked$8(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V
    .registers 10

    .line 2031
    sget-object v0, Lcom/android/server/wallpaper/WallpaperData$BindSource;->FALLBACK_DEFAULT_MISSING:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 2032
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)Z

    return-void
.end method

.method public final synthetic lambda$errorCheck$5(ILjava/lang/Integer;Ljava/lang/String;)V
    .registers 6

    .line 1778
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1779
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_3c

    .line 1780
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wallpaper type = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wallpaper fail detect!! reset to default wallpaper"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "WallpaperManagerService"

    invoke-static {v1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperBitmaps(II)V

    .line 1783
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3c
    return-void
.end method

.method public final synthetic lambda$isFromForegroundApp$19(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    .line 3806
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x64

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$notifyWallpaperColorsChanged$0(Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .registers 3

    .line 453
    iget p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDisplayId:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperData;I)V

    return-void
.end method

.method public final synthetic lambda$updateEngineFlags$17(Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .registers 5

    .line 3736
    :try_start_0
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iput v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mWhich:I

    .line 3737
    iget-object v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v1, :cond_1b

    .line 3738
    invoke-interface {v1, v0}, Landroid/service/wallpaper/IWallpaperEngine;->setWallpaperFlags(I)V

    .line 3739
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    iget p1, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/WindowManagerInternal;->setWallpaperShowWhenLocked(Landroid/os/IBinder;Z)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    :cond_1b
    return-void

    :catch_1c
    move-exception p0

    .line 3743
    const-string p1, "WallpaperManagerService"

    const-string p2, "Failed to update wallpaper engine flags"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final synthetic lambda$updateFallbackConnection$3(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/view/Display;)Z
    .registers 4

    .line 739
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mClientUid:I

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->isUsableDisplay(Landroid/view/Display;I)Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 740
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    if-eqz p0, :cond_1c

    .line 741
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result p0

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$updateFallbackConnection$4(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .registers 4

    .line 743
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-nez v0, :cond_9

    .line 744
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {p2, p1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V

    :cond_9
    return-void
.end method

.method public final loadSettingsLocked(IZI)V
    .registers 7

    .line 4052
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initializeFallbackWallpaper()V

    .line 4053
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 4054
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDataParser:Lcom/android/server/wallpaper/WallpaperDataParser;

    invoke-virtual {v2, p1, p2, v0, p3}, Lcom/android/server/wallpaper/WallpaperDataParser;->loadSettingsLocked(IZZI)Lcom/android/server/wallpaper/WallpaperDataParser$WallpaperLoadingResult;

    move-result-object p2

    and-int/lit8 v0, p3, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    if-eqz v0, :cond_2a

    .line 4060
    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/wallpaper/WallpaperDataParser$WallpaperLoadingResult;->getSystemWallpaperData()Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2a
    if-eqz v1, :cond_41

    .line 4062
    invoke-virtual {p2}, Lcom/android/server/wallpaper/WallpaperDataParser$WallpaperLoadingResult;->success()Z

    move-result p3

    if-eqz p3, :cond_3c

    .line 4063
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/wallpaper/WallpaperDataParser$WallpaperLoadingResult;->getLockWallpaperData()Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 4065
    :cond_3c
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_41
    return-void
.end method

.method public lockScreenWallpaperExists()Z
    .registers 3

    .line 2849
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2850
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    .line 2851
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final maybeDetachLastWallpapers(Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 6

    .line 3671
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v0, v1, :cond_38

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_38

    .line 3674
    :cond_f
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_19

    move v1, v3

    goto :goto_1a

    :cond_19
    move v1, v2

    :goto_1a
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_20

    move v0, v3

    goto :goto_21

    :cond_20
    move v0, v2

    .line 3676
    :goto_21
    iget-boolean p1, p1, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    if-eqz p1, :cond_28

    if-nez v0, :cond_28

    move v2, v3

    :cond_28
    if-eqz v1, :cond_31

    if-nez v2, :cond_31

    .line 3678
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    :cond_31
    if-eqz v0, :cond_38

    .line 3681
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    :cond_38
    :goto_38
    return-void
.end method

.method public final migrateStaticSystemToLockWallpaperLocked(I)V
    .registers 7

    .line 3175
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    if-nez v0, :cond_b

    return-void

    .line 3184
    :cond_b
    new-instance v1, Lcom/android/server/wallpaper/WallpaperData;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/android/server/wallpaper/WallpaperData;-><init>(II)V

    .line 3185
    iget v3, v0, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    iput v3, v1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 3186
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3187
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    if-eqz v3, :cond_26

    .line 3188
    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 3190
    :cond_26
    iget v3, v0, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    iput v3, v1, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    .line 3191
    iget-boolean v3, v0, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    iput-boolean v3, v1, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    .line 3192
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iput-object v3, v1, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 3193
    iget v3, v0, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    iput v3, v1, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    .line 3194
    iput v2, v1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 3195
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 3199
    :try_start_3c
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 3200
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 3201
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 3200
    invoke-static {v2, v3}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    :catch_5a
    move-exception p1

    goto :goto_88

    .line 3203
    :cond_5c
    :goto_5c
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_79

    .line 3204
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 3205
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 3204
    invoke-static {v0, v2}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 3207
    :cond_79
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3208
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 3209
    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;
    :try_end_87
    .catch Landroid/system/ErrnoException; {:try_start_3c .. :try_end_87} :catch_5a

    return-void

    .line 3212
    :goto_88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t migrate system wallpaper: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WallpaperManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3213
    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperBitmaps(Lcom/android/server/wallpaper/WallpaperData;)Z

    return-void
.end method

.method public final notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 6

    .line 3756
    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p0

    const/4 v0, 0x0

    :goto_7
    if-ge v0, p0, :cond_20

    .line 3759
    :try_start_9
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v1}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception v1

    .line 3764
    const-string v2, "WallpaperManagerService"

    const-string v3, "Failed to notify callbacks about wallpaper changes"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3767
    :cond_20
    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public notifyGoingToSleep(IILandroid/os/Bundle;)V
    .registers 9

    .line 2660
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkCallerIsSystemOrSystemUi()V

    .line 2661
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2662
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getActiveWallpapers()[Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1f

    aget-object v3, p0, v2

    .line 2663
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v4, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda14;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :catchall_1d
    move-exception p0

    goto :goto_21

    .line 2675
    :cond_1f
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_1d

    throw p0
.end method

.method public final notifyKeyguardAppearing()V
    .registers 2

    .line 2731
    const-string v0, "android.wallpaper.keyguardappearing"

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->dispatchKeyguardCommand(Ljava/lang/String;)V

    return-void
.end method

.method public final notifyKeyguardGoingAway()V
    .registers 2

    .line 2724
    const-string v0, "android.wallpaper.keyguardgoingaway"

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->dispatchKeyguardCommand(Ljava/lang/String;)V

    return-void
.end method

.method public final notifyScreenTurnedOn(I)V
    .registers 8

    .line 2682
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2683
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getActiveWallpapers()[Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_30

    aget-object v3, p0, v2

    .line 2684
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v4, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 2685
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2686
    invoke-virtual {v3, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_23

    if-eqz v3, :cond_2d

    .line 2689
    :try_start_1f
    invoke-interface {v3}, Landroid/service/wallpaper/IWallpaperEngine;->onScreenTurnedOn()V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_25
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_2d

    :catchall_23
    move-exception p0

    goto :goto_32

    :catch_25
    move-exception v3

    .line 2691
    :try_start_26
    const-string v4, "WallpaperManagerService"

    const-string v5, "Failed to notify that the screen turned on"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2d
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2696
    :cond_30
    monitor-exit v0

    return-void

    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_23

    throw p0
.end method

.method public final notifyScreenTurningOn(I)V
    .registers 8

    .line 2703
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2704
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getActiveWallpapers()[Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_30

    aget-object v3, p0, v2

    .line 2705
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v4, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 2706
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2707
    invoke-virtual {v3, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_23

    if-eqz v3, :cond_2d

    .line 2710
    :try_start_1f
    invoke-interface {v3}, Landroid/service/wallpaper/IWallpaperEngine;->onScreenTurningOn()V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_25
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_2d

    :catchall_23
    move-exception p0

    goto :goto_32

    :catch_25
    move-exception v3

    .line 2712
    :try_start_26
    const-string v4, "WallpaperManagerService"

    const-string v5, "Failed to notify that the screen is turning on"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2d
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2717
    :cond_30
    monitor-exit v0

    return-void

    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_23

    throw p0
.end method

.method public notifyWakingUp(IILandroid/os/Bundle;)V
    .registers 9

    .line 2639
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkCallerIsSystemOrSystemUi()V

    .line 2640
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2641
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getActiveWallpapers()[Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1f

    aget-object v3, p0, v2

    .line 2642
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v4, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda2;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :catchall_1d
    move-exception p0

    goto :goto_21

    .line 2653
    :cond_1f
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_1d

    throw p0
.end method

.method public final notifyWallpaperChanged(Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 5

    .line 3771
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3772
    const-string v1, "android.service.wallpaper.extra.FROM_FOREGROUND_APP"

    iget-boolean v2, p1, Lcom/android/server/wallpaper/WallpaperData;->fromForegroundApp:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3773
    const-string v1, "android.service.wallpaper.extra.WHICH_WALLPAPER_CHANGED"

    iget p1, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3774
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperData;I)V
    .registers 4

    .line 451
    iget-object p2, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz p2, :cond_c

    .line 452
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V

    invoke-virtual {p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    :cond_c
    return-void
.end method

.method public final notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperData;I)V
    .registers 12

    .line 472
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAdjustedWallpaperColorsOnDimming(Lcom/android/server/wallpaper/WallpaperData;)Landroid/app/WallpaperColors;

    move-result-object v0

    .line 479
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 480
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 481
    :try_start_c
    new-instance v3, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListenersInternal:Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 483
    iget v4, p1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 484
    invoke-virtual {p0, v4, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v4

    const/4 v5, -0x1

    .line 486
    invoke-virtual {p0, v5, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object p0

    const/4 v5, 0x0

    if-eqz v4, :cond_39

    .line 489
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    move v7, v5

    :goto_26
    if-ge v7, v6, :cond_36

    .line 491
    invoke-virtual {v4, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Landroid/app/IWallpaperManagerCallback;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    :catchall_34
    move-exception p0

    goto :goto_9d

    .line 493
    :cond_36
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_39
    if-eqz p0, :cond_51

    .line 497
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    move v6, v5

    :goto_40
    if-ge v6, v4, :cond_4e

    .line 499
    invoke-virtual {p0, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/app/IWallpaperManagerCallback;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    .line 501
    :cond_4e
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 503
    :cond_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_c .. :try_end_52} :catchall_34

    .line 507
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 508
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/HardwarePropertiesManagerService$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 509
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 511
    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda17;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/wallpaper/WallpaperManagerInternal$ColorsChangedCallbackInternal;Landroid/app/WallpaperColors;Lcom/android/server/wallpaper/WallpaperData;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5a

    .line 515
    :cond_7d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_81
    if-ge v5, p0, :cond_9c

    .line 518
    :try_start_83
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/IWallpaperManagerCallback;

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget v3, p1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-interface {p2, v0, v2, v3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_90} :catch_91

    goto :goto_99

    :catch_91
    move-exception p2

    .line 523
    const-string v2, "WallpaperManagerService"

    const-string v3, "onWallpaperColorsChanged() threw an exception"

    invoke-static {v2, v3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_99
    add-int/lit8 v5, v5, 0x1

    goto :goto_81

    :cond_9c
    return-void

    .line 503
    :goto_9d
    :try_start_9d
    monitor-exit v2
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_34

    throw p0
.end method

.method public final notifyWallpaperComplete(Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 3

    .line 432
    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    if-eqz p0, :cond_10

    .line 434
    :try_start_4
    invoke-interface {p0}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 438
    const-string p1, "WallpaperManagerService"

    const-string v0, "onWallpaperChanged threw an exception"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    return-void
.end method

.method public onBootPhase(I)V
    .registers 4

    const/4 v0, 0x0

    .line 1763
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->errorCheck(I)V

    const/16 v1, 0x226

    if-ne p1, v1, :cond_c

    .line 1766
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->systemReady()V

    return-void

    :cond_c
    const/16 v1, 0x258

    if-ne p1, v1, :cond_14

    const/4 p1, 0x0

    .line 1768
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchUser(ILandroid/os/IRemoteCallback;)V

    :cond_14
    return-void
.end method

.method public final onDisplayAddSystemDecorationsInternal(I)V
    .registers 10

    .line 3861
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3862
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-nez v1, :cond_c

    .line 3863
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto/16 :goto_c2

    .line 3866
    :cond_c
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/wm/DesktopModeHelper;->isDeviceEligibleForDesktopExperienceWallpaper(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_80

    .line 3867
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3868
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3871
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v3, :cond_2a

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-eq v4, v3, :cond_2a

    .line 3872
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    move v3, v2

    .line 3875
    :goto_2b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_71

    .line 3876
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperData;

    .line 3877
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {p0, p1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperCompatibleForDisplay(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 3878
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 3879
    invoke-virtual {v5, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object v5

    if-eqz v5, :cond_4d

    .line 3881
    iget-object v6, v4, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V

    goto :goto_6e

    .line 3883
    :cond_4d
    const-string v5, "WallpaperManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to connect to wallpaper for display id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " due to null connector. Use fallback wallpaper."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3885
    iget v4, v4, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    goto :goto_6d

    .line 3888
    :cond_6b
    iget v4, v4, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    :goto_6d
    or-int/2addr v3, v4

    :goto_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_71
    if-eqz v3, :cond_7e

    .line 3892
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v1, :cond_7e

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-nez v1, :cond_7c

    goto :goto_7e

    :cond_7c
    move v2, v3

    goto :goto_9f

    .line 3895
    :cond_7e
    :goto_7e
    monitor-exit v0

    return-void

    .line 3898
    :cond_80
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperCompatibleForDisplay(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 3899
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 3900
    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object p1

    if-nez p1, :cond_96

    .line 3901
    monitor-exit v0

    return-void

    .line 3902
    :cond_96
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {p1, v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 3903
    monitor-exit v0

    return-void

    .line 3909
    :cond_9f
    :goto_9f
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v1, :cond_b9

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_b9

    .line 3912
    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object p1

    if-nez p1, :cond_af

    .line 3913
    monitor-exit v0

    return-void

    .line 3914
    :cond_af
    iput v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mWhich:I

    .line 3915
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {p1, v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V

    goto :goto_c0

    .line 3917
    :cond_b9
    const-string p0, "WallpaperManagerService"

    const-string p1, "No wallpaper can be added to the new display"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3919
    :goto_c0
    monitor-exit v0

    return-void

    :goto_c2
    monitor-exit v0
    :try_end_c3
    .catchall {:try_start_3 .. :try_end_c3} :catchall_9

    throw p0
.end method

.method public final onDisplayRemovedInternal(I)V
    .registers 8

    .line 3926
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3927
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/wm/DesktopModeHelper;->isDeviceEligibleForDesktopExperienceWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 3936
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3937
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v2, :cond_27

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_27

    .line 3938
    invoke-virtual {v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 3939
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :catchall_24
    move-exception p0

    goto/16 :goto_d2

    .line 3941
    :cond_27
    :goto_27
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v2, :cond_3a

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_3a

    .line 3942
    invoke-virtual {v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 3943
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3945
    :cond_3a
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v2, :cond_4d

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_4d

    .line 3946
    invoke-virtual {v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 3947
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4d
    const/4 v2, 0x0

    .line 3949
    :goto_4e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b3

    .line 3950
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperData;

    .line 3951
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 3952
    invoke-virtual {v4, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object v4

    if-nez v4, :cond_6b

    .line 3954
    const-string p0, "WallpaperManagerService"

    const-string p1, "Fail to disconnect wallpaper upon display removes system decorations"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3957
    monitor-exit v0

    return-void

    .line 3959
    :cond_6b
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->disconnectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    .line 3960
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v3, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->removeDisplayConnector(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 3963
    :cond_78
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v1, :cond_b3

    .line 3965
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_89

    .line 3966
    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 3967
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    goto :goto_9b

    .line 3968
    :cond_89
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v1, :cond_9a

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_9a

    .line 3970
    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 3972
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    goto :goto_9b

    :cond_9a
    const/4 v1, 0x0

    :goto_9b
    if-nez v1, :cond_9f

    .line 3974
    monitor-exit v0

    return-void

    .line 3975
    :cond_9f
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 3976
    invoke-virtual {v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object v2

    if-nez v2, :cond_a9

    .line 3978
    monitor-exit v0

    return-void

    .line 3979
    :cond_a9
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->disconnectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    .line 3980
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->removeDisplayConnector(I)V

    .line 3984
    :cond_b3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->removeDisplayData(I)V

    .line 3986
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c0
    if-ltz v1, :cond_d0

    .line 3987
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    .line 3988
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 3989
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_c0

    .line 3991
    :cond_d0
    monitor-exit v0

    return-void

    :goto_d2
    monitor-exit v0
    :try_end_d3
    .catchall {:try_start_3 .. :try_end_d3} :catchall_24

    throw p0
.end method

.method public onRemoveUser(I)V
    .registers 5

    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    return-void

    .line 1851
    :cond_4
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1852
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserversLocked(I)V

    .line 1853
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperFiles(I)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1854
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1855
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 4120
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final onSwitchWallpaperFailLocked(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;Landroid/content/pm/ServiceInfo;)V
    .registers 11

    if-nez p3, :cond_b

    .line 1930
    iget p3, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget p1, p1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p1, v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(IIZLandroid/os/IRemoteCallback;)V

    return-void

    .line 1933
    :cond_b
    const-string p3, "WallpaperManagerService"

    const-string v0, "Wallpaper isn\'t direct boot aware; using fallback until unlocked"

    invoke-static {p3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    new-instance v5, Lcom/android/server/wallpaper/WallpaperData;

    iget p3, p1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-direct {v5, p3, v0}, Lcom/android/server/wallpaper/WallpaperData;-><init>(II)V

    .line 1938
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperBitmaps(Lcom/android/server/wallpaper/WallpaperData;)Z

    .line 1940
    sget-object p3, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SWITCH_WALLPAPER_FAILURE:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    iput-object p3, v5, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 1941
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 1942
    iget p0, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    and-int/lit8 p1, p0, 0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_34

    iput-boolean p2, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mHomeWallpaperWaitingForUnlock:Z

    :cond_34
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3a

    .line 1943
    iput-boolean p2, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperWaitingForUnlock:Z

    :cond_3a
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 7

    .line 1803
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1804
    :try_start_3
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_50

    .line 1805
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHomeWallpaperWaitingForUnlock:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_21

    .line 1807
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v1

    .line 1808
    sget-object v4, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SWITCH_WALLPAPER_UNLOCK_USER:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    iput-object v4, v1, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 1809
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 1811
    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 1812
    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperChanged(Lcom/android/server/wallpaper/WallpaperData;)V

    goto :goto_21

    :catchall_1f
    move-exception p0

    goto :goto_52

    .line 1814
    :cond_21
    :goto_21
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperWaitingForUnlock:Z

    if-eqz v1, :cond_37

    const/4 v1, 0x2

    .line 1816
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v1

    .line 1817
    sget-object v4, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SWITCH_WALLPAPER_UNLOCK_USER:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    iput-object v4, v1, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 1818
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 1819
    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 1820
    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperChanged(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 1827
    :cond_37
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_50

    .line 1828
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1829
    new-instance p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1842
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1845
    :cond_50
    monitor-exit v0

    return-void

    :goto_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_1f

    throw p0
.end method

.method public final packageBelongsToUid(Ljava/lang/String;I)Z
    .registers 5

    .line 3785
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    .line 3788
    :try_start_5
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_f} :catch_13

    if-ne p0, p2, :cond_13

    const/4 p0, 0x1

    return p0

    :catch_13
    :cond_13
    return v1
.end method

.method public final pauseOrResumeRenderingImmediately(Z)V
    .registers 9

    .line 2610
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2611
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getActiveWallpapers()[Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_4e

    aget-object v4, v1, v3

    .line 2612
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v5, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-nez v5, :cond_14

    goto :goto_4b

    :cond_14
    if-nez p1, :cond_33

    .line 2615
    const-class v5, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v6, v4, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v6, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 2616
    invoke-virtual {v6}, Landroid/app/WallpaperInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isUidForeground(I)Z

    move-result v5

    if-eqz v5, :cond_4b

    goto :goto_33

    :catchall_31
    move-exception p0

    goto :goto_50

    .line 2618
    :cond_33
    :goto_33
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 2619
    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayId()I

    move-result v6

    .line 2618
    invoke-virtual {v5, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 2620
    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda21;

    invoke-direct {v5, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda21;-><init>(Z)V

    invoke-virtual {v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    :cond_4b
    :goto_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 2632
    :cond_4e
    monitor-exit v0

    return-void

    :goto_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_31

    throw p0
.end method

.method public registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    .registers 11

    .line 2542
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "registerWallpaperColorsCallback"

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2544
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2546
    :try_start_15
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_2d

    .line 2548
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2549
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2d

    :catchall_2a
    move-exception v0

    move-object p0, v0

    goto :goto_42

    .line 2552
    :cond_2d
    :goto_2d
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    if-nez p0, :cond_3d

    .line 2554
    new-instance p0, Landroid/os/RemoteCallbackList;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 2555
    invoke-virtual {v0, p3, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2557
    :cond_3d
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2558
    monitor-exit v1

    return-void

    :goto_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_15 .. :try_end_43} :catchall_2a

    throw p0
.end method

.method public removeOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V
    .registers 11

    const/4 v0, 0x2

    if-eq p3, v0, :cond_f

    const/4 v0, 0x1

    if-ne p3, v0, :cond_7

    goto :goto_f

    .line 2822
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "which should be either FLAG_LOCK or FLAG_SYSTEM"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2824
    :cond_f
    :goto_f
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 2825
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-ne v0, p4, :cond_47

    .line 2828
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 2831
    :try_start_1e
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_28
    .catchall {:try_start_1e .. :try_end_21} :catchall_2f

    .line 2832
    :try_start_21
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLocalColorRepo:Lcom/android/server/wallpaper/LocalColorRepository;

    invoke-virtual {v4, p1, p2, p5}, Lcom/android/server/wallpaper/LocalColorRepository;->removeAreas(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    .line 2833
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_2c

    .line 2837
    :catch_28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_34

    :catchall_2c
    move-exception p1

    .line 2833
    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw p1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2f} :catch_28
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception p0

    .line 2837
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2838
    throw p0

    .line 2839
    :goto_34
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getEngine(III)Landroid/service/wallpaper/IWallpaperEngine;

    move-result-object p0

    if-eqz p0, :cond_46

    if-nez v2, :cond_3d

    goto :goto_46

    .line 2841
    :cond_3d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_46

    invoke-interface {p0, v2}, Landroid/service/wallpaper/IWallpaperEngine;->removeLocalColorsAreas(Ljava/util/List;)V

    :cond_46
    :goto_46
    return-void

    .line 2826
    :cond_47
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "calling user id does not match"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveSettingsLocked(I)V
    .registers 5

    .line 3995
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "WallpaperManagerService"

    invoke-direct {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 3996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WPMS.saveSettingsLocked-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3997
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDataParser:Lcom/android/server/wallpaper/WallpaperDataParser;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 3998
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperData;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wallpaper/WallpaperData;

    .line 3997
    invoke-virtual {v1, p1, v2, p0}, Lcom/android/server/wallpaper/WallpaperDataParser;->saveSettingsLocked(ILcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 3999
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public setDimensionHints(IILjava/lang/String;I)V
    .registers 10

    .line 2096
    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2097
    invoke-virtual {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_d

    goto/16 :goto_80

    .line 2102
    :cond_d
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2103
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2105
    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 2106
    :try_start_20
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x1

    .line 2107
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v2

    if-lez p1, :cond_98

    if-lez p2, :cond_98

    .line 2112
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v3, p4}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->isValidDisplay(I)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 2116
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v3, p4}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    move-result-object v3

    .line 2117
    iget v4, v3, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    if-ne p1, v4, :cond_46

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    if-eq p2, v4, :cond_7f

    goto :goto_46

    :catchall_44
    move-exception p0

    goto :goto_a0

    .line 2118
    :cond_46
    :goto_46
    iput p1, v3, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    .line 2119
    iput p2, v3, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    if-nez p4, :cond_4f

    .line 2120
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 2121
    :cond_4f
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v3, v0, :cond_55

    monitor-exit p3

    return-void

    .line 2122
    :cond_55
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_7f

    .line 2124
    invoke-virtual {v0, p4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object p4

    if-eqz p4, :cond_62

    .line 2125
    iget-object v0, p4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_61
    .catchall {:try_start_20 .. :try_end_61} :catchall_44

    goto :goto_63

    :cond_62
    const/4 v0, 0x0

    :goto_63
    if-eqz v0, :cond_75

    .line 2128
    :try_start_65
    invoke-interface {v0, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_68} :catch_69
    .catchall {:try_start_65 .. :try_end_68} :catchall_44

    goto :goto_71

    :catch_69
    move-exception p1

    .line 2130
    :try_start_6a
    const-string p2, "WallpaperManagerService"

    const-string p4, "Failed to set desired size"

    invoke-static {p2, p4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2132
    :goto_71
    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    goto :goto_7f

    .line 2133
    :cond_75
    iget-object p0, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz p0, :cond_7f

    if-eqz p4, :cond_7f

    .line 2137
    iput-boolean v1, p4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDimensionsChanged:Z

    .line 2141
    :cond_7f
    :goto_7f
    monitor-exit p3

    :goto_80
    return-void

    .line 2113
    :cond_81
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find display with id="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2109
    :cond_98
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "width and height must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2141
    :goto_a0
    monitor-exit p3
    :try_end_a1
    .catchall {:try_start_6a .. :try_end_a1} :catchall_44

    throw p0
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;I)V
    .registers 11

    .line 2186
    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2187
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_d

    goto/16 :goto_92

    .line 2190
    :cond_d
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2191
    :try_start_10
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v0, p3}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->isValidDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 2194
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x1

    .line 2195
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v2

    .line 2196
    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-ltz v3, :cond_d1

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ltz v3, :cond_d1

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ltz v3, :cond_d1

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ltz v3, :cond_d1

    .line 2200
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v3, p3}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getMaximumSizeDimension(I)I

    move-result v3

    .line 2202
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    .line 2203
    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    if-gt v4, v3, :cond_b2

    if-gt v5, v3, :cond_93

    .line 2213
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v3, p3}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    move-result-object v3

    .line 2214
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_91

    .line 2215
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-nez p3, :cond_61

    .line 2216
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    goto :goto_61

    :catchall_5e
    move-exception p0

    goto/16 :goto_ff

    .line 2217
    :cond_61
    :goto_61
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v3, v0, :cond_67

    monitor-exit p2

    return-void

    .line 2218
    :cond_67
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_91

    .line 2220
    invoke-virtual {v0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object p3

    if-eqz p3, :cond_74

    .line 2221
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_73
    .catchall {:try_start_10 .. :try_end_73} :catchall_5e

    goto :goto_75

    :cond_74
    const/4 v0, 0x0

    :goto_75
    if-eqz v0, :cond_87

    .line 2224
    :try_start_77
    invoke-interface {v0, p1}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_7a} :catch_7b
    .catchall {:try_start_77 .. :try_end_7a} :catchall_5e

    goto :goto_83

    :catch_7b
    move-exception p1

    .line 2226
    :try_start_7c
    const-string p3, "WallpaperManagerService"

    const-string v0, "Failed to set display padding"

    invoke-static {p3, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2228
    :goto_83
    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    goto :goto_91

    .line 2229
    :cond_87
    iget-object p0, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz p0, :cond_91

    if-eqz p3, :cond_91

    .line 2233
    iput-boolean v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mPaddingChanged:Z

    .line 2237
    :cond_91
    :goto_91
    monitor-exit p2

    :goto_92
    return-void

    .line 2209
    :cond_93
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "padding height "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " exceeds max height "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2205
    :cond_b2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "padding width "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " exceeds max width "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2197
    :cond_d1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "padding must be positive: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2192
    :cond_e8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find display with id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2237
    :goto_ff
    monitor-exit p2
    :try_end_100
    .catchall {:try_start_7c .. :try_end_100} :catchall_5e

    throw p0
.end method

.method public setInAmbientMode(ZJ)V
    .registers 11

    .line 2587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2588
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2589
    :try_start_8
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInAmbientMode:Z

    .line 2590
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getActiveWallpapers()[Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_34

    aget-object v5, p0, v4

    .line 2591
    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v6, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v6, :cond_24

    .line 2592
    invoke-virtual {v6}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result v6

    if-eqz v6, :cond_31

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_51

    .line 2594
    :cond_24
    :goto_24
    iget-object v5, v5, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2595
    invoke-virtual {v5, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v5, :cond_31

    .line 2596
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 2599
    :cond_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_22

    .line 2600
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_39
    if-ge v3, p0, :cond_50

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    check-cast v1, Landroid/service/wallpaper/IWallpaperEngine;

    .line 2602
    :try_start_43
    invoke-interface {v1, p1, p2, p3}, Landroid/service/wallpaper/IWallpaperEngine;->setInAmbientMode(ZJ)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_39

    :catch_47
    move-exception v1

    .line 2604
    const-string v2, "WallpaperManagerService"

    const-string v4, "Failed to set ambient mode"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    :cond_50
    return-void

    .line 2599
    :goto_51
    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_22

    throw p0
.end method

.method public setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/app/wallpaper/WallpaperDescription;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;
    .registers 19

    move/from16 v0, p6

    .line 3038
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWallpaper: name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    invoke-static {}, Landroid/app/IWallpaperManager$Stub;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/app/IWallpaperManager$Stub;->getCallingUid()I

    move-result v4

    const-string v8, "changing wallpaper"

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move/from16 v5, p8

    invoke-static/range {v3 .. v9}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 3059
    const-string v2, "android.permission.SET_WALLPAPER"

    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    and-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_ef

    .line 3067
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_ee

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4b

    goto/16 :goto_ee

    .line 3071
    :cond_4b
    invoke-virtual {p3}, Landroid/app/wallpaper/WallpaperDescription;->getCropHints()Landroid/util/SparseArray;

    move-result-object v2

    .line 3072
    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->validateCrops(Landroid/util/SparseArray;)V

    .line 3073
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 3076
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isFromForegroundApp(Ljava/lang/String;)Z

    move-result p2

    .line 3089
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3092
    :try_start_5e
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wallpaper/WallpaperData;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_7c

    .line 3093
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 3095
    invoke-virtual {v6}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 3094
    invoke-virtual {v9, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    move v6, v8

    goto :goto_7d

    :catchall_78
    move-exception v0

    move-object p0, v0

    goto/16 :goto_ec

    :cond_7c
    move v6, v7

    .line 3096
    :goto_7d
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_86

    move v7, v8

    :cond_86
    if-ne v0, v8, :cond_96

    if-eqz v6, :cond_96

    if-eqz v7, :cond_96

    .line 3103
    const-string v6, "WallpaperManagerService"

    const-string v8, "Migrating current wallpaper to be lock-only before updating system wallpaper"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateStaticSystemToLockWallpaperLocked(I)V

    .line 3108
    :cond_96
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v1

    .line 3109
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mPendingMigrationViaStatic:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;

    if-eqz v6, :cond_a5

    .line 3110
    const-string v6, "WallpaperManagerService"

    const-string v8, "Starting new static wp migration before previous migration finished"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    :cond_a5
    new-instance v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;

    invoke-direct {v6, p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V

    iput-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mPendingMigrationViaStatic:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;

    .line 3113
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_b0
    .catchall {:try_start_5e .. :try_end_b0} :catchall_78

    .line 3115
    :try_start_b0
    invoke-virtual {p0, p1, v1, p5}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_e3

    .line 3117
    iput-object p3, v1, Lcom/android/server/wallpaper/WallpaperData;->mPendingStaticDescription:Landroid/app/wallpaper/WallpaperDescription;

    .line 3118
    iput-boolean v7, v1, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    .line 3119
    iput v0, v1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    move-object/from16 v0, p7

    .line 3120
    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    .line 3122
    iput-boolean p2, v1, Lcom/android/server/wallpaper/WallpaperData;->fromForegroundApp:Z

    .line 3123
    iget-object p2, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3125
    iput-object v2, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 3126
    iput p2, v1, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    .line 3127
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 3128
    invoke-virtual {p2}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDefaultDisplayCurrentOrientation()I

    move-result p2

    iput p2, v1, Lcom/android/server/wallpaper/WallpaperData;->mOrientationWhenSet:I

    .line 3130
    iput-boolean p4, v1, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    .line 3131
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDimAmount()F

    move-result p0

    iput p0, v1, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    .line 3132
    iput-object v3, v1, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;
    :try_end_df
    .catchall {:try_start_b0 .. :try_end_df} :catchall_e0

    goto :goto_e3

    :catchall_e0
    move-exception v0

    move-object p0, v0

    goto :goto_e8

    .line 3136
    :cond_e3
    :goto_e3
    :try_start_e3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v5

    return-object p1

    :goto_e8
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3137
    throw p0

    .line 3138
    :goto_ec
    monitor-exit v5
    :try_end_ed
    .catchall {:try_start_e3 .. :try_end_ed} :catchall_78

    throw p0

    :cond_ee
    :goto_ee
    return-object v3

    .line 3063
    :cond_ef
    const-string p0, "WallpaperManagerService"

    const-string p1, "Must specify a valid wallpaper category to set"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must specify a valid wallpaper category to set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .registers 5

    const/4 v0, 0x1

    .line 3264
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-string v2, ""

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;Ljava/lang/String;II)Z

    return-void
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;Ljava/lang/String;II)Z
    .registers 6

    .line 3270
    new-instance v0, Landroid/app/wallpaper/WallpaperDescription$Builder;

    invoke-direct {v0}, Landroid/app/wallpaper/WallpaperDescription$Builder;-><init>()V

    .line 3271
    invoke-virtual {v0, p1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setComponent(Landroid/content/ComponentName;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->build()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object p1

    .line 3270
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperDescription(Landroid/app/wallpaper/WallpaperDescription;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public setWallpaperComponentChecked(Landroid/app/wallpaper/WallpaperDescription;Ljava/lang/String;II)V
    .registers 6

    .line 3256
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3257
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperDescription(Landroid/app/wallpaper/WallpaperDescription;Ljava/lang/String;II)Z

    :cond_f
    return-void
.end method

.method public setWallpaperDescription(Landroid/app/wallpaper/WallpaperDescription;Ljava/lang/String;II)Z
    .registers 12

    .line 3278
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isFromForegroundApp(Ljava/lang/String;)Z

    move-result v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    .line 3279
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperDescriptionInternal(Landroid/app/wallpaper/WallpaperDescription;IIZZLandroid/os/IRemoteCallback;)Z

    move-result p0

    return p0
.end method

.method public setWallpaperDescriptionId(Ljava/lang/String;II)V
    .registers 6

    .line 2489
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_11

    .line 2490
    :try_start_6
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wallpaper/WallpaperData;

    goto :goto_19

    :catchall_f
    move-exception p0

    goto :goto_4e

    .line 2491
    :cond_11
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wallpaper/WallpaperData;

    :goto_19
    if-eqz p0, :cond_4c

    .line 2494
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperData;->getDescription()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/wallpaper/WallpaperDescription;->toBuilder()Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setId(Ljava/lang/String;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/wallpaper/WallpaperDescription$Builder;->build()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object p3

    .line 2493
    invoke-virtual {p0, p3}, Lcom/android/server/wallpaper/WallpaperData;->setDescription(Landroid/app/wallpaper/WallpaperDescription;)V

    .line 2495
    const-string p0, "WallpaperManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set description id for "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    :cond_4c
    monitor-exit v0

    return-void

    :goto_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_6 .. :try_end_4f} :catchall_f

    throw p0
.end method

.method public final setWallpaperDescriptionInternal(Landroid/app/wallpaper/WallpaperDescription;IIZZLandroid/os/IRemoteCallback;)Z
    .registers 23

    move-object/from16 v0, p0

    move/from16 v6, p2

    .line 3286
    invoke-virtual/range {p1 .. p1}, Landroid/app/wallpaper/WallpaperDescription;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 3290
    invoke-static {}, Landroid/app/IWallpaperManager$Stub;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/app/IWallpaperManager$Stub;->getCallingUid()I

    move-result v8

    const-string v12, "changing live wallpaper"

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move/from16 v9, p3

    invoke-static/range {v7 .. v13}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3293
    const-string v3, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-virtual {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 3302
    iget-object v7, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3303
    :try_start_23
    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWallpaperComponent name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", which = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3304
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v3, :cond_134

    .line 3308
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 3309
    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 3308
    invoke-virtual {v4, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 3310
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v4, :cond_61

    move v10, v8

    goto :goto_62

    :cond_61
    move v10, v9

    :goto_62
    if-ne v6, v8, :cond_76

    if-eqz v10, :cond_76

    if-eqz v3, :cond_76

    .line 3314
    const-string v3, "WallpaperManagerService"

    const-string v4, "Migrating current wallpaper to be lock-only beforeupdating system wallpaper"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3316
    invoke-virtual {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateStaticSystemToLockWallpaperLocked(I)V

    goto :goto_76

    :catchall_73
    move-exception v0

    goto/16 :goto_14b

    .line 3319
    :cond_76
    :goto_76
    invoke-virtual {v0, v2, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v4

    .line 3320
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11
    :try_end_7e
    .catchall {:try_start_23 .. :try_end_7e} :catchall_73

    const/4 v13, 0x0

    .line 3323
    :try_start_7f
    iput-object v13, v4, Lcom/android/server/wallpaper/WallpaperData;->mPendingStaticDescription:Landroid/app/wallpaper/WallpaperDescription;

    .line 3324
    iput v6, v4, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 3325
    iput-boolean v10, v4, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    move/from16 v2, p5

    .line 3326
    iput-boolean v2, v4, Lcom/android/server/wallpaper/WallpaperData;->fromForegroundApp:Z

    .line 3328
    new-instance v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;

    invoke-direct {v14, v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 3330
    iget-object v2, v4, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 3331
    invoke-virtual {v4}, Lcom/android/server/wallpaper/WallpaperData;->getDescription()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v3

    move-object/from16 v5, p1

    .line 3330
    invoke-virtual {v0, v5, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->changingToSame(Landroid/app/wallpaper/WallpaperDescription;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/app/wallpaper/WallpaperDescription;)Z

    move-result v15

    if-nez p4, :cond_a5

    if-eqz v15, :cond_a3

    if-eqz v10, :cond_a3

    if-ne v6, v8, :cond_a3

    goto :goto_a5

    :cond_a3
    move v2, v9

    goto :goto_a6

    :cond_a5
    :goto_a5
    move v2, v8

    :goto_a6
    if-nez v1, :cond_ae

    .line 3341
    sget-object v1, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SET_LIVE_TO_CLEAR:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    goto :goto_b0

    :catchall_ab
    move-exception v0

    goto/16 :goto_130

    :cond_ae
    sget-object v1, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SET_LIVE:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    :goto_b0
    iput-object v1, v4, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    const/4 v3, 0x1

    move-object v1, v5

    move-object/from16 v5, p6

    .line 3342
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperDescriptionLocked(Landroid/app/wallpaper/WallpaperDescription;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_126

    if-eqz v15, :cond_cf

    if-eqz v2, :cond_c2

    goto :goto_cf

    .line 3348
    :cond_c2
    iget-object v2, v4, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_d1

    .line 3349
    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v5}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda16;-><init>()V

    invoke-virtual {v2, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    goto :goto_d1

    .line 3346
    :cond_cf
    :goto_cf
    iput-object v13, v4, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 3362
    :cond_d1
    :goto_d1
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v4}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e6

    .line 3363
    invoke-virtual {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperBitmaps(Lcom/android/server/wallpaper/WallpaperData;)Z

    .line 3364
    iget v2, v4, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    if-ne v2, v3, :cond_e6

    move v2, v8

    goto :goto_e7

    :cond_e6
    move v2, v9

    .line 3366
    :goto_e7
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperUtils;->makeWallpaperIdLocked()I

    move-result v5

    iput v5, v4, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 3367
    invoke-virtual {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 3368
    invoke-virtual {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperChanged(Lcom/android/server/wallpaper/WallpaperData;)V

    const/4 v5, 0x3

    if-nez p4, :cond_fd

    if-eqz v15, :cond_fd

    if-nez v10, :cond_fd

    if-ne v6, v5, :cond_fd

    goto :goto_fe

    :cond_fd
    move v8, v9

    :goto_fe
    if-ne v6, v5, :cond_122

    .line 3376
    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget v6, v4, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v5, :cond_114

    .line 3379
    invoke-virtual {v0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    if-eqz v15, :cond_114

    .line 3381
    invoke-virtual {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateEngineFlags(Lcom/android/server/wallpaper/WallpaperData;)V

    :cond_114
    if-nez v2, :cond_11b

    .line 3385
    iget v2, v4, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperBitmaps(II)V

    .line 3387
    :cond_11b
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget v5, v4, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 3389
    :cond_122
    invoke-virtual {v14}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->complete()V
    :try_end_125
    .catchall {:try_start_7f .. :try_end_125} :catchall_ab

    move v9, v8

    .line 3392
    :cond_126
    :try_start_126
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3394
    monitor-exit v7
    :try_end_12a
    .catchall {:try_start_126 .. :try_end_12a} :catchall_73

    if-eqz v9, :cond_12f

    .line 3397
    invoke-virtual {v0, v4, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperData;I)V

    :cond_12f
    return v1

    .line 3392
    :goto_130
    :try_start_130
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3393
    throw v0

    .line 3306
    :cond_134
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wallpaper not yet initialized for user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3394
    :goto_14b
    monitor-exit v7
    :try_end_14c
    .catchall {:try_start_130 .. :try_end_14c} :catchall_73

    throw v0
.end method

.method public setWallpaperDimAmount(F)V
    .registers 3

    .line 2876
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperDimAmountForUid(IF)V

    return-void
.end method

.method public setWallpaperDimAmountForUid(IF)V
    .registers 11

    .line 2889
    const-string v0, "android.permission.SET_WALLPAPER_DIM_AMOUNT"

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2890
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2892
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_7c

    .line 2894
    :try_start_c
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/16 v4, -0x2710

    const/4 v5, 0x0

    if-eq v3, v4, :cond_14

    goto :goto_15

    :cond_14
    move v3, v5

    .line 2896
    :goto_15
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperData;

    .line 2897
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperData;

    const/4 v6, 0x0

    cmpl-float v6, p2, v6

    if-nez v6, :cond_32

    .line 2900
    iget-object p2, v4, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3b

    :catchall_30
    move-exception p0

    goto :goto_7a

    .line 2902
    :cond_32
    iget-object v6, v4, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2905
    :goto_3b
    iget-object p1, v4, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getHighestDimAmountFromMap(Landroid/util/SparseArray;)F

    move-result p1

    .line 2906
    iget p2, v4, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    cmpl-float p2, p2, p1

    if-nez p2, :cond_4c

    monitor-exit v2
    :try_end_48
    .catchall {:try_start_c .. :try_end_48} :catchall_30

    .line 2935
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2907
    :cond_4c
    :try_start_4c
    iput p1, v4, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    if-eqz v3, :cond_52

    .line 2911
    iput p1, v3, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    .line 2915
    :cond_52
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getActiveWallpapers()[Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p2

    array-length v3, p2

    move v6, v5

    :goto_58
    if-ge v5, v3, :cond_6e

    aget-object v7, p2, v5

    if-eqz v7, :cond_6b

    .line 2916
    iget-object v7, v7, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v7, :cond_6b

    .line 2917
    new-instance v6, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v6, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda0;-><init>(F)V

    invoke-virtual {v7, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    const/4 v6, 0x1

    :cond_6b
    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    :cond_6e
    if-eqz v6, :cond_75

    .line 2931
    iget p1, v4, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 2933
    :cond_75
    monitor-exit v2
    :try_end_76
    .catchall {:try_start_4c .. :try_end_76} :catchall_30

    .line 2935
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2933
    :goto_7a
    :try_start_7a
    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_30

    :try_start_7b
    throw p0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7c

    :catchall_7c
    move-exception p0

    .line 2935
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2936
    throw p0
.end method

.method public settingsRestored()V
    .registers 9

    .line 4093
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_3b

    .line 4101
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x3

    const/4 v2, 0x0

    .line 4102
    :try_start_d
    invoke-virtual {p0, v2, v2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZI)V

    .line 4103
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/wallpaper/WallpaperData;

    .line 4104
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperUtils;->makeWallpaperIdLocked()I

    move-result v0

    iput v0, v6, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    const/4 v0, 0x1

    .line 4105
    iput-boolean v0, v6, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    .line 4106
    invoke-virtual {v6}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    .line 4110
    new-instance v0, Landroid/app/wallpaper/WallpaperDescription$Builder;

    invoke-direct {v0}, Landroid/app/wallpaper/WallpaperDescription$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/app/wallpaper/WallpaperDescription$Builder;->build()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperDescriptionLocked(Landroid/app/wallpaper/WallpaperDescription;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 4112
    monitor-exit v1

    return-void

    :catchall_37
    move-exception v0

    move-object p0, v0

    .line 4113
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_37

    throw p0

    .line 4094
    :cond_3b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "settingsRestored() can only be called from the system process"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stopObserver(Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 2

    if-eqz p1, :cond_c

    .line 1741
    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-eqz p0, :cond_c

    .line 1742
    invoke-virtual {p0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 p0, 0x0

    .line 1743
    iput-object p0, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    :cond_c
    return-void
.end method

.method public stopObserversLocked(I)V
    .registers 3

    .line 1749
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 1750
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 1751
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1752
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public switchUser(ILandroid/os/IRemoteCallback;)V
    .registers 11

    .line 1859
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "WallpaperManagerService"

    invoke-direct {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 1860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper_switch-user-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1864
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_88

    .line 1865
    :try_start_1e
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v2, p1, :cond_29

    .line 1866
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_27

    .line 1898
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_27
    move-exception p0

    goto :goto_86

    .line 1868
    :cond_29
    :try_start_29
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/4 v2, 0x1

    .line 1869
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v3

    .line 1870
    iget v4, v3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_37

    move-object v4, v3

    goto :goto_3c

    :cond_37
    const/4 v4, 0x2

    .line 1871
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v4

    .line 1874
    :goto_3c
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-nez v5, :cond_4a

    .line 1875
    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v5, p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V

    iput-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 1876
    invoke-virtual {v5}, Landroid/os/FileObserver;->startWatching()V

    .line 1879
    :cond_4a
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 1880
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    const/4 v5, 0x0

    if-ne v4, v3, :cond_5b

    .line 1882
    invoke-virtual {p0, v3, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V

    goto :goto_7f

    .line 1884
    :cond_5b
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/app/KeyguardManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    if-eqz v6, :cond_6e

    .line 1885
    invoke-virtual {v6, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result p1

    if-eqz p1, :cond_6e

    goto :goto_6f

    :cond_6e
    move v2, v5

    :goto_6f
    if-eqz v2, :cond_73

    move-object p1, v4

    goto :goto_74

    :cond_73
    move-object p1, v3

    .line 1886
    :goto_74
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V

    if-eqz v2, :cond_7a

    goto :goto_7b

    :cond_7a
    move-object v3, v4

    :goto_7b
    const/4 p1, 0x0

    .line 1887
    invoke-virtual {p0, v3, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 1895
    :goto_7f
    iput-boolean v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInitialUserSwitch:Z

    .line 1896
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_29 .. :try_end_82} :catchall_27

    .line 1898
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    .line 1896
    :goto_86
    :try_start_86
    monitor-exit v1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_27

    :try_start_87
    throw p0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_88

    :catchall_88
    move-exception p0

    .line 1898
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1899
    throw p0
.end method

.method public switchWallpaper(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V
    .registers 11

    .line 1903
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1904
    :try_start_3
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    iput-boolean v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHomeWallpaperWaitingForUnlock:Z

    goto :goto_10

    :catchall_d
    move-exception v0

    move-object p0, v0

    goto :goto_44

    :cond_10
    :goto_10
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_16

    .line 1905
    iput-boolean v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperWaitingForUnlock:Z

    .line 1907
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->getDescription()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    .line 1908
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperDescriptionLocked(Landroid/app/wallpaper/WallpaperDescription;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result p0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_d

    if-nez p0, :cond_42

    .line 1913
    :try_start_25
    iget-object p0, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v3}, Landroid/app/wallpaper/WallpaperDescription;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    iget p2, v6, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    const-wide/32 v3, 0x40000

    invoke-interface {p0, p1, v3, v4, p2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_34} :catch_35
    .catchall {:try_start_25 .. :try_end_34} :catchall_d

    goto :goto_3f

    :catch_35
    move-exception v0

    move-object p0, v0

    .line 1916
    :try_start_37
    const-string p1, "WallpaperManagerService"

    const-string p2, "Failure starting previous wallpaper; clearing"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 1918
    :goto_3f
    invoke-virtual {v2, v6, v7, p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->onSwitchWallpaperFailLocked(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;Landroid/content/pm/ServiceInfo;)V

    .line 1920
    :cond_42
    monitor-exit v1

    return-void

    :goto_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_37 .. :try_end_45} :catchall_d

    throw p0
.end method

.method public systemReady()V
    .registers 5

    .line 1658
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initialize()V

    .line 1660
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    .line 1663
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 1664
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1667
    :cond_1e
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperData;->cropExists()Z

    move-result v2

    if-nez v2, :cond_29

    .line 1671
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

    invoke-virtual {v2, v0}, Lcom/android/server/wallpaper/WallpaperCropper;->generateCrop(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 1674
    :cond_29
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperData;->cropExists()Z

    move-result v2

    if-nez v2, :cond_35

    .line 1678
    iget v0, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(IIZLandroid/os/IRemoteCallback;)V

    .line 1686
    :cond_35
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1687
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1688
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$4;

    invoke-direct {v2, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$4;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1699
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1700
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$5;

    invoke-direct {v2, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$5;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1715
    :try_start_5a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$6;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    const-string p0, "WallpaperManagerService"

    invoke-interface {v0, v1, p0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_68} :catch_69

    return-void

    :catch_69
    move-exception p0

    .line 1724
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return-void
.end method

.method public unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    .registers 11

    .line 2564
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "unregisterWallpaperColorsCallback"

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2566
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2568
    :try_start_15
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-eqz p0, :cond_2e

    .line 2571
    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_2e

    .line 2573
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_2e

    :catchall_2b
    move-exception v0

    move-object p0, v0

    goto :goto_30

    .line 2576
    :cond_2e
    :goto_2e
    monitor-exit v1

    return-void

    :goto_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_15 .. :try_end_31} :catchall_2b

    throw p0
.end method

.method public final updateCurrentWallpapers(Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 4

    .line 3656
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_25

    .line 3659
    :cond_f
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    .line 3660
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    const/4 p1, 0x0

    .line 3661
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    return-void

    :cond_1a
    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 3663
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    return-void

    :cond_20
    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    .line 3665
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    :cond_25
    :goto_25
    return-void
.end method

.method public final updateEngineFlags(Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 4

    .line 3730
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-nez v0, :cond_5

    return-void

    .line 3733
    :cond_5
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final updateFallbackConnection(I)V
    .registers 14

    .line 655
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v0, :cond_10c

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-nez v1, :cond_a

    goto/16 :goto_10c

    .line 656
    :cond_a
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 657
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 659
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v2, :cond_15

    .line 660
    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    .line 664
    :goto_16
    const-string v3, "WallpaperManagerService"

    if-nez v1, :cond_20

    .line 665
    const-string p0, "Fallback wallpaper connection has not been created yet!!"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 669
    :cond_20
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/wm/DesktopModeHelper;->isDeviceEligibleForDesktopExperienceWallpaper(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_dc

    .line 670
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    .line 671
    array-length v4, v1

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    :goto_32
    if-ltz v4, :cond_10c

    .line 672
    aget-object v7, v1, v4

    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    .line 673
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v8, v7, p1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->isUsableDisplay(II)Z

    move-result v8

    if-nez v8, :cond_44

    goto/16 :goto_d8

    .line 679
    :cond_44
    invoke-virtual {v0, v7}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v8

    if-eqz v8, :cond_79

    if-eqz v2, :cond_52

    .line 680
    invoke-virtual {v2, v7}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v8

    if-eqz v8, :cond_79

    .line 681
    :cond_52
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v8, v8, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-static {v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v8

    .line 682
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    if-eqz v8, :cond_d8

    .line 684
    iget-object v9, v8, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v9, :cond_6d

    .line 685
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v9, v9, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v8, v9}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->disconnectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    .line 687
    :cond_6d
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v8, v8, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-static {v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_d8

    .line 694
    :cond_79
    invoke-virtual {v0, v7}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v8

    xor-int/2addr v8, v6

    if-eqz v2, :cond_86

    .line 697
    invoke-virtual {v2, v7}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v9

    if-nez v9, :cond_88

    :cond_86
    or-int/lit8 v8, v8, 0x2

    .line 700
    :cond_88
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v9, v9, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v9, v7}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v9

    if-eqz v9, :cond_c5

    .line 702
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v9, v9, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-static {v9}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v9

    .line 703
    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    if-eqz v7, :cond_d8

    .line 705
    :try_start_a2
    iget-object v9, v7, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v9, :cond_d8

    iget v10, v7, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mWhich:I

    if-eq v10, v8, :cond_d8

    .line 707
    invoke-interface {v9, v8}, Landroid/service/wallpaper/IWallpaperEngine;->setWallpaperFlags(I)V

    .line 708
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v10, v7, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    and-int/lit8 v11, v8, 0x2

    if-eqz v11, :cond_b7

    move v11, v6

    goto :goto_b8

    :cond_b7
    move v11, v5

    :goto_b8
    invoke-virtual {v9, v10, v11}, Lcom/android/server/wm/WindowManagerInternal;->setWallpaperShowWhenLocked(Landroid/os/IBinder;Z)V

    .line 711
    iput v8, v7, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mWhich:I
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_bd} :catch_be

    goto :goto_d8

    :catch_be
    move-exception v7

    .line 714
    const-string v8, "Failed to update fallback wallpaper engine flags"

    invoke-static {v3, v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d8

    .line 719
    :cond_c5
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v9, v9, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 720
    invoke-virtual {v9, v7}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object v7

    if-eqz v7, :cond_d8

    .line 722
    iput v8, v7, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mWhich:I

    .line 723
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v9, v8, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v7, v9, v8}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V

    :cond_d8
    :goto_d8
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_32

    .line 728
    :cond_dc
    invoke-virtual {p0, v5, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperCompatibleForDisplay(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result p1

    if-eqz p1, :cond_fc

    .line 729
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-eqz p0, :cond_10c

    .line 730
    new-instance p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda9;

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    invoke-virtual {v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 735
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void

    .line 738
    :cond_fc
    new-instance p1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    invoke-static {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$mappendConnectorWithCondition(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Ljava/util/function/Predicate;)V

    .line 742
    new-instance p1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    :cond_10c
    :goto_10c
    return-void
.end method

.method public updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .registers 8

    .line 3219
    const-string p0, "WallpaperManagerService"

    if-nez p1, :cond_6

    const-string p1, ""

    :cond_6
    const/4 v0, 0x0

    .line 3221
    :try_start_7
    iget v1, p2, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    .line 3222
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_23

    .line 3223
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 3225
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f9

    const/4 v3, -0x1

    .line 3224
    invoke-static {v1, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_23

    :catch_21
    move-exception p1

    goto :goto_94

    .line 3229
    :cond_23
    :goto_23
    invoke-virtual {p2}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v1

    const/high16 v2, 0x3c000000    # 0.0078125f

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 3231
    invoke-virtual {p2}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_54

    .line 3232
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "restorecon failed for wallpaper file: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3233
    invoke-virtual {p2}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3232
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 3236
    :cond_54
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    .line 3237
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperUtils;->makeWallpaperIdLocked()I

    move-result v2

    iput v2, p2, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    if-eqz p3, :cond_63

    .line 3239
    const-string v3, "android.service.wallpaper.extra.ID"

    invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3242
    :cond_63
    iput-object v0, p2, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 3243
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWallpaperBitmapLocked() : id="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " name="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " file="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3244
    invoke-virtual {p2}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3243
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_93} :catch_21

    return-object v1

    .line 3247
    :goto_94
    const-string p2, "Error setting wallpaper"

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public final validateCrops(Landroid/util/SparseArray;)V
    .registers 6

    if-nez p1, :cond_3

    goto :goto_55

    :cond_3
    const/4 p0, 0x0

    .line 3143
    :goto_4
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p0, v0, :cond_55

    .line 3144
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 3145
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 3146
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ltz v2, :cond_3e

    if-ltz v3, :cond_3e

    .line 3147
    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-ltz v2, :cond_3e

    iget v2, v1, Landroid/graphics/Rect;->top:I

    if-ltz v2, :cond_3e

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3b

    .line 3150
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_33

    goto :goto_3b

    .line 3151
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid crops supplied: the UNKNOWNscreen orientation should only be used in a singleton map"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    :goto_3b
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    .line 3148
    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid crop rect supplied: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_55
    :goto_55
    return-void
.end method
