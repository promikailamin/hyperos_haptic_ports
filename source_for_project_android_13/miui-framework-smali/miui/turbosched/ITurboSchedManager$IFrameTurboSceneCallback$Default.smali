.class public Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback$Default;
.super Ljava/lang/Object;
.source "ITurboSchedManager.java"

# interfaces
.implements Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 795
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onSceneChanged(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "start"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 792
    return-void
.end method
