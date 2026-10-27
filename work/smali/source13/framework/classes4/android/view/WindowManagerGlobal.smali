.class public final Landroid/view/WindowManagerGlobal;
.super Ljava/lang/Object;
.source "WindowManagerGlobal.java"


# static fields
.field public static final greylist-max-o ADD_APP_EXITING:I = -0x4

.field public static final greylist-max-o ADD_BAD_APP_TOKEN:I = -0x1

.field public static final greylist-max-o ADD_BAD_SUBWINDOW_TOKEN:I = -0x2

.field public static final greylist-max-o ADD_DUPLICATE_ADD:I = -0x5

.field public static final blacklist ADD_FLAG_ALWAYS_CONSUME_SYSTEM_BARS:I = 0x4

.field public static final greylist-max-o ADD_FLAG_APP_VISIBLE:I = 0x2

.field public static final greylist-max-o ADD_FLAG_IN_TOUCH_MODE:I = 0x1

.field public static final blacklist ADD_FLAG_USE_BLAST:I = 0x8

.field public static final greylist-max-o ADD_INVALID_DISPLAY:I = -0x9

.field public static final greylist-max-o ADD_INVALID_TYPE:I = -0xa

.field public static final blacklist ADD_INVALID_USER:I = -0xb

.field public static final greylist-max-o ADD_MULTIPLE_SINGLETON:I = -0x7

.field public static final greylist-max-o ADD_NOT_APP_TOKEN:I = -0x3

.field public static final greylist-max-o ADD_OKAY:I = 0x0

.field public static final greylist-max-o ADD_PERMISSION_DENIED:I = -0x8

.field public static final greylist-max-o ADD_STARTING_NOT_NEEDED:I = -0x6

.field public static final greylist-max-o RELAYOUT_INSETS_PENDING:I = 0x1

.field public static final blacklist RELAYOUT_RES_CONSUME_ALWAYS_SYSTEM_BARS:I = 0x8

.field public static final greylist-max-o RELAYOUT_RES_FIRST_TIME:I = 0x1

.field public static final greylist-max-o RELAYOUT_RES_SURFACE_CHANGED:I = 0x2

.field public static final greylist-max-o RELAYOUT_RES_SURFACE_RESIZED:I = 0x4

.field private static final greylist-max-o TAG:Ljava/lang/String; = "WindowManager"

.field private static blacklist mEmbeddingResizingEnable:Z

.field private static greylist sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

.field private static blacklist sUseBLASTAdapter:Z

.field private static greylist sWindowManagerService:Landroid/view/IWindowManager;

.field private static greylist sWindowSession:Landroid/view/IWindowSession;


# instance fields
.field private final greylist-max-o mDyingViews:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist mLock:Ljava/lang/Object;

.field private final greylist mParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist mRoots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSystemPropertyUpdater:Ljava/lang/Runnable;

.field private final greylist mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mWindowlessRoots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/view/WindowManagerGlobal;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRoots(Landroid/view/WindowManagerGlobal;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/WindowManagerGlobal;->sUseBLASTAdapter:Z

    .line 143
    sput-boolean v0, Landroid/view/WindowManagerGlobal;->mEmbeddingResizingEnable:Z

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    .line 146
    return-void
.end method

.method private greylist-max-o doTrimForeground()V
    .registers 6

    .line 647
    const/4 v0, 0x0

    .line 648
    .local v0, "hasVisibleWindows":Z
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 649
    :try_start_4
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_c
    if-ltz v2, :cond_2e

    .line 650
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 651
    .local v3, "root":Landroid/view/ViewRootImpl;
    iget-object v4, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_28

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v4

    if-nez v4, :cond_28

    iget-object v4, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v4, :cond_28

    .line 653
    const/4 v0, 0x1

    goto :goto_2b

    .line 655
    :cond_28
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    .line 649
    .end local v3    # "root":Landroid/view/ViewRootImpl;
    :goto_2b
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 658
    .end local v2    # "i":I
    :cond_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_3b

    .line 662
    if-nez v0, :cond_3a

    sget-boolean v1, Landroid/view/WindowManagerGlobal;->mEmbeddingResizingEnable:Z

    if-nez v1, :cond_3a

    .line 664
    const/16 v1, 0x50

    invoke-static {v1}, Landroid/view/ThreadedRenderer;->trimMemory(I)V

    .line 667
    :cond_3a
    return-void

    .line 658
    :catchall_3b
    move-exception v2

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v2
.end method

.method public static blacklist enableEmbeddingResizing()V
    .registers 1

    .line 640
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 641
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/WindowManagerGlobal;->mEmbeddingResizingEnable:Z

    .line 643
    :cond_9
    return-void
.end method

.method private greylist-max-o findViewLocked(Landroid/view/View;Z)I
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "required"    # Z

    .line 589
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 590
    .local v0, "index":I
    if-eqz p2, :cond_2a

    if-ltz v0, :cond_b

    goto :goto_2a

    .line 591
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not attached to window manager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 593
    :cond_2a
    :goto_2a
    return v0
.end method

.method public static greylist getInstance()Landroid/view/WindowManagerGlobal;
    .registers 2

    .line 155
    const-class v0, Landroid/view/WindowManagerGlobal;

    monitor-enter v0

    .line 156
    :try_start_3
    sget-object v1, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    if-nez v1, :cond_e

    .line 157
    new-instance v1, Landroid/view/WindowManagerGlobal;

    invoke-direct {v1}, Landroid/view/WindowManagerGlobal;-><init>()V

    sput-object v1, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    .line 159
    :cond_e
    sget-object v1, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    monitor-exit v0

    return-object v1

    .line 160
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static greylist getWindowManagerService()Landroid/view/IWindowManager;
    .registers 3

    .line 165
    const-class v0, Landroid/view/WindowManagerGlobal;

    monitor-enter v0

    .line 166
    :try_start_3
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    if-nez v1, :cond_2d

    .line 167
    const-string/jumbo v1, "window"

    .line 168
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 167
    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    sput-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_31

    .line 170
    if-eqz v1, :cond_2d

    .line 171
    nop

    .line 172
    :try_start_17
    invoke-interface {v1}, Landroid/view/IWindowManager;->getCurrentAnimatorScale()F

    move-result v1

    .line 171
    invoke-static {v1}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    .line 173
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->useBLAST()Z

    move-result v1

    sput-boolean v1, Landroid/view/WindowManagerGlobal;->sUseBLASTAdapter:Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_26} :catch_27
    .catchall {:try_start_17 .. :try_end_26} :catchall_31

    goto :goto_2d

    .line 175
    :catch_27
    move-exception v1

    .line 176
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_28
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 179
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2d
    :goto_2d
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    monitor-exit v0

    return-object v1

    .line 180
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_31

    throw v1
