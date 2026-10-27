.class final Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InkWindowInitializer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2

    .line 1844
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1846
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 1847
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mgetCurMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v1

    .line 1848
    .local v1, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    if-eqz v1, :cond_e

    .line 1849
    invoke-virtual {v1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->initInkWindow()V

    .line 1851
    .end local v1    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    :cond_e
    monitor-exit v0

    .line 1852
    return-void

    .line 1851
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method
