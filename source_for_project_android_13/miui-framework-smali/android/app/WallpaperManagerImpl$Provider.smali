.class public final Landroid/app/WallpaperManagerImpl$Provider;
.super Ljava/lang/Object;
.source "WallpaperManagerImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperManagerImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/app/WallpaperManagerImpl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist provideNewInstance()Landroid/app/WallpaperManagerImpl;
    .registers 3

    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Impl class android.app.WallpaperManagerImpl is marked as singleton"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/app/WallpaperManagerImpl$Provider;->provideNewInstance()Landroid/app/WallpaperManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/app/WallpaperManagerImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/app/WallpaperManagerImpl$Provider$SINGLETON;->INSTANCE:Landroid/app/WallpaperManagerImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/app/WallpaperManagerImpl$Provider;->provideSingleton()Landroid/app/WallpaperManagerImpl;

    move-result-object v0

    return-object v0
.end method
