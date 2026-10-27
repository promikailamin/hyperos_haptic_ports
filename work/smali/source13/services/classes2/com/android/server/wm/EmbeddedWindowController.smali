.class Lcom/android/server/wm/EmbeddedWindowController;
.super Ljava/lang/Object;
.source "EmbeddedWindowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mGlobalLock:Ljava/lang/Object;

.field private mWindows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowsByFocusToken:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowsByWindowToken:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3
    .param p1, "atmService"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    .line 48
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByFocusToken:Landroid/util/ArrayMap;

    .line 50
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    .line 56
    iput-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 57
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mGlobalLock:Ljava/lang/Object;

    .line 58
    return-void
.end method

.method private updateProcessController(Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)V
    .registers 5
    .param p1, "window"    # Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 91
    iget-object v0, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_5

    .line 92
    return-void

    .line 94
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    iget v2, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 96
    .local v0, "processController":Lcom/android/server/wm/WindowProcessController;
    if-nez v0, :cond_19

    .line 97
    const-string v1, "WindowManager"

    const-string v2, "Could not find the embedding process."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 99
    :cond_19
    iget-object v1, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->addHostActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 101
    :goto_1e
    return-void
.end method


# virtual methods
.method add(Landroid/os/IBinder;Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)V
    .registers 7
    .param p1, "inputToken"    # Landroid/os/IBinder;
    .param p2, "window"    # Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p2}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getFocusGrantToken()Landroid/os/IBinder;

    move-result-object v0

    .line 71
    .local v0, "focusToken":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByFocusToken:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-direct {p0, p2}, Lcom/android/server/wm/EmbeddedWindowController;->updateProcessController(Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)V

    .line 74
    iget-object v1, p2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/EmbeddedWindowController;Landroid/os/IBinder;Landroid/os/IBinder;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_29} :catch_2a

    .line 83
    .end local v0    # "focusToken":Landroid/os/IBinder;
    goto :goto_30

    .line 80
    :catch_2a
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_30
    return-void
.end method

.method get(Landroid/os/IBinder;)Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .registers 3
    .param p1, "inputToken"    # Landroid/os/IBinder;

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    return-object v0
.end method

.method getByFocusToken(Landroid/os/IBinder;)Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .registers 3
    .param p1, "focusGrantToken"    # Landroid/os/IBinder;

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByFocusToken:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    return-object v0
.end method

.method getByWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .registers 3
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 152
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    return-object v0
.end method

.method getHostWindow(Landroid/os/IBinder;)Lcom/android/server/wm/WindowState;
    .registers 4
    .param p1, "inputToken"    # Landroid/os/IBinder;

    .line 104
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 105
    .local v0, "embeddedWindow":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    if-eqz v0, :cond_d

    iget-object v1, v0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1
.end method

.method isOverlay(Landroid/os/IBinder;)Z
    .registers 4
    .param p1, "inputToken"    # Landroid/os/IBinder;

    .line 109
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 110
    .local v0, "embeddedWindow":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getIsOverlay()Z

    move-result v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method synthetic lambda$add$0$com-android-server-wm-EmbeddedWindowController(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "inputToken"    # Landroid/os/IBinder;
    .param p2, "focusToken"    # Landroid/os/IBinder;

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByFocusToken:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    monitor-exit v0

    .line 79
    return-void

    .line 78
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method onActivityRemoved(Lcom/android/server/wm/ActivityRecord;)V
    .registers 7
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 156
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_28

    .line 157
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 158
    .local v1, "window":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    iget-object v2, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v2, p1, :cond_25

    .line 159
    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    iget v4, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    .line 160
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 161
    .local v2, "processController":Lcom/android/server/wm/WindowProcessController;
    if-eqz v2, :cond_25

    .line 162
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowProcessController;->removeHostActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 156
    .end local v1    # "window":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .end local v2    # "processController":Lcom/android/server/wm/WindowProcessController;
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 166
    .end local v0    # "i":I
    :cond_28
    return-void
.end method

.method onWindowRemoved(Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "host"    # Lcom/android/server/wm/WindowState;

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_36

    .line 134
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 135
    .local v1, "ew":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    iget-object v2, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    if-ne v2, p1, :cond_33

    .line 136
    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    invoke-virtual {v2}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->onRemoved()V

    .line 137
    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByFocusToken:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getFocusGrantToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .end local v1    # "ew":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 141
    .end local v0    # "i":I
    :cond_36
    return-void
.end method

.method remove(Landroid/view/IWindow;)V
    .registers 6
    .param p1, "client"    # Landroid/view/IWindow;

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_3f

    .line 122
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 123
    .local v1, "ew":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    iget-object v2, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_3c

    .line 124
    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    invoke-virtual {v2}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->onRemoved()V

    .line 125
    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByFocusToken:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getFocusGrantToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void

    .line 121
    .end local v1    # "ew":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    :cond_3c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 130
    .end local v0    # "i":I
    :cond_3f
    return-void
.end method

.method setIsOverlay(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "focusGrantToken"    # Landroid/os/IBinder;

    .line 114
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByFocusToken:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 115
    .local v0, "embeddedWindow":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    if-eqz v0, :cond_d

    .line 116
    invoke-virtual {v0}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->setIsOverlay()V

    .line 118
    :cond_d
    return-void
.end method
