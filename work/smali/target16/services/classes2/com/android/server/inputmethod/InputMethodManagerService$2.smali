.class public Lcom/android/server/inputmethod/InputMethodManagerService$2;
.super Lcom/android/internal/inputmethod/IInputMethodSessionCallback$Stub;
.source "InputMethodManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final synthetic val$curMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

.field public final synthetic val$serverChannel:Landroid/view/InputChannel;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/IInputMethodInvoker;Landroid/view/InputChannel;I)V
    .registers 5

    .line 2460
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$2;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$2;->val$curMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$2;->val$serverChannel:Landroid/view/InputChannel;

    iput p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$2;->val$userId:I

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInputMethodSessionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sessionCreated(Lcom/android/internal/inputmethod/IInputMethodSession;)V
    .registers 7

    .line 2463
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2465
    :try_start_4
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$2;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$2;->val$curMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$2;->val$serverChannel:Landroid/view/InputChannel;

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$2;->val$userId:I

    invoke-virtual {v2, v3, p1, v4, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->onSessionCreated(Lcom/android/server/inputmethod/IInputMethodInvoker;Lcom/android/internal/inputmethod/IInputMethodSession;Landroid/view/InputChannel;I)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 2467
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_13
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2468
    throw p0
.end method
