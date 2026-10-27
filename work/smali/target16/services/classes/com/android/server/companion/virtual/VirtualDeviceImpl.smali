.class final Lcom/android/server/companion/virtual/VirtualDeviceImpl;
.super Landroid/companion/virtual/IVirtualDevice$Stub;
.source "VirtualDeviceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final DEVICE_PROFILES_ALLOWING_MIRROR_DISPLAYS:Ljava/util/List;


# instance fields
.field public mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

.field public mActivityListenerAdapter:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

.field public final mActivityPolicyExemptions:Ljava/util/Set;

.field public final mActivityPolicyPackageExemptions:Ljava/util/Set;

.field public mAllRunningUidPackagePairs:Landroid/util/ArraySet;

.field public final mAppToken:Landroid/os/IBinder;

.field public final mAssociationInfo:Landroid/companion/AssociationInfo;

.field public final mAttributionSource:Landroid/content/AttributionSource;

.field public final mBaseVirtualDisplayFlags:I

.field public final mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

.field public final mContext:Landroid/content/Context;

.field public mDefaultShowPointerIcon:Z

.field public final mDeviceId:I

.field public final mDevicePolicies:Landroid/util/SparseIntArray;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManagerGlobal;

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mInputController:Lcom/android/server/companion/virtual/InputController;

.field public final mIntentInterceptors:Ljava/util/Map;

.field public mLocaleList:Landroid/os/LocaleList;

.field public mLockdownActive:Z

.field public final mOwnerPackageName:Ljava/lang/String;

.field public final mOwnerUid:I

.field public final mParams:Landroid/companion/virtual/VirtualDeviceParams;

.field public final mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

.field public final mPersistentDeviceId:Ljava/lang/String;

.field public final mPowerLock:Ljava/lang/Object;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mPublicVirtualDeviceObject:Landroid/companion/virtual/VirtualDevice;

.field public mRequestedToBeAwake:Z

.field public final mRunningUidPackagePairsPerDisplay:Landroid/util/SparseArray;

.field public final mSensorController:Lcom/android/server/companion/virtual/SensorController;

.field public final mService:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

.field public mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

.field public final mUiModeManagerInternal:Lcom/android/server/UiModeManagerInternal;

.field public final mViewConfigurationController:Lcom/android/server/companion/virtual/ViewConfigurationController;

.field public mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

.field public final mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

.field public final mVirtualDeviceLock:Ljava/lang/Object;

.field public final mVirtualDeviceLog:Lcom/android/server/companion/virtual/VirtualDeviceLog;

