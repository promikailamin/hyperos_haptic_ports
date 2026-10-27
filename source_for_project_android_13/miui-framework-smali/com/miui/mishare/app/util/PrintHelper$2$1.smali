.class Lcom/miui/mishare/app/util/PrintHelper$2$1;
.super Landroid/os/AsyncTask;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/mishare/app/util/PrintHelper$2;->onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Boolean;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/miui/mishare/app/util/PrintHelper$2;

.field final synthetic blacklist val$cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic blacklist val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

.field final synthetic blacklist val$newPrintAttributes:Landroid/print/PrintAttributes;

.field final synthetic blacklist val$oldPrintAttributes:Landroid/print/PrintAttributes;


# direct methods
.method constructor blacklist <init>(Lcom/miui/mishare/app/util/PrintHelper$2;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V
    .registers 6
    .param p1, "this$1"    # Lcom/miui/mishare/app/util/PrintHelper$2;

    .line 357
    iput-object p1, p0, Lcom/miui/mishare/app/util/PrintHelper$2$1;->this$1:Lcom/miui/mishare/app/util/PrintHelper$2;

    iput-object p2, p0, Lcom/miui/mishare/app/util/PrintHelper$2$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    iput-object p3, p0, Lcom/miui/mishare/app/util/PrintHelper$2$1;->val$newPrintAttributes:Landroid/print/PrintAttributes;

    iput-object p4, p0, Lcom/miui/mishare/app/util/PrintHelper$2$1;->val$oldPrintAttributes:Landroid/print/PrintAttributes;

    iput-object p5, p0, Lcom/miui/mishare/app/util/PrintHelper$2$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs blacklist doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/miui/mishare/app/util/PrintHelper$2$1;->this$1:Lcom/miui/mishare/app/util/PrintHelper$2;

    iget-object v0, v0, Lcom/miui/mishare/app/util/PrintHelper$2;->this$0:Lcom/miui/mishare/app/util/PrintHelper;

    iget-object v1, p0, Lcom/miui/mishare/app/util/PrintHelper$2$1;->this$1:Lcom/miui/mishare/app/util/PrintHelper$2;

    iget-object v1, v1, Lcom/miui/mishare/app/util/PrintHelper$2;->val$imageFile:Landroid/net/Uri;

    const/16 v2, 0xdac

    invoke-static {v0, v1, v2}, Lcom/miui/mishare/app/util/PrintHelper;->-$$Nest$mloadConstrainedBitmap(Lcom/miui/mishare/app/util/PrintHelper;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 376
    :catch_f
    move-exception v0

    .line 379
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 357
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/miui/mishare/app/util/PrintHelper$2$1;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist onCancelled(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .line 404
    iget-object v0, p0, Lcom/miui/mishare/app/util/PrintHelper$2$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    .line 405
    iget-object v0, p0, Lcom/miui/mishare/app/util/PrintHelper$2$1;->this$1:Lcom/miui/mishare/app/util/PrintHelper$2;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/mishare/app/util/PrintHelper$2;->mLoadBitmap:Landroid/os/AsyncTask;

    .line 406
    return-void
.end method

.method protected bridge synthetic whitelist onCancelled(Ljava/lang/Object;)V
    .registers 2

    .line 357
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/miui/mishare/app/util/PrintHelper$2$1;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected blacklist onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 384
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 385
    iget-object v0, p0, Lcom/miui/mishare/app/util/PrintHelper$2$1;->this$1:Lcom/miui/mishare/app/util/PrintHelper$2;

    iput-object p1, v0, Lcom/miui/mishare/app/util/PrintHelper$2;->mBitmap:Landroid/graphics/Bitmap;

    .line 386
    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    .line 387
    new-instance v1, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v2, p0, Lcom/miui/mishare/app/util/PrintHelper$2$1;->this$1:Lcom/miui/mishare/app/util/PrintHelper$2;

    iget-object v2, v2, Lcom/miui/mishare/app/util/PrintHelper$2;->val$jobName:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 388
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v1

    .line 389
    invoke-virtual {v1, v2}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v1

    .line 390
    invoke-virtual {v1}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v1

    .line 391
    .local v1, "info":Landroid/print/PrintDocumentInfo;
    iget-object v3, p0, Lcom/miui/mishare/app/util/PrintHelper$2$1;->val$newPrintAttributes:Landroid/print/PrintAttributes;

    iget-object v4, p0, Lcom/miui/mishare/app/util/PrintHelper$2$1;->val$oldPrintAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v3, v4}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v2, v3

    .line 393
    .local v2, "changed":Z
    iget-object v3, p0, Lcom/miui/mishare/app/util/PrintHelper$2$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v3, v1, v2}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 395
    .end local v1    # "info":Landroid/print/PrintDocumentInfo;
    .end local v2    # "changed":Z
    goto :goto_34

    .line 396
    :cond_2f
    iget-object v1, p0, Lcom/miui/mishare/app/util/PrintHelper$2$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v1, v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFailed(Ljava/lang/CharSequence;)V

    .line 398
    :goto_34
    iget-object v1, p0, Lcom/miui/mishare/app/util/PrintHelper$2$1;->this$1:Lcom/miui/mishare/app/util/PrintHelper$2;

    iput-object v0, v1, Lcom/miui/mishare/app/util/PrintHelper$2;->mLoadBitmap:Landroid/os/AsyncTask;

    .line 399
    return-void
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 357
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/miui/mishare/app/util/PrintHelper$2$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected whitelist onPreExecute()V
    .registers 3

    .line 362
    iget-object v0, p0, Lcom/miui/mishare/app/util/PrintHelper$2$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    new-instance v1, Lcom/miui/mishare/app/util/PrintHelper$2$1$1;

    invoke-direct {v1, p0}, Lcom/miui/mishare/app/util/PrintHelper$2$1$1;-><init>(Lcom/miui/mishare/app/util/PrintHelper$2$1;)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 370
    return-void
.end method
