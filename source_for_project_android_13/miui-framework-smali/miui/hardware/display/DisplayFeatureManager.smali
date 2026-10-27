.class public Lmiui/hardware/display/DisplayFeatureManager;
.super Ljava/lang/Object;
.source "DisplayFeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;
    }
.end annotation


# static fields
.field private static final blacklist CONFIG_SERVICENAME_RESOURCEID:I

.field public static final blacklist DEFALUT_GAMUT_MODE:I = 0x0

.field public static final blacklist DEFALUT_SCREEN_COLOR:I = 0x2

.field private static final blacklist DISPLAY_FEATURE_SERVICE:Ljava/lang/String; = "DisplayFeatureControl"

.field public static final blacklist DISPLAY_INFO_GRAY:I = 0x0

.field private static final blacklist DOZE_BRIGHTNESS_STATE:I = 0x19

.field public static final blacklist EXT_COLOR_PROC_STATE:I = 0xf

.field public static final blacklist HDR_GRAY_INFO:I = 0x17318

.field public static final blacklist HDR_STATE:I = 0xc350

.field private static final blacklist HIDL_SERVICENAME_DEFAULT:Ljava/lang/String; = "vendor.xiaomi.hardware.displayfeature@1.0::IDisplayFeature"

.field public static final blacklist ID_UPDATE_DOLBY_STATE:I = 0x3

.field public static final blacklist ID_UPDATE_GRAY_SCALE:I = 0x1

.field public static final blacklist ID_UPDATE_HDR_GRAY_SCALE:I = 0x5

.field public static final blacklist MODE_SCREEN_FPS_DYNAMIC_ACCOMMODATION:I = 0x18

.field public static final blacklist NOTICE_DOLBY_VERSION_STATE:Ljava/lang/String; = "dolby_version_state"

.field public static final blacklist NOTICE_GRAY_SCALE:Ljava/lang/String; = "gray_scale"

.field public static final blacklist NOTICE_HDR_GRAY_SCALE:Ljava/lang/String; = "hdr_gray_scale"

.field public static final blacklist PROPERTY_ASSERTIVE_DISPLAY:Ljava/lang/String; = "persist.sys.ltm_enable"

.field public static final blacklist PROPERTY_GAMUT_MODE:Ljava/lang/String; = "persist.sys.gamut_mode"

.field public static final blacklist PROPERTY_SCREEN_COLOR:Ljava/lang/String; = "persist.sys.display_prefer"

.field public static final blacklist PROPERTY_SCREEN_SATURATION:Ljava/lang/String; = "persist.sys.display_ce"

.field public static final blacklist SCREEN_ADAPT:I = 0x0

.field public static final blacklist SCREEN_BCBC_STATE:I = 0x12

.field public static final blacklist SCREEN_ENHANCE:I = 0x1

.field public static final blacklist SCREEN_EXPERT:I = 0x1a

.field public static final blacklist SCREEN_EYECARE:I = 0x3

.field public static final blacklist SCREEN_GAME_HDR:I = 0x13

.field public static final blacklist SCREEN_HIGHLIGHT:I = 0xb

.field public static final blacklist SCREEN_MONOCHROME:I = 0x4

.field public static final blacklist SCREEN_NIGHTLIGHT:I = 0x9

.field public static final blacklist SCREEN_PEAK_STATE:I = 0x38

.field public static final blacklist SCREEN_STANDARD:I = 0x2

.field public static final blacklist SCREEN_SUNLIGHT:I = 0x8

.field public static final blacklist SCREEN_TEXTURE_COLOR:I = 0x1f

.field public static final blacklist SCREEN_UNLIMITED_COLOR:I = 0x17

.field public static final blacklist SDR_TO_HDR:I = 0x7531

.field public static final blacklist SEND_HBM_STATE:I = 0xea60

.field public static final blacklist SEND_MURA_STATE:I = 0x11170

.field public static final blacklist SET_COLOR_MODE:I = 0x7530

.field public static final blacklist SET_DC_PARSE_STATE:I = 0x9c40

.field public static final blacklist SOCKET_FPS_SWITCH_SMART:I = 0x100

.field private static final blacklist SUPPORT_MULTIPLE_AOD_BRIGHTNESS:Z

.field private static final blacklist SUPPORT_SET_FEATURE:Z

.field private static blacklist TAG:Ljava/lang/String; = null

.field public static final blacklist TRUE_TONE:I = 0x20

