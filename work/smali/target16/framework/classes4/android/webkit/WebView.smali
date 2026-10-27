.class public Landroid/webkit/WebView;
.super Landroid/widget/AbsoluteLayout;
.source "WebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Landroid/view/ViewDebug$HierarchyHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebView$VisualStateCallback;,
        Landroid/webkit/WebView$HitTestResult;,
        Landroid/webkit/WebView$FindListenerDistributor;,
        Landroid/webkit/WebView$FindListener;,
        Landroid/webkit/WebView$PictureListener;,
        Landroid/webkit/WebView$PrivateAccess;,
        Landroid/webkit/WebView$RendererPriority;,
        Landroid/webkit/WebView$WebViewTransport;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOGTAG:Ljava/lang/String; = "WebView"

.field public static final whitelist RENDERER_PRIORITY_BOUND:I = 0x1

.field public static final whitelist RENDERER_PRIORITY_IMPORTANT:I = 0x2

.field public static final whitelist RENDERER_PRIORITY_WAIVED:I = 0x0

.field public static final whitelist SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final whitelist SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final whitelist SCHEME_TEL:Ljava/lang/String; = "tel:"

.field private static volatile greylist-max-r sEnforceThreadChecking:Z


# instance fields
.field private greylist-max-o mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

.field private greylist mProvider:Landroid/webkit/WebViewProvider;

.field private final greylist-max-r mWebViewThread:Landroid/os/Looper;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 127
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/Flags;->alwaysEnforceThreadChecking()Z

    move-result v0

    sput-boolean v0, Landroid/webkit/WebView;->sEnforceThreadChecking:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 326
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 327
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 336
    const v0, 0x1010085

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 337
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 349
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 350
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 12

    .line 367
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/Map;Z)V

    .line 368
    return-void
.end method

.method protected constructor greylist-max-r <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/Map;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 425
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2651
    nop

    .line 2652
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iput-object p2, p0, Landroid/webkit/WebView;->mWebViewThread:Landroid/os/Looper;

    .line 428
    invoke-virtual {p0}, Landroid/webkit/WebView;->getImportantForAutofill()I

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_14

    .line 429
    invoke-virtual {p0, p3}, Landroid/webkit/WebView;->setImportantForAutofill(I)V

    .line 431
    :cond_14
    invoke-virtual {p0}, Landroid/webkit/WebView;->getImportantForContentCapture()I

    move-result p2

    if-nez p2, :cond_1d

    .line 432
    invoke-virtual {p0, p3}, Landroid/webkit/WebView;->setImportantForContentCapture(I)V

    .line 435
    :cond_1d
    if-eqz p1, :cond_4e

    .line 438
    iget-object p2, p0, Landroid/webkit/WebView;->mWebViewThread:Landroid/os/Looper;

    if-eqz p2, :cond_46

    .line 442
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/Flags;->alwaysEnforceThreadChecking()Z

    move-result p2

    if-nez p2, :cond_37

    .line 443
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p2, 0x12

    if-lt p1, p2, :cond_34

    goto :goto_35

    :cond_34
    const/4 p3, 0x0

    :goto_35
    sput-boolean p3, Landroid/webkit/WebView;->sEnforceThreadChecking:Z

    .line 446
    :cond_37
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 448
    invoke-direct {p0}, Landroid/webkit/WebView;->ensureProviderCreated()V

    .line 449
    iget-object p1, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p1, p5, p6}, Landroid/webkit/WebViewProvider;->init(Ljava/util/Map;Z)V

    .line 451
    invoke-static {}, Landroid/webkit/CookieSyncManager;->setGetInstanceIsAllowed()V

    .line 452
    return-void

    .line 439
    :cond_46
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "WebView cannot be initialized on a thread that has no Looper."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 436
    :cond_4e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid context argument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor greylist <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 414
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/Map;Z)V

    .line 415
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 389
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/Map;Z)V

    .line 390
    return-void
.end method

