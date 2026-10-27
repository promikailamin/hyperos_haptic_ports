.class public Lcom/android/net/module/util/ConnectivitySettingsUtils;
.super Ljava/lang/Object;
.source "ConnectivitySettingsUtils.java"


# static fields
.field public static final blacklist NETWORK_AVOID_BAD_WIFI:Ljava/lang/String; = "network_avoid_bad_wifi"

.field public static final blacklist NETWORK_CARRIER_AWARE_AVOID_BAD_WIFI:Ljava/lang/String; = "network_carrier_aware_avoid_bad_wifi"

.field public static final blacklist PRIVATE_DNS_DEFAULT_MODE:Ljava/lang/String; = "private_dns_default_mode"

.field public static final blacklist PRIVATE_DNS_MODE:Ljava/lang/String; = "private_dns_mode"

.field public static final blacklist PRIVATE_DNS_MODE_OFF:I = 0x1

.field public static final blacklist PRIVATE_DNS_MODE_OFF_STRING:Ljava/lang/String; = "off"

.field public static final blacklist PRIVATE_DNS_MODE_OPPORTUNISTIC:I = 0x2

.field public static final blacklist PRIVATE_DNS_MODE_OPPORTUNISTIC_STRING:Ljava/lang/String; = "opportunistic"

.field public static final blacklist PRIVATE_DNS_MODE_PROVIDER_HOSTNAME:I = 0x3

.field public static final blacklist PRIVATE_DNS_MODE_PROVIDER_HOSTNAME_STRING:Ljava/lang/String; = "hostname"

.field public static final blacklist PRIVATE_DNS_SPECIFIER:Ljava/lang/String; = "private_dns_specifier"

.field public static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    const-class v0, Lcom/android/net/module/util/ConnectivitySettingsUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/net/module/util/ConnectivitySettingsUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getAvoidBadWifiSettingKey(I)Ljava/lang/String;
    .registers 3

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "network_carrier_aware_avoid_bad_wifi/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getNetworkAvoidBadWifiSetting(Landroid/content/Context;I)Ljava/lang/String;
    .registers 2

    .line 211
    nop

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Lcom/android/net/module/util/ConnectivitySettingsUtils;->getAvoidBadWifiSettingKey(I)Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getNetworkLegacyGlobalAvoidBadWifiSetting(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "network_avoid_bad_wifi"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getPrivateDnsHostname(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "private_dns_specifier"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getPrivateDnsMode(Landroid/content/Context;)I
    .registers 3

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 112
    const-string/jumbo v0, "private_dns_mode"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string/jumbo v0, "private_dns_default_mode"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_18
    invoke-static {v0}, Lcom/android/net/module/util/ConnectivitySettingsUtils;->getPrivateDnsModeAsInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static blacklist getPrivateDnsModeAsInt(Ljava/lang/String;)I
    .registers 4

    .line 70
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_8

    .line 71
    return v1

    .line 72
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_3a

    :cond_10
    goto :goto_31

    :sswitch_11
    const-string/jumbo v0, "off"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x0

    goto :goto_32

    :sswitch_1c
    const-string v0, "hostname"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    move p0, v2

    goto :goto_32

    :sswitch_26
    const-string/jumbo v0, "opportunistic"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    move p0, v1

    goto :goto_32

    :goto_31
    const/4 p0, -0x1

    :goto_32
    packed-switch p0, :pswitch_data_48

    .line 83
    return v1

    .line 78
    :pswitch_36
    return v1

    .line 76
    :pswitch_37
    const/4 p0, 0x3

    return p0

    .line 74
    :pswitch_39
    return v2

    :sswitch_data_3a
    .sparse-switch
        -0x2023fbf7 -> :sswitch_26
        -0x11dea3cd -> :sswitch_1c
        0x1ad6f -> :sswitch_11
    .end sparse-switch

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_39
        :pswitch_37
        :pswitch_36
    .end packed-switch
.end method

.method public static blacklist getPrivateDnsModeAsString(I)Ljava/lang/String;
    .registers 4

    .line 55
    packed-switch p0, :pswitch_data_28

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid private dns mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :pswitch_1c
    const-string p0, "hostname"

    return-object p0

    .line 59
    :pswitch_1f
    const-string/jumbo p0, "opportunistic"

    return-object p0

    .line 57
    :pswitch_23
    const-string/jumbo p0, "off"

    return-object p0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_23
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist setNetworkAvoidBadWifiSetting(Landroid/content/Context;ILjava/lang/String;)V
    .registers 3

    .line 196
    nop

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Lcom/android/net/module/util/ConnectivitySettingsUtils;->getAvoidBadWifiSettingKey(I)Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 198
    return-void
.end method

.method public static blacklist setNetworkLegacyGlobalAvoidBadWifiSetting(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "network_avoid_bad_wifi"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 168
    return-void
.end method

.method public static blacklist setPrivateDnsHostname(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "private_dns_specifier"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 152
    return-void
.end method

.method public static blacklist setPrivateDnsMode(Landroid/content/Context;I)V
    .registers 4

    .line 124
    const/4 v0, 0x1

    if-eq p1, v0, :cond_23

    const/4 v0, 0x2

    if-eq p1, v0, :cond_23

    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    goto :goto_23

    .line 127
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid private dns mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 129
    :cond_23
    :goto_23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 130
    invoke-static {p1}, Lcom/android/net/module/util/ConnectivitySettingsUtils;->getPrivateDnsModeAsString(I)Ljava/lang/String;

    move-result-object p1

    .line 129
    const-string/jumbo v0, "private_dns_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 131
    return-void
.end method
