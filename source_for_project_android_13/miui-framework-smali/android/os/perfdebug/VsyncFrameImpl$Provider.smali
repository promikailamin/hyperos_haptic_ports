.class public final Landroid/os/perfdebug/VsyncFrameImpl$Provider;
.super Ljava/lang/Object;
.source "VsyncFrameImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/perfdebug/VsyncFrameImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/os/perfdebug/VsyncFrameImpl;",
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
.method public blacklist provideNewInstance()Landroid/os/perfdebug/VsyncFrameImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/os/perfdebug/VsyncFrameImpl;

    invoke-direct {v0}, Landroid/os/perfdebug/VsyncFrameImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/os/perfdebug/VsyncFrameImpl$Provider;->provideNewInstance()Landroid/os/perfdebug/VsyncFrameImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/os/perfdebug/VsyncFrameImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/os/perfdebug/VsyncFrameImpl$Provider$SINGLETON;->INSTANCE:Landroid/os/perfdebug/VsyncFrameImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/os/perfdebug/VsyncFrameImpl$Provider;->provideSingleton()Landroid/os/perfdebug/VsyncFrameImpl;

    move-result-object v0

    return-object v0
.end method
