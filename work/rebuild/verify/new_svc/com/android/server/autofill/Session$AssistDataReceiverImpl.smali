.class public final Lcom/android/server/autofill/Session$AssistDataReceiverImpl;
.super Landroid/app/IAssistDataReceiver$Stub;
.source "Session.java"


# instance fields
.field public mLastFillRequest:Landroid/service/autofill/FillRequest;

.field public mPendingFillRequest:Landroid/service/autofill/FillRequest;

.field public mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

.field public mWaitForInlineRequest:Z

.field public final synthetic this$0:Lcom/android/server/autofill/Session;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/Session;)V
    .registers 2

    .line 750
    iput-object p1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-direct {p0}, Landroid/app/IAssistDataReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public handleInlineSuggestionRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/server/autofill/ViewState;)V
    .registers 5

    .line 782
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_b

    .line 783
    const-string v0, "AutofillSession"

    const-string v1, "handleInlineSuggestionRequest(): inline suggestion request received"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_b
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    iget-object v0, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 786
    :try_start_10
    iget-boolean v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mWaitForInlineRequest:Z

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    if-eqz v1, :cond_19

    goto :goto_2e

    :cond_19
    if-eqz p1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .line 789
    :goto_1e
    iput-boolean v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mWaitForInlineRequest:Z

    .line 790
    iput-object p1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 791
    invoke-virtual {p0}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->maybeRequestFillLocked()V

    const/high16 p0, 0x10000

    .line 792
    invoke-virtual {p2, p0}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 793
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    goto :goto_30

    .line 787
    :cond_2e
    :goto_2e
    monitor-exit v0

    return-void

    .line 793
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_2c

    throw p0
.end method

