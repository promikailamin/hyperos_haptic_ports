.class public Landroid/provider/SettingsImpl;
.super Landroid/provider/SettingsStub;
.source "SettingsImpl.java"


# static fields
.field private static final blacklist DEFAULT_ANDROID_ID:Ljava/lang/String; = "0000000000000000"

.field private static final blacklist TAG:Ljava/lang/String; = "SettingsProvider"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Landroid/provider/SettingsStub;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/provider/SettingsImpl;
    .registers 1

    .line 25
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object v0

    check-cast v0, Landroid/provider/SettingsImpl;

    return-object v0
.end method

.method private blacklist recordRefreshRateChange(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "operation"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;

    .line 51
    sget-object v0, Landroid/provider/MiuiSettings;->REFRESH_RATE_SETTING:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refresh rate settings changed, name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsProvider"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {}, Landroid/provider/SettingsHistory;->getInstance()Landroid/provider/SettingsHistory;

    move-result-object v0

    .line 55
    .local v0, "settingsHistory":Landroid/provider/SettingsHistory;
    const-string v6, ""

    move-object v2, v0

    move v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/provider/SettingsHistory;->recordSetting(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/provider/SettingsHistory$Setting;

    .line 57
    .end local v0    # "settingsHistory":Landroid/provider/SettingsHistory;
    :cond_42
    return-void
.end method


# virtual methods
.method public blacklist dumpLocked(ILjava/io/PrintWriter;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 46
    invoke-static {}, Landroid/provider/SettingsHistory;->getInstance()Landroid/provider/SettingsHistory;

    move-result-object v0

    const-string v1, "refresh rate"

    invoke-virtual {v0, p2, v1}, Landroid/provider/SettingsHistory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public blacklist getMiuiCacheName(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 83
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getMiuiCacheName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMiuiCacheRingtoneSetting(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 78
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getMiuiCacheRingtoneSetting(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMiuiConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)V
    .registers 4
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "outConfig"    # Landroid/content/res/Configuration;
    .param p3, "userHandle"    # I

    .line 61
    invoke-static {p1, p2, p3}, Landroid/provider/MiuiSettings;->getConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)V

    .line 62
    return-void
.end method

.method public blacklist getMiuiRingtoneCacheName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 88
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getMiuiRingtoneCacheName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isMiuiPublicSystemSettings(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "name"    # Ljava/lang/String;

    .line 30
    invoke-static {p1, p2}, Landroid/provider/MiuiSettings$System;->isMiuiPublicSettings(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isMiuiRingtoneCacheUri(Landroid/net/Uri;)Z
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 73
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->isMiuiRingtoneCacheUri(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public blacklist isNeedCacheSettings(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 93
    const-string v0, "android_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "0000000000000000"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public blacklist loadMiuiDefaultRingtoneSettings(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;)V
    .registers 3
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "context"    # Landroid/content/Context;

    .line 35
    invoke-static {p1, p2}, Lmiui/provider/SettingProviderHelper;->loadDefaultRingtoneSettings(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public blacklist logAtSettingsChanged(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 65
    invoke-static {p2}, Landroid/provider/MiuiSettings$Key;->isMiuiShortcut(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", because "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v1, "SettingsProvider"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_3a
    return-void
.end method

.method public blacklist onSettingMutate(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "operation"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;

    .line 41
    invoke-direct/range {p0 .. p5}, Landroid/provider/SettingsImpl;->recordRefreshRateChange(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method
