.class final Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# instance fields
.field public mDimensionsChanged:Z

.field public final mDisplayId:I

.field public mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field public mPaddingChanged:Z

.field public final mToken:Landroid/os/Binder;

.field public mWhich:I

.field public final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;II)V
    .registers 4

    .line 765
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    .line 766
    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDisplayId:I

    .line 767
    iput p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mWhich:I

    return-void
.end method


# virtual methods
.method public connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v14, p2

    .line 792
    iget-object v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    const-string v15, "WallpaperManagerService"

    if-nez v0, :cond_12

    .line 793
    const-string v0, "WallpaperService is not connected yet"

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 796
    :cond_12
    iget v0, v14, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 797
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/DesktopModeHelper;->isDeviceEligibleForDesktopExperienceWallpaper(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 798
    iget v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mWhich:I

    :cond_22
    move v11, v0

    .line 800
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v2, v15}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WPMS.connectLocked-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 803
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    iget v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDisplayId:I

    const/4 v6, 0x0

    const/16 v7, 0x7dd

    invoke-virtual {v0, v4, v7, v5, v6}, Lcom/android/server/wm/WindowManagerInternal;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V

    .line 805
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    and-int/lit8 v5, v11, 0x2

    if-eqz v5, :cond_5e

    const/4 v5, 0x1

    goto :goto_5f

    :cond_5e
    const/4 v5, 0x0

    :goto_5f
    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/WindowManagerInternal;->setWallpaperShowWhenLocked(Landroid/os/IBinder;Z)V

    .line 807
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmImageWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v14}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 808
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    .line 809
    invoke-static {v14}, Lcom/android/server/wallpaper/WallpaperCropper;->getRelativeCropHints(Lcom/android/server/wallpaper/WallpaperData;)Landroid/util/SparseArray;

    move-result-object v5

    .line 808
    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/WindowManagerInternal;->setWallpaperCropHints(Landroid/os/IBinder;Landroid/util/SparseArray;)V

    goto :goto_92

    .line 811
    :cond_82
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/WindowManagerInternal;->setWallpaperCropHints(Landroid/os/IBinder;Landroid/util/SparseArray;)V

    .line 813
    :goto_92
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    iget v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDisplayId:I

    .line 814
    invoke-virtual {v0, v4}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    move-result-object v0

    move-object v4, v2

    .line 816
    :try_start_9d
    iget-object v2, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_9f} :catch_c0

    move-object v5, v4

    :try_start_a0
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    iget v7, v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    iget v8, v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    iget-object v9, v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDisplayId:I

    iget-object v12, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 818
    invoke-virtual {v14}, Lcom/android/server/wallpaper/WallpaperData;->getDescription()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v13
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_b0} :catch_bc

    move-object v6, v5

    const/16 v5, 0x7dd

    move-object/from16 v16, v6

    const/4 v6, 0x0

    .line 816
    :try_start_b6
    invoke-interface/range {v2 .. v13}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;IILandroid/app/WallpaperInfo;Landroid/app/wallpaper/WallpaperDescription;)V
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_b9} :catch_ba

    goto :goto_e0

    :catch_ba
    move-exception v0

    goto :goto_c3

    :catch_bc
    move-exception v0

    move-object/from16 v16, v5

    goto :goto_c3

    :catch_c0
    move-exception v0

    move-object/from16 v16, v4

    .line 820
    :goto_c3
    const-string v2, "Failed attaching wallpaper on display"

    invoke-static {v15, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 821
    iget-boolean v0, v14, Lcom/android/server/wallpaper/WallpaperData;->wallpaperUpdating:Z

    if-nez v0, :cond_e0

    .line 822
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getConnectedEngineSize()I

    move-result v0

    if-nez v0, :cond_e0

    .line 823
    sget-object v0, Lcom/android/server/wallpaper/WallpaperData$BindSource;->CONNECT_LOCKED:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    iput-object v0, v14, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 824
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v14

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 828
    :cond_e0
    :goto_e0
    invoke-virtual/range {v16 .. v16}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public disconnectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V
    .registers 6

    .line 833
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDisplayId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 836
    :try_start_e
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz p1, :cond_20

    .line 837
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    invoke-interface {p1, v0}, Landroid/service/wallpaper/IWallpaperService;->detach(Landroid/os/IBinder;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_20

    :catch_18
    move-exception p1

    .line 840
    const-string v0, "WallpaperManagerService"

    const-string v1, "connection.mService.destroy() threw a RemoteException"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_20
    :goto_20
    const/4 p1, 0x0

    .line 842
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    return-void
.end method

.method public ensureStatusHandled()V
    .registers 7

    .line 771
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDisplayId:I

    .line 772
    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    move-result-object v0

    .line 773
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDimensionsChanged:Z

    const/4 v2, 0x0

    const-string v3, "WallpaperManagerService"

    if-eqz v1, :cond_23

    .line 775
    :try_start_11
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget v4, v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    iget v5, v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    invoke-interface {v1, v4, v5}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1a} :catch_1b

    goto :goto_21

    :catch_1b
    move-exception v1

    .line 777
    const-string v4, "Failed to set wallpaper dimensions"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 779
    :goto_21
    iput-boolean v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDimensionsChanged:Z

    .line 781
    :cond_23
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mPaddingChanged:Z

    if-eqz v1, :cond_37

    .line 783
    :try_start_27
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-interface {v1, v0}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2e} :catch_2f

    goto :goto_35

    :catch_2f
    move-exception v0

    .line 785
    const-string v1, "Failed to set wallpaper padding"

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 787
    :goto_35
    iput-boolean v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mPaddingChanged:Z

    :cond_37
    return-void
.end method
