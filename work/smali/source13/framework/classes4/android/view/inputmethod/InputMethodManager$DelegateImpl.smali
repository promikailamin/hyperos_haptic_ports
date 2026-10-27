.class final Landroid/view/inputmethod/InputMethodManager$DelegateImpl;
.super Ljava/lang/Object;
.source "InputMethodManager.java"

# interfaces
.implements Landroid/view/ImeFocusController$InputMethodManagerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DelegateImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method private constructor blacklist <init>(Landroid/view/inputmethod/InputMethodManager;)V
    .registers 2

    .line 660
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$DelegateImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    return-void
.end method


# virtual methods
.method public blacklist closeCurrentIme()V
    .registers 2

    .line 736
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->closeCurrentInput()V

    .line 737
    return-void
.end method

.method public blacklist finishComposingText()V
    .registers 2

    .line 802
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    if-eqz v0, :cond_d

    .line 803
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->finishComposingTextFromImm()V

    .line 805
    :cond_d
    return-void
.end method

.method public blacklist finishInput()V
    .registers 5

    .line 703
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager.DelegateImpl#finishInput"

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 706
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 707
    :try_start_11
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 708
    monitor-exit v0

    .line 709
    return-void

    .line 708
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public blacklist finishInputAndReportToIme()V
    .registers 4

    .line 721
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 722
    :try_start_5
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 723
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCurrentInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodSessionWrapper;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 724
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCurrentInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodSessionWrapper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSessionWrapper;->finishInput()V

    .line 726
    :cond_1b
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    new-instance v2, Landroid/view/inputmethod/InputMethodManager$DelegateImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mforAccessibilitySessionsLocked(Landroid/view/inputmethod/InputMethodManager;Ljava/util/function/Consumer;)V

    .line 728
    monitor-exit v0

    .line 729
    return-void

    .line 728
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public blacklist hasActiveConnection(Landroid/view/View;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 852
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 853
    :try_start_5
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1, p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mhasServedByInputMethodLocked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_36

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCurrentInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodSessionWrapper;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_36

    .line 858
    :cond_17
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    if-eqz v1, :cond_33

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    .line 859
    invoke-virtual {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    .line 860
    invoke-virtual {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getServedView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_33

    const/4 v2, 0x1

    goto :goto_34

    :cond_33
    nop

    :goto_34
    monitor-exit v0

    .line 858
    return v2

    .line 855
    :cond_36
    :goto_36
    monitor-exit v0

    return v2

    .line 861
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public blacklist isCurrentRootView(Landroid/view/ViewRootImpl;)Z
    .registers 4
    .param p1, "rootView"    # Landroid/view/ViewRootImpl;

    .line 825
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 826
    :try_start_5
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-ne v1, p1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 827
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public blacklist isRestartOnNextWindowFocus(Z)Z
    .registers 5
    .param p1, "reset"    # Z

    .line 835
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v0

    .line 836
    .local v0, "result":Z
    if-eqz p1, :cond_e

    .line 837
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;Z)V

    .line 839
    :cond_e
    return v0
.end method

.method public blacklist setCurrentRootView(Landroid/view/ViewRootImpl;)V
    .registers 5
    .param p1, "rootView"    # Landroid/view/ViewRootImpl;

    .line 812
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 813
    :try_start_5
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmImeDispatcher(Landroid/view/inputmethod/InputMethodManager;)Landroid/window/ImeOnBackInvokedDispatcher;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v2, p1}, Landroid/window/ImeOnBackInvokedDispatcher;->switchRootView(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl;)V

    .line 814
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    .line 815
    monitor-exit v0

    .line 816
    return-void

    .line 815
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public blacklist startInput(ILandroid/view/View;III)Z
    .registers 16
    .param p1, "startInputReason"    # I
    .param p2, "focusedView"    # Landroid/view/View;
    .param p3, "startInputFlags"    # I
    .param p4, "softInputMode"    # I
    .param p5, "windowFlags"    # I

    .line 670
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager.DelegateImpl#startInput"

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 674
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->isImeBoostPropertyRead:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2f

    .line 675
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodManager;->mPerfBoost:Landroid/util/BoostFramework;

    .line 677
    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_2d

    .line 678
    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->mPerfBoost:Landroid/util/BoostFramework;

    const-string/jumbo v2, "ro.vendor.qti.sys.fw.use_ime_boost"

    const-string v4, "false"

    invoke-virtual {v0, v2, v4}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/view/inputmethod/InputMethodManager;->IME_BOOST_ENABLED:Z

    .line 680
    :cond_2d
    sput-boolean v1, Landroid/view/inputmethod/InputMethodManager;->isImeBoostPropertyRead:Z

    .line 683
    :cond_2f
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->IME_BOOST_ENABLED:Z

    if-ne v0, v1, :cond_3e

    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_3e

    .line 684
    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v2, 0x109f

    invoke-virtual {v0, v2, v3}, Landroid/util/BoostFramework;->perfEvent(ILjava/lang/String;)V

    .line 687
    :cond_3e
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 688
    :try_start_43
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, v2, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 689
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, v2, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 690
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v1, v2, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 691
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetServedViewLocked(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v1

    .line 692
    .local v1, "servedView":Landroid/view/View;
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_43 .. :try_end_56} :catchall_68

    .line 693
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 694
    if-eqz p2, :cond_5e

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    :cond_5e
    move-object v6, v3

    .line 693
    move v5, p1

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-virtual/range {v4 .. v9}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    move-result v0

    return v0

    .line 692
    .end local v1    # "servedView":Landroid/view/View;
    :catchall_68
    move-exception v1

    :try_start_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v1
.end method

.method public blacklist startInputAsyncOnWindowFocusGain(Landroid/view/View;IIZ)V
    .registers 28
    .param p1, "focusedView"    # Landroid/view/View;
    .param p2, "softInputMode"    # I
    .param p3, "windowFlags"    # I
    .param p4, "forceNewFocus"    # Z

    .line 745
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v7, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v9, 0x0

    invoke-static {v0, v8, v9}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetStartInputFlags(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;I)I

    move-result v0

    .line 746
    .local v0, "startInputFlags":I
    or-int/lit8 v22, v0, 0x8

    .line 748
    .end local v0    # "startInputFlags":I
    .local v22, "startInputFlags":I
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager.DelegateImpl#startInputAsyncOnWindowFocusGain"

    iget-object v2, v7, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 752
    iget-object v0, v7, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetFocusController(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/ImeFocusController;

    move-result-object v15

    .line 753
    .local v15, "controller":Landroid/view/ImeFocusController;
    if-nez v15, :cond_22

    .line 754
    return-void

    .line 756
    :cond_22
    move/from16 v14, p4

    invoke-virtual {v15, v14, v9}, Landroid/view/ImeFocusController;->checkFocus(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 761
    const/4 v2, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v4, v22

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->startInput(ILandroid/view/View;III)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 763
    return-void

    .line 767
    :cond_3c
    iget-object v0, v7, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 771
    :try_start_41
    invoke-virtual {v15}, Landroid/view/ImeFocusController;->getServedView()Landroid/view/View;

    move-result-object v0
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_45} :catch_b6
    .catchall {:try_start_41 .. :try_end_45} :catchall_b3

    .line 772
    .local v0, "servedView":Landroid/view/View;
    if-eqz v0, :cond_58

    if-ne v0, v8, :cond_58

    .line 773
    :try_start_49
    invoke-virtual/range {p0 .. p1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->hasActiveConnection(Landroid/view/View;)Z

    move-result v2
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4d} :catch_55
    .catchall {:try_start_49 .. :try_end_4d} :catchall_51

    if-eqz v2, :cond_58

    const/4 v9, 0x1

    goto :goto_59

    .line 794
    .end local v0    # "servedView":Landroid/view/View;
    :catchall_51
    move-exception v0

    move-object v4, v15

    goto/16 :goto_be

    .line 791
    :catch_55
    move-exception v0

    move-object v4, v15

    goto :goto_b8

    .line 773
    .restart local v0    # "servedView":Landroid/view/View;
    :cond_58
    nop

    :goto_59
    move v2, v9

    .line 774
    .local v2, "nextFocusHasConnection":Z
    :try_start_5a
    sget-boolean v3, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5c} :catch_b6
    .catchall {:try_start_5a .. :try_end_5c} :catchall_b3

    if-eqz v3, :cond_76

    .line 775
    :try_start_5e
    const-string v3, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reporting focus gain, without startInput, nextFocusIsServedView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_76} :catch_55
    .catchall {:try_start_5e .. :try_end_76} :catchall_51

    .line 779
    :cond_76
    if-eqz v2, :cond_7b

    .line 780
    const/4 v3, 0x2

    move v11, v3

    goto :goto_7d

    .line 781
    :cond_7b
    const/4 v3, 0x3

    move v11, v3

    :goto_7d
    nop

    .line 783
    .local v11, "startInputReason":I
    :try_start_7e
    iget-object v3, v7, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v10, v3, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, v7, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v12, v3, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    .line 785
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v13

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v3, v7, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 789
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v4, v7, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v4}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmImeDispatcher(Landroid/view/inputmethod/InputMethodManager;)Landroid/window/ImeOnBackInvokedDispatcher;

    move-result-object v21
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_a2} :catch_b6
    .catchall {:try_start_7e .. :try_end_a2} :catchall_b3

    .line 783
    move/from16 v14, v22

    move-object v4, v15

    .end local v15    # "controller":Landroid/view/ImeFocusController;
    .local v4, "controller":Landroid/view/ImeFocusController;
    move/from16 v15, p2

    move/from16 v16, p3

    move/from16 v20, v3

    :try_start_ab
    invoke-interface/range {v10 .. v21}, Lcom/android/internal/view/IInputMethodManager;->startInputOrWindowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_ae} :catch_b1
    .catchall {:try_start_ab .. :try_end_ae} :catchall_bd

    .line 793
    .end local v0    # "servedView":Landroid/view/View;
    .end local v2    # "nextFocusHasConnection":Z
    .end local v11    # "startInputReason":I
    nop

    .line 794
    :try_start_af
    monitor-exit v1

    .line 795
    return-void

    .line 791
    :catch_b1
    move-exception v0

    goto :goto_b8

    .line 794
    .end local v4    # "controller":Landroid/view/ImeFocusController;
    .restart local v15    # "controller":Landroid/view/ImeFocusController;
    :catchall_b3
    move-exception v0

    move-object v4, v15

    .end local v15    # "controller":Landroid/view/ImeFocusController;
    .restart local v4    # "controller":Landroid/view/ImeFocusController;
    goto :goto_be

    .line 791
    .end local v4    # "controller":Landroid/view/ImeFocusController;
    .restart local v15    # "controller":Landroid/view/ImeFocusController;
    :catch_b6
    move-exception v0

    move-object v4, v15

    .line 792
    .end local v15    # "controller":Landroid/view/ImeFocusController;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v4    # "controller":Landroid/view/ImeFocusController;
    :goto_b8
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v4    # "controller":Landroid/view/ImeFocusController;
    .end local v22    # "startInputFlags":I
    .end local p0    # "this":Landroid/view/inputmethod/InputMethodManager$DelegateImpl;
    .end local p1    # "focusedView":Landroid/view/View;
    .end local p2    # "softInputMode":I
    .end local p3    # "windowFlags":I
    .end local p4    # "forceNewFocus":Z
    throw v2

    .line 794
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v4    # "controller":Landroid/view/ImeFocusController;
    .restart local v22    # "startInputFlags":I
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodManager$DelegateImpl;
    .restart local p1    # "focusedView":Landroid/view/View;
    .restart local p2    # "softInputMode":I
    .restart local p3    # "windowFlags":I
    .restart local p4    # "forceNewFocus":Z
    :catchall_bd
    move-exception v0

    :goto_be
    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_af .. :try_end_bf} :catchall_bd

    throw v0
.end method
