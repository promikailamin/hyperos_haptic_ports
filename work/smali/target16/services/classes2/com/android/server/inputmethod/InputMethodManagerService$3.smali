.class public Lcom/android/server/inputmethod/InputMethodManagerService$3;
.super Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback$Stub;
.source "InputMethodManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final synthetic val$callback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

.field public final synthetic val$delegatePackageName:Ljava/lang/String;

.field public final synthetic val$delegatorPackageName:Ljava/lang/String;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V
    .registers 6

    .line 3150
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$userId:I

    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$delegatePackageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$delegatorPackageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$callback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .registers 2

    .line 3163
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$callback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onError(I)V

    return-void
.end method

.method public onResult(Ljava/lang/CharSequence;)V
    .registers 8

    .line 3153
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 3154
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHwController(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/HandwritingModeController;

    move-result-object v1

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$userId:I

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$delegatePackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$delegatorPackageName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/inputmethod/HandwritingModeController;->prepareStylusHandwritingDelegation(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 3157
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1a

    .line 3158
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$callback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onResult(Ljava/lang/CharSequence;)V

    return-void

    :catchall_1a
    move-exception p0

    .line 3157
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method
