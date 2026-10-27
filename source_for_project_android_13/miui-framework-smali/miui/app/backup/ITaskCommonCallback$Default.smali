.class public Lmiui/app/backup/ITaskCommonCallback$Default;
.super Ljava/lang/Object;
.source "ITaskCommonCallback.java"

# interfaces
.implements Lmiui/app/backup/ITaskCommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/backup/ITaskCommonCallback;
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

.method public blacklist onTaskEnd(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "resultCode"    # I
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method
