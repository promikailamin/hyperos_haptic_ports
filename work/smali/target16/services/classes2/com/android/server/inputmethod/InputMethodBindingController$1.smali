.class public Lcom/android/server/inputmethod/InputMethodBindingController$1;
.super Ljava/lang/Object;
.source "InputMethodBindingController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodBindingController;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodBindingController;)V
    .registers 2

    .line 357
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$1;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 3

    .line 359
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 360
    :try_start_3
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$1;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmAutofillController(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/AutofillSuggestionsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/inputmethod/AutofillSuggestionsController;->invalidateAutofillSession()V

    .line 361
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$1;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->isVisibleBound()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 362
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$1;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindVisibleConnection()V

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_1e

    .line 364
    :cond_1c
    :goto_1c
    monitor-exit p1

    return-void

    :goto_1e
    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1a

    throw p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 371
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 372
    :try_start_3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$1;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmAutofillController(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/AutofillSuggestionsController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/inputmethod/AutofillSuggestionsController;->invalidateAutofillSession()V

    .line 373
    monitor-exit p1

    return-void

    :catchall_e
    move-exception p0

    monitor-exit p1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method
