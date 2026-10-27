.class final Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CreateInlineSuggestionsRequest"
.end annotation


# instance fields
.field final mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

.field final mPackageName:Ljava/lang/String;

.field final mRequestInfo:Lcom/android/internal/view/InlineSuggestionsRequestInfo;


# direct methods
.method constructor <init>(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;Ljava/lang/String;)V
    .registers 4
    .param p1, "requestInfo"    # Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    .param p2, "callback"    # Lcom/android/internal/view/IInlineSuggestionsRequestCallback;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;->mRequestInfo:Lcom/android/internal/view/InlineSuggestionsRequestInfo;

    .line 313
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;->mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    .line 314
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;->mPackageName:Ljava/lang/String;

    .line 315
    return-void
.end method
