.class public final Landroid/app/SystemServiceRegistryImpl$Provider;
.super Ljava/lang/Object;
.source "SystemServiceRegistryImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SystemServiceRegistryImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/app/SystemServiceRegistryImpl;",
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
.method public blacklist provideNewInstance()Landroid/app/SystemServiceRegistryImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/app/SystemServiceRegistryImpl;

    invoke-direct {v0}, Landroid/app/SystemServiceRegistryImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistryImpl$Provider;->provideNewInstance()Landroid/app/SystemServiceRegistryImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/app/SystemServiceRegistryImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/app/SystemServiceRegistryImpl$Provider$SINGLETON;->INSTANCE:Landroid/app/SystemServiceRegistryImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistryImpl$Provider;->provideSingleton()Landroid/app/SystemServiceRegistryImpl;

    move-result-object v0

    return-object v0
.end method
