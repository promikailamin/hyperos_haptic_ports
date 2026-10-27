.class public Lcom/android/server/wm/DeviceStateAutoRotateSettingController;
.super Ljava/lang/Object;
.source "DeviceStateAutoRotateSettingController.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAccelerometerSetting:Z

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mDevicePosture:I

.field public final mDeviceStateAutoRotateHistory:Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory;

.field public mDeviceStateAutoRotateSetting:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

.field public final mDeviceStateAutoRotateSettingManager:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager;

.field public final mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

.field public final mEventHandler:Landroid/os/Handler;

.field public final mHandler:Landroid/os/Handler;

.field public final mPendingEvents:Ljava/util/List;

.field public final mPostureDeviceStateConverter:Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;

.field public final mWm:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$5JtFqwJA8-XkjGomQXScGgUE9D8(Lcom/android/server/wm/DeviceStateAutoRotateSettingController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->lambda$registerDeviceStateAutoRotateSettingObserver$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$7yZWLboBhIAjzXcdzgAWp9Firjo(Lcom/android/server/wm/DeviceStateAutoRotateSettingController;Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;Landroid/hardware/devicestate/DeviceState;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->lambda$registerDeviceStateObserver$1(Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;Landroid/hardware/devicestate/DeviceState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDevicePosture(Lcom/android/server/wm/DeviceStateAutoRotateSettingController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDevicePosture:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingEvents(Lcom/android/server/wm/DeviceStateAutoRotateSettingController;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mPendingEvents:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleEvent(Lcom/android/server/wm/DeviceStateAutoRotateSettingController;Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->handleEvent(Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostUpdate(Lcom/android/server/wm/DeviceStateAutoRotateSettingController;Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->postUpdate(Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 83
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DeviceStateController;Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager;Lcom/android/server/wm/WindowManagerService;Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;)V
    .registers 7

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mPendingEvents:Ljava/util/List;

    .line 95
    new-instance v0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory;-><init>(Lcom/android/server/wm/DeviceStateAutoRotateSettingController-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDeviceStateAutoRotateHistory:Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory;

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDevicePosture:I

    .line 108
    iput-object p2, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDeviceStateAutoRotateSettingManager:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager;

    .line 109
    iput-object p3, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 110
    iget-object p2, p3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {p0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->getHandler()Landroid/os/Handler;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mHandler:Landroid/os/Handler;

    .line 112
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mContentResolver:Landroid/content/ContentResolver;

    .line 113
    iput-object p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

    .line 114
    iput-object p4, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mPostureDeviceStateConverter:Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;

    .line 115
    invoke-virtual {p0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->getDeviceStateAutoRotateSetting()Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDeviceStateAutoRotateSetting:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    if-nez p1, :cond_3b

    .line 118
    invoke-virtual {p0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->getDefaultDeviceStateAutoRotateSetting()Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDeviceStateAutoRotateSetting:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    .line 120
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->getAccelerometerRotationSetting()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mAccelerometerSetting:Z

    .line 121
    new-instance p1, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$1;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$1;-><init>(Lcom/android/server/wm/DeviceStateAutoRotateSettingController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mEventHandler:Landroid/os/Handler;

    .line 147
    invoke-virtual {p0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->registerDeviceStateAutoRotateSettingObserver()V

    .line 148
    invoke-virtual {p0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->registerAccelerometerRotationSettingObserver()V

    .line 149
    invoke-virtual {p0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->registerDeviceStateObserver()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3

    .line 408
    iget-object p0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDeviceStateAutoRotateHistory:Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final getAccelerometerRotationSetting()Z
    .registers 4

    .line 393
    iget-object p0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v0, -0x1

    const/4 v1, -0x2

    const-string v2, "accelerometer_rotation"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_e

    return v0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final getDefaultDeviceStateAutoRotateSetting()Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;
    .registers 1

    .line 404
    iget-object p0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDeviceStateAutoRotateSettingManager:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager;

    invoke-interface {p0}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager;->getDefaultRotationLockSetting()Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    move-result-object p0

    return-object p0
.end method

.method public final getDeviceStateAutoRotateSetting()Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;
    .registers 1

    .line 399
    iget-object p0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDeviceStateAutoRotateSettingManager:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager;

    invoke-interface {p0}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager;->getRotationLockSetting()Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    move-result-object p0

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 413
    iget-object p0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    return-object p0
.end method

.method public final handleEvent(Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;)V
    .registers 10

    .line 154
    invoke-virtual {p0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->getAccelerometerRotationSetting()Z

    move-result v2

    .line 156
    invoke-virtual {p0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->getDeviceStateAutoRotateSetting()Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    move-result-object v3

    .line 158
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->updateInMemoryState(Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;ZLcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;)V

    .line 161
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->writeInMemoryStateIntoPersistedSetting(ZLcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;)Z

    move-result v7

    .line 164
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->writeUserRotationSettingIfNeeded(Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;Z)V

    .line 165
    sget-boolean v0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 166
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDeviceStateAutoRotateHistory:Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory;

    iget v4, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDevicePosture:I

    iget-boolean v5, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mAccelerometerSetting:Z

    iget-object p0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDeviceStateAutoRotateSetting:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    .line 169
    invoke-interface {p0}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;->clone()Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    move-result-object v6

    move-object v1, p1

    .line 166
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory;->addRecord(Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;ZLcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;IZLcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;Z)V

    :cond_26
    return-void
.end method

.method public final synthetic lambda$registerDeviceStateAutoRotateSettingObserver$0()V
    .registers 2

    .line 198
    sget-object v0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$PersistedSettingUpdate;->INSTANCE:Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$PersistedSettingUpdate;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->postUpdate(Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;)V

    return-void
.end method

.method public final synthetic lambda$registerDeviceStateObserver$1(Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;Landroid/hardware/devicestate/DeviceState;)V
    .registers 4

    .line 216
    iget-object p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mPostureDeviceStateConverter:Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;

    .line 217
    invoke-virtual {p2}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v0

    .line 216
    invoke-virtual {p1, v0}, Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;->deviceStateToPosture(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_24

    .line 219
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Updated device state is invalid. No matching posture found for device state: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DSAutoRotateCtrl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 226
    :cond_24
    new-instance p2, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateDevicePosture;

    invoke-direct {p2, p1}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateDevicePosture;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->postUpdate(Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;)V

    return-void
.end method

.method public final postUpdate(Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;)V
    .registers 3

    .line 232
    iget-object p0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mEventHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final registerAccelerometerRotationSettingObserver()V
    .registers 5

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accelerometer_rotation"

    .line 203
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$2;

    iget-object v3, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$2;-><init>(Lcom/android/server/wm/DeviceStateAutoRotateSettingController;Landroid/os/Handler;)V

    const/4 p0, -0x2

    const/4 v3, 0x0

    .line 202
    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final registerDeviceStateAutoRotateSettingObserver()V
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDeviceStateAutoRotateSettingManager:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager;

    new-instance v1, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DeviceStateAutoRotateSettingController;)V

    invoke-interface {v0, v1}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager;->registerListener(Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSettingListener;)V

    return-void
.end method

.method public final registerDeviceStateObserver()V
    .registers 4

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

    new-instance v1, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DeviceStateAutoRotateSettingController;)V

    new-instance v2, Landroid/os/HandlerExecutor;

    iget-object p0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DeviceStateController;->registerDeviceStateCallback(Lcom/android/server/wm/DeviceStateController$DeviceStateListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public requestAccelerometerRotationSettingChange(ZILjava/lang/String;)V
    .registers 5

    .line 193
    new-instance v0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateAccelerometerRotationSetting;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateAccelerometerRotationSetting;-><init>(ZILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->postUpdate(Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;)V

    return-void
.end method

.method public requestDeviceStateAutoRotateSettingChange(IZ)V
    .registers 5

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mPostureDeviceStateConverter:Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;->deviceStateToPosture(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    .line 178
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Device state auto rotate setting change requested for invalid device state. No matching posture found for device state: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DSAutoRotateCtrl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 184
    :cond_20
    new-instance p1, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateDeviceStateAutoRotateSetting;

    invoke-direct {p1, v0, p2}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateDeviceStateAutoRotateSetting;-><init>(IZ)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->postUpdate(Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;)V

    return-void
.end method

.method public final updateInMemoryState(Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;ZLcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;)V
    .registers 11

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p3, :cond_17

    .line 246
    invoke-virtual {p0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->getDefaultDeviceStateAutoRotateSetting()Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    move-result-object p3

    .line 247
    iget v2, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDevicePosture:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_17

    .line 249
    iget-boolean v3, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mAccelerometerSetting:Z

    if-eqz v3, :cond_13

    move v3, v0

    goto :goto_14

    :cond_13
    move v3, v1

    .line 248
    :goto_14
    invoke-interface {p3, v2, v3}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;->set(II)V

    .line 254
    :cond_17
    iget-boolean v2, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mAccelerometerSetting:Z

    if-eq p2, v2, :cond_1d

    move v2, v1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    .line 256
    :goto_1e
    iget-object v3, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDeviceStateAutoRotateSetting:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    .line 257
    invoke-virtual {v3, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v2, :cond_28

    if-nez v3, :cond_75

    .line 262
    :cond_28
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Persisted setting:\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    const-string v5, " to "

    if-eqz v2, :cond_48

    .line 264
    const-string v6, "ACCELEROMETER_ROTATION setting changed from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mAccelerometerSetting:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " via Settings API.\n"

    .line 266
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_48
    if-nez v3, :cond_5f

    .line 269
    const-string v6, "DEVICE_STATE_ROTATION_LOCK setting directly changed from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDeviceStateAutoRotateSetting:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    .line 270
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\nExpectation is for system-apps to only use defined apis to change auto-rotate persisted settings.\n"

    .line 272
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_5f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "Using Settings API to write auto-rotate persisted setting, could result in inconsistent auto-rotate values."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DSAutoRotateCtrl"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_75
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->updateInMemoryStateFromEvent(Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;)V

    if-nez v3, :cond_88

    .line 295
    invoke-interface {p3}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;->clone()Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDeviceStateAutoRotateSetting:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    .line 296
    iget p3, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDevicePosture:I

    invoke-interface {p1, p3}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;->get(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mAccelerometerSetting:Z

    :cond_88
    if-eqz v2, :cond_97

    .line 299
    iput-boolean p2, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mAccelerometerSetting:Z

    .line 300
    iget-object p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDeviceStateAutoRotateSetting:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    iget p0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDevicePosture:I

    if-eqz p2, :cond_93

    goto :goto_94

    :cond_93
    move v0, v1

    :goto_94
    invoke-interface {p1, p0, v0}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;->set(II)V

    :cond_97
    return-void
.end method

.method public final updateInMemoryStateFromEvent(Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;)V
    .registers 6

    .line 307
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$$ExternalSyntheticTypeSwitchClass2;->switchDispatch(Ljava/lang/Object;I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3a

    if-eq v0, v2, :cond_20

    if-eq v0, v1, :cond_11

    return-void

    .line 321
    :cond_11
    check-cast p1, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateDevicePosture;

    .line 322
    iget p1, p1, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateDevicePosture;->mDevicePosture:I

    iput p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDevicePosture:I

    .line 323
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDeviceStateAutoRotateSetting:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    invoke-interface {v0, p1}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;->get(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mAccelerometerSetting:Z

    return-void

    .line 314
    :cond_20
    check-cast p1, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateDeviceStateAutoRotateSetting;

    .line 315
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDeviceStateAutoRotateSetting:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    iget v3, p1, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateDeviceStateAutoRotateSetting;->mDevicePosture:I

    .line 316
    iget-boolean p1, p1, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateDeviceStateAutoRotateSetting;->mAutoRotate:Z

    if-eqz p1, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v2

    .line 315
    :goto_2c
    invoke-interface {v0, v3, v1}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;->set(II)V

    .line 319
    iget-object p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDeviceStateAutoRotateSetting:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    iget v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDevicePosture:I

    invoke-interface {p1, v0}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;->get(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mAccelerometerSetting:Z

    return-void

    .line 308
    :cond_3a
    check-cast p1, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateAccelerometerRotationSetting;

    .line 309
    iget-boolean p1, p1, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateAccelerometerRotationSetting;->mAutoRotate:Z

    iput-boolean p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mAccelerometerSetting:Z

    .line 310
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDeviceStateAutoRotateSetting:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    iget p0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDevicePosture:I

    if-eqz p1, :cond_47

    goto :goto_48

    :cond_47
    move v1, v2

    :goto_48
    invoke-interface {v0, p0, v1}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;->set(II)V

    return-void
.end method

.method public final writeInMemoryStateIntoPersistedSetting(ZLcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;)Z
    .registers 8

    .line 334
    iget-boolean v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mAccelerometerSetting:Z

    const/4 v1, 0x1

    const-string v2, "DSAutoRotateCtrl"

    if-eq v0, p1, :cond_2b

    .line 335
    iget-object p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "accelerometer_rotation"

    const/4 v4, -0x2

    invoke-static {p1, v3, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 339
    sget-boolean p1, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->DEBUG:Z

    if-eqz p1, :cond_29

    .line 340
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wrote into persisted setting:\nACCELEROMETER_ROTATION="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mAccelerometerSetting:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    move p1, v1

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    .line 346
    :goto_2c
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDeviceStateAutoRotateSetting:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_54

    .line 347
    iget-object p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDeviceStateAutoRotateSetting:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    invoke-interface {p1}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;->write()V

    .line 349
    sget-boolean p1, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->DEBUG:Z

    if-eqz p1, :cond_53

    .line 350
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Wrote into persisted setting:\nDEVICE_STATE_ROTATION_LOCK="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mDeviceStateAutoRotateSetting:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    return v1

    :cond_54
    return p1
.end method

.method public final writeUserRotationSettingIfNeeded(Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;Z)V
    .registers 5

    .line 360
    instance-of v0, p1, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateAccelerometerRotationSetting;

    if-nez v0, :cond_9

    iget-boolean v1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mAccelerometerSetting:Z

    if-ne v1, p2, :cond_9

    return-void

    :cond_9
    if-eqz v0, :cond_12

    .line 370
    check-cast p1, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateAccelerometerRotationSetting;

    iget p2, p1, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateAccelerometerRotationSetting;->mUserRotation:I

    .line 371
    iget-object p1, p1, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateAccelerometerRotationSetting;->mCaller:Ljava/lang/String;

    goto :goto_48

    .line 375
    :cond_12
    iget-boolean p2, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mAccelerometerSetting:Z

    if-eqz p2, :cond_18

    const/4 p2, -0x2

    goto :goto_2f

    .line 379
    :cond_18
    iget-object p2, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mContext:Landroid/content/Context;

    .line 378
    invoke-static {p2}, Lcom/android/internal/view/RotationPolicy;->isCurrentRotationAllowed(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2e

    iget-object p2, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mContext:Landroid/content/Context;

    .line 379
    invoke-static {p2}, Lcom/android/internal/view/RotationPolicy;->useCurrentRotationOnRotationLockChange(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_29

    goto :goto_2e

    .line 381
    :cond_29
    invoke-static {}, Lcom/android/internal/view/RotationPolicy;->getNaturalRotation()I

    move-result p2

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 p2, -0x1

    .line 383
    :goto_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DSAutoRotateCtrl#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 385
    :goto_48
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 386
    :try_start_54
    iget-object v1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v1

    .line 387
    iget-boolean p0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->mAccelerometerSetting:Z

    xor-int/lit8 p0, p0, 0x1

    .line 386
    invoke-virtual {v1, p0, p2, p1}, Lcom/android/server/wm/DisplayRotation;->setUserRotationSetting(IILjava/lang/String;)V

    .line 389
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_54 .. :try_end_68} :catchall_6c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_6c
    move-exception p0

    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
