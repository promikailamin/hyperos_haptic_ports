.class public final Lcom/android/server/display/LocalDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "LocalDisplayAdapter.java"


# instance fields
.field public mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

.field public final mDevices:Landroid/util/LongSparseArray;

.field public final mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

.field public mEvenDimmerEnabled:Z

.field public mEvenDimmerStrength:I

.field public final mInjector:Lcom/android/server/display/LocalDisplayAdapter$Injector;

.field public final mIsBootDisplayModeSupported:Z

.field public mNitsToEvenDimmerStrength:Landroid/util/Spline;

.field public mOverlayContext:Landroid/content/Context;

.field public final mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCdsi(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDevices(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/LongSparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayNotificationManager(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/notifications/DisplayNotificationManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEvenDimmerEnabled(Lcom/android/server/display/LocalDisplayAdapter;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mEvenDimmerEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEvenDimmerStrength(Lcom/android/server/display/LocalDisplayAdapter;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mEvenDimmerStrength:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$Injector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mInjector:Lcom/android/server/display/LocalDisplayAdapter$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsBootDisplayModeSupported(Lcom/android/server/display/LocalDisplayAdapter;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mIsBootDisplayModeSupported:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNitsToEvenDimmerStrength(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/Spline;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mNitsToEvenDimmerStrength:Landroid/util/Spline;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCdsi(Lcom/android/server/display/LocalDisplayAdapter;Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEvenDimmerEnabled(Lcom/android/server/display/LocalDisplayAdapter;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mEvenDimmerEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEvenDimmerStrength(Lcom/android/server/display/LocalDisplayAdapter;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mEvenDimmerStrength:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNitsToEvenDimmerStrength(Lcom/android/server/display/LocalDisplayAdapter;Landroid/util/Spline;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mNitsToEvenDimmerStrength:Landroid/util/Spline;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtryConnectDisplayLocked(Lcom/android/server/display/LocalDisplayAdapter;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtryDisconnectDisplayLocked(Lcom/android/server/display/LocalDisplayAdapter;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter;->tryDisconnectDisplayLocked(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smhdrTypesEqual([I[I)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter;->hdrTypesEqual([I[I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/notifications/DisplayNotificationManager;)V
    .registers 15

    .line 108
    new-instance v7, Lcom/android/server/display/LocalDisplayAdapter$Injector;

    invoke-direct {v7}, Lcom/android/server/display/LocalDisplayAdapter$Injector;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/display/LocalDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/notifications/DisplayNotificationManager;Lcom/android/server/display/LocalDisplayAdapter$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/notifications/DisplayNotificationManager;Lcom/android/server/display/LocalDisplayAdapter$Injector;)V
    .registers 15

    .line 117
    const-string v5, "LocalDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 87
    new-instance p0, Landroid/util/LongSparseArray;

    invoke-direct {p0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p0, v0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    const/4 p0, -0x1

    .line 99
    iput p0, v0, Lcom/android/server/display/LocalDisplayAdapter;->mEvenDimmerStrength:I

    const/4 p0, 0x0

    .line 100
    iput-boolean p0, v0, Lcom/android/server/display/LocalDisplayAdapter;->mEvenDimmerEnabled:Z

    .line 118
    iput-object p6, v0, Lcom/android/server/display/LocalDisplayAdapter;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    .line 119
    iput-object p7, v0, Lcom/android/server/display/LocalDisplayAdapter;->mInjector:Lcom/android/server/display/LocalDisplayAdapter$Injector;

    .line 120
    invoke-virtual {p7}, Lcom/android/server/display/LocalDisplayAdapter$Injector;->getSurfaceControlProxy()Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 121
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getBootDisplayModeSupport()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/server/display/LocalDisplayAdapter;->mIsBootDisplayModeSupported:Z

    return-void
.end method

.method public static hdrTypesEqual([I[I)Z
    .registers 3

    .line 1558
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    .line 1559
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    .line 1561
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getOverlayContext()Landroid/content/Context;
    .registers 2

    .line 1566
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mOverlayContext:Landroid/content/Context;

    if-nez v0, :cond_e

    .line 1567
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mOverlayContext:Landroid/content/Context;

    .line 1569
    :cond_e
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mOverlayContext:Landroid/content/Context;

    return-object p0
.end method

.method public registerLocked()V
    .registers 6

    .line 126
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 128
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mInjector:Lcom/android/server/display/LocalDisplayAdapter$Injector;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Lcom/android/server/display/LocalDisplayAdapter-IA;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/LocalDisplayAdapter$Injector;->setDisplayEventListenerLocked(Landroid/os/Looper;Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;)V

    .line 131
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getPhysicalDisplayIds()[J

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_28

    aget-wide v3, v0, v2

    .line 132
    invoke-virtual {p0, v3, v4}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_28
    return-void
.end method

.method public final tryConnectDisplayLocked(J)V
    .registers 14

    .line 137
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 138
    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_d1

    .line 140
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 141
    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getStaticDisplayInfo(J)Landroid/view/SurfaceControl$StaticDisplayInfo;

    move-result-object v6

    .line 142
    const-string v0, "LocalDisplayAdapter"

    if-nez v6, :cond_27

    .line 143
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid static info found for display device "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 146
    :cond_27
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 147
    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getDynamicDisplayInfo(J)Landroid/view/SurfaceControl$DynamicDisplayInfo;

    move-result-object v7

    if-nez v7, :cond_44

    .line 149
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid dynamic info found for display device "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 152
    :cond_44
    iget-object v1, v7, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    if-nez v1, :cond_5d

    .line 154
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid modes found for display device "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 157
    :cond_5d
    iget v1, v7, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    if-gez v1, :cond_76

    .line 160
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid active mode found for display device "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 163
    :cond_76
    iget v1, v7, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeColorMode:I

    if-gez v1, :cond_91

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid active color mode for display device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    .line 168
    iput v1, v7, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeColorMode:I

    .line 170
    :cond_91
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 171
    invoke-virtual {v1, v3}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    move-result-object v8

    if-nez v8, :cond_9f

    .line 175
    const-string p0, "Desired display mode specs from SurfaceFlinger are null"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 178
    :cond_9f
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-nez v0, :cond_c6

    .line 181
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/4 v10, 0x1

    if-nez v0, :cond_b4

    move v9, v10

    goto :goto_b6

    :cond_b4
    const/4 v0, 0x0

    move v9, v0

    .line 182
    :goto_b6
    new-instance v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;JLandroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;Z)V

    .line 184
    iget-object p0, v2, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v4, v5, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 185
    invoke-virtual {v2, v1, v10}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    return-void

    :cond_c6
    move-object v2, p0

    .line 186
    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDisplayPropertiesLocked(Landroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    move-result p0

    if-eqz p0, :cond_d1

    const/4 p0, 0x2

    .line 188
    invoke-virtual {v2, v0, p0}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    :cond_d1
    return-void
.end method

.method public final tryDisconnectDisplayLocked(J)V
    .registers 5

    .line 198
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-eqz v0, :cond_13

    .line 201
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    const/4 p1, 0x3

    .line 202
    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    :cond_13
    return-void
.end method
