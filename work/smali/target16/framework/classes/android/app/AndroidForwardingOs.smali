.class Landroid/app/AndroidForwardingOs;
.super Llibcore/io/ForwardingOs;
.source "AndroidForwardingOs.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AndroidForwardingOs"


# direct methods
.method private constructor blacklist <init>(Llibcore/io/Os;)V
    .registers 2

    .line 65
    invoke-direct {p0, p1}, Llibcore/io/ForwardingOs;-><init>(Llibcore/io/Os;)V

    .line 66
    return-void
.end method

.method private blacklist deleteDeprecatedDataPath(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 87
    invoke-static {p1}, Landroid/content/ContentResolver;->translateDeprecatedDataPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AndroidForwardingOs"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 93
    const/4 v1, 0x0

    :try_start_33
    invoke-virtual {p1, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3b

    .line 100
    nop

    .line 101
    return-void

    .line 94
    :cond_3b
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
    :try_end_41
    .catch Ljava/lang/SecurityException; {:try_start_33 .. :try_end_41} :catch_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_41} :catch_41

    .line 98
    :catch_41
    move-exception p1

    .line 99
    new-instance v0, Landroid/system/ErrnoException;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget v1, Landroid/system/OsConstants;->ENOENT:I

    invoke-direct {v0, p1, v1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 96
    :catch_4e
    move-exception p1

    .line 97
    new-instance v0, Landroid/system/ErrnoException;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget v1, Landroid/system/OsConstants;->EACCES:I

    invoke-direct {v0, p1, v1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static blacklist install()V
    .registers 2

    .line 60
    nop

    :cond_1
    invoke-static {}, Llibcore/io/Os;->getDefault()Llibcore/io/Os;

    move-result-object v0

    .line 61
    new-instance v1, Landroid/app/AndroidForwardingOs;

    invoke-direct {v1, v0}, Landroid/app/AndroidForwardingOs;-><init>(Llibcore/io/Os;)V

    invoke-static {v0, v1}, Llibcore/io/Os;->compareAndSetDefault(Llibcore/io/Os;Llibcore/io/Os;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    return-void
.end method

.method private blacklist openDeprecatedDataPath(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 69
    invoke-static {p1}, Landroid/content/ContentResolver;->translateDeprecatedDataPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AndroidForwardingOs"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 75
    :try_start_32
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 76
    nop

    .line 77
    invoke-static {p2}, Landroid/os/FileUtils;->translateModePosixToString(I)Ljava/lang/String;

    move-result-object p2

    .line 76
    invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p1

    .line 76
    invoke-virtual {v1, p1}, Ljava/io/FileDescriptor;->setInt$(I)V
    :try_end_47
    .catch Ljava/lang/SecurityException; {:try_start_32 .. :try_end_47} :catch_55
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_47} :catch_48

    .line 78
    return-object v1

    .line 81
    :catch_48
    move-exception p1

    .line 82
    new-instance p2, Landroid/system/ErrnoException;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget v0, Landroid/system/OsConstants;->ENOENT:I

    invoke-direct {p2, p1, v0}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 79
    :catch_55
    move-exception p1

    .line 80
    new-instance p2, Landroid/system/ErrnoException;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget v0, Landroid/system/OsConstants;->EACCES:I

    invoke-direct {p2, p1, v0}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw p2
.end method


# virtual methods
.method public blacklist test-api access(Ljava/lang/String;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 105
    if-eqz p1, :cond_18

    const-string v0, "/mnt/content/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 107
    nop

    .line 108
    invoke-static {p2}, Landroid/os/FileUtils;->translateModeAccessToPosix(I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/app/AndroidForwardingOs;->openDeprecatedDataPath(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object p1

    .line 107
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 109
    const/4 p1, 0x1

    return p1

    .line 111
    :cond_18
    invoke-super {p0, p1, p2}, Llibcore/io/ForwardingOs;->access(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public blacklist test-api open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 117
    if-eqz p1, :cond_f

    const-string v0, "/mnt/content/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 118
    invoke-direct {p0, p1, p3}, Landroid/app/AndroidForwardingOs;->openDeprecatedDataPath(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object p1

    return-object p1

    .line 120
    :cond_f
    invoke-super {p0, p1, p2, p3}, Llibcore/io/ForwardingOs;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public blacklist test-api remove(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 149
    if-eqz p1, :cond_e

    const-string v0, "/mnt/content/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 150
    invoke-direct {p0, p1}, Landroid/app/AndroidForwardingOs;->deleteDeprecatedDataPath(Ljava/lang/String;)V

    goto :goto_11

    .line 152
    :cond_e
    invoke-super {p0, p1}, Llibcore/io/ForwardingOs;->remove(Ljava/lang/String;)V

    .line 154
    :goto_11
    return-void
.end method

.method public blacklist test-api rename(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 159
    :try_start_0
    invoke-super {p0, p1, p2}, Llibcore/io/ForwardingOs;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_3} :catch_4

    .line 181
    goto :goto_59

    .line 160
    :catch_4
    move-exception v0

    .line 168
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EXDEV:I

    if-ne v1, v2, :cond_61

    const-string v1, "/storage/emulated"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 169
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recovering failed rename "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AndroidForwardingOs"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :try_start_3b
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/file/CopyOption;

    sget-object v3, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {p1, p2, v1}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_58} :catch_5a

    .line 177
    nop

    .line 182
    :goto_59
    return-void

    .line 174
    :catch_5a
    move-exception p1

    .line 175
    const-string p2, "Rename recovery failed "

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    throw v0

    .line 179
    :cond_61
    throw v0
.end method

.method public blacklist test-api stat(Ljava/lang/String;)Landroid/system/StructStat;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 126
    if-eqz p1, :cond_1d

    const-string v0, "/mnt/content/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 127
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    invoke-direct {p0, p1, v0}, Landroid/app/AndroidForwardingOs;->openDeprecatedDataPath(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object p1

    .line 129
    :try_start_10
    invoke-static {p1}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_18

    .line 131
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 129
    return-object v0

    .line 131
    :catchall_18
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 132
    throw v0

    .line 134
    :cond_1d
    invoke-super {p0, p1}, Llibcore/io/ForwardingOs;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object p1

    return-object p1
.end method

.method public blacklist test-api unlink(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 140
    if-eqz p1, :cond_e

    const-string v0, "/mnt/content/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 141
    invoke-direct {p0, p1}, Landroid/app/AndroidForwardingOs;->deleteDeprecatedDataPath(Ljava/lang/String;)V

    goto :goto_11

    .line 143
    :cond_e
    invoke-super {p0, p1}, Llibcore/io/ForwardingOs;->unlink(Ljava/lang/String;)V

    .line 145
    :goto_11
    return-void
.end method
