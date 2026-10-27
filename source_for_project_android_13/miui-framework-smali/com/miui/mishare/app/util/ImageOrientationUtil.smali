.class public Lcom/miui/mishare/app/util/ImageOrientationUtil;
.super Ljava/lang/Object;
.source "ImageOrientationUtil.java"


# static fields
.field private static final blacklist SCHEME_CONTENT:Ljava/lang/String; = "content"

.field private static final blacklist SCHEME_FILE:Ljava/lang/String; = "file"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist closeSilently(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "c"    # Ljava/io/Closeable;

    .line 24
    if-nez p0, :cond_3

    return-void

    .line 26
    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    .line 29
    goto :goto_8

    .line 27
    :catchall_7
    move-exception v0

    .line 30
    :goto_8
    return-void
.end method

.method public static blacklist getExifRotation(Ljava/io/File;)I
    .registers 4
    .param p0, "imageFile"    # Ljava/io/File;

    .line 33
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 35
    :cond_4
    :try_start_4
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 37
    .local v1, "exif":Landroid/media/ExifInterface;
    const-string v2, "Orientation"

    invoke-virtual {v1, v2, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_13} :catch_20

    sparse-switch v2, :sswitch_data_22

    .line 45
    return v0

    .line 43
    :sswitch_17
    const/16 v0, 0x10e

    return v0

    .line 39
    :sswitch_1a
    const/16 v0, 0x5a

    return v0

    .line 41
    :sswitch_1d
    const/16 v0, 0xb4

    return v0

    .line 47
    .end local v1    # "exif":Landroid/media/ExifInterface;
    :catch_20
    move-exception v1

    .line 48
    .local v1, "e":Ljava/io/IOException;
    return v0

    :sswitch_data_22
    .sparse-switch
        0x3 -> :sswitch_1d
        0x6 -> :sswitch_1a
        0x8 -> :sswitch_17
    .end sparse-switch
.end method

.method public static blacklist getFromMediaUri(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 53
    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    .line 55
    :cond_4
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 56
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 57
    :cond_1a
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 58
    const-string v1, "_data"

    const-string v2, "_display_name"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "filePathColumn":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 61
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    :try_start_34
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v9, v3

    .line 62
    if-eqz v9, :cond_6f

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 63
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content://com.google.android.gallery3d"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 64
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    goto :goto_56

    .line 65
    :cond_52
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    :goto_56
    nop

    .line 67
    .local v1, "columnIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_6f

    .line 68
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "filePath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6f

    .line 70
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_69} :catch_7b
    .catch Ljava/lang/SecurityException; {:try_start_34 .. :try_end_69} :catch_74
    .catchall {:try_start_34 .. :try_end_69} :catchall_72

    .line 80
    if-eqz v9, :cond_6e

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 70
    :cond_6e
    return-object v3

    .line 80
    .end local v1    # "columnIndex":I
    .end local v2    # "filePath":Ljava/lang/String;
    :cond_6f
    if-eqz v9, :cond_8c

    goto :goto_77

    :catchall_72
    move-exception v0

    goto :goto_86

    .line 77
    :catch_74
    move-exception v1

    .line 80
    if-eqz v9, :cond_8c

    :goto_77
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_8c

    .line 74
    :catch_7b
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_7c
    invoke-static {p0, p1, p2}, Lcom/miui/mishare/app/util/ImageOrientationUtil;->getFromMediaUriPfd(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_72

    .line 80
    if-eqz v9, :cond_85

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 76
    :cond_85
    return-object v1

    .line 80
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_86
    if-eqz v9, :cond_8b

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 81
    :cond_8b
    throw v0

    .line 83
    .end local v5    # "filePathColumn":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_8c
    :goto_8c
    return-object v0
.end method

.method private static blacklist getFromMediaUriPfd(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 93
    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    .line 95
    :cond_4
    const/4 v1, 0x0

    .line 96
    .local v1, "input":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 98
    .local v2, "output":Ljava/io/FileOutputStream;
    :try_start_6
    const-string v3, "r"

    invoke-virtual {p1, p2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 99
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 100
    .local v4, "fd":Ljava/io/FileDescriptor;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v5

    .line 102
    invoke-static {p0}, Lcom/miui/mishare/app/util/ImageOrientationUtil;->getTempFilename(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "tempFilename":Ljava/lang/String;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v6

    .line 106
    const/16 v6, 0x1000

    new-array v6, v6, [B

    .line 107
    .local v6, "bytes":[B
    :goto_24
    invoke-virtual {v1, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "read":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_31

    .line 108
    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_24

    .line 110
    :cond_31
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_36} :catch_45
    .catchall {:try_start_6 .. :try_end_36} :catchall_3d

    .line 114
    invoke-static {v1}, Lcom/miui/mishare/app/util/ImageOrientationUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 115
    invoke-static {v2}, Lcom/miui/mishare/app/util/ImageOrientationUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 110
    return-object v7

    .line 114
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "fd":Ljava/io/FileDescriptor;
    .end local v5    # "tempFilename":Ljava/lang/String;
    .end local v6    # "bytes":[B
    .end local v8    # "read":I
    :catchall_3d
    move-exception v0

    invoke-static {v1}, Lcom/miui/mishare/app/util/ImageOrientationUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 115
    invoke-static {v2}, Lcom/miui/mishare/app/util/ImageOrientationUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 116
    throw v0

    .line 111
    :catch_45
    move-exception v3

    .line 114
    invoke-static {v1}, Lcom/miui/mishare/app/util/ImageOrientationUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 115
    invoke-static {v2}, Lcom/miui/mishare/app/util/ImageOrientationUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 116
    nop

    .line 117
    return-object v0
.end method

.method private static blacklist getTempFilename(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 88
    .local v0, "outputDir":Ljava/io/File;
    const-string v1, "image"

    const-string v2, "tmp"

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 89
    .local v1, "outputFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
