.class public Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;
.super Ljava/lang/Object;
.source "FingerprintUtils.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BiometricUtils;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/biometrics/sensors/BiometricUtils<",
        "Landroid/hardware/fingerprint/Fingerprint;",
        ">;"
    }
.end annotation


# static fields
.field public static GXZW_HEIGHT_PRCENT:F = 0.0f

.field public static GXZW_ICON_HEIGHT:I = 0x0

.field public static GXZW_ICON_WIDTH:I = 0x0

.field public static GXZW_ICON_X:I = 0x0

.field public static GXZW_ICON_Y:I = 0x0

.field public static GXZW_WIDTH_PRCENT:F = 0.0f

.field private static GXZW_X_PRCENT:F = 0.0f

.field private static GXZW_Y_PRCENT:F = 0.0f

.field private static final LEGACY_FINGERPRINT_FILE:Ljava/lang/String; = "settings_fingerprint.xml"

.field private static final MIUI_DEFAULT_RESOLUTION:Ljava/lang/String;

.field private static final MIUI_DEFAULT_RESOLUTION_PROPERTY:Ljava/lang/String; = "persist.sys.miui_default_resolution"

.field public static SCREEN_HEIGHT_PHYSICAL:I = 0x0

.field public static SCREEN_HEIGHT_PX:I = 0x0

.field public static SCREEN_WIDTH_PHYSICAL:I = 0x0

.field public static SCREEN_WIDTH_PX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FingerprintUtils"

.field private static final sInstanceLock:Ljava/lang/Object;

