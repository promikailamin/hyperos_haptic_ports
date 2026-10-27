.class Lcom/android/server/inputmethod/InputMethodManagerInternal$1;
.super Lcom/android/server/inputmethod/InputMethodManagerInternal;
.source "InputMethodManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 184
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnabledInputMethodListAsUser(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 201
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputMethodListAsUser(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 195
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hideCurrentInputMethod(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 191
    return-void
.end method

.method public maybeFinishStylusHandwriting()V
    .registers 1

    .line 258
    return-void
.end method

.method public onCreateInlineSuggestionsRequest(ILcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "requestInfo"    # Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    .param p3, "cb"    # Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    .line 208
    return-void
.end method

.method public onImeParentChanged()V
    .registers 1

    .line 237
    return-void
.end method

.method public onSessionForAccessibilityCreated(ILcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)V
    .registers 3
    .param p1, "accessibilityConnectionId"    # I
    .param p2, "session"    # Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 250
    return-void
.end method

.method public registerInputMethodListListener(Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;

    .line 223
    return-void
.end method

.method public removeImeSurface()V
    .registers 1

    .line 241
    return-void
.end method

.method public reportImeControl(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 233
    return-void
.end method

.method public setInputMethodEnabled(Ljava/lang/String;ZI)Z
    .registers 5
    .param p1, "imeId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public setInteractive(Z)V
    .registers 2
    .param p1, "interactive"    # Z

    .line 187
    return-void
.end method

.method public switchToInputMethod(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "imeId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public transferTouchFocusToImeWindow(Landroid/os/IBinder;I)Z
    .registers 4
    .param p1, "sourceInputToken"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I

    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public unbindAccessibilityFromCurrentClient(I)V
    .registers 2
    .param p1, "accessibilityConnectionId"    # I

    .line 254
    return-void
.end method

.method public updateImeWindowStatus(Z)V
    .registers 2
    .param p1, "disableImeIcon"    # Z

    .line 245
    return-void
.end method