.end method

.method private static greylist-max-o getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;
    .registers 3
    .param p0, "root"    # Landroid/view/ViewRootImpl;

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 720
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 719
    return-object v0
.end method

.method public static greylist getWindowSession()Landroid/view/IWindowSession;
    .registers 3

    .line 185
    const-class v0, Landroid/view/WindowManagerGlobal;

    monitor-enter v0

    .line 186
    :try_start_3
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_24

    if-nez v1, :cond_20

    .line 191
    :try_start_7
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->ensureDefaultInstanceForDefaultDisplayIfNecessary()V

    .line 192
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 193
    .local v1, "windowManager":Landroid/view/IWindowManager;
    new-instance v2, Landroid/view/WindowManagerGlobal$1;

    invoke-direct {v2}, Landroid/view/WindowManagerGlobal$1;-><init>()V

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->openSession(Landroid/view/IWindowSessionCallback;)Landroid/view/IWindowSession;

    move-result-object v2

    sput-object v2, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_19} :catch_1a
    .catchall {:try_start_7 .. :try_end_19} :catchall_24

    .line 202
    .end local v1    # "windowManager":Landroid/view/IWindowManager;
    goto :goto_20

    .line 200
    :catch_1a
    move-exception v1

    .line 201
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1b
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 204
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_20
    :goto_20
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v0

    return-object v1

    .line 205
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_24

    throw v1
.end method

.method public static greylist initialize()V
    .registers 0

    .line 150
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 151
    return-void
.end method

.method static synthetic blacklist lambda$setStoppedState$0(Landroid/view/ViewRootImpl;Z)V
    .registers 2
    .param p0, "root"    # Landroid/view/ViewRootImpl;
    .param p1, "stopped"    # Z

    .line 753
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->setWindowStopped(Z)V

    return-void
.end method

.method public static greylist-max-p peekWindowSession()Landroid/view/IWindowSession;
    .registers 2

    .line 210
    const-class v0, Landroid/view/WindowManagerGlobal;

    monitor-enter v0

    .line 211
    :try_start_3
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v0

    return-object v1

    .line 212
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private greylist-max-o removeViewLocked(IZ)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "immediate"    # Z

    .line 538
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 539
    .local v0, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    .line 541
    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_15

    .line 542
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getImeFocusController()Landroid/view/ImeFocusController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ImeFocusController;->onWindowDismissed()V

    .line 544
    :cond_15
    invoke-virtual {v0, p2}, Landroid/view/ViewRootImpl;->die(Z)Z

    move-result v2

    .line 545
    .local v2, "deferred":Z
    if-eqz v1, :cond_26

    .line 546
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 547
    if-eqz v2, :cond_26

    .line 548
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 551
    :cond_26
    return-void
.end method

.method public static greylist-max-o shouldDestroyEglContext(I)Z
    .registers 3
    .param p0, "trimLevel"    # I

    .line 599
    const/4 v0, 0x1

    const/16 v1, 0x50

    if-lt p0, v1, :cond_6

    .line 600
    return v0

    .line 602
    :cond_6
    const/16 v1, 0x3c

    if-lt p0, v1, :cond_11

    .line 603
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-nez v1, :cond_11

    .line 604
    return v0

    .line 606
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-o trimForeground()V
    .registers 1

    .line 632
    sget-boolean v0, Landroid/view/ThreadedRenderer;->sTrimForeground:Z

    if-eqz v0, :cond_b

    .line 633
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    .line 634
    .local v0, "wm":Landroid/view/WindowManagerGlobal;
    invoke-direct {v0}, Landroid/view/WindowManagerGlobal;->doTrimForeground()V

    .line 636
    .end local v0    # "wm":Landroid/view/WindowManagerGlobal;
    :cond_b
    return-void
.end method

.method public static blacklist useBLAST()Z
    .registers 1

    .line 219
    sget-boolean v0, Landroid/view/WindowManagerGlobal;->sUseBLASTAdapter:Z

    return v0
.end method


# virtual methods
.method public blacklist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;I)V
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "display"    # Landroid/view/Display;
    .param p4, "parentWindow"    # Landroid/view/Window;
    .param p5, "userId"    # I

    .line 314
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/view/WindowManagerGlobal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;ILandroid/os/Bundle;)V

    .line 315
    return-void
