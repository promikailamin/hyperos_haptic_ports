.class public Lcom/android/server/inputmethod/InputMethodManagerInternal$1;
.super Lcom/android/server/inputmethod/InputMethodManagerInternal;
.source "InputMethodManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 355
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnabledInputMethodListAsUser(I)Ljava/util/List;
    .registers 2

    .line 379
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public getEnabledInputMethodSubtypeListAsUser(Ljava/lang/String;ZI)Ljava/util/List;
    .registers 4

    .line 387
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public getInputMethodListAsUser(I)Ljava/util/List;
    .registers 2

    .line 371
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public hideInputMethod(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public maybeFinishStylusHandwriting()V
    .registers 1

    .line 0
    return-void
.end method

.method public onCreateInlineSuggestionsRequest(ILcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;)V
    .registers 4

    .line 0
    return-void
.end method

.method public onImeInputTargetVisibilityChanged(Landroid/os/IBinder;ZI)V
    .registers 4

    .line 0
    return-void
.end method

.method public onImeParentChanged(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onSessionForAccessibilityCreated(ILcom/android/internal/inputmethod/IAccessibilityInputMethodSession;I)V
    .registers 4

    .line 0
    return-void
.end method

.method public onSwitchKeyboardLayoutShortcut(IILandroid/os/IBinder;)V
    .registers 4

    .line 0
    return-void
.end method

.method public removeImeSurface(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public reportImeControl(Landroid/os/IBinder;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setHasVisibleImeLayeringOverlay(ZI)V
    .registers 3

    .line 0
    return-void
.end method

.method public setInputMethodEnabled(Ljava/lang/String;ZI)Z
    .registers 4

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public setInteractive(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public setVirtualDeviceInputMethodForAllUsers(ILjava/lang/String;)V
    .registers 3

    .line 0
    return-void
.end method

.method public switchToInputMethod(Ljava/lang/String;II)Z
    .registers 4

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public transferTouchFocusToImeWindow(Landroid/os/IBinder;II)Z
    .registers 4

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public unbindAccessibilityFromCurrentClient(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public updateImeWindowStatus(ZI)V
    .registers 3

    .line 0
    return-void
.end method

.method public updateShouldShowImeSwitcher(II)V
    .registers 3

    .line 0
    return-void
.end method
