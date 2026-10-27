.class public Lcom/android/server/print/RemotePrintService$6;
.super Ljava/lang/Object;
.source "RemotePrintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/print/RemotePrintService;

.field public final synthetic val$priorityList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    .registers 3

    .line 341
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$6;->this$0:Lcom/android/server/print/RemotePrintService;

    iput-object p2, p0, Lcom/android/server/print/RemotePrintService$6;->val$priorityList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 344
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$6;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$6;->val$priorityList:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/android/server/print/RemotePrintService;->-$$Nest$mhandleStartPrinterDiscovery(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    return-void
.end method
