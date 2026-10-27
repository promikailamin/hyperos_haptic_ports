.class public Lmiui/hareware/display/DisplayFeatureManager;
.super Ljava/lang/Object;
.source "DisplayFeatureManager.java"


# static fields
.field private static final blacklist COLOR_SERVICE_NAME:Ljava/lang/String; = "com.qti.snapdragon.sdk.display.IColorService"

.field public static final blacklist DEFALUT_GAMUT_MODE:I = 0x0

.field public static final blacklist DEFALUT_SCREEN_CABC:I = 0x1

.field public static final blacklist DEFALUT_SCREEN_COLOR:I = 0x2

.field public static final blacklist DEFAULT_DISPLAY_EYECARE_LEVEL:I = 0x0

.field public static final blacklist DEFAULT_SCREEN_SATURATION:I

.field private static final blacklist DISPLAY_FEATURE_SERVICE:Ljava/lang/String; = "DisplayFeatureControl"

.field public static final blacklist PROPERTY_ASSERTIVE_DISPLAY:Ljava/lang/String; = "persist.sys.ltm_enable"

.field public static final blacklist PROPERTY_DISPLAY_EYECARE:Ljava/lang/String; = "persist.sys.display_eyecare"

.field public static final blacklist PROPERTY_GAMUT_MODE:Ljava/lang/String; = "persist.sys.gamut_mode"

.field public static final blacklist PROPERTY_SCREEN_CABC:Ljava/lang/String; = "persist.sys.display_cabc"

.field public static final blacklist PROPERTY_SCREEN_COLOR:Ljava/lang/String; = "persist.sys.display_prefer"

.field public static final blacklist PROPERTY_SCREEN_SATURATION:Ljava/lang/String; = "persist.sys.display_ce"

.field public static final blacklist SCREEN_COLOR_COOL:I = 0x3

.field public static final blacklist SCREEN_COLOR_NATURE:I = 0x2

.field public static final blacklist SCREEN_COLOR_WARM:I = 0x1

.field public static final blacklist SCREEN_SATURATION_STANDARD:I = 0xa

.field public static final blacklist SCREEN_SATURATION_VIVID:I = 0xb

.field private static blacklist TAG:Ljava/lang/String; = null

.field private static final blacklist TRANSACTION_setActiveMode:I = 0x6

.field private static final blacklist TRANSACTION_setDefaultMode:I = 0xc

.field private static blacklist sInstance:Lmiui/hareware/display/DisplayFeatureManager;


# instance fields
.field private blacklist mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 27
    const-string v0, "DisplayFeatureManager"

    sput-object v0, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    .line 109
    invoke-static {}, Lmiui/hareware/display/DisplayFeatureManager;->getDefaultScreenSaturation()I

    move-result v0

    sput v0, Lmiui/hareware/display/DisplayFeatureManager;->DEFAULT_SCREEN_SATURATION:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "DisplayFeatureControl"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 43
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_12

    .line 44
    new-instance v1, Lmiui/hareware/display/DisplayFeatureServiceProxy;

    invoke-direct {v1, v0}, Lmiui/hareware/display/DisplayFeatureServiceProxy;-><init>(Landroid/os/IBinder;)V

    iput-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    .line 46
    :cond_12
    return-void
.end method

.method private static blacklist getDefaultScreenSaturation()I
    .registers 3

    .line 112
    const/16 v0, 0xa

    .line 113
    .local v0, "defaultSaturationMode":I
    const-string v1, "is_hongmi"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 114
    const/16 v0, 0xb

    .line 116
    :cond_d
    const-string v1, "display_ce"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static blacklist getInstance()Lmiui/hareware/display/DisplayFeatureManager;
    .registers 1

    .line 35
    sget-object v0, Lmiui/hareware/display/DisplayFeatureManager;->sInstance:Lmiui/hareware/display/DisplayFeatureManager;

    if-nez v0, :cond_b

    .line 36
    new-instance v0, Lmiui/hareware/display/DisplayFeatureManager;

    invoke-direct {v0}, Lmiui/hareware/display/DisplayFeatureManager;-><init>()V

    sput-object v0, Lmiui/hareware/display/DisplayFeatureManager;->sInstance:Lmiui/hareware/display/DisplayFeatureManager;

    .line 38
    :cond_b
    sget-object v0, Lmiui/hareware/display/DisplayFeatureManager;->sInstance:Lmiui/hareware/display/DisplayFeatureManager;

    return-object v0
.end method

