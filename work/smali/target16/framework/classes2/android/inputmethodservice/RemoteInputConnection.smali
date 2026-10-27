.class final Landroid/inputmethodservice/RemoteInputConnection;
.super Ljava/lang/Object;
.source "RemoteInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;
    }
.end annotation


# static fields
.field private static final blacklist MAX_WAIT_TIME_MILLIS:I = 0x7d0

.field private static final blacklist TAG:Ljava/lang/String; = "RemoteInputConnection"


# instance fields
.field private final blacklist mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

.field private final blacklist mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

.field private final blacklist mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/RemoteInputConnection;I)V
    .registers 4

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iget-object v0, p1, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    iput-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    .line 120
    iget-object v0, p1, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->cloneWithSessionId(I)Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    move-result-object p2

    iput-object p2, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    .line 121
    iget-object p1, p1, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    iput-object p1, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 122
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/ref/WeakReference;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/CancellationGroup;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/inputmethodservice/InputMethodServiceInternal;",
            ">;",
            "Lcom/android/internal/inputmethod/IRemoteInputConnection;",
            "Lcom/android/internal/inputmethod/CancellationGroup;",
            ")V"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;-><init>(Ljava/lang/ref/WeakReference;Landroid/inputmethodservice/RemoteInputConnection-IA;)V

    iput-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    .line 109
    invoke-static {p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->create(Lcom/android/internal/inputmethod/IRemoteInputConnection;)Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    move-result-object p1

    iput-object p1, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    .line 110
    iput-object p3, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 111
    return-void
.end method

.method private blacklist notifyUserActionIfNecessary()V
    .registers 2

    .line 306
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v0}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v0

    .line 307
    if-nez v0, :cond_9

    .line 308
    return-void

    .line 310
    :cond_9
    invoke-interface {v0}, Landroid/inputmethodservice/InputMethodServiceInternal;->notifyUserActionIfNecessary()V

    .line 311
    return-void
.end method


# virtual methods
.method public whitelist beginBatchEdit()Z
    .registers 2

    .line 374
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->beginBatchEdit()Z

    move-result v0

    return v0
.end method

.method public whitelist clearMetaKeyStates(I)Z
    .registers 3

    .line 393
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->clearMetaKeyStates(I)Z

    move-result p1

    return p1
.end method

.method public whitelist closeConnection()V
    .registers 1

    .line 494
    return-void
.end method

.method public whitelist commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 3

    .line 315
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    move-result p1

    return p1
.end method