.field public final mVirtualDisplays:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$8EImMpHaltQqceNLFZZViuRh5Js(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->lambda$createVirtualMouse$3(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseConfig;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NUvIl4pQbBUxgVBpzKzzZiLapZs(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->lambda$createVirtualStylus$6(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusConfig;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RaugeT8uCZZ5nfGjgxbmta7PqXg(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->lambda$launchPendingIntent$0(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X2HynH2Kq9vZlTYktmdc8KNUOHM(Lcom/android/server/companion/virtual/VirtualDeviceImpl;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->lambda$setDisplayUiMode$8(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$YT2fG87LFXC5Td5wQqNWP-KMyCE(Lcom/android/server/companion/virtual/VirtualDeviceImpl;ILcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;ZLcom/android/server/companion/virtual/GenericWindowPolicyController;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->lambda$createVirtualDisplay$9(ILcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;ZLcom/android/server/companion/virtual/GenericWindowPolicyController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jTUSfj_1e63oadfnJcZQojcy7Xw(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Landroid/os/IBinder;Landroid/hardware/input/VirtualDpadConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->lambda$createVirtualDpad$1(Landroid/os/IBinder;Landroid/hardware/input/VirtualDpadConfig;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$k4eK0XyWqdMzTZRAkuTx9ngab1k(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Landroid/os/IBinder;Landroid/hardware/input/VirtualRotaryEncoderConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->lambda$createVirtualRotaryEncoder$7(Landroid/os/IBinder;Landroid/hardware/input/VirtualRotaryEncoderConfig;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pld4FtNWdQ3SErYr-7D3TBk8h4k(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->lambda$createVirtualKeyboard$2(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$u-bw18Q0Ev_GTM2wa3JlUx3Y4Ms(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Landroid/os/IBinder;Landroid/hardware/input/VirtualNavigationTouchpadConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->lambda$createVirtualNavigationTouchpad$5(Landroid/os/IBinder;Landroid/hardware/input/VirtualNavigationTouchpadConfig;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$va3nT3fPDHGDpd9nbTGzKSx5SmU(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchscreenConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->lambda$createVirtualTouchscreen$4(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchscreenConfig;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityListener(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/companion/virtual/IVirtualDeviceActivityListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAllRunningUidPackagePairs(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/util/ArraySet;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAllRunningUidPackagePairs:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAttributionSource(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/content/AttributionSource;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCameraAccessController(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Lcom/android/server/companion/virtual/CameraAccessController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceId(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIntentInterceptors(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOwnerPackageName(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOwnerUid(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRunningUidPackagePairsPerDisplay(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRunningUidPackagePairsPerDisplay:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Lcom/android/server/companion/virtual/VirtualDeviceManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mService:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVirtualAudioController(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Lcom/android/server/companion/virtual/audio/VirtualAudioController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVirtualDeviceLock(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAllRunningUidPackagePairs(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Landroid/util/ArraySet;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAllRunningUidPackagePairs:Landroid/util/ArraySet;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshouldShowBlockedActivityDialog(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->shouldShowBlockedActivityDialog(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 163
    const-string v0, "android.app.role.COMPANION_DEVICE_APP_STREAMING"

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->DEVICE_PROFILES_ALLOWING_MIRROR_DISPLAYS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/companion/AssociationInfo;Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Lcom/android/server/companion/virtual/VirtualDeviceLog;Landroid/os/IBinder;Landroid/content/AttributionSource;ILcom/android/server/companion/virtual/CameraAccessController;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;Landroid/companion/virtual/VirtualDeviceParams;)V
    .registers 30

    .line 453
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v14

    .line 454
    invoke-static {}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->isVirtualCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 455
    new-instance v0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    const/4 v1, 0x5

    move-object/from16 v13, p12

    .line 456
    invoke-virtual {v13, v1}, Landroid/companion/virtual/VirtualDeviceParams;->getDevicePolicy(I)I

    move-result v1

    move/from16 v7, p7

    invoke-direct {v0, v1, v7}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;-><init>(II)V

    :goto_18
    move-object v15, v0

    goto :goto_20

    :cond_1a
    move/from16 v7, p7

    move-object/from16 v13, p12

    const/4 v0, 0x0

    goto :goto_18

    .line 460
    :goto_20
    new-instance v0, Lcom/android/server/companion/virtual/ViewConfigurationController;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/server/companion/virtual/ViewConfigurationController;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    .line 439
    invoke-direct/range {v0 .. v16}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;-><init>(Landroid/content/Context;Landroid/companion/AssociationInfo;Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Lcom/android/server/companion/virtual/VirtualDeviceLog;Landroid/os/IBinder;Landroid/content/AttributionSource;ILcom/android/server/companion/virtual/InputController;Lcom/android/server/companion/virtual/CameraAccessController;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;Landroid/companion/virtual/VirtualDeviceParams;Landroid/hardware/display/DisplayManagerGlobal;Lcom/android/server/companion/virtual/camera/VirtualCameraController;Lcom/android/server/companion/virtual/ViewConfigurationController;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/companion/AssociationInfo;Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Lcom/android/server/companion/virtual/VirtualDeviceLog;Landroid/os/IBinder;Landroid/content/AttributionSource;ILcom/android/server/companion/virtual/InputController;Lcom/android/server/companion/virtual/CameraAccessController;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;Landroid/companion/virtual/VirtualDeviceParams;Landroid/hardware/display/DisplayManagerGlobal;Lcom/android/server/companion/virtual/camera/VirtualCameraController;Lcom/android/server/companion/virtual/ViewConfigurationController;)V
    .registers 31

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v7, p6

    move/from16 v6, p7

    move-object/from16 v4, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p13

    .line 480
    invoke-direct {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;-><init>()V

    .line 181
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 208
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    const/4 v5, 0x0

    .line 211
    iput-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListenerAdapter:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    .line 217
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    iput-object v8, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    .line 221
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRunningUidPackagePairsPerDisplay:Landroid/util/SparseArray;

    .line 224
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    iput-object v8, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAllRunningUidPackagePairs:Landroid/util/ArraySet;

    const/4 v8, 0x1

    .line 228
    iput-boolean v8, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    .line 230
    iput-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLocaleList:Landroid/os/LocaleList;

    .line 235
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPowerLock:Ljava/lang/Object;

    const/4 v12, 0x0

    .line 236
    iput-boolean v12, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLockdownActive:Z

    .line 238
    iput-boolean v8, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRequestedToBeAwake:Z

    .line 247
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    iput-object v9, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyPackageExemptions:Ljava/util/Set;

    .line 481
    iput-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLog:Lcom/android/server/companion/virtual/VirtualDeviceLog;

    .line 482
    invoke-virtual {v7}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerPackageName:Ljava/lang/String;

    .line 483
    iput-object v7, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 484
    invoke-virtual {v7}, Landroid/content/AttributionSource;->getUid()I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v9

    .line 485
    invoke-virtual {p1, v9, v12}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    .line 486
    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    if-nez v1, :cond_6e

    goto :goto_76

    .line 489
    :cond_6e
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->createPersistentDeviceId(I)Ljava/lang/String;

    move-result-object v5

    :goto_76
    iput-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPersistentDeviceId:Ljava/lang/String;

    move-object/from16 v1, p3

    .line 490
    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mService:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    move-object/from16 v1, p10

    .line 491
    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    move-object/from16 v1, p11

    .line 492
    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    move-object/from16 v1, p12

    .line 493
    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    .line 494
    invoke-virtual {v7}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    .line 495
    iput v6, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    .line 496
    iput-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAppToken:Landroid/os/IBinder;

    .line 497
    iput-object v11, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 498
    invoke-virtual {v11}, Landroid/companion/virtual/VirtualDeviceParams;->getDevicePolicies()Landroid/util/SparseIntArray;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    move-object/from16 v13, p14

    .line 499
    iput-object v13, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManager:Landroid/hardware/display/DisplayManagerGlobal;

    .line 500
    const-class v13, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v13}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v13, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 501
    const-class v13, Lcom/android/server/UiModeManagerInternal;

    invoke-static {v13}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/UiModeManagerInternal;

    iput-object v13, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mUiModeManagerInternal:Lcom/android/server/UiModeManagerInternal;

    .line 502
    const-class v13, Landroid/os/PowerManager;

    invoke-virtual {p1, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPowerManager:Landroid/os/PowerManager;

    const/4 v0, 0x4

    .line 504
    invoke-virtual {v5, v0, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eqz v0, :cond_d4

    .line 506
    const-string v0, "android.permission.ADD_TRUSTED_DISPLAY"

    invoke-virtual {v9, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_cc

    goto :goto_d4

    .line 508
    :cond_cc
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Requires ADD_TRUSTED_DISPLAY permission to set a custom clipboard policy."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 514
    :cond_d4
    :goto_d4
    invoke-virtual {v11}, Landroid/companion/virtual/VirtualDeviceParams;->getLockState()I

    move-result v0

    if-ne v0, v8, :cond_ed

    .line 515
    const-string v0, "android.permission.ADD_ALWAYS_UNLOCKED_DISPLAY"

    invoke-virtual {v9, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e5

    const/16 v0, 0x7140

    goto :goto_ef

    .line 517
    :cond_e5
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Requires ADD_ALWAYS_UNLOCKED_DISPLAY permission to create an always unlocked virtual device."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ed
    const/16 v0, 0x6140

    .line 522
    :goto_ef
    iput v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mBaseVirtualDisplayFlags:I

    if-nez v4, :cond_fb

    .line 525
    new-instance v0, Lcom/android/server/companion/virtual/InputController;

    invoke-direct {v0, v9, v7}, Lcom/android/server/companion/virtual/InputController;-><init>(Landroid/content/Context;Landroid/content/AttributionSource;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    goto :goto_fd

    .line 527
    :cond_fb
    iput-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 529
    :goto_fd
    new-instance v4, Lcom/android/server/companion/virtual/SensorController;

    .line 530
    invoke-virtual {v11}, Landroid/companion/virtual/VirtualDeviceParams;->getVirtualSensorCallback()Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    move-result-object v8

    invoke-virtual {v11}, Landroid/companion/virtual/VirtualDeviceParams;->getVirtualSensorConfigs()Ljava/util/List;

    move-result-object v9

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/companion/virtual/SensorController;-><init>(Landroid/companion/virtual/IVirtualDevice;ILandroid/content/AttributionSource;Landroid/companion/virtual/sensor/IVirtualSensorCallback;Ljava/util/List;)V

    iput-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    .line 531
    iput-object v10, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

    if-eqz v10, :cond_114

    .line 533
    invoke-virtual {v10}, Lcom/android/server/companion/virtual/CameraAccessController;->startObservingIfNeeded()V

    :cond_114
    move-object/from16 v0, p15

    .line 535
    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    move-object/from16 v0, p16

    .line 536
    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mViewConfigurationController:Lcom/android/server/companion/virtual/ViewConfigurationController;

    .line 538
    :try_start_11c
    invoke-interface {v3, p0, v12}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11f
    .catch Landroid/os/RemoteException; {:try_start_11c .. :try_end_11f} :catch_1a3

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating virtual device with deviceId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "VirtualDeviceImpl"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-virtual {v2, v6, v1}, Lcom/android/server/companion/virtual/VirtualDeviceLog;->logCreated(II)V

    .line 545
    new-instance v0, Landroid/companion/virtual/VirtualDevice;

    .line 546
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDeviceId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getPersistentDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Landroid/companion/virtual/VirtualDeviceParams;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 p2, p0

    move-object p1, v0

    move/from16 p3, v1

    move-object/from16 p4, v2

    move-object/from16 p5, v4

    move-object/from16 p6, v7

    invoke-direct/range {p1 .. p6}, Landroid/companion/virtual/VirtualDevice;-><init>(Landroid/companion/virtual/IVirtualDevice;ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPublicVirtualDeviceObject:Landroid/companion/virtual/VirtualDevice;

    .line 548
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x3

    .line 549
    invoke-virtual {v11, v1}, Landroid/companion/virtual/VirtualDeviceParams;->getDevicePolicy(I)I

    move-result v1

    if-nez v1, :cond_168

    .line 550
    invoke-virtual {v11}, Landroid/companion/virtual/VirtualDeviceParams;->getBlockedActivities()Ljava/util/Set;

    move-result-object v1

    goto :goto_16c

    .line 551
    :cond_168
    invoke-virtual {v11}, Landroid/companion/virtual/VirtualDeviceParams;->getAllowedActivities()Ljava/util/Set;

    move-result-object v1

    :goto_16c
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyExemptions:Ljava/util/Set;

    .line 553
    invoke-virtual {v11}, Landroid/companion/virtual/VirtualDeviceParams;->getInputMethodComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1a2

    .line 554
    invoke-virtual {v11}, Landroid/companion/virtual/VirtualDeviceParams;->getInputMethodComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting custom input method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as default for virtual device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v6, p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->setVirtualDeviceInputMethodForAllUsers(ILjava/lang/String;)V

    :cond_1a2
    return-void

    :catch_1a3
    move-exception v0

    move-object p0, v0

    .line 540
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static createPersistentDeviceId(I)Ljava/lang/String;
    .registers 3

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "companion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isVirtualCameraEnabled()Z
    .registers 1

    .line 1866
    invoke-static {}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->nativeVirtualCameraServiceBuildFlagEnabled()Z

    move-result v0

    return v0
.end method

.method private static native nativeVirtualCameraServiceBuildFlagEnabled()Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public addActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V
    .registers 6

    .line 768
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 769
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getDisplayId()I

    move-result v0

    .line 770
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, -0x1

    .line 775
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    if-eq v0, v2, :cond_4c

    .line 777
    :try_start_11
    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    .line 778
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 779
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object p0

    .line 780
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->addActivityPolicyExemption(Landroid/content/ComponentName;)V

    goto/16 :goto_ad

    :catchall_2f
    move-exception p0

    goto/16 :goto_af

    .line 781
    :cond_32
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_ad

    .line 782
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object p0

    .line 783
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->addActivityPolicyExemption(Ljava/lang/String;)V

    goto :goto_ad

    .line 786
    :cond_4c
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyExemptions:Ljava/util/Set;

    .line 787
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 788
    :goto_5f
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_ad

    .line 789
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v0

    .line 790
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->addActivityPolicyExemption(Landroid/content/ComponentName;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 792
    :cond_7d
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyPackageExemptions:Ljava/util/Set;

    .line 793
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 794
    :goto_8f
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_ad

    .line 795
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v0

    .line 796
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->addActivityPolicyExemption(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    .line 800
    :cond_ad
    :goto_ad
    monitor-exit v1

    return-void

    :goto_af
    monitor-exit v1
    :try_end_b0
    .catchall {:try_start_11 .. :try_end_b0} :catchall_2f

    throw p0
.end method

.method public applyViewConfigurationParams(Landroid/companion/virtual/ViewConfigurationParams;)V
    .registers 3

    .line 577
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mViewConfigurationController:Lcom/android/server/companion/virtual/ViewConfigurationController;

    if-eqz v0, :cond_9

    .line 578
    iget p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    invoke-virtual {v0, p0, p1}, Lcom/android/server/companion/virtual/ViewConfigurationController;->applyViewConfigurationParams(ILandroid/companion/virtual/ViewConfigurationParams;)V

    :cond_9
    return-void
.end method

.method public binderDied()V
    .registers 3

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder died, closing virtual device with deviceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VirtualDeviceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->close()V

    return-void
.end method

.method public canCreateMirrorDisplays()Z
    .registers 2

    .line 1288
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDeviceProfile()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1292
    :cond_8
    sget-object v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->DEVICE_PROFILES_ALLOWING_MIRROR_DISPLAYS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final checkCallerIsDeviceOwner()V
    .registers 2

    .line 1583
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1584
    iget p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    if-eq v0, p0, :cond_15

    const/16 p0, 0x3e8

    if-ne v0, p0, :cond_d

    goto :goto_15

    .line 1585
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller is not the owner of this virtual device"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_15
    return-void
.end method

.method public final checkDisplayOwnedByVirtualDeviceLocked(I)V
    .registers 4

    .line 1575
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_9

    return-void

    .line 1576
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid displayId: Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not associated with this virtual device"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkVirtualInputDeviceDisplayIdAssociation(I)V
    .registers 4

    .line 1560
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INJECT_EVENTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_33

    .line 1562
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1563
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    .line 1564
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 1565
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isTrusted()Z

    move-result p1

    if-nez p1, :cond_2f

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isMirror()Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_2f

    .line 1566
    :cond_25
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Cannot create input device associated with an untrusted display"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_2d
    move-exception p0

    goto :goto_31

    .line 1569
    :cond_2f
    :goto_2f
    monitor-exit v0

    return-void

    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_d .. :try_end_32} :catchall_2d

    throw p0

    :cond_33
    return-void
.end method

.method public close()V
    .registers 11

    .line 858
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mService:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    iget v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->removeVirtualDevice(I)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_b7

    .line 863
    :cond_c
    const-string v0, "VirtualDeviceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing virtual device with deviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLog:Lcom/android/server/companion/virtual/VirtualDeviceLog;

    iget v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    iget v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/companion/virtual/VirtualDeviceLog;->logClosed(II)V

    .line 866
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 869
    :try_start_31
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_7d

    .line 870
    :try_start_34
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    const/4 v4, 0x0

    if-eqz v3, :cond_42

    .line 871
    invoke-virtual {v3}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->stopListening()V

    .line 872
    iput-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    goto :goto_42

    :catchall_3f
    move-exception p0

    goto/16 :goto_b8

    .line 874
    :cond_42
    :goto_42
    iput-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLocaleList:Landroid/os/LocaleList;

    .line 875
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    new-array v5, v3, [Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    const/4 v6, 0x0

    move v7, v6

    .line 876
    :goto_4e
    iget-object v8, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_63

    .line 877
    iget-object v8, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4e

    .line 879
    :cond_63
    iget-object v7, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    .line 880
    monitor-exit v2
    :try_end_69
    .catchall {:try_start_34 .. :try_end_69} :catchall_3f

    move v2, v6

    :goto_6a
    if-ge v2, v3, :cond_7f

    .line 882
    :try_start_6c
    aget-object v7, v5, v2

    .line 883
    iget-object v8, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManager:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v7}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getToken()Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/hardware/display/DisplayManagerGlobal;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V

    .line 888
    invoke-virtual {p0, v7}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->releaseOwnedVirtualDisplayResources(Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    :catchall_7d
    move-exception p0

    goto :goto_ba

    .line 891
    :cond_7f
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAppToken:Landroid/os/IBinder;

    invoke-interface {v2, p0, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 892
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

    if-eqz v2, :cond_8b

    .line 893
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/CameraAccessController;->stopObservingIfNeeded()V

    .line 897
    :cond_8b
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v2}, Landroid/companion/virtual/VirtualDeviceParams;->getInputMethodComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_9c

    .line 898
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v2

    iget v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->setVirtualDeviceInputMethodForAllUsers(ILjava/lang/String;)V

    .line 902
    :cond_9c
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController;->close()V

    .line 903
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/SensorController;->close()V
    :try_end_a6
    .catchall {:try_start_6c .. :try_end_a6} :catchall_7d

    .line 905
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 907
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    if-eqz v0, :cond_b0

    .line 908
    invoke-virtual {v0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->close()V

    .line 910
    :cond_b0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mViewConfigurationController:Lcom/android/server/companion/virtual/ViewConfigurationController;

    if-eqz p0, :cond_b7

    .line 911
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/ViewConfigurationController;->close()V

    :cond_b7
    :goto_b7
    return-void

    .line 880
    :goto_b8
    :try_start_b8
    monitor-exit v2
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_3f

    :try_start_b9
    throw p0
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_7d

    .line 905
    :goto_ba
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 906
    throw p0
.end method

.method public createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;)I
    .registers 11

    .line 1382
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1385
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplayConfig;->getFlags()I

    move-result v0

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_d

    goto :goto_14

    :cond_d
    const/4 v0, 0x4

    .line 1387
    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    move-result v0

    if-nez v0, :cond_7a

    .line 1393
    :goto_14
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplayConfig;->getDisplayCategories()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->createWindowPolicyController(Ljava/util/Set;)Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v5

    .line 1400
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v6, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerPackageName:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    move-object v4, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/display/DisplayManagerInternal;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Ljava/lang/String;I)I

    move-result v3

    move-object v2, v4

    const/4 p0, -0x1

    if-ne v3, p0, :cond_2e

    return v3

    .line 1411
    :cond_2e
    iget-object p0, v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter p0

    .line 1412
    :try_start_31
    iget-object p1, v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 1416
    iget-object p1, v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    move-object v6, v5

    .line 1417
    iget-boolean v5, v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    .line 1418
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_31 .. :try_end_46} :catchall_5e

    .line 1419
    invoke-virtual {v4}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->acquireWakeLock()V

    .line 1421
    new-instance v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;

    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;ILcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;ZLcom/android/server/companion/virtual/GenericWindowPolicyController;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1434
    const-string/jumbo p0, "virtual_devices.value_virtual_display_created_count"

    iget-object p1, v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1436
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result p1

    .line 1434
    invoke-static {p0, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    return v3

    :catchall_5e
    move-exception v0

    move-object p1, v0

    goto :goto_78

    .line 1413
    :cond_61
    :try_start_61
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Virtual device was not notified about the creation of display with ID "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1418
    :goto_78
    monitor-exit p0
    :try_end_79
    .catchall {:try_start_61 .. :try_end_79} :catchall_5e

    throw p1

    .line 1388
    :cond_7a
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "All displays must be trusted for devices with custom clipboard policy."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createVirtualDpad(Landroid/hardware/input/VirtualDpadConfig;Landroid/os/IBinder;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 4

    .line 1047
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1048
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    invoke-virtual {p1}, Landroid/hardware/input/VirtualDpadConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    .line 1051
    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Landroid/os/IBinder;Landroid/hardware/input/VirtualDpadConfig;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/IVirtualInputDevice;

    return-object p0
.end method

.method public createVirtualKeyboard(Landroid/hardware/input/VirtualKeyboardConfig;Landroid/os/IBinder;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 4

    .line 1058
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1059
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    .line 1062
    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyboardConfig;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/input/IVirtualInputDevice;

    .line 1064
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1065
    :try_start_1e
    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getLanguageTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLocaleList:Landroid/os/LocaleList;

    .line 1066
    monitor-exit v0

    return-object p2

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;Landroid/os/IBinder;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 4

    .line 1073
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1074
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    .line 1077
    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseConfig;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/IVirtualInputDevice;

    return-object p0
.end method

.method public createVirtualNavigationTouchpad(Landroid/hardware/input/VirtualNavigationTouchpadConfig;Landroid/os/IBinder;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 4

    .line 1095
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1096
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    .line 1099
    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Landroid/os/IBinder;Landroid/hardware/input/VirtualNavigationTouchpadConfig;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/IVirtualInputDevice;

    return-object p0
.end method

.method public createVirtualRotaryEncoder(Landroid/hardware/input/VirtualRotaryEncoderConfig;Landroid/os/IBinder;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 4

    .line 1117
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1118
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    invoke-virtual {p1}, Landroid/hardware/input/VirtualRotaryEncoderConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    .line 1121
    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Landroid/os/IBinder;Landroid/hardware/input/VirtualRotaryEncoderConfig;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/IVirtualInputDevice;

    return-object p0
.end method

.method public createVirtualStylus(Landroid/hardware/input/VirtualStylusConfig;Landroid/os/IBinder;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 4

    .line 1106
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1107
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    invoke-virtual {p1}, Landroid/hardware/input/VirtualStylusConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    .line 1110
    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusConfig;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/IVirtualInputDevice;

    return-object p0
.end method

.method public createVirtualTouchscreen(Landroid/hardware/input/VirtualTouchscreenConfig;Landroid/os/IBinder;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 4

    .line 1084
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1085
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    invoke-virtual {p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    .line 1088
    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchscreenConfig;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/IVirtualInputDevice;

    return-object p0
.end method

.method public final createWakeLockForDisplay(I)Landroid/os/PowerManager$WakeLock;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final createWindowPolicyController(Ljava/util/Set;)Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    .registers 18

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 1351
    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_d

    move v7, v3

    goto :goto_e

    :cond_d
    move v7, v2

    .line 1352
    :goto_e
    iget-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 1353
    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDeviceParams;->getDefaultNavigationPolicy()I

    move-result v1

    if-nez v1, :cond_18

    move v10, v3

    goto :goto_19

    :cond_18
    move v10, v2

    :goto_19
    const/4 v1, 0x2

    .line 1355
    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    move-result v1

    if-nez v1, :cond_22

    move v14, v3

    goto :goto_23

    :cond_22
    move v14, v2

    .line 1357
    :goto_23
    iget-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1358
    :try_start_26
    iget-object v2, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListenerAdapter:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    if-nez v2, :cond_35

    .line 1359
    new-instance v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Lcom/android/server/companion/virtual/VirtualDeviceImpl-IA;)V

    iput-object v2, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListenerAdapter:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    goto :goto_35

    :catchall_33
    move-exception v0

    goto :goto_61

    .line 1362
    :cond_35
    :goto_35
    new-instance v4, Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    iget-object v5, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1364
    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getAllowedUserHandles()Landroid/util/ArraySet;

    move-result-object v6

    iget-object v8, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyExemptions:Ljava/util/Set;

    iget-object v9, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyPackageExemptions:Ljava/util/Set;

    if-eqz v10, :cond_4b

    .line 1370
    iget-object v2, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v2}, Landroid/companion/virtual/VirtualDeviceParams;->getBlockedCrossTaskNavigations()Ljava/util/Set;

    move-result-object v2

    :goto_49
    move-object v11, v2

    goto :goto_52

    .line 1371
    :cond_4b
    iget-object v2, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v2}, Landroid/companion/virtual/VirtualDeviceParams;->getAllowedCrossTaskNavigations()Ljava/util/Set;

    move-result-object v2

    goto :goto_49

    :goto_52
    iget-object v12, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListenerAdapter:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 1375
    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceParams;->getHomeComponent()Landroid/content/ComponentName;

    move-result-object v15

    move-object/from16 v13, p1

    invoke-direct/range {v4 .. v15}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;-><init>(Landroid/content/AttributionSource;Landroid/util/ArraySet;ZLjava/util/Set;Ljava/util/Set;ZLjava/util/Set;Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;Ljava/util/Set;ZLandroid/content/ComponentName;)V

    monitor-exit v1

    return-object v4

    .line 1376
    :goto_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_26 .. :try_end_62} :catchall_33

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 1320
    const-string p1, "    "

    .line 1321
    const-string p3, "  VirtualDevice: "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1322
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mDeviceId: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1323
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mAssociationId: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getAssociationId()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1324
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mOwnerPackageName: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1325
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mParams: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1326
    iget-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Landroid/companion/virtual/VirtualDeviceParams;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1327
    iget-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1328
    :try_start_83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1329
    :goto_89
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_b0

    .line 1330
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1331
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_ad

    .line 1332
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ad

    :catchall_aa
    move-exception p0

    goto/16 :goto_12a

    :cond_ad
    :goto_ad
    add-int/lit8 v1, v1, 0x1

    goto :goto_89

    .line 1335
    :cond_b0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mVirtualDisplayIds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mDevicePolicies: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mDefaultShowPointerIcon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1338
    monitor-exit p3
    :try_end_fd
    .catchall {:try_start_83 .. :try_end_fd} :catchall_aa

    .line 1339
    iget-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/companion/virtual/InputController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1340
    iget-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/companion/virtual/SensorController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1341
    iget-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    if-eqz p3, :cond_10e

    .line 1342
    invoke-virtual {p3, p2, p1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1344
    :cond_10e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "hasCustomAudioInputSupport: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->hasCustomAudioInputSupportInternal()Z

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1344
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1338
    :goto_12a
    :try_start_12a
    monitor-exit p3
    :try_end_12b
    .catchall {:try_start_12a .. :try_end_12b} :catchall_aa

    throw p0
.end method

.method public final getAllowedUserHandles()Landroid/util/ArraySet;
    .registers 9

    .line 1471
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1472
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1474
    :try_start_9
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 1475
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/UserManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 1476
    invoke-virtual {v4}, Landroid/os/UserManager;->getAllProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_25
    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 1478
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 1477
    invoke-virtual {v3, v6}, Landroid/app/admin/DevicePolicyManager;->getNearbyAppStreamingPolicy(I)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_54

    if-nez v6, :cond_3f

    goto :goto_54

    :cond_3f
    const/4 v7, 0x3

    if-ne v6, v7, :cond_25

    .line 1483
    iget-object v6, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v6}, Landroid/companion/virtual/VirtualDeviceParams;->getUsersWithMatchingAccounts()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 1484
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :catchall_52
    move-exception p0

    goto :goto_5c

    .line 1481
    :cond_54
    :goto_54
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_57
    .catchall {:try_start_9 .. :try_end_57} :catchall_52

    goto :goto_25

    .line 1489
    :cond_58
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :goto_5c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1490
    throw p0
.end method

.method public getAssociationId()I
    .registers 1

    .line 691
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 693
    :cond_6
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getId()I

    move-result p0

    return p0
.end method

.method public getAudioPlaybackSessionId()I
    .registers 1

    .line 669
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceParams;->getAudioPlaybackSessionId()I

    move-result p0

    return p0
.end method

.method public getAudioRecordingSessionId()I
    .registers 1

    .line 674
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceParams;->getAudioRecordingSessionId()I

    move-result p0

    return p0
.end method

.method public getBaseVirtualDisplayFlags()I
    .registers 1

    .line 597
    iget p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mBaseVirtualDisplayFlags:I

    return p0
.end method

.method public getCameraAccessController()Lcom/android/server/companion/virtual/CameraAccessController;
    .registers 1

    .line 602
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

    return-object p0
.end method

.method public getDeviceId()I
    .registers 1

    .line 680
    iget p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    return p0
.end method

.method public getDeviceLocaleList()Landroid/os/LocaleList;
    .registers 2

    .line 621
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 622
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLocaleList:Landroid/os/LocaleList;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 623
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getDevicePolicy(I)I
    .registers 4

    .line 643
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 644
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 645
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public getDevicePolicyForDisplayId(II)I
    .registers 5

    .line 650
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_28

    const/4 v1, 0x3

    if-eq p2, v1, :cond_14

    .line 662
    :try_start_9
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    goto :goto_3c

    .line 658
    :cond_14
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 657
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object p0

    .line 658
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->isActivityLaunchAllowedByDefault()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 659
    monitor-exit v0

    return p0

    .line 654
    :cond_28
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 653
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object p0

    .line 654
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->canShowTasksInHostDeviceRecents()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 655
    monitor-exit v0

    return p0

    .line 664
    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_9 .. :try_end_3d} :catchall_12

    throw p0
.end method

.method public getDeviceProfile()Ljava/lang/String;
    .registers 1

    .line 611
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDimDurationMillis()J
    .registers 3

    .line 1654
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceParams;->getDimDuration()Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDisplayIds()[I
    .registers 6

    .line 1663
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1664
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1665
    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_1b

    .line 1667
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :catchall_19
    move-exception p0

    goto :goto_1d

    .line 1669
    :cond_1b
    monitor-exit v0

    return-object v2

    .line 1670
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_19

    throw p0
.end method

.method public final getDisplayIdsWhereUidIsRunning(I)Landroid/util/IntArray;
    .registers 6

    .line 1726
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 1727
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 1728
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 1729
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->containsUid(I)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1730
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    goto :goto_2f

    :catchall_2d
    move-exception p0

    goto :goto_34

    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1733
    :cond_32
    monitor-exit v1

    return-object v0

    :goto_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_9 .. :try_end_35} :catchall_2d

    throw p0
.end method

.method public getDisplayName()Ljava/lang/CharSequence;
    .registers 2

    .line 607
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    if-nez v0, :cond_b

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceParams;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayWindowPolicyControllerForTest(I)Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    .registers 3

    .line 1676
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1677
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 1678
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_15

    if-eqz p0, :cond_13

    .line 1679
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0

    :catchall_15
    move-exception p0

    .line 1678
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getOwnerUid()I
    .registers 1

    .line 1646
    iget p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    return p0
.end method

.method public getPersistentDeviceId()Ljava/lang/String;
    .registers 1

    .line 686
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPersistentDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getPublicVirtualDeviceObject()Landroid/companion/virtual/VirtualDevice;
    .registers 1

    .line 616
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPublicVirtualDeviceObject:Landroid/companion/virtual/VirtualDevice;

    return-object p0
.end method

.method public getScreenOffTimeoutMillis()J
    .registers 3

    .line 1658
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceParams;->getScreenOffTimeout()Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSensorControllerForTest()Lcom/android/server/companion/virtual/SensorController;
    .registers 1

    .line 585
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    return-object p0
.end method

.method public getVirtualAudioControllerForTesting()Lcom/android/server/companion/virtual/audio/VirtualAudioController;
    .registers 1

    .line 923
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    return-object p0
.end method

.method public getVirtualCameraId(Landroid/companion/virtual/camera/VirtualCameraConfig;)Ljava/lang/String;
    .registers 2

    .line 1260
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    if-eqz p0, :cond_c

    .line 1264
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->getCameraId(Landroid/companion/virtual/camera/VirtualCameraConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1262
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Virtual camera controller is not available"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getVirtualSensorByHandle(I)Landroid/companion/virtual/sensor/VirtualSensor;
    .registers 2

    .line 1188
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/SensorController;->getSensorByHandle(I)Landroid/companion/virtual/sensor/VirtualSensor;

    move-result-object p0

    return-object p0
.end method

.method public getVirtualSensorList()Ljava/util/List;
    .registers 1

    .line 1182
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1183
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/SensorController;->getSensorList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public goToSleep()V
    .registers 4

    .line 698
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 699
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPowerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 700
    :try_start_7
    iput-boolean v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRequestedToBeAwake:Z

    .line 701
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_1b

    .line 702
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x4

    .line 704
    :try_start_f
    invoke-virtual {p0, v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->goToSleepInternal(I)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_16

    .line 706
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 707
    throw p0

    :catchall_1b
    move-exception p0

    .line 701
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public goToSleepInternal(I)V
    .registers 10

    .line 1591
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1592
    new-instance v6, Landroid/util/IntArray;

    invoke-direct {v6}, Landroid/util/IntArray;-><init>()V

    .line 1593
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    move v4, v0

    .line 1594
    :goto_e
    :try_start_e
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3b

    .line 1595
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 1596
    invoke-virtual {v5}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isTrusted()Z

    move-result v7

    if-eqz v7, :cond_38

    invoke-virtual {v5}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isMirror()Z

    move-result v5

    if-eqz v5, :cond_2b

    goto :goto_38

    .line 1599
    :cond_2b
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1600
    invoke-virtual {v6, v5}, Landroid/util/IntArray;->add(I)V

    goto :goto_38

    :catchall_35
    move-exception v0

    move-object p0, v0

    goto :goto_52

    :cond_38
    :goto_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1602
    :cond_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_e .. :try_end_3c} :catchall_35

    move v7, v0

    .line 1603
    :goto_3d
    invoke-virtual {v6}, Landroid/util/IntArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_51

    .line 1604
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6, v7}, Landroid/util/IntArray;->get(I)I

    move-result v1

    const/4 v5, 0x0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/os/PowerManager;->goToSleep(IJII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3d

    :cond_51
    return-void

    .line 1602
    :goto_52
    :try_start_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_35

    throw p0
.end method

.method public hasCustomAudioInputSupport()Z
    .registers 1

    .line 1269
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->hasCustomAudioInputSupportInternal()Z

    move-result p0

    return p0
.end method

.method public final hasCustomAudioInputSupportInternal()Z
    .registers 7

    const/4 v0, 0x1

    .line 1300
    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    move-result v1

    if-ne v1, v0, :cond_8

    return v0

    .line 1303
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1305
    :try_start_c
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-class v4, Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 1306
    invoke-virtual {v3}, Landroid/media/AudioManager;->getRegisteredPolicyMixes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/audiopolicy/AudioMix;

    .line 1307
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDeviceId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/audiopolicy/AudioMix;->matchesVirtualDeviceId(I)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1308
    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioMix;->getMixType()I

    move-result v4
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_3e

    if-ne v4, v0, :cond_1e

    .line 1313
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_3e
    move-exception p0

    goto :goto_45

    :cond_40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_45
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1314
    throw p0
.end method

.method public isAppRunningOnVirtualDevice(I)Z
    .registers 6

    .line 1688
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 1689
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 1690
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->containsUid(I)Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 p0, 0x1

    .line 1691
    monitor-exit v0

    return p0

    :catchall_22
    move-exception p0

    goto :goto_29

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1694
    :cond_27
    monitor-exit v0

    return v1

    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_22

    throw p0
.end method

.method public isDisplayOwnedByVirtualDevice(I)Z
    .registers 3

    .line 1738
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1739
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 1740
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public isInputDeviceOwnedByVirtualDevice(I)Z
    .registers 2

    .line 1744
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/InputController;->isInputDevicePresent(I)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$createVirtualDisplay$9(ILcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;ZLcom/android/server/companion/virtual/GenericWindowPolicyController;)V
    .registers 7

    .line 1422
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/companion/virtual/InputController;->setMouseScalingEnabled(ZI)V

    .line 1423
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/companion/virtual/InputController;->setDisplayEligibilityForPointerCapture(ZI)V

    .line 1425
    invoke-virtual {p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isTrusted()Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 1426
    iget-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p2, p3, p1}, Lcom/android/server/companion/virtual/InputController;->setShowPointerIcon(ZI)V

    .line 1427
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/companion/virtual/InputController;->setDisplayImePolicy(II)V

    return-void

    :cond_1c
    const/4 p0, 0x1

    .line 1430
    invoke-virtual {p4, p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->setShowInHostDeviceRecents(Z)V

    return-void
.end method

.method public final synthetic lambda$createVirtualDpad$1(Landroid/os/IBinder;Landroid/hardware/input/VirtualDpadConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 3

    .line 1052
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->createDpad(Landroid/os/IBinder;Landroid/hardware/input/VirtualDpadConfig;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$createVirtualKeyboard$2(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 3

    .line 1063
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->createKeyboard(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$createVirtualMouse$3(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 3

    .line 1078
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->createMouse(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseConfig;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$createVirtualNavigationTouchpad$5(Landroid/os/IBinder;Landroid/hardware/input/VirtualNavigationTouchpadConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 3

    .line 1100
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->createNavigationTouchpad(Landroid/os/IBinder;Landroid/hardware/input/VirtualNavigationTouchpadConfig;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$createVirtualRotaryEncoder$7(Landroid/os/IBinder;Landroid/hardware/input/VirtualRotaryEncoderConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 3

    .line 1122
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->createRotaryEncoder(Landroid/os/IBinder;Landroid/hardware/input/VirtualRotaryEncoderConfig;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$createVirtualStylus$6(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 3

    .line 1111
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->createStylus(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusConfig;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$createVirtualTouchscreen$4(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchscreenConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 3

    .line 1089
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->createTouchscreen(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchscreenConfig;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$launchPendingIntent$0(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V
    .registers 5

    .line 751
    iget-object v0, p1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 753
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    invoke-interface {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;->stopWaitingForPendingTrampoline(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    return-void
.end method

.method public final synthetic lambda$setDisplayUiMode$8(II)V
    .registers 3

    .line 1176
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mUiModeManagerInternal:Lcom/android/server/UiModeManagerInternal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/UiModeManagerInternal;->setDisplayUiMode(II)V

    return-void
.end method

.method public launchPendingIntent(ILandroid/app/PendingIntent;Landroid/os/ResultReceiver;)V
    .registers 11

    .line 732
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 733
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 735
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    .line 736
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_58

    .line 737
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    .line 739
    :try_start_15
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->sendPendingIntent(ILandroid/app/PendingIntent;)V

    const/4 p0, 0x0

    .line 740
    invoke-virtual {p3, p0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_15 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p0

    .line 742
    const-string p1, "VirtualDeviceImpl"

    const-string p2, "Pending intent canceled"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 743
    invoke-virtual {p3, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_57

    .line 747
    :cond_29
    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    invoke-direct {v0, p2, p3, p1, v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;-><init>(Landroid/app/PendingIntent;Landroid/os/ResultReceiver;ILcom/android/server/companion/virtual/VirtualDeviceImpl-IA;)V

    .line 749
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    invoke-interface {v3, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;->startWaitingForPendingTrampoline(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    .line 750
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 756
    :try_start_43
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->sendPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_46
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_43 .. :try_end_46} :catch_47

    return-void

    :catch_47
    move-exception p1

    .line 758
    const-string p2, "VirtualDeviceImpl"

    const-string v3, "Pending intent canceled"

    invoke-static {p2, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 759
    invoke-virtual {p3, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 761
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    invoke-interface {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;->stopWaitingForPendingTrampoline(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    :goto_57
    return-void

    :catchall_58
    move-exception p0

    .line 736
    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public onAudioSessionEnded()V
    .registers 3

    .line 942
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 943
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 944
    :try_start_6
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    if-eqz v1, :cond_13

    .line 945
    invoke-virtual {v1}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->stopListening()V

    const/4 v1, 0x0

    .line 946
    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_15

    .line 948
    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_11

    throw p0
.end method

.method public onAudioSessionStarting(ILandroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V
    .registers 7

    .line 930
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 931
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 932
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    .line 933
    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    if-nez p1, :cond_1e

    .line 934
    new-instance p1, Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-direct {p1, v1, v2}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;-><init>(Landroid/content/Context;Landroid/content/AttributionSource;)V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    .line 935
    invoke-virtual {p1, p2, p3}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->startListening(Landroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_20

    .line 937
    :cond_1e
    :goto_1e
    monitor-exit v0

    return-void

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1c

    throw p0
.end method

.method public onLockdownChanged(Z)V
    .registers 4

    .line 563
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPowerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 564
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLockdownActive:Z

    if-eq p1, v1, :cond_1e

    .line 565
    iput-boolean p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLockdownActive:Z

    if-eqz p1, :cond_13

    const/16 p1, 0xc

    .line 567
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->goToSleepInternal(I)V

    goto :goto_1e

    :catchall_11
    move-exception p0

    goto :goto_20

    .line 568
    :cond_13
    iget-boolean p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRequestedToBeAwake:Z

    if-eqz p1, :cond_1e

    .line 569
    const-string p1, "android.server.companion.virtual:LOCKDOWN_ENDED"

    const/16 v1, 0xb

    invoke-virtual {p0, v1, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->wakeUpInternal(ILjava/lang/String;)V

    .line 573
    :cond_1e
    :goto_1e
    monitor-exit v0

    return-void

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_11

    throw p0
.end method

.method public onVirtualDisplayCreated(ILandroid/hardware/display/IVirtualDisplayCallback;Landroid/window/DisplayWindowPolicyController;)V
    .registers 15

    .line 1503
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1504
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIdToMirror(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_d

    move v10, v3

    goto :goto_e

    :cond_d
    move v10, v2

    .line 1505
    :goto_e
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->flags:I

    and-int/lit16 v1, v0, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_1e

    move v9, v3

    goto :goto_1f

    :cond_1e
    move v9, v2

    :goto_1f
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_24

    move v2, v3

    .line 1509
    :cond_24
    move-object v7, p3

    check-cast v7, Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    if-nez v2, :cond_30

    const/16 p3, 0x2000

    const/high16 v0, 0x80000

    .line 1511
    invoke-virtual {v7, p3, v0}, Landroid/window/DisplayWindowPolicyController;->setInterestedWindowFlags(II)V

    .line 1514
    :cond_30
    invoke-virtual {v7, p1, v10, v2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->setDisplayId(IZZ)V

    if-eqz v9, :cond_3b

    .line 1516
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->createWakeLockForDisplay(I)Landroid/os/PowerManager$WakeLock;

    move-result-object p3

    :goto_39
    move-object v8, p3

    goto :goto_3d

    :cond_3b
    const/4 p3, 0x0

    goto :goto_39

    .line 1517
    :goto_3d
    iget-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1518
    :try_start_40
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1519
    const-string p0, "VirtualDeviceImpl"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Virtual device already has a virtual display with ID "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    monitor-exit p3

    return-void

    :catchall_60
    move-exception v0

    move-object p0, v0

    goto :goto_71

    .line 1522
    :cond_63
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    move v6, p1

    move-object v5, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;-><init>(Landroid/hardware/display/IVirtualDisplayCallback;ILcom/android/server/companion/virtual/GenericWindowPolicyController;Landroid/os/PowerManager$WakeLock;ZZ)V

    invoke-virtual {p0, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1524
    monitor-exit p3

    return-void

    :goto_71
    monitor-exit p3
    :try_end_72
    .catchall {:try_start_40 .. :try_end_72} :catchall_60

    throw p0
.end method

.method public onVirtualDisplayRemoved(I)V
    .registers 6

    .line 1539
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1540
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 1541
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_3f

    if-nez v1, :cond_2f

    .line 1544
    const-string v0, "VirtualDeviceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Virtual device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t have a virtual display with ID "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1549
    :cond_2f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1551
    :try_start_33
    invoke-virtual {p0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->releaseOwnedVirtualDisplayResources(Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3a

    .line 1553
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3a
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1554
    throw p0

    :catchall_3f
    move-exception p0

    .line 1541
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public playSoundEffect(I)V
    .registers 3

    .line 1748
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    if-nez p0, :cond_5

    return-void

    .line 1752
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;->onPlaySoundEffect(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 1754
    const-string p1, "VirtualDeviceImpl"

    const-string v0, "Unable to invoke sound effect listener"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public registerIntentInterceptor(Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;Landroid/content/IntentFilter;)V
    .registers 4

    .line 1217
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1218
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    monitor-enter v0

    .line 1221
    :try_start_c
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    invoke-interface {p1}, Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_17

    throw p0
.end method

.method public registerVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V
    .registers 3

    .line 1238
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1239
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    if-eqz v0, :cond_10

    .line 1243
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->registerCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;Landroid/content/AttributionSource;)V

    return-void

    .line 1241
    :cond_10
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Virtual camera controller is not available"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final releaseOwnedVirtualDisplayResources(Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;)V
    .registers 5

    .line 1634
    invoke-virtual {p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->releaseWakeLock()V

    .line 1636
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListenerAdapter:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    .line 1637
    invoke-virtual {p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getDisplayId()I

    move-result v1

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1636
    invoke-interface {v0, v1, v2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;->onRunningAppsChanged(ILandroid/util/ArraySet;)V

    .line 1640
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mUiModeManagerInternal:Lcom/android/server/UiModeManagerInternal;

    .line 1641
    invoke-virtual {p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getDisplayId()I

    move-result p1

    const/4 v0, 0x0

    .line 1640
    invoke-virtual {p0, p1, v0}, Lcom/android/server/UiModeManagerInternal;->setDisplayUiMode(II)V

    return-void
.end method

.method public removeActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V
    .registers 6

    .line 805
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 806
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getDisplayId()I

    move-result v0

    .line 807
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, -0x1

    .line 812
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    if-eq v0, v2, :cond_4c

    .line 814
    :try_start_11
    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    .line 815
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 816
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object p0

    .line 817
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->removeActivityPolicyExemption(Landroid/content/ComponentName;)V

    goto/16 :goto_ad

    :catchall_2f
    move-exception p0

    goto/16 :goto_af

    .line 818
    :cond_32
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_ad

    .line 819
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object p0

    .line 820
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->removeActivityPolicyExemption(Ljava/lang/String;)V

    goto :goto_ad

    .line 823
    :cond_4c
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyExemptions:Ljava/util/Set;

    .line 824
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 825
    :goto_5f
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_ad

    .line 826
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v0

    .line 827
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->removeActivityPolicyExemption(Landroid/content/ComponentName;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 829
    :cond_7d
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyPackageExemptions:Ljava/util/Set;

    .line 830
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 831
    :goto_8f
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_ad

    .line 832
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v0

    .line 833
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->removeActivityPolicyExemption(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    .line 837
    :cond_ad
    :goto_ad
    monitor-exit v1

    return-void

    :goto_af
    monitor-exit v1
    :try_end_b0
    .catchall {:try_start_11 .. :try_end_b0} :catchall_2f

    throw p0
.end method

.method public final sendPendingIntent(ILandroid/app/PendingIntent;)V
    .registers 12

    .line 842
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object p1

    const/4 v0, 0x3

    .line 843
    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 845
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    .line 852
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    .line 845
    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendSensorAdditionalInfo(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;)Z
    .registers 5

    .line 1205
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1206
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1208
    :try_start_7
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/SensorController;->sendSensorAdditionalInfo(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;)Z

    move-result p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 1210
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1211
    throw p0
.end method

.method public sendSensorEvent(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorEvent;)Z
    .registers 5

    .line 1193
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1194
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1196
    :try_start_7
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/SensorController;->sendSensorEvent(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorEvent;)Z

    move-result p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 1198
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1199
    throw p0
.end method

.method public setDevicePolicy(II)V
    .registers 8

    .line 954
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_c4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_85

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3a

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1e

    .line 1004
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1005
    :try_start_14
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1006
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw p0

    .line 1010
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Device policy "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot be changed at runtime. "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    if-ne p2, v2, :cond_4f

    .line 985
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ADD_TRUSTED_DISPLAY"

    .line 986
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_47

    goto :goto_4f

    .line 988
    :cond_47
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires ADD_TRUSTED_DISPLAY permission to set a custom clipboard policy."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 991
    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 992
    :goto_52
    :try_start_52
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_7c

    .line 993
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 994
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isTrusted()Z

    move-result v3

    if-nez v3, :cond_79

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isMirror()Z

    move-result v2

    if-eqz v2, :cond_6f

    goto :goto_79

    .line 995
    :cond_6f
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "All displays must be trusted for devices with custom clipboard policy."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_77
    move-exception p0

    goto :goto_83

    :cond_79
    :goto_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 999
    :cond_7c
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1000
    monitor-exit v0

    return-void

    :goto_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_52 .. :try_end_84} :catchall_77

    throw p0

    .line 971
    :cond_85
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 972
    :try_start_88
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    move-result v3

    if-eq v3, p2, :cond_9b

    .line 973
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyExemptions:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 974
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyPackageExemptions:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    goto :goto_9b

    :catchall_99
    move-exception p0

    goto :goto_c2

    .line 976
    :cond_9b
    :goto_9b
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    move p1, v1

    .line 977
    :goto_a1
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge p1, v3, :cond_c0

    .line 978
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v3

    if-nez p2, :cond_b9

    move v4, v2

    goto :goto_ba

    :cond_b9
    move v4, v1

    .line 979
    :goto_ba
    invoke-virtual {v3, v4}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->setActivityLaunchDefaultAllowed(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_a1

    .line 982
    :cond_c0
    monitor-exit v0

    return-void

    :goto_c2
    monitor-exit v0
    :try_end_c3
    .catchall {:try_start_88 .. :try_end_c3} :catchall_99

    throw p0

    .line 958
    :cond_c4
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 959
    :try_start_c7
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    move p1, v1

    .line 960
    :goto_cd
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge p1, v3, :cond_f5

    .line 961
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 962
    invoke-virtual {v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isTrusted()Z

    move-result v4

    if-eqz v4, :cond_f2

    .line 963
    invoke-virtual {v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v3

    if-nez p2, :cond_eb

    move v4, v2

    goto :goto_ec

    :cond_eb
    move v4, v1

    .line 964
    :goto_ec
    invoke-virtual {v3, v4}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->setShowInHostDeviceRecents(Z)V

    goto :goto_f2

    :catchall_f0
    move-exception p0

    goto :goto_f7

    :cond_f2
    :goto_f2
    add-int/lit8 p1, p1, 0x1

    goto :goto_cd

    .line 968
    :cond_f5
    monitor-exit v0

    return-void

    :goto_f7
    monitor-exit v0
    :try_end_f8
    .catchall {:try_start_c7 .. :try_end_f8} :catchall_f0

    throw p0
.end method

.method public setDevicePolicyForDisplay(III)V
    .registers 8

    .line 1019
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1023
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1024
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, v1, :cond_42

    const/4 v1, 0x3

    if-ne p2, v1, :cond_26

    .line 1034
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object p0

    if-nez p3, :cond_20

    move v2, v3

    .line 1035
    :cond_20
    invoke-virtual {p0, v2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->setActivityLaunchDefaultAllowed(Z)V

    goto :goto_5a

    :catchall_24
    move-exception p0

    goto :goto_5c

    .line 1038
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Device policy "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " cannot be changed for a specific display. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1027
    :cond_42
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 1028
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isTrusted()Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 1029
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object p0

    if-nez p3, :cond_57

    move v2, v3

    .line 1030
    :cond_57
    invoke-virtual {p0, v2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->setShowInHostDeviceRecents(Z)V

    .line 1041
    :cond_5a
    :goto_5a
    monitor-exit v0

    return-void

    :goto_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_6 .. :try_end_5d} :catchall_24

    throw p0
.end method

.method public setDisplayImePolicy(II)V
    .registers 5

    .line 1147
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1148
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1149
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    .line 1150
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_1c

    .line 1151
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1153
    :try_start_e
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->setDisplayImePolicy(II)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_17

    .line 1155
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1156
    throw p0

    :catchall_1c
    move-exception p0

    .line 1150
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public setDisplayUiMode(II)V
    .registers 6

    .line 1161
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    and-int/lit8 v0, p2, 0xf

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1d

    .line 1162
    const-string v0, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    .line 1164
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDeviceProfile()Ljava/lang/String;

    move-result-object v1

    .line 1163
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1d

    .line 1165
    :cond_15
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Setting car UI mode requires android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1168
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1169
    :try_start_20
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    .line 1170
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 1171
    invoke-virtual {v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isTrusted()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isMirror()Z

    move-result v1

    if-nez v1, :cond_43

    .line 1174
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_20 .. :try_end_38} :catchall_41

    .line 1175
    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void

    :catchall_41
    move-exception p0

    goto :goto_4b

    .line 1172
    :cond_43
    :try_start_43
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Cannot set UI mode on untrusted or mirror display"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1174
    :goto_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_41

    throw p0
.end method

.method public setListeners(Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;)V
    .registers 3

    .line 636
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/companion/virtual/IVirtualDeviceActivityListener;

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    .line 637
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    iput-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    return-void
.end method

.method public setShowPointerIcon(Z)V
    .registers 8

    .line 1127
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1128
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1130
    :try_start_7
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_43

    .line 1131
    :try_start_a
    iput-boolean p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    const/4 p1, 0x0

    .line 1132
    :goto_d
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge p1, v3, :cond_3c

    .line 1133
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 1134
    invoke-virtual {v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isTrusted()Z

    move-result v4

    if-nez v4, :cond_2c

    invoke-virtual {v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isMirror()Z

    move-result v3

    if-eqz v3, :cond_39

    goto :goto_2c

    :catchall_2a
    move-exception p0

    goto :goto_41

    .line 1135
    :cond_2c
    :goto_2c
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    iget-boolean v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 1136
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1135
    invoke-virtual {v3, v4, v5}, Lcom/android/server/companion/virtual/InputController;->setShowPointerIcon(ZI)V

    :cond_39
    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    .line 1139
    :cond_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_a .. :try_end_3d} :catchall_2a

    .line 1141
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1139
    :goto_41
    :try_start_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_2a

    :try_start_42
    throw p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_43

    :catchall_43
    move-exception p0

    .line 1141
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1142
    throw p0
.end method

.method public final shouldShowBlockedActivityDialog(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .registers 3

    .line 1458
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_8

    return p2

    :cond_8
    const/4 p1, 0x6

    .line 1467
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    move-result p0

    if-nez p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    return p2
.end method

.method public showToastWhereUidIsRunning(IIILandroid/os/Looper;)V
    .registers 6

    .line 1703
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->showToastWhereUidIsRunning(ILjava/lang/String;ILandroid/os/Looper;)V

    return-void
.end method

.method public showToastWhereUidIsRunning(ILjava/lang/String;ILandroid/os/Looper;)V
    .registers 9

    .line 1711
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDisplayIdsWhereUidIsRunning(I)Landroid/util/IntArray;

    move-result-object p1

    .line 1712
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3c

    .line 1715
    :cond_b
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    .line 1716
    :goto_16
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 1717
    invoke-virtual {p1, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 1718
    invoke-virtual {v2}, Landroid/view/Display;->isValid()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1719
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p4, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 1720
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_3c
    :goto_3c
    return-void
.end method

.method public unregisterIntentInterceptor(Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;)V
    .registers 3

    .line 1228
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1229
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    monitor-enter v0

    .line 1231
    :try_start_9
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    invoke-interface {p1}, Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public unregisterVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V
    .registers 2

    .line 1249
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1250
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    if-eqz p0, :cond_e

    .line 1254
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->unregisterCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V

    return-void

    .line 1252
    :cond_e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Virtual camera controller is not available"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public wakeUp()V
    .registers 5

    .line 712
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 713
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPowerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 714
    :try_start_7
    iput-boolean v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRequestedToBeAwake:Z

    .line 715
    iget-boolean v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLockdownActive:Z

    if-eqz v2, :cond_18

    .line 716
    const-string p0, "VirtualDeviceImpl"

    const-string v1, "Cannot wake up device during lockdown."

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    goto :goto_2b

    .line 719
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_16

    .line 720
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 722
    :try_start_1d
    const-string v0, "android.server.companion.virtual:DEVICE_ON"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->wakeUpInternal(ILjava/lang/String;)V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_26

    .line 725
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_26
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 726
    throw p0

    .line 719
    :goto_2b
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_16

    throw p0
.end method

.method public wakeUpInternal(ILjava/lang/String;)V
    .registers 11

    .line 1609
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1610
    new-instance v6, Landroid/util/IntArray;

    invoke-direct {v6}, Landroid/util/IntArray;-><init>()V

    .line 1611
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    move v4, v0

    .line 1612
    :goto_e
    :try_start_e
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3b

    .line 1613
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 1614
    invoke-virtual {v5}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isTrusted()Z

    move-result v7

    if-eqz v7, :cond_38

    invoke-virtual {v5}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isMirror()Z

    move-result v5

    if-eqz v5, :cond_2b

    goto :goto_38

    .line 1617
    :cond_2b
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1618
    invoke-virtual {v6, v5}, Landroid/util/IntArray;->add(I)V

    goto :goto_38

    :catchall_35
    move-exception v0

    move-object p0, v0

    goto :goto_52

    :cond_38
    :goto_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1620
    :cond_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_e .. :try_end_3c} :catchall_35

    move v7, v0

    .line 1621
    :goto_3d
    invoke-virtual {v6}, Landroid/util/IntArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_51

    .line 1622
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6, v7}, Landroid/util/IntArray;->get(I)I

    move-result v5

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3d

    :cond_51
    return-void

    .line 1620
    :goto_52
    :try_start_52
    monitor-exit v3
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_35

    throw p0
.end method
