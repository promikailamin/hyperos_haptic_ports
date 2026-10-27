.class Lcom/android/server/inputmethod/InputMethodBindingController$1;
.super Ljava/lang/Object;
.source "InputMethodBindingController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodBindingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/InputMethodBindingController;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodBindingController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 247
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$1;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 249
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 250
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$1;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->invalidateAutofillSessionLocked()V

    .line 251
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$1;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmVisibleBound(Lcom/android/server/inputmethod/InputMethodBindingController;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 252
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$1;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindVisibleConnection()V

    .line 254
    :cond_19
    monitor-exit v0

    .line 255
    return-void

    .line 254
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 258
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 261
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 262
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$1;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->invalidateAutofillSessionLocked()V

    .line 263
    monitor-exit v0

    .line 264
    return-void

    .line 263
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method
