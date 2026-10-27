.class final Lcom/android/server/display/LocalDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;,
        Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;,
        Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;,
        Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;,
        Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;,
        Lcom/android/server/display/LocalDisplayAdapter$Injector;,
        Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;,
        Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final PROPERTY_EMULATOR_CIRCULAR:Ljava/lang/String; = "ro.emulator.circular"

.field private static final TAG:Ljava/lang/String; = "LocalDisplayAdapter"

.field private static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "local:"

.field private static mIsFoldable:Z


# instance fields
.field private mAppliedDozeBrightnessNode:Z

.field private final mDevices:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mInjector:Lcom/android/server/display/LocalDisplayAdapter$Injector;

.field private final mIsBootDisplayModeSupported:Z

.field private mOverlayContext:Landroid/content/Context;

.field private final mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppliedDozeBrightnessNode(Lcom/android/server/display/LocalDisplayAdapter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mAppliedDozeBrightnessNode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevices(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/LongSparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsBootDisplayModeSupported(Lcom/android/server/display/LocalDisplayAdapter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mIsBootDisplayModeSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAppliedDozeBrightnessNode(Lcom/android/server/display/LocalDisplayAdapter;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mAppliedDozeBrightnessNode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mtryConnectDisplayLocked(Lcom/android/server/display/LocalDisplayAdapter;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtryDisconnectDisplayLocked(Lcom/android/server/display/LocalDisplayAdapter;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter;->tryDisconnectDisplayLocked(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/display/LocalDisplayAdapter;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmIsFoldable()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/display/LocalDisplayAdapter;->mIsFoldable:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputDEBUG(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/display/LocalDisplayAdapter;->DEBUG:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/LocalDisplayAdapter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V
    .registers 11
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;

    .line 95
    new-instance v5, Lcom/android/server/display/LocalDisplayAdapter$Injector;

    invoke-direct {v5}, Lcom/android/server/display/LocalDisplayAdapter$Injector;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/LocalDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/LocalDisplayAdapter$Injector;)V

    .line 96
    return-void
.end method

.method constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/LocalDisplayAdapter$Injector;)V
    .registers 12
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;
    .param p5, "injector"    # Lcom/android/server/display/LocalDisplayAdapter$Injector;

    .line 101
    const-string v5, "LocalDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 77
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    .line 102
    iput-object p5, p0, Lcom/android/server/display/LocalDisplayAdapter;->mInjector:Lcom/android/server/display/LocalDisplayAdapter$Injector;

    .line 103
    invoke-virtual {p5}, Lcom/android/server/display/LocalDisplayAdapter$Injector;->getSurfaceControlProxy()Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 104
    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getBootDisplayModeSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mIsBootDisplayModeSupported:Z

    .line 107
    const-string/jumbo v0, "persist.sys.muiltdisplay_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    sput-boolean v1, Lcom/android/server/display/LocalDisplayAdapter;->mIsFoldable:Z

    .line 108
    return-void
.end method

.method static getPowerModeForState(I)I
    .registers 2
    .param p0, "state"    # I

    .line 187
    packed-switch p0, :pswitch_data_e

    .line 197
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 195
    :pswitch_5
    const/4 v0, 0x4

    return v0

    .line 193
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 191
    :pswitch_9
    const/4 v0, 0x1

    return v0

    .line 189
    :pswitch_b
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_3
        :pswitch_9
        :pswitch_7
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private tryConnectDisplayLocked(J)V
    .registers 22
    .param p1, "physicalDisplayId"    # J

    .line 123
    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    iget-object v0, v9, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 124
    invoke-virtual {v0, v10, v11}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v12

    .line 125
    .local v12, "displayToken":Landroid/os/IBinder;
    if-eqz v12, :cond_ec

    .line 126
    iget-object v0, v9, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 127
    invoke-virtual {v0, v12}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getStaticDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$StaticDisplayInfo;

    move-result-object v13

    .line 128
    .local v13, "staticInfo":Landroid/view/SurfaceControl$StaticDisplayInfo;
    const-string v0, "LocalDisplayAdapter"

    if-nez v13, :cond_2d

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid static info found for display device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void

    .line 132
    :cond_2d
    iget-object v1, v9, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 133
    invoke-virtual {v1, v12}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getDynamicDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DynamicDisplayInfo;

    move-result-object v14

    .line 134
    .local v14, "dynamicInfo":Landroid/view/SurfaceControl$DynamicDisplayInfo;
    if-nez v14, :cond_4c

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid dynamic info found for display device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void

    .line 138
    :cond_4c
    iget-object v1, v14, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    if-nez v1, :cond_67

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid modes found for display device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void

    .line 143
    :cond_67
    iget v1, v14, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    if-gez v1, :cond_82

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid active mode found for display device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void

    .line 149
    :cond_82
    iget v1, v14, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeColorMode:I

    if-gez v1, :cond_9f

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid active color mode for display device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, -0x1

    iput v0, v14, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeColorMode:I

    .line 156
    :cond_9f
    iget-object v0, v9, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 157
    invoke-virtual {v0, v12}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    move-result-object v15

    .line 158
    .local v15, "modeSpecs":Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;
    iget-object v0, v9, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 159
    .local v7, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    if-nez v7, :cond_da

    .line 161
    iget-object v0, v9, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/4 v6, 0x1

    if-nez v0, :cond_bb

    move v8, v6

    goto :goto_bd

    :cond_bb
    const/4 v0, 0x0

    move v8, v0

    .line 162
    .local v8, "isFirstDisplay":Z
    :goto_bd
    new-instance v16, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v12

    move-wide/from16 v3, p1

    move-object v5, v13

    move-object/from16 v17, v12

    move v12, v6

    .end local v12    # "displayToken":Landroid/os/IBinder;
    .local v17, "displayToken":Landroid/os/IBinder;
    move-object v6, v14

    move-object/from16 v18, v7

    .end local v7    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .local v18, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    move-object v7, v15

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;JLandroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;Z)V

    .line 164
    .end local v18    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .local v0, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    iget-object v1, v9, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v10, v11, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 165
    invoke-virtual {v9, v0, v12}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .end local v8    # "isFirstDisplay":Z
    goto :goto_eb

    .line 166
    .end local v0    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .end local v17    # "displayToken":Landroid/os/IBinder;
    .restart local v7    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .restart local v12    # "displayToken":Landroid/os/IBinder;
    :cond_da
    move-object/from16 v18, v7

    move-object/from16 v17, v12

    .end local v7    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .end local v12    # "displayToken":Landroid/os/IBinder;
    .restart local v17    # "displayToken":Landroid/os/IBinder;
    .restart local v18    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    move-object/from16 v0, v18

    .end local v18    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .restart local v0    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    invoke-virtual {v0, v13, v14, v15}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDisplayPropertiesLocked(Landroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 168
    const/4 v1, 0x2

    invoke-virtual {v9, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    goto :goto_ee

    .line 166
    :cond_eb
    :goto_eb
    goto :goto_ee

    .line 125
    .end local v0    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .end local v13    # "staticInfo":Landroid/view/SurfaceControl$StaticDisplayInfo;
    .end local v14    # "dynamicInfo":Landroid/view/SurfaceControl$DynamicDisplayInfo;
    .end local v15    # "modeSpecs":Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;
    .end local v17    # "displayToken":Landroid/os/IBinder;
    .restart local v12    # "displayToken":Landroid/os/IBinder;
    :cond_ec
    move-object/from16 v17, v12

    .line 175
    .end local v12    # "displayToken":Landroid/os/IBinder;
    .restart local v17    # "displayToken":Landroid/os/IBinder;
    :goto_ee
    return-void
.end method

.method private tryDisconnectDisplayLocked(J)V
    .registers 5
    .param p1, "physicalDisplayId"    # J

    .line 178
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 179
    .local v0, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    if-eqz v0, :cond_13

    .line 181
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 182
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 184
    :cond_13
    return-void
.end method


# virtual methods
.method getOverlayContext()Landroid/content/Context;
    .registers 2

    .line 1379
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mOverlayContext:Landroid/content/Context;

    if-nez v0, :cond_e

    .line 1380
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mOverlayContext:Landroid/content/Context;

    .line 1382
    :cond_e
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mOverlayContext:Landroid/content/Context;

    return-object v0
.end method

.method public registerLocked()V
    .registers 6

    .line 112
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 114
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mInjector:Lcom/android/server/display/LocalDisplayAdapter$Injector;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener-IA;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/LocalDisplayAdapter$Injector;->setDisplayEventListenerLocked(Landroid/os/Looper;Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;)V

    .line 117
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getPhysicalDisplayIds()[J

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_28

    aget-wide v3, v0, v2

    .line 118
    .local v3, "physicalDisplayId":J
    invoke-direct {p0, v3, v4}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(J)V

    .line 117
    .end local v3    # "physicalDisplayId":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 120
    :cond_28
    return-void
.end method
