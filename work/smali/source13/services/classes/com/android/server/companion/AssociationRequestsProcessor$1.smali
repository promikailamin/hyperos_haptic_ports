.class Lcom/android/server/companion/AssociationRequestsProcessor$1;
.super Landroid/os/ResultReceiver;
.source "AssociationRequestsProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/AssociationRequestsProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/AssociationRequestsProcessor;


# direct methods
.method constructor <init>(Lcom/android/server/companion/AssociationRequestsProcessor;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/companion/AssociationRequestsProcessor;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 290
    iput-object p1, p0, Lcom/android/server/companion/AssociationRequestsProcessor$1;->this$0:Lcom/android/server/companion/AssociationRequestsProcessor;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 298
    if-eqz p1, :cond_1b

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown result code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CompanionDevice_AssociationRequestsProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void

    .line 303
    :cond_1b
    const-string v0, "association_request"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationRequest;

    .line 304
    .local v0, "request":Landroid/companion/AssociationRequest;
    nop

    .line 305
    const-string v1, "application_callback"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/companion/IAssociationRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IAssociationRequestCallback;

    move-result-object v1

    .line 306
    .local v1, "callback":Landroid/companion/IAssociationRequestCallback;
    const-string/jumbo v2, "result_receiver"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 308
    .local v2, "resultReceiver":Landroid/os/ResultReceiver;
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    invoke-virtual {v0}, Landroid/companion/AssociationRequest;->isSelfManaged()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 314
    const/4 v3, 0x0

    .local v3, "macAddress":Landroid/net/MacAddress;
    goto :goto_54

    .line 316
    .end local v3    # "macAddress":Landroid/net/MacAddress;
    :cond_48
    const-string/jumbo v3, "mac_address"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/MacAddress;

    .line 317
    .restart local v3    # "macAddress":Landroid/net/MacAddress;
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :goto_54
    iget-object v4, p0, Lcom/android/server/companion/AssociationRequestsProcessor$1;->this$0:Lcom/android/server/companion/AssociationRequestsProcessor;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/server/companion/AssociationRequestsProcessor;->-$$Nest$mprocessAssociationRequestApproval(Lcom/android/server/companion/AssociationRequestsProcessor;Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/net/MacAddress;)V

    .line 321
    return-void
.end method
