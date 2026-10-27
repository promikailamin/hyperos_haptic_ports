.class Landroid/inputmethodservice/IInputMethodWrapper;
.super Lcom/android/internal/inputmethod/IInputMethod$Stub;
.source "IInputMethodWrapper.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;
    }
.end annotation


# static fields
.field private static final blacklist DO_CAN_START_STYLUS_HANDWRITING:I = 0x64

.field private static final blacklist DO_CHANGE_INPUTMETHOD_SUBTYPE:I = 0x50

.field private static final blacklist DO_COMMIT_HANDWRITING_DELEGATION_TEXT_IF_AVAILABLE:I = 0xaa

.field private static final blacklist DO_CREATE_INLINE_SUGGESTIONS_REQUEST:I = 0x5a

.field private static final blacklist DO_CREATE_SESSION:I = 0x28

.field private static final blacklist DO_DISCARD_HANDWRITING_DELEGATION_TEXT:I = 0xb4

.field private static final blacklist DO_DUMP:I = 0x1

.field private static final blacklist DO_FINISH_STYLUS_HANDWRITING:I = 0x82

.field private static final blacklist DO_HIDE_SOFT_INPUT:I = 0x46

.field private static final blacklist DO_INITIALIZE_INTERNAL:I = 0xa

.field private static final blacklist DO_INIT_INK_WINDOW:I = 0x78

.field private static final blacklist DO_ON_NAV_BUTTON_FLAGS_CHANGED:I = 0x23

.field private static final blacklist DO_REMOVE_STYLUS_HANDWRITING_WINDOW:I = 0x96

.field private static final blacklist DO_SET_INPUT_CONTEXT:I = 0x14

.field private static final blacklist DO_SET_SESSION_ENABLED:I = 0x2d

.field private static final blacklist DO_SET_STYLUS_WINDOW_IDLE_TIMEOUT:I = 0xa0

.field private static final blacklist DO_SHOW_SOFT_INPUT:I = 0x3c

.field private static final blacklist DO_START_INPUT:I = 0x20

.field private static final blacklist DO_START_STYLUS_HANDWRITING:I = 0x6e

.field private static final blacklist DO_UNSET_INPUT_CONTEXT:I = 0x1e

.field private static final blacklist DO_UPDATE_TOOL_TYPE:I = 0x8c

.field private static final blacklist TAG:Ljava/lang/String; = "InputMethodWrapper"


# instance fields
.field final greylist mCaller:Lcom/android/internal/os/HandlerCaller;

.field blacklist mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

.field final blacklist mContext:Landroid/content/Context;

.field final blacklist mInputMethod:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/inputmethod/InputMethod;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/inputmethodservice/InputMethodServiceInternal;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mTargetSdkVersion:I


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/InputMethodServiceInternal;Landroid/view/inputmethod/InputMethod;)V
    .registers 7

    .line 146
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInputMethod$Stub;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 147
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    .line 148
    invoke-interface {p1}, Landroid/inputmethodservice/InputMethodServiceInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mContext:Landroid/content/Context;

    .line 149
    new-instance v1, Lcom/android/internal/os/HandlerCaller;

    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, p0, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 150
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Ljava/lang/ref/WeakReference;

    .line 151
    invoke-interface {p1}, Landroid/inputmethodservice/InputMethodServiceInternal;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput p1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTargetSdkVersion:I

    .line 152
    return-void
.end method

