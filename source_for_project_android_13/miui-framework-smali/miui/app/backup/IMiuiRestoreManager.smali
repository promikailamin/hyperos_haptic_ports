.class public interface abstract Lmiui/app/backup/IMiuiRestoreManager;
.super Ljava/lang/Object;
.source "IMiuiRestoreManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/IMiuiRestoreManager$Stub;,
        Lmiui/app/backup/IMiuiRestoreManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.app.backup.IMiuiRestoreManager"


# virtual methods
.method public abstract blacklist backupAppData(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ILmiui/app/backup/ITaskCommonCallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getDataFileInfo(Ljava/lang/String;Lmiui/app/backup/IGetFileInfoCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist listDataDir(Ljava/lang/String;JILmiui/app/backup/IListDirCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist moveData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerRestoreListener(Lmiui/app/backup/IRestoreListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist transferData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIZLmiui/app/backup/ITransferDataCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterRestoreListener(Lmiui/app/backup/IRestoreListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
