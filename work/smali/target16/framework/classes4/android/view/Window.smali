.class public abstract Landroid/view/Window;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Window$Callback;,
        Landroid/view/Window$OnFrameMetricsAvailableListener;,
        Landroid/view/Window$OnWindowDismissedCallback;,
        Landroid/view/Window$OnWindowSwipeDismissedCallback;,
        Landroid/view/Window$WindowControllerCallback;,
        Landroid/view/Window$DecorCallback;,
        Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;,
        Landroid/view/Window$OnContentApplyWindowInsetsListener;
    }
.end annotation


# static fields
.field public static final whitelist DECOR_CAPTION_SHADE_AUTO:I = 0x0

.field public static final whitelist DECOR_CAPTION_SHADE_DARK:I = 0x2

.field public static final whitelist DECOR_CAPTION_SHADE_LIGHT:I = 0x1

.field protected static final whitelist DEFAULT_FEATURES:I = 0x41
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FEATURE_ACTION_BAR:I = 0x8

.field public static final whitelist FEATURE_ACTION_BAR_OVERLAY:I = 0x9

.field public static final whitelist FEATURE_ACTION_MODE_OVERLAY:I = 0xa

.field public static final whitelist FEATURE_ACTIVITY_TRANSITIONS:I = 0xd

.field public static final whitelist FEATURE_CONTENT_TRANSITIONS:I = 0xc

.field public static final whitelist FEATURE_CONTEXT_MENU:I = 0x6

.field public static final whitelist FEATURE_CUSTOM_TITLE:I = 0x7

.field public static final whitelist FEATURE_INDETERMINATE_PROGRESS:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FEATURE_LEFT_ICON:I = 0x3

.field public static final greylist-max-r FEATURE_MAX:I = 0xd

.field public static final whitelist FEATURE_NO_TITLE:I = 0x1

.field public static final whitelist FEATURE_OPTIONS_PANEL:I = 0x0

.field public static final whitelist FEATURE_PROGRESS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FEATURE_RIGHT_ICON:I = 0x4

.field public static final whitelist FEATURE_SWIPE_TO_DISMISS:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ID_ANDROID_CONTENT:I = 0x1020002

.field public static final whitelist NAVIGATION_BAR_BACKGROUND_TRANSITION_NAME:Ljava/lang/String; = "android:navigation:background"

.field public static final whitelist PROGRESS_END:I = 0x2710
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRESS_INDETERMINATE_OFF:I = -0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRESS_INDETERMINATE_ON:I = -0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRESS_SECONDARY_END:I = 0x7530
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRESS_SECONDARY_START:I = 0x4e20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRESS_START:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRESS_VISIBILITY_OFF:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRESS_VISIBILITY_ON:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATUS_BAR_BACKGROUND_TRANSITION_NAME:Ljava/lang/String; = "android:status:background"

.field protected static blacklist sToolkitSetFrameRateReadOnlyFlagValue:Z


# instance fields
.field private greylist-max-o mActiveChild:Landroid/view/Window;

.field private greylist mAppName:Ljava/lang/String;

.field private greylist mAppToken:Landroid/os/IBinder;

.field private greylist mCallback:Landroid/view/Window$Callback;

.field private greylist-max-o mCloseOnTouchOutside:Z

.field private greylist-max-o mContainer:Landroid/view/Window;

.field private final greylist mContext:Landroid/content/Context;

.field private blacklist mDecorCallback:Landroid/view/Window$DecorCallback;

.field private greylist-max-o mDefaultWindowFormat:I

.field private greylist mDestroyed:Z

.field private greylist mFeatures:I

.field private greylist-max-o mForcedWindowFlags:I

.field private greylist mHardwareAccelerated:Z

.field private greylist-max-o mHasChildren:Z

.field private greylist-max-o mHasSoftInputMode:Z

.field private greylist-max-o mHaveDimAmount:Z

.field private greylist-max-o mHaveWindowFormat:Z

.field private greylist-max-o mIsActive:Z

.field private greylist mLocalFeatures:I

.field private greylist-max-o mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

.field private greylist-max-o mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

.field private greylist-max-o mOnWindowSwipeDismissedCallback:Landroid/view/Window$OnWindowSwipeDismissedCallback;

.field private greylist-max-o mOverlayWithDecorCaptionEnabled:Z

.field private greylist-max-o mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

.field private greylist-max-o mSetCloseOnTouchOutside:Z

.field private blacklist mSystemBarAppearance:I

.field private final greylist mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private greylist-max-o mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

.field private greylist-max-p mWindowManager:Landroid/view/WindowManager;