.method private static blacklist isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z
    .registers 5

    .line 538
    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    invoke-interface {p1}, Landroid/inputmethodservice/InputMethodServiceInternal;->isServiceDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 539
    const/4 p0, 0x1

    return p0

    .line 541
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", InputMethod:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ", InputMethodServiceInternal:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist bindInput(Landroid/view/inputmethod/InputBinding;)V
    .registers 6

    .line 376
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    if-eqz v0, :cond_b

    .line 377
    const-string v0, "InputMethodWrapper"

    const-string v1, "bindInput must be paired with unbindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_b
    new-instance v0, Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/CancellationGroup;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 380
    new-instance v0, Landroid/inputmethodservice/RemoteInputConnection;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    .line 381
    invoke-virtual {p1}, Landroid/view/inputmethod/InputBinding;->getConnectionToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteInputConnection;

    move-result-object v2

    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v0, v1, v2, v3}, Landroid/inputmethodservice/RemoteInputConnection;-><init>(Ljava/lang/ref/WeakReference;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/CancellationGroup;)V

    .line 383
    new-instance v1, Landroid/view/inputmethod/InputBinding;

    invoke-direct {v1, v0, p1}, Landroid/view/inputmethod/InputBinding;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputBinding;)V

    .line 384
    iget-object p1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 385
    return-void
.end method

