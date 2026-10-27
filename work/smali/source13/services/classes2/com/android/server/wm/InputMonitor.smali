.class final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;,
        Lcom/android/server/wm/InputMonitor$UpdateInputWindows;
    }
.end annotation


# instance fields
.field private mActiveRecentsActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveRecentsLayerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mDisableWallpaperTouchEvents:Z

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDisplayHeight:I

.field private final mDisplayId:I

.field private mDisplayRemoved:Z

.field private mDisplayWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInputConsumers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/InputConsumerImpl;",
            ">;"
        }
    .end annotation
.end field

.field mInputFocus:Landroid/os/IBinder;

.field mInputFocusRequestTimeMillis:J

.field private final mInputTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTmpRegion:Landroid/graphics/Region;

.field private final mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

.field private final mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

.field private mUpdateInputWindowsImmediately:Z

.field private mUpdateInputWindowsNeeded:Z

.field private mUpdateInputWindowsPending:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmActiveRecentsActivity(Lcom/android/server/wm/InputMonitor;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsActivity:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmActiveRecentsLayerRef(Lcom/android/server/wm/InputMonitor;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsLayerRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/DisplayContent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayId(Lcom/android/server/wm/InputMonitor;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayRemoved(Lcom/android/server/wm/InputMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayRemoved:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInputTransaction(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateInputForAllWindowsConsumer(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateInputWindowsImmediately(Lcom/android/server/wm/InputMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsImmediately:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmDisableWallpaperTouchEvents(Lcom/android/server/wm/InputMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mDisableWallpaperTouchEvents:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUpdateInputWindowsNeeded(Lcom/android/server/wm/InputMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUpdateInputWindowsPending(Lcom/android/server/wm/InputMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateInputFocusRequest(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputConsumerImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor;->updateInputFocusRequest(Lcom/android/server/wm/InputConsumerImpl;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/InputMonitor;->getWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    .line 91
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocusRequestTimeMillis:J

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 99
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mTmpRegion:Landroid/graphics/Region;

    .line 115
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    .line 123
    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsActivity:Ljava/lang/ref/WeakReference;

    .line 124
    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsLayerRef:Ljava/lang/ref/WeakReference;

    .line 152
    new-instance v1, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;-><init>(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputMonitor$UpdateInputWindows-IA;)V

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    .line 155
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 156
    iput-object p2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 157
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    .line 158
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 159
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    .line 160
    new-instance v1, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;-><init>(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer-IA;)V

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    .line 161
    return-void
.end method

.method private addInputConsumer(Ljava/lang/String;Lcom/android/server/wm/InputConsumerImpl;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "consumer"    # Lcom/android/server/wm/InputConsumerImpl;

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {p2}, Lcom/android/server/wm/InputConsumerImpl;->linkToDeathRecipient()V

    .line 178
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayHeight:I

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/server/wm/InputConsumerImpl;->layout(Landroid/view/SurfaceControl$Transaction;II)V

    .line 179
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 180
    return-void
.end method

.method private disposeInputConsumer(Lcom/android/server/wm/InputConsumerImpl;)Z
    .registers 3
    .param p1, "consumer"    # Lcom/android/server/wm/InputConsumerImpl;

    .line 191
    if-eqz p1, :cond_9

    .line 192
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputConsumerImpl;->disposeChannelsLw(Landroid/view/SurfaceControl$Transaction;)V

    .line 193
    const/4 v0, 0x1

    return v0

    .line 195
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private static getWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 435
    .local p0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method static isTrustedOverlay(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 798
    const/16 v0, 0x7f7

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x7db

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x7dc

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x7eb

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x7f8

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x7e3

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x7e8

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x7df

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x7f2

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x7f0

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x7e6

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x7ef

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x7f9

    if-ne p0, v0, :cond_39

    goto :goto_3b

    :cond_39
    const/4 v0, 0x0

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 v0, 0x1

    :goto_3c
    return v0
.end method

.method static populateOverlayInputInfo(Lcom/android/server/wm/InputWindowHandleWrapper;)V
    .registers 7
    .param p0, "inputWindowHandle"    # Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 761
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setDispatchingTimeoutMillis(J)V

    .line 762
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setFocusable(Z)V

    .line 764
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setToken(Landroid/os/IBinder;)V

    .line 765
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lcom/android/server/wm/InputWindowHandleWrapper;->setScaleFactor(F)V

    .line 766
    const/4 v2, 0x2

    .line 767
    .local v2, "defaultType":I
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/server/wm/InputWindowHandleWrapper;->setLayoutParamsType(I)V

    .line 768
    nop

    .line 769
    const/16 v4, 0x10

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/server/wm/InputConfigAdapter;->getInputConfigFromWindowParams(III)I

    move-result v3

    .line 773
    invoke-static {}, Lcom/android/server/wm/InputConfigAdapter;->getMask()I

    move-result v4

    .line 768
    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/InputWindowHandleWrapper;->setInputConfigMasked(II)V

    .line 774
    invoke-virtual {p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->clearTouchableRegion()V

    .line 775
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    .line 777
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setMiFlags(I)V

    .line 778
    return-void
.end method

.method static populateOverlayInputInfo(Lcom/android/server/wm/InputWindowHandleWrapper;Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p0, "inputWindowHandle"    # Lcom/android/server/wm/InputWindowHandleWrapper;
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 750
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mIsCastMode:Z

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    .line 751
    .local v0, "isCastMode":Z
    :goto_f
    if-nez v0, :cond_18

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    .line 752
    .local v1, "isVisible":Z
    :goto_19
    invoke-static {p0}, Lcom/android/server/wm/InputMonitor;->populateOverlayInputInfo(Lcom/android/server/wm/InputWindowHandleWrapper;)V

    .line 754
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTouchOcclusionMode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTouchOcclusionMode(I)V

    .line 755
    return-void
.end method

.method private requestFocus(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 9
    .param p1, "focusToken"    # Landroid/os/IBinder;
    .param p2, "windowName"    # Ljava/lang/String;

    .line 505
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    if-ne p1, v0, :cond_5

    .line 506
    return-void

    .line 509
    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    .line 510
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocusRequestTimeMillis:J

    .line 511
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    iget v2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/SurfaceControl$Transaction;->setFocusedWindow(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/view/SurfaceControl$Transaction;

    .line 512
    const v0, 0xf231

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Focus request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "reason=UpdateInputWindows"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 514
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v0, :cond_50

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x94479f7

    const/4 v5, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-static {v1, v2, v3, v5, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 515
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_50
    return-void
.end method

.method private scheduleUpdateInputWindows()V
    .registers 3

    .line 370
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayRemoved:Z

    if-eqz v0, :cond_5

    .line 371
    return-void

    .line 374
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    if-nez v0, :cond_13

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    .line 376
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 378
    :cond_13
    return-void
.end method

.method static setInputWindowInfoIfNeeded(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/server/wm/InputWindowHandleWrapper;)V
    .registers 5
    .param p0, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "inputWindowHandle"    # Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 738
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1c

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update InputWindowHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_1c
    invoke-virtual {p2}, Lcom/android/server/wm/InputWindowHandleWrapper;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 742
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/InputWindowHandleWrapper;->applyChangesToSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 744
    :cond_25
    return-void
.end method

.method static setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V
    .registers 7
    .param p0, "sc"    # Landroid/view/SurfaceControl;
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "displayId"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 788
    new-instance v0, Lcom/android/server/wm/InputWindowHandleWrapper;

    new-instance v1, Landroid/view/InputWindowHandle;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    invoke-direct {v0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;-><init>(Landroid/view/InputWindowHandle;)V

    .line 790
    .local v0, "inputWindowHandle":Lcom/android/server/wm/InputWindowHandleWrapper;
    invoke-virtual {v0, p3}, Lcom/android/server/wm/InputWindowHandleWrapper;->setName(Ljava/lang/String;)V

    .line 791
    const/16 v1, 0x7df

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setLayoutParamsType(I)V

    .line 792
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTrustedOverlay(Z)V

    .line 793
    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->populateOverlayInputInfo(Lcom/android/server/wm/InputWindowHandleWrapper;)V

    .line 794
    invoke-static {p1, p0, v0}, Lcom/android/server/wm/InputMonitor;->setInputWindowInfoIfNeeded(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/server/wm/InputWindowHandleWrapper;)V

    .line 795
    return-void
.end method

.method private updateInputFocusRequest(Lcom/android/server/wm/InputConsumerImpl;)V
    .registers 11
    .param p1, "recentsAnimationInputConsumer"    # Lcom/android/server/wm/InputConsumerImpl;

    .line 442
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 445
    .local v0, "focus":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_37

    if-eqz v0, :cond_37

    .line 446
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 447
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v3

    .line 449
    .local v3, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v3, :cond_1a

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 450
    invoke-virtual {v3, v4}, Lcom/android/server/wm/RecentsAnimationController;->shouldApplyInputConsumer(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_28

    :cond_1a
    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsActivity:Ljava/lang/ref/WeakReference;

    .line 452
    invoke-static {v4}, Lcom/android/server/wm/InputMonitor;->getWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2a

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->inTransition()Z

    move-result v4

    if-eqz v4, :cond_2a

    :cond_28
    move v4, v1

    goto :goto_2b

    :cond_2a
    move v4, v2

    .line 453
    .local v4, "shouldApplyRecentsInputConsumer":Z
    :goto_2b
    if-eqz v4, :cond_37

    .line 454
    iget-object v1, p1, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v1, v1, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    iget-object v2, p1, Lcom/android/server/wm/InputConsumerImpl;->mName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/InputMonitor;->requestFocus(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 456
    return-void

    .line 460
    .end local v3    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    .end local v4    # "shouldApplyRecentsInputConsumer":Z
    :cond_37
    const/4 v3, 0x0

    if-eqz v0, :cond_3d

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    goto :goto_3e

    :cond_3d
    move-object v4, v3

    .line 461
    .local v4, "focusToken":Landroid/os/IBinder;
    :goto_3e
    if-nez v4, :cond_91

    .line 462
    if-eqz p1, :cond_4f

    iget-object v5, p1, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    if-eqz v5, :cond_4f

    iget-object v5, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    iget-object v6, p1, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v6, v6, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    if-ne v5, v6, :cond_4f

    .line 471
    return-void

    .line 478
    :cond_4f
    iget-object v5, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_8e

    iget-object v5, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    if-eqz v5, :cond_8e

    .line 479
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v5, :cond_75

    iget-object v5, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x774c1078

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v5, v8, v2

    invoke-static {v6, v7, v2, v3, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 483
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    :cond_75
    const v5, 0xf231

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "Requesting to set focus to null window"

    aput-object v7, v6, v2

    const-string/jumbo v2, "reason=UpdateInputWindows"

    aput-object v2, v6, v1

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 485
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    iget v2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->removeCurrentInputFocus(I)Landroid/view/SurfaceControl$Transaction;

    .line 487
    :cond_8e
    iput-object v3, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    .line 488
    return-void

    .line 491
    :cond_91
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v5

    if-eqz v5, :cond_aa

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {v5}, Lcom/android/server/wm/InputWindowHandleWrapper;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_a2

    goto :goto_aa

    .line 501
    :cond_a2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/android/server/wm/InputMonitor;->requestFocus(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 502
    return-void

    .line 493
    :cond_aa
    :goto_aa
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wms.Focus not requested for window="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " because it has no surface or is not focusable."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WindowManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v5, :cond_dd

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x2d58587f

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v2

    invoke-static {v6, v7, v2, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 497
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    :cond_dd
    iput-object v3, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    .line 498
    return-void
.end method


# virtual methods
.method createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;)V
    .registers 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "inputChannel"    # Landroid/view/InputChannel;
    .param p4, "clientPid"    # I
    .param p5, "clientUser"    # Landroid/os/UserHandle;

    .line 229
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ", display: "

    if-nez v0, :cond_92

    .line 234
    new-instance v0, Lcom/android/server/wm/InputConsumerImpl;

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v9, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/InputConsumerImpl;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;I)V

    .line 236
    .local v0, "consumer":Lcom/android/server/wm/InputConsumerImpl;
    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_b6

    :cond_21
    goto :goto_4c

    :sswitch_22
    const-string/jumbo v3, "wallpaper_input_consumer"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v2, 0x0

    goto :goto_4c

    :sswitch_2d
    const-string/jumbo v3, "pip_input_consumer"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v2, 0x1

    goto :goto_4c

    :sswitch_38
    const-string/jumbo v3, "recents_animation_input_consumer"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v2, 0x2

    goto :goto_4c

    :sswitch_43
    const-string v3, "cvw_input_consumer"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v2, 0x3

    :goto_4c
    packed-switch v2, :pswitch_data_c8

    .line 254
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal input consumer : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :pswitch_72
    iget-object v1, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget v2, v1, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 251
    goto :goto_8e

    .line 244
    :pswitch_7b
    iget-object v1, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget v2, v1, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v1, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 245
    goto :goto_8e

    .line 242
    :pswitch_84
    goto :goto_8e

    .line 238
    :pswitch_85
    iget-object v1, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget v2, v1, Landroid/view/InputWindowHandle;->inputConfig:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 239
    nop

    .line 257
    :goto_8e
    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/InputMonitor;->addInputConsumer(Ljava/lang/String;Lcom/android/server/wm/InputConsumerImpl;)V

    .line 258
    return-void

    .line 230
    .end local v0    # "consumer":Lcom/android/server/wm/InputConsumerImpl;
    :cond_92
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Existing input consumer found with name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_b6
    .sparse-switch
        -0x7ab727fa -> :sswitch_43
        -0x5af18033 -> :sswitch_38
        0x3d13fc73 -> :sswitch_2d
        0x5463dca8 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_85
        :pswitch_84
        :pswitch_7b
        :pswitch_72
    .end packed-switch
.end method

.method destroyInputConsumer(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InputConsumerImpl;

    invoke-direct {p0, v0}, Lcom/android/server/wm/InputMonitor;->disposeInputConsumer(Lcom/android/server/wm/InputConsumerImpl;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 185
    return v0

    .line 187
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 546
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 547
    .local v0, "inputConsumerKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "InputConsumers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 550
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InputConsumerImpl;

    invoke-virtual {v3, p1, v2, p2}, Lcom/android/server/wm/InputConsumerImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_26

    .line 553
    :cond_3e
    return-void
.end method

.method getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InputConsumerImpl;

    return-object v0
.end method

.method synthetic lambda$onDisplayRemoved$0$com-android-server-wm-InputMonitor()V
    .registers 3

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->syncInputWindows()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 170
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->onDisplayRemoved(I)V

    .line 171
    return-void
.end method

.method layoutInputConsumers(II)V
    .registers 8
    .param p1, "dw"    # I
    .param p2, "dh"    # I

    .line 203
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayWidth:I

    if-ne v0, p1, :cond_9

    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayHeight:I

    if-ne v0, p2, :cond_9

    .line 204
    return-void

    .line 206
    :cond_9
    iput p1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayWidth:I

    .line 207
    iput p2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayHeight:I

    .line 209
    const-wide/16 v0, 0x20

    :try_start_f
    const-string v2, "layoutInputConsumer"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 210
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1c
    if-ltz v2, :cond_2e

    .line 211
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InputConsumerImpl;

    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/wm/InputConsumerImpl;->layout(Landroid/view/SurfaceControl$Transaction;II)V
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_33

    .line 210
    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    .line 214
    .end local v2    # "i":I
    :cond_2e
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 215
    nop

    .line 216
    return-void

    .line 214
    :catchall_33
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 215
    throw v2
.end method

.method onDisplayRemoved()V
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 165
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/InputMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/InputMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/InputMonitor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayRemoved:Z

    .line 173
    return-void
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .registers 4
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    .line 524
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-nez v0, :cond_26

    .line 525
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_20

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pausing WindowToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 530
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 532
    :cond_26
    return-void
.end method

.method populateInputWindowHandle(Lcom/android/server/wm/InputWindowHandleWrapper;Lcom/android/server/wm/WindowState;)V
    .registers 13
    .param p1, "inputWindowHandle"    # Lcom/android/server/wm/InputWindowHandleWrapper;
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 264
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    .line 265
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->getInputApplicationHandle(Z)Landroid/view/InputApplicationHandle;

    move-result-object v0

    goto :goto_e

    :cond_d
    move-object v0, v1

    .line 264
    :goto_e
    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setInputApplicationHandle(Landroid/view/InputApplicationHandle;)V

    .line 266
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setToken(Landroid/os/IBinder;)V

    .line 267
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/android/server/wm/InputWindowHandleWrapper;->setDispatchingTimeoutMillis(J)V

    .line 268
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getTouchOcclusionMode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTouchOcclusionMode(I)V

    .line 269
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x1

    if-eqz v0, :cond_31

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->paused:Z

    if-eqz v0, :cond_31

    move v0, v3

    goto :goto_32

    :cond_31
    move v0, v2

    :goto_32
    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setPaused(Z)V

    .line 270
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setWindowToken(Landroid/view/IWindow;)V

    .line 272
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->miuiFlags:I

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setMiFlags(I)V

    .line 273
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setName(Ljava/lang/String;)V

    .line 280
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 281
    .local v0, "flags":I
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->isModal()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 282
    or-int/lit8 v0, v0, 0x20

    .line 284
    :cond_56
    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setLayoutParamsFlags(I)V

    .line 285
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 286
    invoke-static {v4, v0, v5}, Lcom/android/server/wm/InputConfigAdapter;->getInputConfigFromWindowParams(III)I

    move-result v4

    .line 288
    invoke-static {}, Lcom/android/server/wm/InputConfigAdapter;->getMask()I

    move-result v5

    .line 285
    invoke-virtual {p1, v4, v5}, Lcom/android/server/wm/InputWindowHandleWrapper;->setInputConfigMasked(II)V

    .line 290
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v4

    if-eqz v4, :cond_82

    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mPerDisplayFocusEnabled:Z

    if-nez v4, :cond_80

    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 291
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->isOnTop()Z

    move-result v4

    if-eqz v4, :cond_82

    :cond_80
    move v4, v3

    goto :goto_83

    :cond_82
    move v4, v2

    .line 292
    .local v4, "focusable":Z
    :goto_83
    invoke-virtual {p1, v4}, Lcom/android/server/wm/InputWindowHandleWrapper;->setFocusable(Z)V

    .line 294
    iget-object v5, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v5, p2}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    if-eqz v5, :cond_a0

    iget-object v5, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 295
    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result v5

    if-nez v5, :cond_a0

    iget-boolean v5, p0, Lcom/android/server/wm/InputMonitor;->mDisableWallpaperTouchEvents:Z

    if-nez v5, :cond_a0

    move v2, v3

    goto :goto_a1

    :cond_a0
    nop

    .line 297
    .local v2, "hasWallpaper":Z
    :goto_a1
    invoke-virtual {p1, v2}, Lcom/android/server/wm/InputWindowHandleWrapper;->setHasWallpaper(Z)V

    .line 302
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v5}, Lcom/android/server/wm/InputWindowHandleWrapper;->setSurfaceInset(I)V

    .line 308
    iget v5, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 309
    .local v5, "scale":F
    invoke-static {}, Landroid/util/MiuiAppSizeCompatModeStub;->get()Landroid/util/MiuiAppSizeCompatModeStub;

    move-result-object v6

    invoke-interface {v6}, Landroid/util/MiuiAppSizeCompatModeStub;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_cb

    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_cb

    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 310
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->inMiuiSizeCompatMode()Z

    move-result v6

    if-eqz v6, :cond_cb

    .line 311
    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/ActivityRecord;->getCurrentMiuiSizeCompatScale(F)F

    move-result v5

    .line 313
    :cond_cb
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v7, v5, v6

    if-eqz v7, :cond_d2

    div-float/2addr v6, v5

    :cond_d2
    invoke-virtual {p1, v6}, Lcom/android/server/wm/InputWindowHandleWrapper;->setScaleFactor(F)V

    .line 316
    const/4 v6, 0x0

    .line 317
    .local v6, "useSurfaceBoundsAsTouchRegion":Z
    const/4 v7, 0x0

    .line 318
    .local v7, "touchableRegionCrop":Landroid/view/SurfaceControl;
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    .line 319
    .local v8, "task":Lcom/android/server/wm/Task;
    if-eqz v8, :cond_11f

    .line 322
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v9

    if-eqz v9, :cond_10b

    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v9

    if-eq v9, v3, :cond_10b

    .line 323
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v3

    if-nez v3, :cond_10b

    .line 329
    const/4 v6, 0x1

    .line 331
    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->isModal()Z

    move-result v3

    if-eqz v3, :cond_103

    .line 332
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    .line 333
    .local v3, "parent":Lcom/android/server/wm/TaskFragment;
    if-eqz v3, :cond_102

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    :cond_102
    move-object v7, v1

    .line 337
    .end local v3    # "parent":Lcom/android/server/wm/TaskFragment;
    :cond_103
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_11f

    .line 338
    const/4 v6, 0x0

    goto :goto_11f

    .line 341
    :cond_10b
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->cropWindowsToRootTaskBounds()Z

    move-result v1

    if-eqz v1, :cond_11f

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v1

    if-nez v1, :cond_11f

    .line 342
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v7

    .line 345
    :cond_11f
    :goto_11f
    invoke-virtual {p1, v6}, Lcom/android/server/wm/InputWindowHandleWrapper;->setReplaceTouchableRegionWithCrop(Z)V

    .line 346
    invoke-virtual {p1, v7}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    .line 348
    if-nez v6, :cond_133

    .line 349
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mTmpRegion:Landroid/graphics/Region;

    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2, v1, v3}, Lcom/android/server/wm/WindowState;->getSurfaceTouchableRegion(Landroid/graphics/Region;Landroid/view/WindowManager$LayoutParams;)V

    .line 350
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTouchableRegion(Landroid/graphics/Region;)V

    .line 353
    :cond_133
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-interface {v1, p1, p2, v3}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->updateTouchableRegion(Lcom/android/server/wm/InputWindowHandleWrapper;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;)V

    .line 355
    return-void
.end method

.method resetInputConsumers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 222
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 223
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InputConsumerImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/InputConsumerImpl;->hide(Landroid/view/SurfaceControl$Transaction;)V

    .line 222
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 225
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .registers 4
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    .line 535
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_27

    .line 536
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_20

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resuming WindowToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 541
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 543
    :cond_27
    return-void
.end method

.method setActiveRecents(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "layer"    # Lcom/android/server/wm/ActivityRecord;

    .line 429
    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 430
    .local v0, "clear":Z
    :goto_5
    const/4 v1, 0x0

    if-eqz v0, :cond_a

    move-object v2, v1

    goto :goto_f

    :cond_a
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_f
    iput-object v2, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsActivity:Ljava/lang/ref/WeakReference;

    .line 431
    if-eqz v0, :cond_14

    goto :goto_19

    :cond_14
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_19
    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsLayerRef:Ljava/lang/ref/WeakReference;

    .line 432
    return-void
.end method

.method setFocusedAppLw(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p1, "newApp"    # Lcom/android/server/wm/ActivityRecord;

    .line 519
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    .line 520
    if-eqz p1, :cond_e

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->getInputApplicationHandle(Z)Landroid/view/InputApplicationHandle;

    move-result-object v2

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    .line 519
    :goto_f
    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(ILandroid/view/InputApplicationHandle;)V

    .line 521
    return-void
.end method

.method setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .registers 14
    .param p1, "newWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "updateInputWindows"    # Z

    .line 397
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    iget v3, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    int-to-long v3, v3

    .local v3, "protoLogParam1":J
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x55b8d160

    const/4 v7, 0x4

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v2

    const/4 v9, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7, v1, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 400
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":J
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wms.Input focus has changed to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " display="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " updateInputWindows = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WindowManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-static {}, Lcom/android/server/wm/MultiSenceManagerInternalStub;->getInstance()Lcom/android/server/wm/MultiSenceManagerInternalStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wm/MultiSenceManagerInternalStub;->updateScreenStatusWithFoucs(Lcom/android/server/wm/WindowState;)V

    .line 404
    if-eqz p1, :cond_5c

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    :cond_5c
    move-object v0, v1

    .line 405
    .local v0, "focus":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    if-ne v0, v1, :cond_62

    .line 406
    return-void

    .line 409
    :cond_62
    if-eqz p1, :cond_6e

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 413
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v2, v1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 416
    :cond_6e
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 418
    if-eqz p2, :cond_76

    .line 419
    invoke-virtual {p0, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 421
    :cond_76
    return-void
.end method

.method setUpdateInputWindowsNeededLw()V
    .registers 2

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 359
    return-void
.end method

.method updateInputWindowsImmediately(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 385
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsImmediately:Z

    .line 387
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->run()V

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsImmediately:Z

    .line 389
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 390
    return-void
.end method

.method updateInputWindowsLw(Z)V
    .registers 3
    .param p1, "force"    # Z

    .line 363
    if-nez p1, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    if-nez v0, :cond_7

    .line 364
    return-void

    .line 366
    :cond_7
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->scheduleUpdateInputWindows()V

    .line 367
    return-void
.end method
