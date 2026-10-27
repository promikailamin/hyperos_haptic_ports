.class public Lcom/android/server/display/DisplayModeDirector;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayModeDirector$BallotBox;,
        Lcom/android/server/display/DisplayModeDirector$RealInjector;,
        Lcom/android/server/display/DisplayModeDirector$Injector;,
        Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;,
        Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;,
        Lcom/android/server/display/DisplayModeDirector$HbmObserver;,
        Lcom/android/server/display/DisplayModeDirector$SensorObserver;,
        Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;,
        Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;,
        Lcom/android/server/display/DisplayModeDirector$DisplayObserver;,
        Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;,
        Lcom/android/server/display/DisplayModeDirector$SettingsObserver;,
        Lcom/android/server/display/DisplayModeDirector$Vote;,
        Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;,
        Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;,
        Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;,
        Lcom/android/server/display/DisplayModeDirector$VoteSummary;
    }
.end annotation


# static fields
.field private static final FLOAT_TOLERANCE:F = 0.01f

.field private static final GLOBAL_ID:I = -0x1

.field private static final MSG_DEFAULT_PEAK_REFRESH_RATE_CHANGED:I = 0x3

.field private static final MSG_HIGH_BRIGHTNESS_THRESHOLDS_CHANGED:I = 0x6

.field private static final MSG_LOW_BRIGHTNESS_THRESHOLDS_CHANGED:I = 0x2

.field private static final MSG_REFRESH_RATE_IN_HBM_HDR_CHANGED:I = 0x8

.field private static final MSG_REFRESH_RATE_IN_HBM_SUNLIGHT_CHANGED:I = 0x7

.field private static final MSG_REFRESH_RATE_IN_HIGH_ZONE_CHANGED:I = 0x5

.field private static final MSG_REFRESH_RATE_IN_LOW_ZONE_CHANGED:I = 0x4

.field private static final MSG_REFRESH_RATE_RANGE_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DisplayModeDirector"

.field private static mIsCtsMode:Z


# instance fields
.field private mAlwaysRespectAppRequest:Z

.field private final mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

.field private mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

.field private final mContext:Landroid/content/Context;

.field private mDefaultModeByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field private mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

.field private final mDeviceConfig:Landroid/provider/DeviceConfigInterface;

.field private final mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

.field private final mDisplayObserver:Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

.field private mExternalDisplayConnected:Z

.field private final mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

.field private final mHbmObserver:Lcom/android/server/display/DisplayModeDirector$HbmObserver;

.field private final mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

.field private final mLock:Ljava/lang/Object;

.field private mLoggingEnabled:Z

.field private mModeSwitchingType:I

.field private mSceneMaxRefreshRate:F

.field private final mSensorObserver:Lcom/android/server/display/DisplayModeDirector$SensorObserver;

.field private final mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

.field private final mSkinThermalStatusObserver:Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;

.field private mSupportedModesByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field private final mUdfpsObserver:Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;

