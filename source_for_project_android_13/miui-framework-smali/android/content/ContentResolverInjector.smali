.class public Landroid/content/ContentResolverInjector;
.super Ljava/lang/Object;
.source "ContentResolverInjector.java"


# static fields
.field private static final blacklist ENABLE:Z

.field private static final blacklist TAG:Ljava/lang/String; = "ContentResolverInjector"

.field private static blacklist mUnstablePackagesWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 20
    const-string v0, "persist.am.enable_crj"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/content/ContentResolverInjector;->ENABLE:Z

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/ContentResolverInjector;->mUnstablePackagesWhiteList:Ljava/util/ArrayList;

    .line 25
    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Landroid/content/ContentResolverInjector;->mUnstablePackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.android.incallui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Landroid/content/ContentResolverInjector;->mUnstablePackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isForceAcquireUnstableProvider(Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 31
    sget-boolean v0, Landroid/content/ContentResolverInjector;->ENABLE:Z

    if-eqz v0, :cond_30

    sget-object v0, Landroid/content/ContentResolverInjector;->mUnstablePackagesWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "force acquire UnstableProvider for pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentResolverInjector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v0, 0x1

    return v0

    .line 35
    :cond_30
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist unstableQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .registers 13
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "queryArgs"    # Landroid/os/Bundle;
    .param p4, "remoteCancellationSignal"    # Landroid/os/ICancellationSignal;

    .line 41
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v6

    .line 42
    .local v6, "unstableProvider":Landroid/content/IContentProvider;
    if-nez v6, :cond_8

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_8
    const/4 v7, 0x0

    .line 47
    .local v7, "qCursor":Landroid/database/Cursor;
    :try_start_9
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_1f
    .catchall {:try_start_9 .. :try_end_16} :catchall_1d

    move-object v7, v0

    .line 53
    if-eqz v6, :cond_4c

    .line 54
    :goto_19
    invoke-virtual {p0, v6}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    goto :goto_4c

    .line 53
    :catchall_1d
    move-exception v0

    goto :goto_4d

    .line 49
    :catch_1f
    move-exception v0

    .line 50
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v1, "ContentResolverInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remote process has died again, unstableQuery pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p0, v6}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V
    :try_end_49
    .catchall {:try_start_20 .. :try_end_49} :catchall_1d

    .line 53
    .end local v0    # "e":Landroid/os/RemoteException;
    if-eqz v6, :cond_4c

    .line 54
    goto :goto_19

    .line 57
    :cond_4c
    :goto_4c
    return-object v7

    .line 53
    :goto_4d
    if-eqz v6, :cond_52

    .line 54
    invoke-virtual {p0, v6}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 56
    :cond_52
    throw v0
.end method
