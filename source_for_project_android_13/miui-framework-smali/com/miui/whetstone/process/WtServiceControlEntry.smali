.class public Lcom/miui/whetstone/process/WtServiceControlEntry;
.super Ljava/lang/Object;
.source "WtServiceControlEntry.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static blacklist mSCE:Lcom/miui/whetstone/process/WtServiceControlEntry;

.field private static blacklist mServiceControlWhitelist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mSCE:Lcom/miui/whetstone/process/WtServiceControlEntry;

    .line 22
    sput-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    .line 25
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    const-string v1, "com.android.cts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public static blacklist addAppToServiceControlWhitelist(Ljava/lang/String;)V
    .registers 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/miui/whetstone/process/WtServiceControlEntry;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_7

    .line 70
    return-void

    .line 72
    :cond_7
    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public static blacklist addAppToServiceControlWhitelist(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p0, "listPkg":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/whetstone/process/WtServiceControlEntry;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_7

    .line 77
    return-void

    .line 79
    :cond_7
    if-eqz p0, :cond_e

    .line 80
    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 82
    :cond_e
    return-void
.end method

.method static blacklist checkPermission()Z
    .registers 2

    .line 37
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    .line 38
    const/4 v0, 0x0

    return v0

    .line 40
    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist getInstance()Lcom/miui/whetstone/process/WtServiceControlEntry;
    .registers 1

    .line 30
    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mSCE:Lcom/miui/whetstone/process/WtServiceControlEntry;

    if-nez v0, :cond_b

    .line 31
    new-instance v0, Lcom/miui/whetstone/process/WtServiceControlEntry;

    invoke-direct {v0}, Lcom/miui/whetstone/process/WtServiceControlEntry;-><init>()V

    sput-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mSCE:Lcom/miui/whetstone/process/WtServiceControlEntry;

    .line 33
    :cond_b
    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mSCE:Lcom/miui/whetstone/process/WtServiceControlEntry;

    return-object v0
.end method

.method public static blacklist isAppInServiceControlWhitelist(Ljava/lang/String;)Z
    .registers 2
    .param p0, "appName"    # Ljava/lang/String;

    .line 107
    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isServiceControlEnabled()Z
    .registers 3

    .line 98
    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->getWhetstoneSystemSetting()Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    move-result-object v0

    .line 99
    .local v0, "whetstoneSetting":Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;
    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 100
    const-string v2, "servicecontrol_enabled"

    invoke-virtual {v0, v2, v1}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->getCommonConfigInBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 102
    :cond_e
    return v1
.end method

.method public static blacklist removeAppFromServiceControlWhitelist(Ljava/lang/String;)V
    .registers 3
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/miui/whetstone/process/WtServiceControlEntry;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_7

    .line 86
    return-void

    .line 88
    :cond_7
    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 89
    const-string v0, "ServiceControlEntry"

    const-string v1, "could not remove an nonexist package from whitelist"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void

    .line 92
    :cond_17
    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method private blacklist setServiceControlWhitelist()V
    .registers 6

    .line 49
    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 50
    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    const-string v1, "com.android.cts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->getWhetstoneSystemSetting()Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    move-result-object v0

    .line 52
    .local v0, "whetstoneSetting":Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;
    if-eqz v0, :cond_33

    .line 53
    const-string v1, "servicecontrol_whitelist"

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->getCommonConfigInJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 54
    .local v1, "jsonArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_33

    .line 56
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    :try_start_1b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2e

    .line 57
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "pkgName":Ljava/lang/String;
    sget-object v4, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_2a} :catch_2f

    .line 56
    nop

    .end local v3    # "pkgName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 62
    .end local v2    # "i":I
    :cond_2e
    goto :goto_33

    .line 60
    :catch_2f
    move-exception v2

    .line 61
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 66
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_33
    :goto_33
    return-void
.end method


# virtual methods
.method public whitelist test-api update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 3
    .param p1, "obj"    # Ljava/util/Observable;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 45
    invoke-direct {p0}, Lcom/miui/whetstone/process/WtServiceControlEntry;->setServiceControlWhitelist()V

    .line 46
    return-void
.end method
