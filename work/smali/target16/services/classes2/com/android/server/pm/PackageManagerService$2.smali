.class public Lcom/android/server/pm/PackageManagerService$2;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 1650
    iget p0, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xe

    const/4 v1, 0x1

    if-eq p0, v0, :cond_15

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 1657
    :cond_d
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    .line 1658
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return v1

    .line 1652
    :cond_15
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/PackageManagerService;

    .line 1653
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->writePendingRestrictions()V

    return v1
.end method