.end method

.method public blacklist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;ILandroid/os/Bundle;)V
    .registers 27
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "display"    # Landroid/view/Display;
    .param p4, "parentWindow"    # Landroid/view/Window;
    .param p5, "userId"    # I
    .param p6, "bundle"    # Landroid/os/Bundle;

    .line 320
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    if-eqz v8, :cond_195

    .line 323
    if-eqz v10, :cond_18d

    .line 326
    instance-of v0, v9, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_185

    .line 330
    move-object v12, v9

    check-cast v12, Landroid/view/WindowManager$LayoutParams;

    .line 332
    .local v12, "wparams":Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Landroid/view/WindowManagerGlobalStub;->getInstance()Landroid/view/WindowManagerGlobalStub;

    move-result-object v0

    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 332
    invoke-virtual {v0, v12, v2}, Landroid/view/WindowManagerGlobalStub;->addMiuiFlags(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V

    .line 337
    invoke-static {}, Landroid/view/WindowManagerGlobalStub;->getInstance()Landroid/view/WindowManagerGlobalStub;

    move-result-object v0

    invoke-virtual {v0, v12, v8}, Landroid/view/WindowManagerGlobalStub;->adaptWindowCutout(Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V

    .line 340
    if-eqz v11, :cond_31

    .line 341
    invoke-virtual {v11, v12}, Landroid/view/Window;->adjustLayoutParamsForSubWindow(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_49

    .line 345
    :cond_31
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 346
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_49

    .line 347
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_49

    .line 349
    iget v2, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 354
    .end local v0    # "context":Landroid/content/Context;
    :cond_49
    :goto_49
    const/4 v2, 0x0

    .line 356
    .local v2, "panelParentView":Landroid/view/View;
    iget-object v13, v1, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 358
    :try_start_4d
    iget-object v0, v1, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    if-nez v0, :cond_5b

    .line 359
    new-instance v0, Landroid/view/WindowManagerGlobal$2;

    invoke-direct {v0, v1}, Landroid/view/WindowManagerGlobal$2;-><init>(Landroid/view/WindowManagerGlobal;)V

    iput-object v0, v1, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    .line 368
    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 371
    :cond_5b
    const/4 v0, 0x0

    invoke-direct {v1, v8, v0}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v0

    move v14, v0

    .line 372
    .local v14, "index":I
    if-ltz v14, :cond_96

    .line 373
    iget-object v0, v1, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 375
    iget-object v0, v1, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->doDie()V

    goto :goto_96

    .line 377
    :cond_77
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has already been added to the window manager."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "panelParentView":Landroid/view/View;
    .end local v12    # "wparams":Landroid/view/WindowManager$LayoutParams;
    .end local p0    # "this":Landroid/view/WindowManagerGlobal;
    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local p3    # "display":Landroid/view/Display;
    .end local p4    # "parentWindow":Landroid/view/Window;
    .end local p5    # "userId":I
    .end local p6    # "bundle":Landroid/os/Bundle;
    throw v0

    .line 383
    .restart local v2    # "panelParentView":Landroid/view/View;
    .restart local v12    # "wparams":Landroid/view/WindowManager$LayoutParams;
    .restart local p0    # "this":Landroid/view/WindowManagerGlobal;
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local p3    # "display":Landroid/view/Display;
    .restart local p4    # "parentWindow":Landroid/view/Window;
    .restart local p5    # "userId":I
    .restart local p6    # "bundle":Landroid/os/Bundle;
    :cond_96
    :goto_96
    const/4 v0, 0x0

    .line 386
    .local v0, "isSubWindow":Z
    iget v3, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_cf

    iget v3, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_cf

    .line 388
    const/4 v0, 0x1

    .line 389
    iget-object v3, v1, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 390
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_ab
    if-ge v4, v3, :cond_cb

    .line 391
    iget-object v5, v1, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, v12, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v5, v6, :cond_c8

    .line 392
    iget-object v5, v1, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;
    :try_end_c7
    .catchall {:try_start_4d .. :try_end_c7} :catchall_182

    move-object v2, v5

    .line 390
    :cond_c8
    add-int/lit8 v4, v4, 0x1

    goto :goto_ab

    :cond_cb
    move v15, v0

    move-object/from16 v16, v2

    goto :goto_d2

    .line 397
    .end local v3    # "count":I
    .end local v4    # "i":I
    :cond_cf
    move v15, v0

    move-object/from16 v16, v2

    .end local v0    # "isSubWindow":Z
    .end local v2    # "panelParentView":Landroid/view/View;
    .local v15, "isSubWindow":Z
    .local v16, "panelParentView":Landroid/view/View;
    :goto_d2
    const/4 v0, 0x0

    .line 400
    .local v0, "windowlessSession":Landroid/view/IWindowSession;
    :try_start_d3
    iget-object v2, v12, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eqz v2, :cond_fc

    if-nez v16, :cond_fc

    .line 401
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_da
    iget-object v3, v1, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_fc

    .line 402
    iget-object v3, v1, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 403
    .local v3, "maybeParent":Landroid/view/ViewRootImpl;
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, v12, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v4, v5, :cond_f9

    .line 404
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v4

    move-object v0, v4

    .line 405
    move-object v7, v0

    goto :goto_fd

    .line 401
    .end local v3    # "maybeParent":Landroid/view/ViewRootImpl;
    :cond_f9
    add-int/lit8 v2, v2, 0x1

    goto :goto_da

    .line 410
    .end local v2    # "i":I
    :cond_fc
    move-object v7, v0

    .end local v0    # "windowlessSession":Landroid/view/IWindowSession;
    .local v7, "windowlessSession":Landroid/view/IWindowSession;
    :goto_fd
    if-nez v7, :cond_10a

    .line 411
    new-instance v0, Landroid/view/ViewRootImpl;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v10}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    move-object v6, v0

    .local v0, "root":Landroid/view/ViewRootImpl;
    goto :goto_114

    .line 413
    .end local v0    # "root":Landroid/view/ViewRootImpl;
    :cond_10a
    new-instance v0, Landroid/view/ViewRootImpl;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v10, v7}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/IWindowSession;)V

    move-object v6, v0

    .line 417
    .local v6, "root":Landroid/view/ViewRootImpl;
    :goto_114
    invoke-virtual {v8, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, "visibleRootCount":I
    iget-object v2, v1, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    move v4, v0

    .end local v0    # "visibleRootCount":I
    .restart local v2    # "i":I
    .local v4, "visibleRootCount":I
    :goto_121
    if-ltz v2, :cond_13c

    .line 421
    iget-object v0, v1, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    .line 422
    .local v0, "root_view":Landroid/view/View;
    if-eqz v0, :cond_139

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_139

    .line 423
    add-int/lit8 v4, v4, 0x1

    .line 420
    .end local v0    # "root_view":Landroid/view/View;
    :cond_139
    add-int/lit8 v2, v2, -0x1

    goto :goto_121

    .line 426
    .end local v2    # "i":I
    :cond_13c
    if-nez v15, :cond_140

    if-le v4, v5, :cond_143

    .line 427
    :cond_140
    invoke-static {v5}, Landroid/util/BoostFramework$ScrollOptimizer;->disableOptimizer(Z)V

    .line 430
    :cond_143
    iget-object v0, v1, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v0, v1, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v0, v1, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_152
    .catchall {:try_start_d3 .. :try_end_152} :catchall_17e

    .line 438
    move-object v2, v6

    move-object/from16 v3, p1

    move/from16 v17, v4

    .end local v4    # "visibleRootCount":I
    .local v17, "visibleRootCount":I
    move-object v4, v12

    move v8, v5

    move-object/from16 v5, v16

    move-object/from16 v18, v6

    .end local v6    # "root":Landroid/view/ViewRootImpl;
    .local v18, "root":Landroid/view/ViewRootImpl;
    move/from16 v6, p5

    move-object/from16 v19, v7

    .end local v7    # "windowlessSession":Landroid/view/IWindowSession;
    .local v19, "windowlessSession":Landroid/view/IWindowSession;
    move-object/from16 v7, p6

    :try_start_163
    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewRootImpl;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;ILandroid/os/Bundle;)V
    :try_end_166
    .catch Ljava/lang/RuntimeException; {:try_start_163 .. :try_end_166} :catch_169
    .catchall {:try_start_163 .. :try_end_166} :catchall_17e

    .line 447
    nop

    .line 448
    .end local v14    # "index":I
    .end local v15    # "isSubWindow":Z
    .end local v17    # "visibleRootCount":I
    .end local v19    # "windowlessSession":Landroid/view/IWindowSession;
    :try_start_167
    monitor-exit v13

    .line 449
    return-void

    .line 440
    .restart local v14    # "index":I
    .restart local v15    # "isSubWindow":Z
    .restart local v17    # "visibleRootCount":I
    .restart local v19    # "windowlessSession":Landroid/view/IWindowSession;
    :catch_169
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 441
    .local v0, "e":Ljava/lang/RuntimeException;
    if-ltz v14, :cond_170

    move v2, v14

    goto :goto_177

    :cond_170
    iget-object v2, v1, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v8

    .line 443
    .local v2, "viewIndex":I
    :goto_177
    if-ltz v2, :cond_17c

    .line 444
    invoke-direct {v1, v2, v8}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)V

    .line 446
    :cond_17c
    nop

    .end local v12    # "wparams":Landroid/view/WindowManager$LayoutParams;
    .end local v16    # "panelParentView":Landroid/view/View;
    .end local p0    # "this":Landroid/view/WindowManagerGlobal;
    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local p3    # "display":Landroid/view/Display;
    .end local p4    # "parentWindow":Landroid/view/Window;
    .end local p5    # "userId":I
    .end local p6    # "bundle":Landroid/os/Bundle;
    throw v0
    :try_end_17e
    .catchall {:try_start_167 .. :try_end_17e} :catchall_17e

    .line 448
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "viewIndex":I
    .end local v14    # "index":I
    .end local v15    # "isSubWindow":Z
    .end local v17    # "visibleRootCount":I
    .end local v18    # "root":Landroid/view/ViewRootImpl;
    .end local v19    # "windowlessSession":Landroid/view/IWindowSession;
    .restart local v12    # "wparams":Landroid/view/WindowManager$LayoutParams;
    .restart local v16    # "panelParentView":Landroid/view/View;
    .restart local p0    # "this":Landroid/view/WindowManagerGlobal;
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local p3    # "display":Landroid/view/Display;
    .restart local p4    # "parentWindow":Landroid/view/Window;
    .restart local p5    # "userId":I
    .restart local p6    # "bundle":Landroid/os/Bundle;
    :catchall_17e
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_183

    .end local v16    # "panelParentView":Landroid/view/View;
    .local v2, "panelParentView":Landroid/view/View;
    :catchall_182
    move-exception v0

    :goto_183
    :try_start_183
    monitor-exit v13
    :try_end_184
    .catchall {:try_start_183 .. :try_end_184} :catchall_182

    throw v0

    .line 327
    .end local v2    # "panelParentView":Landroid/view/View;
    .end local v12    # "wparams":Landroid/view/WindowManager$LayoutParams;
    :cond_185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Params must be WindowManager.LayoutParams"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_18d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "display must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "view must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addWindowlessRoot(Landroid/view/ViewRootImpl;)V
    .registers 4
    .param p1, "impl"    # Landroid/view/ViewRootImpl;

    .line 817
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 818
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    monitor-exit v0

    .line 820
    return-void

    .line 819
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public greylist-max-o changeCanvasOpacity(Landroid/os/IBinder;Z)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opaque"    # Z

    .line 771
    if-nez p1, :cond_3

    .line 772
    return-void

    .line 774
    :cond_3
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 775
    :try_start_6
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_2c

    .line 776
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v2, p1, :cond_29

    .line 777
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2, p2}, Landroid/view/ViewRootImpl;->changeCanvasOpacity(Z)V

    .line 778
    monitor-exit v0

    return-void

    .line 775
    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 781
    .end local v1    # "i":I
    :cond_2c
    monitor-exit v0

    .line 782
    return-void

    .line 781
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public greylist-max-o closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    .line 503
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/view/WindowManagerGlobal;->closeAllExceptView(Landroid/os/IBinder;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    return-void
.end method

.method public greylist-max-o closeAllExceptView(Landroid/os/IBinder;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "who"    # Ljava/lang/String;
    .param p4, "what"    # Ljava/lang/String;

    .line 516
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 517
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 518
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_77

    .line 519
    if-eqz p2, :cond_16

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p2, :cond_74

    :cond_16
    if-eqz p1, :cond_24

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    .line 520
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v3, p1, :cond_74

    .line 521
    :cond_24
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 523
    .local v3, "root":Landroid/view/ViewRootImpl;
    if-eqz p3, :cond_70

    .line 524
    new-instance v4, Landroid/view/WindowLeaked;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has leaked window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 526
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " that was originally added here"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    .line 527
    .local v4, "leak":Landroid/view/WindowLeaked;
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getLocation()Landroid/view/WindowLeaked;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/WindowLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 528
    const-string v5, "WindowManager"

    const-string v6, ""

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    .end local v4    # "leak":Landroid/view/WindowLeaked;
    :cond_70
    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)V

    .line 518
    .end local v3    # "root":Landroid/view/ViewRootImpl;
    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 534
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_77
    monitor-exit v0

    .line 535
    return-void

    .line 534
    :catchall_79
    move-exception v1

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_3 .. :try_end_7b} :catchall_79

    throw v1
