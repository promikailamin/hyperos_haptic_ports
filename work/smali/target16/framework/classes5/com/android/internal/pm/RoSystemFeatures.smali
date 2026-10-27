.class public final Lcom/android/internal/pm/RoSystemFeatures;
.super Ljava/lang/Object;
.source "RoSystemFeatures.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getReadOnlySystemEnabledFeatures()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 126
    return-object v0
.end method

.method public static blacklist hasFeatureAutomotive(Landroid/content/Context;)Z
    .registers 1

    .line 33
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist hasFeatureEmbedded(Landroid/content/Context;)Z
    .registers 1

    .line 43
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist hasFeatureFallback(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static blacklist hasFeatureLeanback(Landroid/content/Context;)Z
    .registers 1

    .line 53
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist hasFeatureLeanbackOnly(Landroid/content/Context;)Z
    .registers 1

    .line 63
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist hasFeaturePc(Landroid/content/Context;)Z
    .registers 1

    .line 73
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist hasFeatureTelevision(Landroid/content/Context;)Z
    .registers 1

    .line 83
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist hasFeatureWatch(Landroid/content/Context;)Z
    .registers 1

    .line 93
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist maybeHasFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
    .registers 4

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    const/4 v0, 0x0

    .line 106
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 105
    sparse-switch p1, :sswitch_data_60

    :cond_c
    goto :goto_52

    :sswitch_d
    const-string p1, "android.hardware.type.automotive"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_53

    :sswitch_16
    const-string p1, "android.hardware.type.watch"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 v0, 0x6

    goto :goto_53

    :sswitch_20
    const-string p1, "android.software.leanback"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 v0, 0x2

    goto :goto_53

    :sswitch_2a
    const-string p1, "android.hardware.type.embedded"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 v0, 0x1

    goto :goto_53

    :sswitch_34
    const-string p1, "android.hardware.type.pc"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 v0, 0x4

    goto :goto_53

    :sswitch_3e
    const-string p1, "android.hardware.type.television"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 v0, 0x5

    goto :goto_53

    :sswitch_48
    const-string p1, "android.software.leanback_only"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 v0, 0x3

    goto :goto_53

    :goto_52
    const/4 v0, -0x1

    :goto_53
    packed-switch v0, :pswitch_data_7e

    .line 115
    const/4 p0, 0x0

    return-object p0

    .line 112
    :pswitch_58
    return-object v1

    .line 111
    :pswitch_59
    return-object v1

    .line 110
    :pswitch_5a
    return-object v1

    .line 109
    :pswitch_5b
    return-object v1

    .line 108
    :pswitch_5c
    return-object v1

    .line 107
    :pswitch_5d
    return-object v1

    .line 106
    :pswitch_5e
    return-object v1

    nop

    :sswitch_data_60
    .sparse-switch
        -0x75262e4a -> :sswitch_48
        -0x3d4b4221 -> :sswitch_3e
        -0x3b4acf40 -> :sswitch_34
        -0x37f7d069 -> :sswitch_2a
        0xcc2b7f5 -> :sswitch_20
        0x19b792e2 -> :sswitch_16
        0x268964c2 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
    .end packed-switch
.end method
