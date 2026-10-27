.class public Landroid/drm/DrmUtils;
.super Ljava/lang/Object;
.source "DrmUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/DrmUtils$ExtendedMetadataParser;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getExtendedMetadataParser([B)Landroid/drm/DrmUtils$ExtendedMetadataParser;
    .registers 3

    .line 103
    new-instance v0, Landroid/drm/DrmUtils$ExtendedMetadataParser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/drm/DrmUtils$ExtendedMetadataParser;-><init>([BLandroid/drm/DrmUtils-IA;)V

    return-object v0
.end method

.method private static greylist-max-o quietlyDispose(Ljava/io/Closeable;)V
    .registers 1

    .line 87
    if-eqz p0, :cond_8

    .line 88
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_8

    .line 90
    :catch_6
    move-exception p0

    goto :goto_9

    .line 92
    :cond_8
    :goto_8
    nop

    .line 93
    :goto_9
    return-void
.end method

.method static greylist-max-o readBytes(Ljava/io/File;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 49
    new-instance p0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 50
    nop

    .line 53
    :try_start_b
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->available()I

    move-result v1

    .line 54
    if-lez v1, :cond_17

    .line 55
    new-array v1, v1, [B

    .line 57
    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_20

    goto :goto_18

    .line 54
    :cond_17
    const/4 v1, 0x0

    .line 60
    :goto_18
    invoke-static {p0}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/Closeable;)V

    .line 61
    invoke-static {v0}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/Closeable;)V

    .line 62
    nop

    .line 63
    return-object v1

    .line 60
    :catchall_20
    move-exception v1

    invoke-static {p0}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/Closeable;)V

    .line 61
    invoke-static {v0}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/Closeable;)V

    .line 62
    throw v1
.end method

.method static greylist-max-o readBytes(Ljava/lang/String;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-static {v0}, Landroid/drm/DrmUtils;->readBytes(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method static greylist-max-o removeFile(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 83
    return-void
.end method

.method static greylist-max-o writeToFile(Ljava/lang/String;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    nop

    .line 70
    if-eqz p0, :cond_1a

    if-eqz p1, :cond_1a

    .line 72
    const/4 v0, 0x0

    :try_start_6
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_15

    .line 73
    :try_start_b
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_12

    .line 75
    invoke-static {v1}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/Closeable;)V

    .line 76
    goto :goto_1a

    .line 75
    :catchall_12
    move-exception p0

    move-object v0, v1

    goto :goto_16

    :catchall_15
    move-exception p0

    :goto_16
    invoke-static {v0}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/Closeable;)V

    .line 76
    throw p0

    .line 78
    :cond_1a
    :goto_1a
    return-void
.end method
