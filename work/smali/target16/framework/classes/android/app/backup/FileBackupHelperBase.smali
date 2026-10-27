.class Landroid/app/backup/FileBackupHelperBase;
.super Ljava/lang/Object;
.source "FileBackupHelperBase.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "FileBackupHelperBase"


# instance fields
.field greylist-max-o mContext:Landroid/content/Context;

.field greylist-max-o mExceptionLogged:Z

.field greylist-max-o mPtr:J


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Landroid/app/backup/FileBackupHelperBase;->ctor()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/backup/FileBackupHelperBase;->mPtr:J

    .line 39
    iput-object p1, p0, Landroid/app/backup/FileBackupHelperBase;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private static native greylist-max-o ctor()J
.end method

.method private static native greylist-max-o dtor(J)V
.end method

.method static greylist-max-o performBackup_checked(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11

    .line 56
    array-length v0, p3

    if-nez v0, :cond_4

    .line 57
    return-void

    .line 60
    :cond_4
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_2f

    aget-object v3, p3, v2

    .line 61
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_16

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 62
    :cond_16
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "files must have all absolute paths: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 66
    :cond_2f
    array-length v0, p3

    array-length v1, p4

    if-ne v0, v1, :cond_70

    .line 71
    if-eqz p0, :cond_3a

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    goto :goto_3b

    :cond_3a
    const/4 p0, 0x0

    :goto_3b
    move-object v0, p0

    .line 72
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 73
    if-eqz v3, :cond_6a

    .line 77
    iget-wide v1, p1, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/app/backup/FileBackupHelperBase;->performBackup_native(Ljava/io/FileDescriptor;JLjava/io/FileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 79
    if-nez p0, :cond_4d

    .line 83
    return-void

    .line 81
    :cond_4d
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Backup failed 0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_6a
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 67
    :cond_70
    move-object v4, p3

    move-object v5, p4

    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "files.length="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, v4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " keys.length="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, v5

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native greylist-max-o performBackup_native(Ljava/io/FileDescriptor;JLjava/io/FileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method private static native greylist-max-o writeFile_native(JLjava/lang/String;J)I
.end method

.method private static native greylist-max-o writeSnapshot_native(JLjava/io/FileDescriptor;)I
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    :try_start_0
    iget-wide v0, p0, Landroid/app/backup/FileBackupHelperBase;->mPtr:J

    invoke-static {v0, v1}, Landroid/app/backup/FileBackupHelperBase;->dtor(J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_a

    .line 46
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 47
    nop

    .line 48
    return-void

    .line 46
    :catchall_a
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 47
    throw v0
.end method

.method greylist-max-o isKeyInList(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7

    .line 112
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p2, v2

    .line 113
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 114
    const/4 p1, 0x1

    return p1

    .line 112
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 117
    :cond_12
    return v1
.end method

.method greylist-max-o writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)Z
    .registers 8

    .line 86
    nop

    .line 89
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 92
    iget-wide v0, p0, Landroid/app/backup/FileBackupHelperBase;->mPtr:J

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object p2, p2, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    iget-wide v3, p2, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/backup/FileBackupHelperBase;->writeFile_native(JLjava/lang/String;J)I

    move-result p2

    .line 93
    const/4 v0, 0x1

    if-eqz p2, :cond_55

    .line 95
    iget-boolean v1, p0, Landroid/app/backup/FileBackupHelperBase;->mExceptionLogged:Z

    if-nez v1, :cond_55

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed restoring file \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' for app \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Landroid/app/backup/FileBackupHelperBase;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' result=0x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 98
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 96
    const-string v1, "FileBackupHelperBase"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-boolean v0, p0, Landroid/app/backup/FileBackupHelperBase;->mExceptionLogged:Z

    .line 102
    :cond_55
    if-nez p2, :cond_58

    goto :goto_59

    :cond_58
    const/4 v0, 0x0

    :goto_59
    return v0
.end method

.method public greylist writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .registers 4

    .line 107
    iget-wide v0, p0, Landroid/app/backup/FileBackupHelperBase;->mPtr:J

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/app/backup/FileBackupHelperBase;->writeSnapshot_native(JLjava/io/FileDescriptor;)I

    .line 109
    return-void
.end method
