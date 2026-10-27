.class public Landroid/media/MediaScannerInjector;
.super Ljava/lang/Object;
.source "MediaScannerInjector.java"


# static fields
.field private static final blacklist MEDIA_META_APPROXIMATION:I = 0x400000

.field private static final blacklist MSG_PROCESSFILE_TIMEOUT:I = 0x1

.field private static final blacklist NOMEDIA_PATH_WHITE_LIST:[Ljava/lang/String;

.field private static final blacklist PROCESSFILE_TIMEOUT:I = 0xea60

.field private static final blacklist SECURITY_CENTER:Ljava/lang/String; = "com.miui.securitycenter"

.field private static final blacklist TAG:Ljava/lang/String; = "MediaScannerInjector"

.field private static blacklist mNoMediaWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sContext:Landroid/content/Context;

.field private static blacklist sHandler:Landroid/os/Handler;

.field private static blacklist sHandlerThread:Landroid/os/HandlerThread;

.field private static blacklist sProcessName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Landroid/media/MediaScannerInjector;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsProcessName()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/media/MediaScannerInjector;->sProcessName:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsHandler(Landroid/os/Handler;)V
    .registers 1

    sput-object p0, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 12

    .line 28
    const-string v0, ""

    const-string v1, "/Alarms"

    const-string v2, "/DCIM"

    const-string v3, "/DCIM/Camera"

    const-string v4, "/DCIM/Screenshots"

    const-string v5, "/Download"

    const-string v6, "/Movies"

    const-string v7, "/Music"

    const-string v8, "/Pictures"

    const-string v9, "/Podcasts"

    const-string v10, "/Ringtones"

    const-string v11, "/Notifications"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScannerInjector;->NOMEDIA_PATH_WHITE_LIST:[Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist copyFile(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dst"    # Ljava/lang/String;
    .param p2, "length"    # I

    .line 121
    const-string v0, "IOException"

    const-string v1, "MediaScannerInjector"

    const/4 v2, 0x0

    .line 122
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 125
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_6
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 126
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 128
    const/16 v4, 0xaa

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 131
    const/4 v4, 0x0

    .line 132
    .local v4, "size":I
    const/16 v5, 0x1000

    new-array v5, v5, [B

    .line 133
    .local v5, "b":[B
    :goto_1c
    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "bytesRead":I
    if-lez v6, :cond_32

    .line 134
    add-int/2addr v4, v7

    .line 135
    const/4 v6, 0x0

    if-lt v4, p2, :cond_2e

    .line 136
    sub-int v8, v4, p2

    sub-int/2addr v7, v8

    .line 137
    invoke-virtual {v3, v5, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 138
    goto :goto_32

    .line 140
    :cond_2e
    invoke-virtual {v3, v5, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_31} :catch_42
    .catchall {:try_start_6 .. :try_end_31} :catchall_40

    goto :goto_1c

    .line 146
    .end local v4    # "size":I
    .end local v5    # "b":[B
    .end local v7    # "bytesRead":I
    :cond_32
    :goto_32
    nop

    .line 147
    :try_start_33
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 149
    nop

    .line 150
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3a} :catch_3b

    .line 154
    :cond_3a
    :goto_3a
    goto :goto_53

    .line 152
    :catch_3b
    move-exception v4

    .line 153
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_53

    .line 145
    :catchall_40
    move-exception v4

    goto :goto_54

    .line 142
    :catch_42
    move-exception v4

    .line 143
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_43
    const-string v5, "IOException "

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_40

    .line 146
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_4d

    .line 147
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 149
    :cond_4d
    if-eqz v3, :cond_3a

    .line 150
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_52} :catch_3b

    goto :goto_3a

    .line 156
    :goto_53
    return-void

    .line 146
    :goto_54
    if-eqz v2, :cond_5c

    .line 147
    :try_start_56
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_5c

    .line 152
    :catch_5a
    move-exception v5

    goto :goto_62

    .line 149
    :cond_5c
    :goto_5c
    if-eqz v3, :cond_66

    .line 150
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_61} :catch_5a

    goto :goto_66

    .line 153
    .local v5, "e":Ljava/io/IOException;
    :goto_62
    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_67

    .line 154
    .end local v5    # "e":Ljava/io/IOException;
    :cond_66
    :goto_66
    nop

    .line 155
    :goto_67
    throw v4
.end method

.method public static blacklist forceRescanExternal(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 187
    .local v0, "mMediaProvider":Landroid/content/IContentProvider;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "externalStoragePath":Ljava/lang/String;
    return-void
.end method

.method public static blacklist getNoMediaWhiteList()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    sget-object v0, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;

    monitor-enter v0

    .line 180
    :try_start_3
    invoke-static {}, Landroid/media/MediaScannerInjector;->loadNoMediaWhiteListLocked()V

    .line 181
    sget-object v1, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;

    monitor-exit v0

    return-object v1

    .line 182
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static declared-synchronized blacklist initMediaFileCapture(Ljava/lang/String;)V
    .registers 4
    .param p0, "process"    # Ljava/lang/String;

    const-class v0, Landroid/media/MediaScannerInjector;

    monitor-enter v0

    .line 77
    :try_start_3
    sput-object p0, Landroid/media/MediaScannerInjector;->sProcessName:Ljava/lang/String;

    .line 78
    sget-object v1, Landroid/media/MediaScannerInjector;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_19

    sget-object v1, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_19

    .line 79
    new-instance v1, Landroid/media/MediaScannerInjector$1;

    const-string v2, "MediaScannerInjector"

    invoke-direct {v1, v2}, Landroid/media/MediaScannerInjector$1;-><init>(Ljava/lang/String;)V

    sput-object v1, Landroid/media/MediaScannerInjector;->sHandlerThread:Landroid/os/HandlerThread;

    .line 101
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    .line 103
    :cond_19
    monitor-exit v0

    return-void

    .line 76
    .end local p0    # "process":Ljava/lang/String;
    :catchall_1b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static blacklist isInNoMediaWhiteList(Ljava/lang/String;)Z
    .registers 5
    .param p0, "path"    # Ljava/lang/String;

    .line 171
    sget-object v0, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;

    monitor-enter v0

    .line 172
    :try_start_3
    invoke-static {}, Landroid/media/MediaScannerInjector;->loadNoMediaWhiteListLocked()V

    .line 173
    const-string v1, "MediaScannerInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInNoMediaWhiteList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-object v1, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 175
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method static blacklist keepMimeType(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "oldMimeType"    # Ljava/lang/String;
    .param p1, "newMimeType"    # Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_f

    .line 56
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_f

    :cond_d
    move v2, v0

    goto :goto_10

    :cond_f
    :goto_f
    move v2, v1

    .line 58
    .local v2, "newTypeIsAudio":Z
    :goto_10
    const-string v3, "video/mp2p"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    if-eqz v2, :cond_1b

    .line 60
    return v1

    .line 63
    :cond_1b
    const-string v3, "video/x-matroska"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    if-eqz v2, :cond_26

    .line 65
    return v1

    .line 67
    :cond_26
    const-string v3, "video/x-pn-realvideo"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    if-eqz p1, :cond_38

    .line 68
    const-string v3, "application/octet-stream"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 70
    :cond_38
    return v1

    .line 73
    :cond_39
    return v0
.end method

.method private static blacklist loadNoMediaWhiteListLocked()V
    .registers 8

    .line 159
    sget-object v0, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 160
    return-void

    .line 162
    :cond_9
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "externalStoragePath":Ljava/lang/String;
    sget-object v1, Landroid/media/MediaScannerInjector;->NOMEDIA_PATH_WHITE_LIST:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_50

    aget-object v4, v1, v3

    .line 164
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, "element":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "to white list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MediaScannerInjector"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget-object v6, Landroid/media/MediaScannerInjector;->mNoMediaWhiteList:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "element":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 168
    :cond_50
    return-void
.end method

.method public static blacklist processFileBegin(Ljava/lang/String;Landroid/content/Context;)V
    .registers 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "c"    # Landroid/content/Context;

    .line 106
    sget-object v0, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    .line 107
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 108
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 110
    .end local v0    # "msg":Landroid/os/Message;
    :cond_11
    sput-object p1, Landroid/media/MediaScannerInjector;->sContext:Landroid/content/Context;

    .line 111
    return-void
.end method

.method public static blacklist processFileEnd()V
    .registers 2

    .line 114
    sget-object v0, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    .line 115
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 117
    :cond_8
    const/4 v0, 0x0

    sput-object v0, Landroid/media/MediaScannerInjector;->sContext:Landroid/content/Context;

    .line 118
    return-void
.end method