.method public whitelist commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .registers 11

    .line 498
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 499
    return v1

    .line 502
    :cond_a
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1a

    .line 503
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v0}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v0

    .line 504
    if-nez v0, :cond_17

    .line 505
    return v1

    .line 507
    :cond_17
    invoke-interface {v0, p1, p0}, Landroid/inputmethodservice/InputMethodServiceInternal;->exposeContent(Landroid/view/inputmethod/InputContentInfo;Landroid/view/inputmethod/InputConnection;)V

    .line 510
    :cond_1a
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    .line 511
    invoke-virtual {v0, p1, p2, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    .line 512
    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "commitContent()"

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrFalse(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Z

    move-result p1

    return p1
.end method

.method public whitelist commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .registers 3

    .line 320
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    move-result p1

    return p1
.end method

.method public whitelist commitText(Ljava/lang/CharSequence;I)Z
    .registers 4

    .line 286
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p1

    .line 287
    if-eqz p1, :cond_b

    .line 288
    invoke-direct {p0}, Landroid/inputmethodservice/RemoteInputConnection;->notifyUserActionIfNecessary()V

    .line 290
    :cond_b
    return p1
.end method

.method public whitelist commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .registers 5

    .line 296
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    .line 297
    invoke-virtual {v0, p1, p2, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    move-result p1

    .line 298
    if-eqz p1, :cond_b

    .line 299
    invoke-direct {p0}, Landroid/inputmethodservice/RemoteInputConnection;->notifyUserActionIfNecessary()V

    .line 301
    :cond_b
    return p1
.end method

.method public whitelist deleteSurroundingText(II)Z
    .registers 4

    .line 398
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->deleteSurroundingText(II)Z

    move-result p1

    return p1
.end method

.method public whitelist deleteSurroundingTextInCodePoints(II)Z
    .registers 4

    .line 403
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->deleteSurroundingTextInCodePoints(II)Z

    move-result p1

    return p1
.end method

.method public whitelist endBatchEdit()Z
    .registers 2

    .line 379
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->endBatchEdit()Z

    move-result v0

    return v0
.end method

.method public whitelist finishComposingText()Z
    .registers 2

    .line 369
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->finishComposingText()Z

    move-result v0

    return v0
.end method

.method public whitelist getCursorCapsMode(I)I
    .registers 9

    .line 246
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 247
    const/4 p1, 0x0

    return p1

    .line 250
    :cond_a
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->getCursorCapsMode(I)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    .line 251
    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "getCursorCapsMode()"

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrZero(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)I

    move-result v0

    .line 254
    iget-object v1, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v1}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v1

    .line 255
    if-eqz v1, :cond_37

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 256
    invoke-static {p1, v0}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetCursorCapsModeProto(II)[B

    move-result-object p1

    .line 258
    const-string v2, "RemoteInputConnection#getCursorCapsMode"

    invoke-interface {v1, v2, p1}, Landroid/inputmethodservice/InputMethodServiceInternal;->triggerServiceDump(Ljava/lang/String;[B)V

    .line 261
    :cond_37
    return v0
.end method

.method public whitelist getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 10

    .line 266
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 267
    const/4 p1, 0x0

    return-object p1

    .line 270
    :cond_a
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    .line 271
    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "getExtractedText()"

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrNull(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/ExtractedText;

    .line 274
    iget-object v1, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v1}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v1

    .line 275
    if-eqz v1, :cond_39

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 276
    invoke-static {p1, p2, v0}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetExtractedTextProto(Landroid/view/inputmethod/ExtractedTextRequest;ILandroid/view/inputmethod/ExtractedText;)[B

    move-result-object p1

    .line 278
    const-string p2, "RemoteInputConnection#getExtractedText"

    invoke-interface {v1, p2, p1}, Landroid/inputmethodservice/InputMethodServiceInternal;->triggerServiceDump(Ljava/lang/String;[B)V

    .line 281
    :cond_39
    return-object v0
.end method

.method public whitelist getHandler()Landroid/os/Handler;
    .registers 2

    .line 488
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSelectedText(I)Ljava/lang/CharSequence;
    .registers 9

    .line 182
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 183
    const/4 p1, 0x0

    return-object p1

    .line 186
    :cond_a
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->getSelectedText(I)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    .line 187
    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "getSelectedText()"

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrNull(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 190
    iget-object v1, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v1}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v1

    .line 191
    if-eqz v1, :cond_39

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 192
    invoke-static {p1, v0}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetSelectedTextProto(ILjava/lang/CharSequence;)[B

    move-result-object p1

    .line 194
    const-string v2, "RemoteInputConnection#getSelectedText"

    invoke-interface {v1, v2, p1}, Landroid/inputmethodservice/InputMethodServiceInternal;->triggerServiceDump(Ljava/lang/String;[B)V

    .line 197
    :cond_39
    return-object v0
.end method

.method public whitelist getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;
    .registers 11

    .line 215
    const-string v0, " is invalid and always results in null result."

    const-string v1, "RemoteInputConnection"

    if-gez p1, :cond_20

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beforeLength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_20
    if-gez p2, :cond_3c

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "afterLength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_3c
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 226
    const/4 p1, 0x0

    return-object p1

    .line 229
    :cond_46
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->getSurroundingText(III)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    .line 231
    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "getSurroundingText()"

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrNull(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/SurroundingText;

    .line 234
    iget-object v1, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v1}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v1

    .line 235
    if-eqz v1, :cond_75

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_75

    .line 236
    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetSurroundingTextProto(IIILandroid/view/inputmethod/SurroundingText;)[B

    move-result-object p1

    .line 238
    const-string p2, "RemoteInputConnection#getSurroundingText"

    invoke-interface {v1, p2, p1}, Landroid/inputmethodservice/InputMethodServiceInternal;->triggerServiceDump(Ljava/lang/String;[B)V

    .line 241
    :cond_75
    return-object v0
.end method

.method public whitelist getTextAfterCursor(II)Ljava/lang/CharSequence;
    .registers 10

    .line 130
    if-gez p1, :cond_20

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is invalid and always results in null result."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteInputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_20
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 135
    const/4 p1, 0x0

    return-object p1

    .line 138
    :cond_2a
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->getTextAfterCursor(II)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    .line 139
    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "getTextAfterCursor()"

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrNull(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 142
    iget-object v1, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v1}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v1

    .line 143
    if-eqz v1, :cond_59

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 144
    invoke-static {p1, p2, v0}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetTextAfterCursorProto(IILjava/lang/CharSequence;)[B

    move-result-object p1

    .line 146
    const-string p2, "RemoteInputConnection#getTextAfterCursor"

    invoke-interface {v1, p2, p1}, Landroid/inputmethodservice/InputMethodServiceInternal;->triggerServiceDump(Ljava/lang/String;[B)V

    .line 149
    :cond_59
    return-object v0
.end method

.method public whitelist getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .registers 10

    .line 158
    if-gez p1, :cond_20

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is invalid and always results in null result."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteInputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_20
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 163
    const/4 p1, 0x0

    return-object p1

    .line 166
    :cond_2a
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->getTextBeforeCursor(II)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    .line 167
    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "getTextBeforeCursor()"

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrNull(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 170
    iget-object v1, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v1}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v1

    .line 171
    if-eqz v1, :cond_59

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 172
    invoke-static {p1, p2, v0}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetTextBeforeCursorProto(IILjava/lang/CharSequence;)[B

    move-result-object p1

    .line 174
    const-string p2, "RemoteInputConnection#getTextBeforeCursor"

    invoke-interface {v1, p2, p1}, Landroid/inputmethodservice/InputMethodServiceInternal;->triggerServiceDump(Ljava/lang/String;[B)V

    .line 177
    :cond_59
    return-object v0
.end method

.method public blacklist isSameConnection(Lcom/android/internal/inputmethod/IRemoteInputConnection;)Z
    .registers 3

    .line 115
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->isSameConnection(Lcom/android/internal/inputmethod/IRemoteInputConnection;)Z

    move-result p1

    return p1
.end method

.method public whitelist performContextMenuAction(I)Z
    .registers 3

    .line 335
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->performContextMenuAction(I)Z

    move-result p1

    return p1
.end method

.method public whitelist performEditorAction(I)Z
    .registers 3

    .line 330
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->performEditorAction(I)Z

    move-result p1

    return p1
.end method

.method public whitelist performHandwritingGesture(Landroid/view/inputmethod/HandwritingGesture;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 5

    .line 426
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->performHandwritingGesture(Landroid/view/inputmethod/HandwritingGesture;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    .line 427
    return-void
.end method

.method public whitelist performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4

    .line 419
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public whitelist performSpellCheck()Z
    .registers 2

    .line 414
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->performSpellCheck()Z

    move-result v0

    return v0
.end method

.method public whitelist previewHandwritingGesture(Landroid/view/inputmethod/PreviewableHandwritingGesture;Landroid/os/CancellationSignal;)Z
    .registers 4

    .line 433
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 434
    const/4 p1, 0x0

    return p1

    .line 437
    :cond_a
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->previewHandwritingGesture(Landroid/view/inputmethod/HandwritingGesture;Landroid/os/CancellationSignal;)Z

    move-result p1

    return p1
.end method

.method public whitelist replaceText(IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .registers 7

    .line 532
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    move-object p0, v0

    invoke-virtual/range {p0 .. p5}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->replaceText(IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    move-result p1

    return p1
.end method

.method public whitelist reportFullscreenMode(Z)Z
    .registers 2

    .line 409
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist requestCursorUpdates(I)Z
    .registers 10

    .line 442
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 443
    return v1

    .line 446
    :cond_a
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v0}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v0

    .line 447
    if-nez v0, :cond_13

    .line 448
    return v1

    .line 451
    :cond_13
    invoke-interface {v0}, Landroid/inputmethodservice/InputMethodServiceInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 452
    iget-object v1, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    .line 453
    invoke-virtual {v1, p1, v0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->requestCursorUpdates(II)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    .line 454
    iget-object v5, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v6, 0x7d0

    const-string v3, "RemoteInputConnection"

    const-string v4, "requestCursorUpdates()"

    invoke-static/range {v2 .. v7}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrFalse(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Z

    move-result p1

    return p1
.end method

.method public whitelist requestCursorUpdates(II)Z
    .registers 11

    .line 462
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 463
    return v1

    .line 466
    :cond_a
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v0}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v0

    .line 467
    if-nez v0, :cond_13

    .line 468
    return v1

    .line 471
    :cond_13
    invoke-interface {v0}, Landroid/inputmethodservice/InputMethodServiceInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 472
    iget-object v1, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    .line 473
    invoke-virtual {v1, p1, p2, v0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->requestCursorUpdates(III)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    .line 474
    iget-object v5, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v6, 0x7d0

    const-string v3, "RemoteInputConnection"

    const-string v4, "requestCursorUpdates()"

    invoke-static/range {v2 .. v7}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrFalse(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Z

    move-result p1

    return p1
.end method

.method public whitelist requestTextBoundsInfo(Landroid/graphics/RectF;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/TextBoundsInfoResult;",
            ">;)V"
        }
    .end annotation

    .line 482
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->requestTextBoundsInfo(Landroid/graphics/RectF;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 483
    return-void
.end method

.method public whitelist sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 384
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    .line 385
    if-eqz p1, :cond_b

    .line 386
    invoke-direct {p0}, Landroid/inputmethodservice/RemoteInputConnection;->notifyUserActionIfNecessary()V

    .line 388
    :cond_b
    return p1
.end method

.method public whitelist setComposingRegion(II)Z
    .registers 4

    .line 340
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->setComposingRegion(II)Z

    move-result p1

    return p1
.end method

.method public whitelist setComposingRegion(IILandroid/view/inputmethod/TextAttribute;)Z
    .registers 5

    .line 345
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->setComposingRegion(IILandroid/view/inputmethod/TextAttribute;)Z

    move-result p1

    return p1
.end method

.method public whitelist setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 4

    .line 350
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result p1

    .line 351
    if-eqz p1, :cond_b

    .line 352
    invoke-direct {p0}, Landroid/inputmethodservice/RemoteInputConnection;->notifyUserActionIfNecessary()V

    .line 354
    :cond_b
    return p1
.end method

.method public whitelist setComposingText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .registers 5

    .line 360
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->setComposingText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    move-result p1

    .line 361
    if-eqz p1, :cond_b

    .line 362
    invoke-direct {p0}, Landroid/inputmethodservice/RemoteInputConnection;->notifyUserActionIfNecessary()V

    .line 364
    :cond_b
    return p1
.end method

.method public whitelist setImeConsumesInput(Z)Z
    .registers 3

    .line 521
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->setImeConsumesInput(Z)Z

    move-result p1

    return p1
.end method

.method public whitelist setSelection(II)Z
    .registers 4

    .line 325
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->setSelection(II)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteInputConnection{idHash=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 539
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 538
    return-object v0
.end method
