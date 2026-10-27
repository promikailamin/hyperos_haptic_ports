.class public Landroid/apphibernation/AppHibernationManager;
.super Ljava/lang/Object;
.source "AppHibernationManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AppHibernationManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/apphibernation/AppHibernationManager;->mContext:Landroid/content/Context;

    .line 53
    nop

    .line 54
    const-string p1, "app_hibernation"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 53
    invoke-static {p1}, Landroid/apphibernation/IAppHibernationService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/apphibernation/IAppHibernationService;

    move-result-object p1

    iput-object p1, p0, Landroid/apphibernation/AppHibernationManager;->mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;

    .line 55
    return-void
.end method


# virtual methods
.method public whitelist getHibernatingPackagesForUser()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 130
    :try_start_0
    iget-object v0, p0, Landroid/apphibernation/AppHibernationManager;->mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;

    iget-object v1, p0, Landroid/apphibernation/AppHibernationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/apphibernation/IAppHibernationService;->getHibernatingPackagesForUser(I)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 131
    :catch_d
    move-exception v0

    .line 132
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getHibernationStatsForUser()Ljava/util/Map;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/apphibernation/HibernationStats;",
            ">;"
        }
    .end annotation

    .line 163
    :try_start_0
    iget-object v0, p0, Landroid/apphibernation/AppHibernationManager;->mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;

    iget-object v1, p0, Landroid/apphibernation/AppHibernationManager;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 163
    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/apphibernation/IAppHibernationService;->getHibernationStatsForUser(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 165
    :catch_e
    move-exception v0

    .line 166
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getHibernationStatsForUser(Ljava/util/Set;)Ljava/util/Map;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/apphibernation/HibernationStats;",
            ">;"
        }
    .end annotation

    .line 147
    :try_start_0
    iget-object v0, p0, Landroid/apphibernation/AppHibernationManager;->mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Landroid/apphibernation/AppHibernationManager;->mContext:Landroid/content/Context;

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    .line 147
    invoke-interface {v0, v1, p1}, Landroid/apphibernation/IAppHibernationService;->getHibernationStatsForUser(Ljava/util/List;I)Ljava/util/Map;

    move-result-object p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    return-object p1

    .line 149
    :catch_12
    move-exception p1

    .line 150
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist isHibernatingForUser(Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 66
    :try_start_0
    iget-object v0, p0, Landroid/apphibernation/AppHibernationManager;->mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;

    iget-object v1, p0, Landroid/apphibernation/AppHibernationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/apphibernation/IAppHibernationService;->isHibernatingForUser(Ljava/lang/String;I)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    .line 67
    :catch_d
    move-exception p1

    .line 68
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist isHibernatingGlobally(Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 97
    :try_start_0
    iget-object v0, p0, Landroid/apphibernation/AppHibernationManager;->mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;

    invoke-interface {v0, p1}, Landroid/apphibernation/IAppHibernationService;->isHibernatingGlobally(Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 98
    :catch_7
    move-exception p1

    .line 99
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist isOatArtifactDeletionEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 179
    :try_start_0
    iget-object v0, p0, Landroid/apphibernation/AppHibernationManager;->mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;

    invoke-interface {v0}, Landroid/apphibernation/IAppHibernationService;->isOatArtifactDeletionEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 180
    :catch_7
    move-exception v0

    .line 181
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist setHibernatingForUser(Ljava/lang/String;Z)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 81
    :try_start_0
    iget-object v0, p0, Landroid/apphibernation/AppHibernationManager;->mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;

    iget-object v1, p0, Landroid/apphibernation/AppHibernationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Landroid/apphibernation/IAppHibernationService;->setHibernatingForUser(Ljava/lang/String;IZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 85
    nop

    .line 86
    return-void

    .line 83
    :catch_d
    move-exception p1

    .line 84
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setHibernatingGlobally(Ljava/lang/String;Z)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 114
    :try_start_0
    iget-object v0, p0, Landroid/apphibernation/AppHibernationManager;->mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;

    invoke-interface {v0, p1, p2}, Landroid/apphibernation/IAppHibernationService;->setHibernatingGlobally(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 117
    nop

    .line 118
    return-void

    .line 115
    :catch_7
    move-exception p1

    .line 116
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
