.class Lcom/miui/mishare/app/util/PrintHelper$2;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/mishare/app/util/PrintHelper;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/mishare/app/util/PrintHelper$OnPrintFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mAttributes:Landroid/print/PrintAttributes;

.field blacklist mBitmap:Landroid/graphics/Bitmap;

.field blacklist mLoadBitmap:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/miui/mishare/app/util/PrintHelper;

.field final synthetic blacklist val$callback:Lcom/miui/mishare/app/util/PrintHelper$OnPrintFinishCallback;

.field final synthetic blacklist val$fittingMode:I

.field final synthetic blacklist val$imageFile:Landroid/net/Uri;

.field final synthetic blacklist val$jobName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mcancelLoad(Lcom/miui/mishare/app/util/PrintHelper$2;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/mishare/app/util/PrintHelper$2;->cancelLoad()V

    return-void
.end method

.method constructor blacklist <init>(Lcom/miui/mishare/app/util/PrintHelper;Ljava/lang/String;Landroid/net/Uri;Lcom/miui/mishare/app/util/PrintHelper$OnPrintFinishCallback;I)V
    .registers 6
    .param p1, "this$0"    # Lcom/miui/mishare/app/util/PrintHelper;

    .line 328
    iput-object p1, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->this$0:Lcom/miui/mishare/app/util/PrintHelper;

    iput-object p2, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->val$jobName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->val$imageFile:Landroid/net/Uri;

    iput-object p4, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->val$callback:Lcom/miui/mishare/app/util/PrintHelper$OnPrintFinishCallback;

    iput p5, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->val$fittingMode:I

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    .line 331
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private blacklist cancelLoad()V
    .registers 4

    .line 411
    iget-object v0, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->this$0:Lcom/miui/mishare/app/util/PrintHelper;

    invoke-static {v0}, Lcom/miui/mishare/app/util/PrintHelper;->-$$Nest$fgetmLock(Lcom/miui/mishare/app/util/PrintHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 412
    :try_start_7
    iget-object v1, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->this$0:Lcom/miui/mishare/app/util/PrintHelper;

    iget-object v1, v1, Lcom/miui/mishare/app/util/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    if-eqz v1, :cond_19

    .line 413
    iget-object v1, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->this$0:Lcom/miui/mishare/app/util/PrintHelper;

    iget-object v1, v1, Lcom/miui/mishare/app/util/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 414
    iget-object v1, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->this$0:Lcom/miui/mishare/app/util/PrintHelper;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/miui/mishare/app/util/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 416
    :cond_19
    monitor-exit v0

    .line 417
    return-void

    .line 416
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1
.end method


# virtual methods
.method public whitelist onFinish()V
    .registers 3

    .line 421
    invoke-super {p0}, Landroid/print/PrintDocumentAdapter;->onFinish()V

    .line 422
    invoke-direct {p0}, Lcom/miui/mishare/app/util/PrintHelper$2;->cancelLoad()V

    .line 423
    iget-object v0, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->mLoadBitmap:Landroid/os/AsyncTask;

    if-eqz v0, :cond_e

    .line 424
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 426
    :cond_e
    iget-object v0, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->val$callback:Lcom/miui/mishare/app/util/PrintHelper$OnPrintFinishCallback;

    if-eqz v0, :cond_15

    .line 427
    invoke-interface {v0}, Lcom/miui/mishare/app/util/PrintHelper$OnPrintFinishCallback;->onFinish()V

    .line 429
    :cond_15
    iget-object v0, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1f

    .line 430
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->mBitmap:Landroid/graphics/Bitmap;

    .line 433
    :cond_1f
    return-void
.end method

.method public whitelist onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .registers 14
    .param p1, "oldPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p2, "newPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "layoutResultCallback"    # Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .param p5, "bundle"    # Landroid/os/Bundle;

    .line 340
    iput-object p2, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->mAttributes:Landroid/print/PrintAttributes;

    .line 342
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 343
    invoke-virtual {p4}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    .line 344
    return-void

    .line 347
    :cond_c
    iget-object v0, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2d

    .line 348
    new-instance v0, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v1, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->val$jobName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 349
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    .line 350
    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v0

    .line 352
    .local v0, "info":Landroid/print/PrintDocumentInfo;
    invoke-virtual {p2, p1}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    .line 353
    .local v1, "changed":Z
    invoke-virtual {p4, v0, v1}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 354
    return-void

    .line 357
    .end local v0    # "info":Landroid/print/PrintDocumentInfo;
    .end local v1    # "changed":Z
    :cond_2d
    new-instance v0, Lcom/miui/mishare/app/util/PrintHelper$2$1;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/miui/mishare/app/util/PrintHelper$2$1;-><init>(Lcom/miui/mishare/app/util/PrintHelper$2;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/net/Uri;

    .line 407
    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/util/PrintHelper$2$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->mLoadBitmap:Landroid/os/AsyncTask;

    .line 408
    return-void
.end method

.method public whitelist onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 16
    .param p1, "pageRanges"    # [Landroid/print/PageRange;
    .param p2, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "writeResultCallback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .line 439
    iget-object v0, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->this$0:Lcom/miui/mishare/app/util/PrintHelper;

    iget-object v0, v0, Lcom/miui/mishare/app/util/PrintHelper;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 440
    .local v0, "context":Landroid/content/Context;
    const-string v1, "PrintHelperKitkat"

    if-nez v0, :cond_14

    .line 441
    const-string v2, "onWrite mContext == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return-void

    .line 444
    :cond_14
    new-instance v2, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v3, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->mAttributes:Landroid/print/PrintAttributes;

    invoke-direct {v2, v0, v3}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    .line 446
    .local v2, "pdfDocument":Landroid/print/pdf/PrintedPdfDocument;
    iget-object v3, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->this$0:Lcom/miui/mishare/app/util/PrintHelper;

    iget-object v4, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->mAttributes:Landroid/print/PrintAttributes;

    .line 447
    invoke-virtual {v5}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v5

    .line 446
    invoke-static {v3, v4, v5}, Lcom/miui/mishare/app/util/PrintHelper;->-$$Nest$mconvertBitmapForColorMode(Lcom/miui/mishare/app/util/PrintHelper;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 450
    .local v3, "maybeGrayscale":Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    :try_start_2a
    invoke-virtual {v2, v4}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v5

    .line 451
    .local v5, "page":Landroid/graphics/pdf/PdfDocument$Page;
    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 454
    .local v6, "content":Landroid/graphics/RectF;
    iget-object v7, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->this$0:Lcom/miui/mishare/app/util/PrintHelper;

    iget-object v8, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget v10, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->val$fittingMode:I

    invoke-static {v7, v8, v9, v6, v10}, Lcom/miui/mishare/app/util/PrintHelper;->-$$Nest$mgetMatrix(Lcom/miui/mishare/app/util/PrintHelper;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object v7

    .line 458
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 461
    invoke-virtual {v2, v5}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V
    :try_end_5a
    .catchall {:try_start_2a .. :try_end_5a} :catchall_8d

    .line 465
    :try_start_5a
    new-instance v8, Ljava/io/FileOutputStream;

    .line 466
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 465
    invoke-virtual {v2, v8}, Landroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V

    .line 468
    new-array v4, v4, [Landroid/print/PageRange;

    const/4 v8, 0x0

    sget-object v10, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    aput-object v10, v4, v8

    invoke-virtual {p4, v4}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_70} :catch_71
    .catchall {:try_start_5a .. :try_end_70} :catchall_8d

    .line 474
    goto :goto_7a

    .line 470
    :catch_71
    move-exception v4

    .line 472
    .local v4, "ioe":Ljava/io/IOException;
    :try_start_72
    const-string v8, "Error writing printed content"

    invoke-static {v1, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 473
    invoke-virtual {p4, v9}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V
    :try_end_7a
    .catchall {:try_start_72 .. :try_end_7a} :catchall_8d

    .line 476
    .end local v4    # "ioe":Ljava/io/IOException;
    .end local v5    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    .end local v6    # "content":Landroid/graphics/RectF;
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    :goto_7a
    nop

    .line 477
    invoke-virtual {v2}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 479
    if-eqz p2, :cond_85

    .line 481
    :try_start_80
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    .line 484
    goto :goto_85

    .line 482
    :catch_84
    move-exception v1

    .line 487
    :cond_85
    :goto_85
    iget-object v1, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v3, v1, :cond_8c

    .line 488
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 491
    :cond_8c
    return-void

    .line 476
    :catchall_8d
    move-exception v1

    .line 477
    invoke-virtual {v2}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 479
    if-eqz p2, :cond_98

    .line 481
    :try_start_93
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_97

    .line 484
    goto :goto_98

    .line 482
    :catch_97
    move-exception v4

    .line 487
    :cond_98
    :goto_98
    iget-object v4, p0, Lcom/miui/mishare/app/util/PrintHelper$2;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v3, v4, :cond_9f

    .line 488
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 490
    :cond_9f
    throw v1
.end method