.field public static final blacklist UPDATE_DFPS_MODE:I = 0x2733

.field public static final blacklist UPDATE_PCC_LEVEL:I = 0x4e20

.field public static final blacklist UPDATE_SECONDARY_FRAME_RATE:I = 0x2734

.field public static final blacklist UPDATE_SMART_DFPS_MODE:I = 0x2735

.field public static final blacklist UPDATE_WCG_STATE:I = 0x2710

.field public static final blacklist VALUE_DISABLE_FPS_DYNAMIC_ACCOMMODATION:I = 0xff

.field private static volatile blacklist sInstance:Lmiui/hardware/display/DisplayFeatureManager;


# instance fields
.field private blacklist mBinderDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private blacklist mHwBinderDeathHandler:Landroid/os/IHwBinder$DeathRecipient;

.field private final blacklist mIsFoldable:Z

.field private blacklist mLock:Ljava/lang/Object;

.field private blacklist mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lmiui/hardware/display/DisplayFeatureManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProxy(Lmiui/hardware/display/DisplayFeatureManager;Lmiui/hardware/display/DisplayFeatureServiceProxy;)V
    .registers 2

    iput-object p1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 26
    const-string v0, "DisplayFeatureManager"

    sput-object v0, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    .line 84
    nop

    .line 85
    const-string v0, "support_screen_effect"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lmiui/hardware/display/DisplayFeatureManager;->SUPPORT_SET_FEATURE:Z

    .line 89
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "config_displayFeatureHidlServiceName"

    const-string v3, "string"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lmiui/hardware/display/DisplayFeatureManager;->CONFIG_SERVICENAME_RESOURCEID:I

    .line 93
    nop

    .line 94
    const-string v0, "ro.vendor.aod.brightness.cust"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/hardware/display/DisplayFeatureManager;->SUPPORT_MULTIPLE_AOD_BRIGHTNESS:Z

    .line 93
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 4

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    .line 102
    const-string v0, "persist.sys.muiltdisplay_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_15

    const/4 v1, 0x1

    :cond_15
    iput-boolean v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mIsFoldable:Z

    .line 116
    invoke-direct {p0}, Lmiui/hardware/display/DisplayFeatureManager;->initServiceDeathRecipient()V

    .line 117
    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_1d
    invoke-direct {p0}, Lmiui/hardware/display/DisplayFeatureManager;->initProxyLocked()V

    .line 119
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    throw v1
.end method

.method private blacklist getEffectedDisplayIndex(J)I
    .registers 9
    .param p1, "physicalDisplayId"    # J

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "result":I
    iget-boolean v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mIsFoldable:Z

    if-eqz v1, :cond_3c

    .line 179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 180
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 182
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_d
    const-string v3, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 184
    const-string v3, "display"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 185
    .local v3, "b":Landroid/os/IBinder;
    const v4, 0xfffffb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 186
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_26} :catch_30
    .catchall {:try_start_d .. :try_end_26} :catchall_2e

    move v0, v4

    .line 190
    .end local v3    # "b":Landroid/os/IBinder;
    :goto_27
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 192
    goto :goto_3c

    .line 190
    :catchall_2e
    move-exception v3

    goto :goto_35

    .line 187
    :catch_30
    move-exception v3

    .line 188
    .local v3, "e":Ljava/lang/Exception;
    :try_start_31
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_2e

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_27

    .line 190
    :goto_35
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 192
    throw v3

    .line 194
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    :cond_3c
    :goto_3c
    return v0
.end method

