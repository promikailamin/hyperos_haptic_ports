.class Lcom/android/server/autofill/Session$3;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/Session;->requestShowInlineSuggestionsLocked(Landroid/service/autofill/FillResponse;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/Session;

.field final synthetic val$focusedId:Landroid/view/autofill/AutofillId;

.field final synthetic val$response:Landroid/service/autofill/FillResponse;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/autofill/Session;

    .line 3443
    iput-object p1, p0, Lcom/android/server/autofill/Session$3;->this$0:Lcom/android/server/autofill/Session;

    iput-object p2, p0, Lcom/android/server/autofill/Session$3;->val$response:Landroid/service/autofill/FillResponse;

    iput-object p3, p0, Lcom/android/server/autofill/Session$3;->val$focusedId:Landroid/view/autofill/AutofillId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(II)V
    .registers 9
    .param p1, "requestId"    # I
    .param p2, "datasetIndex"    # I

    .line 3451
    iget-object v0, p0, Lcom/android/server/autofill/Session$3;->this$0:Lcom/android/server/autofill/Session;

    iget-object v1, p0, Lcom/android/server/autofill/Session$3;->val$response:Landroid/service/autofill/FillResponse;

    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/autofill/Session$3;->val$response:Landroid/service/autofill/FillResponse;

    .line 3452
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v3

    iget-object v2, p0, Lcom/android/server/autofill/Session$3;->val$response:Landroid/service/autofill/FillResponse;

    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object v4

    .line 3451
    const/4 v5, 0x1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/autofill/Session;->authenticate(IILandroid/content/IntentSender;Landroid/os/Bundle;Z)V

    .line 3454
    return-void
.end method

.method public autofill(Landroid/service/autofill/Dataset;I)V
    .registers 6
    .param p1, "dataset"    # Landroid/service/autofill/Dataset;
    .param p2, "datasetIndex"    # I

    .line 3446
    iget-object v0, p0, Lcom/android/server/autofill/Session$3;->this$0:Lcom/android/server/autofill/Session;

    iget-object v1, p0, Lcom/android/server/autofill/Session$3;->val$response:Landroid/service/autofill/FillResponse;

    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p2, p1, v2}, Lcom/android/server/autofill/Session;->fill(IILandroid/service/autofill/Dataset;I)V

    .line 3447
    return-void
.end method

.method public onError()V
    .registers 4

    .line 3463
    iget-object v0, p0, Lcom/android/server/autofill/Session$3;->this$0:Lcom/android/server/autofill/Session;

    iget-object v0, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3464
    :try_start_5
    iget-object v1, p0, Lcom/android/server/autofill/Session$3;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v1}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmInlineSessionController(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/AutofillInlineSessionController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/Session$3;->val$focusedId:Landroid/view/autofill/AutofillId;

    .line 3465
    invoke-static {v2}, Lcom/android/server/autofill/ui/InlineFillUi;->emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object v2

    .line 3464
    invoke-virtual {v1, v2}, Lcom/android/server/autofill/AutofillInlineSessionController;->setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    .line 3466
    monitor-exit v0

    .line 3467
    return-void

    .line 3466
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public startIntentSender(Landroid/content/IntentSender;)V
    .registers 4
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .line 3458
    iget-object v0, p0, Lcom/android/server/autofill/Session$3;->this$0:Lcom/android/server/autofill/Session;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/autofill/Session;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 3459
    return-void
.end method
