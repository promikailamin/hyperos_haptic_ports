.class public Lmiui/smartpower/IScenarioCallback$Default;
.super Ljava/lang/Object;
.source "IScenarioCallback.java"

# interfaces
.implements Lmiui/smartpower/IScenarioCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/smartpower/IScenarioCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onCurrentScenarioChanged(JJ)V
    .registers 5
    .param p1, "mainSenarioId"    # J
    .param p3, "additionalSenarioId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method
