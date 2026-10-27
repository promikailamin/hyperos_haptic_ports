.class final Lcom/android/server/autofill/Session$AssistDataReceiverImpl;
.super Landroid/app/IAssistDataReceiver$Stub;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AssistDataReceiverImpl"
.end annotation


# instance fields
.field private mLastFillRequest:Landroid/service/autofill/FillRequest;

.field private mPendingFillRequest:Landroid/service/autofill/FillRequest;

.field private mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

.field private mWaitForInlineRequest:Z

.field final synthetic this$0:Lcom/android/server/autofill/Session;


# direct methods
.method private constructor <init>(Lcom/android/server/autofill/Session;)V
    .registers 2

    .line 477
    iput-object p1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-direct {p0}, Landroid/app/IAssistDataReceiver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/autofill/Session;Lcom/android/server/autofill/Session$AssistDataReceiverImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;-><init>(Lcom/android/server/autofill/Session;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$newAutofillRequestLocked$0$com-android-server-autofill-Session$AssistDataReceiverImpl(Lcom/android/server/autofill/ViewState;Landroid/view/inputmethod/InlineSuggestionsRequest;)V
    .registers 5
    .param p1, "viewState"    # Lcom/android/server/autofill/ViewState;
    .param p2, "inlineSuggestionsRequest"    # Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 493
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    iget-object v0, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 494
    :try_start_5
    iget-boolean v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mWaitForInlineRequest:Z

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    if-eqz v1, :cond_e

    goto :goto_21

    .line 497
    :cond_e
    if-eqz p2, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    iput-boolean v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mWaitForInlineRequest:Z

    .line 498
    iput-object p2, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 499
    invoke-virtual {p0}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->maybeRequestFillLocked()V

    .line 500
    const/high16 v1, 0x10000

    invoke-virtual {p1, v1}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 501
    monitor-exit v0

    .line 502
    return-void

    .line 495
    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    .line 501
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw v1
.end method

.method maybeRequestFillLocked()V
    .registers 9

    .line 507
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    if-nez v0, :cond_5

    .line 508
    return-void

    .line 511
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mWaitForInlineRequest:Z

    if-eqz v0, :cond_36

    .line 512
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    if-nez v0, :cond_e

    .line 513
    return-void

    .line 516
    :cond_e
    new-instance v0, Landroid/service/autofill/FillRequest;

    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v2

    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 517
    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getFillContexts()Ljava/util/List;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getClientState()Landroid/os/Bundle;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 518
    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getFlags()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 519
    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getDelayedFillIntentSender()Landroid/content/IntentSender;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/service/autofill/FillRequest;-><init>(ILjava/util/List;Landroid/os/Bundle;ILandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/content/IntentSender;)V

    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 521
    :cond_36
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mLastFillRequest:Landroid/service/autofill/FillRequest;

    .line 523
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmRemoteFillService(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/RemoteFillService;->onFillRequest(Landroid/service/autofill/FillRequest;)V

    .line 524
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 525
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mWaitForInlineRequest:Z

    .line 526
    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 527
    return-void
.end method

.method newAutofillRequestLocked(Lcom/android/server/autofill/ViewState;Z)Ljava/util/function/Consumer;
    .registers 4
    .param p1, "viewState"    # Lcom/android/server/autofill/ViewState;
    .param p2, "isInlineRequest"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/autofill/ViewState;",
            "Z)",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;"
        }
    .end annotation

    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 490
    iput-boolean p2, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mWaitForInlineRequest:Z

    .line 491
    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 492
    if-eqz p2, :cond_f

    new-instance v0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/Session$AssistDataReceiverImpl;Lcom/android/server/autofill/ViewState;)V

    goto :goto_10

    .line 502
    :cond_f
    nop

    .line 492
    :goto_10
    return-object v0
.end method

