.class public final Lcom/android/server/inputmethod/IInputMethodManagerImpl;
.super Lcom/android/internal/view/IInputMethodManager$Stub;
.source "IInputMethodManagerImpl.java"


# instance fields
.field public final mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;)V
    .registers 2

    .line 215
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    return-void
.end method

.method public static create(Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;)Lcom/android/server/inputmethod/IInputMethodManagerImpl;
    .registers 2

    .line 220
    new-instance v0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl;-><init>(Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;)V

    return-object v0
.end method


# virtual methods
.method public acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z
    .registers 6

    .line 420
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface/range {p0 .. p5}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V
    .registers 7

    .line 429
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface/range {p0 .. p6}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V

    return-void
.end method

.method public addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .registers 4

    .line 226
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    return-void
.end method

.method public addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .registers 2

    .line 442
    invoke-super {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->addVirtualStylusIdForTestSession_enforcePermission()V

    .line 444
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 478
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;
    .registers 2

    .line 231
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .registers 2

    .line 344
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledInputMethodList(I)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .registers 2

    .line 244
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getEnabledInputMethodList(I)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledInputMethodListLegacy(I)Ljava/util/List;
    .registers 2

    .line 257
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getEnabledInputMethodListLegacy(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;
    .registers 4

    .line 264
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;

    move-result-object p0

    return-object p0
.end method

.method public getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;
    .registers 1

    .line 466
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object p0

    return-object p0
.end method

.method public getInputMethodList(II)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .registers 3

    .line 238
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getInputMethodList(II)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object p0

    return-object p0
.end method

.method public getInputMethodListLegacy(II)Ljava/util/List;
    .registers 3

    .line 251
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getInputMethodListLegacy(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I
    .registers 2

    .line 361
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I

    move-result p0

    return p0
.end method

.method public getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .registers 2

    .line 270
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p0

    return-object p0
.end method

.method public hideSoftInputFromServerForTest()V
    .registers 1

    .line 276
    invoke-super {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideSoftInputFromServerForTest_enforcePermission()V

    .line 278
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->hideSoftInputFromServerForTest()V

    return-void
.end method

.method public isImeTraceEnabled()Z
    .registers 1

    .line 376
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->isImeTraceEnabled()Z

    move-result p0

    return p0
.end method

.method public isInputMethodPickerShownForTest()Z
    .registers 1

    .line 319
    invoke-super {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isInputMethodPickerShownForTest_enforcePermission()V

    .line 321
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->isInputMethodPickerShownForTest()Z

    move-result p0

    return p0
.end method

.method public isStylusHandwritingAvailableAsUser(IZ)Z
    .registers 3

    .line 436
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->isStylusHandwritingAvailableAsUser(IZ)Z

    move-result p0

    return p0
.end method

.method public onImeSwitchButtonClickFromSystem(I)V
    .registers 2

    .line 329
    invoke-super {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->onImeSwitchButtonClickFromSystem_enforcePermission()V

    .line 331
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->onImeSwitchButtonClickFromSystem(I)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 473
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    move-object v7, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;Landroid/os/Binder;)V

    return-void
.end method

.method public prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 412
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeImeSurfaceFromWindow(Landroid/os/IBinder;)V
    .registers 2

    .line 371
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->removeImeSurfaceFromWindow(Landroid/os/IBinder;)V

    return-void
.end method

.method public reportPerceptible(Landroid/os/IBinder;Z)V
    .registers 3

    .line 366
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->reportPerceptible(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V
    .registers 4

    .line 350
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V

    return-void
.end method

.method public setAllowedImesByPolicyForTest(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/util/List;)V
    .registers 3

    .line 459
    invoke-super {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->setAllowedImesByPolicyForTest_enforcePermission()V

    .line 461
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->setAllowedImesByPolicyForTest(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/util/List;)V

    return-void
.end method

.method public setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V
    .registers 4

    .line 356
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V

    return-void
.end method

.method public setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V
    .registers 4

    .line 450
    invoke-super {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->setStylusWindowIdleTimeoutForTest_enforcePermission()V

    .line 452
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V

    return-void
.end method

.method public shouldShowImeSwitcherButtonForTest()Z
    .registers 1

    .line 337
    invoke-super {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->shouldShowImeSwitcherButtonForTest_enforcePermission()V

    .line 339
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->shouldShowImeSwitcherButtonForTest()Z

    move-result p0

    return p0
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V
    .registers 3

    .line 303
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V

    return-void
.end method

.method public showInputMethodPickerFromSystem(II)V
    .registers 3

    .line 311
    invoke-super {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromSystem_enforcePermission()V

    .line 313
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->showInputMethodPickerFromSystem(II)V

    return-void
.end method

.method public startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V
    .registers 7

    .line 405
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface/range {p0 .. p6}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V

    return-void
.end method

.method public startImeTrace()V
    .registers 1

    .line 382
    invoke-super {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->startImeTrace_enforcePermission()V

    .line 384
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->startImeTrace()V

    return-void
.end method

.method public startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;IILandroid/os/ResultReceiver;ZI)V
    .registers 32

    move-object/from16 v0, p0

    .line 293
    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

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

.method public startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .registers 2

    .line 397
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    return-void
.end method

.method public stopImeTrace()V
    .registers 1

    .line 390
    invoke-super {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->stopImeTrace_enforcePermission()V

    .line 392
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->stopImeTrace()V

    return-void
.end method
