.class public Lcom/android/server/display/mode/DisplayModeDirector;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# instance fields
.field public mAlwaysRespectAppRequest:Z

.field public final mAppRequestObserver:Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

.field public mAppSupportedModesByDisplay:Landroid/util/SparseArray;

.field public mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

.field public final mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

.field public final mContext:Landroid/content/Context;

.field public mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public mDefaultModeByDisplay:Landroid/util/SparseArray;

.field public mDesiredDisplayModeSpecsListener:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecsListener;

.field public final mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

.field public mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

.field public final mDisplayDeviceConfigProvider:Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;

.field public final mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mDisplayObserver:Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

.field public final mExternalDisplaysConnected:Ljava/util/Set;

.field public final mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

.field public mHasArrSupport:Landroid/util/SparseBooleanArray;

.field public final mHasArrSupportFlagEnabled:Z

.field public final mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

.field public final mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

.field public final mIsBackUpSmoothDisplayAndForcePeakRefreshRateEnabled:Z

.field public final mLock:Ljava/lang/Object;

.field public mLoggingEnabled:Z

.field public final mModeChangeObserver:Lcom/android/server/display/mode/ModeChangeObserver;

.field public mModeSwitchingType:I

.field public final mSensorObserver:Lcom/android/server/display/mode/ProximitySensorObserver;

.field public final mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

.field public final mSkinThermalStatusObserver:Lcom/android/server/display/mode/SkinThermalStatusObserver;

.field public mSupportedModesByDisplay:Landroid/util/SparseArray;

.field public final mSupportsFrameRateOverride:Z

.field public final mSystemRequestObserver:Lcom/android/server/display/mode/SystemRequestObserver;

.field public final mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

.field public final mVotesStatsReporter:Lcom/android/server/display/mode/VotesStatsReporter;

.field public final mVotesStorage:Lcom/android/server/display/mode/VotesStorage;


