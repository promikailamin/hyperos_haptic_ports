.class public Lcom/android/server/backup/DataChangedJournal;
.super Ljava/lang/Object;
.source "DataChangedJournal.java"


# static fields
.field private static final BUFFER_SIZE_BYTES:I = 0x2000

.field private static final FILE_NAME_PREFIX:Ljava/lang/String; = "journal"

.field private static final TAG:Ljava/lang/String; = "DataChangedJournal"


# instance fields
.field private final mFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    .line 59
    return-void
.end method

.method static listJournals(Ljava/io/File;)Ljava/util/ArrayList;
    .registers 7
    .param p0, "journalDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backup/DataChangedJournal;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v0, "journals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/DataChangedJournal;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 154
    .local v1, "journalFiles":[Ljava/io/File;
    if-nez v1, :cond_13

    .line 155
    const-string v2, "DataChangedJournal"

    const-string v3, "Failed to read journal files"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-object v0

    .line 158
    :cond_13
    array-length v2, v1

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_24

    aget-object v4, v1, v3

    .line 159
    .local v4, "file":Ljava/io/File;
    new-instance v5, Lcom/android/server/backup/DataChangedJournal;

    invoke-direct {v5, v4}, Lcom/android/server/backup/DataChangedJournal;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .end local v4    # "file":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 161
    :cond_24
    return-object v0
.end method

.method static newJournal(Ljava/io/File;)Lcom/android/server/backup/DataChangedJournal;
    .registers 3
    .param p0, "journalDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string/jumbo v0, "journal"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 145
    .local v0, "file":Ljava/io/File;
    new-instance v1, Lcom/android/server/backup/DataChangedJournal;

    invoke-direct {v1, v0}, Lcom/android/server/backup/DataChangedJournal;-><init>(Ljava/io/File;)V

    return-object v1
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    const-string/jumbo v2, "rws"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    .local v0, "out":Ljava/io/RandomAccessFile;
    :try_start_a
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 71
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_18

    .line 72
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 73
    .end local v0    # "out":Ljava/io/RandomAccessFile;
    return-void

    .line 69
    .restart local v0    # "out":Ljava/io/RandomAccessFile;
    :catchall_18
    move-exception v1

    :try_start_19
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_21
    throw v1
.end method

.method public delete()Z
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 123
    instance-of v0, p1, Lcom/android/server/backup/DataChangedJournal;

    if-eqz v0, :cond_10

    .line 124
    move-object v0, p1

    check-cast v0, Lcom/android/server/backup/DataChangedJournal;

    .line 125
    .local v0, "that":Lcom/android/server/backup/DataChangedJournal;
    iget-object v1, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    iget-object v2, v0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 127
    .end local v0    # "that":Lcom/android/server/backup/DataChangedJournal;
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_7} :catch_39

    .line 84
    .local v0, "in":Ljava/io/InputStream;
    :try_start_7
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_2f

    .line 85
    .local v1, "bufferedIn":Ljava/io/InputStream;
    :try_start_e
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_25

    .line 88
    .local v2, "dataInputStream":Ljava/io/DataInputStream;
    :goto_13
    :try_start_13
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    .line 90
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_13

    .line 82
    :catchall_1b
    move-exception v3

    :try_start_1c
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v4

    :try_start_21
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "bufferedIn":Ljava/io/InputStream;
    .end local p0    # "this":Lcom/android/server/backup/DataChangedJournal;
    .end local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    :goto_24
    throw v3
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_25

    .end local v2    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local v1    # "bufferedIn":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/server/backup/DataChangedJournal;
    .restart local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    :catchall_25
    move-exception v2

    :try_start_26
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception v3

    :try_start_2b
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/InputStream;
    .end local p0    # "this":Lcom/android/server/backup/DataChangedJournal;
    .end local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    :goto_2e
    throw v2
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_2f

    .end local v1    # "bufferedIn":Ljava/io/InputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/server/backup/DataChangedJournal;
    .restart local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    :catchall_2f
    move-exception v1

    :try_start_30
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception v2

    :try_start_35
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/backup/DataChangedJournal;
    .end local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    :goto_38
    throw v1
    :try_end_39
    .catch Ljava/io/EOFException; {:try_start_35 .. :try_end_39} :catch_39

    .line 91
    .end local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/server/backup/DataChangedJournal;
    .restart local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    :catch_39
    move-exception v0

    .line 94
    return-void
.end method

.method public getPackages()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/backup/DataChangedJournal$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/backup/DataChangedJournal$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/android/server/backup/DataChangedJournal;->forEach(Ljava/util/function/Consumer;)V

    .line 104
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
