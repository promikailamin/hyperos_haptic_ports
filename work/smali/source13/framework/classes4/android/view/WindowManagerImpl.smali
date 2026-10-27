.class public final Landroid/view/WindowManagerImpl;
.super Ljava/lang/Object;
.source "WindowManagerImpl.java"

# interfaces
.implements Landroid/view/WindowManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;
    }
.end annotation


# instance fields
.field public final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDefaultToken:Landroid/os/IBinder;

.field private final greylist mGlobal:Landroid/view/WindowManagerGlobal;

.field private final blacklist mOnFpsCallbackListenerProxies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mParentWindow:Landroid/view/Window;

.field private final blacklist mWindowContextToken:Landroid/os/IBinder;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/view/WindowManagerImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/os/IBinder;)V

    .line 119
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/view/Window;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentWindow"    # Landroid/view/Window;
    .param p3, "windowContextToken"    # Landroid/os/IBinder;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    nop

    .line 94
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerImpl;->mOnFpsCallbackListenerProxies:Ljava/util/ArrayList;

    .line 123
    iput-object p1, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    .line 124
    iput-object p2, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    .line 125
    iput-object p3, p0, Landroid/view/WindowManagerImpl;->mWindowContextToken:Landroid/os/IBinder;

    .line 126
    return-void
.end method

