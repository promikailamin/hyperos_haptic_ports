.class public Landroid/app/LocaleManager;
.super Ljava/lang/Object;
.source "LocaleManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "LocaleManager"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mService:Landroid/app/ILocaleManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/ILocaleManager;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/app/LocaleManager;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Landroid/app/LocaleManager;->mService:Landroid/app/ILocaleManager;

    .line 52
    return-void
.end method

.method private blacklist setApplicationLocales(Ljava/lang/String;Landroid/os/LocaleList;Z)V
    .registers 6

    .line 111
    :try_start_0
    iget-object v0, p0, Landroid/app/LocaleManager;->mService:Landroid/app/ILocaleManager;

    iget-object v1, p0, Landroid/app/LocaleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/ILocaleManager;->setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 115
    nop

    .line 116
    return-void

    .line 113
    :catch_d
    move-exception p1

    .line 114
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public whitelist getApplicationLocales()Landroid/os/LocaleList;
    .registers 2

    .line 126
    iget-object v0, p0, Landroid/app/LocaleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/LocaleManager;->getApplicationLocales(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getApplicationLocales(Ljava/lang/String;)Landroid/os/LocaleList;
    .registers 4

    .line 149
    :try_start_0
    iget-object v0, p0, Landroid/app/LocaleManager;->mService:Landroid/app/ILocaleManager;

    iget-object v1, p0, Landroid/app/LocaleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/ILocaleManager;->getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    .line 150
    :catch_d
    move-exception p1

    .line 151
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getOverrideLocaleConfig()Landroid/app/LocaleConfig;
    .registers 4

    .line 231
    :try_start_0
    iget-object v0, p0, Landroid/app/LocaleManager;->mService:Landroid/app/ILocaleManager;

    iget-object v1, p0, Landroid/app/LocaleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/LocaleManager;->mContext:Landroid/content/Context;

    .line 232
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 231
    invoke-interface {v0, v1, v2}, Landroid/app/ILocaleManager;->getOverrideLocaleConfig(Ljava/lang/String;I)Landroid/app/LocaleConfig;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    .line 233
    :catch_13
    move-exception v0

    .line 234
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getSystemLocales()Landroid/os/LocaleList;
    .registers 2

    .line 169
    :try_start_0
    iget-object v0, p0, Landroid/app/LocaleManager;->mService:Landroid/app/ILocaleManager;

    invoke-interface {v0}, Landroid/app/ILocaleManager;->getSystemLocales()Landroid/os/LocaleList;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 170
    :catch_7
    move-exception v0

    .line 171
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist setApplicationLocales(Landroid/os/LocaleList;)V
    .registers 4

    .line 76
    iget-object v0, p0, Landroid/app/LocaleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/app/LocaleManager;->setApplicationLocales(Ljava/lang/String;Landroid/os/LocaleList;Z)V

    .line 77
    return-void
.end method

.method public whitelist setApplicationLocales(Ljava/lang/String;Landroid/os/LocaleList;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 105
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/app/LocaleManager;->setApplicationLocales(Ljava/lang/String;Landroid/os/LocaleList;Z)V

    .line 106
    return-void
.end method

.method public whitelist setOverrideLocaleConfig(Landroid/app/LocaleConfig;)V
    .registers 5

    .line 215
    :try_start_0
    iget-object v0, p0, Landroid/app/LocaleManager;->mService:Landroid/app/ILocaleManager;

    iget-object v1, p0, Landroid/app/LocaleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/LocaleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/app/ILocaleManager;->setOverrideLocaleConfig(Ljava/lang/String;ILandroid/app/LocaleConfig;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_13

    .line 219
    nop

    .line 220
    return-void

    .line 217
    :catch_13
    move-exception p1

    .line 218
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setSystemLocales(Landroid/os/LocaleList;)V
    .registers 3

    .line 183
    :try_start_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 184
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 185
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 188
    nop

    .line 189
    return-void

    .line 186
    :catch_11
    move-exception p1

    .line 187
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