.method static synthetic blacklist access$001(Landroid/webkit/WebView;)I
    .registers 1

    .line 115
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->getScrollBarStyle()I

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$1001(Landroid/webkit/WebView;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    .line 115
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic blacklist access$101(Landroid/webkit/WebView;II)V
    .registers 3

    .line 115
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->scrollTo(II)V

    return-void
.end method

.method static synthetic blacklist access$1101(Landroid/webkit/WebView;Landroid/content/Intent;I)V
    .registers 3

    .line 115
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic blacklist access$1201(Landroid/webkit/WebView;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 2

    .line 115
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$1300(Landroid/webkit/WebView;IIIIIIIIZ)Z
    .registers 10

    .line 115
    invoke-virtual/range {p0 .. p9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$1400(Landroid/webkit/WebView;I)Z
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->awakenScrollBars(I)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$1500(Landroid/webkit/WebView;IZ)Z
    .registers 3

    .line 115
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->awakenScrollBars(IZ)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$1600(Landroid/webkit/WebView;)F
    .registers 1

    .line 115
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVerticalScrollFactor()F

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$1700(Landroid/webkit/WebView;)F
    .registers 1

    .line 115
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollFactor()F

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$1800(Landroid/webkit/WebView;II)V
    .registers 3

    .line 115
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic blacklist access$1900(Landroid/webkit/WebView;)I
    .registers 1

    .line 115
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollbarHeight()I

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$2001(Landroid/webkit/WebView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .registers 7

    .line 115
    invoke-super/range {p0 .. p6}, Landroid/widget/AbsoluteLayout;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method static synthetic blacklist access$201(Landroid/webkit/WebView;)V
    .registers 1

    .line 115
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->computeScroll()V

    return-void
.end method

.method static synthetic blacklist access$2102(Landroid/webkit/WebView;I)I
    .registers 2

    .line 115
    iput p1, p0, Landroid/webkit/WebView;->mScrollX:I

    return p1
.end method

.method static synthetic blacklist access$2202(Landroid/webkit/WebView;I)I
    .registers 2

    .line 115
    iput p1, p0, Landroid/webkit/WebView;->mScrollY:I

    return p1
.end method

.method static synthetic blacklist access$301(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 115
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$401(Landroid/webkit/WebView;ILandroid/os/Bundle;)Z
    .registers 3

    .line 115
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$501(Landroid/webkit/WebView;)Z
    .registers 1

    .line 115
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->performLongClick()Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$601(Landroid/webkit/WebView;IIII)Z
    .registers 5

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->setFrame(IIII)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$701(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .registers 2

    .line 115
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$801(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 115
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$901(Landroid/webkit/WebView;ILandroid/graphics/Rect;)Z
    .registers 3

    .line 115
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method private greylist checkThread()V
    .registers 4

    .line 2658
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewThread:Landroid/os/Looper;

    if-eqz v0, :cond_77

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewThread:Landroid/os/Looper;

    if-eq v0, v1, :cond_77

    .line 2659
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A WebView method was called on thread \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2661
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. All WebView methods must be called on the same thread. (Expected Looper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewThread:Landroid/os/Looper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " called on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2663
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", FYI main Looper is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2664
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 2665
    const-string v1, "WebView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    invoke-static {v0}, Landroid/os/StrictMode;->onWebViewMethodCalledOnWrongThread(Ljava/lang/Throwable;)V

    .line 2668
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/Flags;->alwaysEnforceThreadChecking()Z

    move-result v1

    if-nez v1, :cond_71

    sget-boolean v1, Landroid/webkit/WebView;->sEnforceThreadChecking:Z

    if-nez v1, :cond_71

    goto :goto_77

    .line 2669
    :cond_71
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2672
    :cond_77
    :goto_77
    return-void
.end method

.method public static whitelist clearClientCertPreferences(Ljava/lang/Runnable;)V
    .registers 2

    .line 1484
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/webkit/WebViewFactoryProvider$Statics;->clearClientCertPreferences(Ljava/lang/Runnable;)V

    .line 1485
    return-void
.end method

.method public static greylist disablePlatformNotifications()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 626
    return-void
.end method

.method public static whitelist disableWebView()V
    .registers 0

    .line 2102
    invoke-static {}, Landroid/webkit/WebViewFactory;->disableWebView()V

    .line 2103
    return-void
.end method

.method public static greylist enablePlatformNotifications()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 613
    return-void
.end method

.method public static whitelist enableSlowWholeDocumentDraw()V
    .registers 1

    .line 1702
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider$Statics;->enableSlowWholeDocumentDraw()V

    .line 1703
    return-void
.end method

.method private greylist-max-o ensureProviderCreated()V
    .registers 3

    .line 2638
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2639
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    if-nez v0, :cond_16

    .line 2642
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    new-instance v1, Landroid/webkit/WebView$PrivateAccess;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$PrivateAccess;-><init>(Landroid/webkit/WebView;)V

    invoke-interface {v0, p0, v1}, Landroid/webkit/WebViewFactoryProvider;->createWebView(Landroid/webkit/WebView;Landroid/webkit/WebView$PrivateAccess;)Landroid/webkit/WebViewProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    .line 2644
    :cond_16
    return-void
.end method

.method public static whitelist findAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1680
    if-eqz p0, :cond_7

    .line 1683
    invoke-static {p0}, Landroid/webkit/FindAddress;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1681
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "addr is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist freeMemoryForTests()V
    .registers 1

    .line 635
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider$Statics;->freeMemoryForTests()V

    .line 636
    return-void
.end method

.method public static whitelist getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
    .registers 2

    .line 3127
    invoke-static {}, Landroid/webkit/WebViewFactory;->getLoadedPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 3128
    if-eqz v0, :cond_7

    .line 3129
    return-object v0

    .line 3132
    :cond_7
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 3133
    invoke-static {}, Landroid/webkit/WebViewFactory;->isWebViewSupported()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3134
    invoke-static {}, Landroid/webkit/WebViewUpdateManager;->getInstance()Landroid/webkit/WebViewUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewUpdateManager;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0

    .line 3136
    :cond_1d
    return-object v1

    .line 3139
    :cond_1e
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    .line 3140
    if-nez v0, :cond_25

    .line 3141
    return-object v1

    .line 3144
    :cond_25
    :try_start_25
    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_29} :catch_2a

    return-object v0

    .line 3145
    :catch_2a
    move-exception v0

    .line 3146
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static greylist getFactory()Landroid/webkit/WebViewFactoryProvider;
    .registers 1

    .line 2648
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized greylist getPluginList()Landroid/webkit/PluginList;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/webkit/WebView;

    monitor-enter v0

    .line 2045
    :try_start_3
    new-instance v1, Landroid/webkit/PluginList;

    invoke-direct {v1}, Landroid/webkit/PluginList;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v0

    return-object v1

    .line 2045
    :catchall_a
    move-exception v1

    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static whitelist getSafeBrowsingPrivacyPolicyUrl()Landroid/net/Uri;
    .registers 1

    .line 1550
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider$Statics;->getSafeBrowsingPrivacyPolicyUrl()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getWebViewClassLoader()Ljava/lang/ClassLoader;
    .registers 1

    .line 2433
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getWebViewClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist setDataDirectorySuffix(Ljava/lang/String;)V
    .registers 1

    .line 2080
    invoke-static {p0}, Landroid/webkit/WebViewFactory;->setDataDirectorySuffix(Ljava/lang/String;)V

    .line 2081
    return-void
.end method

.method public static whitelist setSafeBrowsingWhitelist(Ljava/util/List;Landroid/webkit/ValueCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1540
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/webkit/WebViewFactoryProvider$Statics;->setSafeBrowsingWhitelist(Ljava/util/List;Landroid/webkit/ValueCallback;)V

    .line 1541
    return-void
.end method

.method public static whitelist setWebContentsDebuggingEnabled(Z)V
    .registers 2

    .line 2032
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/webkit/WebViewFactoryProvider$Statics;->setWebContentsDebuggingEnabled(Z)V

    .line 2033
    return-void
.end method

.method private greylist-max-o setupFindListenerIfNeeded()V
    .registers 3

    .line 2631
    iget-object v0, p0, Landroid/webkit/WebView;->mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

    if-nez v0, :cond_13

    .line 2632
    new-instance v0, Landroid/webkit/WebView$FindListenerDistributor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkit/WebView$FindListenerDistributor;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebView-IA;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

    .line 2633
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    iget-object v1, p0, Landroid/webkit/WebView;->mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

    invoke-interface {v0, v1}, Landroid/webkit/WebViewProvider;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    .line 2635
    :cond_13
    return-void
.end method

.method public static whitelist startSafeBrowsing(Landroid/content/Context;Landroid/webkit/ValueCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1512
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/webkit/WebViewFactoryProvider$Statics;->initSafeBrowsing(Landroid/content/Context;Landroid/webkit/ValueCallback;)V

    .line 1513
    return-void
.end method


# virtual methods
.method public whitelist addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 1939
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1940
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1941
    return-void
.end method

.method public whitelist autofill(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    .line 2910
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->autofill(Landroid/util/SparseArray;)V

    .line 2911
    return-void
.end method

.method public whitelist canGoBack()Z
    .registers 2

    .line 952
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 953
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public whitelist canGoBackOrForward(I)Z
    .registers 3

    .line 990
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 991
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->canGoBackOrForward(I)Z

    move-result p1

    return p1
.end method

.method public whitelist canGoForward()Z
    .registers 2

    .line 970
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 971
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public whitelist canZoomIn()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2202
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2203
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->canZoomIn()Z

    move-result v0

    return v0
.end method

.method public whitelist canZoomOut()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2217
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2218
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->canZoomOut()Z

    move-result v0

    return v0
.end method

.method public whitelist capturePicture()Landroid/graphics/Picture;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1128
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1129
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist clearCache(Z)V
    .registers 3

    .line 1442
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1443
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->clearCache(Z)V

    .line 1444
    return-void
.end method

.method public whitelist clearFormData()V
    .registers 2

    .line 1453
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1454
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearFormData()V

    .line 1455
    return-void
.end method

.method public whitelist clearHistory()V
    .registers 2

    .line 1461
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1462
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearHistory()V

    .line 1463
    return-void
.end method

.method public whitelist clearMatches()V
    .registers 2

    .line 1710
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1711
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearMatches()V

    .line 1712
    return-void
.end method

.method public whitelist clearSslPreferences()V
    .registers 2

    .line 1470
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1471
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearSslPreferences()V

    .line 1472
    return-void
.end method

.method public whitelist clearView()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1101
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1102
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearView()V

    .line 1103
    return-void
.end method

.method protected whitelist computeHorizontalScrollOffset()I
    .registers 2

    .line 2727
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected whitelist computeHorizontalScrollRange()I
    .registers 2

    .line 2722
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public whitelist computeScroll()V
    .registers 2

    .line 2747
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeScroll()V

    .line 2748
    return-void
.end method

.method protected whitelist computeVerticalScrollExtent()I
    .registers 2

    .line 2742
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method protected whitelist computeVerticalScrollOffset()I
    .registers 2

    .line 2737
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected whitelist computeVerticalScrollRange()I
    .registers 2

    .line 2732
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public whitelist copyBackForwardList()Landroid/webkit/WebBackForwardList;
    .registers 2

    .line 1563
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1564
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createPrintDocumentAdapter()Landroid/print/PrintDocumentAdapter;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1138
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1139
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    const-string v1, "default"

    invoke-interface {v0, v1}, Landroid/webkit/WebViewProvider;->createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;
    .registers 3

    .line 1157
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1158
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createWebMessageChannel()[Landroid/webkit/WebMessagePort;
    .registers 2

    .line 1968
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1969
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->createWebMessageChannel()[Landroid/webkit/WebMessagePort;

    move-result-object v0

    return-object v0
.end method

.method public greylist debugDump()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2263
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2264
    return-void
.end method

.method public whitelist destroy()V
    .registers 2

    .line 598
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 599
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->destroy()V

    .line 600
    return-void
.end method

.method public whitelist dispatchCreateViewTranslationRequest(Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/view/autofill/AutofillId;",
            "[J>;[I",
            "Landroid/view/translation/TranslationCapability;",
            "Ljava/util/List<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;)V"
        }
    .end annotation

    .line 2932
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->dispatchCreateViewTranslationRequest(Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/List;)V

    .line 2933
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->dispatchCreateViewTranslationRequest(Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/List;)V

    .line 2935
    return-void
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 3088
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->preDispatchDraw(Landroid/graphics/Canvas;)V

    .line 3089
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3090
    return-void
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 3056
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist documentHasImages(Landroid/os/Message;)V
    .registers 3

    .line 1722
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1723
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->documentHasImages(Landroid/os/Message;)V

    .line 1724
    return-void
.end method

.method public greylist-max-o dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V
    .registers 4

    .line 2272
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V

    .line 2273
    return-void
.end method

.method public greylist emulateShiftHeld()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2126
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2127
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4

    .line 3176
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 3178
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 3179
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getContentHeight()I

    move-result v0

    const-string v1, "webview:contentHeight"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 3180
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getContentWidth()I

    move-result v0

    const-string v1, "webview:contentWidth"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 3181
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScale()F

    move-result v0

    const-string v1, "webview:scale"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 3182
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "webview:title"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3183
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "webview:url"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3184
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "webview:originalUrl"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3185
    return-void
.end method

.method public whitelist evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 898
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 899
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->evaluateJavaScript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 900
    return-void
.end method

.method public whitelist findAll(Ljava/lang/String;)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1606
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1607
    const-string v0, "findAll blocks UI: prefer findAllAsync"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 1608
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->findAll(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist findAllAsync(Ljava/lang/String;)V
    .registers 3

    .line 1620
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1621
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->findAllAsync(Ljava/lang/String;)V

    .line 1622
    return-void
.end method

.method public whitelist findFocus()Landroid/view/View;
    .registers 3

    .line 3111
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/webkit/WebViewProvider$ViewDelegate;->findFocus(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o findHierarchyView(Ljava/lang/String;I)Landroid/view/View;
    .registers 4

    .line 2281
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->findHierarchyView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public whitelist findNext(Z)V
    .registers 3

    .line 1591
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1592
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->findNext(Z)V

    .line 1593
    return-void
.end method

.method public whitelist flingScroll(II)V
    .registers 4

    .line 2168
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2169
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->flingScroll(II)V

    .line 2170
    return-void
.end method

.method public whitelist freeMemory()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1431
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1432
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->freeMemory()V

    .line 1433
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 2818
    const-class v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .registers 2

    .line 2805
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    .line 2806
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 2807
    if-nez v0, :cond_10

    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    :cond_10
    return-object v0
.end method

.method public whitelist getCertificate()Landroid/net/http/SslCertificate;
    .registers 2

    .line 519
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 520
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getContentHeight()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .line 1356
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1357
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public greylist getContentWidth()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .line 1369
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getContentWidth()I

    move-result v0

    return v0
.end method

.method public whitelist getFavicon()Landroid/graphics/Bitmap;
    .registers 2

    .line 1321
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1322
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHandler()Landroid/os/Handler;
    .registers 3

    .line 3106
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/webkit/WebViewProvider$ViewDelegate;->getHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHitTestResult()Landroid/webkit/WebView$HitTestResult;
    .registers 2

    .line 1230
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1231
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 588
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 589
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getOriginalUrl()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .line 1293
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1294
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getProgress()I
    .registers 2

    .line 1344
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1345
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getProgress()I

    move-result v0

    return v0
.end method

.method public whitelist getRendererPriorityWaivedWhenNotVisible()Z
    .registers 2

    .line 2407
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getRendererPriorityWaivedWhenNotVisible()Z

    move-result v0

    return v0
.end method

.method public whitelist getRendererRequestedPriority()I
    .registers 2

    .line 2395
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getRendererRequestedPriority()I

    move-result v0

    return v0
.end method

.method public whitelist getScale()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1173
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1174
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScale()F

    move-result v0

    return v0
.end method

.method public whitelist getSettings()Landroid/webkit/WebSettings;
    .registers 2

    .line 2005
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2006
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .registers 2

    .line 2423
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .line 1307
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1308
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getTouchIconUrl()Ljava/lang/String;
    .registers 2

    .line 1334
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUrl()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .line 1275
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1276
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getVisibleTitleHeight()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 507
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 508
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getVisibleTitleHeight()I

    move-result v0

    return v0
.end method

.method public whitelist getWebChromeClient()Landroid/webkit/WebChromeClient;
    .registers 2

    .line 1864
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1865
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWebViewClient()Landroid/webkit/WebViewClient;
    .registers 2

    .line 1746
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1747
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWebViewLooper()Landroid/os/Looper;
    .registers 2

    .line 2441
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewThread:Landroid/os/Looper;

    return-object v0
.end method

.method public whitelist getWebViewProvider()Landroid/webkit/WebViewProvider;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2457
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    return-object v0
.end method

.method public whitelist getWebViewRenderProcess()Landroid/webkit/WebViewRenderProcess;
    .registers 2

    .line 1771
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1772
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getWebViewRenderProcess()Landroid/webkit/WebViewRenderProcess;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWebViewRenderProcessClient()Landroid/webkit/WebViewRenderProcessClient;
    .registers 2

    .line 1827
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1828
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getWebViewRenderProcessClient()Landroid/webkit/WebViewRenderProcessClient;

    move-result-object v0

    return-object v0
.end method

.method public greylist getZoomControls()Landroid/view/View;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2187
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2188
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getZoomControls()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist goBack()V
    .registers 2

    .line 960
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 961
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->goBack()V

    .line 962
    return-void
.end method

.method public whitelist goBackOrForward(I)V
    .registers 3

    .line 1003
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1004
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->goBackOrForward(I)V

    .line 1005
    return-void
.end method

.method public whitelist goForward()V
    .registers 2

    .line 978
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 979
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->goForward()V

    .line 980
    return-void
.end method

.method public whitelist invokeZoomPicker()V
    .registers 2

    .line 1206
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1207
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->invokeZoomPicker()V

    .line 1208
    return-void
.end method

.method public greylist isPaused()Z
    .registers 2

    .line 1420
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->isPaused()Z

    move-result v0

    return v0
.end method

.method public whitelist isPrivateBrowsingEnabled()Z
    .registers 2

    .line 1011
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1012
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->isPrivateBrowsingEnabled()Z

    move-result v0

    return v0
.end method

.method public whitelist isVisibleToUserForAutofill(I)Z
    .registers 3

    .line 2915
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->isVisibleToUserForAutofill(I)Z

    move-result p1

    return p1
.end method

.method public whitelist loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 827
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 828
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    return-void
.end method

.method public whitelist loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 875
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 876
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/webkit/WebViewProvider;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    return-void
.end method

.method public whitelist loadUrl(Ljava/lang/String;)V
    .registers 3

    .line 748
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 749
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->loadUrl(Ljava/lang/String;)V

    .line 750
    return-void
.end method

.method public whitelist loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 736
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 737
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 738
    return-void
.end method

.method greylist notifyFindDialogDismissed()V
    .registers 2

    .line 2594
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2595
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->notifyFindDialogDismissed()V

    .line 2596
    return-void
.end method

.method public greylist-max-o onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 3165
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider$ViewDelegate;->onActivityResult(IILandroid/content/Intent;)V

    .line 3166
    return-void
.end method

.method public whitelist onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3

    .line 3189
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 3190
    if-nez v0, :cond_11

    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    .line 3191
    :cond_11
    return-object v0
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 2

    .line 2683
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onAttachedToWindow()V

    .line 2684
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->onAttachedToWindow()V

    .line 2685
    return-void
.end method

.method public whitelist onCheckIsTextEditor()Z
    .registers 2

    .line 3170
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->onCheckIsTextEditor()Z

    move-result v0

    return v0
.end method

.method public whitelist onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2136
    return-void
.end method

.method public whitelist onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2145
    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 2994
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2995
    return-void
.end method

.method public whitelist onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3

    .line 3006
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onCreateVirtualViewTranslationRequests([J[ILjava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J[I",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;)V"
        }
    .end annotation

    .line 2923
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider$ViewDelegate;->onCreateVirtualViewTranslationRequests([J[ILjava/util/function/Consumer;)V

    .line 2925
    return-void
.end method

.method protected greylist-max-o onDetachedFromWindowInternal()V
    .registers 2

    .line 2690
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->onDetachedFromWindow()V

    .line 2691
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onDetachedFromWindowInternal()V

    .line 2692
    return-void
.end method

.method public whitelist onDragEvent(Landroid/view/DragEvent;)Z
    .registers 3

    .line 3011
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result p1

    return p1
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 2984
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onDraw(Landroid/graphics/Canvas;)V

    .line 2985
    return-void
.end method

.method protected greylist onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .registers 8

    .line 2968
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    move-object p0, v0

    invoke-interface/range {p0 .. p6}, Landroid/webkit/WebViewProvider$ViewDelegate;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 2969
    return-void
.end method

.method public whitelist onFinishTemporaryDetach()V
    .registers 2

    .line 3100
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onFinishTemporaryDetach()V

    .line 3101
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->onFinishTemporaryDetach()V

    .line 3102
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5

    .line 3031
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider$ViewDelegate;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3032
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3033
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 2762
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2155
    return-void
.end method

.method public whitelist onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 2752
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 2953
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2954
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2955
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 2946
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2947
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2948
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 2772
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5

    .line 2782
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider$ViewDelegate;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 2777
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected whitelist onMeasure(II)V
    .registers 4

    .line 3066
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onMeasure(II)V

    .line 3067
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onMeasure(II)V

    .line 3068
    return-void
.end method

.method public greylist-max-o onMovedToDisplay(ILandroid/content/res/Configuration;)V
    .registers 4

    .line 2697
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 2698
    return-void
.end method

.method protected whitelist onOverScrolled(IIZZ)V
    .registers 6

    .line 2973
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->onOverScrolled(IIZZ)V

    .line 2974
    return-void
.end method

.method public whitelist onPause()V
    .registers 2

    .line 1400
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1401
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->onPause()V

    .line 1402
    return-void
.end method

.method public whitelist onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V
    .registers 4

    .line 2900
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    .line 2901
    return-void
.end method

.method public whitelist onProvideContentCaptureStructure(Landroid/view/ViewStructure;I)V
    .registers 4

    .line 2905
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onProvideContentCaptureStructure(Landroid/view/ViewStructure;I)V

    .line 2906
    return-void
.end method

.method public whitelist onProvideVirtualStructure(Landroid/view/ViewStructure;)V
    .registers 3

    .line 2823
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onProvideVirtualStructure(Landroid/view/ViewStructure;)V

    .line 2824
    return-void
.end method

.method public whitelist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .registers 4

    .line 3197
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    .line 3198
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    .line 3199
    if-eqz v0, :cond_d

    .line 3200
    return-object v0

    .line 3202
    :cond_d
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onResume()V
    .registers 2

    .line 1408
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1409
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->onResume()V

    .line 1410
    return-void
.end method

.method protected whitelist onScrollChanged(IIII)V
    .registers 6

    .line 3050
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onScrollChanged(IIII)V

    .line 3051
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->onScrollChanged(IIII)V

    .line 3052
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 6

    .line 3044
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onSizeChanged(IIII)V

    .line 3045
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->onSizeChanged(IIII)V

    .line 3046
    return-void
.end method

.method public whitelist onStartTemporaryDetach()V
    .registers 2

    .line 3094
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onStartTemporaryDetach()V

    .line 3095
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->onStartTemporaryDetach()V

    .line 3096
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 2757
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 2767
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist onVirtualViewTranslationResponses(Landroid/util/LongSparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/translation/ViewTranslationResponse;",
            ">;)V"
        }
    .end annotation

    .line 2940
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onVirtualViewTranslationResponses(Landroid/util/LongSparseArray;)V

    .line 2941
    return-void
.end method

.method protected whitelist onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    .line 3016
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 3019
    invoke-direct {p0}, Landroid/webkit/WebView;->ensureProviderCreated()V

    .line 3020
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onVisibilityChanged(Landroid/view/View;I)V

    .line 3021
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .registers 3

    .line 3025
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onWindowFocusChanged(Z)V

    .line 3026
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowFocusChanged(Z)V

    .line 3027
    return-void
.end method

.method protected whitelist onWindowVisibilityChanged(I)V
    .registers 3

    .line 2978
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowVisibilityChanged(I)V

    .line 2979
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onWindowVisibilityChanged(I)V

    .line 2980
    return-void
.end method

.method public whitelist overlayHorizontalScrollbar()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 483
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist overlayVerticalScrollbar()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 495
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist pageDown(Z)Z
    .registers 3

    .line 1033
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1034
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->pageDown(Z)Z

    move-result p1

    return p1
.end method

.method public whitelist pageUp(Z)Z
    .registers 3

    .line 1022
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1023
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->pageUp(Z)Z

    move-result p1

    return p1
.end method

.method public whitelist pauseTimers()V
    .registers 2

    .line 1378
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1379
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->pauseTimers()V

    .line 1380
    return-void
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 4

    .line 2960
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public whitelist performLongClick()Z
    .registers 2

    .line 2989
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public whitelist postUrl(Ljava/lang/String;[B)V
    .registers 4

    .line 762
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 763
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 764
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->postUrl(Ljava/lang/String;[B)V

    goto :goto_14

    .line 766
    :cond_f
    iget-object p2, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p2, p1}, Landroid/webkit/WebViewProvider;->loadUrl(Ljava/lang/String;)V

    .line 768
    :goto_14
    return-void
.end method

.method public whitelist postVisualStateCallback(JLandroid/webkit/WebView$VisualStateCallback;)V
    .registers 5

    .line 1089
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1090
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider;->insertVisualStateCallback(JLandroid/webkit/WebView$VisualStateCallback;)V

    .line 1091
    return-void
.end method

.method public whitelist postWebMessage(Landroid/webkit/WebMessage;Landroid/net/Uri;)V
    .registers 4

    .line 1992
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1993
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->postMessageToMainFrame(Landroid/webkit/WebMessage;Landroid/net/Uri;)V

    .line 1994
    return-void
.end method

.method public greylist refreshPlugins(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2113
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2114
    return-void
.end method

.method public whitelist reload()V
    .registers 2

    .line 942
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 943
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->reload()V

    .line 944
    return-void
.end method

.method public whitelist removeJavascriptInterface(Ljava/lang/String;)V
    .registers 3

    .line 1951
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1952
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1953
    return-void
.end method

.method public whitelist requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 5

    .line 3072
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider$ViewDelegate;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public whitelist requestFocus(ILandroid/graphics/Rect;)Z
    .registers 4

    .line 3061
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public whitelist requestFocusNodeHref(Landroid/os/Message;)V
    .registers 3

    .line 1248
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1249
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->requestFocusNodeHref(Landroid/os/Message;)V

    .line 1250
    return-void
.end method

.method public whitelist requestImageRef(Landroid/os/Message;)V
    .registers 3

    .line 1260
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1261
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->requestImageRef(Landroid/os/Message;)V

    .line 1262
    return-void
.end method

.method public greylist restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 698
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 699
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public whitelist restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .registers 3

    .line 716
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 717
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object p1

    return-object p1
.end method

.method public whitelist resumeTimers()V
    .registers 2

    .line 1387
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1388
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->resumeTimers()V

    .line 1389
    return-void
.end method

.method public whitelist savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 554
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 555
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider;->savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    return-void
.end method

.method public greylist savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 680
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 681
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->savePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public whitelist saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .registers 3

    .line 663
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 664
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object p1

    return-object p1
.end method

.method public whitelist saveWebArchive(Ljava/lang/String;)V
    .registers 3

    .line 908
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 909
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->saveWebArchive(Ljava/lang/String;)V

    .line 910
    return-void
.end method

.method public whitelist saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 926
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 927
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    .line 928
    return-void
.end method

.method public whitelist setBackgroundColor(I)V
    .registers 3

    .line 3077
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setBackgroundColor(I)V

    .line 3078
    return-void
.end method

.method public whitelist setCertificate(Landroid/net/http/SslCertificate;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 531
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 532
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setCertificate(Landroid/net/http/SslCertificate;)V

    .line 533
    return-void
.end method

.method public whitelist setDownloadListener(Landroid/webkit/DownloadListener;)V
    .registers 3

    .line 1839
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1840
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 1841
    return-void
.end method

.method greylist-max-o setFindDialogFindListener(Landroid/webkit/WebView$FindListener;)V
    .registers 3

    .line 2586
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2587
    invoke-direct {p0}, Landroid/webkit/WebView;->setupFindListenerIfNeeded()V

    .line 2588
    iget-object v0, p0, Landroid/webkit/WebView;->mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

    invoke-static {v0, p1}, Landroid/webkit/WebView$FindListenerDistributor;->-$$Nest$fputmFindDialogFindListener(Landroid/webkit/WebView$FindListenerDistributor;Landroid/webkit/WebView$FindListener;)V

    .line 2589
    return-void
.end method

.method public whitelist setFindListener(Landroid/webkit/WebView$FindListener;)V
    .registers 3

    .line 1575
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1576
    invoke-direct {p0}, Landroid/webkit/WebView;->setupFindListenerIfNeeded()V

    .line 1577
    iget-object v0, p0, Landroid/webkit/WebView;->mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

    invoke-static {v0, p1}, Landroid/webkit/WebView$FindListenerDistributor;->-$$Nest$fputmUserFindListener(Landroid/webkit/WebView$FindListenerDistributor;Landroid/webkit/WebView$FindListener;)V

    .line 1578
    return-void
.end method

.method protected greylist setFrame(IIII)Z
    .registers 6

    .line 3039
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->setFrame(IIII)Z

    move-result p1

    return p1
.end method

.method public whitelist setHorizontalScrollbarOverlay(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 462
    return-void
.end method

.method public whitelist setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 571
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 572
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method public whitelist setInitialScale(I)V
    .registers 3

    .line 1196
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1197
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setInitialScale(I)V

    .line 1198
    return-void
.end method

.method public whitelist setLayerType(ILandroid/graphics/Paint;)V
    .registers 4

    .line 3082
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3083
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3084
    return-void
.end method

.method public whitelist setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 2702
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2703
    return-void
.end method

.method public whitelist setMapTrackballToArrowKeys(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2162
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2163
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setMapTrackballToArrowKeys(Z)V

    .line 2164
    return-void
.end method

.method public whitelist setNetworkAvailable(Z)V
    .registers 3

    .line 646
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 647
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setNetworkAvailable(Z)V

    .line 648
    return-void
.end method

.method public whitelist setOverScrollMode(I)V
    .registers 3

    .line 2707
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setOverScrollMode(I)V

    .line 2710
    invoke-direct {p0}, Landroid/webkit/WebView;->ensureProviderCreated()V

    .line 2711
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setOverScrollMode(I)V

    .line 2712
    return-void
.end method

.method public whitelist setPictureListener(Landroid/webkit/WebView$PictureListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1877
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1878
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 1879
    return-void
.end method

.method public whitelist setRendererPriorityPolicy(IZ)V
    .registers 4

    .line 2378
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->setRendererPriorityPolicy(IZ)V

    .line 2379
    return-void
.end method

.method public whitelist setScrollBarStyle(I)V
    .registers 3

    .line 2716
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setScrollBarStyle(I)V

    .line 2717
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setScrollBarStyle(I)V

    .line 2718
    return-void
.end method

.method public whitelist setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .registers 3

    .line 2414
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    .line 2415
    return-void
.end method

.method public whitelist setVerticalScrollbarOverlay(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 472
    return-void
.end method

.method public whitelist setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .registers 3

    .line 1852
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1853
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1854
    return-void
.end method

.method public whitelist setWebViewClient(Landroid/webkit/WebViewClient;)V
    .registers 3

    .line 1734
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1735
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1736
    return-void
.end method

.method public whitelist setWebViewRenderProcessClient(Landroid/webkit/WebViewRenderProcessClient;)V
    .registers 4

    .line 1814
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1815
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/webkit/WebViewProvider;->setWebViewRenderProcessClient(Ljava/util/concurrent/Executor;Landroid/webkit/WebViewRenderProcessClient;)V

    .line 1816
    return-void
.end method

.method public whitelist setWebViewRenderProcessClient(Ljava/util/concurrent/Executor;Landroid/webkit/WebViewRenderProcessClient;)V
    .registers 4

    .line 1797
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1798
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->setWebViewRenderProcessClient(Ljava/util/concurrent/Executor;Landroid/webkit/WebViewRenderProcessClient;)V

    .line 1800
    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2813
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->shouldDelayChildPressedState()Z

    move-result v0

    return v0
.end method

.method public whitelist showFindDialog(Ljava/lang/String;Z)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1640
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1641
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->showFindDialog(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public whitelist stopLoading()V
    .registers 2

    .line 934
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 935
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->stopLoading()V

    .line 936
    return-void
.end method

.method public whitelist zoomBy(F)V
    .registers 6

    .line 2228
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2229
    float-to-double v0, p1

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_21

    .line 2231
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_19

    .line 2233
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->zoomBy(F)Z

    .line 2234
    return-void

    .line 2232
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "zoomFactor must be less than 100."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2230
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "zoomFactor must be greater than 0.01."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist zoomIn()Z
    .registers 2

    .line 2242
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2243
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public whitelist zoomOut()Z
    .registers 2

    .line 2252
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2253
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->zoomOut()Z

    move-result v0

    return v0
.end method