.method public blacklist canStartStylusHandwriting(ILcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 475
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 476
    nop

    .line 475
    const/16 v2, 0x64

    move v3, p1

    move-object v5, p2

    move-object v6, p3

    move v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIOO(IIILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 478
    return-void
.end method

.method public blacklist changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 5

    .line 465
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x50

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 467
    return-void
.end method

.method public blacklist commitHandwritingDelegationTextIfAvailable()V
    .registers 4

    .line 501
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 502
    const/16 v2, 0xaa

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 501
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 503
    return-void
.end method

.method public blacklist createSession(Landroid/view/InputChannel;Lcom/android/internal/inputmethod/IInputMethodSessionCallback;)V
    .registers 6

    .line 427
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x28

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 429
    return-void
.end method

.method public blacklist discardHandwritingDelegationText()V
    .registers 4

    .line 508
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xb4

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 509
    return-void
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .line 334
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/InputMethodServiceInternal;

    .line 335
    if-nez v0, :cond_b

    .line 336
    return-void

    .line 338
    :cond_b
    invoke-interface {v0}, Landroid/inputmethodservice/InputMethodServiceInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_40

    .line 341
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Permission Denial: can\'t dump InputMethodManager from from pid="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 342
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ", uid="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 343
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 341
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    return-void

    .line 347
    :cond_40
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 348
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v6

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 351
    :try_start_59
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x5

    invoke-virtual {v5, p2, p3, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_68

    .line 352
    const-string p1, "Timeout waiting for dump"

    invoke-virtual {v3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_68} :catch_69

    .line 356
    :cond_68
    goto :goto_6f

    .line 354
    :catch_69
    move-exception v0

    .line 355
    const-string p1, "Interrupted waiting for dump"

    invoke-virtual {v3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    :goto_6f
    return-void
.end method

.method public blacklist executeMessage(Landroid/os/Message;)V
    .registers 9

    .line 157
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethod;

    .line 158
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/InputMethodServiceInternal;

    .line 159
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xc

    sparse-switch v2, :sswitch_data_20e

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputMethodWrapper"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void

    .line 322
    :sswitch_34
    const-string p1, "DO_DISCARD_HANDWRITING_DELEGATION_TEXT"

    invoke-static {v0, v1, p1}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 323
    invoke-interface {v0}, Landroid/view/inputmethod/InputMethod;->discardHandwritingDelegationText()V

    .line 325
    :cond_3f
    return-void

    .line 315
    :sswitch_40
    const-string p1, "DO_COMMIT_HANDWRITING_DELEGATION_TEXT_IF_AVAILABLE"

    invoke-static {v0, v1, p1}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 317
    invoke-interface {v0}, Landroid/view/inputmethod/InputMethod;->commitHandwritingDelegationTextIfAvailable()V

    .line 319
    :cond_4b
    return-void

    .line 309
    :sswitch_4c
    const-string v2, "DO_SET_STYLUS_WINDOW_IDLE_TIMEOUT"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 310
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputMethod;->setStylusWindowIdleTimeoutForTest(J)V

    .line 312
    :cond_5f
    return-void

    .line 303
    :sswitch_60
    const-string p1, "DO_REMOVE_STYLUS_HANDWRITING_WINDOW"

    invoke-static {v0, v1, p1}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 304
    invoke-interface {v0}, Landroid/view/inputmethod/InputMethod;->removeStylusHandwritingWindow()V

    .line 306
    :cond_6b
    return-void

    .line 276
    :sswitch_6c
    const-string v2, "DO_UPDATE_TOOL_TYPE"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 277
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputMethod;->updateEditorToolType(I)V

    .line 279
    :cond_79
    return-void

    .line 297
    :sswitch_7a
    const-string p1, "DO_FINISH_STYLUS_HANDWRITING"

    invoke-static {v0, v1, p1}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_85

    .line 298
    invoke-interface {v0}, Landroid/view/inputmethod/InputMethod;->finishStylusHandwriting()V

    .line 300
    :cond_85
    return-void

    .line 291
    :sswitch_86
    const-string p1, "DO_INIT_INK_WINDOW"

    invoke-static {v0, v1, p1}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_91

    .line 292
    invoke-interface {v0}, Landroid/view/inputmethod/InputMethod;->initInkWindow()V

    .line 294
    :cond_91
    return-void

    .line 282
    :sswitch_92
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 283
    const-string v3, "DO_START_STYLUS_HANDWRITING"

    invoke-static {v0, v1, v3}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 284
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/view/InputChannel;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v0, p1, v1, v3}, Landroid/view/inputmethod/InputMethod;->startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)V

    .line 287
    :cond_ab
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 288
    return-void

    .line 266
    :sswitch_af
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 267
    const-string v5, "DO_CAN_START_STYLUS_HANDWRITING"

    invoke-static {v0, v1, v5}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 268
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/view/inputmethod/CursorAnchorInfo;

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_ca

    goto :goto_cb

    :cond_ca
    move v3, v4

    :goto_cb
    invoke-interface {v0, v1, v5, v6, v3}, Landroid/view/inputmethod/InputMethod;->canStartStylusHandwriting(ILcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)V

    .line 272
    :cond_ce
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 273
    return-void

    .line 256
    :sswitch_d2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 257
    const-string v2, "DO_CREATE_INLINE_SUGGESTIONS_REQUEST"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e9

    .line 258
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputMethod;->onCreateInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;)V

    .line 262
    :cond_e9
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 263
    return-void

    .line 251
    :sswitch_ed
    const-string v2, "DO_CHANGE_INPUTMETHOD_SUBTYPE"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 252
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 254
    :cond_fc
    return-void

    .line 239
    :sswitch_fd
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/inputmethod/ImeTracker$Token;

    .line 240
    const-string v2, "DO_HIDE_SOFT_INPUT"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_114

    .line 241
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, p1, v5}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 243
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputMethod;->hideSoftInputWithToken(Landroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_11b

    .line 245
    :cond_114
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, p1, v5}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 248
    :goto_11b
    return-void

    .line 226
    :sswitch_11c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/inputmethod/ImeTracker$Token;

    .line 228
    const-string v2, "DO_SHOW_SOFT_INPUT"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_133

    .line 229
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, p1, v5}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 231
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputMethod;->showSoftInputWithToken(Landroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_13a

    .line 233
    :cond_133
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, p1, v5}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 236
    :goto_13a
    return-void

    .line 221
    :sswitch_13b
    const-string v2, "DO_SET_SESSION_ENABLED"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_150

    .line 222
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/inputmethod/InputMethodSession;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_14c

    goto :goto_14d

    :cond_14c
    move v3, v4

    :goto_14d
    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputMethod;->setSessionEnabled(Landroid/view/inputmethod/InputMethodSession;Z)V

    .line 224
    :cond_150
    return-void

    .line 211
    :sswitch_151
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 212
    const-string v2, "DO_CREATE_SESSION"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16f

    .line 213
    new-instance v1, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;

    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/view/InputChannel;

    iget-object v4, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/inputmethod/IInputMethodSessionCallback;

    invoke-direct {v1, v2, v3, v4}, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;-><init>(Landroid/content/Context;Landroid/view/InputChannel;Lcom/android/internal/inputmethod/IInputMethodSessionCallback;)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputMethod;->createSession(Landroid/view/inputmethod/InputMethod$SessionCallback;)V

    .line 217
    :cond_16f
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 218
    return-void

    .line 206
    :sswitch_173
    const-string v2, "DO_ON_NAV_BUTTON_FLAGS_CHANGED"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_180

    .line 207
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputMethod;->onNavButtonFlagsChanged(I)V

    .line 209
    :cond_180
    return-void

    .line 195
    :sswitch_181
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 196
    const-string v2, "DO_START_INPUT"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_198

    .line 197
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/view/inputmethod/InputConnection;

    .line 198
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;

    .line 200
    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputMethod;->dispatchStartInput(Landroid/view/inputmethod/InputConnection;Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;)V

    .line 202
    :cond_198
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 203
    return-void

    .line 190
    :sswitch_19c
    const-string p1, "DO_UNSET_INPUT_CONTEXT"

    invoke-static {v0, v1, p1}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a7

    .line 191
    invoke-interface {v0}, Landroid/view/inputmethod/InputMethod;->unbindInput()V

    .line 193
    :cond_1a7
    return-void

    .line 184
    :sswitch_1a8
    const-string v2, "DO_SET_INPUT_CONTEXT"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b7

    .line 185
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/inputmethod/InputBinding;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V

    .line 187
    :cond_1b7
    return-void

    .line 179
    :sswitch_1b8
    const-string v2, "DO_INITIALIZE_INTERNAL"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c7

    .line 180
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/inputmethod/IInputMethod$InitParams;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputMethod;->initializeInternal(Lcom/android/internal/inputmethod/IInputMethod$InitParams;)V

    .line 182
    :cond_1c7
    return-void

    .line 161
    :sswitch_1c8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 162
    const-string v2, "DO_DUMP"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_209

    .line 163
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/io/FileDescriptor;

    .line 164
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/io/PrintWriter;

    .line 165
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    .line 166
    iget-object v4, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/CountDownLatch;

    .line 168
    :try_start_1e4
    invoke-interface {v1, v0, v2, v3}, Landroid/inputmethodservice/InputMethodServiceInternal;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1e7
    .catch Ljava/lang/RuntimeException; {:try_start_1e4 .. :try_end_1e7} :catch_1ed
    .catchall {:try_start_1e4 .. :try_end_1e7} :catchall_1eb

    .line 172
    :goto_1e7
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 173
    goto :goto_209

    .line 172
    :catchall_1eb
    move-exception p1

    goto :goto_205

    .line 169
    :catch_1ed
    move-exception v0

    .line 170
    :try_start_1ee
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_204
    .catchall {:try_start_1ee .. :try_end_204} :catchall_1eb

    goto :goto_1e7

    .line 172
    :goto_205
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 173
    throw p1

    .line 175
    :cond_209
    :goto_209
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 176
    return-void

    nop

    :sswitch_data_20e
    .sparse-switch
        0x1 -> :sswitch_1c8
        0xa -> :sswitch_1b8
        0x14 -> :sswitch_1a8
        0x1e -> :sswitch_19c
        0x20 -> :sswitch_181
        0x23 -> :sswitch_173
        0x28 -> :sswitch_151
        0x2d -> :sswitch_13b
        0x3c -> :sswitch_11c
        0x46 -> :sswitch_fd
        0x50 -> :sswitch_ed
        0x5a -> :sswitch_d2
        0x64 -> :sswitch_af
        0x6e -> :sswitch_92
        0x78 -> :sswitch_86
        0x82 -> :sswitch_7a
        0x8c -> :sswitch_6c
        0x96 -> :sswitch_60
        0xa0 -> :sswitch_4c
        0xaa -> :sswitch_40
        0xb4 -> :sswitch_34
    .end sparse-switch