.end method

.method greylist-max-o doRemoveView(Landroid/view/ViewRootImpl;)V
    .registers 9
    .param p1, "root"    # Landroid/view/ViewRootImpl;

    .line 555
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 557
    .local v1, "index":I
    if-ltz v1, :cond_22

    .line 558
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 559
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 560
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 561
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 564
    .end local v2    # "view":Landroid/view/View;
    :cond_22
    const/4 v2, 0x0

    .line 565
    .local v2, "visibleRootCount":I
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_2b
    if-ltz v3, :cond_46

    .line 566
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewRootImpl;

    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v5

    .line 567
    .local v5, "root_view":Landroid/view/View;
    if-eqz v5, :cond_43

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_43

    .line 568
    add-int/lit8 v2, v2, 0x1

    .line 565
    .end local v5    # "root_view":Landroid/view/View;
    :cond_43
    add-int/lit8 v3, v3, -0x1

    goto :goto_2b

    .line 571
    .end local v3    # "i":I
    :cond_46
    if-ne v2, v4, :cond_4c

    .line 572
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/util/BoostFramework$ScrollOptimizer;->disableOptimizer(Z)V

    .line 575
    :cond_4c
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    move v1, v3

    .line 576
    .end local v2    # "visibleRootCount":I
    .local v1, "allViewsRemoved":Z
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_61

    .line 577
    sget-boolean v0, Landroid/view/ThreadedRenderer;->sTrimForeground:Z

    if-eqz v0, :cond_5b

    .line 578
    invoke-direct {p0}, Landroid/view/WindowManagerGlobal;->doTrimForeground()V

    .line 583
    :cond_5b
    if-eqz v1, :cond_60

    .line 584
    invoke-static {}, Landroid/view/InsetsAnimationThread;->release()V

    .line 586
    :cond_60
    return-void

    .line 576
    .end local v1    # "allViewsRemoved":Z
    :catchall_61
    move-exception v1

    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v1
