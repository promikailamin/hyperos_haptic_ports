.class public final Landroid/view/WindowManagerGlobal;
.super Ljava/lang/Object;
.source "WindowManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerGlobal$TrustedPresentationListener;,
        Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;,
        Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;
    }
.end annotation


# static fields
.field public static final greylist-max-o ADD_APP_EXITING:I = -0x4

.field public static final greylist-max-o ADD_BAD_APP_TOKEN:I = -0x1

.field public static final greylist-max-o ADD_BAD_SUBWINDOW_TOKEN:I = -0x2

.field public static final greylist-max-o ADD_DUPLICATE_ADD:I = -0x5

.field public static final greylist-max-o ADD_FLAG_APP_VISIBLE:I = 0x2

.field public static final greylist-max-o ADD_FLAG_IN_TOUCH_MODE:I = 0x1

.field public static final greylist-max-o ADD_INVALID_DISPLAY:I = -0x9

.field public static final greylist-max-o ADD_INVALID_TYPE:I = -0xa

.field public static final blacklist ADD_INVALID_USER:I = -0xb

.field public static final greylist-max-o ADD_MULTIPLE_SINGLETON:I = -0x7

.field public static final greylist-max-o ADD_NOT_APP_TOKEN:I = -0x3

.field public static final greylist-max-o ADD_OKAY:I = 0x0

.field public static final greylist-max-o ADD_PERMISSION_DENIED:I = -0x8

.field public static final greylist-max-o ADD_STARTING_NOT_NEEDED:I = -0x6

.field public static final greylist-max-o RELAYOUT_INSETS_PENDING:I = 0x1

.field public static final blacklist RELAYOUT_RES_CANCEL_AND_REDRAW:I = 0x8

.field public static final greylist-max-o RELAYOUT_RES_FIRST_TIME:I = 0x1

.field public static final greylist-max-o RELAYOUT_RES_SURFACE_CHANGED:I = 0x2

.field public static final greylist-max-o RELAYOUT_RES_SURFACE_RESIZED:I = 0x4

.field private static final greylist-max-o TAG:Ljava/lang/String; = "WindowManager"

.field private static greylist sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

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

.field private blacklist mProposedRotationListenerMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;",
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

.field private final blacklist mSurfaceControlInputReceivers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSystemPropertyUpdater:Ljava/lang/Runnable;

.field private final blacklist mTrustedPresentationListener:Landroid/view/WindowManagerGlobal$TrustedPresentationListener;

.field private final greylist mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mWindowViewsListenerGroup:Landroid/util/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ListenerGroup<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
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

.method private constructor greylist-max-o <init>()V
    .registers 5

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    .line 149
    new-instance v0, Landroid/util/ListenerGroup;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/os/Handler;

    .line 151
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, v2}, Landroid/util/ListenerGroup;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mWindowViewsListenerGroup:Landroid/util/ListenerGroup;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    .line 160
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;-><init>(Landroid/view/WindowManagerGlobal;Landroid/view/WindowManagerGlobal-IA;)V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mTrustedPresentationListener:Landroid/view/WindowManagerGlobal$TrustedPresentationListener;

    .line 175
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mSurfaceControlInputReceivers:Landroid/util/SparseArray;

    .line 180
    return-void
.end method

.method private static blacklist createInputChannel(Landroid/os/IBinder;Landroid/window/InputTransferToken;Landroid/view/SurfaceControl;Landroid/window/InputTransferToken;)Landroid/view/InputChannel;
    .registers 16

    .line 905
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    .line 907
    invoke-virtual {p2}, Landroid/view/SurfaceControl;->getName()Ljava/lang/String;

    move-result-object v11

    .line 905
    const/4 v1, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v2, p2

    move-object v10, p3

    invoke-interface/range {v0 .. v11}, Landroid/view/IWindowSession;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object p0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    return-object p0

    .line 908
    :catch_17
    move-exception v0

    move-object p0, v0

    .line 909
    const-string p1, "WindowManager"

    const-string p2, "Failed to create input channel"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 910
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 911
    const/4 p0, 0x0

    return-object p0
.end method

.method private greylist-max-o findViewLocked(Landroid/view/View;Z)I
    .registers 5

    .line 628
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 629
    if-eqz p2, :cond_2a

    if-ltz v0, :cond_b

    goto :goto_2a

    .line 630
    :cond_b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " not attached to window manager"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 632
    :cond_2a
    :goto_2a
    return v0
.end method

