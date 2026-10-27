.class public Lmiui/push/ServiceClient;
.super Ljava/lang/Object;
.source "ServiceClient.java"


# static fields
.field private static blacklist sInstance:Lmiui/push/ServiceClient;


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private blacklist createServiceIntent()Landroid/content/Intent;
    .registers 4

    .line 285
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 286
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v2, "com.xiaomi.xmsf.push.service.XMPushService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    iget-object v1, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "pkgName":Ljava/lang/String;
    sget-object v2, Lmiui/push/PushConstants;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    return-object v0
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lmiui/push/ServiceClient;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 27
    sget-object v0, Lmiui/push/ServiceClient;->sInstance:Lmiui/push/ServiceClient;

    if-nez v0, :cond_b

    .line 28
    new-instance v0, Lmiui/push/ServiceClient;

    invoke-direct {v0, p0}, Lmiui/push/ServiceClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmiui/push/ServiceClient;->sInstance:Lmiui/push/ServiceClient;

    .line 30
    :cond_b
    sget-object v0, Lmiui/push/ServiceClient;->sInstance:Lmiui/push/ServiceClient;

    return-object v0
.end method

.method private blacklist hasNetwork()Z
    .registers 4

    .line 258
    const/4 v0, -0x1

    .line 259
    .local v0, "type":I
    iget-object v1, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    .line 260
    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 261
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_17

    .line 262
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 263
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_17

    .line 264
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 267
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_17
    if-ltz v0, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    return v2
.end method

.method private blacklist serviceInstalled()Z
    .registers 5

    .line 271
    iget-object v0, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 273
    .local v0, "manager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_7
    const-string v2, "com.xiaomi.xmsf"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_e} :catch_14

    .line 275
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_11

    .line 276
    return v1

    .line 280
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_11
    nop

    .line 281
    const/4 v1, 0x1

    return v1

    .line 278
    :catch_14
    move-exception v2

    .line 279
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method


