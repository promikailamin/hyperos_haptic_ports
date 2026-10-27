.class public final Lcom/android/server/wm/WindowState$WindowId;
.super Landroid/view/IWindowId$Stub;
.source "WindowState.java"


# instance fields
.field public final mOuter:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 5069
    invoke-direct {p0}, Landroid/view/IWindowId$Stub;-><init>()V

    .line 5076
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowState$WindowId;->mOuter:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState$WindowId;-><init>(Lcom/android/server/wm/WindowState;)V

    return-void
.end method


# virtual methods
.method public isFocused()Z
    .registers 2

    .line 5095
    iget-object p0, p0, Lcom/android/server/wm/WindowState$WindowId;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_21

    .line 5097
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 5098
    :try_start_12
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_1b
    move-exception p0

    .line 5099
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public registerFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .registers 2

    .line 5081
    iget-object p0, p0, Lcom/android/server/wm/WindowState$WindowId;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_d

    .line 5083
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->registerFocusObserver(Landroid/view/IWindowFocusObserver;)V

    :cond_d
    return-void
.end method

.method public unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .registers 2

    .line 5088
    iget-object p0, p0, Lcom/android/server/wm/WindowState$WindowId;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_d

    .line 5090
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V

    :cond_d
    return-void
.end method
