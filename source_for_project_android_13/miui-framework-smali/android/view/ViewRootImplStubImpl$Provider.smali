.class public final Landroid/view/ViewRootImplStubImpl$Provider;
.super Ljava/lang/Object;
.source "ViewRootImplStubImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImplStubImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/view/ViewRootImplStubImpl;",
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
.method public blacklist provideNewInstance()Landroid/view/ViewRootImplStubImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/view/ViewRootImplStubImpl;

    invoke-direct {v0}, Landroid/view/ViewRootImplStubImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewRootImplStubImpl$Provider;->provideNewInstance()Landroid/view/ViewRootImplStubImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/view/ViewRootImplStubImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/view/ViewRootImplStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/view/ViewRootImplStubImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewRootImplStubImpl$Provider;->provideSingleton()Landroid/view/ViewRootImplStubImpl;

    move-result-object v0

    return-object v0
.end method
