.class public Landroid/app/backup/BackupDataOutput;
.super Ljava/lang/Object;
.source "BackupDataOutput.java"


# instance fields
.field greylist-max-r mBackupWriter:J

.field private final greylist-max-o mQuota:J

.field private final greylist-max-o mTransportFlags:I


# direct methods
.method public constructor whitelist <init>(Ljava/io/FileDescriptor;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 81
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;JI)V

    .line 82
    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/FileDescriptor;J)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;JI)V

    .line 88
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/io/FileDescriptor;JI)V
    .registers 7

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    if-eqz p1, :cond_31

    .line 93
    iput-wide p2, p0, Landroid/app/backup/BackupDataOutput;->mQuota:J

    .line 94
    iput p4, p0, Landroid/app/backup/BackupDataOutput;->mTransportFlags:I

    .line 95
    invoke-static {p1}, Landroid/app/backup/BackupDataOutput;->ctor(Ljava/io/FileDescriptor;)J

    move-result-wide p2

    iput-wide p2, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    .line 96
    iget-wide p2, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_18

    .line 99
    return-void

    .line 97
    :cond_18
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Native initialization failed with fd="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 92
    :cond_31
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private static native greylist-max-o ctor(Ljava/io/FileDescriptor;)J
.end method

.method private static native greylist-max-o dtor(J)V
.end method

.method private static native greylist-max-o setKeyPrefix_native(JLjava/lang/String;)V
.end method

.method private static native greylist-max-o writeEntityData_native(J[BI)I
.end method

.method private static native greylist-max-o writeEntityHeader_native(JLjava/lang/String;I)I
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 165
    :try_start_0
    iget-wide v0, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    invoke-static {v0, v1}, Landroid/app/backup/BackupDataOutput;->dtor(J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_a

    .line 167
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 168
    nop

    .line 169
    return-void

    .line 167
    :catchall_a
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 168
    throw v0
.end method

.method public whitelist getQuota()J
    .registers 3

    .line 108
    iget-wide v0, p0, Landroid/app/backup/BackupDataOutput;->mQuota:J

    return-wide v0
.end method

.method public whitelist getTransportFlags()I
    .registers 2

    .line 118
    iget v0, p0, Landroid/app/backup/BackupDataOutput;->mTransportFlags:I

    return v0
.end method

.method public greylist-max-o setKeyPrefix(Ljava/lang/String;)V
    .registers 4

    .line 158
    iget-wide v0, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    invoke-static {v0, v1, p1}, Landroid/app/backup/BackupDataOutput;->setKeyPrefix_native(JLjava/lang/String;)V

    .line 159
    return-void
.end method

.method public whitelist writeEntityData([BI)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget-wide v0, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    invoke-static {v0, v1, p1, p2}, Landroid/app/backup/BackupDataOutput;->writeEntityData_native(J[BI)I

    move-result p1

    .line 149
    if-ltz p1, :cond_9

    .line 150
    return p1

    .line 152
    :cond_9
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "result=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist writeEntityHeader(Ljava/lang/String;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-wide v0, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    invoke-static {v0, v1, p1, p2}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader_native(JLjava/lang/String;I)I

    move-result p1

    .line 133
    if-ltz p1, :cond_9

    .line 134
    return p1

    .line 136
    :cond_9
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "result=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
