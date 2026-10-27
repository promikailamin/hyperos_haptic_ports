.class public final Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;
.super Lcom/android/server/inputmethod/InputMethodManagerInternal;
.source "InputMethodManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public static synthetic $r8$lambda$A6hG-PqGewzDamMc6Fe8Pp7JFkM(Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;ILcom/android/server/inputmethod/ClientState;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->lambda$unbindAccessibilityFromCurrentClient$1(ILcom/android/server/inputmethod/ClientState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L1FlzdMUD1qflDuU6HOLHBJce0w(Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;ZI)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->lambda$updateImeWindowStatus$0(ZI)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2

    .line 5683
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    return-void
.end method


# virtual methods
.method public getEnabledInputMethodListAsUser(I)Ljava/util/List;
    .registers 3

    .line 5712
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/16 v0, 0x3e8

    invoke-static {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mgetEnabledInputMethodListInternal(Lcom/android/server/inputmethod/InputMethodManagerService;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledInputMethodSubtypeListAsUser(Ljava/lang/String;ZI)Ljava/util/List;
    .registers 5

    .line 5720
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/16 v0, 0x3e8

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mgetEnabledInputMethodSubtypeListInternal(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInputMethodListAsUser(I)Ljava/util/List;
    .registers 4

    .line 5705
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mgetInputMethodListInternal(Lcom/android/server/inputmethod/InputMethodManagerService;III)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hideInputMethod(II)V
    .registers 5

    .line 5696
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x40b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5697
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 5698
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final synthetic lambda$unbindAccessibilityFromCurrentClient$1(ILcom/android/server/inputmethod/ClientState;)V
    .registers 3

    .line 5935
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;I)V

    return-void
.end method

.method public final synthetic lambda$updateImeWindowStatus$0(ZI)V
    .registers 4

    .line 5861
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5862
    :try_start_3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mupdateImeWindowStatusLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ZI)V

    .line 5863
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public maybeFinishStylusHandwriting()V
    .registers 3

    .line 5951
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x456

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5952
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onCreateInlineSuggestionsRequest(ILcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;)V
    .registers 6

    .line 5728
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v0

    .line 5729
    invoke-virtual {v0, p1}, Lcom/android/server/AccessibilityManagerInternal;->isTouchExplorationEnabled(I)Z

    move-result v0

    .line 5731
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 5732
    :try_start_b
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p0

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->onCreateInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;Z)V

    .line 5734
    monitor-exit v1

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_16

    throw p0
.end method

.method public onImeInputTargetVisibilityChanged(Landroid/os/IBinder;ZI)V
    .registers 6

    .line 5850
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5851
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mresolveImeUserIdFromDisplayIdLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)I

    move-result p3

    .line 5852
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->onImeInputTargetVisibilityChanged(Landroid/os/IBinder;Z)V

    .line 5854
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public onImeParentChanged(I)V
    .registers 5

    .line 5817
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5818
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mresolveImeUserIdFromDisplayIdLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)I

    move-result p1

    .line 5819
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    .line 5823
    iget-object v2, v1, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 5824
    invoke-virtual {v2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getLastImeTargetWindow()Landroid/os/IBinder;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    if-eq v2, v1, :cond_31

    .line 5826
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v1

    .line 5827
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmMenuController(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodMenuController;

    move-result-object p0

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodMenuController;->hide(II)V

    goto :goto_31

    :catchall_2f
    move-exception p0

    goto :goto_33

    .line 5829
    :cond_31
    :goto_31
    monitor-exit v0

    return-void

    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_2f

    throw p0
.end method

.method public onSessionForAccessibilityCreated(ILcom/android/internal/inputmethod/IAccessibilityInputMethodSession;I)V
    .registers 15

    .line 5879
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 5880
    :try_start_3
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 5881
    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 5883
    iget-object v3, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v3, :cond_58

    .line 5884
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v4, v3, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;I)V

    .line 5886
    iget-object v3, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v4, v3, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    invoke-direct {v5, v3, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;-><init>(Lcom/android/server/inputmethod/ClientState;ILcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)V

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5892
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/16 v3, 0xb

    const/4 v4, 0x1

    invoke-static {p2, v3, v4, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mattachNewAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService;IZI)V

    .line 5895
    iget-object p2, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object p3, p2, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-nez p3, :cond_31

    const/4 p3, 0x0

    :goto_2f
    move-object v5, p3

    goto :goto_34

    .line 5897
    :cond_31
    iget-object p3, p3, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    goto :goto_2f

    .line 5899
    :goto_34
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p2, p2, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    .line 5900
    invoke-static {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mcreateAccessibilityInputMethodSessions(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v6

    .line 5902
    new-instance v3, Lcom/android/internal/inputmethod/InputBindResult;

    .line 5905
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurId()Ljava/lang/String;

    move-result-object v8

    .line 5906
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSequenceNumber()I

    move-result v9

    const/4 v10, 0x0

    const/16 v4, 0x10

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    .line 5908
    iget-object p0, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object p0, p0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {p0, v3, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onBindAccessibilityService(Lcom/android/internal/inputmethod/InputBindResult;I)V

    goto :goto_58

    :catchall_55
    move-exception v0

    move-object p0, v0

    goto :goto_5a

    .line 5911
    :cond_58
    :goto_58
    monitor-exit v1

    return-void

    :goto_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_55

    throw p0
.end method

.method public onSwitchKeyboardLayoutShortcut(IILandroid/os/IBinder;)V
    .registers 5

    .line 5958
    const-class p3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p3

    .line 5959
    :try_start_3
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mresolveImeUserIdFromDisplayIdLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)I

    move-result p2

    .line 5960
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mswitchKeyboardLayoutLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/UserData;)V

    .line 5961
    monitor-exit p3

    return-void

    :catchall_14
    move-exception p0

    monitor-exit p3
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public removeImeSurface(I)V
    .registers 2

    .line 5835
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x424

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public reportImeControl(Landroid/os/IBinder;)V
    .registers 5

    .line 5802
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5803
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mresolveImeUserIdFromWindowLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)I

    move-result v1

    .line 5804
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    .line 5805
    iget-object v1, v1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    if-eq v1, p1, :cond_23

    .line 5810
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmFocusedWindowPerceptible(Lcom/android/server/inputmethod/InputMethodManagerService;)Ljava/util/WeakHashMap;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    :catchall_21
    move-exception p0

    goto :goto_25

    .line 5812
    :cond_23
    :goto_23
    monitor-exit v0

    return-void

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_21

    throw p0
.end method

.method public setHasVisibleImeLayeringOverlay(ZI)V
    .registers 5

    .line 5840
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5841
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mresolveImeUserIdFromDisplayIdLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)I

    move-result p2

    .line 5842
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->setHasVisibleImeLayeringOverlay(Z)V

    .line 5844
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public setInputMethodEnabled(Ljava/lang/String;ZI)Z
    .registers 6

    .line 5747
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5748
    :try_start_3
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v1

    .line 5749
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/InputMethodMap;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 p0, 0x0

    .line 5750
    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    goto :goto_1e

    .line 5752
    :cond_16
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetInputMethodEnabledLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;ZI)Z

    const/4 p0, 0x1

    .line 5753
    monitor-exit v0

    return p0

    .line 5754
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_14

    throw p0
