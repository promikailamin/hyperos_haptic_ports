.class final Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;
.super Lcom/android/server/inputmethod/InputMethodManagerInternal;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalServiceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2

    .line 5781
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    return-void
.end method


# virtual methods
.method public getEnabledInputMethodListAsUser(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 5804
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5805
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mgetEnabledInputMethodListLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 5806
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getInputMethodListAsUser(I)Ljava/util/List;
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 5797
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5798
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mgetInputMethodListLocked(Lcom/android/server/inputmethod/InputMethodManagerService;II)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 5799
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public hideCurrentInputMethod(I)V
    .registers 5
    .param p1, "reason"    # I

    .line 5791
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x40b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5792
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5793
    return-void
.end method

.method public maybeFinishStylusHandwriting()V
    .registers 3

    .line 5965
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x456

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5966
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5967
    return-void
.end method

.method public onCreateInlineSuggestionsRequest(ILcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "requestInfo"    # Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    .param p3, "cb"    # Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    .line 5813
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmAccessibilityManager(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    .line 5815
    .local v0, "touchExplorationEnabled":Z
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 5816
    :try_start_d
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v2, p1, p2, p3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$monCreateInlineSuggestionsRequestLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;Z)V

    .line 5818
    monitor-exit v1

    .line 5819
    return-void

    .line 5818
    :catchall_14
    move-exception v2

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v2
.end method

.method public onImeParentChanged()V
    .registers 3

    .line 5891
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5895
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmMenuController(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodMenuController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenu()V

    .line 5896
    monitor-exit v0

    .line 5897
    return-void

    .line 5896
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public onSessionForAccessibilityCreated(ILcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)V
    .registers 11
    .param p1, "accessibilityConnectionId"    # I
    .param p2, "session"    # Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 5913
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5914
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurClient(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 5915
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurClient(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;I)V

    .line 5916
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurClient(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurClient(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v3

    invoke-direct {v2, v3, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;ILcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5919
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewAccessibilityLocked(IZI)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v1

    .line 5922
    .local v1, "res":Lcom/android/internal/inputmethod/InputBindResult;
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurClient(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/16 v5, 0xbc3

    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurClient(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 5924
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 5922
    invoke-static {v4, v5, v6, v1, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mobtainMessageOOO(Lcom/android/server/inputmethod/InputMethodManagerService;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mexecuteOrSendMessage(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/internal/view/IInputMethodClient;Landroid/os/Message;)V

    .line 5926
    .end local v1    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    :cond_50
    monitor-exit v0

    .line 5927
    return-void

    .line 5926
    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_52

    throw v1
.end method

.method public registerInputMethodListListener(Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;

    .line 5861
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmInputMethodListListeners(Lcom/android/server/inputmethod/InputMethodManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 5862
    return-void
.end method

.method public removeImeSurface()V
    .registers 3

    .line 5901
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x424

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5902
    return-void
.end method

.method public reportImeControl(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 5880
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5881
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    if-eq v1, p1, :cond_f

    .line 5884
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fputmCurPerceptible(Lcom/android/server/inputmethod/InputMethodManagerService;Z)V

    .line 5886
    :cond_f
    monitor-exit v0

    .line 5887
    return-void

    .line 5886
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public setInputMethodEnabled(Ljava/lang/String;ZI)Z
    .registers 15
    .param p1, "imeId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 5830
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5831
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p3, v1, :cond_22

    .line 5832
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 5833
    monitor-exit v0

    return v3

    .line 5835
    :cond_1b
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetInputMethodEnabledLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;Z)Z

    .line 5836
    monitor-exit v0

    return v2

    .line 5838
    :cond_22
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mqueryMethodMapForUser(Lcom/android/server/inputmethod/InputMethodManagerService;I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 5839
    .local v1, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v10, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5840
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v9, 0x0

    move-object v4, v10

    move-object v7, v1

    move v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    move-object v4, v10

    .line 5842
    .local v4, "settings":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a

    .line 5843
    monitor-exit v0

    return v3

    .line 5845
    :cond_4a
    if-eqz p2, :cond_5e

    .line 5846
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v5

    .line 5847
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 5846
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6a

    .line 5848
    invoke-virtual {v4, p1, v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    goto :goto_6a

    .line 5851
    :cond_5e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 5853
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v5

    .line 5851
    invoke-virtual {v4, v3, v5, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    .line 5855
    :cond_6a
    :goto_6a
    monitor-exit v0

    return v2

    .line 5856
    .end local v1    # "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v4    # "settings":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method public setInteractive(Z)V
    .registers 5
    .param p1, "interactive"    # Z

    .line 5786
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xbd6

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5787
    return-void
.end method

.method public switchToInputMethod(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "imeId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5823
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5824
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mswitchToInputMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 5825
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public transferTouchFocusToImeWindow(Landroid/os/IBinder;I)Z
    .registers 5
    .param p1, "sourceInputToken"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I

    .line 5869
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5870
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurTokenDisplayId(Lcom/android/server/inputmethod/InputMethodManagerService;)I

    move-result v1

    if-ne p2, v1, :cond_24

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurHostInputToken(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_14

    goto :goto_24

    .line 5873
    :cond_14
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurHostInputToken(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/IBinder;

    move-result-object v1

    .line 5874
    .local v1, "curHostInputToken":Landroid/os/IBinder;
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_27

    .line 5875
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManagerInternal;->transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v0

    return v0

    .line 5871
    .end local v1    # "curHostInputToken":Landroid/os/IBinder;
    :cond_24
    :goto_24
    const/4 v1, 0x0

    :try_start_25
    monitor-exit v0

    return v1

    .line 5874
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public unbindAccessibilityFromCurrentClient(I)V
    .registers 12
    .param p1, "accessibilityConnectionId"    # I

    .line 5931
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5932
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurClient(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 5933
    sget-boolean v1, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v1, :cond_34

    .line 5934
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unbindAccessibilityFromCurrentClientLocked: client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurClient(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 5935
    invoke-interface {v3}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5934
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5939
    :cond_34
    const/4 v1, 0x7

    .line 5941
    .local v1, "unbindClientReason":I
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurClient(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v2

    iget-object v9, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/16 v3, 0xbb9

    .line 5942
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mgetSequenceNumberLocked(Lcom/android/server/inputmethod/InputMethodManagerService;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurClient(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v5

    iget-object v6, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 5943
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 5941
    move v5, v1

    invoke-static/range {v2 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mobtainMessageIIOO(Lcom/android/server/inputmethod/InputMethodManagerService;IIILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-static {v8, v9, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mexecuteOrSendMessage(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/internal/view/IInputMethodClient;Landroid/os/Message;)V

    .line 5947
    .end local v1    # "unbindClientReason":I
    :cond_59
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mgetCurMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v1

    if-eqz v1, :cond_94

    .line 5948
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 5949
    .local v1, "numClients":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6a
    if-ge v2, v1, :cond_7c

    .line 5950
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;I)V

    .line 5949
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    .line 5953
    .end local v2    # "i":I
    :cond_7c
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    .line 5955
    .local v2, "session":Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;
    if-eqz v2, :cond_94

    .line 5956
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mfinishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    .line 5957
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 5960
    .end local v1    # "numClients":I
    .end local v2    # "session":Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;
    :cond_94
    monitor-exit v0

    .line 5961
    return-void

    .line 5960
    :catchall_96
    move-exception v1

    monitor-exit v0
    :try_end_98
    .catchall {:try_start_3 .. :try_end_98} :catchall_96

    throw v1
.end method

.method public updateImeWindowStatus(Z)V
    .registers 5
    .param p1, "disableImeIcon"    # Z

    .line 5906
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x42e

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 5907
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5908
    return-void
.end method
