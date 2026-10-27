.class public interface abstract Lmiui/app/backup/BackupManager$BackupRestoreListener;
.super Ljava/lang/Object;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/backup/BackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BackupRestoreListener"
.end annotation


# virtual methods
.method public abstract blacklist onBackupDataTransaction(Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;)V
.end method

.method public abstract blacklist onBackupEnd(Ljava/lang/String;I)V
.end method

.method public abstract blacklist onBackupStart(Ljava/lang/String;I)V
.end method

.method public abstract blacklist onCustomProgressChange(Ljava/lang/String;IIJJ)V
.end method

.method public abstract blacklist onError(Ljava/lang/String;II)V
.end method

.method public abstract blacklist onRestoreEnd(Ljava/lang/String;I)V
.end method

.method public abstract blacklist onRestoreProgress(Ljava/lang/String;IJ)V
.end method

.method public abstract blacklist onRestoreStart(Ljava/lang/String;I)V
.end method
