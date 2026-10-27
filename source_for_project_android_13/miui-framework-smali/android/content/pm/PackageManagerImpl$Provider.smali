.class public final Landroid/content/pm/PackageManagerImpl$Provider;
.super Ljava/lang/Object;
.source "PackageManagerImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageManagerImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/content/pm/PackageManagerImpl;",
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
.method public blacklist provideNewInstance()Landroid/content/pm/PackageManagerImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/content/pm/PackageManagerImpl;

    invoke-direct {v0}, Landroid/content/pm/PackageManagerImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/content/pm/PackageManagerImpl$Provider;->provideNewInstance()Landroid/content/pm/PackageManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/content/pm/PackageManagerImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/content/pm/PackageManagerImpl$Provider$SINGLETON;->INSTANCE:Landroid/content/pm/PackageManagerImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/content/pm/PackageManagerImpl$Provider;->provideSingleton()Landroid/content/pm/PackageManagerImpl;

    move-result-object v0

    return-object v0
.end method
