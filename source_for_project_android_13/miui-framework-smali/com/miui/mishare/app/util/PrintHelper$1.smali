.class Lcom/miui/mishare/app/util/PrintHelper$1;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/mishare/app/util/PrintHelper;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/miui/mishare/app/util/PrintHelper$OnPrintFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mAttributes:Landroid/print/PrintAttributes;

.field final synthetic blacklist this$0:Lcom/miui/mishare/app/util/PrintHelper;

.field final synthetic blacklist val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic blacklist val$callback:Lcom/miui/mishare/app/util/PrintHelper$OnPrintFinishCallback;

.field final synthetic blacklist val$fittingMode:I

.field final synthetic blacklist val$jobName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/miui/mishare/app/util/PrintHelper;Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/miui/mishare/app/util/PrintHelper$OnPrintFinishCallback;)V
    .registers 6
    .param p1, "this$0"    # Lcom/miui/mishare/app/util/PrintHelper;

    .line 197
    iput-object p1, p0, Lcom/miui/mishare/app/util/PrintHelper$1;->this$0:Lcom/miui/mishare/app/util/PrintHelper;

    iput-object p2, p0, Lcom/miui/mishare/app/util/PrintHelper$1;->val$jobName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/mishare/app/util/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput p4, p0, Lcom/miui/mishare/app/util/PrintHelper$1;->val$fittingMode:I

    iput-object p5, p0, Lcom/miui/mishare/app/util/PrintHelper$1;->val$callback:Lcom/miui/mishare/app/util/PrintHelper$OnPrintFinishCallback;

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFinish()V
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/miui/mishare/app/util/PrintHelper$1;->val$callback:Lcom/miui/mishare/app/util/PrintHelper$OnPrintFinishCallback;

    if-eqz v0, :cond_7

    .line 279
    invoke-interface {v0}, Lcom/miui/mishare/app/util/PrintHelper$OnPrintFinishCallback;->onFinish()V

    .line 281
    :cond_7
    return-void
.end method

.method public whitelist onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "oldPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p2, "newPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "layoutResultCallback"    # Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .param p5, "bundle"    # Landroid/os/Bundle;

    .line 207
    iput-object p2, p0, Lcom/miui/mishare/app/util/PrintHelper$1;->mAttributes:Landroid/print/PrintAttributes;

    .line 209
    new-instance v0, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v1, p0, Lcom/miui/mishare/app/util/PrintHelper$1;->val$jobName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 210
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    .line 211
    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v0

    .line 213
    .local v0, "info":Landroid/print/PrintDocumentInfo;
    invoke-virtual {p2, p1}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    .line 214
    .local v1, "changed":Z
    invoke-virtual {p4, v0, v1}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 215
    return-void
.end method

.method public whitelist onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 16
    .param p1, "pageRanges"    # [Landroid/print/PageRange;
    .param p2, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "writeResultCallback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .line 221
    iget-object v0, p0, Lcom/miui/mishare/app/util/PrintHelper$1;->this$0:Lcom/miui/mishare/app/util/PrintHelper;

    iget-object v0, v0, Lcom/miui/mishare/app/util/PrintHelper;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 222
    .local v0, "context":Landroid/content/Context;
    const-string v1, "PrintHelperKitkat"

    if-nez v0, :cond_14

    .line 223
    const-string v2, "onWrite mContext == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void

    .line 226
    :cond_14
    new-instance v2, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v3, p0, Lcom/miui/mishare/app/util/PrintHelper$1;->mAttributes:Landroid/print/PrintAttributes;

    invoke-direct {v2, v0, v3}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    .line 229
    .local v2, "pdfDocument":Landroid/print/pdf/PrintedPdfDocument;
    iget-object v3, p0, Lcom/miui/mishare/app/util/PrintHelper$1;->this$0:Lcom/miui/mishare/app/util/PrintHelper;

    iget-object v4, p0, Lcom/miui/mishare/app/util/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/miui/mishare/app/util/PrintHelper$1;->mAttributes:Landroid/print/PrintAttributes;

    .line 230
    invoke-virtual {v5}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v5

    .line 229
    invoke-static {v3, v4, v5}, Lcom/miui/mishare/app/util/PrintHelper;->-$$Nest$mconvertBitmapForColorMode(Lcom/miui/mishare/app/util/PrintHelper;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 232
    .local v3, "maybeGrayscale":Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    :try_start_2a
    invoke-virtual {v2, v4}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v5

    .line 234
    .local v5, "page":Landroid/graphics/pdf/PdfDocument$Page;
    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 236
    .local v6, "content":Landroid/graphics/RectF;
    iget-object v7, p0, Lcom/miui/mishare/app/util/PrintHelper$1;->this$0:Lcom/miui/mishare/app/util/PrintHelper;

    .line 237
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget v10, p0, Lcom/miui/mishare/app/util/PrintHelper$1;->val$fittingMode:I

    .line 236
    invoke-static {v7, v8, v9, v6, v10}, Lcom/miui/mishare/app/util/PrintHelper;->-$$Nest$mgetMatrix(Lcom/miui/mishare/app/util/PrintHelper;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object v7

    .line 241
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 244
    invoke-virtual {v2, v5}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V
    :try_end_56
    .catchall {:try_start_2a .. :try_end_56} :catchall_89

    .line 248
    :try_start_56
    new-instance v8, Ljava/io/FileOutputStream;

    .line 249
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 248
    invoke-virtual {v2, v8}, Landroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V

    .line 251
    new-array v4, v4, [Landroid/print/PageRange;

    const/4 v8, 0x0

    sget-object v10, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    aput-object v10, v4, v8

    invoke-virtual {p4, v4}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_6c} :catch_6d
    .catchall {:try_start_56 .. :try_end_6c} :catchall_89

    .line 257
    goto :goto_76

    .line 253
    :catch_6d
    move-exception v4

    .line 255
    .local v4, "ioe":Ljava/io/IOException;
    :try_start_6e
    const-string v8, "Error writing printed content"

    invoke-static {v1, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    invoke-virtual {p4, v9}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V
    :try_end_76
    .catchall {:try_start_6e .. :try_end_76} :catchall_89

    .line 259
    .end local v4    # "ioe":Ljava/io/IOException;
    .end local v5    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    .end local v6    # "content":Landroid/graphics/RectF;
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    :goto_76
    nop

    .line 260
    invoke-virtual {v2}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 262
    if-eqz p2, :cond_81

    .line 264
    :try_start_7c
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80

    .line 267
    goto :goto_81

    .line 265
    :catch_80
    move-exception v1

    .line 270
    :cond_81
    :goto_81
    iget-object v1, p0, Lcom/miui/mishare/app/util/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v3, v1, :cond_88

    .line 271
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 274
    :cond_88
    return-void

    .line 259
    :catchall_89
    move-exception v1

    .line 260
    invoke-virtual {v2}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 262
    if-eqz p2, :cond_94

    .line 264
    :try_start_8f
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_93

    .line 267
    goto :goto_94

    .line 265
    :catch_93
    move-exception v4

    .line 270
    :cond_94
    :goto_94
    iget-object v4, p0, Lcom/miui/mishare/app/util/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v3, v4, :cond_9b

    .line 271
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 273
    :cond_9b
    throw v1
.end method