.end method

.method public setInteractive(Z)V
    .registers 4

    .line 5689
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0xbd6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setVirtualDeviceInputMethodForAllUsers(ILjava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 5761
    :goto_5
    const-string v1, "DeviceId %d is not a virtual device id."

    .line 5762
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5761
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5763
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    if-nez p2, :cond_27

    .line 5765
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmVirtualDeviceMethodMap(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3c

    :catchall_25
    move-exception p0

    goto :goto_5a

    .line 5766
    :cond_27
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmVirtualDeviceMethodMap(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 5770
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmVirtualDeviceMethodMap(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5772
    :goto_3c
    monitor-exit v0

    return-void

    .line 5767
    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Virtual device "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " already has a custom input method component"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5772
    :goto_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_1b .. :try_end_5b} :catchall_25

    throw p0
.end method

.method public switchToInputMethod(Ljava/lang/String;II)Z
    .registers 5

    .line 5740
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5741
    :try_start_3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mswitchToInputMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 5742
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public transferTouchFocusToImeWindow(Landroid/os/IBinder;II)Z
    .registers 7

    .line 5786
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5787
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p3

    .line 5788
    invoke-virtual {p3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_14

    .line 5789
    monitor-exit v0

    return v2

    :catchall_12
    move-exception p0

    goto :goto_26

    .line 5791
    :cond_14
    invoke-virtual {p3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurHostInputToken()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_1c

    .line 5793
    monitor-exit v0

    return v2

    .line 5795
    :cond_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_12

    .line 5796
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/input/InputManagerInternal;->transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;Z)Z

    move-result p0

    return p0

    .line 5795
    :goto_26
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_12

    throw p0
.end method

.method public unbindAccessibilityFromCurrentClient(II)V
    .registers 8

    .line 5917
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5918
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p2

    .line 5919
    iget-object v1, p2, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 5921
    iget-object v2, p2, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v2, :cond_2f

    .line 5922
    sget-object v3, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string/jumbo v4, "unbindAccessibilityFromCurrentClientLocked: client=%s"

    iget-object v2, v2, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 5923
    invoke-virtual {v2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 5922
    invoke-static {v3, v4, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5926
    iget-object v2, p2, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 5927
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSequenceNumber()I

    move-result v3

    .line 5926
    invoke-virtual {v2, v3, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onUnbindAccessibilityService(II)V

    goto :goto_2f

    :catchall_2d
    move-exception p0

    goto :goto_59

    .line 5932
    :cond_2f
    :goto_2f
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 5934
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;I)V

    .line 5936
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmClientController(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/ClientController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/inputmethod/ClientController;->forAllClients(Ljava/util/function/Consumer;)V

    .line 5938
    iget-object v1, p2, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    if-eqz v1, :cond_57

    .line 5941
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mfinishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    .line 5942
    iget-object p0, p2, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 5945
    :cond_57
    monitor-exit v0

    return-void

    :goto_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_2d

    throw p0
.end method

.method public updateImeWindowStatus(ZI)V
    .registers 5

    .line 5860
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateShouldShowImeSwitcher(II)V
    .registers 4

    .line 5869
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 5870
    :try_start_3
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(I)V

    .line 5871
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p2

    .line 5872
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked(Lcom/android/server/inputmethod/UserData;)V

    .line 5873
    monitor-exit p1

    return-void

    :catchall_15
    move-exception p0

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method
