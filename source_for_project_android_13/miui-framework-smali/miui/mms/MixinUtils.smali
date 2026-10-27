.class public Lmiui/mms/MixinUtils;
.super Ljava/lang/Object;
.source "MixinUtils.java"


# static fields
.field private static final blacklist EU:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PK_MCC:Ljava/lang/String; = "410"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 29

    .line 15
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "AT"

    const-string v2, "BE"

    const-string v3, "BG"

    const-string v4, "CY"

    const-string v5, "CZ"

    const-string v6, "DE"

    const-string v7, "DK"

    const-string v8, "EE"

    const-string v9, "ES"

    const-string v10, "FI"

    const-string v11, "FR"

    const-string v12, "GB"

    const-string v13, "GR"

    const-string v14, "HR"

    const-string v15, "HU"

    const-string v16, "IE"

    const-string v17, "IT"

    const-string v18, "LT"

    const-string v19, "LU"

    const-string v20, "LV"

    const-string v21, "MT"

    const-string v22, "NL"

    const-string v23, "PL"

    const-string v24, "PT"

    const-string v25, "RO"

    const-string v26, "SE"

    const-string v27, "SI"

    const-string v28, "SK"

    filled-new-array/range {v1 .. v28}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lmiui/mms/MixinUtils;->EU:Ljava/util/Set;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist isInEURegion()Z
    .registers 2

    .line 24
    const-string v0, "ro.miui.region"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "country":Ljava/lang/String;
    sget-object v1, Lmiui/mms/MixinUtils;->EU:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static whitelist isMxSupported()Z
    .registers 5

    .line 51
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    const/4 v1, 0x0

    if-nez v0, :cond_39

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_a

    goto :goto_39

    .line 55
    :cond_a
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v2, 0x1

    if-nez v0, :cond_10

    .line 56
    return v2

    .line 59
    :cond_10
    invoke-static {}, Lmiui/mms/MixinUtils;->isInEURegion()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 61
    return v1

    .line 64
    :cond_17
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 65
    .local v0, "simCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    if-ge v3, v0, :cond_38

    .line 66
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lmiui/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 67
    const-string v4, "410"

    invoke-static {v3, v4}, Lmiui/mms/MixinUtils;->matchImsi(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 68
    return v1

    .line 65
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 73
    .end local v3    # "i":I
    :cond_38
    return v2

    .line 52
    .end local v0    # "simCount":I
    :cond_39
    :goto_39
    return v1
.end method

.method public static whitelist isMxSupported(I)Z
    .registers 4
    .param p0, "slotId"    # I

    .line 34
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    const/4 v1, 0x0

    if-nez v0, :cond_21

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_a

    goto :goto_21

    .line 37
    :cond_a
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v2, 0x1

    if-nez v0, :cond_10

    .line 38
    return v2

    .line 40
    :cond_10
    invoke-static {}, Lmiui/mms/MixinUtils;->isInEURegion()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 42
    return v1

    .line 44
    :cond_17
    const-string v0, "410"

    invoke-static {p0, v0}, Lmiui/mms/MixinUtils;->matchImsi(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 45
    return v1

    .line 47
    :cond_20
    return v2

    .line 35
    :cond_21
    :goto_21
    return v1
.end method

.method private static blacklist matchImsi(ILjava/lang/String;)Z
    .registers 4
    .param p0, "slotId"    # I
    .param p1, "mcc"    # Ljava/lang/String;

    .line 29
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/TelephonyManager;->getNetworkOperatorForSlot(I)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method
