.class public final Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;
.super Ljava/lang/Object;
.source "RemoteInlineSuggestionViewConnector.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RemoteInlineSuggestionViewConnector"


# instance fields
.field public final mDisplayId:I

.field public final mHostInputToken:Landroid/os/IBinder;

.field public final mInlinePresentation:Landroid/service/autofill/InlinePresentation;

.field public final mOnAutofillCallback:Ljava/lang/Runnable;

.field public final mOnErrorCallback:Ljava/lang/Runnable;

.field public final mOnInflateCallback:Ljava/lang/Runnable;

.field public final mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

.field public final mSessionId:I

.field public final mStartIntentSenderFromClientApp:Ljava/util/function/Consumer;

.field public final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/InlinePresentation;Ljava/lang/Runnable;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)V
    .registers 6

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iget-object v0, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    iput-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 68
    iput-object p2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    .line 69
    iget-object p2, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mInlineRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    invoke-virtual {p2}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getHostInputToken()Landroid/os/IBinder;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mHostInputToken:Landroid/os/IBinder;

    .line 70
    iget-object p2, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mInlineRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    invoke-virtual {p2}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getHostDisplayId()I

    move-result p2

    iput p2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mDisplayId:I

    .line 71
    iget p2, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mUserId:I

    iput p2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mUserId:I

    .line 72
    iget p1, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mSessionId:I

    iput p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mSessionId:I

    .line 74
    iput-object p3, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnAutofillCallback:Ljava/lang/Runnable;

    .line 75
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;

    invoke-direct {p1, p4}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)V

    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnErrorCallback:Ljava/lang/Runnable;

    .line 76
    new-instance p1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda1;

    invoke-direct {p1, p4}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)V

    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnInflateCallback:Ljava/lang/Runnable;

    .line 77
    new-instance p1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda2;

    invoke-direct {p1, p4}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)V

    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mStartIntentSenderFromClientApp:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnAutofillCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onError()V
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnErrorCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onRender()V
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnInflateCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onStartIntentSender(Landroid/content/IntentSender;)V
    .registers 2

    .line 136
    iget-object p0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mStartIntentSenderFromClientApp:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public onTransferTouchFocusToImeWindow(Landroid/os/IBinder;I)V
    .registers 5

    .line 123
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 124
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 125
    iget v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mUserId:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->transferTouchFocusToImeWindow(Landroid/os/IBinder;II)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 127
    sget-object p1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->TAG:Ljava/lang/String;

    const-string p2, "Cannot transfer touch focus from suggestion to IME"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnErrorCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1c
    return-void
.end method

.method public renderSuggestion(IILandroid/service/autofill/IInlineSuggestionUiCallback;)Z
    .registers 15

    .line 87
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    invoke-virtual {v0}, Landroid/service/autofill/InlinePresentation;->getSlice()Landroid/app/slice/Slice;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/autofill/Helper;->sanitizeSlice(Landroid/app/slice/Slice;)Landroid/app/slice/Slice;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 88
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_18

    sget-object p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->TAG:Ljava/lang/String;

    const-string p1, "Skipped rendering inline suggestion."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return v1

    .line 91
    :cond_19
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    if-eqz v0, :cond_3c

    .line 92
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_28

    sget-object v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->TAG:Ljava/lang/String;

    const-string v1, "Request to recreate the UI"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_28
    iget-object v2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    iget-object v4, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    iget-object v7, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mHostInputToken:Landroid/os/IBinder;

    iget v8, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mDisplayId:I

    iget v9, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mUserId:I

    iget v10, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mSessionId:I

    move v5, p1

    move v6, p2

    move-object v3, p3

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->renderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V

    const/4 p0, 0x1

    return p0

    :cond_3c
    return v1
.end method