.field private mVotesByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/display/DisplayModeDirector;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultModeByDisplay(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceConfig(Lcom/android/server/display/DisplayModeDirector;)Landroid/provider/DeviceConfigInterface;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceConfigDisplaySettings(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExternalDisplayConnected(Lcom/android/server/display/DisplayModeDirector;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayModeDirector;->mExternalDisplayConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHbmObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$HbmObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/DisplayModeDirector$HbmObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLoggingEnabled(Lcom/android/server/display/DisplayModeDirector;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeSwitchingType(Lcom/android/server/display/DisplayModeDirector;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSceneMaxRefreshRate(Lcom/android/server/display/DisplayModeDirector;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayModeDirector;->mSceneMaxRefreshRate:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingsObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$SettingsObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportedModesByDisplay(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmExternalDisplayConnected(Lcom/android/server/display/DisplayModeDirector;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector;->mExternalDisplayConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmModeSwitchingType(Lcom/android/server/display/DisplayModeDirector;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSceneMaxRefreshRate(Lcom/android/server/display/DisplayModeDirector;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector;->mSceneMaxRefreshRate:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyDesiredDisplayModeSpecsChangedLocked(Lcom/android/server/display/DisplayModeDirector;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(ILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmIsCtsMode()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/display/DisplayModeDirector;->mIsCtsMode:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmIsCtsMode(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/display/DisplayModeDirector;->mIsCtsMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 154
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$RealInjector;

    invoke-direct {v0, p1}, Lcom/android/server/display/DisplayModeDirector$RealInjector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/DisplayModeDirector;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayModeDirector$Injector;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayModeDirector$Injector;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "injector"    # Lcom/android/server/display/DisplayModeDirector$Injector;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 150
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    .line 159
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 160
    new-instance v1, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 161
    iput-object p3, p0, Lcom/android/server/display/DisplayModeDirector;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    .line 162
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    .line 163
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 164
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 165
    new-instance v1, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    .line 166
    new-instance v1, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    .line 167
    new-instance v1, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    .line 168
    new-instance v1, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayModeDirector$Injector;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    .line 169
    new-instance v1, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Lcom/android/server/display/DisplayModeDirector$UdfpsObserver-IA;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;

    .line 170
    new-instance v1, Lcom/android/server/display/DisplayModeDirector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayModeDirector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    .line 175
    .local v1, "ballotBox":Lcom/android/server/display/DisplayModeDirector$BallotBox;
    new-instance v2, Lcom/android/server/display/DisplayModeDirector$SensorObserver;

    invoke-direct {v2, p1, v1, p3}, Lcom/android/server/display/DisplayModeDirector$SensorObserver;-><init>(Landroid/content/Context;Lcom/android/server/display/DisplayModeDirector$BallotBox;Lcom/android/server/display/DisplayModeDirector$Injector;)V

    iput-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mSensorObserver:Lcom/android/server/display/DisplayModeDirector$SensorObserver;

    .line 176
    new-instance v2, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;

    invoke-direct {v2, p0, p3, v1}, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Lcom/android/server/display/DisplayModeDirector$Injector;Lcom/android/server/display/DisplayModeDirector$BallotBox;)V

    iput-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mSkinThermalStatusObserver:Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;

    .line 177
    new-instance v2, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    invoke-direct {v2, p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    iput-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    .line 178
    new-instance v3, Lcom/android/server/display/DisplayModeDirector$HbmObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, p3, v1, v4, v2}, Lcom/android/server/display/DisplayModeDirector$HbmObserver;-><init>(Lcom/android/server/display/DisplayModeDirector$Injector;Lcom/android/server/display/DisplayModeDirector$BallotBox;Landroid/os/Handler;Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;)V

    iput-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/DisplayModeDirector$HbmObserver;

    .line 180
    invoke-interface {p3}, Lcom/android/server/display/DisplayModeDirector$Injector;->getDeviceConfig()Landroid/provider/DeviceConfigInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 181
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    .line 183
    invoke-static {}, Lcom/android/server/display/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/DisplayModeDirectorStub;

    move-result-object v2

    invoke-interface {v2, p0, v0}, Lcom/android/server/display/DisplayModeDirectorStub;->init(Lcom/android/server/display/DisplayModeDirector;Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method private filterModes([Landroid/view/Display$Mode;Lcom/android/server/display/DisplayModeDirector$VoteSummary;)Ljava/util/ArrayList;
    .registers 13
    .param p1, "supportedModes"    # [Landroid/view/Display$Mode;
    .param p2, "summary"    # Lcom/android/server/display/DisplayModeDirector$VoteSummary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/Display$Mode;",
            "Lcom/android/server/display/DisplayModeDirector$VoteSummary;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v0, "availableModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display$Mode;>;"
    iget v1, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    move v1, v2

    .line 499
    .local v1, "missingBaseModeRefreshRate":Z
    :goto_10
    array-length v3, p1

    :goto_11
    if-ge v2, v3, :cond_ef

    aget-object v4, p1, v2

    .line 500
    .local v4, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    iget v6, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    const-string v7, "Discarding mode "

    const-string v8, "DisplayModeDirector"

    if-ne v5, v6, :cond_9b

    .line 501
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    iget v6, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    if-eq v5, v6, :cond_2a

    goto :goto_9b

    .line 511
    :cond_2a
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    .line 515
    .local v5, "refreshRate":F
    iget v6, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    const v9, 0x3c23d70a    # 0.01f

    sub-float/2addr v6, v9

    cmpg-float v6, v5, v6

    if-ltz v6, :cond_5c

    iget v6, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    add-float/2addr v6, v9

    cmpl-float v6, v5, v6

    if-lez v6, :cond_40

    goto :goto_5c

    .line 526
    :cond_40
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v6

    iget v7, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    sub-float/2addr v7, v9

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_eb

    .line 528
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v6

    iget v7, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    add-float/2addr v7, v9

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_eb

    .line 529
    const/4 v1, 0x0

    goto/16 :goto_eb

    .line 517
    :cond_5c
    :goto_5c
    iget-boolean v6, p0, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    if-eqz v6, :cond_eb

    .line 518
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", outside refresh rate bounds: minRefreshRate="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", maxRefreshRate="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", modeRefreshRate="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_eb

    .line 502
    .end local v5    # "refreshRate":F
    :cond_9b
    :goto_9b
    iget-boolean v5, p0, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    if-eqz v5, :cond_eb

    .line 503
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wrong size: desiredWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": desiredHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": actualWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 506
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": actualHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 507
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 503
    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    .end local v4    # "mode":Landroid/view/Display$Mode;
    :cond_eb
    :goto_eb
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_11

    .line 532
    :cond_ef
    if-eqz v1, :cond_f7

    .line 533
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 536
    :cond_f7
    return-object v0
.end method

.method private getOrCreateVotesByDisplay(I)Landroid/util/SparseArray;
    .registers 4
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;"
        }
    .end annotation

    .line 729
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_11

    .line 730
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    return-object v0

    .line 732
    :cond_11
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 733
    .local v0, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 734
    return-object v0
.end method

.method private getVotesLocked(I)Landroid/util/SparseArray;
    .registers 8
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 248
    .local v0, "displayVotes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    if-eqz v0, :cond_f

    .line 249
    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .local v1, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    goto :goto_14

    .line 251
    .end local v1    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    :cond_f
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 254
    .restart local v1    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    :goto_14
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 255
    .local v2, "globalVotes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    if-eqz v2, :cond_3c

    .line 256
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3c

    .line 257
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 258
    .local v4, "priority":I
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_39

    .line 259
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayModeDirector$Vote;

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    .end local v4    # "priority":I
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 263
    .end local v3    # "i":I
    :cond_3c
    return-object v1
.end method

.method private notifyDesiredDisplayModeSpecsChangedLocked()V
    .registers 4

    .line 716
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 717
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 722
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 724
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 726
    .end local v0    # "msg":Landroid/os/Message;
    :cond_18
    return-void
.end method

.method private summarizeVotes(Landroid/util/SparseArray;IILcom/android/server/display/DisplayModeDirector$VoteSummary;)V
    .registers 9
    .param p2, "lowestConsideredPriority"    # I
    .param p3, "highestConsideredPriority"    # I
    .param p4, "summary"    # Lcom/android/server/display/DisplayModeDirector$VoteSummary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;II",
            "Lcom/android/server/display/DisplayModeDirector$VoteSummary;",
            ")V"
        }
    .end annotation

    .line 303
    .local p1, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    invoke-virtual {p4}, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->reset()V

    .line 304
    move v0, p3

    .line 305
    .local v0, "priority":I
    :goto_4
    if-lt v0, p2, :cond_5f

    .line 307
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 308
    .local v1, "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    if-nez v1, :cond_f

    .line 309
    goto :goto_5c

    .line 312
    :cond_f
    iget v2, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget-object v3, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    .line 313
    iget v2, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    iget-object v3, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    .line 317
    iget v2, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_40

    iget v2, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    if-ne v2, v3, :cond_40

    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    if-lez v2, :cond_40

    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    if-lez v2, :cond_40

    .line 319
    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    iput v2, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    .line 320
    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    iput v2, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    .line 322
    :cond_40
    iget-boolean v2, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->disableRefreshRateSwitching:Z

    if-nez v2, :cond_4b

    iget-boolean v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->disableRefreshRateSwitching:Z

    if-eqz v2, :cond_4b

    .line 323
    const/4 v2, 0x1

    iput-boolean v2, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->disableRefreshRateSwitching:Z

    .line 325
    :cond_4b
    iget v2, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5c

    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->baseModeRefreshRate:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5c

    .line 326
    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->baseModeRefreshRate:F

    iput v2, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    .line 306
    .end local v1    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_5c
    :goto_5c
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 329
    .end local v0    # "priority":I
    :cond_5f
    return-void
.end method

.method private static switchingTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # I

    .line 739
    packed-switch p0, :pswitch_data_20

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown SwitchingType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 745
    :pswitch_17
    const-string v0, "SWITCHING_TYPE_ACROSS_AND_WITHIN_GROUPS"

    return-object v0

    .line 743
    :pswitch_1a
    const-string v0, "SWITCHING_TYPE_WITHIN_GROUPS"

    return-object v0

    .line 741
    :pswitch_1d
    const-string v0, "SWITCHING_TYPE_NONE"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "priority"    # I
    .param p3, "vote"    # Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 678
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    const-string v1, ", vote="

    const-string v2, "DisplayModeDirector"

    if-eqz v0, :cond_3b

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateVoteLocked(displayId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", priority="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 680
    invoke-static {p2}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 679
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_3b
    if-ltz p2, :cond_7e

    const/16 v0, 0xf

    if-le p2, v0, :cond_42

    goto :goto_7e

    .line 689
    :cond_42
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector;->getOrCreateVotesByDisplay(I)Landroid/util/SparseArray;

    move-result-object v0

    .line 691
    .local v0, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    if-eqz p3, :cond_4c

    .line 692
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4f

    .line 694
    :cond_4c
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 697
    :goto_4f
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_7a

    .line 698
    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    if-eqz v1, :cond_75

    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No votes left for display "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", removing."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_75
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 704
    :cond_7a
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 705
    return-void

    .line 684
    .end local v0    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    :cond_7e
    :goto_7e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received a vote with an invalid priority, ignoring: priority="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 685
    invoke-static {p2}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 684
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 687
    return-void
.end method

.method private updateVoteLocked(ILcom/android/server/display/DisplayModeDirector$Vote;)V
    .registers 4
    .param p1, "priority"    # I
    .param p2, "vote"    # Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 674
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 675
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 628
    const-string v0, "DisplayModeDirector"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 630
    :try_start_8
    const-string v1, "  mSupportedModesByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4b

    .line 632
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 633
    .local v2, "id":I
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/Display$Mode;

    .line 634
    .local v3, "modes":[Landroid/view/Display$Mode;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    .end local v2    # "id":I
    .end local v3    # "modes":[Landroid/view/Display$Mode;
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 636
    .end local v1    # "i":I
    :cond_4b
    const-string v1, "  mDefaultModeByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_51
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_8a

    .line 638
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 639
    .restart local v2    # "id":I
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$Mode;

    .line 640
    .local v3, "mode":Landroid/view/Display$Mode;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    .end local v2    # "id":I
    .end local v3    # "mode":Landroid/view/Display$Mode;
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 642
    .end local v1    # "i":I
    :cond_8a
    const-string v1, "  mVotesByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_90
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_f9

    .line 644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 646
    .local v2, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    const/16 v3, 0xf

    .local v3, "p":I
    :goto_c4
    if-ltz v3, :cond_f6

    .line 647
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 648
    .local v4, "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    if-nez v4, :cond_cf

    .line 649
    goto :goto_f3

    .line 651
    :cond_cf
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    .end local v4    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :goto_f3
    add-int/lit8 v3, v3, -0x1

    goto :goto_c4

    .line 643
    .end local v2    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    .end local v3    # "p":I
    :cond_f6
    add-int/lit8 v1, v1, 0x1

    goto :goto_90

    .line 654
    .end local v1    # "i":I
    :cond_f9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mModeSwitchingType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->switchingTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAlwaysRespectAppRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSceneMaxRefreshRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayModeDirector;->mSceneMaxRefreshRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    invoke-static {}, Lcom/android/server/wm/RefreshRatePolicyStub;->getInstance()Lcom/android/server/wm/RefreshRatePolicyStub;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/wm/RefreshRatePolicyStub;->dump(Ljava/io/PrintWriter;)V

    .line 660
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 661
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 662
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 663
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 664
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/DisplayModeDirector$HbmObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 665
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSkinThermalStatusObserver:Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 667
    invoke-static {}, Lcom/android/server/display/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/DisplayModeDirectorStub;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/display/DisplayModeDirectorStub;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 668
    monitor-exit v0
    :try_end_172
    .catchall {:try_start_8 .. :try_end_172} :catchall_178

    .line 670
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSensorObserver:Lcom/android/server/display/DisplayModeDirector$SensorObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->dump(Ljava/io/PrintWriter;)V

    .line 671
    return-void

    .line 668
    :catchall_178
    move-exception v1

    :try_start_179
    monitor-exit v0
    :try_end_17a
    .catchall {:try_start_179 .. :try_end_17a} :catchall_178

    throw v1
.end method

.method public getAppRequestObserver()Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;
    .registers 2

    .line 546
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    return-object v0
.end method

.method getBrightnessObserver()Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
    .registers 2

    .line 773
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    return-object v0
.end method

.method public getDesiredDisplayModeSpecs(I)Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
    .registers 22
    .param p1, "displayId"    # I

    .line 341
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 342
    :try_start_7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/display/DisplayModeDirector;->getVotesLocked(I)Landroid/util/SparseArray;

    move-result-object v0

    .line 343
    .local v0, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    iget-object v4, v1, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/Display$Mode;

    .line 344
    .local v4, "modes":[Landroid/view/Display$Mode;
    iget-object v5, v1, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Display$Mode;

    .line 345
    .local v5, "defaultMode":Landroid/view/Display$Mode;
    if-eqz v4, :cond_278

    if-nez v5, :cond_25

    move-object/from16 v18, v0

    move-object/from16 v19, v4

    goto/16 :goto_27c

    .line 352
    :cond_25
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v6, "availableModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display$Mode;>;"
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    new-instance v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;

    invoke-direct {v7}, Lcom/android/server/display/DisplayModeDirector$VoteSummary;-><init>()V

    .line 355
    .local v7, "primarySummary":Lcom/android/server/display/DisplayModeDirector$VoteSummary;
    const/4 v8, 0x0

    .line 356
    .local v8, "lowestConsideredPriority":I
    const/16 v9, 0xf

    .line 358
    .local v9, "highestConsideredPriority":I
    iget-boolean v10, v1, Lcom/android/server/display/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    if-eqz v10, :cond_3b

    .line 359
    const/4 v8, 0x5

    .line 360
    const/4 v9, 0x6

    .line 365
    :cond_3b
    :goto_3b
    if-gt v8, v9, :cond_13f

    .line 366
    invoke-direct {v1, v0, v8, v9, v7}, Lcom/android/server/display/DisplayModeDirector;->summarizeVotes(Landroid/util/SparseArray;IILcom/android/server/display/DisplayModeDirector$VoteSummary;)V

    .line 372
    iget v10, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_49

    iget v10, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    if-ne v10, v11, :cond_55

    .line 374
    :cond_49
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v10

    iput v10, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    .line 375
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v10

    iput v10, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    .line 378
    :cond_55
    invoke-direct {v1, v4, v7}, Lcom/android/server/display/DisplayModeDirector;->filterModes([Landroid/view/Display$Mode;Lcom/android/server/display/DisplayModeDirector$VoteSummary;)Ljava/util/ArrayList;

    move-result-object v10

    move-object v6, v10

    .line 379
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_d3

    .line 380
    iget-boolean v10, v1, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    if-eqz v10, :cond_13f

    .line 381
    const-string v10, "DisplayModeDirector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found available modes="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " with lowest priority considered "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 383
    invoke-static {v8}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " and constraints: width="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", height="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", minRefreshRate="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", maxRefreshRate="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", disableRefreshRateSwitching="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->disableRefreshRateSwitching:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", baseModeRefreshRate="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 381
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13f

    .line 396
    :cond_d3
    iget-boolean v10, v1, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    if-eqz v10, :cond_13b

    .line 397
    const-string v10, "DisplayModeDirector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t find available modes with lowest priority set to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 398
    invoke-static {v8}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " and with the following constraints: width="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", height="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", minRefreshRate="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", maxRefreshRate="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", disableRefreshRateSwitching="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->disableRefreshRateSwitching:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", baseModeRefreshRate="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 397
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_13b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3b

    .line 414
    :cond_13f
    :goto_13f
    new-instance v10, Lcom/android/server/display/DisplayModeDirector$VoteSummary;

    invoke-direct {v10}, Lcom/android/server/display/DisplayModeDirector$VoteSummary;-><init>()V

    .line 415
    .local v10, "appRequestSummary":Lcom/android/server/display/DisplayModeDirector$VoteSummary;
    const/4 v11, 0x4

    const/16 v12, 0xf

    invoke-direct {v1, v0, v11, v12, v10}, Lcom/android/server/display/DisplayModeDirector;->summarizeVotes(Landroid/util/SparseArray;IILcom/android/server/display/DisplayModeDirector$VoteSummary;)V

    .line 420
    iget v11, v10, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    .line 421
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    iput v11, v10, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    .line 422
    iget v11, v10, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    iget v12, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    .line 423
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    iput v11, v10, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    .line 424
    iget-boolean v11, v1, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    const/4 v12, 0x2

    const/4 v14, 0x0

    if-eqz v11, :cond_184

    .line 425
    const-string v11, "DisplayModeDirector"

    const-string v15, "App request range: [%.0f %.0f]"

    new-array v13, v12, [Ljava/lang/Object;

    iget v12, v10, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    .line 427
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v13, v14

    iget v12, v10, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    .line 428
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/16 v16, 0x1

    aput-object v12, v13, v16

    .line 426
    invoke-static {v15, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 425
    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_186

    .line 424
    :cond_184
    const/16 v16, 0x1

    .line 433
    :goto_186
    const/4 v11, 0x0

    .line 434
    .local v11, "baseMode":Landroid/view/Display$Mode;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_18b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1b4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/Display$Mode;

    .line 435
    .local v13, "availableMode":Landroid/view/Display$Mode;
    iget v15, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    .line 436
    invoke-virtual {v13}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v17

    const v18, 0x3c23d70a    # 0.01f

    sub-float v17, v17, v18

    cmpl-float v15, v15, v17

    if-ltz v15, :cond_1b3

    iget v15, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    .line 438
    invoke-virtual {v13}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v17

    add-float v17, v17, v18

    cmpg-float v15, v15, v17

    if-gtz v15, :cond_1b3

    .line 439
    move-object v11, v13

    .line 441
    .end local v13    # "availableMode":Landroid/view/Display$Mode;
    :cond_1b3
    goto :goto_18b

    .line 446
    :cond_1b4
    if-nez v11, :cond_1d4

    .line 447
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1ba
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1d4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/Display$Mode;

    .line 448
    .restart local v13    # "availableMode":Landroid/view/Display$Mode;
    invoke-virtual {v13}, Landroid/view/Display$Mode;->getModeId()I

    move-result v15

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v14

    if-ne v15, v14, :cond_1d2

    .line 449
    move-object v11, v5

    .line 450
    goto :goto_1d4

    .line 452
    .end local v13    # "availableMode":Landroid/view/Display$Mode;
    :cond_1d2
    const/4 v14, 0x0

    goto :goto_1ba

    .line 458
    :cond_1d4
    :goto_1d4
    if-nez v11, :cond_1e4

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1e4

    .line 459
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/Display$Mode;

    move-object v11, v13

    .line 462
    :cond_1e4
    if-nez v11, :cond_234

    .line 463
    const-string v12, "DisplayModeDirector"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Can\'t find a set of allowed modes which satisfies the votes. Falling back to the default mode. Display = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", votes = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", supported modes = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 465
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 463
    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v12

    .line 468
    .local v12, "fps":F
    new-instance v13, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v14

    new-instance v15, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    invoke-direct {v15, v12, v12}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;-><init>(FF)V

    move-object/from16 v18, v0

    .end local v0    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    .local v18, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    invoke-direct {v0, v12, v12}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;-><init>(FF)V

    move-object/from16 v19, v4

    const/4 v4, 0x0

    .end local v4    # "modes":[Landroid/view/Display$Mode;
    .local v19, "modes":[Landroid/view/Display$Mode;
    invoke-direct {v13, v14, v4, v15, v0}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>(IZLandroid/hardware/display/DisplayManagerInternal$RefreshRateRange;Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;)V

    monitor-exit v3

    return-object v13

    .line 474
    .end local v12    # "fps":F
    .end local v18    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    .end local v19    # "modes":[Landroid/view/Display$Mode;
    .restart local v0    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    .restart local v4    # "modes":[Landroid/view/Display$Mode;
    :cond_234
    move-object/from16 v18, v0

    move-object/from16 v19, v4

    const/4 v4, 0x0

    .end local v0    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    .end local v4    # "modes":[Landroid/view/Display$Mode;
    .restart local v18    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    .restart local v19    # "modes":[Landroid/view/Display$Mode;
    iget v0, v1, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    if-eqz v0, :cond_241

    iget-boolean v0, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->disableRefreshRateSwitching:Z

    if-eqz v0, :cond_251

    .line 476
    :cond_241
    invoke-virtual {v11}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    .line 477
    .local v0, "fps":F
    iput v0, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    iput v0, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    .line 478
    iget v12, v1, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    if-nez v12, :cond_251

    .line 479
    iput v0, v10, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    iput v0, v10, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    .line 483
    .end local v0    # "fps":F
    :cond_251
    iget v0, v1, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    const/4 v12, 0x2

    if-ne v0, v12, :cond_259

    move/from16 v13, v16

    goto :goto_25a

    :cond_259
    move v13, v4

    :goto_25a
    move v0, v13

    .line 486
    .local v0, "allowGroupSwitching":Z
    new-instance v4, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v11}, Landroid/view/Display$Mode;->getModeId()I

    move-result v12

    new-instance v13, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v14, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget v15, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-direct {v13, v14, v15}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;-><init>(FF)V

    new-instance v14, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v15, v10, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget v1, v10, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-direct {v14, v15, v1}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;-><init>(FF)V

    invoke-direct {v4, v12, v0, v13, v14}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>(IZLandroid/hardware/display/DisplayManagerInternal$RefreshRateRange;Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;)V

    monitor-exit v3

    return-object v4

    .line 345
    .end local v6    # "availableModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display$Mode;>;"
    .end local v7    # "primarySummary":Lcom/android/server/display/DisplayModeDirector$VoteSummary;
    .end local v8    # "lowestConsideredPriority":I
    .end local v9    # "highestConsideredPriority":I
    .end local v10    # "appRequestSummary":Lcom/android/server/display/DisplayModeDirector$VoteSummary;
    .end local v11    # "baseMode":Landroid/view/Display$Mode;
    .end local v18    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    .end local v19    # "modes":[Landroid/view/Display$Mode;
    .local v0, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    .restart local v4    # "modes":[Landroid/view/Display$Mode;
    :cond_278
    move-object/from16 v18, v0

    move-object/from16 v19, v4

    .line 346
    .end local v0    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    .end local v4    # "modes":[Landroid/view/Display$Mode;
    .restart local v18    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    .restart local v19    # "modes":[Landroid/view/Display$Mode;
    :goto_27c
    const-string v0, "DisplayModeDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asked about unknown display, returning empty display mode specs!(id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v0}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    monitor-exit v3

    return-object v0

    .line 492
    .end local v5    # "defaultMode":Landroid/view/Display$Mode;
    .end local v18    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    .end local v19    # "modes":[Landroid/view/Display$Mode;
    :catchall_2a1
    move-exception v0

    monitor-exit v3
    :try_end_2a3
    .catchall {:try_start_7 .. :try_end_2a3} :catchall_2a1

    throw v0
.end method

.method getDesiredDisplayModeSpecsWithInjectedFpsSettings(FFF)Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
    .registers 6
    .param p1, "minRefreshRate"    # F
    .param p2, "peakRefreshRate"    # F
    .param p3, "defaultRefreshRate"    # F

    .line 794
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 795
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->-$$Nest$mupdateRefreshRateSettingLocked(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;FFF)V

    .line 797
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayModeDirector;->getDesiredDisplayModeSpecs(I)Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 798
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method getHbmObserver()Lcom/android/server/display/DisplayModeDirector$HbmObserver;
    .registers 2

    .line 788
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/DisplayModeDirector$HbmObserver;

    return-object v0
.end method

.method public getModeSwitchingType()I
    .registers 3

    .line 600
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 601
    :try_start_3
    iget v1, p0, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    monitor-exit v0

    return v1

    .line 602
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getSettingsObserver()Lcom/android/server/display/DisplayModeDirector$SettingsObserver;
    .registers 2

    .line 778
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    return-object v0
.end method

.method getUdpfsObserver()Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;
    .registers 2

    .line 783
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;

    return-object v0
.end method

.method getVote(II)Lcom/android/server/display/DisplayModeDirector$Vote;
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "priority"    # I

    .line 616
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 617
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector;->getVotesLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    .line 618
    .local v1, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayModeDirector$Vote;

    monitor-exit v0

    return-object v2

    .line 619
    .end local v1    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getVotes(I)Landroid/util/SparseArray;
    .registers 4
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector;->getVotesLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 270
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method injectBrightnessObserver(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V
    .registers 2
    .param p1, "brightnessObserver"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    .line 768
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    .line 769
    return-void
.end method

.method injectDefaultModeByDisplay(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/Display$Mode;",
            ">;)V"
        }
    .end annotation

    .line 758
    .local p1, "defaultModeByDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/Display$Mode;>;"
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 759
    return-void
.end method

.method injectSupportedModesByDisplay(Landroid/util/SparseArray;)V
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

    .line 753
    .local p1, "supportedModesByDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[Landroid/view/Display$Mode;>;"
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 754
    return-void
.end method

.method injectVotesByDisplay(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;>;)V"
        }
    .end annotation

    .line 763
    .local p1, "votesByDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;>;"
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    .line 764
    return-void
.end method

.method synthetic lambda$new$0$com-android-server-display-DisplayModeDirector(IILcom/android/server/display/DisplayModeDirector$Vote;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "priority"    # I
    .param p3, "vote"    # Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 171
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 173
    monitor-exit v0

    .line 174
    return-void

    .line 173
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public notifyDesiredDisplayModeSpecsChanged()V
    .registers 3

    .line 709
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 710
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 711
    monitor-exit v0

    .line 712
    return-void

    .line 711
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public onBootCompleted()V
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->observe()V

    .line 215
    return-void
.end method

.method public setDesiredDisplayModeSpecsListener(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;)V
    .registers 4
    .param p1, "desiredDisplayModeSpecsListener"    # Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    .line 554
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 555
    :try_start_3
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    .line 556
    monitor-exit v0

    .line 557
    return-void

    .line 556
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setLoggingEnabled(Z)V
    .registers 3
    .param p1, "loggingEnabled"    # Z

    .line 228
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_5

    .line 229
    return-void

    .line 231
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    .line 232
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->setLoggingEnabled(Z)V

    .line 233
    return-void
.end method

.method public setModeSwitchingType(I)V
    .registers 4
    .param p1, "newType"    # I

    .line 587
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 588
    :try_start_3
    iget v1, p0, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    if-eq p1, v1, :cond_c

    .line 589
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    .line 590
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 592
    :cond_c
    monitor-exit v0

    .line 593
    return-void

    .line 592
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public setSceneMaxRefreshRate(IF)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "maxFrameRate"    # F

    .line 220
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_3
    iput p2, p0, Lcom/android/server/display/DisplayModeDirector;->mSceneMaxRefreshRate:F

    .line 222
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->-$$Nest$mupdateRefreshRateSettingLocked(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;)V

    .line 223
    monitor-exit v0

    .line 224
    return-void

    .line 223
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public setShouldAlwaysRespectAppRequestedMode(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 564
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 565
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    if-eq v1, p1, :cond_c

    .line 566
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    .line 567
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 569
    :cond_c
    monitor-exit v0

    .line 570
    return-void

    .line 569
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public shouldAlwaysRespectAppRequestedMode()Z
    .registers 3

    .line 577
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 578
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    monitor-exit v0

    return v1

    .line 579
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public start(Landroid/hardware/SensorManager;)V
    .registers 4
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;

    .line 194
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->observe()V

    .line 195
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->observe()V

    .line 196
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->observe(Landroid/hardware/SensorManager;)V

    .line 197
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSensorObserver:Lcom/android/server/display/DisplayModeDirector$SensorObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->observe()V

    .line 198
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/DisplayModeDirector$HbmObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->observe()V

    .line 199
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSkinThermalStatusObserver:Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->observe()V

    .line 200
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_21
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 204
    monitor-exit v0

    .line 205
    return-void

    .line 204
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public updateDisplaySize(III)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 237
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_3
    invoke-static {p2, p3}, Lcom/android/server/display/DisplayModeDirector$Vote;->forSize(II)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    .line 239
    .local v1, "sizeVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    const/16 v2, 0xf

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 240
    .end local v1    # "sizeVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    monitor-exit v0

    .line 241
    return-void

    .line 240
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method
