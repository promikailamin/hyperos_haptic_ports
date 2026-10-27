.class public Lmiui/dfc/IDfc$Default;
.super Ljava/lang/Object;
.source "IDfc.java"

# interfaces
.implements Lmiui/dfc/IDfc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/dfc/IDfc;
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
.method public blacklist Dfc_compressDuplicateFiles(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "compressDuplicateFilesRules"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist Dfc_forceStopScanDuplicateFiles()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist Dfc_getDuplicateFiles(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "getDuplicateFilesRules"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist Dfc_restoreDuplicateFiles(Ljava/lang/String;)J
    .registers 4
    .param p1, "restoreDuplicateFilesRules"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist Dfc_scanDuplicateFiles(Ljava/lang/String;)V
    .registers 2
    .param p1, "scanDuplicateFilesRules"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public blacklist Dfc_setDFCExceptRules(Ljava/lang/String;)V
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

.method public blacklist Dfc_stopCompressDuplicateFiles()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method
