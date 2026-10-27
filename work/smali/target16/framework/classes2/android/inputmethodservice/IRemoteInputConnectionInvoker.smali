.class final Landroid/inputmethodservice/IRemoteInputConnectionInvoker;
.super Ljava/lang/Object;
.source "IRemoteInputConnectionInvoker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/IRemoteInputConnectionInvoker$IntResultReceiver;,
        Landroid/inputmethodservice/IRemoteInputConnectionInvoker$TextBoundsInfoResultReceiver;,
        Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;
    }
.end annotation


# instance fields
.field private blacklist mBeamer:Landroid/os/CancellationSignalBeamer$Sender;

.field private final blacklist mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

.field private final blacklist mSessionId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConnection(Landroid/inputmethodservice/IRemoteInputConnectionInvoker;)Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    return-object p0
.end method

.method private constructor blacklist <init>(Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 69
    iput p2, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mSessionId:I

    .line 70
    return-void
.end method

.method public static blacklist create(Lcom/android/internal/inputmethod/IRemoteInputConnection;)Landroid/inputmethodservice/IRemoteInputConnectionInvoker;
    .registers 3

    .line 151
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-instance v0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;-><init>(Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    return-object v0
.end method

.method private blacklist getCancellationSignalBeamer()Landroid/os/CancellationSignalBeamer$Sender;
    .registers 2

    .line 737
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mBeamer:Landroid/os/CancellationSignalBeamer$Sender;

    if-eqz v0, :cond_7

    .line 738
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mBeamer:Landroid/os/CancellationSignalBeamer$Sender;

    return-object v0

    .line 740
    :cond_7
    new-instance v0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$1;-><init>(Landroid/inputmethodservice/IRemoteInputConnectionInvoker;)V

    iput-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mBeamer:Landroid/os/CancellationSignalBeamer$Sender;

    .line 760
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mBeamer:Landroid/os/CancellationSignalBeamer$Sender;

    return-object v0
.end method

.method static synthetic blacklist lambda$performHandwritingGesture$0(Ljava/util/function/IntConsumer;)V
    .registers 2

    .line 702
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method static synthetic blacklist lambda$requestTextBoundsInfo$1(Ljava/util/function/Consumer;)V
    .registers 3

    .line 827
    new-instance v0, Landroid/view/inputmethod/TextBoundsInfoResult;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/view/inputmethod/TextBoundsInfoResult;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method blacklist beam(Landroid/os/CancellationSignal;)Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;
    .registers 3

    .line 730
    if-nez p1, :cond_4

    .line 731
    const/4 p1, 0x0

    return-object p1

    .line 733
    :cond_4
    invoke-direct {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->getCancellationSignalBeamer()Landroid/os/CancellationSignalBeamer$Sender;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/CancellationSignalBeamer$Sender;->beam(Landroid/os/CancellationSignal;)Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;

    move-result-object p1

    return-object p1
.end method

.method public blacklist beginBatchEdit()Z
    .registers 3

    .line 551
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->beginBatchEdit(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 552
    const/4 v0, 0x1

    return v0

    .line 553
    :catch_b
    move-exception v0

    .line 554
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist clearMetaKeyStates(I)Z
    .registers 4

    .line 601
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->clearMetaKeyStates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 602
    const/4 p1, 0x1

    return p1

    .line 603
    :catch_b
    move-exception p1

    .line 604
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist cloneWithSessionId(I)Landroid/inputmethodservice/IRemoteInputConnectionInvoker;
    .registers 4

    .line 164
    new-instance v0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-direct {v0, v1, p1}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;-><init>(Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    return-object v0
.end method

.method public blacklist commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 4

    .line 366
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->commitCompletion(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 367
    const/4 p1, 0x1

    return p1

    .line 368
    :catch_b
    move-exception p1

    .line 369
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Lcom/android/internal/infra/AndroidFuture;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputContentInfo;",
            "I",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 845
    new-instance v5, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v5}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 847
    :try_start_5
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->commitContent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_12

    .line 850
    goto :goto_17

    .line 848
    :catch_12
    move-exception v0

    move-object p1, v0

    .line 849
    invoke-virtual {v5, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 851
    :goto_17
    return-object v5
.end method

.method public blacklist commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .registers 4

    .line 384
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->commitCorrection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 385
    const/4 p1, 0x1

    return p1

    .line 386
    :catch_b
    move-exception p1

    .line 387
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist commitText(Ljava/lang/CharSequence;I)Z
    .registers 5

    .line 326
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 327
    const/4 p1, 0x1

    return p1

    .line 328
    :catch_b
    move-exception p1

    .line 329
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .registers 6

    .line 347
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 348
    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    .line 347
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->commitTextWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 349
    const/4 p1, 0x1

    return p1

    .line 350
    :catch_b
    move-exception p1

    .line 351
    const/4 p1, 0x0

    return p1
.end method

.method blacklist createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .registers 3

    .line 182
    new-instance v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iget v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mSessionId:I

    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;-><init>(I)V

    return-object v0
.end method

.method public blacklist deleteSurroundingText(II)Z
    .registers 5

    .line 620
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->deleteSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 621
    const/4 p1, 0x1

    return p1

    .line 622
    :catch_b
    move-exception p1

    .line 623
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist deleteSurroundingTextInCodePoints(II)Z
    .registers 5

    .line 639
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->deleteSurroundingTextInCodePoints(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 641
    const/4 p1, 0x1

    return p1

    .line 642
    :catch_b
    move-exception p1

    .line 643
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist endBatchEdit()Z
    .registers 3

    .line 567
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->endBatchEdit(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 568
    const/4 v0, 0x1

    return v0

    .line 569
    :catch_b
    move-exception v0

    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist finishComposingText()Z
    .registers 3

    .line 535
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->finishComposingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 536
    const/4 v0, 0x1

    return v0

    .line 537
    :catch_b
    move-exception v0

    .line 538
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCursorCapsMode(I)Lcom/android/internal/infra/AndroidFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 283
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 285
    :try_start_5
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->getCursorCapsMode(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    .line 288
    goto :goto_13

    .line 286
    :catch_f
    move-exception p1

    .line 287
    invoke-virtual {v0, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 289
    :goto_13
    return-object v0
.end method

.method public blacklist getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Lcom/android/internal/infra/AndroidFuture;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/ExtractedTextRequest;",
            "I)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/view/inputmethod/ExtractedText;",
            ">;"
        }
    .end annotation

    .line 305
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 307
    :try_start_5
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->getExtractedText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ExtractedTextRequest;ILcom/android/internal/infra/AndroidFuture;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    .line 310
    goto :goto_13

    .line 308
    :catch_f
    move-exception p1

    .line 309
    invoke-virtual {v0, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 311
    :goto_13
    return-object v0
.end method

.method public blacklist getSelectedText(I)Lcom/android/internal/infra/AndroidFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 238
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 240
    :try_start_5
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->getSelectedText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    .line 243
    goto :goto_13

    .line 241
    :catch_f
    move-exception p1

    .line 242
    invoke-virtual {v0, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 244
    :goto_13
    return-object v0
.end method

.method public blacklist getSurroundingText(III)Lcom/android/internal/infra/AndroidFuture;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/view/inputmethod/SurroundingText;",
            ">;"
        }
    .end annotation

    .line 262
    new-instance v5, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v5}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 264
    :try_start_5
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->getSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_12

    .line 268
    goto :goto_17

    .line 266
    :catch_12
    move-exception v0

    move-object p1, v0

    .line 267
    invoke-virtual {v5, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 269
    :goto_17
    return-object v5
.end method

.method public blacklist getTextAfterCursor(II)Lcom/android/internal/infra/AndroidFuture;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 197
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 199
    :try_start_5
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->getTextAfterCursor(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    .line 202
    goto :goto_13

    .line 200
    :catch_f
    move-exception p1

    .line 201
    invoke-virtual {v0, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 203
    :goto_13
    return-object v0
.end method

.method public blacklist getTextBeforeCursor(II)Lcom/android/internal/infra/AndroidFuture;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 218
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 220
    :try_start_5
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->getTextBeforeCursor(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    .line 223
    goto :goto_13

    .line 221
    :catch_f
    move-exception p1

    .line 222
    invoke-virtual {v0, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 224
    :goto_13
    return-object v0
.end method

.method public blacklist isSameConnection(Lcom/android/internal/inputmethod/IRemoteInputConnection;)Z
    .registers 4

    .line 174
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 175
    return v0

    .line 177
    :cond_4
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-interface {v1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v1, p1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public blacklist performContextMenuAction(I)Z
    .registers 4

    .line 438
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->performContextMenuAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 439
    const/4 p1, 0x1

    return p1

    .line 440
    :catch_b
    move-exception p1

    .line 441
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist performEditorAction(I)Z
    .registers 4

    .line 420
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->performEditorAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 421
    const/4 p1, 0x1

    return p1

    .line 422
    :catch_b
    move-exception p1

    .line 423
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist performHandwritingGesture(Landroid/view/inputmethod/HandwritingGesture;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 8

    .line 689
    nop

    .line 690
    if-eqz p3, :cond_c

    .line 691
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    new-instance v0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$IntResultReceiver;

    invoke-direct {v0, p2, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$IntResultReceiver;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    goto :goto_d

    .line 690
    :cond_c
    const/4 v0, 0x0

    .line 695
    :goto_d
    :try_start_d
    invoke-direct {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->getCancellationSignalBeamer()Landroid/os/CancellationSignalBeamer$Sender;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/CancellationSignalBeamer$Sender;->beamScopeIfNeeded(Landroid/view/inputmethod/HandwritingGesture;)Landroid/os/CancellationSignalBeamer$Sender$MustClose;

    move-result-object v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_34

    .line 696
    :try_start_15
    iget-object v2, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v3

    .line 697
    invoke-static {p1}, Landroid/view/inputmethod/ParcelableHandwritingGesture;->of(Landroid/view/inputmethod/HandwritingGesture;)Landroid/view/inputmethod/ParcelableHandwritingGesture;

    move-result-object p1

    .line 696
    invoke-interface {v2, v3, p1, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->performHandwritingGesture(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ParcelableHandwritingGesture;Landroid/os/ResultReceiver;)V
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_28

    .line 699
    if-eqz v1, :cond_27

    :try_start_24
    invoke-interface {v1}, Landroid/os/CancellationSignalBeamer$Sender$MustClose;->close()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_27} :catch_34

    .line 705
    :cond_27
    goto :goto_41

    .line 695
    :catchall_28
    move-exception p1

    if-eqz v1, :cond_33

    :try_start_2b
    invoke-interface {v1}, Landroid/os/CancellationSignalBeamer$Sender$MustClose;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_33

    :catchall_2f
    move-exception v0

    :try_start_30
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_33
    :goto_33
    throw p1
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_34} :catch_34

    .line 700
    :catch_34
    move-exception p1

    .line 701
    if-eqz p3, :cond_41

    if-eqz p2, :cond_41

    .line 702
    new-instance p1, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$$ExternalSyntheticLambda0;

    invoke-direct {p1, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntConsumer;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 706
    :cond_41
    :goto_41
    return-void
.end method

.method public blacklist performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 5

    .line 675
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->performPrivateCommand(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 676
    const/4 p1, 0x1

    return p1

    .line 677
    :catch_b
    move-exception p1

    .line 678
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist performSpellCheck()Z
    .registers 3

    .line 656
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->performSpellCheck(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 657
    const/4 v0, 0x1

    return v0

    .line 658
    :catch_b
    move-exception v0

    .line 659
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist previewHandwritingGesture(Landroid/view/inputmethod/HandwritingGesture;Landroid/os/CancellationSignal;)Z
    .registers 5

    .line 717
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->beam(Landroid/os/CancellationSignal;)Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;

    move-result-object p2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_24

    .line 718
    :try_start_4
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    .line 719
    invoke-static {p1}, Landroid/view/inputmethod/ParcelableHandwritingGesture;->of(Landroid/view/inputmethod/HandwritingGesture;)Landroid/view/inputmethod/ParcelableHandwritingGesture;

    move-result-object p1

    .line 718
    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->previewHandwritingGesture(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ParcelableHandwritingGesture;Landroid/os/IBinder;)V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_18

    .line 721
    if-eqz p2, :cond_16

    :try_start_13
    invoke-interface {p2}, Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;->close()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_24

    .line 722
    :cond_16
    const/4 p1, 0x1

    return p1

    .line 717
    :catchall_18
    move-exception p1

    if-eqz p2, :cond_23

    :try_start_1b
    invoke-interface {p2}, Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_23

    :catchall_1f
    move-exception p2

    :try_start_20
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_23
    :goto_23
    throw p1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_24} :catch_24

    .line 723
    :catch_24
    move-exception p1

    .line 724
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist replaceText(IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .registers 13

    .line 895
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 896
    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    .line 895
    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->replaceText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    .line 897
    const/4 p1, 0x1

    return p1

    .line 898
    :catch_10
    move-exception v0

    .line 899
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist requestCursorUpdates(II)Lcom/android/internal/infra/AndroidFuture;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 775
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 777
    :try_start_5
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->requestCursorUpdates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    .line 781
    goto :goto_13

    .line 779
    :catch_f
    move-exception p1

    .line 780
    invoke-virtual {v0, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 782
    :goto_13
    return-object v0
.end method

.method public blacklist requestCursorUpdates(III)Lcom/android/internal/infra/AndroidFuture;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 799
    new-instance v5, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v5}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 801
    :try_start_5
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->requestCursorUpdatesWithFilter(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_12

    .line 805
    goto :goto_17

    .line 803
    :catch_12
    move-exception v0

    move-object p1, v0

    .line 804
    invoke-virtual {v5, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 806
    :goto_17
    return-object v5
.end method

.method public blacklist requestTextBoundsInfo(Landroid/graphics/RectF;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
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

    .line 820
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    new-instance v0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$TextBoundsInfoResultReceiver;

    invoke-direct {v0, p2, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$TextBoundsInfoResultReceiver;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 825
    :try_start_b
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->requestTextBoundsInfo(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/graphics/RectF;Landroid/os/ResultReceiver;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    .line 828
    goto :goto_1e

    .line 826
    :catch_15
    move-exception p1

    .line 827
    new-instance p1, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$$ExternalSyntheticLambda1;

    invoke-direct {p1, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 829
    :goto_1e
    return-void
.end method

.method public blacklist sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 584
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 585
    const/4 p1, 0x1

    return p1

    .line 586
    :catch_b
    move-exception p1

    .line 587
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist setComposingRegion(II)Z
    .registers 5

    .line 457
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->setComposingRegion(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 458
    const/4 p1, 0x1

    return p1

    .line 459
    :catch_b
    move-exception p1

    .line 460
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist setComposingRegion(IILandroid/view/inputmethod/TextAttribute;)Z
    .registers 6

    .line 477
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 478
    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    .line 477
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->setComposingRegionWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILandroid/view/inputmethod/TextAttribute;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 479
    const/4 p1, 0x1

    return p1

    .line 480
    :catch_b
    move-exception p1

    .line 481
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 5

    .line 497
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->setComposingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 498
    const/4 p1, 0x1

    return p1

    .line 499
    :catch_b
    move-exception p1

    .line 500
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist setComposingText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .registers 6

    .line 518
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 519
    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    .line 518
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->setComposingTextWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 520
    const/4 p1, 0x1

    return p1

    .line 521
    :catch_b
    move-exception p1

    .line 522
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist setImeConsumesInput(Z)Z
    .registers 4

    .line 865
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->setImeConsumesInput(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 866
    const/4 p1, 0x1

    return p1

    .line 867
    :catch_b
    move-exception p1

    .line 868
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist setSelection(II)Z
    .registers 5

    .line 402
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->setSelection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 403
    const/4 p1, 0x1

    return p1

    .line 404
    :catch_b
    move-exception p1

    .line 405
    const/4 p1, 0x0

    return p1
.end method
