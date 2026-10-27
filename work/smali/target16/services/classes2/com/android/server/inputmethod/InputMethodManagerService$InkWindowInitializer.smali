.class public final Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2

    .line 1306
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1308
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 1309
    :try_start_3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 1311
    invoke-virtual {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->initInkWindow()V

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_13

    .line 1313
    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    throw p0
.end method