.method public onHandleAssistData(Landroid/os/Bundle;)V
    .registers 21
    .param p1, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 531
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmRemoteFillService(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_28

    .line 532
    iget-object v0, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    const-string/jumbo v6, "onHandleAssistData() called without a remote service. mForAugmentedAutofillOnly: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmSessionFlags(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/Session$SessionFlags;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/autofill/Session$SessionFlags;->-$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z

    move-result v7

    .line 533
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v4

    .line 532
    invoke-static {v0, v3, v6, v5}, Lcom/android/server/autofill/Session;->-$$Nest$mwtf(Lcom/android/server/autofill/Session;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    return-void

    .line 537
    :cond_28
    iget-object v0, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmCurrentViewId(Lcom/android/server/autofill/Session;)Landroid/view/autofill/AutofillId;

    move-result-object v6

    .line 538
    .local v6, "currentViewId":Landroid/view/autofill/AutofillId;
    if-nez v6, :cond_38

    .line 539
    const-string v0, "AutofillSession"

    const-string v3, "No current view id - session might have finished"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return-void

    .line 543
    :cond_38
    const-string/jumbo v0, "structure"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/assist/AssistStructure;

    .line 544
    .local v7, "structure":Landroid/app/assist/AssistStructure;
    if-nez v7, :cond_4c

    .line 545
    const-string v0, "AutofillSession"

    const-string v3, "No assist structure - app might have crashed providing it"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void

    .line 549
    :cond_4c
    const-string/jumbo v0, "receiverExtras"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 550
    .local v8, "receiverExtras":Landroid/os/Bundle;
    if-nez v8, :cond_5d

    .line 551
    const-string v0, "AutofillSession"

    const-string v3, "No receiver extras - app might have crashed providing it"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return-void

    .line 555
    :cond_5d
    const-string v0, "android.service.autofill.extra.REQUEST_ID"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 557
    .local v15, "requestId":I
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_89

    .line 558
    const-string v0, "AutofillSession"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New structure for requestId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_89
    iget-object v0, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    iget-object v14, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 569
    :try_start_8e
    invoke-virtual {v7}, Landroid/app/assist/AssistStructure;->ensureDataForAutofill()V
    :try_end_91
    .catch Ljava/lang/RuntimeException; {:try_start_8e .. :try_end_91} :catch_202
    .catchall {:try_start_8e .. :try_end_91} :catchall_1fc

    .line 574
    nop

    .line 576
    :try_start_92
    invoke-static {v7, v4}, Lcom/android/server/autofill/Helper;->getAutofillIds(Landroid/app/assist/AssistStructure;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 578
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_97
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10
    :try_end_9b
    .catchall {:try_start_92 .. :try_end_9b} :catchall_1fc

    if-ge v9, v10, :cond_b4

    .line 579
    :try_start_9d
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/autofill/AutofillId;

    iget-object v11, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    iget v11, v11, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v10, v11}, Landroid/view/autofill/AutofillId;->setSessionId(I)V
    :try_end_aa
    .catchall {:try_start_9d .. :try_end_aa} :catchall_ad

    .line 578
    add-int/lit8 v9, v9, 0x1

    goto :goto_97

    .line 632
    .end local v0    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v9    # "i":I
    :catchall_ad
    move-exception v0

    move-object/from16 v18, v14

    move/from16 v17, v15

    goto/16 :goto_21e

    .line 583
    .restart local v0    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    :cond_b4
    :try_start_b4
    invoke-virtual {v7}, Landroid/app/assist/AssistStructure;->getFlags()I

    move-result v9

    .line 585
    .local v9, "flags":I
    iget-object v10, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v10}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmCompatMode(Lcom/android/server/autofill/Session;)Z

    move-result v10
    :try_end_be
    .catchall {:try_start_b4 .. :try_end_be} :catchall_1fc

    if-eqz v10, :cond_158

    .line 587
    :try_start_c0
    iget-object v10, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v10}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmService(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v11}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmComponentName(Lcom/android/server/autofill/Session;)Landroid/content/ComponentName;

    move-result-object v11

    .line 588
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 587
    invoke-virtual {v10, v11}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUrlBarResourceIdsForCompatMode(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 589
    .local v10, "urlBarIds":[Ljava/lang/String;
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v11, :cond_f5

    .line 590
    const-string v11, "AutofillSession"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "url_bars in compat mode: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_f5
    if-eqz v10, :cond_154

    .line 593
    iget-object v11, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v7, v10}, Lcom/android/server/autofill/Helper;->sanitizeUrlBar(Landroid/app/assist/AssistStructure;[Ljava/lang/String;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/autofill/Session;->-$$Nest$fputmUrlBar(Lcom/android/server/autofill/Session;Landroid/app/assist/AssistStructure$ViewNode;)V

    .line 594
    iget-object v11, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v11}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmUrlBar(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v11

    if-eqz v11, :cond_154

    .line 595
    iget-object v11, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v11}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmUrlBar(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v11

    .line 596
    .local v11, "urlBarId":Landroid/view/autofill/AutofillId;
    sget-boolean v12, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v12, :cond_142

    .line 597
    const-string v12, "AutofillSession"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting urlBar as id="

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " and domain "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v13, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v13}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmUrlBar(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v13

    .line 598
    invoke-virtual {v13}, Landroid/app/assist/AssistStructure$ViewNode;->getWebDomain()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 597
    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_142
    new-instance v3, Lcom/android/server/autofill/ViewState;

    iget-object v12, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    const/16 v13, 0x200

    invoke-direct {v3, v11, v12, v13}, Lcom/android/server/autofill/ViewState;-><init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;I)V

    .line 602
    .local v3, "viewState":Lcom/android/server/autofill/ViewState;
    iget-object v12, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v12}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmViewStates(Lcom/android/server/autofill/Session;)Landroid/util/ArrayMap;

    move-result-object v12

    invoke-virtual {v12, v11, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_154
    .catchall {:try_start_c0 .. :try_end_154} :catchall_ad

    .line 605
    .end local v3    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v11    # "urlBarId":Landroid/view/autofill/AutofillId;
    :cond_154
    or-int/lit8 v9, v9, 0x2

    move v3, v9

    goto :goto_159

    .line 585
    .end local v10    # "urlBarIds":[Ljava/lang/String;
    :cond_158
    move v3, v9

    .line 607
    .end local v9    # "flags":I
    .local v3, "flags":I
    :goto_159
    :try_start_159
    invoke-virtual {v7, v5}, Landroid/app/assist/AssistStructure;->sanitizeForParceling(Z)V

    .line 609
    iget-object v9, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v9}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmContexts(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v9
    :try_end_162
    .catchall {:try_start_159 .. :try_end_162} :catchall_1fc

    if-nez v9, :cond_16e

    .line 610
    :try_start_164
    iget-object v9, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v9, v10}, Lcom/android/server/autofill/Session;->-$$Nest$fputmContexts(Lcom/android/server/autofill/Session;Ljava/util/ArrayList;)V
    :try_end_16e
    .catchall {:try_start_164 .. :try_end_16e} :catchall_ad

    .line 612
    :cond_16e
    :try_start_16e
    iget-object v5, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v5}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmContexts(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v9, Landroid/service/autofill/FillContext;

    invoke-direct {v9, v15, v7, v6}, Landroid/service/autofill/FillContext;-><init>(ILandroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v5, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v5}, Lcom/android/server/autofill/Session;->-$$Nest$mcancelCurrentRequestLocked(Lcom/android/server/autofill/Session;)V

    .line 616
    iget-object v5, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v5}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmContexts(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5
    :try_end_18b
    .catchall {:try_start_16e .. :try_end_18b} :catchall_1fc

    .line 617
    .local v5, "numContexts":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_18c
    if-ge v9, v5, :cond_1a0

    .line 618
    :try_start_18e
    iget-object v10, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v10}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmContexts(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/service/autofill/FillContext;

    invoke-static {v10, v11, v3}, Lcom/android/server/autofill/Session;->-$$Nest$mfillContextWithAllowedValuesLocked(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillContext;I)V
    :try_end_19d
    .catchall {:try_start_18e .. :try_end_19d} :catchall_ad

    .line 617
    add-int/lit8 v9, v9, 0x1

    goto :goto_18c

    .line 621
    .end local v9    # "i":I
    :cond_1a0
    :try_start_1a0
    iget-object v9, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 622
    invoke-static {v9, v4}, Lcom/android/server/autofill/Session;->-$$Nest$mmergePreviousSessionLocked(Lcom/android/server/autofill/Session;Z)Ljava/util/ArrayList;

    move-result-object v11

    .line 623
    .local v11, "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    iget-object v4, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v4, v15}, Lcom/android/server/autofill/Session;->-$$Nest$mcreatePendingIntent(Lcom/android/server/autofill/Session;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/android/server/autofill/Session;->-$$Nest$fputmDelayedFillPendingIntent(Lcom/android/server/autofill/Session;Landroid/app/PendingIntent;)V

    .line 624
    new-instance v4, Landroid/service/autofill/FillRequest;

    iget-object v9, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v9}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmClientState(Lcom/android/server/autofill/Session;)Landroid/os/Bundle;

    move-result-object v12

    const/16 v17, 0x0

    .line 626
    iget-object v9, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v9}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmDelayedFillPendingIntent(Lcom/android/server/autofill/Session;)Landroid/app/PendingIntent;

    move-result-object v9

    if-nez v9, :cond_1c4

    .line 627
    const/16 v16, 0x0

    goto :goto_1d0

    .line 628
    :cond_1c4
    iget-object v9, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v9}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmDelayedFillPendingIntent(Lcom/android/server/autofill/Session;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v9
    :try_end_1ce
    .catchall {:try_start_1a0 .. :try_end_1ce} :catchall_1fc

    move-object/from16 v16, v9

    :goto_1d0
    move-object v9, v4

    move v10, v15

    move v13, v3

    move-object/from16 v18, v14

    move-object/from16 v14, v17

    move/from16 v17, v15

    .end local v15    # "requestId":I
    .local v17, "requestId":I
    move-object/from16 v15, v16

    :try_start_1db
    invoke-direct/range {v9 .. v15}, Landroid/service/autofill/FillRequest;-><init>(ILjava/util/List;Landroid/os/Bundle;ILandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/content/IntentSender;)V

    .line 630
    .local v4, "request":Landroid/service/autofill/FillRequest;
    iput-object v4, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 631
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->maybeRequestFillLocked()V

    .line 632
    .end local v0    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v3    # "flags":I
    .end local v5    # "numContexts":I
    .end local v11    # "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    monitor-exit v18
    :try_end_1e4
    .catchall {:try_start_1db .. :try_end_1e4} :catchall_21d

    .line 634
    iget-object v0, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmActivityToken(Lcom/android/server/autofill/Session;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1fb

    .line 635
    iget-object v0, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmService(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v3}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmActivityToken(Lcom/android/server/autofill/Session;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sendActivityAssistDataToContentCapture(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    .line 637
    :cond_1fb
    return-void

    .line 632
    .end local v4    # "request":Landroid/service/autofill/FillRequest;
    .end local v17    # "requestId":I
    .restart local v15    # "requestId":I
    :catchall_1fc
    move-exception v0

    move-object/from16 v18, v14

    move/from16 v17, v15

    .end local v15    # "requestId":I
    .restart local v17    # "requestId":I
    goto :goto_21e

    .line 570
    .end local v17    # "requestId":I
    .restart local v15    # "requestId":I
    :catch_202
    move-exception v0

    move-object/from16 v18, v14

    move/from16 v17, v15

    move-object v3, v0

    .end local v15    # "requestId":I
    .restart local v17    # "requestId":I
    move-object v0, v3

    .line 571
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_209
    iget-object v3, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    const-string v9, "Exception lazy loading assist structure for %s: %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 572
    invoke-virtual {v7}, Landroid/app/assist/AssistStructure;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v11

    aput-object v11, v10, v4

    aput-object v0, v10, v5

    .line 571
    invoke-static {v3, v0, v9, v10}, Lcom/android/server/autofill/Session;->-$$Nest$mwtf(Lcom/android/server/autofill/Session;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    monitor-exit v18

    return-void

    .line 632
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_21d
    move-exception v0

    :goto_21e
    monitor-exit v18
    :try_end_21f
    .catchall {:try_start_209 .. :try_end_21f} :catchall_21d

    throw v0
.end method

.method public onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;

    .line 642
    return-void
.end method

.method processDelayedFillLocked(ILandroid/service/autofill/FillResponse;)V
    .registers 6
    .param p1, "requestId"    # I
    .param p2, "response"    # Landroid/service/autofill/FillResponse;

    .line 646
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mLastFillRequest:Landroid/service/autofill/FillRequest;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v0

    if-ne p1, v0, :cond_25

    .line 647
    const-string v0, "AutofillSession"

    const-string/jumbo v1, "processDelayedFillLocked: calling onFillRequestSuccess with new response"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmService(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v1

    .line 650
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mLastFillRequest:Landroid/service/autofill/FillRequest;

    invoke-virtual {v2}, Landroid/service/autofill/FillRequest;->getFlags()I

    move-result v2

    .line 649
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/autofill/Session;->onFillRequestSuccess(ILandroid/service/autofill/FillResponse;Ljava/lang/String;I)V

    .line 652
    :cond_25
    return-void
.end method
