.class public Landroid/provider/SettingsStub;
.super Ljava/lang/Object;
.source "SettingsStub.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/provider/SettingsStub;
    .registers 1

    .line 20
    const-class v0, Landroid/provider/SettingsStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/SettingsStub;

    return-object v0
.end method


# virtual methods
.method public blacklist dumpLocked(ILjava/io/PrintWriter;)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 36
    return-void
.end method

.method public blacklist getMiuiCacheName(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 57
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getMiuiCacheRingtoneSetting(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 53
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getMiuiConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)V
    .registers 4
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "outConfig"    # Landroid/content/res/Configuration;
    .param p3, "userHandle"    # I

    .line 42
    return-void
.end method

.method public blacklist getMiuiRingtoneCacheName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isMiuiPublicSystemSettings(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "name"    # Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMiuiRingtoneCacheUri(Landroid/net/Uri;)Z
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNeedCacheSettings(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist loadMiuiDefaultRingtoneSettings(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;)V
    .registers 3
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "context"    # Landroid/content/Context;

    .line 29
    return-void
.end method

.method public blacklist logAtSettingsChanged(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 46
    return-void
.end method

.method public blacklist onSettingMutate(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "operation"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;

    .line 32
    return-void
.end method
