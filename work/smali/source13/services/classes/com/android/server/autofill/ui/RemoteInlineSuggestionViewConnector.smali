.class final Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;
.super Ljava/lang/Object;
.source "RemoteInlineSuggestionViewConnector.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDisplayId:I

.field private final mHostInputToken:Landroid/os/IBinder;

.field private final mInlinePresentation:Landroid/service/autofill/InlinePresentation;

.field private final mOnAutofillCallback:Ljava/lang/Runnable;

.field private final mOnErrorCallback:Ljava/lang/Runnable;

.field private final mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

.field private final mSessionId:I

.field private final mStartIntentSenderFromClientApp:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/content/IntentSender;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const-class v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/InlinePresentation;Ljava/lang/Runnable;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)V
    .registers 6
    .param p1, "inlineFillUiInfo"    # Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;
    .param p2, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .param p3, "onAutofillCallback"    # Ljava/lang/Runnable;
    .param p4, "uiCallback"    # Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iget-object v0, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    iput-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 63
    iput-object p2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    .line 64
    iget-object v0, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mInlineRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    invoke-virtual {v0}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getHostInputToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mHostInputToken:Landroid/os/IBinder;

    .line 65
    iget-object v0, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mInlineRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    invoke-virtual {v0}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getHostDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mDisplayId:I

    .line 66
    iget v0, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mUserId:I

    iput v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mUserId:I

    .line 67
    iget v0, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mSessionId:I

    iput v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mSessionId:I

    .line 69
    iput-object p3, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnAutofillCallback:Ljava/lang/Runnable;

    .line 70
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p4}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)V

    iput-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnErrorCallback:Ljava/lang/Runnable;

    .line 71
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda1;

    invoke-direct {v0, p4}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)V

    iput-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mStartIntentSenderFromClientApp:Ljava/util/function/Consumer;

    .line 72
    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnAutofillCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 99
    return-void
.end method

.method public onError()V
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnErrorCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 106
    return-void
.end method

.method public onStartIntentSender(Landroid/content/IntentSender;)V
    .registers 3
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .line 126
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mStartIntentSenderFromClientApp:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method public onTransferTouchFocusToImeWindow(Landroid/os/IBinder;I)V
    .registers 6
    .param p1, "sourceInputToken"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I

    .line 113
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 114
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 115
    .local v0, "inputMethodManagerInternal":Lcom/android/server/inputmethod/InputMethodManagerInternal;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->transferTouchFocusToImeWindow(Landroid/os/IBinder;I)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 117
    sget-object v1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->TAG:Ljava/lang/String;

    const-string v2, "Cannot transfer touch focus from suggestion to IME"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnErrorCallback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 120
    :cond_1a
    return-void
.end method

.method public renderSuggestion(IILandroid/service/autofill/IInlineSuggestionUiCallback;)Z
    .registers 15
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "callback"    # Landroid/service/autofill/IInlineSuggestionUiCallback;

    .line 81
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    invoke-virtual {v0}, Landroid/service/autofill/InlinePresentation;->getSlice()Landroid/app/slice/Slice;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/autofill/Helper;->sanitizeSlice(Landroid/app/slice/Slice;)Landroid/app/slice/Slice;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 82
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_18

    sget-object v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->TAG:Ljava/lang/String;

    const-string v2, "Skipped rendering inline suggestion."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_18
    return v1

    .line 85
    :cond_19
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    if-eqz v0, :cond_3c

    .line 86
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_28

    sget-object v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->TAG:Ljava/lang/String;

    const-string v1, "Request to recreate the UI"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_28
    iget-object v2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    iget-object v4, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    iget-object v7, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mHostInputToken:Landroid/os/IBinder;

    iget v8, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mDisplayId:I

    iget v9, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mUserId:I

    iget v10, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mSessionId:I

    move-object v3, p3

    move v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->renderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V

    .line 89
    const/4 v0, 0x1

    return v0

    .line 91
    :cond_3c
    return v1
.end method