# direct methods
.method public static synthetic $r8$lambda$CBSdi5wPAhAASfeb2bCpd2owPvs(Lcom/android/server/display/mode/DisplayModeDirector;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAppSupportedModesByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultDisplayDeviceConfig(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultModeByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceConfigDisplaySettings(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayDeviceConfigByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayDeviceConfigProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigProvider:Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayManagerFlags(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DisplayManagerFlags;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExternalDisplaysConnected(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mExternalDisplaysConnected:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHasArrSupport(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHasArrSupport:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHbmObserver(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$Injector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLoggingEnabled(Lcom/android/server/display/mode/DisplayModeDirector;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModeSwitchingType(Lcom/android/server/display/mode/DisplayModeDirector;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingsObserver(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSupportedModesByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmModeSwitchingType(Lcom/android/server/display/mode/DisplayModeDirector;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetMaxRefreshRateLocked(Lcom/android/server/display/mode/DisplayModeDirector;I)F
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector;->getMaxRefreshRateLocked(I)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyDesiredDisplayModeSpecsChangedLocked(Lcom/android/server/display/mode/DisplayModeDirector;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;)V
    .registers 11

    .line 194
    new-instance v3, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    invoke-direct {v3, p1}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/mode/DisplayModeDirector;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;)V
    .registers 15

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 158
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    .line 160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mExternalDisplaysConnected:Ljava/util/Set;

    const/4 v0, 0x1

    .line 180
    iput v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 203
    invoke-virtual {p4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isBackUpSmoothDisplayAndForcePeakRefreshRateEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsBackUpSmoothDisplayAndForcePeakRefreshRateEnabled:Z

    .line 204
    invoke-virtual {p4}, Lcom/android/server/display/feature/DisplayManagerFlags;->hasArrSupportFlag()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHasArrSupportFlagEnabled:Z

    .line 205
    iput-object p4, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 206
    iput-object p5, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigProvider:Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;

    .line 207
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 208
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 209
    iput-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 210
    invoke-interface {p3}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getVotesStatsReporter()Lcom/android/server/display/mode/VotesStatsReporter;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStatsReporter:Lcom/android/server/display/mode/VotesStatsReporter;

    .line 211
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 212
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 213
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 214
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHasArrSupport:Landroid/util/SparseBooleanArray;

    .line 215
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

    invoke-direct {v0, p0, p4}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

    .line 216
    new-instance v0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-interface {p3}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getDeviceConfig()Landroid/provider/DeviceConfigInterface;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;-><init>(Landroid/provider/DeviceConfigInterface;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 217
    new-instance v7, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/mode/DisplayModeDirector-IA;)V

    iput-object v7, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    .line 218
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 219
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 221
    iput-object v8, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 222
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    invoke-direct {v0, p0, v8}, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/mode/DisplayModeDirector-IA;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    .line 223
    new-instance v3, Lcom/android/server/display/mode/VotesStorage;

    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/DisplayModeDirector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;)V

    invoke-direct {v3, v0, v6}, Lcom/android/server/display/mode/VotesStorage;-><init>(Lcom/android/server/display/mode/VotesStorage$Listener;Lcom/android/server/display/mode/VotesStatsReporter;)V

    iput-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 225
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

    move-object v5, p3

    move-object v4, v3

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/mode/VotesStorage;Lcom/android/server/display/mode/DisplayModeDirector$Injector;)V

    move-object v3, v4

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

    .line 226
    new-instance v0, Lcom/android/server/display/mode/ProximitySensorObserver;

    invoke-direct {v0, v3, p3}, Lcom/android/server/display/mode/ProximitySensorObserver;-><init>(Lcom/android/server/display/mode/VotesStorage;Lcom/android/server/display/mode/DisplayModeDirector$Injector;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSensorObserver:Lcom/android/server/display/mode/ProximitySensorObserver;

    .line 227
    new-instance v0, Lcom/android/server/display/mode/SkinThermalStatusObserver;

    invoke-direct {v0, p3, v3}, Lcom/android/server/display/mode/SkinThermalStatusObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/mode/VotesStorage;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSkinThermalStatusObserver:Lcom/android/server/display/mode/SkinThermalStatusObserver;

    .line 228
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-interface {p3, v3, v0}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getModeChangeObserver(Lcom/android/server/display/mode/VotesStorage;Landroid/os/Looper;)Lcom/android/server/display/mode/ModeChangeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeChangeObserver:Lcom/android/server/display/mode/ModeChangeObserver;

    .line 229
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    move-object v2, p3

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/mode/VotesStorage;Landroid/os/Handler;Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    .line 231
    invoke-interface {p3, v3}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getSystemRequestObserver(Lcom/android/server/display/mode/VotesStorage;)Lcom/android/server/display/mode/SystemRequestObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSystemRequestObserver:Lcom/android/server/display/mode/SystemRequestObserver;

    const/4 v0, 0x0

    .line 232
    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    .line 233
    invoke-interface {p3}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->supportsFrameRateOverride()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportsFrameRateOverride:Z

    return-void
.end method

.method public static switchingTypeToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_26

    const/4 v0, 0x1

    if-eq p0, v0, :cond_23

    const/4 v0, 0x2

    if-eq p0, v0, :cond_20

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1d

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown SwitchingType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 641
    :cond_1d
    const-string p0, "SWITCHING_TYPE_RENDER_FRAME_RATE_ONLY"

    return-object p0

    .line 639
    :cond_20
    const-string p0, "SWITCHING_TYPE_ACROSS_AND_WITHIN_GROUPS"

    return-object p0

    .line 637
    :cond_23
    const-string p0, "SWITCHING_TYPE_WITHIN_GROUPS"

    return-object p0

    .line 635
    :cond_26
    const-string p0, "SWITCHING_TYPE_NONE"

    return-object p0
.end method


# virtual methods
.method public addExternalDisplayId(I)V
    .registers 2

    .line 674
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mExternalDisplaysConnected:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public defaultDisplayDeviceUpdated(Lcom/android/server/display/DisplayDeviceConfig;)V
    .registers 5

    .line 468
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 469
    :try_start_3
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 470
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->setRefreshRates(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 472
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateBlockingZoneThresholds(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 474
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$mloadIdleScreenRefreshRateConfigs(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 475
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$mreloadLightSensor(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 476
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->setupHdrRefreshRates(Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 477
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 9

    .line 567
    const-string v0, "DisplayModeDirector:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    const-string v0, "--------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 570
    :try_start_d
    const-string v1, "  mSupportedModesByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    .line 571
    :goto_14
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_50

    .line 572
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 573
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/Display$Mode;

    .line 574
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :catchall_4d
    move-exception p0

    goto/16 :goto_123

    .line 576
    :cond_50
    const-string v2, "  mAppSupportedModesByDisplay:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 577
    :goto_56
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_8f

    .line 578
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 579
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/Display$Mode;

    .line 580
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 582
    :cond_8f
    const-string v2, "  mDefaultModeByDisplay:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    :goto_94
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_c9

    .line 584
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 585
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$Mode;

    .line 586
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_94

    .line 588
    :cond_c9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mModeSwitchingType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    invoke-static {v2}, Lcom/android/server/display/mode/DisplayModeDirector;->switchingTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAlwaysRespectAppRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 591
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

    invoke-static {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->-$$Nest$mdumpLocked(Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;Ljava/io/PrintWriter;)V

    .line 592
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 593
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 594
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 595
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSkinThermalStatusObserver:Lcom/android/server/display/mode/SkinThermalStatusObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 596
    monitor-exit v0
    :try_end_118
    .catchall {:try_start_d .. :try_end_118} :catchall_4d

    .line 597
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/display/mode/VotesStorage;->dump(Ljava/io/PrintWriter;)V

    .line 598
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSensorObserver:Lcom/android/server/display/mode/ProximitySensorObserver;

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/ProximitySensorObserver;->dump(Ljava/io/PrintWriter;)V

    return-void

    .line 596
    :goto_123
    :try_start_123
    monitor-exit v0
    :try_end_124
    .catchall {:try_start_123 .. :try_end_124} :catchall_4d

    throw p0
.end method

.method public getAppRequestObserver()Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;
    .registers 1

    .line 433
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

    return-object p0
.end method

.method public getBrightnessObserver()Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;
    .registers 1

    .line 684
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    return-object p0
.end method

.method public getDesiredDisplayModeSpecs(I)Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 295
    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 296
    :try_start_7
    iget-object v3, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-virtual {v3, v1}, Lcom/android/server/display/mode/VotesStorage;->getVotes(I)Landroid/util/SparseArray;

    move-result-object v3

    .line 297
    iget-object v4, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/Display$Mode;

    .line 298
    iget-object v5, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Display$Mode;

    if-eqz v4, :cond_1ac

    if-nez v5, :cond_23

    goto/16 :goto_1ac

    .line 306
    :cond_23
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 307
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    new-instance v7, Lcom/android/server/display/mode/VoteSummary;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/display/mode/DisplayModeDirector;->isVrrSupportedLocked(I)Z

    move-result v8

    iget-boolean v9, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    iget-boolean v10, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportsFrameRateOverride:Z

    invoke-direct {v7, v8, v9, v10}, Lcom/android/server/display/mode/VoteSummary;-><init>(ZZZ)V

    .line 313
    iget-boolean v8, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    const/4 v9, 0x5

    const/16 v10, 0x17

    const/4 v11, 0x0

    if-eqz v8, :cond_43

    const/4 v8, 0x7

    move v12, v9

    goto :goto_45

    :cond_43
    move v8, v10

    move v12, v11

    :goto_45
    if-gt v12, v8, :cond_b2

    .line 321
    invoke-virtual {v7, v3, v12, v8}, Lcom/android/server/display/mode/VoteSummary;->applyVotes(Landroid/util/SparseArray;II)V

    .line 324
    invoke-virtual {v7, v5, v4}, Lcom/android/server/display/mode/VoteSummary;->adjustSize(Landroid/view/Display$Mode;[Landroid/view/Display$Mode;)V

    .line 326
    invoke-virtual {v7, v4}, Lcom/android/server/display/mode/VoteSummary;->filterModes([Landroid/view/Display$Mode;)Ljava/util/List;

    move-result-object v6

    .line 327
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_89

    .line 328
    iget-boolean v8, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    if-eqz v8, :cond_b2

    .line 329
    const-string v8, "DisplayModeDirector"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Found available modes="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " with lowest priority considered "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-static {v12}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " and summary: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 329
    invoke-static {v8, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b2

    :catchall_86
    move-exception v0

    goto/16 :goto_1ce

    .line 337
    :cond_89
    iget-boolean v13, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    if-eqz v13, :cond_af

    .line 338
    const-string v13, "DisplayModeDirector"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couldn\'t find available modes with lowest priority set to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-static {v12}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " and with the following summary: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 338
    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_af
    add-int/lit8 v12, v12, 0x1

    goto :goto_45

    .line 348
    :cond_b2
    :goto_b2
    new-instance v8, Lcom/android/server/display/mode/VoteSummary;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/display/mode/DisplayModeDirector;->isVrrSupportedLocked(I)Z

    move-result v13

    iget-boolean v14, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    iget-boolean v15, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportsFrameRateOverride:Z

    invoke-direct {v8, v13, v14, v15}, Lcom/android/server/display/mode/VoteSummary;-><init>(ZZZ)V

    .line 351
    invoke-virtual {v8, v3, v9, v10}, Lcom/android/server/display/mode/VoteSummary;->applyVotes(Landroid/util/SparseArray;II)V

    .line 355
    invoke-virtual {v8, v7}, Lcom/android/server/display/mode/VoteSummary;->limitRefreshRanges(Lcom/android/server/display/mode/VoteSummary;)V

    .line 357
    invoke-virtual {v7, v6, v5}, Lcom/android/server/display/mode/VoteSummary;->selectBaseMode(Ljava/util/List;Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    move-result-object v6

    .line 358
    iget-object v9, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStatsReporter:Lcom/android/server/display/mode/VotesStatsReporter;

    if-eqz v9, :cond_d0

    .line 359
    invoke-virtual {v9, v1, v12, v6, v3}, Lcom/android/server/display/mode/VotesStatsReporter;->reportVotesActivated(IILandroid/view/Display$Mode;Landroid/util/SparseArray;)V

    :cond_d0
    if-nez v6, :cond_11d

    .line 364
    const-string v6, "DisplayModeDirector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t find a set of allowed modes which satisfies the votes. Falling back to the default mode. Display = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", votes = "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supported modes = "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    .line 369
    new-instance v3, Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-direct {v3, v1, v1}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 370
    new-instance v9, Landroid/view/SurfaceControl$RefreshRateRanges;

    invoke-direct {v9, v3, v3}, Landroid/view/SurfaceControl$RefreshRateRanges;-><init>(Landroid/view/SurfaceControl$RefreshRateRange;Landroid/view/SurfaceControl$RefreshRateRange;)V

    .line 371
    new-instance v6, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v7

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 373
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->getIdleScreenRefreshRateConfig()Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    move-result-object v11

    const/4 v8, 0x0

    move-object v10, v9

    invoke-direct/range {v6 .. v11}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>(IZLandroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;)V

    monitor-exit v2

    return-object v6

    .line 376
    :cond_11d
    iget v3, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    const/4 v4, 0x1

    if-eqz v3, :cond_128

    const/4 v5, 0x3

    if-ne v3, v5, :cond_126

    goto :goto_128

    :cond_126
    move v3, v11

    goto :goto_129

    :cond_128
    :goto_128
    move v3, v4

    :goto_129
    if-nez v3, :cond_12f

    .line 381
    iget-boolean v5, v7, Lcom/android/server/display/mode/VoteSummary;->disableRefreshRateSwitching:Z

    if-eqz v5, :cond_145

    .line 382
    :cond_12f
    invoke-virtual {v6}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    .line 383
    invoke-virtual {v7, v5}, Lcom/android/server/display/mode/VoteSummary;->disableModeSwitching(F)V

    if-eqz v3, :cond_145

    .line 385
    invoke-virtual {v8, v5}, Lcom/android/server/display/mode/VoteSummary;->disableModeSwitching(F)V

    .line 386
    invoke-virtual {v7, v5}, Lcom/android/server/display/mode/VoteSummary;->disableRenderRateSwitching(F)V

    .line 387
    iget v3, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    if-nez v3, :cond_145

    .line 388
    invoke-virtual {v8, v5}, Lcom/android/server/display/mode/VoteSummary;->disableRenderRateSwitching(F)V

    .line 393
    :cond_145
    iget v3, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_14c

    move v14, v4

    goto :goto_14d

    :cond_14c
    move v14, v11

    .line 399
    :goto_14d
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/display/mode/DisplayModeDirector;->isExternalDisplayLocked(I)Z

    move-result v1

    if-eqz v1, :cond_16b

    .line 400
    invoke-virtual {v6}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    iget v3, v7, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v7, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 402
    invoke-virtual {v6}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    iget v3, v8, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v8, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 406
    :cond_16b
    new-instance v12, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v6}, Landroid/view/Display$Mode;->getModeId()I

    move-result v13

    new-instance v15, Landroid/view/SurfaceControl$RefreshRateRanges;

    new-instance v1, Landroid/view/SurfaceControl$RefreshRateRange;

    iget v3, v7, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    iget v4, v7, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    invoke-direct {v1, v3, v4}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    new-instance v3, Landroid/view/SurfaceControl$RefreshRateRange;

    iget v4, v7, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    iget v5, v7, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-direct {v3, v4, v5}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    invoke-direct {v15, v1, v3}, Landroid/view/SurfaceControl$RefreshRateRanges;-><init>(Landroid/view/SurfaceControl$RefreshRateRange;Landroid/view/SurfaceControl$RefreshRateRange;)V

    new-instance v1, Landroid/view/SurfaceControl$RefreshRateRanges;

    new-instance v3, Landroid/view/SurfaceControl$RefreshRateRange;

    iget v4, v8, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    iget v5, v8, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    invoke-direct {v3, v4, v5}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    new-instance v4, Landroid/view/SurfaceControl$RefreshRateRange;

    iget v5, v8, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    iget v6, v8, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-direct {v4, v5, v6}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    invoke-direct {v1, v3, v4}, Landroid/view/SurfaceControl$RefreshRateRanges;-><init>(Landroid/view/SurfaceControl$RefreshRateRange;Landroid/view/SurfaceControl$RefreshRateRange;)V

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 422
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->getIdleScreenRefreshRateConfig()Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    move-result-object v17

    move-object/from16 v16, v1

    invoke-direct/range {v12 .. v17}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>(IZLandroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;)V

    monitor-exit v2

    return-object v12

    .line 300
    :cond_1ac
    :goto_1ac
    const-string v0, "DisplayModeDirector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asked about unknown display, returning empty display mode specs!(id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v0}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    monitor-exit v2

    return-object v0

    .line 423
    :goto_1ce
    monitor-exit v2
    :try_end_1cf
    .catchall {:try_start_7 .. :try_end_1cf} :catchall_86

    throw v0
.end method

.method public getDesiredDisplayModeSpecsWithInjectedFpsSettings(FFF)Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;
    .registers 7

    .line 710
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 711
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, p3, v2}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->-$$Nest$mupdateRefreshRateSettingLocked(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;FFFI)V

    .line 713
    invoke-virtual {p0, v2}, Lcom/android/server/display/mode/DisplayModeDirector;->getDesiredDisplayModeSpecs(I)Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 714
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getDisplayObserver()Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;
    .registers 1

    .line 704
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

    return-object p0
.end method

.method public getHbmObserver()Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;
    .registers 1

    .line 699
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    return-object p0
.end method

.method public final getMaxRefreshRateLocked(I)F
    .registers 6

    .line 603
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/Display$Mode;

    .line 605
    array-length p1, p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, p1, :cond_1e

    aget-object v2, p0, v1

    .line 606
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_1b

    .line 607
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1e
    return v0
.end method

.method public getModeSwitchingType()I
    .registers 2

    .line 521
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 522
    :try_start_3
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 523
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getSettingsObserver()Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;
    .registers 1

    .line 689
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    return-object p0
.end method

.method public getUdpfsObserver()Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;
    .registers 1

    .line 694
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    return-object p0
.end method

.method public getVote(II)Lcom/android/server/display/mode/Vote;
    .registers 3

    .line 537
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/VotesStorage;->getVotes(I)Landroid/util/SparseArray;

    move-result-object p0

    .line 538
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/mode/Vote;

    return-object p0
.end method

.method public injectAppSupportedModesByDisplay(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/view/Display$Mode;",
            ">;)V"
        }
    .end annotation

    .line 654
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    return-void
.end method

.method public injectBrightnessObserver(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V
    .registers 2

    .line 679
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    return-void
.end method

.method public injectDefaultModeByDisplay(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/Display$Mode;",
            ">;)V"
        }
    .end annotation

    .line 659
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    return-void
.end method

.method public injectDisplayDeviceConfigByDisplay(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayDeviceConfig;",
            ">;)V"
        }
    .end annotation

    .line 664
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    return-void
.end method

.method public injectSupportedModesByDisplay(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/view/Display$Mode;",
            ">;)V"
        }
    .end annotation

    .line 649
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    return-void
.end method

.method public injectVotesByDisplay(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/mode/Vote;",
            ">;>;)V"
        }
    .end annotation

    .line 669
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/VotesStorage;->injectVotesByDisplay(Landroid/util/SparseArray;)V

    return-void
.end method

.method public isExternalDisplayLocked(I)Z
    .registers 2

    .line 629
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mExternalDisplaysConnected:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isVrrSupportedLocked(I)Z
    .registers 5

    .line 439
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHasArrSupportFlagEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    .line 440
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHasArrSupport:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_f

    return v2

    :cond_f
    return v1

    .line 444
    :cond_10
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayDeviceConfig;

    if-eqz p0, :cond_21

    .line 445
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->isVrrSupportEnabled()Z

    move-result p0

    if-eqz p0, :cond_21

    return v2

    :cond_21
    return v1
.end method

.method public final notifyDesiredDisplayModeSpecsChangedLocked()V
    .registers 3

    .line 615
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    const/4 v1, 0x1

    .line 616
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 621
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 623
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_18
    return-void
.end method

.method public onBootCompleted()V
    .registers 1

    .line 269
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->observe()V

    return-void
.end method

.method public onSwitchUser()V
    .registers 2

    .line 558
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public requestDisplayModes(Landroid/os/IBinder;I[I)V
    .registers 6

    .line 546
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 547
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/display/mode/DisplayModeDirector;->isVrrSupportedLocked(I)Z

    move-result v1

    .line 548
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_10

    if-eqz v1, :cond_f

    .line 550
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSystemRequestObserver:Lcom/android/server/display/mode/SystemRequestObserver;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/mode/SystemRequestObserver;->requestDisplayModes(Landroid/os/IBinder;I[I)V

    :cond_f
    return-void

    :catchall_10
    move-exception p0

    .line 548
    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public setDesiredDisplayModeSpecsListener(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecsListener;)V
    .registers 3

    .line 453
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 454
    :try_start_3
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    .line 455
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setLoggingEnabled(Z)V
    .registers 3

    .line 276
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 279
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    .line 280
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$msetLoggingEnabled(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Z)V

    .line 281
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSkinThermalStatusObserver:Lcom/android/server/display/mode/SkinThermalStatusObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->setLoggingEnabled(Z)V

    .line 282
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/VotesStorage;->setLoggingEnabled(Z)V

    return-void
.end method

.method public setModeSwitchingType(I)V
    .registers 4

    .line 508
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 509
    :try_start_3
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    if-eq p1, v1, :cond_f

    .line 510
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 511
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    goto :goto_f

    :catchall_d
    move-exception p0

    goto :goto_11

    .line 513
    :cond_f
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_d

    throw p0
.end method

.method public setShouldAlwaysRespectAppRequestedMode(Z)V
    .registers 4

    .line 485
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    if-eq v1, p1, :cond_f

    .line 487
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    .line 488
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    goto :goto_f

    :catchall_d
    move-exception p0

    goto :goto_11

    .line 490
    :cond_f
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_d

    throw p0
.end method

.method public shouldAlwaysRespectAppRequestedMode()Z
    .registers 2

    .line 498
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 499
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 500
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public start(Landroid/hardware/SensorManager;)V
    .registers 3

    .line 246
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->observe()V

    .line 248
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->observe()V

    .line 249
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$mobserve(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Landroid/hardware/SensorManager;)V

    .line 250
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSensorObserver:Lcom/android/server/display/mode/ProximitySensorObserver;

    invoke-virtual {p1}, Lcom/android/server/display/mode/ProximitySensorObserver;->observe()V

    .line 251
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    invoke-virtual {p1}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->observe()V

    .line 252
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSkinThermalStatusObserver:Lcom/android/server/display/mode/SkinThermalStatusObserver;

    invoke-virtual {p1}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->observe()V

    .line 253
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeChangeObserver:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-virtual {p1}, Lcom/android/server/display/mode/ModeChangeObserver;->observe()V

    .line 255
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 258
    :try_start_26
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 259
    monitor-exit p1

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2b

    throw p0
.end method