.method public static greylist getInstance()Landroid/view/WindowManagerGlobal;
    .registers 2

    .line 189
    const-class v0, Landroid/view/WindowManagerGlobal;

    monitor-enter v0

    .line 190
    :try_start_3
    sget-object v1, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    if-nez v1, :cond_e

    .line 191
    new-instance v1, Landroid/view/WindowManagerGlobal;

    invoke-direct {v1}, Landroid/view/WindowManagerGlobal;-><init>()V

    sput-object v1, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    .line 193
    :cond_e
    sget-object v1, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    monitor-exit v0

    return-object v1

    .line 194
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static greylist getWindowManagerService()Landroid/view/IWindowManager;
    .registers 2

    .line 216
    sget-object v0, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    if-eqz v0, :cond_7

    .line 218
    sget-object v0, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    return-object v0

    .line 220
    :cond_7
    const-class v0, Landroid/view/WindowManagerGlobal;

    monitor-enter v0

    .line 221
    :try_start_a
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    if-nez v1, :cond_40

    .line 222
    const-string v1, "window"

    .line 223
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 222
    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    sput-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    .line 224
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->currentAnimatorScaleUsesSharedMemory()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 226
    invoke-static {}, Lcom/android/internal/os/ApplicationSharedMemory;->getInstance()Lcom/android/internal/os/ApplicationSharedMemory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/ApplicationSharedMemory;->getCurrentAnimatorScale()F

    move-result v1

    .line 225
    invoke-static {v1}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    goto :goto_40

    .line 229
    :cond_2c
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;
    :try_end_2e
    .catchall {:try_start_a .. :try_end_2e} :catchall_44

    if-eqz v1, :cond_40

    .line 231
    :try_start_30
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    .line 232
    invoke-interface {v1}, Landroid/view/IWindowManager;->getCurrentAnimatorScale()F

    move-result v1

    .line 231
    invoke-static {v1}, Landroid/animation/ValueAnimator;->setDurationScale(F)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_39} :catch_3a
    .catchall {:try_start_30 .. :try_end_39} :catchall_44

    .line 235
    goto :goto_40

    .line 233
    :catch_3a
    move-exception v1

    .line 234
    :try_start_3b
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 239
    :cond_40
    :goto_40
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    monitor-exit v0

    return-object v1

    .line 240
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3b .. :try_end_46} :catchall_44

    throw v1
.end method

.method private static greylist-max-o getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;
    .registers 3

    .line 693
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

    .line 694
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

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 693
    return-object p0
.end method

.method public static greylist getWindowSession()Landroid/view/IWindowSession;
    .registers 3

    .line 245
    const-class v0, Landroid/view/WindowManagerGlobal;

    monitor-enter v0

    .line 246
    :try_start_3
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_24

    if-nez v1, :cond_20

    .line 251
    :try_start_7
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->ensureDefaultInstanceForDefaultDisplayIfNecessary()V

    .line 252
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 253
    new-instance v2, Landroid/view/WindowManagerGlobal$1;

    invoke-direct {v2}, Landroid/view/WindowManagerGlobal$1;-><init>()V

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->openSession(Landroid/view/IWindowSessionCallback;)Landroid/view/IWindowSession;

    move-result-object v1

    sput-object v1, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_19} :catch_1a
    .catchall {:try_start_7 .. :try_end_19} :catchall_24

    .line 262
    goto :goto_20

    .line 260
    :catch_1a
    move-exception v1

    .line 261
    :try_start_1b
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 264
    :cond_20
    :goto_20
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v0

    return-object v1

    .line 265
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_24

    throw v1
.end method

.method public static greylist initialize()V
    .registers 0

    .line 184
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 185
    return-void
.end method

.method static synthetic blacklist lambda$registerProposedRotationListener$1(Ljava/util/function/IntConsumer;Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;)V
    .registers 2

    .line 787
    iget p1, p1, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mLastRotation:I

    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method static synthetic blacklist lambda$setStoppedState$0(Landroid/view/ViewRootImpl;Z)V
    .registers 2

    .line 727
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->setWindowStopped(Z)V

    return-void
.end method

