.class public final Landroid/app/WallpaperColorsStubImpl$Provider;
.super Ljava/lang/Object;
.source "WallpaperColorsStubImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperColorsStubImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/app/WallpaperColorsStubImpl;",
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
.method public blacklist provideNewInstance()Landroid/app/WallpaperColorsStubImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/app/WallpaperColorsStubImpl;

    invoke-direct {v0}, Landroid/app/WallpaperColorsStubImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/app/WallpaperColorsStubImpl$Provider;->provideNewInstance()Landroid/app/WallpaperColorsStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/app/WallpaperColorsStubImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/app/WallpaperColorsStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/app/WallpaperColorsStubImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/app/WallpaperColorsStubImpl$Provider;->provideSingleton()Landroid/app/WallpaperColorsStubImpl;

    move-result-object v0

    return-object v0
.end method
