.class public final Landroid/content/res/AssetManagerImpl$Provider;
.super Ljava/lang/Object;
.source "AssetManagerImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/AssetManagerImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/content/res/AssetManagerImpl;",
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
.method public blacklist provideNewInstance()Landroid/content/res/AssetManagerImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/content/res/AssetManagerImpl;

    invoke-direct {v0}, Landroid/content/res/AssetManagerImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/content/res/AssetManagerImpl$Provider;->provideNewInstance()Landroid/content/res/AssetManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/content/res/AssetManagerImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/content/res/AssetManagerImpl$Provider$SINGLETON;->INSTANCE:Landroid/content/res/AssetManagerImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/content/res/AssetManagerImpl$Provider;->provideSingleton()Landroid/content/res/AssetManagerImpl;

    move-result-object v0

    return-object v0
.end method
