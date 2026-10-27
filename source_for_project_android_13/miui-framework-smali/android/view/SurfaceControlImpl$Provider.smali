.class public final Landroid/view/SurfaceControlImpl$Provider;
.super Ljava/lang/Object;
.source "SurfaceControlImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControlImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/view/SurfaceControlImpl;",
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
.method public blacklist provideNewInstance()Landroid/view/SurfaceControlImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/view/SurfaceControlImpl;

    invoke-direct {v0}, Landroid/view/SurfaceControlImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/view/SurfaceControlImpl$Provider;->provideNewInstance()Landroid/view/SurfaceControlImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/view/SurfaceControlImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/view/SurfaceControlImpl$Provider$SINGLETON;->INSTANCE:Landroid/view/SurfaceControlImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/view/SurfaceControlImpl$Provider;->provideSingleton()Landroid/view/SurfaceControlImpl;

    move-result-object v0

    return-object v0
.end method
