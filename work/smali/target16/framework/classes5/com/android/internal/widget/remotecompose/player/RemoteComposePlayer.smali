.class public Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;
.super Landroid/widget/FrameLayout;
.source "RemoteComposePlayer.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/RemoteContextActions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;,
        Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$PreparedDocument;
    }
.end annotation


# static fields
.field private static final blacklist MAX_SUPPORTED_MAJOR_VERSION:I = 0x1

.field private static final blacklist MAX_SUPPORTED_MINOR_VERSION:I = 0x2

.field public static final blacklist THEME_DARK:I = -0x2

.field public static final blacklist THEME_LIGHT:I = -0x3

.field public static final blacklist THEME_UNSPECIFIED:I = -0x1


# instance fields
.field private final blacklist mHapticSupport:Lcom/android/internal/widget/remotecompose/player/platform/HapticSupport;

.field private blacklist mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

.field private final blacklist mSensorsSupport:Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;

.field private blacklist mShaderControl:Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;

.field private blacklist mStateUpdater:Lcom/android/internal/widget/remotecompose/player/state/StateUpdater;

.field private final blacklist mThemeSupport:Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4

    .line 85
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mThemeSupport:Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;

    .line 76
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorsSupport:Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;

    .line 77
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/HapticSupport;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/platform/HapticSupport;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mHapticSupport:Lcom/android/internal/widget/remotecompose/player/platform/HapticSupport;

    .line 79
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mShaderControl:Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;

    .line 86
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mThemeSupport:Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;

    .line 76
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorsSupport:Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;

    .line 77
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/HapticSupport;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/platform/HapticSupport;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mHapticSupport:Lcom/android/internal/widget/remotecompose/player/platform/HapticSupport;

    .line 79
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mShaderControl:Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mThemeSupport:Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;

    .line 76
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorsSupport:Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;

    .line 77
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/HapticSupport;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/platform/HapticSupport;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mHapticSupport:Lcom/android/internal/widget/remotecompose/player/platform/HapticSupport;

    .line 79
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mShaderControl:Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method private blacklist applyContentBehavior(I)V
    .registers 7

    .line 303
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/4 v3, -0x1

    packed-switch p1, :pswitch_data_a4

    .line 336
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eq p1, p0, :cond_a2

    .line 337
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 338
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->removeAllViews()V

    .line 339
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 341
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a2

    .line 321
    :pswitch_2a
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/ScrollView;

    if-nez p1, :cond_a2

    .line 322
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->removeAllViews()V

    .line 324
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 326
    new-instance v2, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 327
    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 328
    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 329
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {v2, v0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 332
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    goto :goto_a2

    .line 305
    :pswitch_66
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/HorizontalScrollView;

    if-nez p1, :cond_a2

    .line 306
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 307
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->removeAllViews()V

    .line 308
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 310
    new-instance v2, Landroid/widget/HorizontalScrollView;

    .line 311
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 312
    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    .line 313
    invoke-virtual {v2, v0}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 314
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {v2, v0, p1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 317
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    nop

    .line 344
    :cond_a2
    :goto_a2
    return-void

    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_66
        :pswitch_2a
    .end packed-switch
.end method

.method private static blacklist findScrollable(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;
    .registers 2

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object p0

    .line 123
    :goto_4
    if-eqz p0, :cond_16

    .line 124
    const-class v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->selfOrModifier(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    .line 126
    if-eqz v0, :cond_11

    .line 127
    return-object v0

    .line 129
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object p0

    .line 131
    goto :goto_4

    .line 133
    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getRemoteContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getRemoteContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    return-object v0
.end method

.method private blacklist init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 347
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 349
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setBackgroundColor(I)V

    .line 350
    new-instance v2, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    .line 351
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getRemoteContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    instance-of p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    if-eqz p1, :cond_32

    .line 352
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getRemoteContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 354
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/player/player/platform/SettingsRetriever;->animationsEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 353
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setAccessibilityAnimationEnabled(Z)V

    .line 356
    :cond_32
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->setBackgroundColor(I)V

    .line 357
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    new-instance p1, Lcom/android/internal/widget/remotecompose/player/state/StateUpdaterImpl;

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getRemoteContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/internal/widget/remotecompose/player/state/StateUpdaterImpl;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mStateUpdater:Lcom/android/internal/widget/remotecompose/player/state/StateUpdater;

    .line 359
    return-void
.end method

.method private blacklist isCompatible(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)Z
    .registers 6

    .line 663
    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->canBeDisplayed(IIJ)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 664
    return v3

    .line 666
    :cond_b
    const-string p1, "RemoteComposePlayer"

    const-string v0, "Unsupported document "

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic blacklist lambda$addIdActionListener$1(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;ILjava/lang/String;)V
    .registers 3

    .line 538
    invoke-interface {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;->onAction(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$new$0(Ljava/lang/String;)Z
    .registers 1

    .line 81
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist addIdActionListener(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;)V
    .registers 4

    .line 538
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    new-instance v1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->addIdActionListener(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView$ClickCallbacks;)V

    .line 539
    return-void
.end method

.method public blacklist clearLocalString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 379
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->clearLocalString(Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method public blacklist clearSystemLocalString(Ljava/lang/String;)V
    .registers 5

    .line 493
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SYSTEM:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->clearLocalString(Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method public blacklist clearUserLocalBitmap(Ljava/lang/String;)V
    .registers 5

    .line 438
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->clearLocalBitmap(Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method public blacklist clearUserLocalColor(Ljava/lang/String;)V
    .registers 5

    .line 465
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->clearLocalColor(Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method public blacklist clearUserLocalFloat(Ljava/lang/String;)V
    .registers 5

    .line 474
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->clearLocalFloat(Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public blacklist clearUserLocalInt(Ljava/lang/String;)V
    .registers 5

    .line 456
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->clearLocalInt(Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public blacklist clearUserLocalString(Ljava/lang/String;)V
    .registers 5

    .line 447
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->clearLocalString(Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public blacklist getDocument()Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getDocument()Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEvalTime()F
    .registers 2

    .line 627
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getEvalTime()F

    move-result v0

    return v0
.end method

.method public blacklist getNamedColors()[Ljava/lang/String;
    .registers 2

    .line 564
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getNamedColors()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNamedFloats()[Ljava/lang/String;
    .registers 3

    .line 573
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getNamedVariables(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNamedImages()[Ljava/lang/String;
    .registers 3

    .line 591
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getNamedVariables(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNamedStrings()[Ljava/lang/String;
    .registers 3

    .line 582
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getNamedVariables(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOpsPerFrame()I
    .registers 2

    .line 502
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getDocument()Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getOpsPerFrame()I

    move-result v0

    return v0
.end method

.method public blacklist getStateUpdater()Lcom/android/internal/widget/remotecompose/player/state/StateUpdater;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mStateUpdater:Lcom/android/internal/widget/remotecompose/player/state/StateUpdater;

    return-object v0
.end method

.method public whitelist invalidate()V
    .registers 2

    .line 185
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 187
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    if-eqz v0, :cond_c

    .line 188
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->invalidate()V

    .line 190
    :cond_c
    return-void
.end method

.method public blacklist isDraggable()Z
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->isDraggable()Z

    move-result v0

    return v0
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 2

    .line 616
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 617
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorsSupport:Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->unregisterListener()V

    .line 618
    return-void
.end method

.method public blacklist performClick(Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Ljava/lang/String;)Z
    .registers 5

    .line 164
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getRemoteContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result p2

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->performClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;ILjava/lang/String;)V

    .line 165
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist prepareDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$PreparedDocument;
    .registers 3

    .line 678
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->isCompatible(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 679
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument;-><init>(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V

    return-object v0

    .line 681
    :cond_c
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist requestLayout()V
    .registers 2

    .line 173
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 175
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    if-eqz v0, :cond_c

    .line 176
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->requestLayout()V

    .line 178
    :cond_c
    return-void
.end method

.method public blacklist scrollByOffset(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)I
    .registers 4

    .line 138
    const-class v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->selfOrModifier(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    .line 140
    if-eqz p1, :cond_13

    .line 141
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getRemoteContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;->scrollByOffset(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)I

    move-result p1

    return p1

    .line 144
    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist scrollDirection(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;)Z
    .registers 4

    .line 150
    const-class v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->selfOrModifier(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    .line 152
    if-eqz p1, :cond_13

    .line 153
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getRemoteContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;->scrollDirection(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;)Z

    move-result p1

    return p1

    .line 156
    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist setColor(Ljava/lang/String;I)V
    .registers 4

    .line 601
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->setColor(Ljava/lang/String;I)V

    .line 602
    return-void
.end method

.method public blacklist setDebug(I)V
    .registers 3

    .line 207
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->setDebug(I)V

    .line 208
    return-void
.end method

.method public blacklist setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V
    .registers 6

    .line 269
    if-eqz p1, :cond_38

    .line 270
    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->canBeDisplayed(IIJ)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 272
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->isUpdateDoc()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->updateDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V

    .line 274
    return-void

    .line 276
    :cond_16
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V

    .line 277
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getContentScroll()I

    move-result v0

    .line 278
    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->applyContentBehavior(I)V

    .line 279
    goto :goto_2e

    .line 280
    :cond_27
    const-string v0, "RemoteComposePlayer"

    const-string v1, "Unsupported document "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_2e
    sget-object v0, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/RemoteComposeTouchHelper;->REGISTRAR:Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeAccessibilityRegistrar;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeAccessibilityRegistrar;->setAccessibilityDelegate(Landroid/view/View;Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V

    goto :goto_43

    .line 285
    :cond_38
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V

    .line 287
    sget-object p1, Lcom/android/internal/widget/remotecompose/player/accessibility/platform/RemoteComposeTouchHelper;->REGISTRAR:Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeAccessibilityRegistrar;

    invoke-interface {p1, p0}, Lcom/android/internal/widget/remotecompose/player/accessibility/RemoteComposeAccessibilityRegistrar;->clearAccessibilityDelegate(Landroid/view/View;)V

    .line 290
    :goto_43
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mThemeSupport:Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/ThemeSupport;->mapColors(Landroid/content/Context;Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;)V

    .line 291
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorsSupport:Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->setupSensors(Landroid/content/Context;Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;)V

    .line 292
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mHapticSupport:Lcom/android/internal/widget/remotecompose/player/platform/HapticSupport;

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/player/platform/HapticSupport;->setupHaptics(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;)V

    .line 293
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mShaderControl:Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->checkShaders(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;)V

    .line 294
    return-void
.end method

.method public blacklist setDocument(Ljava/io/InputStream;)V
    .registers 3

    .line 259
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;-><init>(Ljava/io/InputStream;)V

    .line 260
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V

    .line 261
    return-void
.end method

.method public blacklist setDocument([B)V
    .registers 3

    .line 249
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;-><init>([B)V

    .line 250
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V

    .line 251
    return-void
.end method

.method public blacklist setLocalString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 369
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->setLocalString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public blacklist setLong(Ljava/lang/String;J)V
    .registers 5

    .line 611
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->setLong(Ljava/lang/String;J)V

    .line 612
    return-void
.end method

.method public blacklist setPreparedDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$PreparedDocument;)V
    .registers 4

    .line 690
    instance-of v0, p1, Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument;

    if-eqz v0, :cond_10

    .line 691
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument;

    .line 692
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument;->getResolvedData()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->setResolvedData(Ljava/util/Map;)V

    .line 694
    :cond_10
    invoke-interface {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$PreparedDocument;->getOriginalDoc()Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V

    .line 695
    return-void
.end method

.method public blacklist setShaderControl(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;)V
    .registers 2

    .line 637
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mShaderControl:Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;

    .line 638
    return-void
.end method

.method public blacklist setSystemLocalString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 484
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SYSTEM:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->setLocalString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method public blacklist setTheme(I)V
    .registers 3

    .line 552
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->getTheme()I

    move-result v0

    if-eq v0, p1, :cond_12

    .line 553
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->setTheme(I)V

    .line 554
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->invalidate()V

    .line 556
    :cond_12
    return-void
.end method

.method public blacklist setUseChoreographer(Z)V
    .registers 3

    .line 512
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->setUseChoreographer(Z)V

    .line 513
    return-void
.end method

.method public blacklist setUserLocalBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    .line 429
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->setLocalBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 430
    return-void
.end method

.method public blacklist setUserLocalColor(Ljava/lang/String;I)V
    .registers 6

    .line 409
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->setLocalColor(Ljava/lang/String;I)V

    .line 410
    return-void
.end method

.method public blacklist setUserLocalFloat(Ljava/lang/String;F)V
    .registers 6

    .line 419
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->setLocalFloat(Ljava/lang/String;Ljava/lang/Float;)V

    .line 420
    return-void
.end method

.method public blacklist setUserLocalInt(Ljava/lang/String;I)V
    .registers 6

    .line 399
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->setLocalInt(Ljava/lang/String;I)V

    .line 400
    return-void
.end method

.method public blacklist setUserLocalString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 389
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->setLocalString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public blacklist shouldPrepare(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)Z
    .registers 3

    .line 658
    nop

    .line 659
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getDocInfo()Lcom/android/internal/widget/remotecompose/core/CoreDocument$DocInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$DocInfo;->getSizeOfImages()I

    move-result p1

    const/16 v0, 0x3e8

    if-le p1, v0, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method

.method public blacklist showOnScreen(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z
    .registers 4

    .line 110
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->findScrollable(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_f

    .line 113
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getRemoteContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;->showOnScreen(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z

    move-result p1

    return p1

    .line 116
    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist updateDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V
    .registers 5

    .line 221
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getClock()Ljava/time/Clock;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;-><init>(Ljava/time/Clock;)V

    .line 222
    nop

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/player/player/platform/SettingsRetriever;->animationsEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 222
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setAccessibilityAnimationEnabled(Z)V

    .line 224
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->initializeContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 226
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setAnimationEnabled(Z)V

    .line 227
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setDensity(F)V

    .line 228
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setUseChoreographer(Z)V

    .line 229
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->applyUpdate(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V

    .line 230
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->invalidate()V

    .line 231
    return-void
.end method

.method public blacklist updateDocument([B)V
    .registers 3

    .line 239
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;-><init>([B)V

    .line 240
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->updateDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V

    .line 241
    return-void
.end method
