.class public final Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mClientToBeReset:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

.field public final mService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final mToUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V
    .registers 4

    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 977
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 978
    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    .line 979
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mClientToBeReset:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 984
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 985
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmUserSwitchHandlerTask(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    move-result-object v1

    if-eq v1, p0, :cond_f

    .line 987
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    goto :goto_24

    .line 989
    :cond_f
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmUserSwitchHandlerTask(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    move-result-object v2

    iget v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mClientToBeReset:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-static {v1, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mswitchUserOnHandlerLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    .line 991
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fputmUserSwitchHandlerTask(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;)V

    .line 992
    monitor-exit v0

    return-void

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_d

    throw p0
.end method