.end method

.method public blacklist finishStylusHandwriting()V
    .registers 4

    .line 520
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 521
    return-void
.end method

.method public blacklist hideSoftInput(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 5

    .line 458
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 459
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x46

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 460
    return-void
.end method

.method public blacklist initInkWindow()V
    .registers 4

    .line 514
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 515
    return-void
.end method

.method public blacklist initializeInternal(Lcom/android/internal/inputmethod/IInputMethod$InitParams;)V
    .registers 5

    .line 362
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 363
    return-void
.end method

.method public blacklist onCreateInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;)V
    .registers 6

    .line 369
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 370
    const/16 v2, 0x5a

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 369
    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 371
    return-void
.end method

.method public blacklist onNavButtonFlagsChanged(I)V
    .registers 5

    .line 420
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 421
    const/16 v2, 0x23

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object p1

    .line 420
    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 422
    return-void
.end method

.method public blacklist removeStylusHandwritingWindow()V
    .registers 4

    .line 526
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 527
    return-void
.end method

.method public blacklist setSessionEnabled(Lcom/android/internal/inputmethod/IInputMethodSession;Z)V
    .registers 8

    .line 435
    const-string v0, "InputMethodWrapper"

    :try_start_2
    move-object v1, p1

    check-cast v1, Landroid/inputmethodservice/IInputMethodSessionWrapper;

    .line 436
    invoke-virtual {v1}, Landroid/inputmethodservice/IInputMethodSessionWrapper;->getInternalInputMethodSession()Landroid/view/inputmethod/InputMethodSession;

    move-result-object v1

    .line 437
    if-nez v1, :cond_22

    .line 438
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session is already finished: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void

    .line 441
    :cond_22
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 442
    if-eqz p2, :cond_2a

    const/4 p2, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p2, 0x0

    .line 441
    :goto_2b
    const/16 v4, 0x2d

    invoke-virtual {v3, v4, p2, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V
    :try_end_34
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_34} :catch_35

    .line 445
    goto :goto_4c

    .line 443
    :catch_35
    move-exception p2

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incoming session not of correct type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    :goto_4c
    return-void
