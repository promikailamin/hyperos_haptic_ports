.class public Landroid/content/pm/DataLoaderManager;
.super Ljava/lang/Object;
.source "DataLoaderManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DataLoaderManager"


# instance fields
.field private final blacklist mService:Landroid/content/pm/IDataLoaderManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/pm/IDataLoaderManager;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/content/pm/DataLoaderManager;->mService:Landroid/content/pm/IDataLoaderManager;

    .line 36
    return-void
.end method


# virtual methods
.method public blacklist bindToDataLoader(ILandroid/content/pm/DataLoaderParamsParcel;JLandroid/content/pm/IDataLoaderStatusListener;)Z
    .registers 7

    .line 54
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/DataLoaderManager;->mService:Landroid/content/pm/IDataLoaderManager;

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/content/pm/IDataLoaderManager;->bindToDataLoader(ILandroid/content/pm/DataLoaderParamsParcel;JLandroid/content/pm/IDataLoaderStatusListener;)Z

    move-result p1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return p1

    .line 55
    :catch_8
    move-exception v0

    move-object p1, v0

    .line 56
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getDataLoader(I)Landroid/content/pm/IDataLoader;
    .registers 3

    .line 66
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/DataLoaderManager;->mService:Landroid/content/pm/IDataLoaderManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IDataLoaderManager;->getDataLoader(I)Landroid/content/pm/IDataLoader;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 67
    :catch_7
    move-exception p1

    .line 68
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist unbindFromDataLoader(I)V
    .registers 3

    .line 79
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/DataLoaderManager;->mService:Landroid/content/pm/IDataLoaderManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IDataLoaderManager;->unbindFromDataLoader(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 82
    nop

    .line 83
    return-void

    .line 80
    :catch_7
    move-exception p1

    .line 81
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
