.class public final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"


# instance fields
.field public mActiveRecentsLayerRef:Ljava/lang/ref/WeakReference;

.field public mActiveRecentsTask:Ljava/lang/ref/WeakReference;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mDisplayHeight:I

.field public final mDisplayId:I

.field public mDisplayRemoved:Z

.field public mDisplayWidth:I

.field public final mHandler:Landroid/os/Handler;

.field public final mInputConsumers:Ljava/util/ArrayList;

.field public mInputFocus:Landroid/os/IBinder;

.field public mInputFocusRequestTimeMillis:J

.field public final mInputTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTmpRegion:Landroid/graphics/Region;

.field public final mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

.field public final mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

.field public mUpdateInputWindowsImmediately:Z

.field public mUpdateInputWindowsNeeded:Z

.field public mUpdateInputWindowsPending:Z


# direct methods
.method public static synthetic $r8$lambda$rwaWEBUNPRPMnePQUvBFEBFeKKo(Lcom/android/server/wm/InputMonitor;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->lambda$onDisplayRemoved$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActiveRecentsLayerRef(Lcom/android/server/wm/InputMonitor;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsLayerRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActiveRecentsTask(Lcom/android/server/wm/InputMonitor;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsTask:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/DisplayContent;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayRemoved(Lcom/android/server/wm/InputMonitor;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayRemoved:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInputTransaction(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdateInputForAllWindowsConsumer(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdateInputWindowsImmediately(Lcom/android/server/wm/InputMonitor;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsImmediately:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmUpdateInputWindowsNeeded(Lcom/android/server/wm/InputMonitor;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUpdateInputWindowsPending(Lcom/android/server/wm/InputMonitor;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateInputFocusRequest(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputConsumerImpl;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputMonitor;->updateInputFocusRequest(Lcom/android/server/wm/InputConsumerImpl;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/InputMonitor;->getWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 6

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    const-wide/16 v1, 0x0

    .line 83
    iput-wide v1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocusRequestTimeMillis:J

    const/4 v1, 0x1

    .line 86
    iput-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 90
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mTmpRegion:Landroid/graphics/Region;

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    .line 114
    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsTask:Ljava/lang/ref/WeakReference;

    .line 115
    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsLayerRef:Ljava/lang/ref/WeakReference;

    .line 143
    new-instance v1, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;-><init>(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputMonitor-IA;)V

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    .line 146
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 147
    iput-object p2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 148
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    .line 149
    iget-object p2, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceControl$Transaction;

    iput-object p2, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 150
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    .line 151
    new-instance p1, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    invoke-direct {p1, p0, v0}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;-><init>(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputMonitor-IA;)V

    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    return-void
.end method

.method public static getWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;
    .registers 1

    if-eqz p0, :cond_7

    .line 404
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isTrustedOverlay(I)Z
    .registers 2

    .line 0
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
    const/4 p0, 0x0

    return p0

    :cond_3b
    :goto_3b
    const/4 p0, 0x1

    return p0
.end method

.method public static populateOverlayInputInfo(Lcom/android/server/wm/InputWindowHandleWrapper;)V
    .registers 5

    const-wide/16 v0, 0x0

    .line 692
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setDispatchingTimeoutMillis(J)V

    const/4 v0, 0x0

    .line 693
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setFocusable(Z)V

    const/4 v0, 0x0

    .line 695
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setToken(Landroid/os/IBinder;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 696
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setScaleFactor(F)V

    const/4 v1, 0x2

    .line 698
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setLayoutParamsType(I)V

    const/16 v2, 0x10

    const/4 v3, 0x1

    .line 700
    invoke-static {v1, v2, v3}, Lcom/android/server/wm/InputConfigAdapter;->getInputConfigFromWindowParams(III)I

    move-result v1

    .line 704
    invoke-static {}, Lcom/android/server/wm/InputConfigAdapter;->getMask()I

    move-result v2

    .line 699
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/InputWindowHandleWrapper;->setInputConfigMasked(II)V

    .line 705
    invoke-virtual {p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->clearTouchableRegion()V

    .line 706
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public static populateOverlayInputInfo(Lcom/android/server/wm/InputWindowHandleWrapper;Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 684
    invoke-static {p0}, Lcom/android/server/wm/InputMonitor;->populateOverlayInputInfo(Lcom/android/server/wm/InputWindowHandleWrapper;)V

    .line 685
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTouchOcclusionMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTouchOcclusionMode(I)V

    return-void
.end method

.method public static setInputWindowInfoIfNeeded(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/server/wm/InputWindowHandleWrapper;)V
    .registers 4

    .line 677
    invoke-virtual {p2}, Lcom/android/server/wm/InputWindowHandleWrapper;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 678
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/InputWindowHandleWrapper;->applyChangesToSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    :cond_9
    return-void
.end method

.method public static setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V
    .registers 7

    .line 717
    new-instance v0, Lcom/android/server/wm/InputWindowHandleWrapper;

    new-instance v1, Landroid/view/InputWindowHandle;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    invoke-direct {v0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;-><init>(Landroid/view/InputWindowHandle;)V

    .line 719
    invoke-virtual {v0, p3}, Lcom/android/server/wm/InputWindowHandleWrapper;->setName(Ljava/lang/String;)V

    const/16 p2, 0x7df

    .line 720
    invoke-virtual {v0, p2}, Lcom/android/server/wm/InputWindowHandleWrapper;->setLayoutParamsType(I)V

    const/4 p2, 0x1

    .line 721
    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTrustedOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 722
    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->populateOverlayInputInfo(Lcom/android/server/wm/InputWindowHandleWrapper;)V

    .line 723
    invoke-static {p1, p0, v0}, Lcom/android/server/wm/InputMonitor;->setInputWindowInfoIfNeeded(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/server/wm/InputWindowHandleWrapper;)V

    return-void
.end method


# virtual methods
.method public final addInputConsumer(Lcom/android/server/wm/InputConsumerImpl;)V
    .registers 5

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {p1}, Lcom/android/server/wm/InputConsumerImpl;->linkToDeathRecipient()V

    .line 169
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayHeight:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wm/InputConsumerImpl;->layout(Landroid/view/SurfaceControl$Transaction;II)V

    const/4 p1, 0x1

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    return-void
.end method

.method public createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;)V
    .registers 16

    .line 224
    invoke-virtual {p0, p2}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v0

    .line 225
    const-string v9, ", display: "

    if-eqz v0, :cond_3b

    iget-object v1, v0, Lcom/android/server/wm/InputConsumerImpl;->mClientUser:Landroid/os/UserHandle;

    invoke-virtual {v1, p5}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 226
    iget-object v0, v0, Lcom/android/server/wm/InputConsumerImpl;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->destroyInputConsumer(Landroid/os/IBinder;)Z

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Replacing existing input consumer found with name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_3b
    new-instance v0, Lcom/android/server/wm/InputConsumerImpl;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v7, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    iget-object v8, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/InputConsumerImpl;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;ILandroid/view/SurfaceControl$Transaction;)V

    .line 233
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 p3, -0x1

    sparse-switch p1, :sswitch_data_b8

    goto :goto_77

    :sswitch_57
    const-string p1, "wallpaper_input_consumer"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_60

    goto :goto_77

    :cond_60
    const/4 p3, 0x2

    goto :goto_77

    :sswitch_62
    const-string p1, "pip_input_consumer"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6b

    goto :goto_77

    :cond_6b
    const/4 p3, 0x1

    goto :goto_77

    :sswitch_6d
    const-string p1, "recents_animation_input_consumer"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_76

    goto :goto_77

    :cond_76
    const/4 p3, 0x0

    :goto_77
    packed-switch p3, :pswitch_data_c6

    .line 244
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Illegal input consumer : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 235
    :pswitch_99
    iget-object p1, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget p2, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    or-int/lit8 p2, p2, 0x20

    iput p2, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    goto :goto_b4

    .line 238
    :pswitch_a2
    iget-object p1, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget p2, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    const/high16 p3, 0x80000

    or-int/2addr p2, p3

    iput p2, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    goto :goto_b4

    .line 241
    :pswitch_ac
    iget-object p1, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget p2, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit8 p2, p2, -0x5

    iput p2, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 247
    :goto_b4
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->addInputConsumer(Lcom/android/server/wm/InputConsumerImpl;)V

    return-void

    :sswitch_data_b8
    .sparse-switch
        -0x5af18033 -> :sswitch_6d
        0x3d13fc73 -> :sswitch_62
        0x5463dca8 -> :sswitch_57
    .end sparse-switch

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_a2
        :pswitch_99
    .end packed-switch
.end method

.method public destroyInputConsumer(Landroid/os/IBinder;)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 174
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 175
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v2, :cond_27

    .line 176
    iget-object v3, v2, Lcom/android/server/wm/InputConsumerImpl;->mToken:Landroid/os/IBinder;

    if-ne v3, p1, :cond_27

    .line 177
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/InputConsumerImpl;->disposeChannelsLw(Landroid/view/SurfaceControl$Transaction;)V

    .line 178
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    return p1

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2a
    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 552
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "InputConsumers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 554
    :goto_1d
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 555
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InputConsumerImpl;

    .line 556
    iget-object v2, v1, Lcom/android/server/wm/InputConsumerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/wm/InputConsumerImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_35
    return-void
.end method

.method public getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;
    .registers 5

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1e

    .line 189
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InputConsumerImpl;

    .line 190
    iget-object v2, v1, Lcom/android/server/wm/InputConsumerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    return-object v1

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic lambda$onDisplayRemoved$0()V
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget p0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/server/input/InputManagerService;->onDisplayRemoved(I)V

    return-void
.end method

.method public layoutInputConsumers(II)V
    .registers 8

    .line 198
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayWidth:I

    if-ne v0, p1, :cond_9

    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayHeight:I

    if-ne v0, p2, :cond_9

    return-void

    .line 201
    :cond_9
    iput p1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayWidth:I

    .line 202
    iput p2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayHeight:I

    const-wide/16 v0, 0x20

    .line 204
    :try_start_f
    const-string v2, "layoutInputConsumer"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1c
    if-ltz v2, :cond_30

    .line 206
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InputConsumerImpl;

    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/wm/InputConsumerImpl;->layout(Landroid/view/SurfaceControl$Transaction;II)V
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_2e

    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    :catchall_2e
    move-exception p0

    goto :goto_34

    .line 209
    :cond_30
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_34
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 210
    throw p0
.end method

.method public onDisplayRemoved()V
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 156
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Lcom/android/server/wm/InputMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/InputMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/InputMonitor;)V

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->addWindowInfosReportedListener(Ljava/lang/Runnable;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayRemoved:Z

    return-void
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .registers 3

    .line 530
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 535
    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 536
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_a
    return-void
.end method

.method public populateInputWindowHandle(Lcom/android/server/wm/InputWindowHandleWrapper;Lcom/android/server/wm/WindowState;)V
    .registers 9

    .line 254
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 255
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->getInputApplicationHandle(Z)Landroid/view/InputApplicationHandle;

    move-result-object v0

    goto :goto_c

    :cond_b
    move-object v0, v1

    .line 254
    :goto_c
    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setInputApplicationHandle(Landroid/view/InputApplicationHandle;)V

    .line 256
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setToken(Landroid/os/IBinder;)V

    .line 257
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/android/server/wm/InputWindowHandleWrapper;->setDispatchingTimeoutMillis(J)V

    .line 258
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getTouchOcclusionMode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTouchOcclusionMode(I)V

    .line 259
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x1

    if-eqz v0, :cond_2d

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_2d

    move v0, v3

    goto :goto_2e

    :cond_2d
    move v0, v2

    :goto_2e
    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setPaused(Z)V

    .line 260
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setWindowToken(Landroid/os/IBinder;)V

    .line 267
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 268
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isModal()Z

    move-result v0

    if-eqz v0, :cond_46

    or-int/lit8 v4, v4, 0x20

    .line 271
    :cond_46
    invoke-virtual {p1, v4}, Lcom/android/server/wm/InputWindowHandleWrapper;->setLayoutParamsFlags(I)V

    .line 272
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 273
    invoke-static {v5, v4, v0}, Lcom/android/server/wm/InputConfigAdapter;->getInputConfigFromWindowParams(III)I

    move-result v0

    .line 275
    invoke-static {}, Lcom/android/server/wm/InputConfigAdapter;->getMask()I

    move-result v4

    .line 272
    invoke-virtual {p1, v0, v4}, Lcom/android/server/wm/InputWindowHandleWrapper;->setInputConfigMasked(II)V

    .line 277
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 278
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasOwnFocus()Z

    move-result v0

    if-nez v0, :cond_70

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    move-result v0

    if-eqz v0, :cond_72

    :cond_70
    move v0, v3

    goto :goto_73

    :cond_72
    move v0, v2

    .line 279
    :goto_73
    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setFocusable(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 282
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_94

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 283
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->areWallpaperTouchEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_94

    move v0, v3

    goto :goto_95

    :cond_94
    move v0, v2

    .line 284
    :goto_95
    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setHasWallpaper(Z)V

    .line 289
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setSurfaceInset(I)V

    .line 293
    iget v0, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v0, v4

    if-eqz v5, :cond_aa

    div-float/2addr v4, v0

    :cond_aa
    invoke-virtual {p1, v4}, Lcom/android/server/wm/InputWindowHandleWrapper;->setScaleFactor(F)V

    .line 297
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_ec

    .line 299
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v4

    if-eqz v4, :cond_d8

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    if-eq v4, v3, :cond_d8

    .line 306
    iget v0, p2, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_c5

    move v2, v3

    .line 310
    :cond_c5
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isModal()Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 311
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_ec

    .line 312
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    goto :goto_ec

    .line 314
    :cond_d8
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->cropWindowsToRootTaskBounds()Z

    move-result v3

    if-eqz v3, :cond_ec

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v3

    if-nez v3, :cond_ec

    .line 315
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 318
    :cond_ec
    :goto_ec
    invoke-virtual {p1, v2}, Lcom/android/server/wm/InputWindowHandleWrapper;->setReplaceTouchableRegionWithCrop(Z)V

    .line 319
    invoke-virtual {p1, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    if-nez v2, :cond_100

    .line 322
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2, v0, v1}, Lcom/android/server/wm/WindowState;->getSurfaceTouchableRegion(Landroid/graphics/Region;Landroid/view/WindowManager$LayoutParams;)V

    .line 323
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTouchableRegion(Landroid/graphics/Region;)V

    :cond_100
    return-void
.end method

.method public final requestFocus(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5

    .line 511
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    if-ne p1, v0, :cond_5

    goto :goto_4c

    .line 515
    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    .line 516
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocusRequestTimeMillis:J

    .line 517
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    iget p0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {p1, v0, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setFocusedWindow(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/view/SurfaceControl$Transaction;

    .line 518
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Focus request "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "reason=UpdateInputWindows"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0xf231

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 520
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    const/4 p1, 0x0

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_4c

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v0, -0x5813e9ef756bcbafL

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, v0, v1, p1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public resetInputConsumers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 218
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InputConsumerImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/InputConsumerImpl;->hide(Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .registers 3

    .line 541
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 546
    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    const/4 p1, 0x1

    .line 547
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_b
    return-void
.end method

.method public final scheduleUpdateInputWindows()V
    .registers 2

    .line 340
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayRemoved:Z

    if-eqz v0, :cond_5

    goto :goto_13

    .line 344
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    .line 345
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    .line 346
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    :goto_13
    return-void
.end method

.method public setActiveRecents(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    .line 395
    :goto_7
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsTask:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsLayerRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_10

    move v0, v1

    :cond_10
    const/4 v1, 0x0

    if-eqz v2, :cond_15

    move-object v3, v1

    goto :goto_1a

    .line 396
    :cond_15
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_1a
    iput-object v3, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsTask:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1f

    goto :goto_24

    .line 397
    :cond_1f
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_24
    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsLayerRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2d

    if-eqz v0, :cond_2d

    .line 399
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    :cond_2d
    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 525
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget p0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    if-eqz p1, :cond_e

    const/4 v1, 0x1

    .line 526
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->getInputApplicationHandle(Z)Landroid/view/InputApplicationHandle;

    move-result-object p1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    .line 525
    :goto_f
    invoke-virtual {v0, p0, p1}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(ILandroid/view/InputApplicationHandle;)V

    return-void
.end method

.method public setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .registers 9

    .line 367
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_21

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    int-to-long v2, v2

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, -0x76b2d1fda8b0c6dfL    # -7.239606803961096E-264

    const/4 v5, 0x4

    invoke-static {v4, v2, v3, v5, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_21
    if-eqz p1, :cond_26

    .line 369
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    .line 370
    :goto_27
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    if-ne v0, v2, :cond_2c

    goto :goto_40

    :cond_2c
    if-eqz p1, :cond_38

    .line 374
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 378
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v1, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 381
    :cond_38
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    if-eqz p2, :cond_40

    .line 384
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_40
    :goto_40
    return-void
.end method

.method public setUpdateInputWindowsNeededLw()V
    .registers 2

    const/4 v0, 0x1

    .line 328
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    return-void
.end method

.method public final updateInputFocusRequest(Lcom/android/server/wm/InputConsumerImpl;)V
    .registers 8

    .line 411
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz p1, :cond_8f

    if-eqz v0, :cond_8f

    .line 416
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsTask:Ljava/lang/ref/WeakReference;

    .line 417
    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->getWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8f

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 420
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 422
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    iget-object v2, p1, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v2, v2, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    if-eq v0, v2, :cond_2a

    .line 423
    iget-object p1, p1, Lcom/android/server/wm/InputConsumerImpl;->mName:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/InputMonitor;->requestFocus(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 426
    :cond_2a
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_a4

    .line 427
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_a4

    .line 429
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isImeAttachedToApp()Z

    move-result p1

    if-nez p1, :cond_80

    .line 433
    const-class p1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 434
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-eqz p1, :cond_53

    .line 436
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 438
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    const/16 v2, 0x13

    .line 436
    invoke-virtual {p1, v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideInputMethod(II)V

    .line 442
    :cond_53
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object p1

    if-eqz p1, :cond_65

    .line 443
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/wm/InputTarget;->getActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    :cond_65
    if-eqz v1, :cond_a4

    .line 445
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->removeImeScreenshotImmediately()V

    .line 446
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_a4

    .line 448
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 449
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;)V

    return-void

    .line 461
    :cond_80
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 462
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    const/4 v0, 0x1

    .line 461
    invoke-virtual {p1, v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->updateImeWindowStatus(ZI)V

    return-void

    :cond_8f
    if-eqz v0, :cond_94

    .line 469
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    goto :goto_95

    :cond_94
    move-object v2, v1

    :goto_95
    const/4 v3, 0x0

    if-nez v2, :cond_e3

    if-eqz p1, :cond_a5

    .line 471
    iget-object p1, p1, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    if-eqz p1, :cond_a5

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    iget-object p1, p1, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    if-ne v0, p1, :cond_a5

    :cond_a4
    return-void

    .line 487
    :cond_a5
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_e0

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    if-eqz v0, :cond_e0

    .line 488
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_cb

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x37e4813fbe14341eL    # 1.8830757259071388E-39

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v4, v5, v3, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 492
    :cond_cb
    const-string p1, "Requesting to set focus to null window"

    const-string v0, "reason=UpdateInputWindows"

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0xf231

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 494
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->removeCurrentInputFocus(I)Landroid/view/SurfaceControl$Transaction;

    .line 496
    :cond_e0
    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    return-void

    .line 500
    :cond_e3
    iget-object p1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result p1

    if-eqz p1, :cond_fc

    iget-object p1, v0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {p1}, Lcom/android/server/wm/InputWindowHandleWrapper;->isFocusable()Z

    move-result p1

    if-nez p1, :cond_f4

    goto :goto_fc

    .line 507
    :cond_f4
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/InputMonitor;->requestFocus(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void

    .line 501
    :cond_fc
    :goto_fc
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    aget-boolean p1, p1, v3

    if-eqz p1, :cond_114

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x767cbea62543cee4L    # -7.64369891452098E-263

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v4, v5, v3, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 503
    :cond_114
    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    return-void
.end method

.method public updateInputWindowsImmediately(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 355
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 356
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsImmediately:Z

    .line 357
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->run()V

    const/4 v0, 0x0

    .line 358
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsImmediately:Z

    .line 359
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public updateInputWindowsLw(Z)V
    .registers 2

    if-nez p1, :cond_7

    .line 333
    iget-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    if-nez p1, :cond_7

    return-void

    .line 336
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->scheduleUpdateInputWindows()V

    return-void
.end method
