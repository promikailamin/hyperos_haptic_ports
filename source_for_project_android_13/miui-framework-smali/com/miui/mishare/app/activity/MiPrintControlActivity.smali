.class public Lcom/miui/mishare/app/activity/MiPrintControlActivity;
.super Landroid/app/Activity;
.source "MiPrintControlActivity.java"


# static fields
.field private static final blacklist PRINT_PREFIX:Ljava/lang/String; = "MIUI:"


# instance fields
.field private blacklist mResumeTimes:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/mishare/app/activity/MiPrintControlActivity;->mResumeTimes:I

    return-void
.end method

.method private blacklist doPdfPrint(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 59
    const-string v0, "print"

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/activity/MiPrintControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    .line 60
    .local v0, "printManager":Landroid/print/PrintManager;
    new-instance v1, Lcom/miui/mishare/app/adapter/PdfDocumentAdapter;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/mishare/app/adapter/PdfDocumentAdapter;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 61
    .local v1, "printAdapter":Landroid/print/PrintDocumentAdapter;
    if-eqz v0, :cond_2e

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v3}, Landroid/print/PrintAttributes$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 64
    :cond_2e
    return-void
.end method

.method private blacklist print(Landroid/net/Uri;)V
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 40
    if-nez p1, :cond_6

    .line 41
    invoke-virtual {p0}, Lcom/miui/mishare/app/activity/MiPrintControlActivity;->finish()V

    goto :goto_3f

    .line 43
    :cond_6
    new-instance v0, Lcom/miui/mishare/app/util/PrintHelper;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/util/PrintHelper;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, "printHelper":Lcom/miui/mishare/app/util/PrintHelper;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/util/PrintHelper;->setScaleMode(I)V

    .line 45
    invoke-static {p0, p1}, Lcom/miui/mishare/app/util/MiShareFileHelper;->getFileNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "fileName":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/miui/mishare/app/util/MiShareFileHelper;->isFilePdf(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 47
    invoke-direct {p0, p1, v1}, Lcom/miui/mishare/app/activity/MiPrintControlActivity;->doPdfPrint(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_3f

    .line 48
    :cond_1d
    invoke-static {p0, p1}, Lcom/miui/mishare/app/util/MiShareFileHelper;->isImageCanPrint(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 50
    :try_start_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Lcom/miui/mishare/app/util/PrintHelper;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/mishare/app/util/PrintHelper$OnPrintFinishCallback;)V
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_3a} :catch_3b

    .line 53
    goto :goto_3f

    .line 51
    :catch_3b
    move-exception v2

    .line 52
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 56
    .end local v0    # "printHelper":Lcom/miui/mishare/app/util/PrintHelper;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_3f
    :goto_3f
    return-void
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/miui/mishare/app/activity/MiPrintControlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 27
    .local v0, "uri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/miui/mishare/app/activity/MiPrintControlActivity;->print(Landroid/net/Uri;)V

    .line 28
    return-void
.end method

.method protected whitelist onResume()V
    .registers 3

    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 33
    iget v0, p0, Lcom/miui/mishare/app/activity/MiPrintControlActivity;->mResumeTimes:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/mishare/app/activity/MiPrintControlActivity;->mResumeTimes:I

    .line 34
    if-le v0, v1, :cond_e

    .line 35
    invoke-virtual {p0}, Lcom/miui/mishare/app/activity/MiPrintControlActivity;->finish()V

    .line 37
    :cond_e
    return-void
.end method