.method private blacklist setActiveMode(Landroid/os/IBinder;II)I
    .registers 8
    .param p1, "colorService"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "modeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 213
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 216
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.qti.snapdragon.sdk.display.IColorService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 221
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 223
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 225
    nop

    .line 226
    return v2

    .line 223
    .end local v2    # "result":I
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 225
    throw v2
.end method

.method private blacklist setDefaultMode(Landroid/os/IBinder;II)I
    .registers 8
    .param p1, "colorService"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "modeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 233
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 236
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.qti.snapdragon.sdk.display.IColorService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 240
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 241
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_28

    .line 243
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 245
    nop

    .line 246
    return v2

    .line 243
    .end local v2    # "result":I
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 245
    throw v2
.end method


# virtual methods
.method public blacklist getColorPrefer()I
    .registers 3

    .line 70
    const-string v0, "persist.sys.display_prefer"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public blacklist getEyeCare()I
    .registers 3

    .line 99
    const-string v0, "persist.sys.display_eyecare"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public blacklist getScreenCabc()I
    .registers 3

    .line 153
    const-string v0, "persist.sys.display_cabc"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public blacklist getScreenGamut()I
    .registers 3

    .line 175
    const-string v0, "persist.sys.gamut_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public blacklist getScreenSaturation()I
    .registers 3

    .line 131
    sget v0, Lmiui/hareware/display/DisplayFeatureManager;->DEFAULT_SCREEN_SATURATION:I

    const-string v1, "persist.sys.display_ce"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public blacklist isAdEnable()Z
    .registers 3

    .line 197
    const-string v0, "persist.sys.ltm_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist setAdEnable(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .line 186
    :try_start_0
    iget-object v0, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v0, :cond_f

    .line 187
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    const/16 v3, 0xff

    invoke-virtual {v0, v1, v2, v3}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setAd(III)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 191
    :cond_f
    goto :goto_18

    .line 189
    :catch_10
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string v2, "set assertive display error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_18
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.ltm_enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public blacklist setColorPrefer(I)V
    .registers 5
    .param p1, "mode"    # I

    .line 59
    :try_start_0
    iget-object v0, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v0, :cond_8

    .line 60
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setColorPrefer(II)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 64
    :cond_8
    goto :goto_11

    .line 62
    :catch_9
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string v2, "set color prefer error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.display_prefer"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public blacklist setEyeCare(I)V
    .registers 6
    .param p1, "level"    # I

    .line 82
    const/4 v0, -0x1

    .line 83
    .local v0, "ret":I
    :try_start_1
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    .line 84
    invoke-virtual {v1, v2, p1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setEyeCare(II)I

    move-result v1

    move v0, v1

    .line 86
    :cond_b
    const-string v1, "com.qti.snapdragon.sdk.display.IColorService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 87
    .local v1, "colorService":Landroid/os/IBinder;
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1c

    if-eqz v1, :cond_1c

    .line 88
    invoke-direct {p0, v1, v2, p1}, Lmiui/hareware/display/DisplayFeatureManager;->setActiveMode(Landroid/os/IBinder;II)I

    .line 89
    invoke-direct {p0, v1, v2, p1}, Lmiui/hareware/display/DisplayFeatureManager;->setDefaultMode(Landroid/os/IBinder;II)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1d

    .line 93
    .end local v0    # "ret":I
    .end local v1    # "colorService":Landroid/os/IBinder;
    :cond_1c
    goto :goto_25

    .line 91
    :catch_1d
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string v2, "set eye care error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_25
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.display_eyecare"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public blacklist setScreenCabc(I)V
    .registers 5
    .param p1, "value"    # I

    .line 143
    :try_start_0
    iget-object v0, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v0, :cond_8

    .line 144
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setCABC(II)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 148
    :cond_8
    goto :goto_11

    .line 146
    :catch_9
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string v2, "set screen cabc error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.display_cabc"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public blacklist setScreenGamut(I)V
    .registers 5
    .param p1, "value"    # I

    .line 165
    :try_start_0
    iget-object v0, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v0, :cond_8

    .line 166
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setGamutMode(II)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 170
    :cond_8
    goto :goto_11

    .line 168
    :catch_9
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string v2, "set screen gamut error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.gamut_mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public blacklist setScreenSaturation(I)V
    .registers 5
    .param p1, "value"    # I

    .line 121
    :try_start_0
    iget-object v0, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v0, :cond_8

    .line 122
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setCE(II)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 126
    :cond_8
    goto :goto_11

    .line 124
    :catch_9
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string v2, "set screen ce error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.display_ce"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method
