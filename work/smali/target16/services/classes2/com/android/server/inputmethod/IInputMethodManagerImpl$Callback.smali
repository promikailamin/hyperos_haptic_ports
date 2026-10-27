.class public interface abstract Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;
.super Ljava/lang/Object;
.source "IInputMethodManagerImpl.java"


# virtual methods
.method public abstract acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V
.end method

.method public abstract addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
.end method

.method public abstract addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;
.end method

.method public abstract getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
.end method

.method public abstract getEnabledInputMethodList(I)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
.end method

.method public abstract getEnabledInputMethodListLegacy(I)Ljava/util/List;
.end method

.method public abstract getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;
.end method

.method public abstract getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;
.end method

.method public abstract getInputMethodList(II)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
.end method

.method public abstract getInputMethodListLegacy(II)Ljava/util/List;
.end method

.method public abstract getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I
.end method

.method public abstract getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
.end method

.method public abstract hideSoftInputFromServerForTest()V
.end method

.method public abstract isImeTraceEnabled()Z
.end method

.method public abstract isInputMethodPickerShownForTest()Z
.end method

.method public abstract isStylusHandwritingAvailableAsUser(IZ)Z
.end method

.method public abstract onImeSwitchButtonClickFromSystem(I)V
.end method

.method public abstract onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;Landroid/os/Binder;)V
.end method

.method public abstract prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract removeImeSurfaceFromWindow(Landroid/os/IBinder;)V
.end method

.method public abstract reportPerceptible(Landroid/os/IBinder;Z)V
.end method

.method public abstract setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V
.end method

.method public abstract setAllowedImesByPolicyForTest(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/util/List;)V
.end method

.method public abstract setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V
.end method

.method public abstract setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V
.end method

.method public abstract shouldShowImeSwitcherButtonForTest()Z
.end method

.method public abstract showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V
.end method

.method public abstract showInputMethodPickerFromSystem(II)V
.end method

.method public abstract startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V
.end method

.method public abstract startImeTrace()V
.end method

.method public abstract startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;IILandroid/os/ResultReceiver;ZI)V
.end method

.method public abstract startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V
.end method

.method public abstract stopImeTrace()V
.end method
