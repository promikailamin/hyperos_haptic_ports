.class public abstract Landroid/app/backup/BlobBackupHelper;
.super Landroid/app/backup/BackupHelperWithLogger;
.source "BlobBackupHelper.java"


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BlobBackupHelper"


# instance fields
.field private final greylist-max-o mCurrentBlobVersion:I

.field private final greylist-max-o mKeys:[Ljava/lang/String;


# direct methods
.method public varargs constructor blacklist <init>(I[Ljava/lang/String;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Landroid/app/backup/BackupHelperWithLogger;-><init>()V

    .line 50
    iput p1, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    .line 51
    iput-object p2, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method private greylist-max-o checksum([B)J
    .registers 6

    .line 219
    if-eqz p1, :cond_22

    .line 221
    :try_start_2
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 222
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 223
    const/16 p1, 0x1000

    new-array p1, p1, [B

    .line 224
    nop

    .line 225
    :goto_11
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_1c

    .line 226
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v2}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_11

    .line 228
    :cond_1c
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    return-wide v0

    .line 229
    :catch_21
    move-exception p1

    .line 233
    :cond_22
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private greylist-max-o deflate([B)[B
    .registers 5

    .line 161
    nop

    .line 162
    if-eqz p1, :cond_3f

    .line 164
    :try_start_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 165
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 168
    iget v2, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 170
    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 171
    invoke-virtual {v1, p1}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    .line 172
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 173
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_21} :catch_22

    .line 179
    goto :goto_40

    .line 177
    :catch_22
    move-exception p1

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to process payload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BlobBackupHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_3f
    const/4 p1, 0x0

    :goto_40
    return-object p1
.end method

.method private greylist-max-o inflate([B)[B
    .registers 8

    .line 186
    const-string v0, "BlobBackupHelper"

    .line 187
    const/4 v1, 0x0

    if-eqz p1, :cond_6d

    .line 189
    :try_start_5
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 190
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 191
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    .line 192
    iget v3, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    if-le p1, v3, :cond_2e

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saved payload from unrecognized version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-object v1

    .line 197
    :cond_2e
    new-instance p1, Ljava/util/zip/InflaterInputStream;

    invoke-direct {p1, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 198
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 199
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 201
    :goto_3c
    invoke-virtual {p1, v3}, Ljava/util/zip/InflaterInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_47

    .line 202
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3c

    .line 204
    :cond_47
    invoke-virtual {p1}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 205
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 206
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_51} :catch_52

    .line 213
    goto :goto_6d

    .line 210
    :catch_52
    move-exception p1

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to process restored payload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_6d
    :goto_6d
    return-object v1
.end method

.method private greylist-max-o readOldState(Landroid/os/ParcelFileDescriptor;)Landroid/util/ArrayMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 91
    const-string v0, "BlobBackupHelper"

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 93
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 94
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 97
    :try_start_15
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 98
    iget v3, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    if-gt v2, v3, :cond_37

    .line 99
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 103
    const/4 v3, 0x0

    :goto_22
    if-ge v3, v2, :cond_36

    .line 104
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    .line 109
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 111
    :cond_36
    goto :goto_71

    .line 112
    :cond_37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prior state from unrecognized version "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/io/EOFException; {:try_start_15 .. :try_end_4d} :catch_6d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_4d} :catch_4e

    goto :goto_71

    .line 121
    :catch_4e
    move-exception p1

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error examining prior backup state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    goto :goto_72

    .line 114
    :catch_6d
    move-exception p1

    .line 120
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 124
    :goto_71
    nop

    .line 126
    :goto_72
    return-object v1
.end method

.method private greylist-max-o writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/ParcelFileDescriptor;",
            ")V"
        }
    .end annotation

    .line 134
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 139
    new-instance p2, Ljava/io/DataOutputStream;

    invoke-direct {p2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 141
    iget v0, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 143
    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    goto :goto_1c

    :cond_1b
    move v1, v0

    .line 144
    :goto_1c
    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 145
    nop

    :goto_20
    if-ge v0, v1, :cond_3b

    .line 146
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 147
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 151
    invoke-virtual {p2, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_38} :catch_3c

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 156
    :cond_3b
    goto :goto_44

    .line 154
    :catch_3c
    move-exception p1

    .line 155
    const-string p2, "BlobBackupHelper"

    const-string v0, "Unable to write updated state"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    :goto_44
    return-void
.end method


# virtual methods
.method protected abstract greylist-max-o applyRestoredPayload(Ljava/lang/String;[B)V
.end method

.method protected abstract greylist-max-o getBackupPayload(Ljava/lang/String;)[B
.end method

.method public whitelist performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 14

    .line 245
    invoke-direct {p0, p1}, Landroid/app/backup/BlobBackupHelper;->readOldState(Landroid/os/ParcelFileDescriptor;)Landroid/util/ArrayMap;

    move-result-object p1

    .line 246
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 249
    :try_start_9
    iget-object v1, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_46

    aget-object v4, v1, v3

    .line 250
    invoke-virtual {p0, v4}, Landroid/app/backup/BlobBackupHelper;->getBackupPayload(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/app/backup/BlobBackupHelper;->deflate([B)[B

    move-result-object v5

    .line 251
    invoke-direct {p0, v5}, Landroid/app/backup/BlobBackupHelper;->checksum([B)J

    move-result-wide v6

    .line 255
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 258
    if-eqz v8, :cond_34

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_43

    .line 263
    :cond_34
    if-eqz v5, :cond_3f

    .line 264
    array-length v6, v5

    invoke-virtual {p2, v4, v6}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 265
    array-length v4, v5

    invoke-virtual {p2, v5, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    goto :goto_43

    .line 268
    :cond_3f
    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_43} :catch_4c
    .catchall {:try_start_9 .. :try_end_43} :catchall_4a

    .line 249
    :cond_43
    :goto_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 281
    :cond_46
    :goto_46
    invoke-direct {p0, v0, p3}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    .line 282
    goto :goto_6d

    .line 281
    :catchall_4a
    move-exception p1

    goto :goto_6e

    .line 276
    :catch_4c
    move-exception p1

    .line 277
    :try_start_4d
    const-string p2, "BlobBackupHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to record notification state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V
    :try_end_6c
    .catchall {:try_start_4d .. :try_end_6c} :catchall_4a

    goto :goto_46

    .line 283
    :goto_6d
    return-void

    .line 281
    :goto_6e
    invoke-direct {p0, v0, p3}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    .line 282
    throw p1
.end method

.method public whitelist restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .registers 6

    .line 287
    const-string v0, "BlobBackupHelper"

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 291
    const/4 v2, 0x0

    :goto_7
    :try_start_7
    iget-object v3, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1a

    .line 292
    iget-object v3, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 293
    goto :goto_1a

    .line 291
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 296
    :cond_1a
    :goto_1a
    iget-object v3, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_3c

    .line 297
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized key "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", ignoring"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void

    .line 301
    :cond_3c
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    move-result v2

    new-array v2, v2, [B

    .line 302
    invoke-virtual {p1, v2}, Landroid/app/backup/BackupDataInputStream;->read([B)I

    .line 303
    invoke-direct {p0, v2}, Landroid/app/backup/BlobBackupHelper;->inflate([B)[B

    move-result-object p1

    .line 304
    invoke-virtual {p0, v1, p1}, Landroid/app/backup/BlobBackupHelper;->applyRestoredPayload(Ljava/lang/String;[B)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4c} :catch_4d

    .line 307
    goto :goto_72

    .line 305
    :catch_4d
    move-exception p1

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception restoring entity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_72
    return-void
.end method

.method public whitelist writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    .line 316
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    .line 317
    return-void
.end method
