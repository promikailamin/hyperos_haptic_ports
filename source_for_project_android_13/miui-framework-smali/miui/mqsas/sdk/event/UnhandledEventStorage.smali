.class public Lmiui/mqsas/sdk/event/UnhandledEventStorage;
.super Ljava/lang/Object;
.source "UnhandledEventStorage.java"


# static fields
.field private static final blacklist DUMP_DIR:Ljava/lang/String; = "/data/miuilog/stability/unhandledevent"

.field private static final blacklist MAX_EVENT_SIZE:I = 0x5

.field private static final blacklist TAG:Ljava/lang/String; = "UnhandledEventStorage"

.field private static final blacklist TMP_SUFFIX:Ljava/lang/String; = ".tmp"

.field private static final blacklist UNHANDLED_JE_EVENT_SUFFIX:Ljava/lang/String; = "_je.bin"

.field private static final blacklist UNHANDLED_JWDT_EVENT_SUFFIX:Ljava/lang/String; = "_jdwt.bin"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private static blacklist calculateMD5([B)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # [B

    .line 230
    const/4 v0, 0x0

    .line 232
    .local v0, "md5sum":[B
    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 233
    .local v1, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 234
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_e} :catch_10

    move-object v0, v2

    .line 237
    .end local v1    # "digest":Ljava/security/MessageDigest;
    goto :goto_29

    .line 235
    :catch_10
    move-exception v1

    .line 236
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateMD5 NoSuchAlgorithmException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnhandledEventStorage"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_29
    invoke-static {v0}, Lmiui/mqsas/sdk/event/UnhandledEventStorage;->convertToHexString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist clearTooOldEvents()V
    .registers 5

    .line 103
    const-string v0, "UnhandledEventStorage"

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/miuilog/stability/unhandledevent"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lmiui/mqsas/sdk/event/UnhandledEventStorage$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lmiui/mqsas/sdk/event/UnhandledEventStorage$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 116
    .local v1, "fileList":[Ljava/io/File;
    if-eqz v1, :cond_7f

    array-length v2, v1

    const/4 v3, 0x5

    if-ge v2, v3, :cond_19

    goto :goto_7f

    .line 120
    :cond_19
    :try_start_19
    new-instance v2, Lmiui/mqsas/sdk/event/UnhandledEventStorage$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lmiui/mqsas/sdk/event/UnhandledEventStorage$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_21} :catch_22

    .line 123
    goto :goto_39

    .line 121
    :catch_22
    move-exception v2

    .line 122
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Compare file failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_39
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_3c
    const/4 v3, 0x4

    if-lt v2, v3, :cond_7e

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing historical event, file="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_7b

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_7b
    add-int/lit8 v2, v2, -0x1

    goto :goto_3c

    .line 130
    .end local v2    # "i":I
    :cond_7e
    return-void

    .line 117
    :cond_7f
    :goto_7f
    return-void
.end method

.method private static blacklist convertToHexString([B)Ljava/lang/String;
    .registers 6
    .param p0, "data"    # [B

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_17

    aget-byte v3, p0, v2

    .line 244
    .local v3, "num":B
    and-int/lit16 v4, v3, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .end local v3    # "num":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 246
    :cond_17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist ensureDumpDir(Ljava/lang/String;)Z
    .registers 7
    .param p0, "path"    # Ljava/lang/String;

    .line 168
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "UnhandledEventStorage"

    if-nez v1, :cond_2b

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to mkdir "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return v2

    .line 173
    :cond_2b
    const/16 v1, 0x1ed

    const/4 v4, -0x1

    invoke-static {v0, v1, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    move-result v1

    .line 174
    .local v1, "errno":I
    if-eqz v1, :cond_55

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to update dir perms: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", errno="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return v2

    .line 178
    :cond_55
    const/4 v2, 0x1

    return v2
.end method

.method private static blacklist getEventFromFile(Ljava/io/File;Landroid/os/Parcel;)Lmiui/mqsas/sdk/event/ExceptionEvent;
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "in"    # Landroid/os/Parcel;

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "event":Lmiui/mqsas/sdk/event/ExceptionEvent;
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_je.bin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 158
    sget-object v1, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lmiui/mqsas/sdk/event/ExceptionEvent;

    goto :goto_49

    .line 159
    :cond_17
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_jdwt.bin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 160
    sget-object v1, Lmiui/mqsas/sdk/event/WatchdogEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lmiui/mqsas/sdk/event/ExceptionEvent;

    goto :goto_49

    .line 162
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported file type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnhandledEventStorage"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_49
    return-object v0
.end method

.method private static blacklist getFileFromEvent(Lmiui/mqsas/sdk/event/ExceptionEvent;)Ljava/io/File;
    .registers 7
    .param p0, "event"    # Lmiui/mqsas/sdk/event/ExceptionEvent;

    .line 90
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;->getType()I

    move-result v0

    const-string v1, "/data/miuilog/stability/unhandledevent"

    const-string v2, "_"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3e

    .line 91
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;->getMd5sum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 92
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_je.bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-object v0

    .line 94
    :cond_3e
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;->getType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_78

    .line 95
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;->getMd5sum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 96
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_jdwt.bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-object v0

    .line 98
    :cond_78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported event type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnhandledEventStorage"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized blacklist getUnhandledEvents(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 8
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lmiui/mqsas/sdk/event/ExceptionEvent;",
            ">;"
        }
    .end annotation

    const-class v0, Lmiui/mqsas/sdk/event/UnhandledEventStorage;

    monitor-enter v0

    .line 36
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v1, "eventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/mqsas/sdk/event/ExceptionEvent;>;"
    invoke-static {p0}, Lmiui/mqsas/sdk/event/UnhandledEventStorage;->listFiles(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v2

    .line 38
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_2e

    array-length v3, v2

    if-nez v3, :cond_12

    goto :goto_2e

    .line 41
    :cond_12
    array-length v3, v2

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v3, :cond_24

    aget-object v5, v2, v4

    .line 42
    .local v5, "file":Ljava/io/File;
    invoke-static {v5}, Lmiui/mqsas/sdk/event/UnhandledEventStorage;->readEvent(Ljava/io/File;)Lmiui/mqsas/sdk/event/ExceptionEvent;

    move-result-object v6

    .line 43
    .local v6, "event":Lmiui/mqsas/sdk/event/ExceptionEvent;
    if-eqz v6, :cond_21

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "event":Lmiui/mqsas/sdk/event/ExceptionEvent;
    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 45
    :cond_24
    new-instance v3, Lmiui/mqsas/sdk/event/UnhandledEventStorage$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lmiui/mqsas/sdk/event/UnhandledEventStorage$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_30

    .line 46
    monitor-exit v0

    return-object v1

    .line 39
    :cond_2e
    :goto_2e
    monitor-exit v0

    return-object v1

    .line 35
    .end local v1    # "eventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/mqsas/sdk/event/ExceptionEvent;>;"
    .end local v2    # "files":[Ljava/io/File;
    .end local p0    # "ctx":Landroid/content/Context;
    :catchall_30
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic blacklist lambda$clearTooOldEvents$1(Ljava/io/File;)Z
    .registers 4
    .param p0, "pathname"    # Ljava/io/File;

    .line 104
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "name":Ljava/lang/String;
    const-string v1, "_je.bin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 106
    const-string v1, "_jdwt.bin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_3d

    .line 109
    :cond_15
    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 110
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnhandledEventStorage"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_3b
    const/4 v1, 0x0

    return v1

    .line 107
    :cond_3d
    :goto_3d
    const/4 v1, 0x1

    return v1
.end method

.method static synthetic blacklist lambda$clearTooOldEvents$2(Ljava/io/File;Ljava/io/File;)I
    .registers 6
    .param p0, "o1"    # Ljava/io/File;
    .param p1, "o2"    # Ljava/io/File;

    .line 120
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static synthetic blacklist lambda$getUnhandledEvents$0(Lmiui/mqsas/sdk/event/ExceptionEvent;Lmiui/mqsas/sdk/event/ExceptionEvent;)I
    .registers 6
    .param p0, "o1"    # Lmiui/mqsas/sdk/event/ExceptionEvent;
    .param p1, "o2"    # Lmiui/mqsas/sdk/event/ExceptionEvent;

    .line 45
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;->getTimeStamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lmiui/mqsas/sdk/event/ExceptionEvent;->getTimeStamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static synthetic blacklist lambda$listFiles$3(Ljava/io/File;)Z
    .registers 3
    .param p0, "pathname"    # Ljava/io/File;

    .line 206
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "name":Ljava/lang/String;
    const-string v1, "_je.bin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 208
    const-string v1, "_jdwt.bin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_17

    .line 211
    :cond_15
    const/4 v1, 0x0

    return v1

    .line 209
    :cond_17
    :goto_17
    const/4 v1, 0x1

    return v1
.end method

.method private static blacklist listFiles(Landroid/content/Context;)[Ljava/io/File;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .line 205
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miuilog/stability/unhandledevent"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lmiui/mqsas/sdk/event/UnhandledEventStorage$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lmiui/mqsas/sdk/event/UnhandledEventStorage$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 213
    .local v0, "fileList":[Ljava/io/File;
    const/4 v1, 0x0

    if-eqz v0, :cond_51

    array-length v2, v0

    if-nez v2, :cond_17

    goto :goto_51

    .line 216
    :cond_17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 217
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 218
    const-string v3, "UnhandledEventStorage"

    const-string v4, "First boot or OTA, remove all unhandled events"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    array-length v4, v0

    move v5, v1

    :goto_2a
    if-ge v5, v4, :cond_4d

    aget-object v6, v0, v5

    .line 220
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_4a

    .line 221
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to remove "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .end local v6    # "file":Ljava/io/File;
    :cond_4a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 224
    :cond_4d
    new-array v1, v1, [Ljava/io/File;

    return-object v1

    .line 226
    :cond_50
    return-object v0

    .line 214
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_51
    :goto_51
    new-array v1, v1, [Ljava/io/File;

    return-object v1
.end method

.method private static blacklist readEvent(Ljava/io/File;)Lmiui/mqsas/sdk/event/ExceptionEvent;
    .registers 7
    .param p0, "file"    # Ljava/io/File;

    .line 133
    invoke-static {p0}, Lmiui/mqsas/sdk/event/UnhandledEventStorage;->readFromFile(Ljava/io/File;)[B

    move-result-object v0

    .line 134
    .local v0, "data":[B
    const-string v1, "UnhandledEventStorage"

    const/4 v2, 0x0

    if-eqz v0, :cond_50

    array-length v3, v0

    if-nez v3, :cond_d

    goto :goto_50

    .line 138
    :cond_d
    invoke-static {v0}, Lmiui/mqsas/sdk/event/UnhandledEventStorage;->calculateMD5([B)Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "md5sum":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "md5sum from byte array is not consistent with file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-object v2

    .line 143
    :cond_36
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 144
    .local v1, "in":Landroid/os/Parcel;
    array-length v4, v0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 145
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 146
    invoke-static {p0, v1}, Lmiui/mqsas/sdk/event/UnhandledEventStorage;->getEventFromFile(Ljava/io/File;Landroid/os/Parcel;)Lmiui/mqsas/sdk/event/ExceptionEvent;

    move-result-object v4

    .line 147
    .local v4, "event":Lmiui/mqsas/sdk/event/ExceptionEvent;
    if-nez v4, :cond_49

    .line 148
    return-object v2

    .line 150
    :cond_49
    invoke-virtual {v4, v3}, Lmiui/mqsas/sdk/event/ExceptionEvent;->setMd5sum(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 152
    return-object v4

    .line 135
    .end local v1    # "in":Landroid/os/Parcel;
    .end local v3    # "md5sum":Ljava/lang/String;
    .end local v4    # "event":Lmiui/mqsas/sdk/event/ExceptionEvent;
    :cond_50
    :goto_50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not exist or empty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-object v2
.end method

.method private static blacklist readFromFile(Ljava/io/File;)[B
    .registers 4
    .param p0, "file"    # Ljava/io/File;

    .line 197
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 198
    :catch_9
    move-exception v0

    .line 199
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnhandledEventStorage"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .end local v0    # "e":Ljava/io/IOException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized blacklist removeEvent(Lmiui/mqsas/sdk/event/ExceptionEvent;)V
    .registers 6
    .param p0, "e"    # Lmiui/mqsas/sdk/event/ExceptionEvent;

    const-class v0, Lmiui/mqsas/sdk/event/UnhandledEventStorage;

    monitor-enter v0

    .line 83
    :try_start_3
    invoke-static {p0}, Lmiui/mqsas/sdk/event/UnhandledEventStorage;->getFileFromEvent(Lmiui/mqsas/sdk/event/ExceptionEvent;)Ljava/io/File;

    move-result-object v1

    .line 84
    .local v1, "delFile":Ljava/io/File;
    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 85
    const-string v2, "UnhandledEventStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2f

    .line 87
    :cond_2d
    monitor-exit v0

    return-void

    .line 82
    .end local v1    # "delFile":Ljava/io/File;
    .end local p0    # "e":Lmiui/mqsas/sdk/event/ExceptionEvent;
    :catchall_2f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized blacklist writeEvent(Lmiui/mqsas/sdk/event/ExceptionEvent;)V
    .registers 6
    .param p0, "event"    # Lmiui/mqsas/sdk/event/ExceptionEvent;

    const-class v0, Lmiui/mqsas/sdk/event/UnhandledEventStorage;

    monitor-enter v0

    .line 50
    :try_start_3
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "/data/miuilog/stability/unhandledevent"

    invoke-static {v1}, Lmiui/mqsas/sdk/event/UnhandledEventStorage;->ensureDumpDir(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_37

    .line 54
    :cond_12
    invoke-static {}, Lmiui/mqsas/sdk/event/UnhandledEventStorage;->clearTooOldEvents()V

    .line 55
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 56
    .local v1, "out":Landroid/os/Parcel;
    invoke-static {p0, v1}, Lmiui/mqsas/sdk/event/UnhandledEventStorage;->writeEventToParcel(Lmiui/mqsas/sdk/event/ExceptionEvent;Landroid/os/Parcel;)V

    .line 57
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 58
    .local v2, "data":[B
    invoke-static {v2}, Lmiui/mqsas/sdk/event/UnhandledEventStorage;->calculateMD5([B)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "md5sum":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lmiui/mqsas/sdk/event/ExceptionEvent;->setMd5sum(Ljava/lang/String;)V

    .line 60
    invoke-static {p0}, Lmiui/mqsas/sdk/event/UnhandledEventStorage;->getFileFromEvent(Lmiui/mqsas/sdk/event/ExceptionEvent;)Ljava/io/File;

    move-result-object v4
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_39

    .line 61
    .local v4, "outFile":Ljava/io/File;
    if-nez v4, :cond_2f

    .line 62
    monitor-exit v0

    return-void

    .line 64
    :cond_2f
    :try_start_2f
    invoke-static {v2, v4}, Lmiui/mqsas/sdk/event/UnhandledEventStorage;->writeToFile([BLjava/io/File;)V

    .line 65
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_39

    .line 66
    monitor-exit v0

    return-void

    .line 51
    .end local v1    # "out":Landroid/os/Parcel;
    .end local v2    # "data":[B
    .end local v3    # "md5sum":Ljava/lang/String;
    .end local v4    # "outFile":Ljava/io/File;
    :cond_37
    :goto_37
    monitor-exit v0

    return-void

    .line 49
    .end local p0    # "event":Lmiui/mqsas/sdk/event/ExceptionEvent;
    :catchall_39
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static blacklist writeEventToParcel(Lmiui/mqsas/sdk/event/ExceptionEvent;Landroid/os/Parcel;)V
    .registers 5
    .param p0, "event"    # Lmiui/mqsas/sdk/event/ExceptionEvent;
    .param p1, "out"    # Landroid/os/Parcel;

    .line 69
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 70
    move-object v0, p0

    check-cast v0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    .line 71
    .local v0, "jeEvent":Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    invoke-virtual {v0, p1, v1}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 72
    return-void

    .line 74
    .end local v0    # "jeEvent":Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    :cond_e
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1c

    .line 75
    move-object v0, p0

    check-cast v0, Lmiui/mqsas/sdk/event/WatchdogEvent;

    .line 76
    .local v0, "jwdtEvent":Lmiui/mqsas/sdk/event/WatchdogEvent;
    invoke-virtual {v0, p1, v1}, Lmiui/mqsas/sdk/event/WatchdogEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 77
    return-void

    .line 79
    .end local v0    # "jwdtEvent":Lmiui/mqsas/sdk/event/WatchdogEvent;
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable writeToParcel with event type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnhandledEventStorage"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method private static blacklist writeToFile([BLjava/io/File;)V
    .registers 7
    .param p0, "data"    # [B
    .param p1, "outFile"    # Ljava/io/File;

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    .local v1, "tmpFile":Ljava/io/File;
    :try_start_1c
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_40

    .line 185
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    :try_start_22
    array-length v4, p0

    invoke-virtual {v2, p0, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 186
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 187
    invoke-virtual {v1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 188
    const/16 v3, 0x1ed

    const/4 v4, -0x1

    invoke-static {p1, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_36

    .line 189
    :try_start_32
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_40

    .line 192
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_66

    .line 184
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_36
    move-exception v3

    :try_start_37
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_3f

    :catchall_3b
    move-exception v4

    :try_start_3c
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "tmpFile":Ljava/io/File;
    .end local p0    # "data":[B
    .end local p1    # "outFile":Ljava/io/File;
    :goto_3f
    throw v3
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_40} :catch_40

    .line 189
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "path":Ljava/lang/String;
    .restart local v1    # "tmpFile":Ljava/io/File;
    .restart local p0    # "data":[B
    .restart local p1    # "outFile":Ljava/io/File;
    :catch_40
    move-exception v2

    .line 190
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to write to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UnhandledEventStorage"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 193
    .end local v2    # "e":Ljava/io/IOException;
    :goto_66
    return-void
.end method
