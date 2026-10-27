.class public Lmiui/dfc/IDfcService$Default;
.super Ljava/lang/Object;
.source "IDfcService.java"

# interfaces
.implements Lmiui/dfc/IDfcService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/dfc/IDfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist compressDuplicateFiles(Ljava/lang/String;Lmiui/dfc/IDupCompressCallback;)V
    .registers 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "callback"    # Lmiui/dfc/IDupCompressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist getDFCVersion()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDuplicateFiles(Ljava/lang/String;Lmiui/dfc/IGetDuplicateFilesCallback;)V
    .registers 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "callback"    # Lmiui/dfc/IGetDuplicateFilesCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist isSupportDFC()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist restoreDuplicateFiles(Ljava/lang/String;)J
    .registers 4
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist scanDuplicateFiles(Ljava/lang/String;Lmiui/dfc/IDuplicateFileScanCallback;I)V
    .registers 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "callback"    # Lmiui/dfc/IDuplicateFileScanCallback;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist setDFCExceptRules(Ljava/lang/String;)V
    .registers 2
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method
