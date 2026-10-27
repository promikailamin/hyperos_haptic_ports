.class public final Lcom/android/server/inputmethod/ZeroJankProxy;
.super Ljava/lang/Object;
.source "ZeroJankProxy.java"

# interfaces
.implements Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;


# direct methods
.method public static synthetic $r8$lambda$2G_yBnELRu8-3pj86gRAZTQSJBY(Lcom/android/server/inputmethod/ZeroJankProxy;ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;IILandroid/os/ResultReceiver;ZI)V
    .registers 16

    .line 0
    invoke-virtual/range {p0 .. p15}, Lcom/android/server/inputmethod/ZeroJankProxy;->lambda$startInputOrWindowGainedFocus$2(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;IILandroid/os/ResultReceiver;ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$EeSEiQADRqGjilpwRHAcnjKaSwI(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/inputmethod/ZeroJankProxy;->lambda$acceptStylusHandwritingDelegationAsync$6(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TWrSxSOuyFy1_yHfY5wAW5bNcrU(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/Boolean;
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/inputmethod/ZeroJankProxy;->lambda$acceptStylusHandwritingDelegation$5(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$V0ZqpmDJQSHCFEus0JNa2UUMOY4(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ZeroJankProxy;->lambda$startStylusHandwriting$3(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WUdtZ2tp1_iIb2R8Q6G3Q0hd1Kg(JLjava/lang/Runnable;)V
    .registers 5

    .line 102
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 104
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    :try_start_7
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_d
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    goto :goto_15

    :catchall_b
    move-exception p0

    goto :goto_19

    :catch_d
    move-exception p0

    .line 109
    :try_start_e
    const-string p1, "InputMethodManagerService"

    const-string p2, "Error in async IMMS call"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_b

    .line 112
    :goto_15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 113
    throw p0
.end method

.method public static synthetic $r8$lambda$bot30NXrXhy90fS8O1PO5dM0etA(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/ZeroJankProxy;->lambda$prepareStylusHandwritingDelegation$7(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rp2V_xQZve-BllSUG-MH3fgFE0s(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/ZeroJankProxy;->lambda$addClient$1(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$w-khNRf-sMY8IGERvf26ToQa4Io(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/inputmethod/ZeroJankProxy;->lambda$startConnectionlessStylusHandwriting$4(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zwm76fC1ViRWLhoJV04CSZFLpTM(Lcom/android/server/inputmethod/ZeroJankProxy;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ZeroJankProxy;->offload(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;)V
    .registers 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 87
    iput-object p1, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z
    .registers 13

    .line 298
    :try_start_0
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda5;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)V

    new-instance p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda6;

    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;)V

    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    .line 302
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1e} :catch_27
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_1e} :catch_1f

    return p0

    :catch_1f
    move-exception v0

    move-object p0, v0

    .line 307
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_27
    move-exception v0

    move-object p0, v0

    .line 304
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 305
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V
    .registers 15

    .line 318
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;->offload(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .registers 5

    .line 123
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;->offload(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .registers 2

    .line 340
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 372
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;
    .registers 2

    .line 128
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .registers 2

    .line 228
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledInputMethodList(I)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .registers 2

    .line 139
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getEnabledInputMethodList(I)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledInputMethodListLegacy(I)Ljava/util/List;
    .registers 2

    .line 150
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getEnabledInputMethodListLegacy(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;
    .registers 4

    .line 157
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;

    move-result-object p0

    return-object p0
.end method

.method public getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;
    .registers 1

    .line 358
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object p0

    return-object p0
.end method

.method public getInputMethodList(II)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .registers 3

    .line 134
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getInputMethodList(II)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object p0

    return-object p0
.end method

.method public getInputMethodListLegacy(II)Ljava/util/List;
    .registers 3

    .line 145
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getInputMethodListLegacy(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I
    .registers 2

    .line 245
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I

    move-result p0

    return p0
.end method

.method public getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .registers 2

    .line 163
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p0

    return-object p0
.end method

.method public hideSoftInputFromServerForTest()V
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->hideSoftInputFromServerForTest()V

    return-void
.end method

.method public isImeTraceEnabled()Z
    .registers 1

    .line 260
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->isImeTraceEnabled()Z

    move-result p0

    return p0
.end method

.method public isInputMethodPickerShownForTest()Z
    .registers 1

    .line 209
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->isInputMethodPickerShownForTest()Z

    move-result p0

    return p0
.end method

.method public isStylusHandwritingAvailableAsUser(IZ)Z
    .registers 3

    .line 334
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->isStylusHandwritingAvailableAsUser(IZ)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$acceptStylusHandwritingDelegation$5(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/Boolean;
    .registers 6

    .line 299
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface/range {p0 .. p5}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$acceptStylusHandwritingDelegationAsync$6(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V
    .registers 7

    .line 318
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface/range {p0 .. p6}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V

    return-void
.end method

.method public final synthetic lambda$addClient$1(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .registers 4

    .line 123
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    return-void
.end method

.method public final synthetic lambda$prepareStylusHandwritingDelegation$7(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 328
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$startConnectionlessStylusHandwriting$4(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V
    .registers 7

    .line 285
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface/range {p0 .. p6}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V

    return-void
.end method

.method public final synthetic lambda$startInputOrWindowGainedFocus$2(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;IILandroid/os/ResultReceiver;ZI)V
    .registers 32

    move-object/from16 v0, p0

    .line 185
    iget-object v0, v0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-interface/range {v0 .. v15}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;IILandroid/os/ResultReceiver;ZI)V

    return-void
.end method

.method public final synthetic lambda$startStylusHandwriting$3(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .registers 2

    .line 277
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    return-void
.end method

.method public final offload(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    .registers 2

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ZeroJankProxy;->offloadInner(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final offload(Ljava/lang/Runnable;)V
    .registers 2

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ZeroJankProxy;->offloadInner(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final offloadInner(Ljava/lang/Runnable;)V
    .registers 5

    .line 99
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 101
    :try_start_4
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0, v1, p1}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;-><init>(JLjava/lang/Runnable;)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 116
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    throw p0
.end method

.method public onImeSwitchButtonClickFromSystem(I)V
    .registers 2

    .line 217
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->onImeSwitchButtonClickFromSystem(I)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;Landroid/os/Binder;)V
    .registers 8

    .line 366
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface/range {p0 .. p7}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;Landroid/os/Binder;)V

    return-void
.end method

.method public prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 328
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda3;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;->offload(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public removeImeSurfaceFromWindow(Landroid/os/IBinder;)V
    .registers 2

    .line 255
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->removeImeSurfaceFromWindow(Landroid/os/IBinder;)V

    return-void
.end method

.method public reportPerceptible(Landroid/os/IBinder;Z)V
    .registers 3

    .line 250
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->reportPerceptible(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V
    .registers 4

    .line 234
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V

    return-void
.end method

.method public setAllowedImesByPolicyForTest(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/util/List;)V
    .registers 3

    .line 353
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->setAllowedImesByPolicyForTest(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/util/List;)V

    return-void
.end method

.method public setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V
    .registers 4

    .line 240
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V

    return-void
.end method

.method public setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V
    .registers 4

    .line 346
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V

    return-void
.end method

.method public shouldShowImeSwitcherButtonForTest()Z
    .registers 1

    .line 223
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->shouldShowImeSwitcherButtonForTest()Z

    move-result p0

    return p0
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V
    .registers 3

    .line 195
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V

    return-void
.end method

.method public showInputMethodPickerFromSystem(II)V
    .registers 3

    .line 203
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->showInputMethodPickerFromSystem(II)V

    return-void
.end method

.method public startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V
    .registers 15

    .line 285
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;->offload(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public startImeTrace()V
    .registers 1

    .line 266
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->startImeTrace()V

    return-void
.end method

.method public startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;IILandroid/os/ResultReceiver;ZI)V
    .registers 33

    .line 185
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    invoke-direct/range {v0 .. v16}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;IILandroid/os/ResultReceiver;ZI)V

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;->offload(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .registers 3

    .line 277
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;)V

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;->offload(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public stopImeTrace()V
    .registers 1

    .line 272
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->stopImeTrace()V

    return-void
.end method
