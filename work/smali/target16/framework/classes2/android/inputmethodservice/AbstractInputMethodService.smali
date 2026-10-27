.class public abstract Landroid/inputmethodservice/AbstractInputMethodService;
.super Landroid/window/WindowProviderService;
.source "AbstractInputMethodService.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;,
        Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
    }
.end annotation


# instance fields
.field final greylist-max-o mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field private greylist-max-o mInputMethod:Landroid/view/inputmethod/InputMethod;

.field private blacklist mInputMethodServiceInternal:Landroid/inputmethodservice/InputMethodServiceInternal;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInputMethodServiceInternal(Landroid/inputmethodservice/AbstractInputMethodService;)Landroid/inputmethodservice/InputMethodServiceInternal;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethodServiceInternal:Landroid/inputmethodservice/InputMethodServiceInternal;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 71
    invoke-direct {p0}, Landroid/window/WindowProviderService;-><init>()V

    .line 96
    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    return-void
.end method


# virtual methods
.method blacklist createInputMethodServiceInternal()Landroid/inputmethodservice/InputMethodServiceInternal;
    .registers 2

    .line 277
    new-instance v0, Landroid/inputmethodservice/AbstractInputMethodService$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/AbstractInputMethodService$1;-><init>(Landroid/inputmethodservice/AbstractInputMethodService;)V

    return-object v0
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 257
    return-void
.end method

.method public final blacklist getInitialDisplayId()I
    .registers 2

    .line 344
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->getImeDisplayId()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 345
    :catch_9
    move-exception v0

    .line 346
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final blacklist getInputMethodInternal()Landroid/view/inputmethod/InputMethod;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    return-object v0
.end method

.method public whitelist getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;
    .registers 2

    .line 236
    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    return-object v0
.end method

.method public final blacklist getWindowContextOptions()Landroid/os/Bundle;
    .registers 2

    .line 337
    invoke-super {p0}, Landroid/window/WindowProviderService;->getWindowContextOptions()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getWindowType()I
    .registers 2

    .line 330
    const/16 v0, 0x7db

    return v0
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    .line 261
    iget-object p1, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    if-nez p1, :cond_a

    .line 262
    invoke-virtual {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onCreateInputMethodInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;

    move-result-object p1

    iput-object p1, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    .line 264
    :cond_a
    iget-object p1, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethodServiceInternal:Landroid/inputmethodservice/InputMethodServiceInternal;

    if-nez p1, :cond_14

    .line 265
    invoke-virtual {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->createInputMethodServiceInternal()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object p1

    iput-object p1, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethodServiceInternal:Landroid/inputmethodservice/InputMethodServiceInternal;

    .line 267
    :cond_14
    new-instance p1, Landroid/inputmethodservice/IInputMethodWrapper;

    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethodServiceInternal:Landroid/inputmethodservice/InputMethodServiceInternal;

    iget-object v1, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    invoke-direct {p1, v0, v1}, Landroid/inputmethodservice/IInputMethodWrapper;-><init>(Landroid/inputmethodservice/InputMethodServiceInternal;Landroid/view/inputmethod/InputMethod;)V

    return-object p1
.end method

.method public abstract whitelist onCreateInputMethodInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
.end method

.method public abstract whitelist onCreateInputMethodSessionInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 316
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onShouldVerifyKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    .line 324
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 305
    const/4 p1, 0x0

    return p1
.end method