.method public maybeRequestFillLocked()V
    .registers 11

    .line 798
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    const-string v1, "AutofillSession"

    if-nez v0, :cond_11

    .line 799
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_30

    .line 800
    const-string/jumbo p0, "maybeRequestFillLocked(): cancelling calling fill request due to empty pending fill request"

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 807
    :cond_11
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {}, Lcom/android/server/autofill/Session;->-$$Nest$sfgetsIdCounterForPcc()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/autofill/Session;->-$$Nest$fputmFieldClassificationIdSnapshot(Lcom/android/server/autofill/Session;I)V

    .line 809
    iget-boolean v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mWaitForInlineRequest:Z

    if-eqz v0, :cond_69

    .line 810
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    if-nez v0, :cond_31

    .line 811
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_30

    .line 812
    const-string/jumbo p0, "maybeRequestFillLocked(): cancelling calling fill request due to waiting for inline request and pending inline request is currently empty"

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return-void

    .line 820
    :cond_31
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_3b

    .line 821
    const-string/jumbo v0, "maybeRequestFillLocked(): adding inline request to pending fill request"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_3b
    new-instance v2, Landroid/service/autofill/FillRequest;

    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 828
    invoke-virtual {v0}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v3

    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 829
    invoke-virtual {v0}, Landroid/service/autofill/FillRequest;->getFillContexts()Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 830
    invoke-virtual {v0}, Landroid/service/autofill/FillRequest;->getHints()Ljava/util/List;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 831
    invoke-virtual {v0}, Landroid/service/autofill/FillRequest;->getClientState()Landroid/os/Bundle;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 832
    invoke-virtual {v0}, Landroid/service/autofill/FillRequest;->getFlags()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 834
    invoke-virtual {v0}, Landroid/service/autofill/FillRequest;->getDelayedFillIntentSender()Landroid/content/IntentSender;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Landroid/service/autofill/FillRequest;-><init>(ILjava/util/List;Ljava/util/List;Landroid/os/Bundle;ILandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/content/IntentSender;)V

    iput-object v2, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    goto :goto_73

    .line 836
    :cond_69
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_73

    .line 837
    const-string/jumbo v0, "maybeRequestFillLocked(): not adding inline request to pending fill request"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_73
    :goto_73
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mLastFillRequest:Landroid/service/autofill/FillRequest;

    .line 845
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_81

    .line 846
    const-string/jumbo v0, "maybeRequestFillLocked(): sending fill request"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_81
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    iget-object v2, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    invoke-virtual {v2}, Landroid/service/autofill/FillRequest;->getFlags()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/autofill/Session;->shouldRequestSecondaryProvider(I)Z

    move-result v0

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmSecondaryProviderHandler(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/SecondaryProviderHandler;

    move-result-object v0

    if-eqz v0, :cond_cc

    .line 850
    const-string v0, "Requesting fill response to secondary provider."

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmIsPrimaryCredential(Lcom/android/server/autofill/Session;)Z

    move-result v0

    if-nez v0, :cond_b2

    .line 852
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    iget-object v2, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    iget v3, v0, Lcom/android/server/autofill/Session;->id:I

    .line 853
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/autofill/Session;->-$$Nest$maddCredentialManagerDataToClientState(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillRequest;Landroid/view/inputmethod/InlineSuggestionsRequest;I)Landroid/service/autofill/FillRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 856
    :cond_b2
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmSecondaryProviderHandler(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/SecondaryProviderHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 857
    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getFlags()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v3}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmClient(Lcom/android/server/autofill/Session;)Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 856
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/autofill/SecondaryProviderHandler;->onFillRequest(Landroid/service/autofill/FillRequest;ILandroid/os/IBinder;)V

    goto :goto_10b

    .line 858
    :cond_cc
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmRemoteFillService(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    if-eqz v0, :cond_10b

    .line 859
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmIsPrimaryCredential(Lcom/android/server/autofill/Session;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 860
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    iget-object v2, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    iget v3, v0, Lcom/android/server/autofill/Session;->id:I

    .line 861
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/autofill/Session;->-$$Nest$maddCredentialManagerDataToClientState(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillRequest;Landroid/view/inputmethod/InlineSuggestionsRequest;I)Landroid/service/autofill/FillRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 863
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmRemoteFillService(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    iget-object v2, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v2}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmClient(Lcom/android/server/autofill/Session;)Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v2

    .line 864
    invoke-interface {v2}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 863
    invoke-virtual {v0, v1, v2}, Lcom/android/server/autofill/RemoteFillService;->onFillCredentialRequest(Landroid/service/autofill/FillRequest;Landroid/os/IBinder;)V

    goto :goto_10b

    .line 866
    :cond_100
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmRemoteFillService(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/RemoteFillService;->onFillRequest(Landroid/service/autofill/FillRequest;)V

    :cond_10b
    :goto_10b
    const/4 v0, 0x0

    .line 869
    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    const/4 v1, 0x0

    .line 870
    iput-boolean v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mWaitForInlineRequest:Z

    .line 871
    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 874
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v2}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmLatencyBaseTime(Lcom/android/server/autofill/Session;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 875
    iget-object v2, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v2}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmPresentationStatsEventLogger(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/PresentationStatsEventLogger;

    move-result-object v2

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetFillRequestSentTimestampMs(I)V

    .line 877
    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v1}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmFillRequestEventLogger(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/FillRequestEventLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetLatencyFillRequestSentMillis(I)V

    .line 879
    iget-object p0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {p0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmFillRequestEventLogger(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/FillRequestEventLogger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/autofill/FillRequestEventLogger;->logAndEndEvent()V

    return-void
.end method

.method public newAutofillRequestLocked(Lcom/android/server/autofill/ViewState;Z)Ljava/util/function/Consumer;
    .registers 4

    const/4 v0, 0x0

    .line 766
    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 767
    iput-boolean p2, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mWaitForInlineRequest:Z

    .line 768
    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    if-eqz p2, :cond_19

    .line 770
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 772
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 774
    new-instance p1, Lcom/android/server/autofill/InlineSuggestionRequestConsumer;

    invoke-direct {p1, p2, p0}, Lcom/android/server/autofill/InlineSuggestionRequestConsumer;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    return-object p1

    :cond_19
    return-object v0
.end method

.method public onHandleAssistData(Landroid/os/Bundle;)V
    .registers 15

    .line 884
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmRemoteFillService(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_22

    .line 885
    iget-object p0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    const-string/jumbo p1, "onHandleAssistData() called without a remote service. mForAugmentedAutofillOnly: %s"

    invoke-static {p0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmSessionFlags(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/Session$SessionFlags;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v0

    .line 889
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 885
    invoke-static {p0, v1, p1, v0}, Lcom/android/server/autofill/Session;->-$$Nest$mwtf(Lcom/android/server/autofill/Session;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 893
    :cond_22
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmCurrentViewId(Lcom/android/server/autofill/Session;)Landroid/view/autofill/AutofillId;

    move-result-object v0

    if-nez v0, :cond_32

    .line 895
    const-string p0, "AutofillSession"

    const-string p1, "No current view id - session might have finished"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 899
    :cond_32
    const-string/jumbo v2, "structure"

    const-class v3, Landroid/app/assist/AssistStructure;

    .line 900
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/assist/AssistStructure;

    if-nez v2, :cond_47

    .line 903
    const-string p0, "AutofillSession"

    const-string p1, "No assist structure - app might have crashed providing it"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 907
    :cond_47
    const-string/jumbo v3, "receiverExtras"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_58

    .line 909
    const-string p0, "AutofillSession"

    const-string p1, "No receiver extras - app might have crashed providing it"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 913
    :cond_58
    const-string v4, "android.service.autofill.extra.REQUEST_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 915
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_80

    .line 916
    const-string v3, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New structure for requestId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_80
    iget-object v3, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    iget-object v3, v3, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 927
    :try_start_85
    invoke-virtual {v2}, Landroid/app/assist/AssistStructure;->ensureDataForAutofill()V
    :try_end_88
    .catch Ljava/lang/RuntimeException; {:try_start_85 .. :try_end_88} :catch_1f5
    .catchall {:try_start_85 .. :try_end_88} :catchall_a4

    const/4 v4, 0x0

    .line 938
    :try_start_89
    invoke-static {v2, v4}, Lcom/android/server/autofill/Helper;->getAutofillIds(Landroid/app/assist/AssistStructure;Z)Ljava/util/ArrayList;

    move-result-object v5

    move v7, v4

    .line 939
    :goto_8e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_a8

    .line 940
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/autofill/AutofillId;

    iget-object v9, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    iget v9, v9, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v8, v9}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_8e

    :catchall_a4
    move-exception v0

    move-object p0, v0

    goto/16 :goto_208

    .line 944
    :cond_a8
    invoke-virtual {v2}, Landroid/app/assist/AssistStructure;->getFlags()I

    move-result v5

    .line 946
    iget-object v7, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v7}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmCompatMode(Lcom/android/server/autofill/Session;)Z

    move-result v7

    if-eqz v7, :cond_148

    .line 948
    iget-object v7, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v7}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmService(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v8}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmComponentName(Lcom/android/server/autofill/Session;)Landroid/content/ComponentName;

    move-result-object v8

    .line 950
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 949
    invoke-virtual {v7, v8}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUrlBarResourceIdsForCompatMode(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 951
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_e7

    .line 952
    const-string v8, "AutofillSession"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "url_bars in compat mode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e7
    if-eqz v7, :cond_146

    .line 955
    iget-object v8, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v2, v7}, Lcom/android/server/autofill/Helper;->sanitizeUrlBar(Landroid/app/assist/AssistStructure;[Ljava/lang/String;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/server/autofill/Session;->-$$Nest$fputmUrlBar(Lcom/android/server/autofill/Session;Landroid/app/assist/AssistStructure$ViewNode;)V

    .line 956
    iget-object v7, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v7}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmUrlBar(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v7

    if-eqz v7, :cond_146

    .line 957
    iget-object v7, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v7}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmUrlBar(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v7

    .line 958
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_130

    .line 959
    const-string v8, "AutofillSession"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting urlBar as id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " and domain "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v10}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmUrlBar(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v10

    .line 964
    invoke-virtual {v10}, Landroid/app/assist/AssistStructure$ViewNode;->getWebDomain()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 959
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_130
    new-instance v8, Lcom/android/server/autofill/ViewState;

    iget-object v9, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v9}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmIsPrimaryCredential(Lcom/android/server/autofill/Session;)Z

    move-result v10

    const/16 v11, 0x200

    invoke-direct {v8, v7, v9, v11, v10}, Lcom/android/server/autofill/ViewState;-><init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;IZ)V

    .line 972
    iget-object v9, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v9}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmViewStates(Lcom/android/server/autofill/Session;)Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_146
    or-int/lit8 v5, v5, 0x2

    :cond_148
    move v10, v5

    const/4 v5, 0x1

    .line 977
    invoke-virtual {v2, v5}, Landroid/app/assist/AssistStructure;->sanitizeForParceling(Z)V

    .line 979
    iget-object v7, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v7}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmContexts(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_15f

    .line 980
    iget-object v7, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v7, v8}, Lcom/android/server/autofill/Session;->-$$Nest$fputmContexts(Lcom/android/server/autofill/Session;Ljava/util/ArrayList;)V

    .line 982
    :cond_15f
    iget-object v5, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v5}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmContexts(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v7, Landroid/service/autofill/FillContext;

    invoke-direct {v7, v6, v2, v0}, Landroid/service/autofill/FillContext;-><init>(ILandroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 984
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$mcancelCurrentRequestLocked(Lcom/android/server/autofill/Session;)V

    .line 986
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmContexts(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v4

    :goto_17d
    if-ge v2, v0, :cond_191

    .line 988
    iget-object v5, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v5}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmContexts(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/autofill/FillContext;

    invoke-static {v5, v7, v10}, Lcom/android/server/autofill/Session;->-$$Nest$mfillContextWithAllowedValuesLocked(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillContext;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17d

    .line 991
    :cond_191
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 992
    invoke-static {v0, v4}, Lcom/android/server/autofill/Session;->-$$Nest$mmergePreviousSessionLocked(Lcom/android/server/autofill/Session;Z)Ljava/util/ArrayList;

    move-result-object v7

    .line 993
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$mgetTypeHintsForProvider(Lcom/android/server/autofill/Session;)Ljava/util/List;

    move-result-object v8

    .line 995
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmClientState(Lcom/android/server/autofill/Session;)Landroid/os/Bundle;

    move-result-object v0

    .line 996
    invoke-static {}, Lcom/android/server/autofill/Session;->-$$Nest$sfgetmRequestId()Lcom/android/server/autofill/RequestId;

    .line 997
    invoke-static {v6}, Lcom/android/server/autofill/RequestId;->isSecondaryProvider(I)Z

    move-result v2

    if-eqz v2, :cond_1b2

    .line 998
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmClientStateForSecondary(Lcom/android/server/autofill/Session;)Landroid/os/Bundle;

    move-result-object v0

    :cond_1b2
    move-object v9, v0

    .line 1001
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0, v6}, Lcom/android/server/autofill/Session;->-$$Nest$mcreatePendingIntent(Lcom/android/server/autofill/Session;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/autofill/Session;->-$$Nest$fputmDelayedFillPendingIntent(Lcom/android/server/autofill/Session;Landroid/app/PendingIntent;)V

    .line 1002
    new-instance v5, Landroid/service/autofill/FillRequest;

    .line 1010
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmDelayedFillPendingIntent(Lcom/android/server/autofill/Session;)Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_1c8

    :goto_1c6
    move-object v12, v1

    goto :goto_1d3

    .line 1012
    :cond_1c8
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmDelayedFillPendingIntent(Lcom/android/server/autofill/Session;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    goto :goto_1c6

    :goto_1d3
    const/4 v11, 0x0

    invoke-direct/range {v5 .. v12}, Landroid/service/autofill/FillRequest;-><init>(ILjava/util/List;Ljava/util/List;Landroid/os/Bundle;ILandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/content/IntentSender;)V

    .line 1014
    iput-object v5, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 1015
    invoke-virtual {p0}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->maybeRequestFillLocked()V

    .line 1016
    monitor-exit v3
    :try_end_1dd
    .catchall {:try_start_89 .. :try_end_1dd} :catchall_a4

    .line 1018
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmActivityToken(Lcom/android/server/autofill/Session;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_207

    .line 1019
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmService(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {p0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmActivityToken(Lcom/android/server/autofill/Session;)Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sendActivityAssistDataToContentCapture(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    return-void

    :catch_1f5
    move-exception v0

    move-object p1, v0

    .line 929
    :try_start_1f7
    iget-object p0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    const-string v0, "Exception lazy loading assist structure for %s: %s"

    .line 932
    invoke-virtual {v2}, Landroid/app/assist/AssistStructure;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    .line 929
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/autofill/Session;->-$$Nest$mwtf(Lcom/android/server/autofill/Session;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 934
    monitor-exit v3

    :cond_207
    return-void

    .line 1016
    :goto_208
    monitor-exit v3
    :try_end_209
    .catchall {:try_start_1f7 .. :try_end_209} :catchall_a4

    throw p0
.end method

.method public onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 0
    return-void
.end method

.method public processDelayedFillLocked(ILandroid/service/autofill/FillResponse;)V
    .registers 5

    .line 1030
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mLastFillRequest:Landroid/service/autofill/FillRequest;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v0

    if-ne p1, v0, :cond_25

    .line 1031
    const-string v0, "AutofillSession"

    const-string/jumbo v1, "processDelayedFillLocked: calling onFillRequestSuccess with new response"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmService(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v1

    .line 1038
    invoke-virtual {v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mLastFillRequest:Landroid/service/autofill/FillRequest;

    .line 1039
    invoke-virtual {p0}, Landroid/service/autofill/FillRequest;->getFlags()I

    move-result p0

    .line 1035
    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/android/server/autofill/Session;->onFillRequestSuccess(ILandroid/service/autofill/FillResponse;Ljava/lang/String;I)V

    :cond_25
    return-void
.end method
