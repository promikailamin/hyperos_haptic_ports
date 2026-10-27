.class Lmiui/app/backup/BackupManager$1;
.super Ljava/lang/Thread;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/backup/BackupManager;->restoreFile(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ZLmiui/app/backup/BackupManager$BackupRestoreListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/app/backup/BackupManager;

.field final synthetic blacklist val$fd:Landroid/os/ParcelFileDescriptor;

.field final synthetic blacklist val$writeSide:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor blacklist <init>(Lmiui/app/backup/BackupManager;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .param p1, "this$0"    # Lmiui/app/backup/BackupManager;

    .line 314
    iput-object p1, p0, Lmiui/app/backup/BackupManager$1;->this$0:Lmiui/app/backup/BackupManager;

    iput-object p2, p0, Lmiui/app/backup/BackupManager$1;->val$fd:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 8

    .line 317
    const-string v0, "IOException"

    const-string v1, "Backup:BackupManager"

    const/4 v2, 0x0

    .line 318
    .local v2, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 320
    .local v3, "os":Ljava/io/OutputStream;
    :try_start_6
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lmiui/app/backup/BackupManager$1;->val$fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v2, v4

    .line 321
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v3, v4

    .line 323
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 324
    .local v4, "buf":[B
    :goto_22
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "read":I
    if-lez v5, :cond_2e

    .line 325
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_2d} :catch_45
    .catchall {:try_start_6 .. :try_end_2d} :catchall_43

    goto :goto_22

    .line 331
    .end local v4    # "buf":[B
    .end local v6    # "read":I
    :cond_2e
    nop

    .line 332
    :try_start_2f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 334
    nop

    .line 335
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 337
    iget-object v4, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_3d

    .line 338
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3d} :catch_3e

    .line 342
    :cond_3d
    :goto_3d
    goto :goto_5b

    .line 340
    :catch_3e
    move-exception v4

    .line 341
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_5b

    .line 330
    :catchall_43
    move-exception v4

    goto :goto_5c

    .line 327
    :catch_45
    move-exception v4

    .line 328
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_46
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_43

    .line 331
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_4e

    .line 332
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 334
    :cond_4e
    if-eqz v3, :cond_53

    .line 335
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 337
    :cond_53
    iget-object v4, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_3d

    .line 338
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_5a} :catch_3e

    goto :goto_3d

    .line 344
    :goto_5b
    return-void

    .line 331
    :goto_5c
    if-eqz v2, :cond_64

    .line 332
    :try_start_5e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_64

    .line 340
    :catch_62
    move-exception v5

    goto :goto_71

    .line 334
    :cond_64
    :goto_64
    if-eqz v3, :cond_69

    .line 335
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 337
    :cond_69
    iget-object v5, p0, Lmiui/app/backup/BackupManager$1;->val$writeSide:Landroid/os/ParcelFileDescriptor;

    if-eqz v5, :cond_70

    .line 338
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_70} :catch_62

    .line 342
    :cond_70
    goto :goto_74

    .line 341
    .local v5, "e":Ljava/io/IOException;
    :goto_71
    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    .end local v5    # "e":Ljava/io/IOException;
    :goto_74
    throw v4
.end method
