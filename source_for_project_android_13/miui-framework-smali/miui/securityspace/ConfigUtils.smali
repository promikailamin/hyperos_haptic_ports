.class public Lmiui/securityspace/ConfigUtils;
.super Ljava/lang/Object;
.source "ConfigUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist isLowLevelDevice()Z
    .registers 3

    .line 37
    sget v0, Lmiui/util/DeviceLevel;->RAM:I

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lmiui/util/DeviceLevel;->getDeviceLevel(II)I

    move-result v0

    sget v2, Lmiui/util/DeviceLevel;->LOW:I

    if-ne v0, v2, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public static blacklist isMiuiLite2()Z
    .registers 2

    .line 46
    invoke-static {}, Lmiui/util/DeviceLevel;->getMiuiLiteVersion()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static blacklist isNotSupportRequired()Z
    .registers 1

    .line 41
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static blacklist isSupportSecuritySpace()Z
    .registers 3

    .line 24
    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isNotSupportRequired()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 25
    return v1

    .line 27
    :cond_8
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "deviceName":Ljava/lang/String;
    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isMiuiLite2()Z

    move-result v2

    if-eqz v2, :cond_1d

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->SAVE_SECOND_SPACE_DEVICES:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 29
    return v1

    .line 31
    :cond_1d
    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isLowLevelDevice()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static blacklist isSupportXSpace()Z
    .registers 1

    .line 15
    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isNotSupportRequired()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 16
    const/4 v0, 0x0

    return v0

    .line 18
    :cond_8
    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isLowLevelDevice()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