.field private static sInstances:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFileName:Ljava/lang/String;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstanceLock:Ljava/lang/Object;

    .line 213
    const-string/jumbo v0, "persist.sys.miui_default_resolution"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->MIUI_DEFAULT_RESOLUTION:Ljava/lang/String;

    .line 218
    const/4 v0, -0x1

    sput v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->SCREEN_WIDTH_PHYSICAL:I

    .line 219
    sput v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->SCREEN_HEIGHT_PHYSICAL:I

    .line 222
    const/high16 v1, -0x40800000    # -1.0f

    sput v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_X_PRCENT:F

    .line 223
    sput v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_Y_PRCENT:F

    .line 224
    sput v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_WIDTH_PRCENT:F

    .line 225
    sput v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_HEIGHT_PRCENT:F

    .line 226
    sput v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->SCREEN_WIDTH_PX:I

    .line 227
    sput v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->SCREEN_HEIGHT_PX:I

    .line 230
    const/16 v0, 0x1c5

    sput v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_ICON_X:I

    .line 231
    const/16 v0, 0x668

    sput v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_ICON_Y:I

    .line 232
    const/16 v0, 0xad

    sput v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_ICON_WIDTH:I

    .line 233
    sput v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_ICON_HEIGHT:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mUserStates:Landroid/util/SparseArray;

    .line 109
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mFileName:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public static calculateFodSensorLocation(Landroid/content/Context;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 251
    const-string v0, ","

    sget v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->SCREEN_WIDTH_PHYSICAL:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    .line 252
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->phySicalScreenPx(Landroid/content/Context;)V

    .line 254
    :cond_a
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->screenWhPx(Landroid/content/Context;)V

    .line 256
    const-string/jumbo v1, "persist.vendor.sys.fp.fod.location.X_Y"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "xyString":Ljava/lang/String;
    const-string/jumbo v3, "persist.vendor.sys.fp.fod.size.width_height"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "whString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_ac

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2b

    goto/16 :goto_ac

    .line 272
    :cond_2b
    :try_start_2b
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_ICON_X:I

    .line 273
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_ICON_Y:I

    .line 274
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_ICON_WIDTH:I

    .line 275
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_ICON_HEIGHT:I

    .line 283
    sget v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_ICON_X:I

    sget v3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->SCREEN_WIDTH_PHYSICAL:I

    invoke-static {v0, v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getPrcent(II)F

    move-result v0

    sput v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_X_PRCENT:F

    .line 284
    sget v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_ICON_Y:I

    sget v3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->SCREEN_HEIGHT_PHYSICAL:I

    invoke-static {v0, v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getPrcent(II)F

    move-result v0

    sput v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_Y_PRCENT:F

    .line 285
    sget v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_ICON_WIDTH:I

    sget v3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->SCREEN_WIDTH_PHYSICAL:I

    invoke-static {v0, v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getPrcent(II)F

    move-result v0

    sput v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_WIDTH_PRCENT:F

    .line 286
    sget v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_ICON_HEIGHT:I

    sget v3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->SCREEN_HEIGHT_PHYSICAL:I

    invoke-static {v0, v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getPrcent(II)F

    move-result v0

    sput v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_HEIGHT_PRCENT:F

    .line 288
    sget v3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->SCREEN_WIDTH_PX:I

    int-to-float v4, v3

    sget v5, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_X_PRCENT:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_ICON_X:I

    .line 289
    sget v4, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->SCREEN_HEIGHT_PX:I

    int-to-float v5, v4

    sget v6, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_Y_PRCENT:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sput v5, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_ICON_Y:I

    .line 290
    int-to-float v3, v3

    sget v5, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_WIDTH_PRCENT:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    sput v3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_ICON_WIDTH:I

    .line 291
    int-to-float v3, v4

    mul-float/2addr v3, v0

    float-to-int v0, v3

    sput v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_ICON_HEIGHT:I
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_a3} :catch_a4

    .line 295
    goto :goto_ab

    .line 292
    :catch_a4
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 294
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->resetDefaultValue()V

    .line 296
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_ab
    return-void

    .line 267
    :cond_ac
    :goto_ac
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->resetDefaultValue()V

    .line 268
    return-void
.end method

.method public static getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;
    .registers 2
    .param p0, "sensorId"    # I

    .line 70
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;
    .registers 5
    .param p0, "sensorId"    # I
    .param p1, "fileName"    # Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_3
    sget-object v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

    if-nez v1, :cond_e

    .line 84
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

    .line 86
    :cond_e
    sget-object v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3d

    .line 87
    if-nez p1, :cond_33

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "settings_fingerprint_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 90
    :cond_33
    sget-object v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    invoke-direct {v2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    :cond_3d
    sget-object v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 93
    .local v1, "utils":Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;
    monitor-exit v0

    .line 94
    return-object v1

    .line 93
    .end local v1    # "utils":Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v1
.end method

.method public static getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;
    .registers 2
    .param p0, "sensorId"    # I

    .line 104
    const-string/jumbo v0, "settings_fingerprint.xml"

    invoke-static {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v0

    return-object v0
.end method

.method public static getPrcent(II)F
    .registers 6
    .param p0, "xory"    # I
    .param p1, "widthorheight"    # I

    .line 299
    if-eqz p1, :cond_1b

    if-nez p0, :cond_5

    goto :goto_1b

    .line 301
    :cond_5
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(I)V

    const/16 v2, 0xa

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    return v0

    .line 300
    :cond_1b
    :goto_1b
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static getSensorLocation(Landroid/content/Context;)[I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 236
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->calculateFodSensorLocation(Landroid/content/Context;)V

    .line 238
    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 239
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 240
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v3

    .line 242
    .local v3, "resolutiones":[Landroid/view/Display$Mode;
    const/4 v4, 0x4

    new-array v4, v4, [I

    .line 243
    .local v4, "mFodLocation":[I
    sget v5, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_ICON_X:I

    aput v5, v4, v1

    .line 244
    sget v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_ICON_Y:I

    const/4 v5, 0x1

    aput v1, v4, v5

    .line 245
    sget v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_ICON_WIDTH:I

    const/4 v5, 0x2

    aput v1, v4, v5

    .line 246
    sget v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_ICON_HEIGHT:I

    const/4 v5, 0x3

    aput v1, v4, v5

    .line 247
    return-object v4
.end method

.method private getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 153
    monitor-enter p0

    .line 154
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    .line 155
    .local v0, "state":Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;
    if-nez v0, :cond_18

    .line 156
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mFileName:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    move-object v0, v1

    .line 157
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    :cond_18
    monitor-exit p0

    return-object v0

    .line 160
    .end local v0    # "state":Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public static isKnownAcquiredCode(I)Z
    .registers 2
    .param p0, "acquiredCode"    # I

    .line 193
    packed-switch p0, :pswitch_data_8

    .line 207
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 204
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static isKnownErrorCode(I)Z
    .registers 2
    .param p0, "errorCode"    # I

    .line 170
    packed-switch p0, :pswitch_data_8

    .line 182
    const/4 v0, 0x0

    return v0

    .line 179
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static phySicalScreenPx(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 310
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->MIUI_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    .line 311
    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 312
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 313
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    sput v2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->SCREEN_WIDTH_PHYSICAL:I

    .line 314
    invoke-virtual {v1}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v2

    sput v2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->SCREEN_HEIGHT_PHYSICAL:I

    .line 315
    .end local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v1    # "display":Landroid/view/Display;
    goto :goto_46

    .line 317
    :cond_2a
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->SCREEN_WIDTH_PHYSICAL:I

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->SCREEN_HEIGHT_PHYSICAL:I

    .line 320
    :goto_46
    return-void
.end method

.method private static resetDefaultValue()V
    .registers 1

    .line 337
    const/16 v0, 0x1c5

    sput v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_ICON_X:I

    .line 338
    const/16 v0, 0x668

    sput v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_ICON_Y:I

    .line 339
    const/16 v0, 0xad

    sput v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_ICON_WIDTH:I

    .line 340
    sput v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->GXZW_ICON_HEIGHT:I

    .line 341
    return-void
.end method

.method private static screenWhPx(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 328
    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 329
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 330
    .local v1, "dm":Landroid/util/DisplayMetrics;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_23

    move v2, v4

    .line 332
    .local v2, "orientation":Z
    :cond_23
    if-eqz v2, :cond_28

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_2a

    :cond_28
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_2a
    sput v3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->SCREEN_WIDTH_PX:I

    .line 333
    if-eqz v2, :cond_31

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_33

    :cond_31
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_33
    sput v3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->SCREEN_HEIGHT_PX:I

    .line 334
    return-void
.end method


# virtual methods
.method public bridge synthetic addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .registers 4

    .line 54
    check-cast p3, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/fingerprint/Fingerprint;)V

    return-void
.end method

.method public addBiometricForUser(Landroid/content/Context;ILandroid/hardware/fingerprint/Fingerprint;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;->addBiometric(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    .line 120
    return-void
.end method

.method public getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;->getBiometrics()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;->getUniqueName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInvalidationInProgress(Landroid/content/Context;I)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;->isInvalidationInProgress()Z

    move-result v0

    return v0
.end method

.method public removeBiometricForUser(Landroid/content/Context;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "fingerId"    # I

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;->removeBiometric(I)V

    .line 125
    return-void
.end method

.method public renameBiometricForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "fingerId"    # I
    .param p4, "name"    # Ljava/lang/CharSequence;

    .line 130
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 132
    return-void

    .line 134
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;->renameBiometric(ILjava/lang/CharSequence;)V

    .line 135
    return-void
.end method

.method public setInvalidationInProgress(Landroid/content/Context;IZ)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "inProgress"    # Z

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;->setInvalidationInProgress(Z)V

    .line 145
    return-void
.end method