.field private greylist mWindowStyle:Landroid/content/res/TypedArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 344
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->toolkitSetFrameRateReadOnly()Z

    move-result v0

    sput-boolean v0, Landroid/view/Window;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    .line 343
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4

    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    .line 317
    iput-boolean v0, p0, Landroid/view/Window;->mHasChildren:Z

    .line 318
    iput-boolean v0, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    .line 319
    iput-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    .line 320
    iput v0, p0, Landroid/view/Window;->mForcedWindowFlags:I

    .line 327
    iput-boolean v0, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    .line 328
    iput-boolean v0, p0, Landroid/view/Window;->mHaveDimAmount:Z

    .line 329
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    .line 331
    iput-boolean v0, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mOverlayWithDecorCaptionEnabled:Z

    .line 347
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 780
    iput-object p1, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    .line 781
    invoke-static {p1}, Landroid/view/Window;->getDefaultFeatures(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Landroid/view/Window;->mLocalFeatures:I

    iput p1, p0, Landroid/view/Window;->mFeatures:I

    .line 782
    return-void
.end method

.method public static whitelist getDefaultFeatures(Landroid/content/Context;)I
    .registers 3

    .line 2215
    nop

    .line 2217
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 2218
    const v0, 0x1110141

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2219
    const/4 v0, 0x1

    goto :goto_11

    .line 2218
    :cond_10
    const/4 v0, 0x0

    .line 2222
    :goto_11
    const v1, 0x1110140

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 2223
    or-int/lit8 v0, v0, 0x40

    .line 2226
    :cond_1c
    return v0
.end method

.method private greylist-max-o isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1726
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1727
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 1728
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result p1

    .line 1729
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 1730
    neg-int v2, p1

    if-lt v0, v2, :cond_2c

    if-lt p2, v2, :cond_2c

    .line 1731
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p1

    if-gt v0, v2, :cond_2c

    .line 1732
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, p1

    if-le p2, v0, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 p1, 0x0

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 p1, 0x1

    .line 1730
    :goto_2d
    return p1
.end method

.method private greylist-max-o setPrivateFlags(II)V
    .registers 6

    .line 1380
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1381
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    not-int v2, p2

    and-int/2addr v1, v2

    and-int/2addr p1, p2

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1382
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1383
    return-void
.end method


# virtual methods
.method public abstract whitelist addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public whitelist addFlags(I)V
    .registers 2

    .line 1305
    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    .line 1306
    return-void
.end method

.method public final whitelist addOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V
    .registers 4

    .line 1046
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1047
    if-eqz v0, :cond_14

    .line 1051
    if-eqz p1, :cond_c

    .line 1055
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View;->addFrameMetricsListener(Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    .line 1056
    return-void

    .line 1052
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "listener cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1048
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "can\'t observe a Window without an attached view"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-r addPrivateFlags(I)V
    .registers 2

    .line 1319
    invoke-direct {p0, p1, p1}, Landroid/view/Window;->setPrivateFlags(II)V

    .line 1320
    return-void
.end method

.method public whitelist addSystemFlags(I)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1335
    invoke-virtual {p0, p1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 1336
    return-void
.end method

.method greylist-max-o adjustLayoutParamsForSubWindow(Landroid/view/WindowManager$LayoutParams;)V
    .registers 8

    .line 948
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 949
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v2, ":"

    const/16 v3, 0x20

    const/16 v4, 0x3e8

    if-lt v1, v4, :cond_8d

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7cf

    if-gt v1, v5, :cond_8d

    .line 951
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_24

    .line 952
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 953
    if-eqz v1, :cond_24

    .line 954
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 957
    :cond_24
    if-eqz v0, :cond_2c

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_e4

    .line 958
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 959
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x3e9

    if-ne v1, v3, :cond_3d

    .line 960
    const-string v1, "Media"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7c

    .line 961
    :cond_3d
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x3ec

    if-ne v1, v3, :cond_49

    .line 962
    const-string v1, "MediaOvr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7c

    .line 963
    :cond_49
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v4, :cond_53

    .line 964
    const-string v1, "Panel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7c

    .line 965
    :cond_53
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x3ea

    if-ne v1, v3, :cond_5f

    .line 966
    const-string v1, "SubPanel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7c

    .line 967
    :cond_5f
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x3ed

    if-ne v1, v3, :cond_6b

    .line 968
    const-string v1, "AboveSubPanel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7c

    .line 969
    :cond_6b
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x3eb

    if-ne v1, v3, :cond_77

    .line 970
    const-string v1, "AtchDlg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7c

    .line 972
    :cond_77
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 974
    :goto_7c
    iget-object v1, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    if-eqz v1, :cond_89

    .line 975
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    :cond_89
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 978
    goto :goto_e4

    .line 979
    :cond_8d
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    if-lt v1, v4, :cond_c2

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0xbb7

    if-gt v1, v4, :cond_c2

    .line 985
    if-eqz v0, :cond_a1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_e4

    .line 986
    :cond_a1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 987
    const-string v1, "Sys"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 988
    iget-object v1, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    if-eqz v1, :cond_be

    .line 989
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    :cond_be
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 992
    goto :goto_e4

    .line 994
    :cond_c2
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_d3

    .line 995
    iget-object v1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-nez v1, :cond_cd

    iget-object v1, p0, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    goto :goto_d1

    :cond_cd
    iget-object v1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget-object v1, v1, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    :goto_d1
    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 997
    :cond_d3
    if-eqz v0, :cond_db

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_e4

    :cond_db
    iget-object v0, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    if-eqz v0, :cond_e4

    .line 999
    iget-object v0, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1002
    :cond_e4
    :goto_e4
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v0, :cond_f0

    .line 1003
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1005
    :cond_f0
    iget-boolean v0, p0, Landroid/view/Window;->mHardwareAccelerated:Z

    const/high16 v1, 0x1000000

    if-nez v0, :cond_fd

    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_102

    .line 1007
    :cond_fd
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1009
    :cond_102
    return-void
.end method

.method public abstract greylist alwaysReadCloseOnTouchAttr()V
.end method

.method public abstract greylist-max-o clearContentView()V
.end method

.method public whitelist clearFlags(I)V
    .registers 3

    .line 1346
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/view/Window;->setFlags(II)V

    .line 1347
    return-void
.end method

.method public abstract whitelist closeAllPanels()V
.end method

.method public abstract whitelist closePanel(I)V
.end method

.method public blacklist decorFitsSystemWindows()Z
    .registers 2

    .line 1638
    const/4 v0, 0x0

    return v0
.end method

.method public final greylist-max-o destroy()V
    .registers 2

    .line 842
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mDestroyed:Z

    .line 843
    invoke-virtual {p0}, Landroid/view/Window;->onDestroy()V

    .line 844
    return-void
.end method

.method public final blacklist dispatchOnSystemBarAppearanceChanged(I)V
    .registers 3

    .line 1122
    invoke-virtual {p0, p1}, Landroid/view/Window;->setSystemBarAppearance(I)V

    .line 1123
    iget-object v0, p0, Landroid/view/Window;->mDecorCallback:Landroid/view/Window$DecorCallback;

    if-eqz v0, :cond_c

    .line 1124
    iget-object v0, p0, Landroid/view/Window;->mDecorCallback:Landroid/view/Window$DecorCallback;

    invoke-interface {v0, p1}, Landroid/view/Window$DecorCallback;->onSystemBarAppearanceChanged(I)V

    .line 1126
    :cond_c
    iget-object v0, p0, Landroid/view/Window;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    if-eqz v0, :cond_15

    .line 1127
    iget-object v0, p0, Landroid/view/Window;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    invoke-interface {v0, p1}, Landroid/view/Window$WindowControllerCallback;->updateSystemBarsAppearance(I)V

    .line 1129
    :cond_15
    return-void
.end method

.method public final greylist-max-o dispatchOnWindowDismissed(ZZ)V
    .registers 4

    .line 1076
    iget-object v0, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    if-eqz v0, :cond_9

    .line 1077
    iget-object v0, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$OnWindowDismissedCallback;->onWindowDismissed(ZZ)V

    .line 1079
    :cond_9
    return-void
.end method

.method public final greylist-max-o dispatchOnWindowSwipeDismissed()V
    .registers 2

    .line 1088
    iget-object v0, p0, Landroid/view/Window;->mOnWindowSwipeDismissedCallback:Landroid/view/Window$OnWindowSwipeDismissedCallback;

    if-eqz v0, :cond_9

    .line 1089
    iget-object v0, p0, Landroid/view/Window;->mOnWindowSwipeDismissedCallback:Landroid/view/Window$OnWindowSwipeDismissedCallback;

    invoke-interface {v0}, Landroid/view/Window$OnWindowSwipeDismissedCallback;->onWindowSwipeDismissed()V

    .line 1091
    :cond_9
    return-void
.end method

.method protected greylist-max-o dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    .line 1389
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_9

    .line 1390
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1392
    :cond_9
    return-void
.end method

.method public whitelist findViewById(I)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1797
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getAllowEnterTransitionOverlap()Z
    .registers 2

    .line 2652
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getAllowReturnTransitionOverlap()Z
    .registers 2

    .line 2680
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist getAttributes()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    .line 1663
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public final whitelist getCallback()Landroid/view/Window$Callback;
    .registers 2

    .line 1035
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public whitelist getColorMode()I
    .registers 2

    .line 1580
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getColorMode()I

    move-result v0

    return v0
.end method

.method public final whitelist getContainer()Landroid/view/Window;
    .registers 2

    .line 833
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    return-object v0
.end method

.method public whitelist getContentScene()Landroid/transition/Scene;
    .registers 2

    .line 2415
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist getContext()Landroid/content/Context;
    .registers 2

    .line 792
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract whitelist getCurrentFocus()Landroid/view/View;
.end method

.method public abstract whitelist getDecorView()Landroid/view/View;
.end method

.method public whitelist getDesiredHdrHeadroom()F
    .registers 2

    .line 1456
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getDesiredHdrHeadroom()F

    move-result v0

    return v0
.end method

.method public greylist-max-o getElevation()F
    .registers 2

    .line 1966
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEnterTransition()Landroid/transition/Transition;
    .registers 2

    .line 2489
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getExitTransition()Landroid/transition/Transition;
    .registers 2

    .line 2518
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final whitelist getFeatures()I
    .registers 2

    .line 2207
    iget v0, p0, Landroid/view/Window;->mFeatures:I

    return v0
.end method

.method protected final whitelist getForcedWindowFlags()I
    .registers 2

    .line 1671
    iget v0, p0, Landroid/view/Window;->mForcedWindowFlags:I

    return v0
.end method

.method public whitelist getFrameRateBoostOnTouchEnabled()Z
    .registers 2

    .line 1486
    sget-boolean v0, Landroid/view/Window;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v0, :cond_d

    .line 1487
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFrameRateBoostOnTouchEnabled()Z

    move-result v0

    return v0

    .line 1489
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getInsetsController()Landroid/view/WindowInsetsController;
    .registers 2

    .line 3068
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method protected final whitelist getLocalFeatures()I
    .registers 2

    .line 2248
    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    return v0
.end method

.method public whitelist getMediaController()Landroid/media/session/MediaController;
    .registers 2

    .line 2316
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNavigationBarBackgroundView()Landroid/view/View;
    .registers 2

    .line 2176
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getNavigationBarColor()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist getNavigationBarDividerColor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2845
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;
    .registers 3

    .line 3087
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getReenterTransition()Landroid/transition/Transition;
    .registers 2

    .line 2532
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getReturnTransition()Landroid/transition/Transition;
    .registers 2

    .line 2504
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;
    .registers 2

    .line 3079
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSharedElementEnterTransition()Landroid/transition/Transition;
    .registers 2

    .line 2569
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSharedElementExitTransition()Landroid/transition/Transition;
    .registers 2

    .line 2615
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSharedElementReenterTransition()Landroid/transition/Transition;
    .registers 2

    .line 2626
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSharedElementReturnTransition()Landroid/transition/Transition;
    .registers 2

    .line 2578
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSharedElementsUseOverlay()Z
    .registers 2

    .line 2719
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getStatusBarBackgroundView()Landroid/view/View;
    .registers 2

    .line 2167
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getStatusBarColor()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public final blacklist getSystemBarAppearance()I
    .registers 2

    .line 1116
    iget v0, p0, Landroid/view/Window;->mSystemBarAppearance:I

    return v0
.end method

.method public whitelist getSystemGestureExclusionRects()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 2964
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTransitionBackgroundFadeDuration()J
    .registers 3

    .line 2693
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getTransitionManager()Landroid/transition/TransitionManager;
    .registers 2

    .line 2392
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getVolumeControlStream()I
.end method

.method public final greylist-max-o getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;
    .registers 2

    .line 1100
    iget-object v0, p0, Landroid/view/Window;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    return-object v0
.end method

.method public whitelist getWindowManager()Landroid/view/WindowManager;
    .registers 2

    .line 1018
    iget-object v0, p0, Landroid/view/Window;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public final whitelist getWindowStyle()Landroid/content/res/TypedArray;
    .registers 3

    .line 800
    monitor-enter p0

    .line 801
    :try_start_1
    iget-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    if-nez v0, :cond_f

    .line 802
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    .line 805
    :cond_f
    iget-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    monitor-exit p0

    return-object v0

    .line 806
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public final whitelist hasChildren()Z
    .registers 2

    .line 837
    iget-boolean v0, p0, Landroid/view/Window;->mHasChildren:Z

    return v0
.end method

.method public whitelist hasFeature(I)Z
    .registers 4

    .line 2236
    invoke-virtual {p0}, Landroid/view/Window;->getFeatures()I

    move-result v0

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method protected final whitelist hasSoftInputMode()Z
    .registers 2

    .line 1678
    iget-boolean v0, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    return v0
.end method

.method protected greylist-max-o haveDimAmount()Z
    .registers 2

    .line 2272
    iget-boolean v0, p0, Landroid/view/Window;->mHaveDimAmount:Z

    return v0
.end method

.method public whitelist injectInputEvent(Landroid/view/InputEvent;)V
    .registers 2

    .line 2379
    return-void
.end method

.method public abstract whitelist invalidatePanelMenu(I)V
.end method

.method public final whitelist isActive()Z
    .registers 2

    .line 1774
    iget-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    return v0
.end method

.method public final greylist-max-r isDestroyed()Z
    .registers 2

    .line 853
    iget-boolean v0, p0, Landroid/view/Window;->mDestroyed:Z

    return v0
.end method

.method public abstract whitelist isFloating()Z
.end method

.method public whitelist isFrameRatePowerSavingsBalanced()Z
    .registers 2

    .line 1522
    sget-boolean v0, Landroid/view/Window;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v0, :cond_d

    .line 1523
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFrameRatePowerSavingsBalanced()Z

    move-result v0

    return v0

    .line 1525
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isNavigationBarContrastEnforced()Z
    .registers 2

    .line 2917
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isOverlayWithDecorCaptionEnabled()Z
    .registers 2

    .line 3008
    iget-boolean v0, p0, Landroid/view/Window;->mOverlayWithDecorCaptionEnabled:Z

    return v0
.end method

.method public abstract whitelist isShortcutKey(ILandroid/view/KeyEvent;)Z
.end method

.method public whitelist isStatusBarContrastEnforced()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2883
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isWideColorGamut()Z
    .registers 3

    .line 1591
    invoke-virtual {p0}, Landroid/view/Window;->getColorMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 1592
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 1591
    :goto_1b
    return v1
.end method

.method public final whitelist makeActive()V
    .registers 3

    .line 1762
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v0, :cond_15

    .line 1763
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget-object v0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    if-eqz v0, :cond_11

    .line 1764
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget-object v0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/Window;->mIsActive:Z

    .line 1766
    :cond_11
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iput-object p0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    .line 1768
    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    .line 1769
    invoke-virtual {p0}, Landroid/view/Window;->onActive()V

    .line 1770
    return-void
.end method

.method public greylist-max-o notifyRestrictedCaptionAreaCallback(IIII)V
    .registers 6

    .line 3013
    iget-object v0, p0, Landroid/view/Window;->mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    if-eqz v0, :cond_10

    .line 3014
    iget-object v0, p0, Landroid/view/Window;->mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3015
    iget-object p1, p0, Landroid/view/Window;->mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    iget-object p2, p0, Landroid/view/Window;->mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

    invoke-interface {p1, p2}, Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;->onRestrictedCaptionAreaChanged(Landroid/graphics/Rect;)V

    .line 3018
    :cond_10
    return-void
.end method

.method protected abstract whitelist onActive()V
.end method

.method public abstract whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method protected blacklist onDestroy()V
    .registers 1

    .line 848
    return-void
.end method

.method public final blacklist onDrawLegacyNavigationBarBackgroundChanged(Z)Z
    .registers 3

    .line 1134
    iget-object v0, p0, Landroid/view/Window;->mDecorCallback:Landroid/view/Window$DecorCallback;

    if-nez v0, :cond_6

    .line 1135
    const/4 p1, 0x0

    return p1

    .line 1137
    :cond_6
    iget-object v0, p0, Landroid/view/Window;->mDecorCallback:Landroid/view/Window$DecorCallback;

    invoke-interface {v0, p1}, Landroid/view/Window$DecorCallback;->onDrawLegacyNavigationBarBackgroundChanged(Z)Z

    move-result p1

    return p1
.end method

.method public abstract greylist-max-o onMultiWindowModeChanged()V
.end method

.method public abstract greylist-max-o onPictureInPictureModeChanged(Z)V
.end method

.method public abstract whitelist openPanel(ILandroid/view/KeyEvent;)V
.end method

.method public abstract whitelist peekDecorView()Landroid/view/View;
.end method

.method public abstract whitelist performContextMenuIdentifierAction(II)Z
.end method

.method public abstract whitelist performPanelIdentifierAction(III)Z
.end method

.method public abstract whitelist performPanelShortcut(IILandroid/view/KeyEvent;I)Z
.end method

.method public whitelist registerScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V
    .registers 2

    .line 2983
    return-void
.end method

.method protected greylist-max-o removeFeature(I)V
    .registers 4

    .line 1756
    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 1757
    iget v0, p0, Landroid/view/Window;->mFeatures:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/Window;->mFeatures:I

    .line 1758
    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    iget-object v1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget v1, v1, Landroid/view/Window;->mFeatures:I

    not-int v1, v1

    and-int/2addr p1, v1

    :cond_15
    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 1759
    return-void
.end method

.method public final whitelist removeOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V
    .registers 3

    .line 1062
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1063
    if-eqz v0, :cond_d

    .line 1064
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->removeFrameMetricsListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V

    .line 1066
    :cond_d
    return-void
.end method

.method public whitelist requestFeature(I)Z
    .registers 5

    .line 1746
    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 1747
    iget v1, p0, Landroid/view/Window;->mFeatures:I

    or-int/2addr v1, p1

    iput v1, p0, Landroid/view/Window;->mFeatures:I

    .line 1748
    iget v1, p0, Landroid/view/Window;->mLocalFeatures:I

    iget-object v2, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v2, :cond_15

    iget-object v2, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget v2, v2, Landroid/view/Window;->mFeatures:I

    not-int v2, v2

    and-int/2addr v2, p1

    goto :goto_16

    :cond_15
    move v2, p1

    :goto_16
    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 1749
    iget v1, p0, Landroid/view/Window;->mFeatures:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method public blacklist requestScrollCapture(Landroid/view/IScrollCaptureResponseListener;)V
    .registers 2

    .line 2974
    return-void
.end method

.method public final whitelist requireViewById(I)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1816
    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1817
    if-eqz p1, :cond_7

    .line 1820
    return-object p1

    .line 1818
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ID does not reference a View inside this Window"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist restoreHierarchyState(Landroid/os/Bundle;)V
.end method

.method public abstract whitelist saveHierarchyState()Landroid/os/Bundle;
.end method

.method public whitelist setAllowEnterTransitionOverlap(Z)V
    .registers 2

    .line 2639
    return-void
.end method

.method public whitelist setAllowReturnTransitionOverlap(Z)V
    .registers 2

    .line 2666
    return-void
.end method

.method public whitelist setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    .line 1652
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 1653
    iget-object p1, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, p1}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1654
    return-void
.end method

.method public whitelist setBackgroundBlurRadius(I)V
    .registers 2

    .line 2037
    return-void
.end method

.method public abstract whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public whitelist setBackgroundDrawableResource(I)V
    .registers 3

    .line 1990
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1991
    return-void
.end method

.method public whitelist setCallback(Landroid/view/Window$Callback;)V
    .registers 2

    .line 1028
    iput-object p1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    .line 1029
    return-void
.end method

.method public abstract whitelist setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract whitelist setChildInt(II)V
.end method

.method public whitelist setClipToOutline(Z)V
    .registers 2

    .line 1978
    return-void
.end method

.method public greylist setCloseOnTouchOutside(Z)V
    .registers 2

    .line 1684
    iput-boolean p1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    .line 1685
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    .line 1686
    return-void
.end method

.method public greylist setCloseOnTouchOutsideIfNotSet(Z)V
    .registers 3

    .line 1691
    iget-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    if-nez v0, :cond_9

    .line 1692
    iput-boolean p1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    .line 1693
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    .line 1695
    :cond_9
    return-void
.end method

.method public whitelist setColorMode(I)V
    .registers 3

    .line 1412
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1413
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setColorMode(I)V

    .line 1414
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1415
    return-void
.end method

.method public whitelist setContainer(Landroid/view/Window;)V
    .registers 3

    .line 817
    iput-object p1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    .line 818
    if-eqz p1, :cond_13

    .line 820
    iget v0, p0, Landroid/view/Window;->mFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/Window;->mFeatures:I

    .line 821
    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 822
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/view/Window;->mHasChildren:Z

    .line 824
    :cond_13
    return-void
.end method

.method public abstract whitelist setContentView(I)V
.end method

.method public abstract whitelist setContentView(Landroid/view/View;)V
.end method

.method public abstract whitelist setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public final blacklist setDecorCallback(Landroid/view/Window$DecorCallback;)V
    .registers 2

    .line 1105
    iput-object p1, p0, Landroid/view/Window;->mDecorCallback:Landroid/view/Window$DecorCallback;

    .line 1106
    return-void
.end method

.method public abstract whitelist setDecorCaptionShade(I)V
.end method

.method public whitelist setDecorFitsSystemWindows(Z)V
    .registers 2

    .line 1634
    return-void
.end method

.method public greylist-max-o setDefaultIcon(I)V
    .registers 2

    .line 2347
    return-void
.end method

.method public greylist-max-o setDefaultLogo(I)V
    .registers 2

    .line 2365
    return-void
.end method

.method protected whitelist setDefaultWindowFormat(I)V
    .registers 3

    .line 2262
    iput p1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    .line 2263
    iget-boolean v0, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    if-nez v0, :cond_f

    .line 2264
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2265
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2266
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 2268
    :cond_f
    return-void
.end method

.method public whitelist setDesiredHdrHeadroom(F)V
    .registers 3

    .line 1445
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1446
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setDesiredHdrHeadroom(F)V

    .line 1447
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1448
    return-void
.end method

.method public whitelist setDimAmount(F)V
    .registers 3

    .line 1604
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1605
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1606
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/Window;->mHaveDimAmount:Z

    .line 1607
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1608
    return-void
.end method

.method public whitelist setElevation(F)V
    .registers 2

    .line 1958
    return-void
.end method

.method public whitelist setEnterTransition(Landroid/transition/Transition;)V
    .registers 2

    .line 2429
    return-void
.end method

.method public whitelist setExitTransition(Landroid/transition/Transition;)V
    .registers 2

    .line 2460
    return-void
.end method

.method public abstract whitelist setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract whitelist setFeatureDrawableAlpha(II)V
.end method

.method public abstract whitelist setFeatureDrawableResource(II)V
.end method

.method public abstract whitelist setFeatureDrawableUri(ILandroid/net/Uri;)V
.end method

.method public abstract whitelist setFeatureInt(II)V
.end method

.method public whitelist setFlags(II)V
    .registers 6

    .line 1369
    and-int/lit16 v0, p2, 0x2000

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "window_ignore_secure"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 1371
    and-int/lit16 p2, p2, -0x2001

    .line 1373
    :cond_16
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1374
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    not-int v2, p2

    and-int/2addr v1, v2

    and-int/2addr p1, p2

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1375
    iget p1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    .line 1376
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1377
    return-void
.end method

.method public whitelist setFormat(I)V
    .registers 3

    .line 1255
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1256
    if-eqz p1, :cond_c

    .line 1257
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1258
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    goto :goto_13

    .line 1260
    :cond_c
    iget p1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1261
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    .line 1263
    :goto_13
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1264
    return-void
.end method

.method public whitelist setFrameRateBoostOnTouchEnabled(Z)V
    .registers 3

    .line 1469
    sget-boolean v0, Landroid/view/Window;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v0, :cond_e

    .line 1470
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1471
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setFrameRateBoostOnTouchEnabled(Z)V

    .line 1472
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1474
    :cond_e
    return-void
.end method

.method public whitelist setFrameRatePowerSavingsBalanced(Z)V
    .registers 3

    .line 1503
    sget-boolean v0, Landroid/view/Window;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v0, :cond_e

    .line 1504
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1505
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setFrameRatePowerSavingsBalanced(Z)V

    .line 1506
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1508
    :cond_e
    return-void
.end method

.method public whitelist setGravity(I)V
    .registers 3

    .line 1226
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1227
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1228
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1229
    return-void
.end method

.method public final whitelist setHideOverlayWindows(Z)V
    .registers 4

    .line 1162
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.HIDE_NON_SYSTEM_OVERLAY_WINDOWS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    .line 1163
    const-string v1, "android.permission.HIDE_OVERLAY_WINDOWS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1d

    .line 1164
    :cond_15
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Permission denial: setHideOverlayWindows: HIDE_OVERLAY_WINDOWS"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1167
    :cond_1d
    :goto_1d
    const/high16 v0, 0x80000

    if-eqz p1, :cond_23

    move p1, v0

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    invoke-direct {p0, p1, v0}, Landroid/view/Window;->setPrivateFlags(II)V

    .line 1169
    return-void
.end method

.method public whitelist setIcon(I)V
    .registers 2

    .line 2338
    return-void
.end method

.method public whitelist setLayout(II)V
    .registers 4

    .line 1208
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1209
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1210
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1211
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1212
    return-void
.end method

.method public whitelist setLocalFocus(ZZ)V
    .registers 3

    .line 2373
    return-void
.end method

.method public whitelist setLogo(I)V
    .registers 2

    .line 2356
    return-void
.end method

.method public whitelist setMediaController(Landroid/media/session/MediaController;)V
    .registers 2

    .line 2306
    return-void
.end method

.method public abstract whitelist setNavigationBarColor(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist setNavigationBarContrastEnforced(Z)V
    .registers 2

    .line 2902
    return-void
.end method

.method public whitelist setNavigationBarDividerColor(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2833
    return-void
.end method

.method public final greylist-max-o setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V
    .registers 2

    .line 1070
    iput-object p1, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    .line 1071
    return-void
.end method

.method public final greylist-max-o setOnWindowSwipeDismissedCallback(Landroid/view/Window$OnWindowSwipeDismissedCallback;)V
    .registers 2

    .line 1083
    iput-object p1, p0, Landroid/view/Window;->mOnWindowSwipeDismissedCallback:Landroid/view/Window$OnWindowSwipeDismissedCallback;

    .line 1084
    return-void
.end method

.method public greylist-max-o setOverlayWithDecorCaptionEnabled(Z)V
    .registers 2

    .line 3003
    iput-boolean p1, p0, Landroid/view/Window;->mOverlayWithDecorCaptionEnabled:Z

    .line 3004
    return-void
.end method

.method public whitelist setPreferMinimalPostProcessing(Z)V
    .registers 3

    .line 1562
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput-boolean p1, v0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 1563
    iget-object p1, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, p1}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1564
    return-void
.end method

.method public whitelist setReenterTransition(Landroid/transition/Transition;)V
    .registers 2

    .line 2476
    return-void
.end method

.method public abstract whitelist setResizingCaptionDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public final whitelist setRestrictedCaptionAreaListener(Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;)V
    .registers 2

    .line 1147
    iput-object p1, p0, Landroid/view/Window;->mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    .line 1148
    if-eqz p1, :cond_a

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    iput-object p1, p0, Landroid/view/Window;->mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

    .line 1149
    return-void
.end method

.method public whitelist setReturnTransition(Landroid/transition/Transition;)V
    .registers 2

    .line 2446
    return-void
.end method

.method public whitelist setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .registers 2

    .line 2545
    return-void
.end method

.method public whitelist setSharedElementExitTransition(Landroid/transition/Transition;)V
    .registers 2

    .line 2591
    return-void
.end method

.method public whitelist setSharedElementReenterTransition(Landroid/transition/Transition;)V
    .registers 2

    .line 2604
    return-void
.end method

.method public whitelist setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .registers 2

    .line 2560
    return-void
.end method

.method public whitelist setSharedElementsUseOverlay(Z)V
    .registers 2

    .line 2730
    return-void
.end method

.method public whitelist setSoftInputMode(I)V
    .registers 3

    .line 1287
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1288
    if-eqz p1, :cond_c

    .line 1289
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1290
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    goto :goto_f

    .line 1292
    :cond_c
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    .line 1294
    :goto_f
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1295
    return-void
.end method

.method public abstract whitelist setStatusBarColor(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist setStatusBarContrastEnforced(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2866
    return-void
.end method

.method public whitelist setSustainedPerformanceMode(Z)V
    .registers 3

    .line 1720
    const/high16 v0, 0x10000

    if-eqz p1, :cond_6

    .line 1721
    move p1, v0

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    .line 1720
    :goto_7
    invoke-direct {p0, p1, v0}, Landroid/view/Window;->setPrivateFlags(II)V

    .line 1723
    return-void
.end method

.method public final blacklist setSystemBarAppearance(I)V
    .registers 2

    .line 1110
    iput p1, p0, Landroid/view/Window;->mSystemBarAppearance:I

    .line 1111
    return-void
.end method

.method public whitelist setSystemGestureExclusionRects(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 2950
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "window does not support gesture exclusion rects"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o setTheme(I)V
    .registers 2

    .line 2995
    return-void
.end method

.method public abstract whitelist setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract whitelist setTitleColor(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist setTransitionBackgroundFadeDuration(J)V
    .registers 3

    .line 2707
    return-void
.end method

.method public whitelist setTransitionManager(Landroid/transition/TransitionManager;)V
    .registers 2

    .line 2403
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist setType(I)V
    .registers 3

    .line 1238
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1239
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1240
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1241
    return-void
.end method

.method public whitelist setUiOptions(I)V
    .registers 2

    .line 2323
    return-void
.end method

.method public whitelist setUiOptions(II)V
    .registers 3

    .line 2331
    return-void
.end method

.method public abstract whitelist setVolumeControlStream(I)V
.end method

.method public whitelist setWindowAnimations(I)V
    .registers 3

    .line 1274
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1275
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1276
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1277
    return-void
.end method

.method public final greylist-max-o setWindowControllerCallback(Landroid/view/Window$WindowControllerCallback;)V
    .registers 2

    .line 1095
    iput-object p1, p0, Landroid/view/Window;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    .line 1096
    return-void
.end method

.method public whitelist setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5

    .line 873
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 874
    return-void
.end method

.method public whitelist setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V
    .registers 11

    .line 896
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;ZZ)V

    .line 897
    return-void
.end method

.method public blacklist setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;ZZ)V
    .registers 6

    .line 933
    iput-object p2, p0, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    .line 934
    iput-object p3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    .line 935
    iput-boolean p4, p0, Landroid/view/Window;->mHardwareAccelerated:Z

    .line 936
    if-nez p1, :cond_12

    .line 937
    iget-object p1, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 939
    :cond_12
    if-eqz p5, :cond_1b

    .line 940
    invoke-interface {p1, p0}, Landroid/view/WindowManager;->createLocalWindowManager(Landroid/view/Window;)Landroid/view/WindowManager;

    move-result-object p1

    iput-object p1, p0, Landroid/view/Window;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_20

    .line 942
    :cond_1b
    iput-object p1, p0, Landroid/view/Window;->mWindowManager:Landroid/view/WindowManager;

    .line 943
    invoke-interface {p1, p0}, Landroid/view/WindowManager;->setParentWindow(Landroid/view/Window;)V

    .line 945
    :goto_20
    return-void
.end method

.method public greylist-max-p shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1710
    nop

    .line 1711
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    invoke-direct {p0, p1, p2}, Landroid/view/Window;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 1712
    :cond_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_18

    :cond_16
    move p1, v2

    goto :goto_19

    :cond_18
    move p1, v1

    .line 1713
    :goto_19
    iget-boolean p2, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    if-eqz p2, :cond_26

    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_26

    if-eqz p1, :cond_26

    move v1, v2

    :cond_26
    return v1
.end method

.method public blacklist shouldCloseOnTouchOutside()Z
    .registers 2

    .line 1699
    iget-boolean v0, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    return v0
.end method

.method public abstract whitelist superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract whitelist superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract whitelist superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract whitelist superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract whitelist superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract whitelist takeInputQueue(Landroid/view/InputQueue$Callback;)V
.end method

.method public abstract whitelist takeKeyEvents(Z)V
.end method

.method public abstract whitelist takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
.end method

.method public abstract whitelist togglePanel(ILandroid/view/KeyEvent;)V
.end method

.method public whitelist unregisterScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V
    .registers 2

    .line 2991
    return-void
.end method
