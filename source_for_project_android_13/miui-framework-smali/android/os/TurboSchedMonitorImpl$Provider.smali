.class public final Landroid/os/TurboSchedMonitorImpl$Provider;
.super Ljava/lang/Object;
.source "TurboSchedMonitorImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/TurboSchedMonitorImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/os/TurboSchedMonitorImpl;",
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
.method public blacklist provideNewInstance()Landroid/os/TurboSchedMonitorImpl;
    .registers 2

    .line 14
    new-instance v0, Landroid/os/TurboSchedMonitorImpl;

    invoke-direct {v0}, Landroid/os/TurboSchedMonitorImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/os/TurboSchedMonitorImpl$Provider;->provideNewInstance()Landroid/os/TurboSchedMonitorImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/os/TurboSchedMonitorImpl;
    .registers 2

    .line 10
    sget-object v0, Landroid/os/TurboSchedMonitorImpl$Provider$SINGLETON;->INSTANCE:Landroid/os/TurboSchedMonitorImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/os/TurboSchedMonitorImpl$Provider;->provideSingleton()Landroid/os/TurboSchedMonitorImpl;

    move-result-object v0

    return-object v0
.end method
