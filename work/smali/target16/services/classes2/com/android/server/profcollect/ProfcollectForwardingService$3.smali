.class public Lcom/android/server/profcollect/ProfcollectForwardingService$3;
.super Landroid/os/UpdateEngineCallback;
.source "ProfcollectForwardingService.java"


# direct methods
.method public constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .registers 2

    .line 404
    invoke-direct {p0}, Landroid/os/UpdateEngineCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayloadApplicationComplete(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onStatusUpdate(IF)V
    .registers 3

    const/4 p0, 0x6

    if-ne p1, p0, :cond_a

    .line 408
    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$sfgetsSelfService()Lcom/android/server/profcollect/ProfcollectForwardingService;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$smcreateAndUploadReport(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    :cond_a
    return-void
.end method
