.class public Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadRunnable;
.super Ljava/lang/Object;
.source "BitmapOffloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field public final mPath:Ljava/lang/String;

.field public final mUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/bitmapoffload/BitmapOffloadService;


# direct methods
.method public constructor <init>(Lcom/android/server/bitmapoffload/BitmapOffloadService;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5

    .line 120
    iput-object p1, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadRunnable;->this$0:Lcom/android/server/bitmapoffload/BitmapOffloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p3, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadRunnable;->mPath:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadRunnable;->mBitmap:Landroid/graphics/Bitmap;

    .line 123
    iput-object p4, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadRunnable;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final compressBitmap()Z
    .registers 8

    .line 127
    const-string v0, "Failed compressing bitmap to "

    const-string v1, "BitmapOffloader"

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadRunnable;->mPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_30

    .line 128
    :try_start_c
    iget-object v4, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadRunnable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSY:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadRunnable;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_32

    .line 133
    :try_start_2c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    return v2

    :catch_30
    move-exception v3

    goto :goto_42

    :catchall_32
    move-exception v4

    goto :goto_39

    :cond_34
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_37} :catch_30

    const/4 p0, 0x1

    return p0

    .line 127
    :goto_39
    :try_start_39
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception v3

    :try_start_3e
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_41
    throw v4
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_42} :catch_30

    .line 134
    :goto_42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadRunnable;->mPath:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public run()V
    .registers 6

    .line 143
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 144
    invoke-virtual {p0}, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadRunnable;->compressBitmap()Z

    move-result v1

    const-string/jumbo v2, "status"

    if-eqz v1, :cond_2b

    .line 145
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadRunnable;->mPath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 148
    const-string v1, "filesize"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v1, 0x1

    .line 150
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 149
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_33

    :cond_2b
    const/4 v1, 0x2

    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    :goto_33
    iget-object v1, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadRunnable;->this$0:Lcom/android/server/bitmapoffload/BitmapOffloadService;

    invoke-static {v1}, Lcom/android/server/bitmapoffload/BitmapOffloadService;->-$$Nest$fgetmResolver(Lcom/android/server/bitmapoffload/BitmapOffloadService;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadRunnable;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    return-void
.end method