.end method

.method public greylist-max-o dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 21
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 670
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v4, v0

    .line 671
    .local v4, "fout":Ljava/io/FileOutputStream;
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v0, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v0

    .line 673
    .local v5, "pw":Ljava/io/PrintWriter;
    :try_start_12
    iget-object v6, v1, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_101

    .line 674
    :try_start_15
    iget-object v0, v1, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 676
    .local v0, "count":I
    const-string v7, "Profile data in ms:"

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 678
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_21
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ge v7, v0, :cond_56

    .line 679
    iget-object v11, v1, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/ViewRootImpl;

    .line 680
    .local v11, "root":Landroid/view/ViewRootImpl;
    invoke-static {v11}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v12

    .line 681
    .local v12, "name":Ljava/lang/String;
    const-string v13, "\n\t%s (visibility=%d)"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v12, v8, v9

    invoke-virtual {v11}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v5, v13, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 683
    nop

    .line 684
    invoke-virtual {v11}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v8

    iget-object v8, v8, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 685
    .local v8, "renderer":Landroid/view/ThreadedRenderer;
    if-eqz v8, :cond_53

    .line 686
    invoke-virtual {v8, v5, v2, v3}, Landroid/view/ThreadedRenderer;->dumpGfxInfo(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 678
    .end local v8    # "renderer":Landroid/view/ThreadedRenderer;
    .end local v11    # "root":Landroid/view/ViewRootImpl;
    .end local v12    # "name":Ljava/lang/String;
    :cond_53
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    .line 690
    .end local v7    # "i":I
    :cond_56
    const-string v7, "\nView hierarchy:\n"

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 692
    new-instance v7, Landroid/view/ViewRootImpl$GfxInfo;

    invoke-direct {v7}, Landroid/view/ViewRootImpl$GfxInfo;-><init>()V

    .line 694
    .local v7, "totals":Landroid/view/ViewRootImpl$GfxInfo;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_61
    const/4 v12, 0x3

    const/high16 v13, 0x44800000    # 1024.0f

    if-ge v11, v0, :cond_a9

    .line 695
    iget-object v14, v1, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/ViewRootImpl;

    .line 696
    .local v14, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v14}, Landroid/view/ViewRootImpl;->getGfxInfo()Landroid/view/ViewRootImpl$GfxInfo;

    move-result-object v15

    .line 697
    .local v15, "info":Landroid/view/ViewRootImpl$GfxInfo;
    invoke-virtual {v7, v15}, Landroid/view/ViewRootImpl$GfxInfo;->add(Landroid/view/ViewRootImpl$GfxInfo;)V

    .line 699
    invoke-static {v14}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v16

    .line 700
    .local v16, "name":Ljava/lang/String;
    const-string v8, "  %s\n  %d views, %.2f kB of render nodes"

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v16, v12, v9

    iget v9, v15, Landroid/view/ViewRootImpl$GfxInfo;->viewCount:I

    .line 701
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v12, v10

    move/from16 v17, v11

    .end local v11    # "i":I
    .local v17, "i":I
    iget-wide v10, v15, Landroid/view/ViewRootImpl$GfxInfo;->renderNodeMemoryUsage:J

    long-to-float v10, v10

    div-float/2addr v10, v13

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v12, v11

    .line 700
    invoke-virtual {v5, v8, v12}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 703
    invoke-virtual {v14, v5, v2, v3}, Landroid/view/ViewRootImpl;->dumpGfxInfo(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 704
    const-string v8, "\n\n"

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v8, v11}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 694
    nop

    .end local v14    # "root":Landroid/view/ViewRootImpl;
    .end local v15    # "info":Landroid/view/ViewRootImpl$GfxInfo;
    .end local v16    # "name":Ljava/lang/String;
    add-int/lit8 v11, v17, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .end local v17    # "i":I
    .restart local v11    # "i":I
    goto :goto_61

    :cond_a9
    move/from16 v17, v11

    .line 707
    .end local v11    # "i":I
    const-string v8, "\nTotal %-15s: %d\n"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    const-string v10, "ViewRootImpl"

    const/4 v14, 0x0

    aput-object v10, v11, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v9, 0x1

    aput-object v10, v11, v9

    invoke-virtual {v5, v8, v11}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 708
    const-string v8, "Total %-15s: %d\n"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    const-string v10, "attached Views"

    const/4 v14, 0x0

    aput-object v10, v11, v14

    iget v10, v7, Landroid/view/ViewRootImpl$GfxInfo;->viewCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v9, 0x1

    aput-object v10, v11, v9

    invoke-virtual {v5, v8, v11}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 709
    const-string v8, "Total %-15s: %.2f kB (used) / %.2f kB (capacity)\n\n"

    new-array v10, v12, [Ljava/lang/Object;

    const-string v11, "RenderNode"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    iget-wide v11, v7, Landroid/view/ViewRootImpl$GfxInfo;->renderNodeMemoryUsage:J

    long-to-float v11, v11

    div-float/2addr v11, v13

    .line 710
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v9, 0x1

    aput-object v11, v10, v9

    iget-wide v11, v7, Landroid/view/ViewRootImpl$GfxInfo;->renderNodeMemoryAllocated:J

    long-to-float v9, v11

    div-float/2addr v9, v13

    .line 711
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/4 v11, 0x2

    aput-object v9, v10, v11

    .line 709
    invoke-virtual {v5, v8, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 712
    nop

    .end local v0    # "count":I
    .end local v7    # "totals":Landroid/view/ViewRootImpl$GfxInfo;
    monitor-exit v6
    :try_end_f9
    .catchall {:try_start_15 .. :try_end_f9} :catchall_fe

    .line 714
    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 715
    nop

    .line 716
    return-void

    .line 712
    :catchall_fe
    move-exception v0

    :try_start_ff
    monitor-exit v6
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_fe

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .end local v5    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Landroid/view/WindowManagerGlobal;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "args":[Ljava/lang/String;
    :try_start_100
    throw v0
    :try_end_101
    .catchall {:try_start_100 .. :try_end_101} :catchall_101

    .line 714
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Landroid/view/WindowManagerGlobal;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "args":[Ljava/lang/String;
    :catchall_101
    move-exception v0

    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 715
    throw v0
.end method

.method public blacklist getAllWallpaperAnimationTarget(I)Ljava/util/List;
    .registers 4
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/WallpaperAnimationTarget;",
            ">;"
        }
    .end annotation

    .line 808
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->getAllWallpaperAnimationTarget(I)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 809
    :catch_9
    move-exception v0

    .line 810
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getRootView(Ljava/lang/String;)Landroid/view/View;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 297
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_28

    .line 299
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 300
    .local v2, "root":Landroid/view/ViewRootImpl;
    invoke-static {v2}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 298
    .end local v2    # "root":Landroid/view/ViewRootImpl;
    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 302
    .end local v1    # "i":I
    :cond_28
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_30
    if-ltz v1, :cond_4d

    .line 303
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 304
    .restart local v2    # "root":Landroid/view/ViewRootImpl;
    invoke-static {v2}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 302
    .end local v2    # "root":Landroid/view/ViewRootImpl;
    :cond_4a
    add-int/lit8 v1, v1, -0x1

    goto :goto_30

    .line 306
    .end local v1    # "i":I
    :cond_4d
    monitor-exit v0

    .line 308
    const/4 v0, 0x0

    return-object v0

    .line 306
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw v1
.end method

.method public greylist-max-r getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_8
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 243
    .local v2, "numRoots":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_64

    .line 244
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 245
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v5, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v5, :cond_1e

    .line 246
    goto :goto_61

    .line 248
    :cond_1e
    iget-object v5, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eq v5, p1, :cond_56

    .line 249
    const/4 v5, 0x0

    .line 250
    .local v5, "isChild":Z
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_53

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7cf

    if-gt v6, v7, :cond_53

    .line 252
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_30
    if-ge v6, v2, :cond_53

    .line 253
    iget-object v7, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 254
    .local v7, "viewj":Landroid/view/View;
    iget-object v8, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager$LayoutParams;

    .line 255
    .local v8, "paramsj":Landroid/view/WindowManager$LayoutParams;
    iget-object v9, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    if-ne v9, v10, :cond_50

    iget-object v9, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v9, p1, :cond_50

    .line 257
    const/4 v5, 0x1

    .line 258
    goto :goto_53

    .line 252
    .end local v7    # "viewj":Landroid/view/View;
    .end local v8    # "paramsj":Landroid/view/WindowManager$LayoutParams;
    :cond_50
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 262
    .end local v6    # "j":I
    :cond_53
    :goto_53
    if-nez v5, :cond_56

    .line 263
    goto :goto_61

    .line 266
    .end local v5    # "isChild":Z
    :cond_56
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    :goto_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 268
    .end local v2    # "numRoots":I
    .end local v3    # "i":I
    :cond_64
    monitor-exit v1

    .line 269
    return-object v0

    .line 268
    :catchall_66
    move-exception v2

    monitor-exit v1
    :try_end_68
    .catchall {:try_start_8 .. :try_end_68} :catchall_66

    throw v2
.end method

.method public greylist getViewRootNames()[Ljava/lang/String;
    .registers 8

    .line 224
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 226
    .local v1, "numRoots":I
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 227
    .local v2, "windowlessRoots":I
    add-int v3, v1, v2

    new-array v3, v3, [Ljava/lang/String;

    .line 228
    .local v3, "mViewRoots":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-ge v4, v1, :cond_27

    .line 229
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 228
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 231
    .end local v4    # "i":I
    :cond_27
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_28
    if-ge v4, v2, :cond_3d

    .line 232
    add-int v5, v4, v1

    iget-object v6, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 231
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 234
    .end local v4    # "i":I
    :cond_3d
    monitor-exit v0

    return-object v3

    .line 235
    .end local v1    # "numRoots":I
    .end local v2    # "windowlessRoots":I
    .end local v3    # "mViewRoots":[Ljava/lang/String;
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public blacklist getWallpaperAnimationTarget(I)Landroid/view/WallpaperAnimationTarget;
    .registers 4
    .param p1, "displayId"    # I

    .line 799
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->getWallpaperAnimationTarget(I)Landroid/view/WallpaperAnimationTarget;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 800
    :catch_9
    move-exception v0

    .line 801
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getWindowView(Landroid/os/IBinder;)Landroid/view/View;
    .registers 7
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 283
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 285
    .local v1, "numViews":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1f

    .line 286
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 287
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_1c

    .line 288
    monitor-exit v0

    return-object v3

    .line 285
    .end local v3    # "view":Landroid/view/View;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 291
    .end local v1    # "numViews":I
    .end local v2    # "i":I
    :cond_1f
    monitor-exit v0

    .line 292
    const/4 v0, 0x0

    return-object v0

    .line 291
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public blacklist getWindowViews()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 279
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist mirrorWallpaperSurface(I)Landroid/view/SurfaceControl;
    .registers 4
    .param p1, "displayId"    # I

    .line 788
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->mirrorWallpaperSurface(I)Landroid/view/SurfaceControl;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 789
    :catch_9
    move-exception v0

    .line 790
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r removeView(Landroid/view/View;Z)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "immediate"    # Z

    .line 478
    if-eqz p1, :cond_43

    .line 482
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 483
    const/4 v1, 0x1

    :try_start_6
    invoke-direct {p0, p1, v1}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v1

    .line 484
    .local v1, "index":I
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    .line 485
    .local v2, "curView":Landroid/view/View;
    invoke-direct {p0, v1, p2}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)V

    .line 486
    if-ne v2, p1, :cond_1d

    .line 487
    monitor-exit v0

    return-void

    .line 490
    :cond_1d
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling with view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but the ViewAncestor is attached to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/view/WindowManagerGlobal;
    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "immediate":Z
    throw v3

    .line 492
    .end local v1    # "index":I
    .end local v2    # "curView":Landroid/view/View;
    .restart local p0    # "this":Landroid/view/WindowManagerGlobal;
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "immediate":Z
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_6 .. :try_end_42} :catchall_40

    throw v1

    .line 479
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "view must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeWindowlessRoot(Landroid/view/ViewRootImpl;)V
    .registers 4
    .param p1, "impl"    # Landroid/view/ViewRootImpl;

    .line 824
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 825
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 826
    monitor-exit v0

    .line 827
    return-void

    .line 826
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public greylist-max-o reportNewConfiguration(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 759
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 760
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 761
    .local v1, "count":I
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object p1, v2

    .line 762
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_20

    .line 763
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 764
    .local v3, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v3, p1}, Landroid/view/ViewRootImpl;->requestUpdateConfiguration(Landroid/content/res/Configuration;)V

    .line 762
    .end local v3    # "root":Landroid/view/ViewRootImpl;
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 766
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_20
    monitor-exit v0

    .line 767
    return-void

    .line 766
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public blacklist setRecentsAppBehindSystemBars(Z)V
    .registers 4
    .param p1, "behindSystemBars"    # Z

    .line 831
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setRecentsAppBehindSystemBars(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 834
    nop

    .line 835
    return-void

    .line 832
    :catch_9
    move-exception v0

    .line 833
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setStoppedState(Landroid/os/IBinder;Z)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "stopped"    # Z

    .line 724
    const/4 v0, 0x0

    .line 725
    .local v0, "nonCurrentThreadRoots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 726
    :try_start_4
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 727
    .local v2, "count":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_c
    if-ltz v3, :cond_45

    .line 728
    if-eqz p1, :cond_1c

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v4, p1, :cond_42

    .line 729
    :cond_1c
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewRootImpl;

    .line 731
    .local v4, "root":Landroid/view/ViewRootImpl;
    iget-object v5, v4, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    if-ne v5, v6, :cond_30

    .line 732
    invoke-virtual {v4, p2}, Landroid/view/ViewRootImpl;->setWindowStopped(Z)V

    goto :goto_3b

    .line 734
    :cond_30
    if-nez v0, :cond_38

    .line 735
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 737
    :cond_38
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    :goto_3b
    iget-object v5, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {p0, v5, p2}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    .line 727
    .end local v4    # "root":Landroid/view/ViewRootImpl;
    :cond_42
    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    .line 745
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_4 .. :try_end_46} :catchall_66

    .line 750
    if-eqz v0, :cond_65

    .line 751
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_4e
    if-ltz v1, :cond_65

    .line 752
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 753
    .local v2, "root":Landroid/view/ViewRootImpl;
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v4, Landroid/view/WindowManagerGlobal$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p2}, Landroid/view/WindowManagerGlobal$$ExternalSyntheticLambda0;-><init>(Landroid/view/ViewRootImpl;Z)V

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/ViewRootImpl$ViewRootHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 751
    .end local v2    # "root":Landroid/view/ViewRootImpl;
    add-int/lit8 v1, v1, -0x1

    goto :goto_4e

    .line 756
    .end local v1    # "i":I
    :cond_65
    return-void

    .line 745
    :catchall_66
    move-exception v2

    :try_start_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v2
.end method

.method public greylist-max-p trimMemory(I)V
    .registers 5
    .param p1, "level"    # I

    .line 612
    invoke-static {p1}, Landroid/view/WindowManagerGlobal;->shouldDestroyEglContext(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 615
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 616
    :try_start_9
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_11
    if-ltz v1, :cond_21

    .line 617
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    .line 616
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 619
    .end local v1    # "i":I
    :cond_21
    monitor-exit v0

    .line 621
    const/16 p1, 0x50

    goto :goto_28

    .line 619
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_25

    throw v1

    .line 624
    :cond_28
    :goto_28
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->trimMemory(I)V

    .line 626
    sget-boolean v0, Landroid/view/ThreadedRenderer;->sTrimForeground:Z

    if-eqz v0, :cond_32

    .line 627
    invoke-direct {p0}, Landroid/view/WindowManagerGlobal;->doTrimForeground()V

    .line 629
    :cond_32
    return-void
.end method

.method public greylist-max-o updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 452
    if-eqz p1, :cond_3e

    .line 455
    instance-of v0, p2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_36

    .line 459
    move-object v0, p2

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 462
    .local v0, "wparams":Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Landroid/view/WindowManagerGlobalStub;->getInstance()Landroid/view/WindowManagerGlobalStub;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/view/WindowManagerGlobalStub;->adaptWindowCutout(Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V

    .line 465
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 468
    const/4 v2, 0x1

    :try_start_17
    invoke-direct {p0, p1, v2}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v2

    .line 469
    .local v2, "index":I
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 470
    .local v3, "root":Landroid/view/ViewRootImpl;
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 471
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 472
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 473
    .end local v2    # "index":I
    .end local v3    # "root":Landroid/view/ViewRootImpl;
    monitor-exit v1

    .line 474
    return-void

    .line 473
    :catchall_33
    move-exception v2

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_17 .. :try_end_35} :catchall_33

    throw v2

    .line 456
    .end local v0    # "wparams":Landroid/view/WindowManager$LayoutParams;
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Params must be WindowManager.LayoutParams"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "view must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
