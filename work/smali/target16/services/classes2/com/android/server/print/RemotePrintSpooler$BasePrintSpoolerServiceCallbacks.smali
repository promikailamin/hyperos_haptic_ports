.class public abstract Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;
.super Landroid/print/IPrintSpoolerCallbacks$Stub;
.source "RemotePrintSpooler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 868
    invoke-direct {p0}, Landroid/print/IPrintSpoolerCallbacks$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/print/RemotePrintSpooler-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public customPrinterIconCacheCleared(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onCancelPrintJobResult(ZI)V
    .registers 3

    .line 0
    return-void
.end method

.method public onCustomPrinterIconCached(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onGetCustomPrinterIconResult(Landroid/graphics/drawable/Icon;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public onGetPrintJobInfoResult(Landroid/print/PrintJobInfo;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public onGetPrintJobInfosResult(Ljava/util/List;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public onSetPrintJobStateResult(ZI)V
    .registers 3

    .line 0
    return-void
.end method

.method public onSetPrintJobTagResult(ZI)V
    .registers 3

    .line 0
    return-void
.end method
