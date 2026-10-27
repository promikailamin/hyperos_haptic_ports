.class public final synthetic Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/print/RemotePrintService;

.field public final synthetic f$1:Landroid/print/PrinterId;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/print/RemotePrintService;

    iput-object p2, p0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda11;->f$1:Landroid/print/PrinterId;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/print/RemotePrintService;

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda11;->f$1:Landroid/print/PrinterId;

    invoke-virtual {v0, v1}, Lcom/android/server/print/RemotePrintService;->lambda$handleRequestCustomPrinterIcon$0$com-android-server-print-RemotePrintService(Landroid/print/PrinterId;)V

    return-void
.end method