.method public static greylist-max-p peekWindowSession()Landroid/view/IWindowSession;
    .registers 2

    .line 270
    const-class v0, Landroid/view/WindowManagerGlobal;

    monitor-enter v0

    .line 271
    :try_start_3
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v0

    return-object v1

    .line 272
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static blacklist removeInputChannel(Landroid/os/IBinder;)V
    .registers 3

    .line 917
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/IWindowSession;->remove(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 921
    goto :goto_13

    .line 918
    :catch_8
    move-exception p0

    .line 919
    const-string v0, "WindowManager"

    const-string v1, "Failed to remove input channel"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 920
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 922
    :goto_13
    return-void
.end method

.method private greylist-max-o removeViewLocked(IZ)V
    .registers 5

    .line 586
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewRootImpl;

    .line 587
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    .line 589
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getImeFocusController()Landroid/view/ImeFocusController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ImeFocusController;->onWindowDismissed()V

    .line 590
    invoke-virtual {p1, p2}, Landroid/view/ViewRootImpl;->die(Z)Z

    move-result p1

    .line 591
    if-eqz v0, :cond_24

    .line 592
    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 593
    if-eqz p1, :cond_24

    .line 594
    iget-object p1, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 597
    :cond_24
    return-void
.end method

.method public static blacklist setWindowManagerServiceForSystemProcess(Landroid/view/IWindowManager;)V
    .registers 1

    .line 210
    sput-object p0, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    .line 211
    return-void
.end method


# virtual methods
.method public blacklist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;I)V
    .registers 15

    .line 389
    if-eqz p1, :cond_16f

    .line 392
    if-eqz p3, :cond_167

    .line 395
    instance-of v0, p2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_15f

    check-cast p2, Landroid/view/WindowManager$LayoutParams;

    .line 399
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 400
    if-eqz p4, :cond_14

    .line 401
    invoke-virtual {p4, p2}, Landroid/view/Window;->adjustLayoutParamsForSubWindow(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_28

    .line 405
    :cond_14
    if-eqz v0, :cond_28

    .line 406
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    iget p4, p4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x20000000

    and-int/2addr p4, v1

    if-eqz p4, :cond_28

    .line 408
    iget p4, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x1000000

    or-int/2addr p4, v1

    iput p4, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 412
    :cond_28
    :goto_28
    const/4 p4, 0x1

    if-eqz v0, :cond_4c

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x63

    if-le v1, v2, :cond_4c

    .line 413
    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 414
    nop

    .line 415
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 414
    invoke-static {v0, p4, v1}, Lcom/android/internal/policy/PhoneWindow;->isOptingOutEdgeToEdgeEnforcement(Landroid/content/pm/ApplicationInfo;ZLandroid/content/res/TypedArray;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 416
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x4000000

    or-int/2addr v0, v2

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 418
    :cond_49
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 422
    :cond_4c
    nop

    .line 424
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 426
    :try_start_50
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    if-nez v1, :cond_60

    .line 427
    new-instance v1, Landroid/view/WindowManagerGlobal$2;

    invoke-direct {v1, p0}, Landroid/view/WindowManagerGlobal$2;-><init>(Landroid/view/WindowManagerGlobal;)V

    iput-object v1, p0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    .line 436
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    invoke-static {v1}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 439
    :cond_60
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v2

    .line 440
    if-ltz v2, :cond_9a

    .line 441
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 443
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->doDie()V

    goto :goto_9a

    .line 445
    :cond_7b
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "View "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " has already been added to the window manager."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 453
    :cond_9a
    :goto_9a
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    if-lt v3, v4, :cond_ce

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_ce

    .line 455
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 456
    move v4, v1

    move-object v6, v5

    :goto_af
    if-ge v4, v3, :cond_cf

    .line 457
    iget-object v7, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v7}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    iget-object v8, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v7, v8, :cond_cb

    .line 458
    iget-object v6, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 456
    :cond_cb
    add-int/lit8 v4, v4, 0x1

    goto :goto_af

    .line 463
    :cond_ce
    move-object v6, v5

    :cond_cf
    nop

    .line 466
    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eqz v3, :cond_f7

    if-nez v6, :cond_f7

    .line 467
    nop

    :goto_d7
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_f7

    .line 468
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 469
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iget-object v7, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v4, v7, :cond_f4

    .line 470
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v5

    .line 471
    goto :goto_f7

    .line 467
    :cond_f4
    add-int/lit8 v1, v1, 0x1

    goto :goto_d7

    .line 476
    :cond_f7
    :goto_f7
    if-nez v5, :cond_103

    .line 477
    new-instance v1, Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, p3}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    goto :goto_111

    .line 479
    :cond_103
    new-instance v1, Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/view/WindowlessWindowLayout;

    invoke-direct {v4}, Landroid/view/WindowlessWindowLayout;-><init>()V

    invoke-direct {v1, v3, p3, v5, v4}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/IWindowSession;Landroid/view/WindowLayout;)V

    .line 483
    :goto_111
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    iget-object p3, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    iget-object p3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    iget-object p3, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_123
    .catchall {:try_start_50 .. :try_end_123} :catchall_15c

    .line 491
    :try_start_123
    invoke-virtual {v1, p1, p2, v6, p5}, Landroid/view/ViewRootImpl;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;I)V

    .line 492
    iget-object p2, p0, Landroid/view/WindowManagerGlobal;->mWindowViewsListenerGroup:Landroid/util/ListenerGroup;

    invoke-virtual {p0}, Landroid/view/WindowManagerGlobal;->getWindowViews()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/util/ListenerGroup;->accept(Ljava/lang/Object;)V
    :try_end_12f
    .catch Ljava/lang/RuntimeException; {:try_start_123 .. :try_end_12f} :catch_132
    .catchall {:try_start_123 .. :try_end_12f} :catchall_15c

    .line 501
    nop

    .line 502
    :try_start_130
    monitor-exit v0

    .line 503
    return-void

    .line 493
    :catch_132
    move-exception p2

    .line 494
    const-string p3, "WindowManager"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t add view: "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    if-ltz v2, :cond_14e

    goto :goto_156

    :cond_14e
    iget-object p1, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 v2, p1, -0x1

    .line 497
    :goto_156
    if-ltz v2, :cond_15b

    .line 498
    invoke-direct {p0, v2, p4}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)V

    .line 500
    :cond_15b
    throw p2

    .line 502
    :catchall_15c
    move-exception p1

    monitor-exit v0
    :try_end_15e
    .catchall {:try_start_130 .. :try_end_15e} :catchall_15c

    throw p1

    .line 396
    :cond_15f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Params must be WindowManager.LayoutParams"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 393
    :cond_167
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "display must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 390
    :cond_16f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "view must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist addWindowViewsListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mWindowViewsListenerGroup:Landroid/util/ListenerGroup;

    invoke-virtual {v1, p1, p2}, Landroid/util/ListenerGroup;->addListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 344
    monitor-exit v0

    .line 345
    return-void

    .line 344
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public blacklist addWindowlessRoot(Landroid/view/ViewRootImpl;)V
    .registers 4

    .line 1083
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1084
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1085
    monitor-exit v0

    .line 1086
    return-void

    .line 1085
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public blacklist canApplyFallbackWindowType(ILandroid/view/View;)Z
    .registers 7

    .line 1124
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1125
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, p2, v1}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result p2

    .line 1126
    const/4 v2, 0x1

    if-gez p2, :cond_d

    .line 1128
    monitor-exit v0

    return v2

    .line 1130
    :cond_d
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager$LayoutParams;

    .line 1133
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne p1, p2, :cond_1a

    move v1, v2

    :cond_1a
    monitor-exit v0

    return v1

    .line 1134
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public greylist-max-o changeCanvasOpacity(Landroid/os/IBinder;Z)V
    .registers 6

    .line 745
    if-nez p1, :cond_3

    .line 746
    return-void

    .line 748
    :cond_3
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 749
    :try_start_6
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_e
    if-ltz v1, :cond_2c

    .line 750
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v2, p1, :cond_29

    .line 751
    iget-object p1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewRootImpl;

    invoke-virtual {p1, p2}, Landroid/view/ViewRootImpl;->changeCanvasOpacity(Z)V

    .line 752
    monitor-exit v0

    return-void

    .line 749
    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 755
    :cond_2c
    monitor-exit v0

    .line 756
    return-void

    .line 755
    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_2e

    throw p1
