.class public final Landroid/os/BinderAllocationTracker$Provider;
.super Ljava/lang/Object;
.source "BinderAllocationTracker$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BinderAllocationTracker$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/os/BinderAllocationTracker;",
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
.method public blacklist provideNewInstance()Landroid/os/BinderAllocationTracker;
    .registers 2

    .line 14
    new-instance v0, Landroid/os/BinderAllocationTracker;

    invoke-direct {v0}, Landroid/os/BinderAllocationTracker;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/os/BinderAllocationTracker$Provider;->provideNewInstance()Landroid/os/BinderAllocationTracker;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/os/BinderAllocationTracker;
    .registers 2

    .line 10
    sget-object v0, Landroid/os/BinderAllocationTracker$Provider$SINGLETON;->INSTANCE:Landroid/os/BinderAllocationTracker;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/os/BinderAllocationTracker$Provider;->provideSingleton()Landroid/os/BinderAllocationTracker;

    move-result-object v0

    return-object v0
.end method
