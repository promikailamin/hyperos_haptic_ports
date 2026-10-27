.class Lcom/android/server/inputmethod/InputMethodManagerService$1;
.super Lcom/android/internal/view/IInputSessionCallback$Stub;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

.field final synthetic val$curMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

.field final synthetic val$serverChannel:Landroid/view/InputChannel;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/IInputMethodInvoker;Landroid/view/InputChannel;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 3140
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->val$curMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->val$serverChannel:Landroid/view/InputChannel;

    invoke-direct {p0}, Lcom/android/internal/view/IInputSessionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sessionCreated(Lcom/android/internal/view/IInputMethodSession;)V
    .registers 7
    .param p1, "session"    # Lcom/android/internal/view/IInputMethodSession;

    .line 3143
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3145
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->val$curMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->val$serverChannel:Landroid/view/InputChannel;

    invoke-virtual {v2, v3, p1, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->onSessionCreated(Lcom/android/server/inputmethod/IInputMethodInvoker;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    .line 3147
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3148
    nop

    .line 3149
    return-void

    .line 3147
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3148
    throw v2
.end method
