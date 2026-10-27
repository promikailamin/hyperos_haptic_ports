.class public Lcom/android/server/backup/restore/RestoreFileRunnable;
.super Ljava/lang/Object;
.source "RestoreFileRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mAgent:Landroid/app/IBackupAgent;

.field public final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mInfo:Lcom/android/server/backup/FileMetadata;

.field public final mSocket:Landroid/os/ParcelFileDescriptor;

.field public final mToken:I


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V
    .registers 6

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mAgent:Landroid/app/IBackupAgent;

    .line 43
    iput-object p3, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mInfo:Lcom/android/server/backup/FileMetadata;

    .line 44
    iput p5, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mToken:I

    .line 51
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mSocket:Landroid/os/ParcelFileDescriptor;

    .line 52
    iput-object p1, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    move-object/from16 v0, p0

    .line 58
    :try_start_2
    iget-object v1, v0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mAgent:Landroid/app/IBackupAgent;

    move-object v2, v1

    iget-object v1, v0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mSocket:Landroid/os/ParcelFileDescriptor;

    iget-object v3, v0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mInfo:Lcom/android/server/backup/FileMetadata;

    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide v5, v4

    iget v4, v3, Lcom/android/server/backup/FileMetadata;->type:I

    move-wide v6, v5

    iget-object v5, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    move-wide v7, v6

    iget-object v6, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    move-wide v9, v7

    iget-wide v7, v3, Lcom/android/server/backup/FileMetadata;->mode:J

    iget-wide v11, v3, Lcom/android/server/backup/FileMetadata;->mtime:J

    move-wide/from16 v17, v11

    move-object v12, v2

    move-wide v2, v9

    move-wide/from16 v9, v17

    iget v11, v0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mToken:I

    iget-object v0, v0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 60
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v0

    const-string v16, ""

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v17, v12

    move-object v12, v0

    move-object/from16 v0, v17

    .line 58
    invoke-interface/range {v0 .. v16}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;JILjava/lang/String;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_34} :catch_34

    :catch_34
    return-void
.end method