.end method

.method public greylist-max-o closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 551
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/view/WindowManagerGlobal;->closeAllExceptView(Landroid/os/IBinder;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method public greylist-max-o closeAllExceptView(Landroid/os/IBinder;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 564
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 565
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 566
    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_77

    .line 567
    if-eqz p2, :cond_17

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p2, :cond_74

    :cond_17
    if-eqz p1, :cond_25

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    .line 568
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v4, p1, :cond_74

    .line 569
    :cond_25
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewRootImpl;

    .line 571
    if-eqz p3, :cond_71

    .line 572
    new-instance v5, Landroid/view/WindowLeaked;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has leaked window "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 574
    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that was originally added here"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->getLocation()Landroid/view/WindowLeaked;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/view/WindowLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 576
    const-string v4, "WindowManager"

    const-string v6, ""

    invoke-static {v4, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 579
    :cond_71
    invoke-direct {p0, v3, v2}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)V

    .line 566
    :cond_74
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 582
    :cond_77
    monitor-exit v0

    .line 583
    return-void

    .line 582
    :catchall_79
    move-exception p1

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_3 .. :try_end_7b} :catchall_79

    throw p1
.end method

.method greylist-max-o doRemoveView(Landroid/view/ViewRootImpl;)V
    .registers 5

    .line 601
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 602
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 603
    if-ltz p1, :cond_22

    .line 604
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 605
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 606
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 607
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 609
    :cond_22
    iget-object p1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    .line 610
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mWindowViewsListenerGroup:Landroid/util/ListenerGroup;

    invoke-virtual {p0}, Landroid/view/WindowManagerGlobal;->getWindowViews()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ListenerGroup;->accept(Ljava/lang/Object;)V

    .line 614
    if-eqz p1, :cond_3f

    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    if-eqz v1, :cond_3f

    .line 615
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    invoke-static {v1}, Landroid/os/SystemProperties;->removeChangeCallback(Ljava/lang/Runnable;)V

    .line 616
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    .line 618
    :cond_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_46

    .line 622
    if-eqz p1, :cond_45

    .line 623
    invoke-static {}, Landroid/view/InsetsAnimationThread;->release()V

    .line 625
    :cond_45
    return-void

    .line 618
    :catchall_46
    move-exception p1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p1
.end method

.method public greylist-max-o dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 14

    .line 646
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 647
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 649
    :try_start_a
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_d1

    .line 650
    :try_start_d
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 652
    const-string v3, "Profile data in ms:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    const/4 v3, 0x0

    move v4, v3

    :goto_1a
    if-ge v4, v2, :cond_4a

    .line 655
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewRootImpl;

    .line 656
    invoke-static {v5}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v6

    .line 657
    const-string v7, "\n\t%s (visibility=%d)"

    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v6, v8}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v7, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 659
    nop

    .line 660
    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v5

    iget-object v5, v5, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 661
    if-eqz v5, :cond_47

    .line 662
    invoke-virtual {v5, v1, p1, p2}, Landroid/view/ThreadedRenderer;->dumpGfxInfo(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 654
    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 666
    :cond_4a
    const-string p1, "\nView hierarchy:\n"

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    new-instance p1, Landroid/view/ViewRootImpl$GfxInfo;

    invoke-direct {p1}, Landroid/view/ViewRootImpl$GfxInfo;-><init>()V

    .line 670
    move p2, v3

    :goto_55
    const/high16 v4, 0x44800000    # 1024.0f

    if-ge p2, v2, :cond_8d

    .line 671
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewRootImpl;

    .line 672
    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->getGfxInfo()Landroid/view/ViewRootImpl$GfxInfo;

    move-result-object v6

    .line 673
    invoke-virtual {p1, v6}, Landroid/view/ViewRootImpl$GfxInfo;->add(Landroid/view/ViewRootImpl$GfxInfo;)V

    .line 675
    invoke-static {v5}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v5

    .line 676
    const-string v7, "  %s\n  %d views, %.2f kB of render nodes"

    iget v8, v6, Landroid/view/ViewRootImpl$GfxInfo;->viewCount:I

    .line 677
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-wide v9, v6, Landroid/view/ViewRootImpl$GfxInfo;->renderNodeMemoryUsage:J

    long-to-float v6, v9

    div-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v5, v8, v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 676
    invoke-virtual {v1, v7, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 678
    const-string v4, "\n\n"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 670
    add-int/lit8 p2, p2, 0x1

    goto :goto_55

    .line 681
    :cond_8d
    const-string p2, "\nTotal %-15s: %d\n"

    const-string v3, "ViewRootImpl"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 682
    const-string p2, "Total %-15s: %d\n"

    const-string v2, "attached Views"

    iget v3, p1, Landroid/view/ViewRootImpl$GfxInfo;->viewCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 683
    const-string p2, "Total %-15s: %.2f kB (used) / %.2f kB (capacity)\n\n"

    const-string v2, "RenderNode"

    iget-wide v5, p1, Landroid/view/ViewRootImpl$GfxInfo;->renderNodeMemoryUsage:J

    long-to-float v3, v5

    div-float/2addr v3, v4

    .line 684
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-wide v5, p1, Landroid/view/ViewRootImpl$GfxInfo;->renderNodeMemoryAllocated:J

    long-to-float p1, v5

    div-float/2addr p1, v4

    .line 685
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {v2, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 683
    invoke-virtual {v1, p2, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 686
    monitor-exit v0
    :try_end_c9
    .catchall {:try_start_d .. :try_end_c9} :catchall_ce

    .line 688
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 689
    nop

    .line 690
    return-void

    .line 686
    :catchall_ce
    move-exception p1

    :try_start_cf
    monitor-exit v0
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ce

    :try_start_d0
    throw p1
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_d1

    .line 688
    :catchall_d1
    move-exception p1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 689
    throw p1
.end method

.method public greylist getRootView(Ljava/lang/String;)Landroid/view/View;
    .registers 6

    .line 373
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_28

    .line 375
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 376
    invoke-static {v2}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 374
    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 378
    :cond_28
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_30
    if-ltz v1, :cond_4d

    .line 379
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 380
    invoke-static {v2}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 378
    :cond_4a
    add-int/lit8 v1, v1, -0x1

    goto :goto_30

    .line 382
    :cond_4d
    monitor-exit v0

    .line 384
    const/4 p1, 0x0

    return-object p1

    .line 382
    :catchall_50
    move-exception p1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw p1
.end method

.method public greylist-max-r getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;
    .registers 12
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

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    :try_start_8
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 296
    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v2, :cond_67

    .line 297
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 298
    iget-object v6, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v6, :cond_1f

    .line 299
    goto :goto_64

    .line 301
    :cond_1f
    iget-object v6, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eq v6, p1, :cond_59

    .line 302
    nop

    .line 303
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_55

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7cf

    if-gt v6, v7, :cond_55

    .line 305
    move v6, v3

    :goto_31
    if-ge v6, v2, :cond_55

    .line 306
    iget-object v7, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 307
    iget-object v8, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager$LayoutParams;

    .line 308
    iget-object v9, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    if-ne v9, v7, :cond_52

    iget-object v7, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v7, p1, :cond_52

    .line 310
    nop

    .line 311
    const/4 v5, 0x1

    goto :goto_56

    .line 305
    :cond_52
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 315
    :cond_55
    move v5, v3

    :goto_56
    if-nez v5, :cond_59

    .line 316
    goto :goto_64

    .line 319
    :cond_59
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    :goto_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 321
    :cond_67
    monitor-exit v1

    .line 322
    return-object v0

    .line 321
    :catchall_69
    move-exception p1

    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_8 .. :try_end_6b} :catchall_69

    throw p1
.end method

.method blacklist getSurfaceControlInputClientToken(Landroid/view/SurfaceControl;)Landroid/os/IBinder;
    .registers 5

    .line 987
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mSurfaceControlInputReceivers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 988
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mSurfaceControlInputReceivers:Landroid/util/SparseArray;

    .line 989
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v2

    .line 988
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;

    .line 990
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2f

    .line 992
    if-nez v1, :cond_2c

    .line 993
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No registered input event receiver with sc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const/4 p1, 0x0

    return-object p1

    .line 996
    :cond_2c
    iget-object p1, v1, Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;->mClientToken:Landroid/os/IBinder;

    return-object p1

    .line 990
    :catchall_2f
    move-exception p1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public greylist getViewRootNames()[Ljava/lang/String;
    .registers 8

    .line 277
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 279
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 280
    add-int v3, v1, v2

    new-array v3, v3, [Ljava/lang/String;

    .line 281
    const/4 v4, 0x0

    move v5, v4

    :goto_15
    if-ge v5, v1, :cond_28

    .line 282
    iget-object v6, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 281
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 284
    :cond_28
    nop

    :goto_29
    if-ge v4, v2, :cond_3e

    .line 285
    add-int v5, v4, v1

    iget-object v6, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 284
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 287
    :cond_3e
    monitor-exit v0

    return-object v3

    .line 288
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public greylist-max-o getWindowView(Landroid/os/IBinder;)Landroid/view/View;
    .registers 7

    .line 359
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 360
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 361
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1f

    .line 362
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 363
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_1c

    .line 364
    monitor-exit v0

    return-object v3

    .line 361
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 367
    :cond_1f
    monitor-exit v0

    .line 368
    const/4 p1, 0x0

    return-object p1

    .line 367
    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p1
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

    .line 330
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 332
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist mirrorWallpaperSurface(I)Landroid/view/SurfaceControl;
    .registers 3

    .line 762
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->mirrorWallpaperSurface(I)Landroid/view/SurfaceControl;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    .line 763
    :catch_9
    move-exception p1

    .line 764
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist registerBatchedSurfaceControlInputReceiver(Landroid/window/InputTransferToken;Landroid/view/SurfaceControl;Landroid/view/Choreographer;Landroid/view/SurfaceControlInputReceiver;)Landroid/window/InputTransferToken;
    .registers 15

    .line 927
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 928
    new-instance v1, Landroid/window/InputTransferToken;

    invoke-direct {v1}, Landroid/window/InputTransferToken;-><init>()V

    .line 929
    invoke-static {v0, p1, p2, v1}, Landroid/view/WindowManagerGlobal;->createInputChannel(Landroid/os/IBinder;Landroid/window/InputTransferToken;Landroid/view/SurfaceControl;Landroid/window/InputTransferToken;)Landroid/view/InputChannel;

    move-result-object v4

    .line 932
    iget-object p1, p0, Landroid/view/WindowManagerGlobal;->mSurfaceControlInputReceivers:Landroid/util/SparseArray;

    monitor-enter p1

    .line 933
    :try_start_11
    iget-object v8, p0, Landroid/view/WindowManagerGlobal;->mSurfaceControlInputReceivers:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result p2

    new-instance v9, Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;

    new-instance v2, Landroid/view/WindowManagerGlobal$3;

    .line 935
    invoke-virtual {p3}, Landroid/view/Choreographer;->getLooper()Landroid/os/Looper;

    move-result-object v5

    move-object v3, p0

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManagerGlobal$3;-><init>(Landroid/view/WindowManagerGlobal;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Landroid/view/SurfaceControlInputReceiver;)V

    const/4 p3, 0x0

    invoke-direct {v9, v0, v2, p3}, Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;-><init>(Landroid/os/IBinder;Landroid/view/InputEventReceiver;Landroid/view/WindowManagerGlobal-IA;)V

    .line 933
    invoke-virtual {v8, p2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 943
    monitor-exit p1

    .line 944
    return-object v1

    .line 943
    :catchall_2e
    move-exception v0

    move-object p2, v0

    monitor-exit p1
    :try_end_31
    .catchall {:try_start_11 .. :try_end_31} :catchall_2e

    throw p2
.end method

.method public blacklist registerProposedRotationListener(Landroid/os/IBinder;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 9

    .line 772
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 773
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mProposedRotationListenerMap:Ljava/util/WeakHashMap;

    if-nez v1, :cond_f

    .line 774
    new-instance v1, Ljava/util/WeakHashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v1, p0, Landroid/view/WindowManagerGlobal;->mProposedRotationListenerMap:Ljava/util/WeakHashMap;

    .line 776
    :cond_f
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mProposedRotationListenerMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;

    .line 777
    nop

    .line 778
    if-nez v1, :cond_26

    .line 779
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mProposedRotationListenerMap:Ljava/util/WeakHashMap;

    new-instance v3, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;-><init>(Landroid/view/WindowManagerGlobal-IA;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 778
    :cond_26
    move-object v3, v1

    .line 782
    :goto_27
    invoke-virtual {v3, p2, p3}, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->add(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 784
    monitor-exit v0

    return-void

    .line 786
    :cond_2f
    if-eqz v1, :cond_3b

    .line 787
    new-instance p1, Landroid/view/WindowManagerGlobal$$ExternalSyntheticLambda1;

    invoke-direct {p1, p3, v1}, Landroid/view/WindowManagerGlobal$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/IntConsumer;Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 788
    monitor-exit v0

    return-void

    .line 790
    :cond_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_4f

    .line 792
    :try_start_3c
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p2

    invoke-interface {p2, p1, v3}, Landroid/view/IWindowManager;->registerProposedRotationListener(Landroid/os/IBinder;Landroid/view/IRotationWatcher;)I

    move-result p1

    .line 794
    invoke-virtual {v3, p1}, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->onRotationChanged(I)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_47} :catch_49

    .line 797
    nop

    .line 798
    return-void

    .line 795
    :catch_49
    move-exception p1

    .line 796
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 790
    :catchall_4f
    move-exception p1

    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p1
.end method

.method public blacklist registerTrustedPresentationListener(Landroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/window/TrustedPresentationThresholds;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 891
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mTrustedPresentationListener:Landroid/view/WindowManagerGlobal$TrustedPresentationListener;

    invoke-static {v0, p1, p2, p4, p3}, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->-$$Nest$maddListener(Landroid/view/WindowManagerGlobal$TrustedPresentationListener;Landroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    .line 892
    return-void
.end method

.method blacklist registerUnbatchedSurfaceControlInputReceiver(Landroid/window/InputTransferToken;Landroid/view/SurfaceControl;Landroid/os/Looper;Landroid/view/SurfaceControlInputReceiver;)Landroid/window/InputTransferToken;
    .registers 11

    .line 950
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 951
    new-instance v1, Landroid/window/InputTransferToken;

    invoke-direct {v1}, Landroid/window/InputTransferToken;-><init>()V

    .line 952
    invoke-static {v0, p1, p2, v1}, Landroid/view/WindowManagerGlobal;->createInputChannel(Landroid/os/IBinder;Landroid/window/InputTransferToken;Landroid/view/SurfaceControl;Landroid/window/InputTransferToken;)Landroid/view/InputChannel;

    move-result-object p1

    .line 955
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mSurfaceControlInputReceivers:Landroid/util/SparseArray;

    monitor-enter v2

    .line 956
    :try_start_11
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mSurfaceControlInputReceivers:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result p2

    new-instance v4, Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;

    new-instance v5, Landroid/view/WindowManagerGlobal$4;

    invoke-direct {v5, p0, p1, p3, p4}, Landroid/view/WindowManagerGlobal$4;-><init>(Landroid/view/WindowManagerGlobal;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/SurfaceControlInputReceiver;)V

    const/4 p1, 0x0

    invoke-direct {v4, v0, v5, p1}, Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;-><init>(Landroid/os/IBinder;Landroid/view/InputEventReceiver;Landroid/view/WindowManagerGlobal-IA;)V

    invoke-virtual {v3, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 965
    monitor-exit v2

    .line 966
    return-object v1

    .line 965
    :catchall_27
    move-exception p1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public greylist-max-r removeView(Landroid/view/View;Z)V
    .registers 7

    .line 526
    if-eqz p1, :cond_43

    .line 530
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 531
    const/4 v1, 0x1

    :try_start_6
    invoke-direct {p0, p1, v1}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v1

    .line 532
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    .line 533
    invoke-direct {p0, v1, p2}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)V

    .line 534
    if-ne v2, p1, :cond_1d

    .line 535
    monitor-exit v0

    return-void

    .line 538
    :cond_1d
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling with view "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " but the ViewAncestor is attached to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 540
    :catchall_40
    move-exception p1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_6 .. :try_end_42} :catchall_40

    throw p1

    .line 527
    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "view must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist removeWindowViewsListener(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mWindowViewsListenerGroup:Landroid/util/ListenerGroup;

    invoke-virtual {v1, p1}, Landroid/util/ListenerGroup;->removeListener(Ljava/util/function/Consumer;)V

    .line 355
    monitor-exit v0

    .line 356
    return-void

    .line 355
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public blacklist removeWindowlessRoot(Landroid/view/ViewRootImpl;)V
    .registers 4

    .line 1090
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1091
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1092
    monitor-exit v0

    .line 1093
    return-void

    .line 1092
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public greylist-max-o reportNewConfiguration(Landroid/content/res/Configuration;)V
    .registers 6

    .line 733
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 734
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 735
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 736
    const/4 p1, 0x0

    :goto_f
    if-ge p1, v1, :cond_1f

    .line 737
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 738
    invoke-virtual {v3, v2}, Landroid/view/ViewRootImpl;->requestUpdateConfiguration(Landroid/content/res/Configuration;)V

    .line 736
    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    .line 740
    :cond_1f
    monitor-exit v0

    .line 741
    return-void

    .line 740
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public blacklist setRecentsAppBehindSystemBars(Z)V
    .registers 3

    .line 1097
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setRecentsAppBehindSystemBars(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 1100
    nop

    .line 1101
    return-void

    .line 1098
    :catch_9
    move-exception p1

    .line 1099
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o setStoppedState(Landroid/os/IBinder;Z)V
    .registers 9

    .line 698
    nop

    .line 699
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 700
    :try_start_4
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 701
    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_d
    if-ltz v1, :cond_45

    .line 702
    if-eqz p1, :cond_1d

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v3, p1, :cond_42

    .line 703
    :cond_1d
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 705
    iget-object v4, v3, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    if-ne v4, v5, :cond_31

    .line 706
    invoke-virtual {v3, p2}, Landroid/view/ViewRootImpl;->setWindowStopped(Z)V

    goto :goto_3b

    .line 708
    :cond_31
    if-nez v2, :cond_38

    .line 709
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 711
    :cond_38
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    :goto_3b
    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {p0, v3, p2}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    .line 701
    :cond_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 719
    :cond_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_4 .. :try_end_46} :catchall_66

    .line 724
    if-eqz v2, :cond_65

    .line 725
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_4e
    if-ltz p1, :cond_65

    .line 726
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 727
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v3, Landroid/view/WindowManagerGlobal$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, p2}, Landroid/view/WindowManagerGlobal$$ExternalSyntheticLambda0;-><init>(Landroid/view/ViewRootImpl;Z)V

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/ViewRootImpl$ViewRootHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 725
    add-int/lit8 p1, p1, -0x1

    goto :goto_4e

    .line 730
    :cond_65
    return-void

    .line 719
    :catchall_66
    move-exception p1

    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw p1
.end method

.method blacklist transferTouchGesture(Landroid/window/InputTransferToken;Landroid/window/InputTransferToken;)Z
    .registers 4

    .line 1002
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->transferTouchGesture(Landroid/window/InputTransferToken;Landroid/window/InputTransferToken;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 1004
    :catch_9
    move-exception p1

    .line 1005
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1007
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist trimCaches(I)V
    .registers 2

    .line 642
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->trimCaches(I)V

    .line 643
    return-void
.end method

.method public greylist-max-p trimMemory(I)V
    .registers 2

    .line 637
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->trimMemory(I)V

    .line 638
    return-void
.end method

.method public blacklist unregisterProposedRotationListener(Landroid/os/IBinder;Ljava/util/function/IntConsumer;)V
    .registers 5

    .line 803
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 804
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mProposedRotationListenerMap:Ljava/util/WeakHashMap;

    if-nez v1, :cond_9

    .line 805
    monitor-exit v0

    return-void

    .line 807
    :cond_9
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mProposedRotationListenerMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;

    .line 808
    if-nez v1, :cond_15

    .line 809
    monitor-exit v0

    return-void

    .line 811
    :cond_15
    invoke-virtual {v1, p2}, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->remove(Ljava/util/function/IntConsumer;)Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 813
    iget-object p2, p0, Landroid/view/WindowManagerGlobal;->mProposedRotationListenerMap:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_30

    .line 820
    :try_start_21
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_28} :catch_29

    .line 823
    goto :goto_2d

    .line 821
    :catch_29
    move-exception p1

    .line 822
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 824
    :goto_2d
    return-void

    .line 816
    :cond_2e
    :try_start_2e
    monitor-exit v0

    return-void

    .line 818
    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_30

    throw p1
.end method

.method blacklist unregisterSurfaceControlInputReceiver(Landroid/view/SurfaceControl;)V
    .registers 5

    .line 971
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mSurfaceControlInputReceivers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 972
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mSurfaceControlInputReceivers:Landroid/util/SparseArray;

    .line 973
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v2

    .line 972
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;

    .line 974
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_36

    .line 976
    if-nez v1, :cond_2b

    .line 977
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No registered input event receiver with sc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    return-void

    .line 980
    :cond_2b
    iget-object p1, v1, Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;->mClientToken:Landroid/os/IBinder;

    invoke-static {p1}, Landroid/view/WindowManagerGlobal;->removeInputChannel(Landroid/os/IBinder;)V

    .line 982
    iget-object p1, v1, Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {p1}, Landroid/view/InputEventReceiver;->dispose()V

    .line 983
    return-void

    .line 974
    :catchall_36
    move-exception p1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public blacklist unregisterTrustedPresentationListener(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 895
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mTrustedPresentationListener:Landroid/view/WindowManagerGlobal$TrustedPresentationListener;

    invoke-static {v0, p1}, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->-$$Nest$mremoveListener(Landroid/view/WindowManagerGlobal$TrustedPresentationListener;Ljava/util/function/Consumer;)V

    .line 896
    return-void
.end method

.method public greylist-max-o updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 6

    .line 506
    if-eqz p1, :cond_36

    .line 509
    instance-of v0, p2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2e

    check-cast p2, Landroid/view/WindowManager$LayoutParams;

    .line 513
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 516
    const/4 v1, 0x1

    :try_start_f
    invoke-direct {p0, p1, v1}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result p1

    .line 517
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    .line 518
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 519
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 520
    const/4 p1, 0x0

    invoke-virtual {v1, p2, p1}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 521
    monitor-exit v0

    .line 522
    return-void

    .line 521
    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_f .. :try_end_2d} :catchall_2b

    throw p1

    .line 510
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Params must be WindowManager.LayoutParams"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 507
    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "view must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
