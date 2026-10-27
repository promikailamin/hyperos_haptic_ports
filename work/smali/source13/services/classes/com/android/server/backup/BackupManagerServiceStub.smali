.class public interface abstract Lcom/android/server/backup/BackupManagerServiceStub;
.super Ljava/lang/Object;
.source "BackupManagerServiceStub.java"


# static fields
.field public static final COMPONENT_ENABLED_STATE_NONE:I = -0x1

.field public static final FD_CLOSE:I = -0x2

.field public static final FD_NONE:I = -0x1

.field public static final PID_NONE:I = -0x1

.field public static final TAG:Ljava/lang/String; = "BackupManagerServiceStub"


# direct methods
.method public static getInstance()Lcom/android/server/backup/BackupManagerServiceStub;
    .registers 1

    .line 26
    const-class v0, Lcom/android/server/backup/BackupManagerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupManagerServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract addRestoredSize(JI)V
.end method

.method public abstract cancelBackups(Lcom/android/server/backup/UserBackupManagerService;)V
.end method

.method public abstract doFullBackup(Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract errorOccur(II)V
.end method

.method public abstract errorOccur(ILjava/io/InputStream;)V
.end method

.method public abstract getAppUserId(II)I
.end method

.method public abstract getApplicationInfo(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract hookUserIdForXSpace(I)I
.end method

.method public abstract installExistingPackageAsUser(Ljava/lang/String;I)Z
.end method

.method public abstract isCanceling(I)Z
.end method

.method public abstract isForceAllowBackup(Landroid/content/pm/PackageInfo;I)Z
.end method

.method public abstract isNeedBeKilled(Ljava/lang/String;I)Z
.end method

.method public abstract isRunningFromMiui(I)Z
.end method

.method public abstract isRunningFromMiui(Ljava/io/InputStream;)Z
.end method

.method public abstract isSysAppRunningFromMiui(Landroid/content/pm/PackageInfo;I)Z
.end method

.method public abstract isXSpaceUser(I)Z
.end method

.method public abstract isXSpaceUserRunning()Z
.end method

.method public abstract linkToDeath(Landroid/app/IBackupAgent;ILandroid/os/ParcelFileDescriptor;)V
.end method

.method public abstract needUpdateToken(Landroid/app/IBackupAgent;I)Z
.end method

.method public abstract onApkInstalled(I)V
.end method

.method public abstract prepareOperationTimeout(Lcom/android/server/backup/UserBackupManagerService;IJLcom/android/server/backup/BackupRestoreTask;II)V
.end method

.method public abstract readMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;I)V
.end method

.method public abstract registerHuanjiReceiver(Lcom/android/server/backup/UserBackupManagerService;Landroid/content/Context;)V
.end method

.method public abstract restoreFileEnd(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/IBackupAgent;Landroid/app/backup/IBackupManager;ILandroid/os/Handler;I)V
.end method

.method public abstract routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setInputFileDescriptor(Lcom/android/server/backup/restore/FullRestoreEngine;I)V
.end method

.method public abstract setOutputFileDescriptor(Lcom/android/server/backup/fullbackup/FullBackupEngine;I)V
.end method

.method public abstract setOutputFileDescriptor(Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;Landroid/os/ParcelFileDescriptor;)V
.end method

.method public abstract skipConfirmationUi(ILjava/lang/String;)Z
.end method

.method public abstract unlinkToDeath(Landroid/app/IBackupAgent;)V
.end method

.method public abstract waitingBeforeGetAgent()V
.end method

.method public abstract writeMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;I)V
.end method