.end method

.method public blacklist setStylusWindowIdleTimeoutForTest(J)V
    .registers 5

    .line 532
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 533
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/16 p2, 0xa0

    invoke-virtual {v1, p2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 532
    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 534
    return-void
.end method

.method public blacklist showSoftInput(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 5

    .line 451
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 452
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 453
    return-void
.end method

.method public blacklist startInput(Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;)V
    .registers 6

    .line 403
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    if-nez v0, :cond_12

    .line 404
    const-string v0, "InputMethodWrapper"

    const-string v1, "startInput must be called after bindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v0, Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/CancellationGroup;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 408
    :cond_12
    iget-object v0, p1, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->editorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTargetSdkVersion:I

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/EditorInfo;->makeCompatible(I)V

    .line 410
    iget-object v0, p1, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->remoteInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_2a

    .line 411
    :cond_1f
    new-instance v0, Landroid/inputmethodservice/RemoteInputConnection;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    iget-object v2, p1, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->remoteInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v0, v1, v2, v3}, Landroid/inputmethodservice/RemoteInputConnection;-><init>(Ljava/lang/ref/WeakReference;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/CancellationGroup;)V

    .line 414
    :goto_2a
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x20

    invoke-virtual {v2, v3, v0, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 415
    return-void
.end method

.method public blacklist startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/InputChannel;",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 493
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 494
    const/16 v2, 0x6e

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 493
    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 496
    return-void
.end method

.method public blacklist unbindInput()V
    .registers 4

    .line 390
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    if-eqz v0, :cond_d

    .line 392
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->cancelAll()V

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    goto :goto_14

    .line 395
    :cond_d
    const-string v0, "InputMethodWrapper"

    const-string v1, "unbindInput must be paired with bindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :goto_14
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 398
    return-void
.end method

.method public blacklist updateEditorToolType(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 484
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 485
    const/16 v2, 0x8c

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object p1

    .line 484
    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 486
    return-void
.end method
