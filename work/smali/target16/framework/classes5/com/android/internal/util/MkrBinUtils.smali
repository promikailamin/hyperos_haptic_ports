.class public final Lcom/android/internal/util/MkrBinUtils;
.super Ljava/lang/Object;
.source "MkrBinUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/MkrBinUtils$UploadResultCallback;
    }
.end annotation


# static fields
.field private static final blacklist binUrl:Ljava/lang/String; = "https://bin.mkr.pw"

.field private static blacklist mHandler:Landroid/os/Handler;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getHandler()Landroid/os/Handler;
    .registers 2

    .line 76
    sget-object v0, Lcom/android/internal/util/MkrBinUtils;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1f

    .line 77
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MkrBinThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_14

    .line 79
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 81
    :cond_14
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/internal/util/MkrBinUtils;->mHandler:Landroid/os/Handler;

    .line 83
    :cond_1f
    sget-object v0, Lcom/android/internal/util/MkrBinUtils;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic blacklist lambda$upload$0(Ljava/lang/String;Lcom/android/internal/util/MkrBinUtils$UploadResultCallback;)V
    .registers 6

    .line 45
    const-string v0, "https://bin.mkr.pw"

    :try_start_2
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 47
    const-string v2, "Content-Type"

    const-string/jumbo v3, "text/plain"

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    .line 49
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 51
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_26} :catch_72

    .line 52
    :try_start_26
    invoke-virtual {v2, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_68

    .line 54
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 56
    const-string p0, ""

    .line 57
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0x12e

    if-ne v2, v3, :cond_3f

    .line 58
    const-string p0, "Location"

    invoke-virtual {v1, p0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 61
    :cond_3f
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5a

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/util/MkrBinUtils$UploadResultCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_64

    .line 64
    :cond_5a
    const-string p0, "Failed to upload to MkrBin: No id retrieved"

    .line 65
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, v0}, Lcom/android/internal/util/MkrBinUtils$UploadResultCallback;->onFail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 67
    :goto_64
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_67} :catch_72

    .line 71
    goto :goto_79

    .line 51
    :catchall_68
    move-exception p0

    :try_start_69
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6d

    goto :goto_71

    :catchall_6d
    move-exception v0

    :try_start_6e
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_71
    throw p0
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_72} :catch_72

    .line 68
    :catch_72
    move-exception p0

    .line 69
    nop

    .line 70
    const-string v0, "Failed to upload to MkrBin"

    invoke-interface {p1, v0, p0}, Lcom/android/internal/util/MkrBinUtils$UploadResultCallback;->onFail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 72
    :goto_79
    return-void
.end method

.method public static blacklist upload(Ljava/lang/String;Lcom/android/internal/util/MkrBinUtils$UploadResultCallback;)V
    .registers 4

    .line 43
    invoke-static {}, Lcom/android/internal/util/MkrBinUtils;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/MkrBinUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/util/MkrBinUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/android/internal/util/MkrBinUtils$UploadResultCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method
