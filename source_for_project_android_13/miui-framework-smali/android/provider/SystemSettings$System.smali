.class public Landroid/provider/SystemSettings$System;
.super Ljava/lang/Object;
.source "SystemSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SystemSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "System"
.end annotation


# static fields
.field public static final whitelist DARKEN_WALLPAPER_UNDER_DARK_MODE:Ljava/lang/String; = "darken_wallpaper_under_dark_mode"

.field private static final blacklist E10_DEVICE:Ljava/lang/String; = "beryllium"

.field private static final blacklist INDIA:Ljava/lang/String; = "INDIA"

.field public static final whitelist LOCK_WALLPAPER_PROVIDER_AUTHORITY:Ljava/lang/String; = "lock_wallpaper_provider_authority"

.field public static final whitelist PERSIST_SYS_DEVICE_NAME:Ljava/lang/String; = "persist.sys.device_name"

.field public static final whitelist RO_MARKET_NAME:Ljava/lang/String; = "ro.product.marketname"

.field public static final whitelist STATUS_BAR_WINDOW_LOADED:Ljava/lang/String; = "status_bar_window_loaded"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 118
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static blacklist getDefaultNameRes()I
    .registers 2

    .line 60
    const-string v0, "is_redmi"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 61
    const v0, 0x110f01bc

    .local v0, "deviceNameRes":I
    goto :goto_68

    .line 62
    .end local v0    # "deviceNameRes":I
    :cond_d
    const-string v0, "is_poco"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 63
    const v0, 0x110f01b9

    .restart local v0    # "deviceNameRes":I
    goto :goto_68

    .line 64
    .end local v0    # "deviceNameRes":I
    :cond_19
    const-string v0, "is_hongmi"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 65
    const v0, 0x110f01b6

    .restart local v0    # "deviceNameRes":I
    goto :goto_68

    .line 66
    .end local v0    # "deviceNameRes":I
    :cond_25
    const-string v0, "is_xiaomi"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 67
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "beryllium"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 68
    const-string v0, "ro.boot.hwc"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "hwc":Ljava/lang/String;
    const-string v1, "INDIA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 70
    const v1, 0x110f01bb

    move v0, v1

    .local v1, "deviceNameRes":I
    goto :goto_54

    .line 72
    .end local v1    # "deviceNameRes":I
    :cond_50
    const v1, 0x110f01ba

    move v0, v1

    .line 74
    .local v0, "deviceNameRes":I
    :goto_54
    goto :goto_68

    .line 75
    .end local v0    # "deviceNameRes":I
    :cond_55
    const v0, 0x110f01c2

    .restart local v0    # "deviceNameRes":I
    goto :goto_68

    .line 77
    .end local v0    # "deviceNameRes":I
    :cond_59
    const-string v0, "is_pad"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 78
    const v0, 0x110f01b8

    .restart local v0    # "deviceNameRes":I
    goto :goto_68

    .line 80
    .end local v0    # "deviceNameRes":I
    :cond_65
    const v0, 0x110f0293

    .line 82
    .restart local v0    # "deviceNameRes":I
    :goto_68
    return v0
.end method

.method public static whitelist getDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 51
    const-string v0, "ro.product.marketname"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "defaultName":Ljava/lang/String;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_17

    .line 53
    :cond_f
    invoke-static {}, Landroid/provider/SystemSettings$System;->getDefaultNameRes()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    :cond_17
    const-string v1, "persist.sys.device_name"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist setDeviceName(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceName"    # Ljava/lang/String;

    .line 86
    const-string v0, "persist.sys.device_name"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {p0}, Landroid/provider/SystemSettings$System;->setNetHostName(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method public static whitelist setNetHostName(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 95
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "for method depend sdk ChinesePinyinConverter,temporarily annotate it to reslove this dependency"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
