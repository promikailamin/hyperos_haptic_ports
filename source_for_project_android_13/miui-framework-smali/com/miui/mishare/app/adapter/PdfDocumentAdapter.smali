.class public Lcom/miui/mishare/app/adapter/PdfDocumentAdapter;
.super Landroid/print/PrintDocumentAdapter;
.source "PdfDocumentAdapter.java"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mFileName:Ljava/lang/String;

.field private blacklist mUri:Landroid/net/Uri;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "fileName"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/mishare/app/adapter/PdfDocumentAdapter;->mContext:Landroid/content/Context;

    .line 25
    iput-object p1, p0, Lcom/miui/mishare/app/adapter/PdfDocumentAdapter;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/miui/mishare/app/adapter/PdfDocumentAdapter;->mUri:Landroid/net/Uri;

    .line 27
    iput-object p3, p0, Lcom/miui/mishare/app/adapter/PdfDocumentAdapter;->mFileName:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public whitelist onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "printAttributes"    # Landroid/print/PrintAttributes;
    .param p2, "printAttributes1"    # Landroid/print/PrintAttributes;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "layoutResultCallback"    # Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .param p5, "bundle"    # Landroid/os/Bundle;

    .line 32
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 33
    invoke-virtual {p4}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    goto :goto_2b

    .line 35
    :cond_a
    new-instance v0, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v1, p0, Lcom/miui/mishare/app/adapter/PdfDocumentAdapter;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "builder":Landroid/print/PrintDocumentInfo$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v1

    const/4 v2, -0x1

    .line 38
    invoke-virtual {v1, v2}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    .line 40
    invoke-virtual {v0}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v1

    .line 41
    invoke-virtual {p2, p1}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 40
    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p4, v1, v2}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 43
    .end local v0    # "builder":Landroid/print/PrintDocumentInfo$Builder;
    :goto_2b
    return-void
.end method

.method public whitelist onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 12
    .param p1, "pageRanges"    # [Landroid/print/PageRange;
    .param p2, "parcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "writeResultCallback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .line 47
    iget-object v0, p0, Lcom/miui/mishare/app/adapter/PdfDocumentAdapter;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_5

    .line 48
    return-void

    .line 50
    :cond_5
    const/4 v0, 0x0

    .line 52
    .local v0, "in":Ljava/io/InputStream;
    :try_start_6
    iget-object v1, p0, Lcom/miui/mishare/app/adapter/PdfDocumentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/mishare/app/adapter/PdfDocumentAdapter;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_14

    move-object v0, v1

    .line 55
    goto :goto_18

    .line 53
    :catch_14
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_18
    if-nez v0, :cond_1b

    .line 57
    return-void

    .line 59
    :cond_1b
    const/4 v1, 0x0

    .line 61
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_1c
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v2

    .line 63
    const/16 v2, 0x4000

    new-array v2, v2, [B

    .line 66
    .local v2, "buf":[B
    :goto_2a
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "size":I
    const/4 v5, 0x0

    if-ltz v3, :cond_3c

    .line 67
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_3c

    .line 68
    invoke-virtual {v1, v2, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2a

    .line 71
    :cond_3c
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 72
    invoke-virtual {p4}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteCancelled()V

    goto :goto_50

    .line 74
    :cond_46
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/print/PageRange;

    sget-object v6, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    aput-object v6, v3, v5

    invoke-virtual {p4, v3}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_50} :catch_64
    .catchall {:try_start_1c .. :try_end_50} :catchall_62

    .line 80
    .end local v2    # "buf":[B
    .end local v4    # "size":I
    :goto_50
    :try_start_50
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    .line 83
    goto :goto_58

    .line 81
    :catch_54
    move-exception v2

    .line 82
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 84
    .end local v2    # "e":Ljava/io/IOException;
    :goto_58
    nop

    .line 86
    :try_start_59
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    .line 89
    :goto_5c
    goto :goto_7a

    .line 87
    :catch_5d
    move-exception v2

    .line 88
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_5c

    .line 79
    :catchall_62
    move-exception v2

    goto :goto_7b

    .line 76
    :catch_64
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/Exception;
    :try_start_65
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_62

    .line 80
    .end local v2    # "e":Ljava/lang/Exception;
    :try_start_6c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    .line 83
    goto :goto_74

    .line 81
    :catch_70
    move-exception v2

    .line 82
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 84
    .end local v2    # "e":Ljava/io/IOException;
    :goto_74
    if-eqz v1, :cond_7a

    .line 86
    :try_start_76
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_5d

    goto :goto_5c

    .line 92
    :cond_7a
    :goto_7a
    return-void

    .line 80
    :goto_7b
    :try_start_7b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    .line 83
    goto :goto_83

    .line 81
    :catch_7f
    move-exception v3

    .line 82
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 84
    .end local v3    # "e":Ljava/io/IOException;
    :goto_83
    if-eqz v1, :cond_8d

    .line 86
    :try_start_85
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    .line 89
    goto :goto_8d

    .line 87
    :catch_89
    move-exception v3

    .line 88
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 91
    .end local v3    # "e":Ljava/io/IOException;
    :cond_8d
    :goto_8d
    throw v2
.end method
