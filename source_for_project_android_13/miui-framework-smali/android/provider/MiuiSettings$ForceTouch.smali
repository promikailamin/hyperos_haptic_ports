.class public final Landroid/provider/MiuiSettings$ForceTouch;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ForceTouch"
.end annotation


# static fields
.field private static final blacklist ForceTouchEnable:Ljava/lang/String; = "force_touch_enable"

.field private static blacklist mDeepPress:F

.field private static blacklist mLightPress:F

.field private static blacklist mSupportForceTouch:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 7211
    const/4 v0, -0x1

    sput v0, Landroid/provider/MiuiSettings$ForceTouch;->mSupportForceTouch:I

    .line 7212
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Landroid/provider/MiuiSettings$ForceTouch;->mLightPress:F

    .line 7213
    sput v0, Landroid/provider/MiuiSettings$ForceTouch;->mDeepPress:F

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 7209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkHighend()V
    .registers 7

    .line 7258
    const-string v0, "ro.product.device"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7259
    .local v0, "device":Ljava/lang/String;
    const-string v1, "capricorn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 7260
    invoke-static {}, Landroid/provider/MiuiSettings$ForceTouch;->getTotalInternalMemory()J

    move-result-wide v1

    .line 7261
    .local v1, "internalMemroyRom":J
    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v3

    .line 7262
    .local v3, "ram":J
    const-wide v5, 0x1dcd650000L

    cmp-long v5, v1, v5

    if-ltz v5, :cond_2a

    const-wide v5, 0xee6b2800L

    cmp-long v5, v3, v5

    if-gez v5, :cond_2d

    .line 7263
    :cond_2a
    const/4 v5, 0x0

    sput v5, Landroid/provider/MiuiSettings$ForceTouch;->mSupportForceTouch:I

    .line 7266
    .end local v1    # "internalMemroyRom":J
    .end local v3    # "ram":J
    :cond_2d
    return-void
.end method

.method public static blacklist getDeepPressure()F
    .registers 2

    .line 7251
    sget v0, Landroid/provider/MiuiSettings$ForceTouch;->mDeepPress:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_16

    .line 7252
    const v0, 0x3f4ccccd    # 0.8f

    const-string v1, "force_touch_deep"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Landroid/provider/MiuiSettings$ForceTouch;->mDeepPress:F

    .line 7254
    :cond_16
    sget v0, Landroid/provider/MiuiSettings$ForceTouch;->mDeepPress:F

    return v0
.end method

.method public static blacklist getLightPressure()F
    .registers 2

    .line 7244
    sget v0, Landroid/provider/MiuiSettings$ForceTouch;->mLightPress:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_16

    .line 7245
    const v0, 0x3ecccccd    # 0.4f

    const-string v1, "force_touch_light"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Landroid/provider/MiuiSettings$ForceTouch;->mLightPress:F

    .line 7247
    :cond_16
    sget v0, Landroid/provider/MiuiSettings$ForceTouch;->mLightPress:F

    return v0
.end method

.method private static blacklist getTotalInternalMemory()J
    .registers 14

    .line 7269
    const-wide/16 v0, 0x0

    .line 7270
    .local v0, "totalSize":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7271
    .local v2, "pathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7273
    const-string v3, "ro.boot.sdcard.type"

    const-string v4, "mixed"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 7274
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 7275
    .local v3, "state":Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 7276
    const-string v4, "mounted_ro"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 7277
    :cond_30
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7281
    .end local v3    # "state":Ljava/lang/String;
    :cond_37
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 7282
    .local v4, "path":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 7283
    .end local v4    # "path":Ljava/io/File;
    goto :goto_3b

    .line 7285
    :cond_4d
    move-wide v3, v0

    .line 7286
    .local v3, "totalInternalMemory":J
    const-wide v5, 0x1dcd65000L

    cmp-long v5, v3, v5

    const-wide/32 v6, 0x3b9aca00

    if-ltz v5, :cond_73

    .line 7287
    div-long v8, v3, v6

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    div-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-long v8, v8

    mul-long/2addr v8, v6

    .end local v3    # "totalInternalMemory":J
    .local v8, "totalInternalMemory":J
    goto :goto_79

    .line 7289
    .end local v8    # "totalInternalMemory":J
    .restart local v3    # "totalInternalMemory":J
    :cond_73
    div-long v8, v3, v6

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    mul-long/2addr v8, v6

    .line 7291
    .end local v3    # "totalInternalMemory":J
    .restart local v8    # "totalInternalMemory":J
    :goto_79
    return-wide v8
.end method

.method public static blacklist isEnabled(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 7226
    invoke-static {}, Landroid/provider/MiuiSettings$ForceTouch;->isSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 7227
    return v1

    .line 7229
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7230
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "force_touch_enable"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 7231
    .local v2, "enable":I
    if-eqz v2, :cond_16

    move v1, v3

    :cond_16
    return v1
.end method

.method public static blacklist isSupport()Z
    .registers 3

    .line 7216
    sget v0, Landroid/provider/MiuiSettings$ForceTouch;->mSupportForceTouch:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_13

    .line 7217
    const-string v0, "support_force_touch"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput v0, Landroid/provider/MiuiSettings$ForceTouch;->mSupportForceTouch:I

    .line 7218
    if-ne v0, v2, :cond_13

    .line 7219
    invoke-static {}, Landroid/provider/MiuiSettings$ForceTouch;->checkHighend()V

    .line 7222
    :cond_13
    sget v0, Landroid/provider/MiuiSettings$ForceTouch;->mSupportForceTouch:I

    if-ne v0, v2, :cond_18

    move v1, v2

    :cond_18
    return v1
.end method

.method public static blacklist setEnabled(Landroid/content/Context;Z)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .line 7235
    invoke-static {}, Landroid/provider/MiuiSettings$ForceTouch;->isSupport()Z

    move-result v0

    if-nez v0, :cond_8

    .line 7236
    const/4 v0, 0x0

    return v0

    .line 7238
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7239
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "force_touch_enable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7240
    const/4 v1, 0x1

    return v1
.end method
