.class final Lcom/android/server/inputmethod/IInputMethodInvoker;
.super Ljava/lang/Object;
.source "IInputMethodInvoker.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "InputMethodManagerService"


# instance fields
.field private final mTarget:Lcom/android/internal/view/IInputMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/inputmethod/IInputMethodInvoker;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/view/IInputMethod;)V
    .registers 2
    .param p1, "target"    # Lcom/android/internal/view/IInputMethod;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/view/IInputMethod;

    .line 102
    return-void
.end method

.method static create(Lcom/android/internal/view/IInputMethod;)Lcom/android/server/inputmethod/IInputMethodInvoker;
    .registers 4
    .param p0, "inputMethod"    # Lcom/android/internal/view/IInputMethod;

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_4
    invoke-static {p0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 64
    new-instance v0, Lcom/android/server/inputmethod/IInputMethodInvoker;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;-><init>(Lcom/android/internal/view/IInputMethod;)V

    return-object v0

    .line 62
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must have been a BinderProxy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getBinderIdentityHashCode(Lcom/android/server/inputmethod/IInputMethodInvoker;)I
    .registers 2
    .param p0, "obj"    # Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 90
    if-nez p0, :cond_4

    .line 91
    const/4 v0, 0x0

    return v0

    .line 94
    :cond_4
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/view/IInputMethod;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static getCallerMethodName()Ljava/lang/String;
    .registers 3

    .line 74
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 75
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    const/4 v2, 0x4

    if-gt v1, v2, :cond_f

    .line 76
    const-string v1, "<bottom of call stack>"

    return-object v1

    .line 78
    :cond_f
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static logRemoteException(Landroid/os/RemoteException;)V
    .registers 3
    .param p0, "e"    # Landroid/os/RemoteException;

    .line 83
    sget-boolean v0, Lcom/android/server/inputmethod/IInputMethodInvoker;->DEBUG:Z

    if-nez v0, :cond_8

    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-nez v0, :cond_24

    .line 84
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IPC failed at IInputMethodInvoker#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/server/inputmethod/IInputMethodInvoker;->getCallerMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    :cond_24
    return-void
.end method


# virtual methods
.method asBinder()Landroid/os/IBinder;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method bindInput(Landroid/view/inputmethod/InputBinding;)V
    .registers 3
    .param p1, "binding"    # Landroid/view/inputmethod/InputBinding;

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 138
    goto :goto_a

    .line 136
    :catch_6
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 139
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method canStartStylusHandwriting(I)V
    .registers 3
    .param p1, "requestId"    # I

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputMethod;->canStartStylusHandwriting(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 228
    goto :goto_a

    .line 226
    :catch_6
    move-exception v0

    .line 227
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 229
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 3
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 219
    goto :goto_a

    .line 217
    :catch_6
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 220
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    .registers 4
    .param p1, "channel"    # Landroid/view/InputChannel;
    .param p2, "callback"    # Lcom/android/internal/view/IInputSessionCallback;

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputMethod;->createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 177
    goto :goto_a

    .line 175
    :catch_6
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 178
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method finishStylusHandwriting()V
    .registers 2

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethod;->finishStylusHandwriting()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 257
    goto :goto_a

    .line 255
    :catch_6
    move-exception v0

    .line 256
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 258
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method hideSoftInput(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z
    .registers 6
    .param p1, "hideInputToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/view/IInputMethod;->hideSoftInput(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_8

    .line 209
    nop

    .line 210
    const/4 v0, 0x1

    return v0

    .line 206
    :catch_8
    move-exception v0

    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 208
    const/4 v1, 0x0

    return v1
.end method

.method initInkWindow()V
    .registers 2

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethod;->initInkWindow()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 248
    goto :goto_a

    .line 246
    :catch_6
    move-exception v0

    .line 247
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 249
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method initializeInternal(Landroid/os/IBinder;Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;IZI)V
    .registers 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "privOps"    # Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    .param p3, "configChanges"    # I
    .param p4, "stylusHwSupported"    # Z
    .param p5, "navButtonFlags"    # I

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/view/IInputMethod;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/view/IInputMethod;->initializeInternal(Landroid/os/IBinder;Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;IZI)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 119
    goto :goto_f

    .line 117
    :catch_b
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 120
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method

.method onCreateInlineSuggestionsRequest(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V
    .registers 4
    .param p1, "requestInfo"    # Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    .param p2, "cb"    # Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputMethod;->onCreateInlineSuggestionsRequest(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 129
    goto :goto_a

    .line 127
    :catch_6
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 130
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method onNavButtonFlagsChanged(I)V
    .registers 3
    .param p1, "navButtonFlags"    # I

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputMethod;->onNavButtonFlagsChanged(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 168
    goto :goto_a

    .line 166
    :catch_6
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 169
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    .registers 4
    .param p1, "session"    # Lcom/android/internal/view/IInputMethodSession;
    .param p2, "enabled"    # Z

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 186
    goto :goto_a

    .line 184
    :catch_6
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 187
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method showSoftInput(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z
    .registers 6
    .param p1, "showInputToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/view/IInputMethod;->showSoftInput(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_8

    .line 197
    nop

    .line 198
    const/4 v0, 0x1

    return v0

    .line 194
    :catch_8
    move-exception v0

    .line 195
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 196
    const/4 v1, 0x0

    return v1
.end method

.method startInput(Landroid/os/IBinder;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;ZILandroid/window/ImeOnBackInvokedDispatcher;)V
    .registers 14
    .param p1, "startInputToken"    # Landroid/os/IBinder;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p4, "restarting"    # Z
    .param p5, "navButtonFlags"    # I
    .param p6, "imeDispatcher"    # Landroid/window/ImeOnBackInvokedDispatcher;

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/view/IInputMethod;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/view/IInputMethod;->startInput(Landroid/os/IBinder;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;ZILandroid/window/ImeOnBackInvokedDispatcher;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 159
    goto :goto_10

    .line 157
    :catch_c
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 160
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)Z
    .registers 6
    .param p1, "requestId"    # I
    .param p2, "channel"    # Landroid/view/InputChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/InputChannel;",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;)Z"
        }
    .end annotation

    .line 234
    .local p3, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/view/IInputMethod;->startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_8

    .line 238
    nop

    .line 239
    const/4 v0, 0x1

    return v0

    .line 235
    :catch_8
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 237
    const/4 v1, 0x0

    return v1
.end method

.method unbindInput()V
    .registers 2

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethod;->unbindInput()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 147
    goto :goto_a

    .line 145
    :catch_6
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 148
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method
