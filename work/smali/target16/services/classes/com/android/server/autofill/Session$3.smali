.class public Lcom/android/server/autofill/Session$3;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/Session;

.field public final synthetic val$focusedId:Landroid/view/autofill/AutofillId;

.field public final synthetic val$response:Landroid/service/autofill/FillResponse;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;)V
    .registers 4

    .line 6025
    iput-object p1, p0, Lcom/android/server/autofill/Session$3;->this$0:Lcom/android/server/autofill/Session;

    iput-object p2, p0, Lcom/android/server/autofill/Session$3;->val$response:Landroid/service/autofill/FillResponse;

    iput-object p3, p0, Lcom/android/server/autofill/Session$3;->val$focusedId:Landroid/view/autofill/AutofillId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(II)V
    .registers 9

    .line 6037
    iget-object v0, p0, Lcom/android/server/autofill/Session$3;->this$0:Lcom/android/server/autofill/Session;

    iget-object p1, p0, Lcom/android/server/autofill/Session$3;->val$response:Landroid/service/autofill/FillResponse;

    .line 6038
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v1

    iget-object p1, p0, Lcom/android/server/autofill/Session$3;->val$response:Landroid/service/autofill/FillResponse;

    .line 6040
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/autofill/Session$3;->val$response:Landroid/service/autofill/FillResponse;

    .line 6041
    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x2

    move v2, p2

    .line 6037
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/autofill/Session;->authenticate(IILandroid/content/IntentSender;Landroid/os/Bundle;I)V

    return-void
.end method

.method public autofill(Landroid/service/autofill/Dataset;I)V
    .registers 5

    .line 6028
    iget-object v0, p0, Lcom/android/server/autofill/Session$3;->this$0:Lcom/android/server/autofill/Session;

    iget-object p0, p0, Lcom/android/server/autofill/Session$3;->val$response:Landroid/service/autofill/FillResponse;

    .line 6029
    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result p0

    const/4 v1, 0x2

    .line 6028
    invoke-virtual {v0, p0, p2, p1, v1}, Lcom/android/server/autofill/Session;->fill(IILandroid/service/autofill/Dataset;I)V

    return-void
.end method

.method public onError()V
    .registers 3

    .line 6052
    iget-object v0, p0, Lcom/android/server/autofill/Session$3;->this$0:Lcom/android/server/autofill/Session;

    iget-object v0, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6053
    :try_start_5
    iget-object v1, p0, Lcom/android/server/autofill/Session$3;->this$0:Lcom/android/server/autofill/Session;

    iget-object v1, v1, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object p0, p0, Lcom/android/server/autofill/Session$3;->val$focusedId:Landroid/view/autofill/AutofillId;

    .line 6054
    invoke-static {p0}, Lcom/android/server/autofill/ui/InlineFillUi;->emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object p0

    .line 6053
    invoke-virtual {v1, p0}, Lcom/android/server/autofill/AutofillInlineSessionController;->setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    .line 6055
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public onInflate()V
    .registers 3

    .line 6060
    iget-object p0, p0, Lcom/android/server/autofill/Session$3;->this$0:Lcom/android/server/autofill/Session;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/autofill/Session;->onShown(II)V

    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;)V
    .registers 3

    .line 6047
    iget-object p0, p0, Lcom/android/server/autofill/Session$3;->this$0:Lcom/android/server/autofill/Session;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/Session;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method