.method private blacklist applyTokens(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 215
    instance-of v0, p1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_21

    .line 218
    move-object v0, p1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 219
    .local v0, "wparams":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-direct {p0, v1}, Landroid/view/WindowManagerImpl;->assertWindowContextTypeMatches(I)V

    .line 221
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mDefaultToken:Landroid/os/IBinder;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    if-nez v1, :cond_1c

    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_1c

    .line 222
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mDefaultToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 224
    :cond_1c
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowContextToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 225
    return-void

    .line 216
    .end local v0    # "wparams":Landroid/view/WindowManager$LayoutParams;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Params must be WindowManager.LayoutParams"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist assertWindowContextTypeMatches(I)V
    .registers 6
    .param p1, "windowType"    # I

    .line 228
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/window/WindowProvider;

    if-nez v1, :cond_7

    .line 229
    return-void

    .line 233
    :cond_7
    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_10

    const/16 v1, 0x7cf

    if-gt p1, v1, :cond_10

    .line 234
    return-void

    .line 236
    :cond_10
    check-cast v0, Landroid/window/WindowProvider;

    .line 237
    .local v0, "windowProvider":Landroid/window/WindowProvider;
    invoke-interface {v0}, Landroid/window/WindowProvider;->getWindowType()I

    move-result v1

    if-ne v1, p1, :cond_19

    .line 238
    return-void

    .line 240
    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window type mismatch. Window Context\'s window type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 241
    invoke-interface {v0}, Landroid/window/WindowProvider;->getWindowType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", while LayoutParams\' type is set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Please create another Window Context via createWindowContext(getDisplay(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", null) to add window with type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 246
    .local v1, "exception":Ljava/lang/IllegalArgumentException;
    invoke-interface {v0}, Landroid/window/WindowProvider;->getWindowContextOptions()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/window/WindowProviderService;->isWindowProviderService(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 251
    const-string v2, "WindowContext\'s window type must match type in WindowManager.LayoutParams"

    invoke-static {v2, v1}, Landroid/os/StrictMode;->onIncorrectContextUsed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    return-void

    .line 247
    :cond_63
    throw v1
.end method

.method private blacklist cancelInputsAndStartExitTransition(Landroid/os/Bundle;Landroid/view/View;)V
    .registers 6
    .param p1, "options"    # Landroid/os/Bundle;
    .param p2, "fromView"    # Landroid/view/View;

    .line 196
    invoke-virtual {p2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 197
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    .line 198
    .local v1, "decor":Landroid/view/View;
    if-eqz v1, :cond_d

    .line 199
    invoke-virtual {v1}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 201
    :cond_d
    if-eqz p1, :cond_14

    .line 202
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindowTransitionState:Landroid/view/WindowTransitionState;

    invoke-virtual {v2, p1}, Landroid/view/WindowTransitionState;->startExitOutTransition(Landroid/os/Bundle;)V

    .line 204
    :cond_14
    return-void
.end method

.method private blacklist computeWindowInsets(Landroid/graphics/Rect;)Landroid/view/WindowInsets;
    .registers 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 380
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 381
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_10

    :cond_e
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    .line 382
    .local v1, "context":Landroid/content/Context;
    :goto_10
    invoke-static {v1}, Landroid/content/Context;->getToken(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 383
    invoke-direct {p0, v0, p1}, Landroid/view/WindowManagerImpl;->getWindowInsetsFromServerForCurrentDisplay(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist createWindowContextWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v0

    .line 139
    .local v0, "clientToken":Landroid/os/IBinder;
    new-instance v1, Landroid/view/WindowManagerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Landroid/view/WindowManagerImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/os/IBinder;)V

    return-object v1
.end method

.method private static blacklist getCurrentBounds(Landroid/content/Context;)Landroid/graphics/Rect;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 350
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    monitor-enter v0

    .line 351
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 352
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private static blacklist getMaximumBounds(Landroid/content/Context;)Landroid/graphics/Rect;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 373
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    monitor-enter v0

    .line 374
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 375
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private blacklist getWindowInsetsFromServerForCurrentDisplay(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)Landroid/view/WindowInsets;
    .registers 7
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 388
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 389
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    .line 390
    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v2

    iget-object v3, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    .line 389
    invoke-static {v1, p1, p2, v2, v3}, Landroid/view/WindowManagerImpl;->getWindowInsetsFromServerForDisplay(ILandroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getWindowInsetsFromServerForDisplay(ILandroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;
    .registers 19
    .param p0, "displayId"    # I
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "isScreenRound"    # Z
    .param p4, "windowingMode"    # I

    move-object v1, p1

    .line 407
    :try_start_1
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    .line 408
    .local v0, "insetsState":Landroid/view/InsetsState;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_26

    .line 409
    move v13, p0

    :try_start_b
    invoke-interface {v2, p1, p0, v0}, Landroid/view/IWindowManager;->getWindowInsets(Landroid/view/WindowManager$LayoutParams;ILandroid/view/InsetsState;)Z

    move-result v6

    .line 410
    .local v6, "alwaysConsumeSystemBars":Z
    const/4 v4, 0x0

    const/16 v7, 0x30

    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v9, 0x0

    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v12, 0x0

    move-object v2, v0

    move-object/from16 v3, p2

    move/from16 v5, p3

    move/from16 v11, p4

    invoke-virtual/range {v2 .. v12}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v2
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_23} :catch_24

    return-object v2

    .line 414
    .end local v0    # "insetsState":Landroid/view/InsetsState;
    .end local v6    # "alwaysConsumeSystemBars":Z
    :catch_24
    move-exception v0

    goto :goto_28

    :catch_26
    move-exception v0

    move v13, p0

    .line 415
    .local v0, "e":Landroid/os/RemoteException;
    :goto_28
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public whitelist addCrossWindowBlurEnabledListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 482
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-static {}, Landroid/view/CrossWindowBlurListeners;->getInstance()Landroid/view/CrossWindowBlurListeners;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/CrossWindowBlurListeners;->addListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 483
    return-void
.end method

.method public whitelist addCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 476
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/view/WindowManagerImpl;->addCrossWindowBlurEnabledListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 477
    return-void
.end method

.method public whitelist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 154
    const/16 v0, 0x17f

    invoke-static {v0, p2}, Landroid/util/SeempLog;->record_vg_layout(ILandroid/view/ViewGroup$LayoutParams;)I

    .line 155
    invoke-direct {p0, p2}, Landroid/view/WindowManagerImpl;->applyTokens(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v4

    iget-object v5, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    .line 157
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 156
    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/view/WindowManagerGlobal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;I)V

    .line 158
    return-void
.end method

.method public varargs whitelist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;[Landroid/util/Pair;)V
    .registers 14
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "fromView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup$LayoutParams;",
            "Landroid/view/View;",
            "[",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 163
    .local p4, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 164
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_a

    .line 165
    invoke-virtual {p0, p1, p2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    return-void

    .line 168
    :cond_a
    invoke-static {p3, p4}, Landroid/view/WindowOptions;->makeSceneTransitionAnimation(Landroid/view/View;[Landroid/util/Pair;)Landroid/view/WindowOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 169
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-direct {p0, v1, p3}, Landroid/view/WindowManagerImpl;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;Landroid/view/View;)V

    .line 171
    const/16 v2, 0x17f

    invoke-static {v2, p2}, Landroid/util/SeempLog;->record_vg_layout(ILandroid/view/ViewGroup$LayoutParams;)I

    .line 172
    invoke-direct {p0, p2}, Landroid/view/WindowManagerImpl;->applyTokens(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v5

    iget-object v6, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    .line 174
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v7

    .line 173
    move-object v3, p1

    move-object v4, p2

    move-object v8, v1

    invoke-virtual/range {v2 .. v8}, Landroid/view/WindowManagerGlobal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;ILandroid/os/Bundle;)V

    .line 175
    return-void
.end method

.method public blacklist captureSpecialLayers(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 586
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->captureSpecialLayers(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 587
    :catch_9
    move-exception v0

    .line 588
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 590
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o createLocalWindowManager(Landroid/view/Window;)Landroid/view/WindowManagerImpl;
    .registers 5
    .param p1, "parentWindow"    # Landroid/view/Window;

    .line 129
    new-instance v0, Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mWindowContextToken:Landroid/os/IBinder;

    invoke-direct {v0, v1, p1, v2}, Landroid/view/WindowManagerImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public greylist-max-o createPresentationWindowManager(Landroid/content/Context;)Landroid/view/WindowManagerImpl;
    .registers 5
    .param p1, "displayContext"    # Landroid/content/Context;

    .line 133
    new-instance v0, Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mWindowContextToken:Landroid/os/IBinder;

    invoke-direct {v0, p1, v1, v2}, Landroid/view/WindowManagerImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public whitelist getCurrentImeTouchRegion()Landroid/graphics/Region;
    .registers 2

    .line 291
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->getCurrentImeTouchRegion()Landroid/graphics/Region;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 292
    :catch_9
    move-exception v0

    .line 294
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCurrentWindowMetrics()Landroid/view/WindowMetrics;
    .registers 5

    .line 343
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    .line 344
    .local v0, "context":Landroid/content/Context;
    :goto_b
    invoke-static {v0}, Landroid/view/WindowManagerImpl;->getCurrentBounds(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 346
    .local v1, "bounds":Landroid/graphics/Rect;
    new-instance v2, Landroid/view/WindowMetrics;

    invoke-direct {p0, v1}, Landroid/view/WindowManagerImpl;->computeWindowInsets(Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/view/WindowMetrics;-><init>(Landroid/graphics/Rect;Landroid/view/WindowInsets;)V

    return-object v2
.end method

.method public whitelist getDefaultDisplay()Landroid/view/Display;
    .registers 2

    .line 285
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDisplayImePolicy(I)I
    .registers 3
    .param p1, "displayId"    # I

    .line 335
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->getDisplayImePolicy(I)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 336
    :catch_9
    move-exception v0

    .line 338
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getMaximumWindowMetrics()Landroid/view/WindowMetrics;
    .registers 5

    .line 357
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    .line 358
    .local v0, "context":Landroid/content/Context;
    :goto_b
    invoke-static {v0}, Landroid/view/WindowManagerImpl;->getMaximumBounds(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 361
    .local v1, "maxBounds":Landroid/graphics/Rect;
    invoke-static {}, Landroid/util/MiuiAppSizeCompatModeStub;->get()Landroid/util/MiuiAppSizeCompatModeStub;

    move-result-object v2

    invoke-interface {v2}, Landroid/util/MiuiAppSizeCompatModeStub;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 362
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    .line 363
    .local v2, "thread":Landroid/app/ActivityThread;
    if-eqz v2, :cond_22

    .line 364
    invoke-virtual {v2, v1}, Landroid/app/ActivityThread;->updateBoundsCompatBounds(Landroid/graphics/Rect;)V

    .line 369
    .end local v2    # "thread":Landroid/app/ActivityThread;
    :cond_22
    new-instance v2, Landroid/view/WindowMetrics;

    invoke-direct {p0, v1}, Landroid/view/WindowManagerImpl;->computeWindowInsets(Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/view/WindowMetrics;-><init>(Landroid/graphics/Rect;Landroid/view/WindowInsets;)V

    return-object v2
.end method

.method public blacklist getPossibleMaximumWindowMetrics(I)Ljava/util/Set;
    .registers 15
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/view/WindowMetrics;",
            ">;"
        }
    .end annotation

    .line 424
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    .line 425
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->getPossibleDisplayInfo(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_6e

    .line 428
    .local v0, "possibleDisplayInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/DisplayInfo;>;"
    nop

    .line 430
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 433
    .local v1, "maxMetrics":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/WindowMetrics;>;"
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 434
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6d

    .line 435
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/DisplayInfo;

    .line 438
    .local v4, "currentDisplayInfo":Landroid/view/DisplayInfo;
    new-instance v5, Landroid/graphics/Rect;

    iget v6, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v7, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v8, 0x0

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 442
    .local v5, "maxBounds":Landroid/graphics/Rect;
    iget v6, v4, Landroid/view/DisplayInfo;->flags:I

    and-int/lit8 v6, v6, 0x10

    const/4 v7, 0x1

    if-eqz v6, :cond_39

    move v6, v7

    goto :goto_3a

    :cond_39
    move v6, v8

    .line 445
    .local v6, "isScreenRound":Z
    :goto_3a
    iget v9, v4, Landroid/view/DisplayInfo;->displayId:I

    new-instance v10, Landroid/graphics/Rect;

    .line 447
    invoke-virtual {v4}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v11

    .line 448
    invoke-virtual {v4}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v12

    invoke-direct {v10, v8, v8, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 445
    invoke-static {v9, v2, v10, v6, v7}, Landroid/view/WindowManagerImpl;->getWindowInsetsFromServerForDisplay(ILandroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;

    move-result-object v7

    .line 451
    .local v7, "windowInsets":Landroid/view/WindowInsets;
    new-instance v8, Landroid/view/WindowInsets$Builder;

    invoke-direct {v8, v7}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    iget-object v9, v4, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v8, v9}, Landroid/view/WindowInsets$Builder;->setRoundedCorners(Landroid/view/RoundedCorners;)Landroid/view/WindowInsets$Builder;

    move-result-object v8

    iget-object v9, v4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 453
    invoke-virtual {v8, v9}, Landroid/view/WindowInsets$Builder;->setDisplayCutout(Landroid/view/DisplayCutout;)Landroid/view/WindowInsets$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v7

    .line 455
    new-instance v8, Landroid/view/WindowMetrics;

    invoke-direct {v8, v5, v7}, Landroid/view/WindowMetrics;-><init>(Landroid/graphics/Rect;Landroid/view/WindowInsets;)V

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 434
    .end local v5    # "maxBounds":Landroid/graphics/Rect;
    .end local v6    # "isScreenRound":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 457
    .end local v3    # "i":I
    .end local v4    # "currentDisplayInfo":Landroid/view/DisplayInfo;
    .end local v7    # "windowInsets":Landroid/view/WindowInsets;
    :cond_6d
    return-object v1

    .line 426
    .end local v0    # "possibleDisplayInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/DisplayInfo;>;"
    .end local v1    # "maxMetrics":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/WindowMetrics;>;"
    .end local v2    # "params":Landroid/view/WindowManager$LayoutParams;
    :catch_6e
    move-exception v0

    .line 427
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist holdLock(Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "durationMs"    # I

    .line 463
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->holdLock(Landroid/os/IBinder;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 466
    nop

    .line 467
    return-void

    .line 464
    :catch_9
    move-exception v0

    .line 465
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isCrossWindowBlurEnabled()Z
    .registers 2

    .line 471
    invoke-static {}, Landroid/view/CrossWindowBlurListeners;->getInstance()Landroid/view/CrossWindowBlurListeners;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/CrossWindowBlurListeners;->isCrossWindowBlurEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist isTaskSnapshotSupported()Z
    .registers 2

    .line 493
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->isTaskSnapshotSupported()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 494
    :catch_9
    move-exception v0

    .line 496
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist registerTaskFpsCallback(ILjava/util/concurrent/Executor;Landroid/window/TaskFpsCallback;)V
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/window/TaskFpsCallback;

    .line 502
    new-instance v0, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/window/TaskFpsCallback;Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy-IA;)V

    .line 505
    .local v0, "onFpsCallbackListenerProxy":Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;
    :try_start_6
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->registerTaskFpsCallback(ILandroid/window/ITaskFpsCallback;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_1b

    .line 509
    nop

    .line 510
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mOnFpsCallbackListenerProxies:Ljava/util/ArrayList;

    monitor-enter v1

    .line 511
    :try_start_11
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mOnFpsCallbackListenerProxies:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    monitor-exit v1

    .line 513
    return-void

    .line 512
    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw v2

    .line 507
    :catch_1b
    move-exception v1

    .line 508
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist removeCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 487
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-static {}, Landroid/view/CrossWindowBlurListeners;->getInstance()Landroid/view/CrossWindowBlurListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/CrossWindowBlurListeners;->removeListener(Ljava/util/function/Consumer;)V

    .line 488
    return-void
.end method

.method public whitelist removeView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 257
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    .line 258
    return-void
.end method

.method public varargs whitelist removeView(Landroid/view/View;Landroid/view/View;[Landroid/util/Pair;)V
    .registers 8
    .param p1, "viewToRemove"    # Landroid/view/View;
    .param p2, "viewToShow"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "[",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 179
    .local p3, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3a

    invoke-virtual {p2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_3a

    .line 183
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 184
    .local v0, "viewRootToRemove":Landroid/view/ViewRootImpl;
    invoke-virtual {p2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 185
    .local v2, "viewRootToShow":Landroid/view/ViewRootImpl;
    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mNeedRemove:Z

    .line 186
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowTransitionState:Landroid/view/WindowTransitionState;

    invoke-virtual {v3, v0}, Landroid/view/WindowTransitionState;->startExitBackTransition(Landroid/view/ViewRootImpl;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 187
    invoke-virtual {p2}, Landroid/view/View;->isVisibleToUser()Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_34

    .line 190
    :cond_27
    iget-object v1, v2, Landroid/view/ViewRootImpl;->mWindowTransitionState:Landroid/view/WindowTransitionState;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowOptions:Landroid/view/WindowOptions;

    invoke-virtual {v1, v3}, Landroid/view/WindowTransitionState;->setEnterWindowOptions(Landroid/view/WindowOptions;)V

    .line 191
    iget-object v1, v2, Landroid/view/ViewRootImpl;->mWindowTransitionState:Landroid/view/WindowTransitionState;

    invoke-virtual {v1, v2}, Landroid/view/WindowTransitionState;->enterReady(Landroid/view/ViewRootImpl;)V

    goto :goto_39

    .line 188
    :cond_34
    :goto_34
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {v3, p1, v1}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    .line 193
    :goto_39
    return-void

    .line 180
    .end local v0    # "viewRootToRemove":Landroid/view/ViewRootImpl;
    .end local v2    # "viewRootToShow":Landroid/view/ViewRootImpl;
    :cond_3a
    :goto_3a
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {v0, p1, v1}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    .line 181
    return-void
.end method

.method public whitelist removeViewImmediate(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 262
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    .line 263
    return-void
.end method

.method public greylist-max-o requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V
    .registers 5
    .param p1, "receiver"    # Landroid/view/WindowManager$KeyboardShortcutsReceiver;
    .param p2, "deviceId"    # I

    .line 268
    new-instance v0, Landroid/view/WindowManagerImpl$1;

    invoke-direct {v0, p0, p1}, Landroid/view/WindowManagerImpl$1;-><init>(Landroid/view/WindowManagerImpl;Landroid/view/WindowManager$KeyboardShortcutsReceiver;)V

    .line 277
    .local v0, "resultReceiver":Lcom/android/internal/os/IResultReceiver;
    :try_start_5
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 278
    invoke-interface {v1, v0, p2}, Landroid/view/IWindowManager;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_d

    .line 280
    goto :goto_e

    .line 279
    :catch_d
    move-exception v1

    .line 281
    :goto_e
    return-void
.end method

.method public blacklist setAppResolutionTunerSupport(Z)V
    .registers 3
    .param p1, "support"    # Z

    .line 567
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setAppResolutionTunerSupport(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 570
    goto :goto_c

    .line 568
    :catch_8
    move-exception v0

    .line 569
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 571
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public greylist-max-o setDefaultToken(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 149
    iput-object p1, p0, Landroid/view/WindowManagerImpl;->mDefaultToken:Landroid/os/IBinder;

    .line 150
    return-void
.end method

.method public blacklist setDisplayImePolicy(II)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "imePolicy"    # I

    .line 327
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->setDisplayImePolicy(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 329
    goto :goto_9

    .line 328
    :catch_8
    move-exception v0

    .line 330
    :goto_9
    return-void
.end method

.method public blacklist setShouldShowSystemDecors(IZ)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "shouldShow"    # Z

    .line 309
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 310
    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->setShouldShowSystemDecors(IZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 312
    goto :goto_9

    .line 311
    :catch_8
    move-exception v0

    .line 313
    :goto_9
    return-void
.end method

.method public blacklist setShouldShowWithInsecureKeyguard(IZ)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "shouldShow"    # Z

    .line 300
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 301
    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->setShouldShowWithInsecureKeyguard(IZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 303
    goto :goto_9

    .line 302
    :catch_8
    move-exception v0

    .line 304
    :goto_9
    return-void
.end method

.method public blacklist shouldShowSystemDecors(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 318
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->shouldShowSystemDecors(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 319
    :catch_9
    move-exception v0

    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist snapshotTaskForRecents(I)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "taskId"    # I

    .line 556
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->snapshotTaskForRecents(I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 557
    :catch_9
    move-exception v0

    .line 558
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 560
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist unregisterTaskFpsCallback(Landroid/window/TaskFpsCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/window/TaskFpsCallback;

    .line 517
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mOnFpsCallbackListenerProxies:Ljava/util/ArrayList;

    monitor-enter v0

    .line 518
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mOnFpsCallbackListenerProxies:Ljava/util/ArrayList;

    .line 519
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 520
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 521
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;

    .line 522
    .local v2, "proxy":Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;
    invoke-static {v2}, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;->-$$Nest$fgetmCallback(Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;)Landroid/window/TaskFpsCallback;

    move-result-object v3
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_30

    if-ne v3, p1, :cond_2d

    .line 524
    :try_start_1b
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    .line 525
    invoke-interface {v3, v2}, Landroid/view/IWindowManager;->unregisterTaskFpsCallback(Landroid/window/ITaskFpsCallback;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_27
    .catchall {:try_start_1b .. :try_end_22} :catchall_30

    .line 528
    nop

    .line 529
    :try_start_23
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2d

    .line 526
    :catch_27
    move-exception v3

    .line 527
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/view/WindowManagerImpl;
    .end local p1    # "callback":Landroid/window/TaskFpsCallback;
    throw v4

    .line 531
    .end local v2    # "proxy":Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/view/WindowManagerImpl;
    .restart local p1    # "callback":Landroid/window/TaskFpsCallback;
    :cond_2d
    :goto_2d
    goto :goto_9

    .line 532
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;>;"
    :cond_2e
    monitor-exit v0

    .line 533
    return-void

    .line 532
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public blacklist updateResolutionTunerConfig(Ljava/lang/String;)Z
    .registers 3
    .param p1, "config"    # Ljava/lang/String;

    .line 574
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 575
    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->updateResolutionTunerConfig(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 574
    return v0

    .line 576
    :catch_9
    move-exception v0

    .line 577
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 579
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 209
    const/16 v0, 0x180

    invoke-static {v0, p2}, Landroid/util/SeempLog;->record_vg_layout(ILandroid/view/ViewGroup$LayoutParams;)I

    .line 210
    invoke-direct {p0, p2}, Landroid/view/WindowManagerImpl;->applyTokens(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/view/WindowManagerGlobal;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    return-void
.end method