# virtual methods
.method public blacklist batchSendMessage([Lmiui/push/Message;)Z
    .registers 7
    .param p1, "messages"    # [Lmiui/push/Message;

    .line 124
    invoke-direct {p0}, Lmiui/push/ServiceClient;->hasNetwork()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 125
    return v1

    .line 127
    :cond_8
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    array-length v2, p1

    new-array v2, v2, [Landroid/os/Bundle;

    .line 129
    .local v2, "messageBundles":[Landroid/os/Bundle;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    array-length v4, p1

    if-ge v3, v4, :cond_1e

    .line 130
    aget-object v4, p1, v3

    invoke-virtual {v4}, Lmiui/push/Message;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    aput-object v4, v2, v3

    .line 129
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 133
    .end local v3    # "i":I
    :cond_1e
    array-length v3, v2

    if-lez v3, :cond_32

    .line 134
    sget-object v1, Lmiui/push/PushConstants;->ACTION_BATCH_SEND_MESSAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v1, "ext_packets"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 137
    const/4 v1, 0x1

    return v1

    .line 139
    :cond_32
    return v1
.end method

.method public blacklist closeChannel()Z
    .registers 3

    .line 186
    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 187
    const/4 v0, 0x0

    return v0

    .line 189
    :cond_8
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 190
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lmiui/push/PushConstants;->ACTION_CLOSE_CHANNEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    iget-object v1, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 192
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist closeChannel(Ljava/lang/String;)Z
    .registers 4
    .param p1, "chid"    # Ljava/lang/String;

    .line 201
    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 202
    const/4 v0, 0x0

    return v0

    .line 204
    :cond_8
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lmiui/push/PushConstants;->ACTION_CLOSE_CHANNEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    sget-object v1, Lmiui/push/PushConstants;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object v1, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 208
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist closeChannel(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "chid"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .line 218
    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 219
    const/4 v0, 0x0

    return v0

    .line 221
    :cond_8
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 222
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lmiui/push/PushConstants;->ACTION_CLOSE_CHANNEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    sget-object v1, Lmiui/push/PushConstants;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    sget-object v1, Lmiui/push/PushConstants;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    iget-object v1, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 226
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist forceReconnection()Z
    .registers 3

    .line 235
    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lmiui/push/ServiceClient;->hasNetwork()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1d

    .line 238
    :cond_d
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 239
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lmiui/push/PushConstants;->ACTION_FORCE_RECONNECT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    iget-object v1, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 241
    const/4 v1, 0x1

    return v1

    .line 236
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist openChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)I
    .registers 24
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "chid"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "authMethod"    # Ljava/lang/String;
    .param p5, "security"    # Ljava/lang/String;
    .param p6, "kick"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 52
    .local p7, "clientExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p8, "cloudExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 53
    const/4 v0, 0x1

    return v0

    .line 56
    :cond_8
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lmiui/push/PushConstants;->ACTION_OPEN_CHANNEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    sget-object v1, Lmiui/push/PushConstants;->EXTRA_USER_ID:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    sget-object v1, Lmiui/push/PushConstants;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    sget-object v1, Lmiui/push/PushConstants;->EXTRA_TOKEN:Ljava/lang/String;

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    sget-object v1, Lmiui/push/PushConstants;->EXTRA_SECURITY:Ljava/lang/String;

    move-object/from16 v5, p5

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    sget-object v1, Lmiui/push/PushConstants;->EXTRA_AUTH_METHOD:Ljava/lang/String;

    move-object/from16 v6, p4

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    sget-object v1, Lmiui/push/PushConstants;->EXTRA_KICK:Ljava/lang/String;

    move/from16 v7, p6

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 64
    const-string v1, ","

    const-string v8, ":"

    if-eqz p7, :cond_8e

    .line 65
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v9, "builder":Ljava/lang/StringBuilder;
    const/4 v10, 0x1

    .line 67
    .local v10, "i":I
    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 68
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->size()I

    move-result v13

    if-ge v10, v13, :cond_7b

    .line 70
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_7b
    nop

    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v10, v10, 0x1

    .line 73
    goto :goto_4f

    .line 74
    :cond_7f
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8e

    .line 75
    sget-object v11, Lmiui/push/PushConstants;->EXTRA_CLIENT_ATTR:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    .end local v9    # "builder":Ljava/lang/StringBuilder;
    .end local v10    # "i":I
    :cond_8e
    if-eqz p8, :cond_dd

    .line 80
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .restart local v9    # "builder":Ljava/lang/StringBuilder;
    const/4 v10, 0x1

    .line 82
    .restart local v10    # "i":I
    invoke-interface/range {p8 .. p8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_9e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_ce

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 83
    .restart local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-interface/range {p8 .. p8}, Ljava/util/Map;->size()I

    move-result v13

    if-ge v10, v13, :cond_ca

    .line 85
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_ca
    nop

    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v10, v10, 0x1

    .line 88
    goto :goto_9e

    .line 89
    :cond_ce
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_dd

    .line 90
    sget-object v1, Lmiui/push/PushConstants;->EXTRA_CLOUD_ATTR:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    .end local v9    # "builder":Ljava/lang/StringBuilder;
    .end local v10    # "i":I
    :cond_dd
    move-object v1, p0

    iget-object v8, v1, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 94
    const/4 v8, 0x0

    return v8
.end method

.method public blacklist resetConnection()V
    .registers 3

    .line 249
    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 250
    return-void

    .line 252
    :cond_7
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 253
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lmiui/push/PushConstants;->ACTION_RESET_CONNECTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    iget-object v1, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 255
    return-void
.end method

.method public blacklist sendIQ(Lmiui/push/IQ;)Z
    .registers 5
    .param p1, "iq"    # Lmiui/push/IQ;

    .line 148
    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    invoke-direct {p0}, Lmiui/push/ServiceClient;->hasNetwork()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_2a

    .line 151
    :cond_e
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lmiui/push/IQ;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 153
    .local v2, "iqBundle":Landroid/os/Bundle;
    if-eqz v2, :cond_29

    .line 154
    sget-object v1, Lmiui/push/PushConstants;->ACTION_SEND_IQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v1, "ext_packet"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 156
    iget-object v1, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 157
    const/4 v1, 0x1

    return v1

    .line 159
    :cond_29
    return v1

    .line 149
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "iqBundle":Landroid/os/Bundle;
    :cond_2a
    :goto_2a
    return v1
.end method

.method public blacklist sendMessage(Lmiui/push/Message;)Z
    .registers 5
    .param p1, "message"    # Lmiui/push/Message;

    .line 103
    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    invoke-direct {p0}, Lmiui/push/ServiceClient;->hasNetwork()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_2a

    .line 106
    :cond_e
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lmiui/push/Message;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 108
    .local v2, "messageBundle":Landroid/os/Bundle;
    if-eqz v2, :cond_29

    .line 109
    sget-object v1, Lmiui/push/PushConstants;->ACTION_SEND_MESSAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v1, "ext_packet"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 112
    const/4 v1, 0x1

    return v1

    .line 114
    :cond_29
    return v1

    .line 104
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "messageBundle":Landroid/os/Bundle;
    :cond_2a
    :goto_2a
    return v1
.end method

.method public blacklist sendPresence(Lmiui/push/Presence;)Z
    .registers 5
    .param p1, "presence"    # Lmiui/push/Presence;

    .line 168
    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    invoke-direct {p0}, Lmiui/push/ServiceClient;->hasNetwork()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_2a

    .line 171
    :cond_e
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 172
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lmiui/push/Presence;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 173
    .local v2, "presBundle":Landroid/os/Bundle;
    if-eqz v2, :cond_29

    .line 174
    sget-object v1, Lmiui/push/PushConstants;->ACTION_SEND_PRESENCE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v1, "ext_packet"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 176
    iget-object v1, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 177
    const/4 v1, 0x1

    return v1

    .line 179
    :cond_29
    return v1

    .line 169
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "presBundle":Landroid/os/Bundle;
    :cond_2a
    :goto_2a
    return v1
.end method