.method private blacklist getEffectedDisplayIndex()[I
    .registers 7

    .line 155
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 156
    .local v0, "result":[I
    iget-boolean v2, p0, Lmiui/hardware/display/DisplayFeatureManager;->mIsFoldable:Z

    if-eqz v2, :cond_42

    .line 157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 158
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 160
    .local v3, "reply":Landroid/os/Parcel;
    :try_start_12
    const-string v4, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 161
    const-string v4, "display"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 162
    .local v4, "b":Landroid/os/IBinder;
    const v5, 0xfffffc

    invoke-interface {v4, v5, v2, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 163
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 164
    .local v1, "count":I
    new-array v5, v1, [I

    move-object v0, v5

    .line 165
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2d} :catch_30
    .catchall {:try_start_12 .. :try_end_2d} :catchall_2e

    .end local v1    # "count":I
    .end local v4    # "b":Landroid/os/IBinder;
    goto :goto_34

    .line 169
    :catchall_2e
    move-exception v1

    goto :goto_3b

    .line 166
    :catch_30
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/Exception;
    :try_start_31
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_2e

    .line 169
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_34
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 170
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 171
    goto :goto_42

    .line 169
    :goto_3b
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 170
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 171
    throw v1

    .line 173
    .end local v2    # "data":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    :cond_42
    :goto_42
    return-object v0
.end method

.method public static blacklist getInstance()Lmiui/hardware/display/DisplayFeatureManager;
    .registers 2

    .line 105
    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->sInstance:Lmiui/hardware/display/DisplayFeatureManager;

    if-nez v0, :cond_17

    .line 106
    const-class v0, Lmiui/hardware/display/DisplayFeatureManager;

    monitor-enter v0

    .line 107
    :try_start_7
    sget-object v1, Lmiui/hardware/display/DisplayFeatureManager;->sInstance:Lmiui/hardware/display/DisplayFeatureManager;

    if-nez v1, :cond_12

    .line 108
    new-instance v1, Lmiui/hardware/display/DisplayFeatureManager;

    invoke-direct {v1}, Lmiui/hardware/display/DisplayFeatureManager;-><init>()V

    sput-object v1, Lmiui/hardware/display/DisplayFeatureManager;->sInstance:Lmiui/hardware/display/DisplayFeatureManager;

    .line 110
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 112
    :cond_17
    :goto_17
    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->sInstance:Lmiui/hardware/display/DisplayFeatureManager;

    return-object v0
.end method

.method private blacklist initProxyLocked()V
    .registers 6

    .line 210
    :try_start_0
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_DISPLAYFEATURE_HIDL:Z

    if-eqz v0, :cond_4c

    .line 212
    sget v0, Lmiui/hardware/display/DisplayFeatureManager;->CONFIG_SERVICENAME_RESOURCEID:I

    if-nez v0, :cond_b

    .line 213
    const-string v1, "vendor.xiaomi.hardware.displayfeature@1.0::IDisplayFeature"

    goto :goto_13

    :cond_b
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "hidlServiceName":Ljava/lang/String;
    :goto_13
    sget-object v2, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initProxyLoced CONFIG_SERVICENAME_RESOURCEID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " hidlServiceName = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v0, "default"

    invoke-static {v1, v0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    .line 217
    .local v0, "hb":Landroid/os/IHwBinder;
    if-eqz v0, :cond_4b

    .line 218
    iget-object v2, p0, Lmiui/hardware/display/DisplayFeatureManager;->mHwBinderDeathHandler:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v3, 0x2711

    invoke-interface {v0, v2, v3, v4}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 219
    new-instance v2, Lmiui/hardware/display/DisplayFeatureServiceProxy;

    invoke-direct {v2, v0}, Lmiui/hardware/display/DisplayFeatureServiceProxy;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    .line 222
    .end local v0    # "hb":Landroid/os/IHwBinder;
    .end local v1    # "hidlServiceName":Ljava/lang/String;
    :cond_4b
    goto :goto_61

    .line 223
    :cond_4c
    const-string v0, "DisplayFeatureControl"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 224
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_61

    .line 225
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mBinderDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 226
    new-instance v1, Lmiui/hardware/display/DisplayFeatureServiceProxy;

    invoke-direct {v1, v0}, Lmiui/hardware/display/DisplayFeatureServiceProxy;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_61} :catch_62
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_61} :catch_62

    .line 231
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_61
    :goto_61
    goto :goto_6a

    .line 229
    :catch_62
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string v2, "initProxyLocked failed."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6a
    return-void
.end method

.method private blacklist initServiceDeathRecipient()V
    .registers 2

    .line 235
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_DISPLAYFEATURE_HIDL:Z

    if-eqz v0, :cond_c

    .line 236
    new-instance v0, Lmiui/hardware/display/DisplayFeatureManager$1;

    invoke-direct {v0, p0}, Lmiui/hardware/display/DisplayFeatureManager$1;-><init>(Lmiui/hardware/display/DisplayFeatureManager;)V

    iput-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mHwBinderDeathHandler:Landroid/os/IHwBinder$DeathRecipient;

    goto :goto_13

    .line 246
    :cond_c
    new-instance v0, Lmiui/hardware/display/DisplayFeatureManager$2;

    invoke-direct {v0, p0}, Lmiui/hardware/display/DisplayFeatureManager$2;-><init>(Lmiui/hardware/display/DisplayFeatureManager;)V

    iput-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mBinderDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 256
    :goto_13
    return-void
.end method


# virtual methods
.method public blacklist getColorPrefer()I
    .registers 3

    .line 261
    const-string v0, "persist.sys.display_prefer"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public blacklist getScreenGamut()I
    .registers 3

    .line 272
    const-string v0, "persist.sys.gamut_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public blacklist isAdEnable()Z
    .registers 3

    .line 266
    const-string v0, "persist.sys.ltm_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist registerCallback(Ljava/lang/Object;)V
    .registers 5
    .param p1, "callback"    # Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_3
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    if-nez v1, :cond_a

    .line 200
    invoke-direct {p0}, Lmiui/hardware/display/DisplayFeatureManager;->initProxyLocked()V

    .line 202
    :cond_a
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_12

    .line 203
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lmiui/hardware/display/DisplayFeatureServiceProxy;->registerCallback(ILjava/lang/Object;)V

    .line 205
    :cond_12
    monitor-exit v0

    .line 206
    return-void

    .line 205
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public blacklist setDozeBrightness(JII)V
    .registers 7
    .param p1, "physicalDisplayId"    # J
    .param p3, "brightness"    # I
    .param p4, "miniBrightnessInt"    # I

    .line 300
    move v0, p3

    .line 301
    .local v0, "value":I
    sget-boolean v1, Lmiui/hardware/display/DisplayFeatureManager;->SUPPORT_MULTIPLE_AOD_BRIGHTNESS:Z

    if-nez v1, :cond_14

    .line 302
    sget-object v1, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;->DOZE_TO_NORMAL:Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    .line 303
    .local v1, "modeId":Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;
    if-le p3, p4, :cond_c

    .line 304
    sget-object v1, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;->DOZE_BRIGHTNESS_HBM:Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    goto :goto_10

    .line 305
    :cond_c
    if-ne p3, p4, :cond_10

    .line 306
    sget-object v1, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;->DOZE_BRIGHTNESS_LBM:Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    .line 308
    :cond_10
    :goto_10
    invoke-virtual {v1}, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;->ordinal()I

    move-result v0

    .line 310
    .end local v1    # "modeId":Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;
    :cond_14
    const/16 v1, 0x19

    invoke-virtual {p0, p1, p2, v1, v0}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(JII)V

    .line 311
    return-void
.end method

.method public blacklist setScreenEffect(II)V
    .registers 4
    .param p1, "mode"    # I
    .param p2, "value"    # I

    .line 123
    const/16 v0, 0xff

    invoke-virtual {p0, p1, p2, v0}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(III)V

    .line 124
    return-void
.end method

.method public blacklist setScreenEffect(III)V
    .registers 7
    .param p1, "mode"    # I
    .param p2, "value"    # I
    .param p3, "cookie"    # I

    .line 135
    invoke-direct {p0}, Lmiui/hardware/display/DisplayFeatureManager;->getEffectedDisplayIndex()[I

    move-result-object v0

    .line 136
    .local v0, "displays":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_e

    .line 137
    invoke-virtual {p0, v1, p1, p2, p3}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(IIII)V

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 139
    .end local v1    # "i":I
    :cond_e
    return-void
.end method

.method public blacklist setScreenEffect(IIII)V
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .param p3, "value"    # I
    .param p4, "cookie"    # I

    .line 142
    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_3
    sget-object v1, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenEffect displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    if-nez v1, :cond_40

    .line 146
    invoke-direct {p0}, Lmiui/hardware/display/DisplayFeatureManager;->initProxyLocked()V

    .line 148
    :cond_40
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_47

    .line 149
    invoke-virtual {v1, p1, p2, p3, p4}, Lmiui/hardware/display/DisplayFeatureServiceProxy;->setFeature(IIII)V

    .line 151
    :cond_47
    monitor-exit v0

    .line 152
    return-void

    .line 151
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public blacklist setScreenEffect(JII)V
    .registers 7
    .param p1, "physicalDisplayId"    # J
    .param p3, "mode"    # I
    .param p4, "value"    # I

    .line 127
    invoke-direct {p0, p1, p2}, Lmiui/hardware/display/DisplayFeatureManager;->getEffectedDisplayIndex(J)I

    move-result v0

    .line 128
    .local v0, "index":I
    const/16 v1, 0xff

    invoke-virtual {p0, v0, p3, p4, v1}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(IIII)V

    .line 129
    return-void
.end method
