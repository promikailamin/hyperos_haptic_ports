.class public Lcom/android/internal/app/MiuiChooserActivity;
.super Lcom/android/internal/app/MiuiResolverActivity;
.source "MiuiChooserActivity.java"

# interfaces
.implements Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;
.implements Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;,
        Lcom/android/internal/app/MiuiChooserActivity$RefinementResultReceiver;,
        Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetRankingInfo;,
        Lcom/android/internal/app/MiuiChooserActivity$ServiceResultInfo;,
        Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;,
        Lcom/android/internal/app/MiuiChooserActivity$DirectShareViewHolder;,
        Lcom/android/internal/app/MiuiChooserActivity$SingleRowViewHolder;,
        Lcom/android/internal/app/MiuiChooserActivity$ItemGroupViewHolder;,
        Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;,
        Lcom/android/internal/app/MiuiChooserActivity$FooterViewHolder;,
        Lcom/android/internal/app/MiuiChooserActivity$ItemViewHolder;,
        Lcom/android/internal/app/MiuiChooserActivity$ViewHolderBase;,
        Lcom/android/internal/app/MiuiChooserActivity$BaseChooserTargetComparator;,
        Lcom/android/internal/app/MiuiChooserActivity$EmptyTargetInfo;,
        Lcom/android/internal/app/MiuiChooserActivity$PlaceHolderTargetInfo;,
        Lcom/android/internal/app/MiuiChooserActivity$ChooserListController;,
        Lcom/android/internal/app/MiuiChooserActivity$AzInfoComparator;,
        Lcom/android/internal/app/MiuiChooserActivity$FileInfo;,
        Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;,
        Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;,
        Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewType;,
        Lcom/android/internal/app/MiuiChooserActivity$ShareTargetType;
    }
.end annotation


# static fields
.field static blacklist AER_TEST:Z = false

.field public static final blacklist APP_PREDICTION_INTENT_FILTER_KEY:Ljava/lang/String; = "intent_filter"

.field private static final blacklist APP_PREDICTION_SHARE_TARGET_QUERY_PACKAGE_LIMIT:I = 0x14

.field private static final blacklist APP_PREDICTION_SHARE_UI_SURFACE:Ljava/lang/String; = "share"

.field private static final blacklist CALLER_TARGET_SCORE_BOOST:F = 900.0f

.field private static final blacklist CHIP_ICON_METADATA_KEY:Ljava/lang/String; = "android.service.chooser.chip_icon"

.field private static final blacklist CHIP_LABEL_METADATA_KEY:Ljava/lang/String; = "android.service.chooser.chip_label"

.field public static final blacklist CHOOSER_TARGET:Ljava/lang/String; = "chooser_target"

.field private static final blacklist CHOOSER_TARGET_SERVICE_RESULT:I = 0x14

.field private static final blacklist CHOOSER_TARGET_SERVICE_WATCHDOG_TIMEOUT:I = 0x15

.field protected static final blacklist CONTENT_PREVIEW_FILE:I = 0x2

.field protected static final blacklist CONTENT_PREVIEW_IMAGE:I = 0x1

.field protected static final blacklist CONTENT_PREVIEW_TEXT:I = 0x3

.field private static final blacklist DEBUG:Z = true

.field private static final blacklist DEFAULT_SALT_EXPIRATION_DAYS:I = 0x7

.field private static final blacklist DIRECT_SHARE_EXPANSION_RATE:F = 0.78f

.field public static final blacklist EXTRA_PRIVATE_RETAIN_IN_ON_STOP:Ljava/lang/String; = "com.android.internal.app.ChooserActivity.EXTRA_PRIVATE_RETAIN_IN_ON_STOP"

.field public static final blacklist FIRST_IMAGE_PREVIEW_TRANSITION_NAME:Ljava/lang/String; = "screenshot_preview_image"

.field public static blacklist FROM_CHOOSER:Z = false

.field public static final blacklist LAUNCH_LOCATION_DIRECT_SHARE:Ljava/lang/String; = "direct_share"

.field public static final blacklist LIST_VIEW_UPDATE_INTERVAL_IN_MILLIS:I = 0xfa

.field private static final blacklist MAX_EXTRA_CHOOSER_TARGETS:I = 0x2

.field private static final blacklist MAX_EXTRA_INITIAL_INTENTS:I = 0x2

.field private static final blacklist MAX_LOG_RANK_POSITION:I = 0xc

.field private static final blacklist MAX_TARGETS_PER_ROW_LANDSCAPE:I = 0x8

.field private static final blacklist MAX_TARGETS_PER_ROW_PORTRAIT:I = 0x4

.field private static final blacklist NO_DIRECT_SHARE_ANIM_IN_MILLIS:I = 0xc8

.field private static final blacklist PINNED_SHARED_PREFS_NAME:Ljava/lang/String; = "chooser_pin_settings"

.field private static final blacklist PINNED_TARGET_SCORE_BOOST:F = 1000.0f

.field private static final blacklist PREF_NUM_SHEET_EXPANSIONS:Ljava/lang/String; = "pref_num_sheet_expansions"

.field private static final blacklist QUERY_TARGET_SERVICE_LIMIT:I = 0x5

.field private static final blacklist SCROLL_STATUS_IDLE:I = 0x0

.field private static final blacklist SCROLL_STATUS_SCROLLING_HORIZONTAL:I = 0x2

.field private static final blacklist SCROLL_STATUS_SCROLLING_VERTICAL:I = 0x1

.field public static final blacklist SELECTION_TYPE_APP:I = 0x2

.field public static final blacklist SELECTION_TYPE_COPY:I = 0x4

.field public static final blacklist SELECTION_TYPE_EDIT:I = 0x6

.field public static final blacklist SELECTION_TYPE_NEARBY:I = 0x5

.field public static final blacklist SELECTION_TYPE_SERVICE:I = 0x1

.field public static final blacklist SELECTION_TYPE_STANDARD:I = 0x3

.field private static final blacklist SHARE_TARGET_QUERY_PACKAGE_LIMIT:I = 0x14

.field private static final blacklist SHORTCUT_TARGET:Ljava/lang/String; = "shortcut_target"

.field private static final blacklist TAG:Ljava/lang/String; = "MiuiChooserActivity"

.field private static final blacklist TARGET_DETAILS_FRAGMENT_TAG:Ljava/lang/String; = "targetDetailsFragment"

.field public static final blacklist TARGET_TYPE_CHOOSER_TARGET:I = 0x1

.field public static final blacklist TARGET_TYPE_DEFAULT:I = 0x0

.field public static final blacklist TARGET_TYPE_SHORTCUTS_FROM_PREDICTION_SERVICE:I = 0x3

.field public static final blacklist TARGET_TYPE_SHORTCUTS_FROM_SHORTCUT_MANAGER:I = 0x2

.field private static final blacklist USE_CHOOSER_TARGET_SERVICE_FOR_DIRECT_TARGETS:Z = true

.field private static final blacklist USE_PREDICTION_MANAGER_FOR_SHARE_ACTIVITIES:Z = true

.field private static final blacklist WATCHDOG_TIMEOUT_MILLIS:I = 0x1388

.field private static final blacklist ZMAN_SECURITY_SHARE_DEFAULT_NOT_SET:I = -0x1

.field private static final blacklist ZMAN_SHARE_CAMERA_ENABLE:Ljava/lang/String; = "zman_share_hide_camera"

.field private static final blacklist ZMAN_SHARE_CAMERA_ENABLE_DEFAULT:Ljava/lang/String; = "zman_share_hide_camera_default"

.field private static final blacklist ZMAN_SHARE_LOCATION_ENABLE:Ljava/lang/String; = "zman_share_hide_location"

.field private static final blacklist ZMAN_SHARE_LOCATION_ENABLE_DEFAULT:Ljava/lang/String; = "zman_share_hide_location_default"


# instance fields
.field private blacklist mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

.field protected blacklist mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

.field private final blacklist mChooserHandler:Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;

.field private blacklist mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

.field protected blacklist mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

.field private blacklist mChooserRowServiceSpacing:I

.field private blacklist mChooserShownTime:J

.field private blacklist mChooserTargetComponentNameCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mChosenComponentSender:Landroid/content/IntentSender;

.field private blacklist mCurrAvailableWidth:I

.field private blacklist mDirectShareAppTargetCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/service/chooser/ChooserTarget;",
            "Landroid/app/prediction/AppTarget;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDirectShareShortcutInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/service/chooser/ChooserTarget;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFilteredComponentNames:[Landroid/content/ComponentName;

.field private blacklist mIsAppPredictorComponentAvailable:Z

.field protected blacklist mIsSuccessfullySelected:Z

.field private blacklist mLastNumberOfChildren:I

.field protected blacklist mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private blacklist mPersonalAppPredictor:Landroid/app/prediction/AppPredictor;

.field private blacklist mPinnedSharedPrefs:Landroid/content/SharedPreferences;

.field private blacklist mPreviewCoord:Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;

.field private blacklist mQueriedSharingShortcutsTimeMs:J

.field private blacklist mQueriedTargetServicesTimeMs:J

.field private blacklist mReferrerFillInIntent:Landroid/content/Intent;

.field private blacklist mRefinementIntentSender:Landroid/content/IntentSender;

.field private blacklist mRefinementResultReceiver:Lcom/android/internal/app/MiuiChooserActivity$RefinementResultReceiver;

.field private blacklist mRemoveSharedElements:Z

.field private blacklist mReplacementExtras:Landroid/os/Bundle;

.field private blacklist mScrollStatus:I

.field private final blacklist mServiceConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mServicesRequested:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mShouldDisplayLandscape:Z

.field private blacklist mView:Landroid/view/View;

.field private blacklist mWorkAppPredictor:Landroid/app/prediction/AppPredictor;


# direct methods
.method public static synthetic blacklist $r8$lambda$_wtkcXb5GnRe5SPlp417ZcMP9sU(Lcom/android/internal/app/MiuiChooserActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity;->onCopyButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChooserHandler(Lcom/android/internal/app/MiuiChooserActivity;)Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserHandler:Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChooserListAdapter(Lcom/android/internal/app/MiuiChooserActivity;)Lcom/android/internal/app/ChooserListAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFilteredComponentNames(Lcom/android/internal/app/MiuiChooserActivity;)[Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mFilteredComponentNames:[Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPinnedSharedPrefs(Lcom/android/internal/app/MiuiChooserActivity;)Landroid/content/SharedPreferences;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mPinnedSharedPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRemoveSharedElements(Lcom/android/internal/app/MiuiChooserActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mRemoveSharedElements:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScrollStatus(Lcom/android/internal/app/MiuiChooserActivity;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mScrollStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceConnections(Lcom/android/internal/app/MiuiChooserActivity;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mServiceConnections:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShouldDisplayLandscape(Lcom/android/internal/app/MiuiChooserActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mShouldDisplayLandscape:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRemoveSharedElements(Lcom/android/internal/app/MiuiChooserActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/app/MiuiChooserActivity;->mRemoveSharedElements:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScrollStatus(Lcom/android/internal/app/MiuiChooserActivity;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/app/MiuiChooserActivity;->mScrollStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateContentPreviewView(Lcom/android/internal/app/MiuiChooserActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity;->createContentPreviewView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNumSheetExpansions(Lcom/android/internal/app/MiuiChooserActivity;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getNumSheetExpansions()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandlePackagesChanged(Lcom/android/internal/app/MiuiChooserActivity;Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity;->handlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhideStickyContentPreview(Lcom/android/internal/app/MiuiChooserActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/MiuiChooserActivity;->hideStickyContentPreview()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogDirectShareTargetReceived(Lcom/android/internal/app/MiuiChooserActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity;->logDirectShareTargetReceived(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetHorizontalScrollingEnabled(Lcom/android/internal/app/MiuiChooserActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity;->setHorizontalScrollingEnabled(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshowTargetDetails(Lcom/android/internal/app/MiuiChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity;->showTargetDetails(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 179
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/MiuiChooserActivity;->FROM_CHOOSER:Z

    .line 293
    sput-boolean v0, Lcom/android/internal/app/MiuiChooserActivity;->AER_TEST:Z

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 3

    .line 184
    invoke-direct {p0}, Lcom/android/internal/app/MiuiResolverActivity;-><init>()V

    .line 301
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mCurrAvailableWidth:I

    .line 302
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/MiuiChooserActivity;->mLastNumberOfChildren:I

    .line 306
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity;->mServiceConnections:Ljava/util/List;

    .line 307
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity;->mServicesRequested:Ljava/util/Set;

    .line 334
    iput v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mScrollStatus:I

    .line 339
    iput-boolean v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mRemoveSharedElements:Z

    .line 494
    new-instance v0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;-><init>(Lcom/android/internal/app/MiuiChooserActivity;Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler-IA;)V

    iput-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserHandler:Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;

    .line 185
    return-void
.end method

.method private blacklist addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "b"    # Landroid/widget/Button;

    .line 1455
    if-nez p2, :cond_3

    return-void

    .line 1456
    :cond_3
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1460
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050274

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1461
    .local v1, "gap":I
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    .line 1462
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1463
    return-void
.end method

.method private blacklist adjustPanelPadding(IIII)V
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 944
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "parentPanel"

    const-string v2, "id"

    const-string v3, "miuix.stub"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 945
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 946
    .local v1, "parentPanel":Landroid/view/View;
    if-eqz v1, :cond_34

    .line 947
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, p1

    .line 948
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, p2

    .line 949
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, p3

    .line 950
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int/2addr v5, p4

    .line 947
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3b

    .line 953
    :cond_34
    const-string v2, "MiuiChooserActivity"

    const-string v3, "do not find view before it was inflated!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :goto_3b
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 957
    return-void
.end method

.method private blacklist adjustPreviewWidth(ILandroid/view/View;)V
    .registers 6
    .param p1, "orientation"    # I
    .param p2, "parent"    # Landroid/view/View;

    .line 1273
    const/4 v0, -0x1

    .line 1274
    .local v0, "width":I
    iget-boolean v1, p0, Lcom/android/internal/app/MiuiChooserActivity;->mShouldDisplayLandscape:Z

    if-eqz v1, :cond_10

    .line 1275
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1278
    :cond_10
    if-nez p2, :cond_1b

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    goto :goto_1c

    :cond_1b
    move-object v1, p2

    :goto_1c
    move-object p2, v1

    .line 1280
    const v1, 0x1020274

    invoke-direct {p0, v1, v0, p2}, Lcom/android/internal/app/MiuiChooserActivity;->updateLayoutWidth(IILandroid/view/View;)V

    .line 1281
    const v1, 0x1020277

    invoke-direct {p0, v1, v0, p2}, Lcom/android/internal/app/MiuiChooserActivity;->updateLayoutWidth(IILandroid/view/View;)V

    .line 1282
    const v1, 0x102026a

    invoke-direct {p0, v1, v0, p2}, Lcom/android/internal/app/MiuiChooserActivity;->updateLayoutWidth(IILandroid/view/View;)V

    .line 1283
    return-void
.end method

.method private blacklist convertServiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;

    .line 2500
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2501
    const/4 v0, 0x0

    return-object v0

    .line 2505
    :cond_8
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "fullName":Ljava/lang/String;
    goto :goto_2d

    .line 2508
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_22
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2c

    .line 2510
    move-object v0, p2

    .restart local v0    # "fullName":Ljava/lang/String;
    goto :goto_2d

    .line 2512
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_2c
    const/4 v0, 0x0

    .line 2514
    .restart local v0    # "fullName":Ljava/lang/String;
    :goto_2d
    return-object v0
.end method

.method private blacklist createActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .registers 8
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "r"    # Landroid/view/View$OnClickListener;

    .line 1390
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090058

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1391
    .local v0, "b":Landroid/widget/Button;
    if-eqz p1, :cond_22

    .line 1392
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050096

    .line 1393
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1394
    .local v1, "size":I
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1395
    invoke-virtual {v0, p1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1397
    .end local v1    # "size":I
    :cond_22
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1398
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1399
    return-object v0
.end method

.method private blacklist createAppPredictor(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;
    .registers 9
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2633
    iget-boolean v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mIsAppPredictorComponentAvailable:Z

    if-nez v0, :cond_6

    .line 2634
    const/4 v0, 0x0

    return-object v0

    .line 2637
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2638
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mPersonalAppPredictor:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_1a

    .line 2639
    return-object v0

    .line 2642
    :cond_15
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mWorkAppPredictor:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_1a

    .line 2643
    return-object v0

    .line 2649
    :cond_1a
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/MiuiChooserActivity;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 2650
    .local v0, "contextAsUser":Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getTargetIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 2651
    .local v1, "filter":Landroid/content/IntentFilter;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2652
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "intent_filter"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2653
    new-instance v3, Landroid/app/prediction/AppPredictionContext$Builder;

    invoke-direct {v3, v0}, Landroid/app/prediction/AppPredictionContext$Builder;-><init>(Landroid/content/Context;)V

    .line 2654
    const-string v4, "share"

    invoke-virtual {v3, v4}, Landroid/app/prediction/AppPredictionContext$Builder;->setUiSurface(Ljava/lang/String;)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v3

    const/16 v4, 0x14

    .line 2655
    invoke-virtual {v3, v4}, Landroid/app/prediction/AppPredictionContext$Builder;->setPredictedTargetCount(I)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v3

    .line 2656
    invoke-virtual {v3, v2}, Landroid/app/prediction/AppPredictionContext$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v3

    .line 2657
    invoke-virtual {v3}, Landroid/app/prediction/AppPredictionContext$Builder;->build()Landroid/app/prediction/AppPredictionContext;

    move-result-object v3

    .line 2658
    .local v3, "appPredictionContext":Landroid/app/prediction/AppPredictionContext;
    const-class v4, Landroid/app/prediction/AppPredictionManager;

    .line 2660
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/prediction/AppPredictionManager;

    .line 2661
    .local v4, "appPredictionManager":Landroid/app/prediction/AppPredictionManager;
    invoke-virtual {v4, v3}, Landroid/app/prediction/AppPredictionManager;->createAppPredictionSession(Landroid/app/prediction/AppPredictionContext;)Landroid/app/prediction/AppPredictor;

    move-result-object v5

    .line 2663
    .local v5, "appPredictionSession":Landroid/app/prediction/AppPredictor;
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 2664
    iput-object v5, p0, Lcom/android/internal/app/MiuiChooserActivity;->mPersonalAppPredictor:Landroid/app/prediction/AppPredictor;

    goto :goto_61

    .line 2666
    :cond_5f
    iput-object v5, p0, Lcom/android/internal/app/MiuiChooserActivity;->mWorkAppPredictor:Landroid/app/prediction/AppPredictor;

    .line 2668
    :goto_61
    return-object v5
.end method

.method private blacklist createAppPredictorCallback(Lcom/android/internal/app/ChooserListAdapter;)Landroid/app/prediction/AppPredictor$Callback;
    .registers 3
    .param p1, "chooserListAdapter"    # Lcom/android/internal/app/ChooserListAdapter;

    .line 990
    new-instance v0, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/app/MiuiChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V

    return-object v0
.end method

.method private blacklist createContentPreviewView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 1295
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1296
    .local v0, "targetIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/MiuiChooserActivity;->findPreferredContentPreview(Landroid/content/Intent;Landroid/content/ContentResolver;)I

    move-result v1

    .line 1297
    .local v1, "previewType":I
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/android/internal/app/MiuiChooserActivity;->displayContentPreview(ILandroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v2

    return-object v2
.end method

.method private blacklist createCopyButton()Landroid/widget/Button;
    .registers 4

    .line 1403
    nop

    .line 1404
    const v0, 0x10804cf

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1405
    const v1, 0x1040001

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MiuiChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/app/MiuiChooserActivity;)V

    .line 1403
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/app/MiuiChooserActivity;->createActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    .line 1406
    .local v0, "b":Landroid/widget/Button;
    const v1, 0x102024a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 1407
    return-object v0
.end method

.method private blacklist createEditButton(Landroid/content/Intent;)Landroid/widget/Button;
    .registers 6
    .param p1, "originalIntent"    # Landroid/content/Intent;

    .line 1433
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity;->getEditSharingTarget(Landroid/content/Intent;)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    .line 1434
    .local v0, "ti":Lcom/android/internal/app/chooser/TargetInfo;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 1436
    :cond_8
    nop

    .line 1437
    invoke-interface {v0, p0}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1438
    invoke-interface {v0}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/MiuiChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1436
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/app/MiuiChooserActivity;->createActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v1

    .line 1450
    .local v1, "b":Landroid/widget/Button;
    const v2, 0x102024b

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1451
    return-object v1
.end method

.method private blacklist createNearbyButton(Landroid/content/Intent;)Landroid/widget/Button;
    .registers 6
    .param p1, "originalIntent"    # Landroid/content/Intent;

    .line 1411
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity;->getNearbySharingTarget(Landroid/content/Intent;)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    .line 1412
    .local v0, "ti":Lcom/android/internal/app/chooser/TargetInfo;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 1414
    :cond_8
    nop

    .line 1415
    invoke-interface {v0, p0}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1416
    invoke-interface {v0}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/app/MiuiChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1414
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/app/MiuiChooserActivity;->createActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v1

    .line 1428
    .local v1, "b":Landroid/widget/Button;
    const v2, 0x102024d

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1429
    return-object v1
.end method

.method private blacklist displayContentPreview(ILandroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 8
    .param p1, "previewType"    # I
    .param p2, "targetIntent"    # Landroid/content/Intent;
    .param p3, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .line 1467
    const/4 v0, 0x0

    .line 1469
    .local v0, "layout":Landroid/view/ViewGroup;
    packed-switch p1, :pswitch_data_3c

    .line 1480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected content preview type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiChooserActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 1471
    :pswitch_1d
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/MiuiChooserActivity;->displayTextContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 1472
    goto :goto_2c

    .line 1477
    :pswitch_22
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/MiuiChooserActivity;->displayFileContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 1478
    goto :goto_2c

    .line 1474
    :pswitch_27
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/MiuiChooserActivity;->displayImageContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 1475
    nop

    .line 1483
    :goto_2c
    if-eqz v0, :cond_3b

    .line 1484
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1, v0}, Lcom/android/internal/app/MiuiChooserActivity;->adjustPreviewWidth(ILandroid/view/View;)V

    .line 1487
    :cond_3b
    return-object v0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_27
        :pswitch_22
        :pswitch_1d
    .end packed-switch
.end method

.method private blacklist displayFileContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 20
    .param p1, "targetIntent"    # Landroid/content/Intent;
    .param p2, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1664
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x109005e

    const/4 v3, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual {v4, v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1667
    .local v2, "contentPreviewLayout":Landroid/view/ViewGroup;
    nop

    .line 1668
    const v6, 0x1020249

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1670
    .local v6, "actionRow":Landroid/view/ViewGroup;
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/MiuiChooserActivity;->createNearbyButton(Landroid/content/Intent;)Landroid/widget/Button;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/android/internal/app/MiuiChooserActivity;->addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V

    .line 1673
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 1674
    .local v7, "action":Ljava/lang/String;
    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "android.intent.extra.STREAM"

    if-eqz v8, :cond_3b

    .line 1675
    invoke-virtual {v1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 1676
    .local v3, "uri":Landroid/net/Uri;
    invoke-direct {v0, v3, v2}, Lcom/android/internal/app/MiuiChooserActivity;->loadFileUriIntoView(Landroid/net/Uri;Landroid/view/View;)V

    .line 1677
    .end local v3    # "uri":Landroid/net/Uri;
    goto :goto_b1

    .line 1678
    :cond_3b
    invoke-virtual {v1, v9}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1679
    .local v8, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 1681
    .local v9, "uriCount":I
    const/16 v10, 0x8

    if-nez v9, :cond_52

    .line 1682
    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1683
    const-string v3, "MiuiChooserActivity"

    const-string v10, "Appears to be no uris available in EXTRA_STREAM, removing preview area"

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    return-object v2

    .line 1687
    :cond_52
    const/4 v11, 0x1

    if-ne v9, v11, :cond_5f

    .line 1688
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-direct {v0, v3, v2}, Lcom/android/internal/app/MiuiChooserActivity;->loadFileUriIntoView(Landroid/net/Uri;Landroid/view/View;)V

    goto :goto_b1

    .line 1690
    :cond_5f
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-direct {v0, v12, v13}, Lcom/android/internal/app/MiuiChooserActivity;->extractFileInfo(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/android/internal/app/MiuiChooserActivity$FileInfo;

    move-result-object v12

    .line 1691
    .local v12, "fileInfo":Lcom/android/internal/app/MiuiChooserActivity$FileInfo;
    add-int/lit8 v13, v9, -0x1

    .line 1692
    .local v13, "remUriCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v15, v12, Lcom/android/internal/app/MiuiChooserActivity$FileInfo;->name:Ljava/lang/String;

    aput-object v15, v10, v3

    .line 1693
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v10, v11

    .line 1692
    const v11, 0x1150015

    invoke-virtual {v14, v11, v13, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1695
    .local v10, "fileName":Ljava/lang/String;
    const v11, 0x102026c

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1697
    .local v11, "fileNameView":Landroid/widget/TextView;
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1699
    const v14, 0x102026b

    invoke-virtual {v2, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 1701
    .local v14, "thumbnailView":Landroid/view/View;
    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1703
    const v15, 0x1020269

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 1705
    .local v15, "fileIconView":Landroid/widget/ImageView;
    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1706
    const v3, 0x10803be

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1710
    .end local v8    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v9    # "uriCount":I
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v11    # "fileNameView":Landroid/widget/TextView;
    .end local v12    # "fileInfo":Lcom/android/internal/app/MiuiChooserActivity$FileInfo;
    .end local v13    # "remUriCount":I
    .end local v14    # "thumbnailView":Landroid/view/View;
    .end local v15    # "fileIconView":Landroid/widget/ImageView;
    :goto_b1
    return-object v2
.end method

.method private blacklist displayImageContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 20
    .param p1, "targetIntent"    # Landroid/content/Intent;
    .param p2, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1543
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x109005f

    const/4 v3, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual {v4, v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1545
    .local v2, "contentPreviewLayout":Landroid/view/ViewGroup;
    const v6, 0x1020271

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1547
    .local v6, "imagePreview":Landroid/view/ViewGroup;
    nop

    .line 1548
    const v7, 0x1020249

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 1550
    .local v7, "actionRow":Landroid/view/ViewGroup;
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/MiuiChooserActivity;->createNearbyButton(Landroid/content/Intent;)Landroid/widget/Button;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Lcom/android/internal/app/MiuiChooserActivity;->addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V

    .line 1551
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/MiuiChooserActivity;->createEditButton(Landroid/content/Intent;)Landroid/widget/Button;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Lcom/android/internal/app/MiuiChooserActivity;->addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V

    .line 1553
    new-instance v8, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;

    invoke-direct {v8, v0, v2, v3}, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;-><init>(Lcom/android/internal/app/MiuiChooserActivity;Landroid/view/View;Z)V

    iput-object v8, v0, Lcom/android/internal/app/MiuiChooserActivity;->mPreviewCoord:Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;

    .line 1555
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 1556
    .local v8, "action":Ljava/lang/String;
    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "screenshot_preview_image"

    const-string v11, "android.intent.extra.STREAM"

    const v12, 0x102026d

    if-eqz v9, :cond_61

    .line 1557
    invoke-virtual {v1, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    .line 1558
    .local v9, "uri":Landroid/net/Uri;
    invoke-virtual {v6, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1559
    invoke-virtual {v11, v10}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 1560
    iget-object v10, v0, Lcom/android/internal/app/MiuiChooserActivity;->mPreviewCoord:Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;

    invoke-static {v10, v12, v9, v3}, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    .line 1561
    .end local v9    # "uri":Landroid/net/Uri;
    goto/16 :goto_f4

    .line 1562
    :cond_61
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 1564
    .local v9, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v1, v11}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1565
    .local v11, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1566
    .local v13, "imageUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_72
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/Uri;

    .line 1567
    .local v15, "uri":Landroid/net/Uri;
    invoke-virtual {v9, v15}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/app/MiuiChooserActivity;->isImageType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 1568
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1570
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_8b
    const/4 v3, 0x0

    goto :goto_72

    .line 1572
    :cond_8d
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_a0

    .line 1573
    const-string v3, "MiuiChooserActivity"

    const-string v10, "Attempted to display image preview area with zero available images detected in EXTRA_STREAM list"

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    const/16 v3, 0x8

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1576
    return-object v2

    .line 1579
    :cond_a0
    invoke-virtual {v6, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1580
    invoke-virtual {v3, v10}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 1581
    iget-object v3, v0, Lcom/android/internal/app/MiuiChooserActivity;->mPreviewCoord:Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;

    const/4 v10, 0x0

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    invoke-static {v3, v12, v14, v10}, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    .line 1583
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    const/4 v10, 0x1

    const/4 v12, 0x2

    if-ne v3, v12, :cond_cb

    .line 1584
    iget-object v3, v0, Lcom/android/internal/app/MiuiChooserActivity;->mPreviewCoord:Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;

    const v12, 0x102026e

    .line 1585
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 1584
    const/4 v14, 0x0

    invoke-static {v3, v12, v10, v14}, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    goto :goto_f4

    .line 1586
    :cond_cb
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v12, :cond_f4

    .line 1587
    iget-object v3, v0, Lcom/android/internal/app/MiuiChooserActivity;->mPreviewCoord:Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;

    const v14, 0x102026f

    .line 1588
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 1587
    const/4 v15, 0x0

    invoke-static {v3, v14, v10, v15}, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    .line 1589
    iget-object v3, v0, Lcom/android/internal/app/MiuiChooserActivity;->mPreviewCoord:Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;

    const v10, 0x1020270

    .line 1590
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x3

    .line 1589
    invoke-static {v3, v10, v12, v14}, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    .line 1594
    .end local v9    # "resolver":Landroid/content/ContentResolver;
    .end local v11    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v13    # "imageUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_f4
    :goto_f4
    return-object v2
.end method

.method private blacklist displayTextContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 15
    .param p1, "targetIntent"    # Landroid/content/Intent;
    .param p2, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1492
    const v0, 0x1090060

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1495
    .local v0, "contentPreviewLayout":Landroid/view/ViewGroup;
    nop

    .line 1496
    const v2, 0x1020249

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1497
    .local v2, "actionRow":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/android/internal/app/MiuiChooserActivity;->createCopyButton()Landroid/widget/Button;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/MiuiChooserActivity;->addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V

    .line 1501
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1502
    .local v3, "sharingText":Ljava/lang/CharSequence;
    const/16 v4, 0x8

    if-nez v3, :cond_30

    .line 1503
    const v5, 0x1020274

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3c

    .line 1506
    :cond_30
    const v5, 0x1020272

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1507
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1510
    .end local v5    # "textView":Landroid/widget/TextView;
    :goto_3c
    const-string v5, "android.intent.extra.TITLE"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1511
    .local v5, "previewTitle":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 1512
    const v1, 0x1020277

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8d

    .line 1515
    :cond_53
    const v6, 0x1020276

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1517
    .local v6, "previewTitleView":Landroid/widget/TextView;
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1519
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v7

    .line 1520
    .local v7, "previewData":Landroid/content/ClipData;
    const/4 v8, 0x0

    .line 1521
    .local v8, "previewThumbnail":Landroid/net/Uri;
    if-eqz v7, :cond_74

    .line 1522
    invoke-virtual {v7}, Landroid/content/ClipData;->getItemCount()I

    move-result v9

    if-lez v9, :cond_74

    .line 1523
    invoke-virtual {v7, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    .line 1524
    .local v9, "previewDataItem":Landroid/content/ClipData$Item;
    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v8

    .line 1528
    .end local v9    # "previewDataItem":Landroid/content/ClipData$Item;
    :cond_74
    const v9, 0x1020275

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 1530
    .local v10, "previewThumbnailView":Landroid/widget/ImageView;
    if-nez v8, :cond_83

    .line 1531
    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8d

    .line 1533
    :cond_83
    new-instance v4, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;-><init>(Lcom/android/internal/app/MiuiChooserActivity;Landroid/view/View;Z)V

    iput-object v4, p0, Lcom/android/internal/app/MiuiChooserActivity;->mPreviewCoord:Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;

    .line 1534
    invoke-static {v4, v9, v8, v1}, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    .line 1538
    .end local v6    # "previewTitleView":Landroid/widget/TextView;
    .end local v7    # "previewData":Landroid/content/ClipData;
    .end local v8    # "previewThumbnail":Landroid/net/Uri;
    .end local v10    # "previewThumbnailView":Landroid/widget/ImageView;
    :goto_8d
    return-object v0
.end method

.method private blacklist extractFileInfo(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/android/internal/app/MiuiChooserActivity$FileInfo;
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 1617
    const/4 v0, 0x0

    .line 1618
    .local v0, "fileName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1620
    .local v1, "hasThumbnail":Z
    const/4 v2, -0x1

    :try_start_3
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/app/MiuiChooserActivity;->queryResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_7} :catch_53
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_7} :catch_53

    .line 1621
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_4d

    :try_start_9
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_4d

    .line 1622
    const-string v4, "_display_name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1623
    .local v4, "nameIndex":I
    const-string v5, "title"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1624
    .local v5, "titleIndex":I
    const-string v6, "flags"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1626
    .local v6, "flagsIndex":I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1627
    if-eq v4, v2, :cond_2c

    .line 1628
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto :goto_33

    .line 1629
    :cond_2c
    if-eq v5, v2, :cond_33

    .line 1630
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 1633
    :cond_33
    :goto_33
    if-eq v6, v2, :cond_4d

    .line 1634
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_41

    const/4 v8, 0x1

    and-int/2addr v7, v8

    if-eqz v7, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v8, 0x0

    :goto_3f
    move v1, v8

    goto :goto_4d

    .line 1620
    .end local v4    # "nameIndex":I
    .end local v5    # "titleIndex":I
    .end local v6    # "flagsIndex":I
    :catchall_41
    move-exception v4

    if-eqz v3, :cond_4c

    :try_start_44
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception v5

    :try_start_49
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "hasThumbnail":Z
    .end local p0    # "this":Lcom/android/internal/app/MiuiChooserActivity;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "resolver":Landroid/content/ContentResolver;
    :cond_4c
    :goto_4c
    throw v4

    .line 1638
    .restart local v0    # "fileName":Ljava/lang/String;
    .restart local v1    # "hasThumbnail":Z
    .restart local p0    # "this":Lcom/android/internal/app/MiuiChooserActivity;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "resolver":Landroid/content/ContentResolver;
    :cond_4d
    :goto_4d
    if-eqz v3, :cond_52

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_52
    .catch Ljava/lang/SecurityException; {:try_start_49 .. :try_end_52} :catch_53
    .catch Ljava/lang/NullPointerException; {:try_start_49 .. :try_end_52} :catch_53

    .line 1640
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_52
    goto :goto_57

    .line 1638
    :catch_53
    move-exception v3

    .line 1639
    .local v3, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity;->logContentPreviewWarning(Landroid/net/Uri;)V

    .line 1642
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 1643
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1644
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1645
    .local v3, "index":I
    if-eq v3, v2, :cond_6f

    .line 1646
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1650
    .end local v3    # "index":I
    :cond_6f
    new-instance v2, Lcom/android/internal/app/MiuiChooserActivity$FileInfo;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/app/MiuiChooserActivity$FileInfo;-><init>(Ljava/lang/String;Z)V

    return-object v2
.end method

.method private blacklist findPreferredContentPreview(Landroid/content/Intent;Landroid/content/ContentResolver;)I
    .registers 9
    .param p1, "targetIntent"    # Landroid/content/Intent;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 1755
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1756
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.extra.STREAM"

    if-eqz v1, :cond_19

    .line 1757
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 1758
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0, v1, p2}, Lcom/android/internal/app/MiuiChooserActivity;->findPreferredContentPreview(Landroid/net/Uri;Landroid/content/ContentResolver;)I

    move-result v2

    return v2

    .line 1759
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_19
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x3

    if-eqz v1, :cond_4b

    .line 1760
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1761
    .local v1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-eqz v1, :cond_4a

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_4a

    .line 1765
    :cond_2f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 1768
    .local v3, "uri":Landroid/net/Uri;
    invoke-direct {p0, v3, p2}, Lcom/android/internal/app/MiuiChooserActivity;->findPreferredContentPreview(Landroid/net/Uri;Landroid/content/ContentResolver;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_47

    .line 1769
    return v5

    .line 1771
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_47
    goto :goto_33

    .line 1773
    :cond_48
    const/4 v2, 0x1

    return v2

    .line 1762
    :cond_4a
    :goto_4a
    return v3

    .line 1776
    .end local v1    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_4b
    return v3
.end method

.method private blacklist findPreferredContentPreview(Landroid/net/Uri;Landroid/content/ContentResolver;)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 1739
    if-nez p1, :cond_4

    .line 1740
    const/4 v0, 0x3

    return v0

    .line 1743
    :cond_4
    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1744
    .local v0, "mimeType":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity;->isImageType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x2

    :goto_11
    return v1
.end method

.method private blacklist findSelectedProfile()I
    .registers 3

    .line 1105
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getSelectedProfileExtra()I

    move-result v0

    .line 1106
    .local v0, "selectedProfile":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 1107
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/app/MiuiChooserActivity;->getProfileForUser(Landroid/os/UserHandle;)I

    move-result v0

    .line 1109
    :cond_f
    return v0
.end method

.method private blacklist getActiveEmptyStateView()Landroid/view/ViewGroup;
    .registers 3

    .line 3099
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    .line 3100
    .local v0, "currentPage":I
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->getEmptyStateView()Landroid/view/ViewGroup;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getAppPredictorForDirectShareIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;
    .registers 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2679
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity;->createAppPredictor(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 2678
    :goto_c
    return-object v0
.end method

.method private blacklist getAppPredictorForShareActivitiesIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;
    .registers 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2688
    invoke-direct {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity;->createAppPredictor(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getNavigationBarHeight()I
    .registers 6

    .line 963
    const/4 v0, 0x0

    .line 964
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 965
    .local v1, "res":Landroid/content/res/Resources;
    const-string v2, "navigation_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 966
    .local v2, "id":I
    if-lez v2, :cond_15

    .line 967
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 969
    :cond_15
    return v0
.end method

.method private blacklist getNumSheetExpansions()I
    .registers 4

    .line 1780
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_num_sheet_expansions"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static blacklist getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 1033
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 1035
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1034
    invoke-static {v2, v3, v4}, Landroid/os/Environment;->getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "shared_prefs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "chooser_pin_settings.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1038
    .local v0, "prefsFile":Ljava/io/File;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getProfileForUser(Landroid/os/UserHandle;)I
    .registers 4
    .param p1, "currentUserHandle"    # Landroid/os/UserHandle;

    .line 3089
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3090
    const/4 v0, 0x0

    return v0

    .line 3091
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3092
    const/4 v0, 0x1

    return v0

    .line 3094
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not belong to a personal or work profile."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiChooserActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist getRankedPosition(Lcom/android/internal/app/chooser/SelectableTargetInfo;)I
    .registers 7
    .param p1, "targetInfo"    # Lcom/android/internal/app/chooser/SelectableTargetInfo;

    .line 2110
    nop

    .line 2111
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2112
    .local v0, "targetPackageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 2113
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v1

    .line 2114
    .local v1, "currentListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    iget-object v2, v1, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xc

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2117
    .local v2, "maxRankedResults":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    if-ge v3, v2, :cond_3c

    .line 2118
    iget-object v4, v1, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 2119
    invoke-virtual {v4}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 2120
    return v3

    .line 2117
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 2123
    .end local v3    # "i":I
    :cond_3c
    const/4 v3, -0x1

    return v3
.end method

.method private blacklist getTargetIntentFilter()Landroid/content/IntentFilter;
    .registers 11

    .line 2264
    const-string v0, "MiuiChooserActivity"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2265
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    .line 2266
    .local v3, "dataString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 2267
    new-instance v4, Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 2269
    :cond_1b
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_27

    .line 2270
    const-string v4, "Failed to get target intent filter: intent data and type are null"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    return-object v1

    .line 2273
    :cond_27
    new-instance v4, Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2275
    .local v5, "contentUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const-string v6, "android.intent.action.SEND"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_43} :catch_84

    const-string v7, "android.intent.extra.STREAM"

    if-eqz v6, :cond_53

    .line 2276
    :try_start_47
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 2277
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_52

    .line 2278
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2280
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_52
    goto :goto_5c

    .line 2281
    :cond_53
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 2282
    .local v6, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-eqz v6, :cond_5c

    .line 2283
    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2286
    .end local v6    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_5c
    :goto_5c
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_60
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_83

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 2287
    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2288
    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v1}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 2289
    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_82} :catch_84

    .line 2290
    .end local v7    # "uri":Landroid/net/Uri;
    goto :goto_60

    .line 2291
    :cond_83
    return-object v4

    .line 2292
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "dataString":Ljava/lang/String;
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    .end local v5    # "contentUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :catch_84
    move-exception v2

    .line 2293
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Failed to get target intent filter"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2294
    return-object v1
.end method

.method private blacklist handleLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 26
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 2932
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/internal/app/MiuiChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    if-nez v0, :cond_7

    .line 2933
    return-void

    .line 2935
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v7

    .line 2936
    .local v7, "recyclerView":Lcom/android/internal/widget/RecyclerView;
    iget-object v0, v6, Lcom/android/internal/app/MiuiChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v8

    .line 2939
    .local v8, "gridAdapter":Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    if-eqz v8, :cond_93

    if-eqz v7, :cond_93

    .line 2940
    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    if-eqz v0, :cond_1d

    goto/16 :goto_93

    .line 2944
    :cond_1d
    sub-int v0, p4, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int v9, v0, v1

    .line 2945
    .local v9, "availableWidth":I
    invoke-virtual {v8}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->consumeLayoutRequest()Z

    move-result v0

    if-nez v0, :cond_43

    .line 2946
    invoke-virtual {v8, v9}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->calculateChooserTargetWidth(I)Z

    move-result v0

    if-nez v0, :cond_43

    .line 2947
    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView;->getAdapter()Lcom/android/internal/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_43

    iget v0, v6, Lcom/android/internal/app/MiuiChooserActivity;->mCurrAvailableWidth:I

    if-eq v9, v0, :cond_41

    goto :goto_43

    :cond_41
    const/4 v0, 0x0

    goto :goto_44

    :cond_43
    :goto_43
    const/4 v0, 0x1

    :goto_44
    move v10, v0

    .line 2949
    .local v10, "isLayoutUpdated":Z
    if-nez v10, :cond_4f

    iget v0, v6, Lcom/android/internal/app/MiuiChooserActivity;->mLastNumberOfChildren:I

    .line 2950
    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-eq v0, v1, :cond_92

    .line 2951
    :cond_4f
    iput v9, v6, Lcom/android/internal/app/MiuiChooserActivity;->mCurrAvailableWidth:I

    .line 2952
    if-eqz v10, :cond_63

    .line 2956
    invoke-virtual {v7, v8}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 2957
    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/GridLayoutManager;

    .line 2958
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->getMaxTargetsPerRow()I

    move-result v1

    .line 2957
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/GridLayoutManager;->setSpanCount(I)V

    .line 2961
    :cond_63
    iget-object v0, v6, Lcom/android/internal/app/MiuiChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    .line 2962
    .local v11, "currentUserHandle":Landroid/os/UserHandle;
    invoke-direct {v6, v11}, Lcom/android/internal/app/MiuiChooserActivity;->getProfileForUser(Landroid/os/UserHandle;)I

    move-result v12

    .line 2963
    .local v12, "currentProfile":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->findSelectedProfile()I

    move-result v13

    .line 2964
    .local v13, "initialProfile":I
    if-eq v12, v13, :cond_74

    .line 2965
    return-void

    .line 2968
    :cond_74
    iget v0, v6, Lcom/android/internal/app/MiuiChooserActivity;->mLastNumberOfChildren:I

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_7d

    .line 2969
    return-void

    .line 2972
    :cond_7d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v14

    new-instance v15, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda4;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v7

    move/from16 v4, p5

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/app/MiuiChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/widget/RecyclerView;II)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3070
    .end local v11    # "currentUserHandle":Landroid/os/UserHandle;
    .end local v12    # "currentProfile":I
    .end local v13    # "initialProfile":I
    :cond_92
    return-void

    .line 2941
    .end local v9    # "availableWidth":I
    .end local v10    # "isLayoutUpdated":Z
    :cond_93
    :goto_93
    return-void
.end method

.method private blacklist handlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 3
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 1189
    invoke-static {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mPinnedSharedPrefs:Landroid/content/SharedPreferences;

    .line 1190
    if-nez p1, :cond_9

    goto :goto_c

    .line 1198
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->handlePackagesChanged()V

    .line 1200
    :goto_c
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->updateProfileViewButton()V

    .line 1201
    return-void
.end method

.method private blacklist handleScroll(Landroid/view/View;IIII)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "oldx"    # I
    .param p5, "oldy"    # I

    .line 2920
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2921
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p5}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->handleScroll(Landroid/view/View;II)V

    .line 2923
    :cond_11
    return-void
.end method

.method private blacklist hideStickyContentPreview()V
    .registers 3

    .line 3352
    invoke-direct {p0}, Lcom/android/internal/app/MiuiChooserActivity;->isStickyContentPreviewShowing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3353
    return-void

    .line 3357
    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mView:Landroid/view/View;

    const v1, 0x1020267

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3358
    .local v0, "contentPreviewContainer":Landroid/view/ViewGroup;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3359
    return-void
.end method

.method private blacklist incrementNumSheetExpansions()V
    .registers 4

    .line 1784
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1785
    invoke-direct {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getNumSheetExpansions()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1784
    const-string v2, "pref_num_sheet_expansions"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1785
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1786
    return-void
.end method

.method public static blacklist isCTS()Z
    .registers 3

    .line 4584
    nop

    .line 4585
    const-string v0, "ro.miui.cts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4584
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "persist.sys.miui_optimization"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-boolean v0, Lcom/android/internal/app/MiuiChooserActivity;->AER_TEST:Z

    if-eqz v0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :cond_1d
    :goto_1d
    return v1
.end method

.method private blacklist isHideCameraInfoEnableDefault(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 1793
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zman_share_hide_camera_default"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method private blacklist isHideLocationInfoEnableDefault(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 1789
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zman_share_hide_location_default"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method private blacklist isPackageEnabled(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2413
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2414
    return v1

    .line 2418
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_10} :catch_21

    .line 2421
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 2423
    if-eqz v0, :cond_20

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_20

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-nez v2, :cond_20

    .line 2425
    const/4 v1, 0x1

    return v1

    .line 2427
    :cond_20
    return v1

    .line 2419
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_21
    move-exception v0

    .line 2420
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method private blacklist isStickyContentPreviewShowing()Z
    .registers 3

    .line 3347
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mView:Landroid/view/View;

    const v1, 0x1020267

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3348
    .local v0, "contentPreviewContainer":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method static synthetic blacklist lambda$convertToChooserTarget$4(Landroid/service/chooser/ChooserTarget;Landroid/service/chooser/ChooserTarget;)I
    .registers 4
    .param p0, "a"    # Landroid/service/chooser/ChooserTarget;
    .param p1, "b"    # Landroid/service/chooser/ChooserTarget;

    .line 2494
    invoke-virtual {p0}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v0

    invoke-virtual {p1}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method private blacklist loadFileUriIntoView(Landroid/net/Uri;Landroid/view/View;)V
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "parent"    # Landroid/view/View;

    .line 1714
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/MiuiChooserActivity;->extractFileInfo(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/android/internal/app/MiuiChooserActivity$FileInfo;

    move-result-object v0

    .line 1716
    .local v0, "fileInfo":Lcom/android/internal/app/MiuiChooserActivity$FileInfo;
    const v1, 0x102026c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1717
    .local v1, "fileNameView":Landroid/widget/TextView;
    iget-object v2, v0, Lcom/android/internal/app/MiuiChooserActivity$FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1719
    iget-boolean v2, v0, Lcom/android/internal/app/MiuiChooserActivity$FileInfo;->hasThumbnail:Z

    const v3, 0x102026b

    const/4 v4, 0x0

    if-eqz v2, :cond_29

    .line 1720
    new-instance v2, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;

    invoke-direct {v2, p0, p2, v4}, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;-><init>(Lcom/android/internal/app/MiuiChooserActivity;Landroid/view/View;Z)V

    iput-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity;->mPreviewCoord:Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;

    .line 1721
    invoke-static {v2, v3, p1, v4}, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    goto :goto_44

    .line 1723
    :cond_29
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1724
    .local v2, "thumbnailView":Landroid/view/View;
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1726
    const v3, 0x1020269

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1727
    .local v3, "fileIconView":Landroid/widget/ImageView;
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1728
    const v4, 0x1080263

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1730
    .end local v2    # "thumbnailView":Landroid/view/View;
    .end local v3    # "fileIconView":Landroid/widget/ImageView;
    :goto_44
    return-void
.end method

.method private blacklist logActionShareWithPreview()V
    .registers 6

    .line 3362
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3363
    .local v0, "targetIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/MiuiChooserActivity;->findPreferredContentPreview(Landroid/content/Intent;Landroid/content/ContentResolver;)I

    move-result v1

    .line 3364
    .local v1, "previewType":I
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v2

    new-instance v3, Landroid/metrics/LogMaker;

    const/16 v4, 0x674

    invoke-direct {v3, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 3365
    invoke-virtual {v3, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 3364
    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3366
    return-void
.end method

.method private blacklist logContentPreviewWarning(Landroid/net/Uri;)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not load ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") thumbnail/name for preview. If desired, consider using Intent#createChooser to launch the ChooserActivity, and set your Intent\'s clipData and flags in accordance with that method\'s documentation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiChooserActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    return-void
.end method

.method private blacklist logDirectShareTargetReceived(I)V
    .registers 7
    .param p1, "logCategory"    # I

    .line 2542
    const/16 v0, 0x6b6

    if-ne p1, v0, :cond_7

    .line 2543
    iget-wide v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mQueriedSharingShortcutsTimeMs:J

    goto :goto_9

    :cond_7
    iget-wide v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mQueriedTargetServicesTimeMs:J

    .line 2544
    .local v0, "queryTime":J
    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    .line 2545
    .local v2, "apiLatency":I
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v3

    new-instance v4, Landroid/metrics/LogMaker;

    invoke-direct {v4, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v4, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2546
    return-void
.end method

.method private blacklist maybeSetupGlobalLayoutListener()V
    .registers 4

    .line 3257
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3258
    return-void

    .line 3260
    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    .line 3261
    .local v0, "recyclerView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/MiuiChooserActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/app/MiuiChooserActivity$4;-><init>(Lcom/android/internal/app/MiuiChooserActivity;Landroid/view/View;)V

    .line 3262
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3276
    return-void
.end method

.method private blacklist modifyTargetIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "in"    # Landroid/content/Intent;

    .line 1936
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1937
    const/high16 v0, 0x8080000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1940
    :cond_b
    return-void
.end method

.method private blacklist onCopyButtonClicked(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .line 1204
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1205
    .local v0, "targetIntent":Landroid/content/Intent;
    if-nez v0, :cond_b

    .line 1206
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->finish()V

    goto/16 :goto_8f

    .line 1208
    :cond_b
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1210
    .local v1, "action":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1211
    .local v2, "clipData":Landroid/content/ClipData;
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "MiuiChooserActivity"

    const-string v5, "android.intent.extra.STREAM"

    const/4 v6, 0x0

    if-eqz v3, :cond_41

    .line 1212
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1213
    .local v3, "extraText":Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 1215
    .local v5, "extraStream":Landroid/net/Uri;
    if-eqz v3, :cond_30

    .line 1216
    invoke-static {v6, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    goto :goto_3a

    .line 1217
    :cond_30
    if-eqz v5, :cond_3b

    .line 1218
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v6, v5}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    .line 1223
    .end local v3    # "extraText":Ljava/lang/String;
    .end local v5    # "extraStream":Landroid/net/Uri;
    :goto_3a
    goto :goto_79

    .line 1220
    .restart local v3    # "extraText":Ljava/lang/String;
    .restart local v5    # "extraStream":Landroid/net/Uri;
    :cond_3b
    const-string v6, "No data available to copy to clipboard"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    return-void

    .line 1223
    .end local v3    # "extraText":Ljava/lang/String;
    .end local v5    # "extraStream":Landroid/net/Uri;
    :cond_41
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 1224
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1226
    .local v3, "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-static {v4, v6, v5}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    .line 1227
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_5d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_78

    .line 1228
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Landroid/content/ClipData$Item;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-direct {v6, v7}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2, v5, v6}, Landroid/content/ClipData;->addItem(Landroid/content/ContentResolver;Landroid/content/ClipData$Item;)V

    .line 1227
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    .line 1230
    .end local v3    # "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v4    # "i":I
    :cond_78
    nop

    .line 1237
    :goto_79
    const-string v3, "clipboard"

    invoke-virtual {p0, v3}, Lcom/android/internal/app/MiuiChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    .line 1239
    .local v3, "clipboardManager":Landroid/content/ClipboardManager;
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ClipboardManager;->setPrimaryClipAsPackage(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1251
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/app/MiuiChooserActivity;->setResult(I)V

    .line 1252
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->finish()V

    .line 1254
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "clipData":Landroid/content/ClipData;
    .end local v3    # "clipboardManager":Landroid/content/ClipboardManager;
    :goto_8f
    return-void

    .line 1233
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v2    # "clipData":Landroid/content/ClipData;
    :cond_90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Action ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") not supported for copying to clipboard"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    return-void
.end method

.method private blacklist sendClickToAppPredictor(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 7
    .param p1, "targetInfo"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 2609
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 2610
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 2609
    invoke-direct {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity;->getAppPredictorForDirectShareIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v0

    .line 2611
    .local v0, "directShareAppPredictor":Landroid/app/prediction/AppPredictor;
    if-nez v0, :cond_d

    .line 2612
    return-void

    .line 2614
    :cond_d
    instance-of v1, p1, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    if-nez v1, :cond_12

    .line 2615
    return-void

    .line 2617
    :cond_12
    move-object v1, p1

    check-cast v1, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    invoke-interface {v1}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v1

    .line 2618
    .local v1, "chooserTarget":Landroid/service/chooser/ChooserTarget;
    const/4 v2, 0x0

    .line 2619
    .local v2, "appTarget":Landroid/app/prediction/AppTarget;
    iget-object v3, p0, Lcom/android/internal/app/MiuiChooserActivity;->mDirectShareAppTargetCache:Ljava/util/Map;

    if-eqz v3, :cond_25

    .line 2620
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/app/prediction/AppTarget;

    .line 2623
    :cond_25
    if-eqz v2, :cond_3a

    .line 2624
    new-instance v3, Landroid/app/prediction/AppTargetEvent$Builder;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Landroid/app/prediction/AppTargetEvent$Builder;-><init>(Landroid/app/prediction/AppTarget;I)V

    .line 2626
    const-string v4, "direct_share"

    invoke-virtual {v3, v4}, Landroid/app/prediction/AppTargetEvent$Builder;->setLaunchLocation(Ljava/lang/String;)Landroid/app/prediction/AppTargetEvent$Builder;

    move-result-object v3

    .line 2627
    invoke-virtual {v3}, Landroid/app/prediction/AppTargetEvent$Builder;->build()Landroid/app/prediction/AppTargetEvent;

    move-result-object v3

    .line 2624
    invoke-virtual {v0, v3}, Landroid/app/prediction/AppPredictor;->notifyAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V

    .line 2629
    :cond_3a
    return-void
.end method

.method private blacklist sendImpressionToAppPredictor(Lcom/android/internal/app/chooser/TargetInfo;Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 15
    .param p1, "targetInfo"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "adapter"    # Lcom/android/internal/app/ChooserListAdapter;

    .line 2583
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 2584
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 2583
    invoke-direct {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity;->getAppPredictorForDirectShareIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v0

    .line 2585
    .local v0, "directShareAppPredictor":Landroid/app/prediction/AppPredictor;
    if-nez v0, :cond_d

    .line 2586
    return-void

    .line 2589
    :cond_d
    instance-of v1, p1, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    if-eqz v1, :cond_12

    .line 2590
    return-void

    .line 2592
    :cond_12
    invoke-virtual {p2}, Lcom/android/internal/app/ChooserListAdapter;->getSurfacedTargetInfo()Ljava/util/List;

    move-result-object v1

    .line 2593
    .local v1, "surfacedTargetInfo":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/ChooserTargetInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2594
    .local v2, "targetIds":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTargetId;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 2595
    .local v4, "chooserTargetInfo":Lcom/android/internal/app/chooser/ChooserTargetInfo;
    invoke-interface {v4}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v5

    .line 2596
    .local v5, "chooserTarget":Landroid/service/chooser/ChooserTarget;
    iget-object v6, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserTargetComponentNameCache:Ljava/util/Map;

    .line 2597
    invoke-virtual {v5}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v5}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    .line 2596
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 2598
    .local v6, "componentName":Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/internal/app/MiuiChooserActivity;->mDirectShareShortcutInfoCache:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_73

    .line 2599
    iget-object v7, p0, Lcom/android/internal/app/MiuiChooserActivity;->mDirectShareShortcutInfoCache:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    .line 2600
    .local v7, "shortcutId":Ljava/lang/String;
    new-instance v8, Landroid/app/prediction/AppTargetId;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    .line 2601
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "shortcut_target"

    aput-object v11, v9, v10

    const-string v10, "%s/%s/%s"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    .line 2600
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2604
    .end local v4    # "chooserTargetInfo":Lcom/android/internal/app/chooser/ChooserTargetInfo;
    .end local v5    # "chooserTarget":Landroid/service/chooser/ChooserTarget;
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "shortcutId":Ljava/lang/String;
    :cond_73
    goto :goto_1f

    .line 2605
    :cond_74
    const-string v3, "direct_share"

    invoke-virtual {v0, v3, v2}, Landroid/app/prediction/AppPredictor;->notifyLaunchLocationShown(Ljava/lang/String;Ljava/util/List;)V

    .line 2606
    return-void
.end method

.method private blacklist sendShareShortcutInfoList(Ljava/util/List;Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 14
    .param p2, "chooserListAdapter"    # Lcom/android/internal/app/ChooserListAdapter;
    .param p4, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;",
            "Lcom/android/internal/app/ChooserListAdapter;",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 2352
    .local p1, "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    .local p3, "appTargets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    if-eqz p3, :cond_38

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_d

    goto :goto_38

    .line 2353
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultList and appTargets must have the same size. resultList.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2354
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appTargets.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2355
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2358
    :cond_38
    :goto_38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_3e
    if-ltz v0, :cond_5f

    .line 2359
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2360
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/app/MiuiChooserActivity;->isPackageEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 2361
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2362
    if-eqz p3, :cond_5c

    .line 2363
    invoke-interface {p3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2358
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_5c
    add-int/lit8 v0, v0, -0x1

    goto :goto_3e

    .line 2369
    .end local v0    # "i":I
    :cond_5f
    if-nez p3, :cond_63

    const/4 v0, 0x2

    goto :goto_64

    .line 2370
    :cond_63
    const/4 v0, 0x3

    :goto_64
    nop

    .line 2375
    .local v0, "shortcutType":I
    const/4 v1, 0x0

    .line 2376
    .local v1, "resultMessageSent":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_67
    invoke-virtual {p2}, Lcom/android/internal/app/ChooserListAdapter;->getDisplayResolveInfoCount()I

    move-result v3

    if-ge v2, v3, :cond_c6

    .line 2377
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2378
    .local v3, "matchingShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_73
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_9d

    .line 2379
    invoke-virtual {p2, v2}, Lcom/android/internal/app/ChooserListAdapter;->getDisplayResolveInfo(I)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .line 2380
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v6}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 2379
    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 2381
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2378
    :cond_9a
    add-int/lit8 v4, v4, 0x1

    goto :goto_73

    .line 2384
    .end local v4    # "j":I
    :cond_9d
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 2385
    goto :goto_c3

    .line 2387
    :cond_a4
    invoke-virtual {p0, v3, p1, p3, v0}, Lcom/android/internal/app/MiuiChooserActivity;->convertToChooserTarget(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    .line 2392
    .local v4, "chooserTargets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 2393
    .local v5, "msg":Landroid/os/Message;
    const/4 v6, 0x4

    iput v6, v5, Landroid/os/Message;->what:I

    .line 2394
    new-instance v6, Lcom/android/internal/app/MiuiChooserActivity$ServiceResultInfo;

    invoke-virtual {p2, v2}, Lcom/android/internal/app/ChooserListAdapter;->getDisplayResolveInfo(I)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v4, v8, p4}, Lcom/android/internal/app/MiuiChooserActivity$ServiceResultInfo;-><init>(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;Landroid/os/UserHandle;)V

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2396
    iput v0, v5, Landroid/os/Message;->arg1:I

    .line 2397
    iget-object v6, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserHandler:Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;

    invoke-virtual {v6, v5}, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2398
    const/4 v1, 0x1

    .line 2376
    .end local v3    # "matchingShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    .end local v4    # "chooserTargets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    .end local v5    # "msg":Landroid/os/Message;
    :goto_c3
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 2401
    .end local v2    # "i":I
    :cond_c6
    if-eqz v1, :cond_cb

    .line 2402
    invoke-direct {p0}, Lcom/android/internal/app/MiuiChooserActivity;->sendShortcutManagerShareTargetResultCompleted()V

    .line 2404
    :cond_cb
    return-void
.end method

.method private blacklist sendShortcutManagerShareTargetResultCompleted()V
    .registers 3

    .line 2407
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2408
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2409
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserHandler:Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2410
    return-void
.end method

.method private blacklist setHideCameraInfoEnable(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I

    .line 1801
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zman_share_hide_camera"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1802
    return-void
.end method

.method private blacklist setHideLocationInfoEnable(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I

    .line 1797
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zman_share_hide_location"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1798
    return-void
.end method

.method private blacklist setHorizontalScrollingEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 3471
    const v0, 0x1020452

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverViewPager;

    .line 3472
    .local v0, "viewPager":Lcom/android/internal/app/ResolverViewPager;
    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverViewPager;->setSwipingEnabled(Z)V

    .line 3473
    return-void
.end method

.method private blacklist setVerticalScrollEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 3476
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 3477
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    .line 3478
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserGridLayoutManager;

    .line 3479
    .local v0, "layoutManager":Lcom/android/internal/app/ChooserGridLayoutManager;
    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserGridLayoutManager;->setVerticalScrollEnabled(Z)V

    .line 3480
    return-void
.end method

.method private blacklist setupAppPredictorForUser(Landroid/os/UserHandle;Landroid/app/prediction/AppPredictor$Callback;)Landroid/app/prediction/AppPredictor;
    .registers 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "appPredictorCallback"    # Landroid/app/prediction/AppPredictor$Callback;

    .line 979
    invoke-direct {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity;->getAppPredictorForDirectShareIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v0

    .line 980
    .local v0, "appPredictor":Landroid/app/prediction/AppPredictor;
    if-nez v0, :cond_8

    .line 981
    const/4 v1, 0x0

    return-object v1

    .line 983
    :cond_8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity;->mDirectShareAppTargetCache:Ljava/util/Map;

    .line 984
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/app/prediction/AppPredictor;->registerPredictionUpdates(Ljava/util/concurrent/Executor;Landroid/app/prediction/AppPredictor$Callback;)V

    .line 985
    return-object v0
.end method

.method private blacklist setupScrollListener()V
    .registers 7

    .line 3217
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-nez v0, :cond_5

    .line 3218
    return-void

    .line 3221
    :cond_5
    const v0, 0x102024c

    .line 3222
    .local v0, "elevatedViewResId":I
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3223
    .local v1, "elevatedView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getElevation()F

    move-result v2

    .line 3224
    .local v2, "defaultElevation":F
    nop

    .line 3225
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105009d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 3226
    .local v3, "chooserHeaderScrollElevation":F
    iget-object v4, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v4

    new-instance v5, Lcom/android/internal/app/MiuiChooserActivity$3;

    invoke-direct {v5, p0, v1, v3, v2}, Lcom/android/internal/app/MiuiChooserActivity$3;-><init>(Lcom/android/internal/app/MiuiChooserActivity;Landroid/view/View;FF)V

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/RecyclerView;->addOnScrollListener(Lcom/android/internal/widget/RecyclerView$OnScrollListener;)V

    .line 3254
    return-void
.end method

.method private blacklist shouldDisplayLandscape(I)Z
    .registers 3
    .param p1, "orientation"    # I

    .line 1269
    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private blacklist shouldQueryShortcutManager(Landroid/os/UserHandle;)Z
    .registers 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2330
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->shouldShowTabs()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 2331
    return v1

    .line 2333
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2334
    return v1

    .line 2336
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    .line 2337
    return v2

    .line 2339
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 2340
    return v2

    .line 2342
    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2343
    return v2

    .line 2345
    :cond_29
    return v1
.end method

.method private blacklist shouldShowExtraRow(I)Z
    .registers 5
    .param p1, "rowsToShow"    # I

    .line 3078
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->shouldShowTabs()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    if-ne p1, v1, :cond_16

    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 3081
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v2

    .line 3080
    invoke-virtual {v0, v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->shouldShowEmptyStateScreen(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 3078
    :goto_17
    return v1
.end method

.method private blacklist shouldShowStickyContentPreview()Z
    .registers 3

    .line 3302
    invoke-direct {p0}, Lcom/android/internal/app/MiuiChooserActivity;->shouldShowStickyContentPreviewNoOrientationCheck()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3303
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110218

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 3302
    :goto_16
    return v0
.end method

.method private blacklist shouldShowStickyContentPreviewNoOrientationCheck()Z
    .registers 3

    .line 3307
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 3309
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 3308
    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 3309
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_26

    .line 3310
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    .line 3307
    :goto_27
    return v0
.end method

.method private blacklist showStickyContentPreview()V
    .registers 3

    .line 3335
    invoke-direct {p0}, Lcom/android/internal/app/MiuiChooserActivity;->isStickyContentPreviewShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3336
    return-void

    .line 3340
    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mView:Landroid/view/View;

    const v1, 0x1020267

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3341
    .local v0, "contentPreviewContainer":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3342
    return-void
.end method

.method private blacklist showTargetDetails(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 2
    .param p1, "ti"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1911
    return-void
.end method

.method private blacklist sinkNavigationBar(Z)V
    .registers 4
    .param p1, "fullScreen"    # Z

    .line 930
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 931
    .local v0, "option":I
    if-eqz p1, :cond_11

    .line 932
    or-int/lit8 v0, v0, 0x6

    goto :goto_13

    .line 934
    :cond_11
    or-int/lit16 v0, v0, 0x600

    .line 937
    :goto_13
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 938
    return-void
.end method

.method private blacklist updateLayoutWidth(IILandroid/view/View;)V
    .registers 6
    .param p1, "layoutResourceId"    # I
    .param p2, "width"    # I
    .param p3, "parent"    # Landroid/view/View;

    .line 1286
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1287
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 1288
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1289
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1290
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1292
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_15
    return-void
.end method

.method private blacklist updateStickyContentPreview()V
    .registers 3

    .line 3314
    invoke-direct {p0}, Lcom/android/internal/app/MiuiChooserActivity;->shouldShowStickyContentPreviewNoOrientationCheck()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3321
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mView:Landroid/view/View;

    const v1, 0x1020267

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3322
    .local v0, "contentPreviewContainer":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1e

    .line 3323
    invoke-direct {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity;->createContentPreviewView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 3324
    .local v1, "contentPreviewView":Landroid/view/ViewGroup;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3327
    .end local v0    # "contentPreviewContainer":Landroid/view/ViewGroup;
    .end local v1    # "contentPreviewView":Landroid/view/ViewGroup;
    :cond_1e
    invoke-direct {p0}, Lcom/android/internal/app/MiuiChooserActivity;->shouldShowStickyContentPreview()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 3328
    invoke-direct {p0}, Lcom/android/internal/app/MiuiChooserActivity;->showStickyContentPreview()V

    goto :goto_2b

    .line 3330
    :cond_28
    invoke-direct {p0}, Lcom/android/internal/app/MiuiChooserActivity;->hideStickyContentPreview()V

    .line 3332
    :goto_2b
    return-void
.end method


# virtual methods
.method public blacklist addUseDifferentAppLabelIfNecessary(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 6
    .param p1, "adapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 1868
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    if-eqz v0, :cond_18

    array-length v0, v0

    if-lez v0, :cond_18

    .line 1869
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    .line 1871
    invoke-static {v1}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 1869
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, v3}, Lcom/android/internal/app/ChooserListAdapter;->addServiceResults(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;ILjava/util/Map;)V

    .line 1875
    :cond_18
    return-void
.end method

.method protected blacklist appliedThemeResId()I
    .registers 2

    .line 974
    const v0, 0x10303ed

    return v0
.end method

.method protected blacklist applyFooterView(I)V
    .registers 5
    .param p1, "height"    # I

    .line 2134
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItemCount()I

    move-result v0

    .line 2136
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 2137
    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->setFooterHeight(I)V

    .line 2136
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2139
    .end local v1    # "i":I
    :cond_15
    return-void
.end method

.method blacklist checkTargetSourceIntent(Lcom/android/internal/app/chooser/TargetInfo;Landroid/content/Intent;)Z
    .registers 8
    .param p1, "target"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "matchingIntent"    # Landroid/content/Intent;

    .line 2721
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v0

    .line 2722
    .local v0, "targetIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "N":I
    :goto_9
    if-ge v1, v2, :cond_1c

    .line 2723
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 2724
    .local v3, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v3, p2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 2725
    const/4 v4, 0x1

    return v4

    .line 2722
    .end local v3    # "targetIntent":Landroid/content/Intent;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2728
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist convertToChooserTarget(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Ljava/util/List;
    .registers 24
    .param p4, "shortcutType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;"
        }
    .end annotation

    .line 2449
    .local p1, "matchingShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    .local p2, "allShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    .local p3, "allAppTargets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2450
    .local v4, "scoreList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x2

    if-ne v3, v5, :cond_3c

    .line 2451
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_11
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_39

    .line 2452
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v6}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v6

    .line 2453
    .local v6, "shortcutRank":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_36

    .line 2454
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2451
    .end local v6    # "shortcutRank":I
    :cond_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 2457
    .end local v5    # "i":I
    :cond_39
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2460
    :cond_3c
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2461
    .local v5, "chooserTargetList":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_46
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_ce

    .line 2462
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v7

    .line 2463
    .local v7, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v9, p2

    invoke-interface {v9, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 2466
    .local v8, "indexInAllShortcuts":I
    const/4 v10, 0x3

    const/4 v11, 0x0

    const v12, 0x3c23d70a    # 0.01f

    const/high16 v13, 0x3f800000    # 1.0f

    if-ne v3, v10, :cond_71

    .line 2468
    int-to-float v10, v8

    mul-float/2addr v10, v12

    sub-float/2addr v13, v10

    invoke-static {v13, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .local v10, "score":F
    goto :goto_85

    .line 2471
    .end local v10    # "score":F
    :cond_71
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 2472
    .local v10, "rankIndex":I
    int-to-float v14, v10

    mul-float/2addr v14, v12

    sub-float/2addr v13, v14

    invoke-static {v13, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    move v10, v11

    .line 2475
    .local v10, "score":F
    :goto_85
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 2476
    .local v11, "extras":Landroid/os/Bundle;
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.extra.shortcut.ID"

    invoke-virtual {v11, v13, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2478
    new-instance v18, Landroid/service/chooser/ChooserTarget;

    .line 2479
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v13

    const/4 v14, 0x0

    .line 2481
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v12}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v16

    move-object/from16 v12, v18

    move v15, v10

    move-object/from16 v17, v11

    invoke-direct/range {v12 .. v17}, Landroid/service/chooser/ChooserTarget;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;FLandroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 2483
    .local v12, "chooserTarget":Landroid/service/chooser/ChooserTarget;
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2484
    iget-object v13, v0, Lcom/android/internal/app/MiuiChooserActivity;->mDirectShareAppTargetCache:Ljava/util/Map;

    if-eqz v13, :cond_c3

    if-eqz v2, :cond_c3

    .line 2485
    nop

    .line 2486
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/prediction/AppTarget;

    .line 2485
    invoke-interface {v13, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2488
    :cond_c3
    iget-object v13, v0, Lcom/android/internal/app/MiuiChooserActivity;->mDirectShareShortcutInfoCache:Ljava/util/Map;

    if-eqz v13, :cond_ca

    .line 2489
    invoke-interface {v13, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2461
    .end local v7    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    .end local v8    # "indexInAllShortcuts":I
    .end local v10    # "score":F
    .end local v11    # "extras":Landroid/os/Bundle;
    .end local v12    # "chooserTarget":Landroid/service/chooser/ChooserTarget;
    :cond_ca
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_46

    :cond_ce
    move-object/from16 v9, p2

    .line 2493
    .end local v6    # "i":I
    new-instance v6, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda0;-><init>()V

    .line 2495
    .local v6, "byScore":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/service/chooser/ChooserTarget;>;"
    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2496
    return-object v5
.end method

.method public blacklist createChooserGridAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "filterLastUsed"    # Z
    .param p6, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z",
            "Landroid/os/UserHandle;",
            ")",
            "Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;"
        }
    .end annotation

    .line 2845
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    nop

    .line 2847
    invoke-virtual {p0, p6}, Lcom/android/internal/app/MiuiChooserActivity;->createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;

    move-result-object v6

    .line 2845
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/MiuiChooserActivity;->createChooserListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    .line 2848
    .local v0, "chooserListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    invoke-direct {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity;->createAppPredictorCallback(Lcom/android/internal/app/ChooserListAdapter;)Landroid/app/prediction/AppPredictor$Callback;

    move-result-object v1

    .line 2849
    .local v1, "appPredictorCallback":Landroid/app/prediction/AppPredictor$Callback;
    invoke-direct {p0, p6, v1}, Lcom/android/internal/app/MiuiChooserActivity;->setupAppPredictorForUser(Landroid/os/UserHandle;Landroid/app/prediction/AppPredictor$Callback;)Landroid/app/prediction/AppPredictor;

    move-result-object v2

    .line 2850
    .local v2, "appPredictor":Landroid/app/prediction/AppPredictor;
    invoke-virtual {v0, v2}, Lcom/android/internal/app/ChooserListAdapter;->setAppPredictor(Landroid/app/prediction/AppPredictor;)V

    .line 2851
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserListAdapter;->setAppPredictorCallback(Landroid/app/prediction/AppPredictor$Callback;)V

    .line 2852
    new-instance v3, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;-><init>(Lcom/android/internal/app/MiuiChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V

    return-object v3
.end method

.method public blacklist createChooserListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;)Lcom/android/internal/app/ChooserListAdapter;
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "filterLastUsed"    # Z
    .param p6, "resolverListController"    # Lcom/android/internal/app/ResolverListController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z",
            "Lcom/android/internal/app/ResolverListController;",
            ")",
            "Lcom/android/internal/app/ChooserListAdapter;"
        }
    .end annotation

    .line 2859
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v11, Lcom/android/internal/app/ChooserListAdapter;

    .line 2861
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 2862
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v10

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, p0

    move-object v8, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/app/ChooserListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;Landroid/content/pm/PackageManager;Lcom/android/internal/app/ChooserActivityLogger;)V

    .line 2859
    return-object v11
.end method

.method protected blacklist createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;
    .registers 14
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2867
    invoke-direct {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity;->getAppPredictorForShareActivitiesIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v9

    .line 2869
    .local v9, "appPredictor":Landroid/app/prediction/AppPredictor;
    if-eqz v9, :cond_1d

    .line 2870
    new-instance v7, Lcom/android/internal/app/AppPredictionServiceResolverComparator;

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2871
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    move-object v4, v9

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/app/prediction/AppPredictor;Landroid/os/UserHandle;Lcom/android/internal/app/ChooserActivityLogger;)V

    move-object v10, v0

    .local v0, "resolverComparator":Lcom/android/internal/app/AbstractResolverComparator;
    goto :goto_32

    .line 2873
    .end local v0    # "resolverComparator":Lcom/android/internal/app/AbstractResolverComparator;
    :cond_1d
    new-instance v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    .line 2874
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2875
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v5

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;Lcom/android/internal/app/ChooserActivityLogger;)V

    move-object v10, v0

    .line 2878
    .local v10, "resolverComparator":Lcom/android/internal/app/AbstractResolverComparator;
    :goto_32
    new-instance v11, Lcom/android/internal/app/MiuiChooserActivity$ChooserListController;

    iget-object v3, p0, Lcom/android/internal/app/MiuiChooserActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 2881
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v4

    .line 2882
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/app/MiuiChooserActivity;->mLaunchedFromUid:I

    move-object v0, v11

    move-object v1, p0

    move-object v2, p0

    move-object v7, p1

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/MiuiChooserActivity$ChooserListController;-><init>(Lcom/android/internal/app/MiuiChooserActivity;Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/internal/app/AbstractResolverComparator;)V

    .line 2878
    return-object v11
.end method

.method protected blacklist createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;
    .registers 3
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 1167
    new-instance v0, Lcom/android/internal/app/MiuiChooserActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/MiuiChooserActivity$2;-><init>(Lcom/android/internal/app/MiuiChooserActivity;Lcom/android/internal/app/ResolverListAdapter;)V

    return-object v0
.end method

.method protected blacklist createResolverListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "filterLastUsed"    # Z
    .param p6, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z",
            "Landroid/os/UserHandle;",
            ")",
            "Lcom/android/internal/app/ResolverListAdapter;"
        }
    .end annotation

    .line 4575
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4576
    .local v0, "startIntent":Landroid/content/Intent;
    new-instance v12, Lcom/android/internal/app/ChooserListAdapter;

    .line 4577
    move-object v13, p0

    move-object/from16 v14, p6

    invoke-virtual {p0, v14}, Lcom/android/internal/app/MiuiChooserActivity;->createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;

    move-result-object v7

    .line 4578
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v11

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object v8, p0

    move-object v9, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/internal/app/ChooserListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;Landroid/content/pm/PackageManager;Lcom/android/internal/app/ChooserActivityLogger;)V

    .line 4576
    return-object v12
.end method

.method blacklist filterServiceTargets(Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;)V"
        }
    .end annotation

    .line 2735
    .local p2, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    if-nez p2, :cond_3

    .line 2736
    return-void

    .line 2741
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2742
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_68

    .line 2743
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/chooser/ChooserTarget;

    .line 2744
    .local v3, "target":Landroid/service/chooser/ChooserTarget;
    invoke-virtual {v3}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 2745
    .local v4, "targetName":Landroid/content/ComponentName;
    if-eqz p1, :cond_26

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 2747
    goto :goto_65

    .line 2752
    :cond_26
    const/4 v5, 0x0

    :try_start_27
    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 2753
    .local v6, "ai":Landroid/content/pm/ActivityInfo;
    iget-boolean v7, v6, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v7, :cond_33

    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;
    :try_end_31
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27 .. :try_end_31} :catch_35

    if-eqz v7, :cond_34

    :cond_33
    move v5, v2

    .line 2758
    .end local v6    # "ai":Landroid/content/pm/ActivityInfo;
    .local v5, "remove":Z
    :cond_34
    goto :goto_60

    .line 2754
    .end local v5    # "remove":Z
    :catch_35
    move-exception v5

    .line 2755
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Target "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " returned by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " component not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MiuiChooserActivity"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    const/4 v6, 0x1

    move v5, v6

    .line 2760
    .local v5, "remove":Z
    :goto_60
    if-eqz v5, :cond_65

    .line 2761
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2742
    .end local v3    # "target":Landroid/service/chooser/ChooserTarget;
    .end local v4    # "targetName":Landroid/content/ComponentName;
    .end local v5    # "remove":Z
    :cond_65
    :goto_65
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 2764
    .end local v1    # "i":I
    :cond_68
    return-void
.end method

.method protected blacklist getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;
    .registers 2

    .line 2790
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    if-nez v0, :cond_b

    .line 2791
    new-instance v0, Lcom/android/internal/app/ChooserActivityLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivityLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    .line 2793
    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    return-object v0
.end method

.method protected blacklist getEditSharingComponent()Landroid/content/ComponentName;
    .registers 3

    .line 1316
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10402c5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1317
    .local v0, "editorPackage":Ljava/lang/String;
    if-eqz v0, :cond_19

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_19

    .line 1320
    :cond_14
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1

    .line 1318
    :cond_19
    :goto_19
    const/4 v1, 0x0

    return-object v1
.end method

.method protected blacklist getEditSharingTarget(Landroid/content/Intent;)Lcom/android/internal/app/chooser/TargetInfo;
    .registers 13
    .param p1, "originalIntent"    # Landroid/content/Intent;

    .line 1325
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getEditSharingComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1327
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1328
    .local v1, "resolveIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1329
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1330
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 1332
    .local v9, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v9, :cond_40

    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_22

    goto :goto_40

    .line 1338
    :cond_22
    new-instance v10, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const v2, 0x1040889

    .line 1339
    invoke-virtual {p0, v2}, Lcom/android/internal/app/MiuiChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const-string v6, ""

    move-object v2, v10

    move-object v3, p1

    move-object v4, v9

    move-object v7, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    .line 1340
    .local v2, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    const v3, 0x108003e

    invoke-virtual {p0, v3}, Lcom/android/internal/app/MiuiChooserActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setDisplayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1341
    return-object v2

    .line 1333
    .end local v2    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :cond_40
    :goto_40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device-specified image edit component ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiChooserActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    const/4 v2, 0x0

    return-object v2
.end method

.method public blacklist getLayoutResource()I
    .registers 2

    .line 1886
    const v0, 0x109005d

    return v0
.end method

.method public blacklist getMaxRankedTargets()I
    .registers 2

    .line 3130
    const/4 v0, 0x4

    return v0
.end method

.method blacklist getMaxTargetsPerRow()I
    .registers 3

    .line 3498
    const/4 v0, 0x4

    .line 3499
    .local v0, "maxTargets":I
    iget-boolean v1, p0, Lcom/android/internal/app/MiuiChooserActivity;->mShouldDisplayLandscape:Z

    if-eqz v1, :cond_7

    .line 3500
    const/16 v0, 0x8

    .line 3502
    :cond_7
    return v0
.end method

.method protected blacklist getMetricsCategory()Ljava/lang/String;
    .registers 2

    .line 3442
    const-string v0, "intent_chooser"

    return-object v0
.end method

.method protected blacklist getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .registers 2

    .line 2783
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_b

    .line 2784
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 2786
    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method protected blacklist getNearbySharingComponent()Landroid/content/ComponentName;
    .registers 3

    .line 1302
    nop

    .line 1303
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1302
    const-string v1, "nearby_sharing_component"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1305
    .local v0, "nearbyComponent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1306
    const v1, 0x1040254

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MiuiChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1308
    :cond_18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1309
    const/4 v1, 0x0

    return-object v1

    .line 1311
    :cond_20
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method protected blacklist getNearbySharingTarget(Landroid/content/Intent;)Lcom/android/internal/app/chooser/TargetInfo;
    .registers 16
    .param p1, "originalIntent"    # Landroid/content/Intent;

    .line 1347
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getNearbySharingComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1348
    .local v0, "cn":Landroid/content/ComponentName;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 1350
    :cond_8
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1351
    .local v2, "resolveIntent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1352
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 1354
    .local v10, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v10, :cond_77

    iget-object v3, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_21

    goto :goto_77

    .line 1362
    :cond_21
    const/4 v1, 0x0

    .line 1363
    .local v1, "name":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 1364
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v4, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1365
    .local v11, "metaData":Landroid/os/Bundle;
    if-eqz v11, :cond_4b

    .line 1367
    :try_start_29
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v4

    .line 1368
    .local v4, "pkgRes":Landroid/content/res/Resources;
    const-string v5, "android.service.chooser.chip_label"

    invoke-virtual {v11, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1369
    .local v5, "nameResId":I
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 1370
    const-string v6, "android.service.chooser.chip_icon"

    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1371
    .local v6, "resId":I
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7
    :try_end_46
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_29 .. :try_end_46} :catch_4a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_46} :catch_48

    move-object v3, v7

    .end local v4    # "pkgRes":Landroid/content/res/Resources;
    .end local v5    # "nameResId":I
    .end local v6    # "resId":I
    goto :goto_4b

    .line 1373
    :catch_48
    move-exception v4

    goto :goto_4b

    .line 1372
    :catch_4a
    move-exception v4

    .line 1376
    :cond_4b
    :goto_4b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 1377
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1379
    :cond_59
    if-nez v3, :cond_65

    .line 1380
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v12, v3

    goto :goto_66

    .line 1379
    :cond_65
    move-object v12, v3

    .line 1383
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .local v12, "icon":Landroid/graphics/drawable/Drawable;
    :goto_66
    new-instance v13, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const/4 v9, 0x0

    const-string v7, ""

    move-object v3, v13

    move-object v4, p1

    move-object v5, v10

    move-object v6, v1

    move-object v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    .line 1385
    .local v3, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v3, v12}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setDisplayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1386
    return-object v3

    .line 1355
    .end local v1    # "name":Ljava/lang/CharSequence;
    .end local v3    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v11    # "metaData":Landroid/os/Bundle;
    .end local v12    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_77
    :goto_77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device-specified nearby sharing component ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") not available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiuiChooserActivity"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    return-object v1
.end method

.method public blacklist getReferrerFillInIntent()Landroid/content/Intent;
    .registers 2

    .line 3124
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mReferrerFillInIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public blacklist getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 6
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .line 1829
    move-object v0, p2

    .line 1830
    .local v0, "result":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_16

    .line 1831
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1832
    .local v1, "replExtras":Landroid/os/Bundle;
    if-eqz v1, :cond_16

    .line 1833
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v0, v2

    .line 1834
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1837
    .end local v1    # "replExtras":Landroid/os/Bundle;
    :cond_16
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    .line 1838
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1839
    :cond_2a
    nop

    .line 1840
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1839
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1845
    const/4 v1, 0x0

    const-string v2, "android.intent.extra.AUTO_LAUNCH_SINGLE_CHOICE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1847
    :cond_3f
    return-object v0
.end method

.method public blacklist handlePackagesChanged()V
    .registers 2

    .line 1179
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity;->handlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 1180
    return-void
.end method

.method public blacklist isAppPredictionServiceAvailable()Z
    .registers 7

    .line 1128
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getAppPredictionServicePackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 1130
    return v1

    .line 1133
    :cond_c
    const v0, 0x1040246

    .line 1134
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1135
    .local v0, "appPredictionServiceName":Ljava/lang/String;
    if-nez v0, :cond_16

    .line 1136
    return v1

    .line 1138
    :cond_16
    nop

    .line 1139
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1140
    .local v2, "appPredictionComponentName":Landroid/content/ComponentName;
    if-nez v2, :cond_1e

    .line 1141
    return v1

    .line 1145
    :cond_1e
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1146
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1147
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x20000

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_4b

    .line 1148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App prediction service is defined, but does not exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MiuiChooserActivity"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    return v1

    .line 1152
    :cond_4b
    const/4 v1, 0x1

    return v1
.end method

.method protected blacklist isImageType(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 1734
    if-eqz p1, :cond_c

    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected blacklist isQuietModeEnabled(Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 3212
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 3213
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method public blacklist isSendAction(Landroid/content/Intent;)Z
    .registers 5
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .line 3280
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 3281
    return v0

    .line 3284
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 3285
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_b

    .line 3286
    return v0

    .line 3289
    :cond_b
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_1d

    .line 3293
    :cond_1c
    return v0

    .line 3290
    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist isUserRunning(Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 3200
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 3201
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method protected blacklist isUserUnlocked(Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 3206
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 3207
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method protected blacklist isWorkProfile()Z
    .registers 3

    .line 1161
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1162
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    .line 1161
    return v0
.end method

.method synthetic blacklist lambda$createAppPredictorCallback$0$com-android-internal-app-MiuiChooserActivity(Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;)V
    .registers 12
    .param p1, "chooserListAdapter"    # Lcom/android/internal/app/ChooserListAdapter;
    .param p2, "resultList"    # Ljava/util/List;

    .line 991
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_83

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_83

    .line 994
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_15

    .line 995
    return-void

    .line 997
    :cond_15
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 998
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity;->shouldQueryShortcutManager(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1000
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/MiuiChooserActivity;->queryDirectShareTargets(Lcom/android/internal/app/ChooserListAdapter;Z)V

    .line 1001
    return-void

    .line 1003
    :cond_2a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1006
    .local v0, "shareShortcutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1007
    .local v1, "shortcutResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/prediction/AppTarget;

    .line 1008
    .local v3, "appTarget":Landroid/app/prediction/AppTarget;
    invoke-virtual {v3}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    if-nez v4, :cond_4b

    .line 1009
    goto :goto_38

    .line 1011
    :cond_4b
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1012
    .end local v3    # "appTarget":Landroid/app/prediction/AppTarget;
    goto :goto_38

    .line 1013
    :cond_4f
    move-object p2, v1

    .line 1014
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/prediction/AppTarget;

    .line 1015
    .restart local v3    # "appTarget":Landroid/app/prediction/AppTarget;
    new-instance v4, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    .line 1016
    invoke-virtual {v3}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    new-instance v6, Landroid/content/ComponentName;

    .line 1018
    invoke-virtual {v3}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/ComponentName;)V

    .line 1015
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1019
    .end local v3    # "appTarget":Landroid/app/prediction/AppTarget;
    goto :goto_54

    .line 1020
    :cond_7a
    nop

    .line 1021
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 1020
    invoke-direct {p0, v0, p1, p2, v2}, Lcom/android/internal/app/MiuiChooserActivity;->sendShareShortcutInfoList(Ljava/util/List;Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 1022
    return-void

    .line 992
    .end local v0    # "shareShortcutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    .end local v1    # "shortcutResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    :cond_83
    :goto_83
    return-void
.end method

.method synthetic blacklist lambda$createEditButton$2$com-android-internal-app-MiuiChooserActivity(Lcom/android/internal/app/chooser/TargetInfo;Landroid/view/View;)V
    .registers 3
    .param p1, "ti"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "unused"    # Landroid/view/View;

    .line 1446
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1447
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->finish()V

    .line 1448
    return-void
.end method

.method synthetic blacklist lambda$createNearbyButton$1$com-android-internal-app-MiuiChooserActivity(Lcom/android/internal/app/chooser/TargetInfo;Landroid/view/View;)V
    .registers 3
    .param p1, "ti"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "unused"    # Landroid/view/View;

    .line 1424
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1425
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->finish()V

    .line 1426
    return-void
.end method

.method synthetic blacklist lambda$handleLayoutChange$5$com-android-internal-app-MiuiChooserActivity(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/widget/RecyclerView;II)V
    .registers 21
    .param p1, "gridAdapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .param p2, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p3, "bottom"    # I
    .param p4, "top"    # I

    .line 2973
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/internal/app/MiuiChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v3, :cond_111

    if-nez v1, :cond_e

    goto/16 :goto_111

    .line 2977
    :cond_e
    iget-object v3, v0, Lcom/android/internal/app/MiuiChooserActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    const/4 v4, 0x0

    if-eqz v3, :cond_18

    .line 2978
    iget-object v3, v0, Lcom/android/internal/app/MiuiChooserActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    goto :goto_19

    :cond_18
    move v3, v4

    .line 2979
    .local v3, "bottomInset":I
    :goto_19
    move v5, v3

    .line 2980
    .local v5, "offset":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getSystemRowCount()I

    move-result v6

    .line 2981
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getProfileRowCount()I

    move-result v7

    add-int/2addr v6, v7

    .line 2982
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getServiceTargetRowCount()I

    move-result v7

    add-int/2addr v6, v7

    .line 2983
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v7

    add-int/2addr v6, v7

    .line 2987
    .local v6, "rowsToShow":I
    if-nez v6, :cond_33

    .line 2988
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getRowCount()I

    move-result v6

    .line 2993
    :cond_33
    if-nez v6, :cond_4d

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->shouldShowStickyContentPreview()Z

    move-result v7

    if-nez v7, :cond_4d

    .line 2994
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x105009f

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v5, v4

    .line 2996
    iget-object v4, v0, Lcom/android/internal/app/MiuiChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsibleHeightReserved(I)V

    .line 2997
    return-void

    .line 3001
    :cond_4d
    iget-object v7, v0, Lcom/android/internal/app/MiuiChooserActivity;->mView:Landroid/view/View;

    const v8, 0x1020267

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 3002
    .local v7, "stickyContentPreview":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->shouldShowStickyContentPreview()Z

    move-result v8

    if-eqz v8, :cond_67

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->isStickyContentPreviewShowing()Z

    move-result v8

    if-eqz v8, :cond_67

    .line 3003
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v5, v8

    .line 3006
    :cond_67
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->shouldShowTabs()Z

    move-result v8

    if-eqz v8, :cond_79

    .line 3007
    const v8, 0x1020013

    invoke-virtual {v0, v8}, Lcom/android/internal/app/MiuiChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v5, v8

    .line 3017
    :cond_79
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/RecyclerView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_105

    .line 3018
    const/4 v8, 0x0

    .line 3019
    .local v8, "directShareHeight":I
    const/4 v9, 0x4

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 3020
    invoke-direct {v0, v6}, Lcom/android/internal/app/MiuiChooserActivity;->shouldShowExtraRow(I)Z

    move-result v9

    .line 3021
    .local v9, "shouldShowExtraRow":Z
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v10

    iput v10, v0, Lcom/android/internal/app/MiuiChooserActivity;->mLastNumberOfChildren:I

    .line 3022
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v11

    .line 3023
    .local v11, "childCount":I
    :goto_94
    const/4 v12, 0x1

    if-ge v10, v11, :cond_c4

    if-lez v6, :cond_c4

    .line 3024
    invoke-virtual {v2, v10}, Lcom/android/internal/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 3025
    .local v13, "child":Landroid/view/View;
    nop

    .line 3026
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v14}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v14

    if-eqz v14, :cond_ab

    .line 3027
    goto :goto_c1

    .line 3029
    :cond_ab
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v14

    .line 3030
    .local v14, "height":I
    add-int/2addr v5, v14

    .line 3031
    if-eqz v9, :cond_b3

    .line 3032
    add-int/2addr v5, v14

    .line 3035
    :cond_b3
    nop

    .line 3036
    invoke-virtual {v2, v13}, Lcom/android/internal/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v15

    .line 3035
    invoke-virtual {v1, v15}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getTargetType(I)I

    move-result v15

    if-ne v15, v12, :cond_bf

    .line 3038
    move v8, v14

    .line 3040
    :cond_bf
    add-int/lit8 v6, v6, -0x1

    .line 3023
    .end local v13    # "child":Landroid/view/View;
    .end local v14    # "height":I
    :goto_c1
    add-int/lit8 v10, v10, 0x1

    goto :goto_94

    .line 3043
    .end local v10    # "i":I
    .end local v11    # "childCount":I
    :cond_c4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    if-ne v10, v12, :cond_d7

    .line 3044
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->isInMultiWindowMode()Z

    move-result v10

    if-nez v10, :cond_d7

    goto :goto_d8

    :cond_d7
    move v12, v4

    :goto_d8
    move v10, v12

    .line 3045
    .local v10, "isExpandable":Z
    if-eqz v8, :cond_105

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/internal/app/MiuiChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v11

    if-eqz v11, :cond_105

    if-eqz v10, :cond_105

    .line 3048
    int-to-float v11, v8

    const v12, 0x3f47ae14    # 0.78f

    div-float/2addr v11, v12

    float-to-int v11, v11

    .line 3050
    .local v11, "requiredExpansionHeight":I
    iget-object v12, v0, Lcom/android/internal/app/MiuiChooserActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    if-eqz v12, :cond_f5

    iget-object v4, v0, Lcom/android/internal/app/MiuiChooserActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->top:I

    .line 3051
    .local v4, "topInset":I
    :cond_f5
    sub-int v12, p3, p4

    iget-object v13, v0, Lcom/android/internal/app/MiuiChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->getAlwaysShowHeight()I

    move-result v13

    sub-int/2addr v12, v13

    sub-int/2addr v12, v11

    sub-int/2addr v12, v4

    sub-int/2addr v12, v3

    .line 3054
    .local v12, "minHeight":I
    invoke-static {v5, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 3067
    .end local v4    # "topInset":I
    .end local v8    # "directShareHeight":I
    .end local v9    # "shouldShowExtraRow":Z
    .end local v10    # "isExpandable":Z
    .end local v11    # "requiredExpansionHeight":I
    .end local v12    # "minHeight":I
    :cond_105
    iget-object v4, v0, Lcom/android/internal/app/MiuiChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    sub-int v8, p3, p4

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsibleHeightReserved(I)V

    .line 3068
    return-void

    .line 2974
    .end local v3    # "bottomInset":I
    .end local v5    # "offset":I
    .end local v6    # "rowsToShow":I
    .end local v7    # "stickyContentPreview":Landroid/view/View;
    :cond_111
    :goto_111
    return-void
.end method

.method synthetic blacklist lambda$queryDirectShareTargets$3$com-android-internal-app-MiuiChooserActivity(Landroid/os/UserHandle;Landroid/content/IntentFilter;Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 8
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "adapter"    # Lcom/android/internal/app/ChooserListAdapter;

    .line 2317
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/MiuiChooserActivity;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 2318
    .local v0, "selectedProfileContext":Landroid/content/Context;
    nop

    .line 2319
    const-string v1, "shortcut"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutManager;

    .line 2320
    .local v1, "sm":Landroid/content/pm/ShortcutManager;
    invoke-virtual {v1, p2}, Landroid/content/pm/ShortcutManager;->getShareTargets(Landroid/content/IntentFilter;)Ljava/util/List;

    move-result-object v2

    .line 2321
    .local v2, "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    const/4 v3, 0x0

    invoke-direct {p0, v2, p3, v3, p1}, Lcom/android/internal/app/MiuiChooserActivity;->sendShareShortcutInfoList(Ljava/util/List;Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 2322
    return-void
.end method

.method protected blacklist loadThumbnail(Landroid/net/Uri;Landroid/util/Size;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # Landroid/util/Size;

    .line 2890
    const/4 v0, 0x0

    if-eqz p1, :cond_14

    if-nez p2, :cond_6

    goto :goto_14

    .line 2895
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_e} :catch_f
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    .line 2896
    :catch_f
    move-exception v1

    .line 2897
    .local v1, "ex":Ljava/lang/Exception;
    invoke-direct {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity;->logContentPreviewWarning(Landroid/net/Uri;)V

    .line 2899
    .end local v1    # "ex":Ljava/lang/Exception;
    return-object v0

    .line 2891
    :cond_14
    :goto_14
    return-object v0
.end method

.method public blacklist makePresentationGetter(Landroid/content/pm/ActivityInfo;)Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 3119
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserListAdapter;->makePresentationGetter(Landroid/content/pm/ActivityInfo;)Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist maybeLogProfileChange()V
    .registers 2

    .line 4566
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/ChooserActivityLogger;->logShareheetProfileChanged()V

    .line 4567
    return-void
.end method

.method public blacklist onActivityStarted(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 11
    .param p1, "cti"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 1852
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    if-eqz v0, :cond_39

    .line 1853
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 1854
    .local v0, "target":Landroid/content/ComponentName;
    if-eqz v0, :cond_39

    .line 1855
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.CHOSEN_COMPONENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 1857
    .local v1, "fillIn":Landroid/content/Intent;
    :try_start_15
    iget-object v3, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_1f
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_15 .. :try_end_1f} :catch_20

    .line 1861
    goto :goto_39

    .line 1858
    :catch_20
    move-exception v2

    .line 1859
    .local v2, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch supplied IntentSender to report the chosen component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiuiChooserActivity"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    .end local v0    # "target":Landroid/content/ComponentName;
    .end local v1    # "fillIn":Landroid/content/Intent;
    .end local v2    # "e":Landroid/content/IntentSender$SendIntentException;
    :cond_39
    :goto_39
    return-void
.end method

.method protected blacklist onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 3461
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3462
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 3463
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->setEmptyStateBottomOffset(I)V

    .line 3464
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 3465
    invoke-direct {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getActiveEmptyStateView()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x1020475

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3464
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->setupContainerPadding(Landroid/view/View;)V

    .line 3467
    :cond_1f
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/MiuiResolverActivity;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onButtonClick(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 3431
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1258
    invoke-super {p0, p1}, Lcom/android/internal/app/MiuiResolverActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1260
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity;->shouldDisplayLandscape(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mShouldDisplayLandscape:Z

    .line 1261
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/MiuiChooserActivity;->adjustPreviewWidth(ILandroid/view/View;)V

    .line 1262
    invoke-direct {p0}, Lcom/android/internal/app/MiuiChooserActivity;->updateStickyContentPreview()V

    .line 1263
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 27
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 670
    move-object/from16 v9, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 679
    .local v10, "intentReceivedTime":J
    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/android/internal/app/MiuiChooserActivity;->mIsSuccessfullySelected:Z

    .line 680
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 682
    .local v12, "intent":Landroid/content/Intent;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in ChooserACtivity "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "MiuiChooserActivity"

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->getLayoutResource()I

    move-result v2

    const/4 v14, 0x0

    invoke-virtual {v0, v2, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v9, Lcom/android/internal/app/MiuiChooserActivity;->mView:Landroid/view/View;

    .line 685
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v12, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 687
    .local v2, "targetParcelable":Landroid/os/Parcelable;
    instance-of v0, v2, Landroid/net/Uri;

    const/4 v15, 0x1

    if-eqz v0, :cond_4e

    .line 689
    :try_start_43
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_4b
    .catch Ljava/net/URISyntaxException; {:try_start_43 .. :try_end_4b} :catch_4d

    move-object v2, v0

    .line 693
    goto :goto_4f

    .line 691
    :catch_4d
    move-exception v0

    .line 697
    :cond_4e
    move-object v0, v2

    .end local v2    # "targetParcelable":Landroid/os/Parcelable;
    .local v0, "targetParcelable":Landroid/os/Parcelable;
    :goto_4f
    instance-of v2, v0, Landroid/content/Intent;

    if-nez v2, :cond_72

    .line 698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target is not an intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChooserActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->finish()V

    .line 700
    invoke-super {v9, v14}, Lcom/android/internal/app/MiuiResolverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 701
    return-void

    .line 703
    :cond_72
    move-object v2, v0

    check-cast v2, Landroid/content/Intent;

    .line 704
    .local v2, "target":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Target  intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    if-eqz v2, :cond_97

    instance-of v3, v0, Landroid/content/pm/LabeledIntent;

    if-eqz v3, :cond_97

    .line 709
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v2, v3

    .line 713
    :cond_97
    if-eqz v2, :cond_9c

    .line 714
    invoke-direct {v9, v2}, Lcom/android/internal/app/MiuiChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    .line 716
    :cond_9c
    nop

    .line 717
    const-string v3, "android.intent.extra.ALTERNATE_INTENTS"

    invoke-virtual {v12, v3}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v8

    .line 718
    .local v8, "targetsParcelable":[Landroid/os/Parcelable;
    if-eqz v8, :cond_104

    .line 719
    if-nez v2, :cond_a9

    move v3, v15

    goto :goto_aa

    :cond_a9
    move v3, v1

    .line 721
    .local v3, "offset":Z
    :goto_aa
    array-length v4, v8

    if-eqz v3, :cond_ae

    sub-int/2addr v4, v15

    :cond_ae
    new-array v4, v4, [Landroid/content/Intent;

    .line 722
    .local v4, "additionalTargets":[Landroid/content/Intent;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_b1
    array-length v6, v8

    if-ge v5, v6, :cond_fe

    .line 723
    aget-object v6, v8, v5

    instance-of v6, v6, Landroid/content/Intent;

    if-nez v6, :cond_e3

    .line 724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EXTRA_ALTERNATE_INTENTS array entry #"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " is not an Intent: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v6, v8, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->finish()V

    .line 727
    invoke-super {v9, v14}, Lcom/android/internal/app/MiuiResolverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 728
    return-void

    .line 730
    :cond_e3
    aget-object v6, v8, v5

    check-cast v6, Landroid/content/Intent;

    .line 731
    .local v6, "additionalTarget":Landroid/content/Intent;
    if-nez v5, :cond_f0

    if-nez v2, :cond_f0

    .line 732
    move-object v2, v6

    .line 733
    invoke-direct {v9, v2}, Lcom/android/internal/app/MiuiChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    goto :goto_fb

    .line 735
    :cond_f0
    if-eqz v3, :cond_f5

    add-int/lit8 v7, v5, -0x1

    goto :goto_f6

    :cond_f5
    move v7, v5

    :goto_f6
    aput-object v6, v4, v7

    .line 736
    invoke-direct {v9, v6}, Lcom/android/internal/app/MiuiChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    .line 722
    .end local v6    # "additionalTarget":Landroid/content/Intent;
    :goto_fb
    add-int/lit8 v5, v5, 0x1

    goto :goto_b1

    .line 739
    .end local v5    # "i":I
    :cond_fe
    invoke-virtual {v9, v4}, Lcom/android/internal/app/MiuiChooserActivity;->setAdditionalTargets([Landroid/content/Intent;)V

    move-object/from16 v16, v2

    goto :goto_106

    .line 718
    .end local v3    # "offset":Z
    .end local v4    # "additionalTargets":[Landroid/content/Intent;
    :cond_104
    move-object/from16 v16, v2

    .line 742
    .end local v2    # "target":Landroid/content/Intent;
    .local v16, "target":Landroid/content/Intent;
    :goto_106
    const-string v2, "android.intent.extra.REPLACEMENT_EXTRAS"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v9, Lcom/android/internal/app/MiuiChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    .line 756
    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v17

    .line 759
    .local v17, "title":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 760
    .local v2, "defaultTitleRes":I
    if-nez v17, :cond_11d

    .line 761
    const v2, 0x104020d

    move/from16 v18, v2

    goto :goto_11f

    .line 760
    :cond_11d
    move/from16 v18, v2

    .line 764
    .end local v2    # "defaultTitleRes":I
    .local v18, "defaultTitleRes":I
    :goto_11f
    const-string v2, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 765
    .local v2, "pa":[Landroid/os/Parcelable;
    const/4 v3, 0x0

    .line 766
    .local v3, "initialIntents":[Landroid/content/Intent;
    if-eqz v2, :cond_16d

    .line 771
    array-length v4, v2

    new-array v3, v4, [Landroid/content/Intent;

    .line 772
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12c
    array-length v5, v2

    if-ge v4, v5, :cond_16a

    .line 774
    aget-object v5, v2, v4

    instance-of v5, v5, Landroid/content/Intent;

    if-nez v5, :cond_15e

    .line 775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initial intent #"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " not an Intent: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v5, v2, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->finish()V

    .line 777
    invoke-super {v9, v14}, Lcom/android/internal/app/MiuiResolverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 778
    return-void

    .line 780
    :cond_15e
    aget-object v5, v2, v4

    check-cast v5, Landroid/content/Intent;

    .line 781
    .local v5, "in":Landroid/content/Intent;
    invoke-direct {v9, v5}, Lcom/android/internal/app/MiuiChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    .line 782
    aput-object v5, v3, v4

    .line 772
    .end local v5    # "in":Landroid/content/Intent;
    add-int/lit8 v4, v4, 0x1

    goto :goto_12c

    :cond_16a
    move-object/from16 v19, v3

    goto :goto_16f

    .line 766
    .end local v4    # "i":I
    :cond_16d
    move-object/from16 v19, v3

    .line 786
    .end local v3    # "initialIntents":[Landroid/content/Intent;
    .local v19, "initialIntents":[Landroid/content/Intent;
    :goto_16f
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "android.intent.extra.REFERRER"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, v9, Lcom/android/internal/app/MiuiChooserActivity;->mReferrerFillInIntent:Landroid/content/Intent;

    .line 788
    const-string v3, "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

    invoke-virtual {v12, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/IntentSender;

    iput-object v3, v9, Lcom/android/internal/app/MiuiChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    .line 790
    const-string v3, "android.intent.extra.CHOOSER_REFINEMENT_INTENT_SENDER"

    invoke-virtual {v12, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/IntentSender;

    iput-object v3, v9, Lcom/android/internal/app/MiuiChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    .line 792
    invoke-virtual {v9, v15}, Lcom/android/internal/app/MiuiChooserActivity;->setSafeForwardingMode(Z)V

    .line 794
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, v9, Lcom/android/internal/app/MiuiChooserActivity;->mPinnedSharedPrefs:Landroid/content/SharedPreferences;

    .line 796
    const-string v3, "android.intent.extra.EXCLUDE_COMPONENTS"

    invoke-virtual {v12, v3}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 800
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->getNearbySharingComponent()Landroid/content/ComponentName;

    move-result-object v20

    .line 801
    .local v20, "nearbySharingComponent":Landroid/content/ComponentName;
    if-eqz v20, :cond_1ab

    move v3, v15

    goto :goto_1ac

    :cond_1ab
    move v3, v1

    .line 804
    .local v3, "hasNearby":Z
    :goto_1ac
    const/16 v21, 0x0

    .line 806
    .end local v3    # "hasNearby":Z
    .local v21, "hasNearby":Z
    if-eqz v2, :cond_1f5

    .line 807
    array-length v3, v2

    add-int v3, v3, v21

    new-array v3, v3, [Landroid/content/ComponentName;

    .line 808
    .local v3, "names":[Landroid/content/ComponentName;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1b6
    array-length v5, v2

    if-ge v4, v5, :cond_1ec

    .line 809
    aget-object v5, v2, v4

    instance-of v5, v5, Landroid/content/ComponentName;

    if-nez v5, :cond_1e3

    .line 810
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Filtered component #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not a ComponentName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const/4 v3, 0x0

    .line 812
    goto :goto_1ec

    .line 814
    :cond_1e3
    aget-object v5, v2, v4

    check-cast v5, Landroid/content/ComponentName;

    aput-object v5, v3, v4

    .line 808
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b6

    .line 816
    .end local v4    # "i":I
    :cond_1ec
    :goto_1ec
    if-eqz v21, :cond_1f2

    .line 817
    array-length v4, v3

    sub-int/2addr v4, v15

    aput-object v20, v3, v4

    .line 820
    :cond_1f2
    iput-object v3, v9, Lcom/android/internal/app/MiuiChooserActivity;->mFilteredComponentNames:[Landroid/content/ComponentName;

    .end local v3    # "names":[Landroid/content/ComponentName;
    goto :goto_1fe

    .line 821
    :cond_1f5
    if-eqz v21, :cond_1fe

    .line 822
    new-array v3, v15, [Landroid/content/ComponentName;

    iput-object v3, v9, Lcom/android/internal/app/MiuiChooserActivity;->mFilteredComponentNames:[Landroid/content/ComponentName;

    .line 823
    aput-object v20, v3, v1

    goto :goto_1ff

    .line 821
    :cond_1fe
    :goto_1fe
    nop

    .line 826
    :goto_1ff
    const-string v3, "android.intent.extra.CHOOSER_TARGETS"

    invoke-virtual {v12, v3}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v7

    .line 827
    .end local v2    # "pa":[Landroid/os/Parcelable;
    .local v7, "pa":[Landroid/os/Parcelable;
    if-eqz v7, :cond_243

    .line 832
    array-length v2, v7

    new-array v2, v2, [Landroid/service/chooser/ChooserTarget;

    .line 833
    .local v2, "targets":[Landroid/service/chooser/ChooserTarget;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20b
    array-length v4, v7

    if-ge v3, v4, :cond_241

    .line 835
    aget-object v4, v7, v3

    instance-of v4, v4, Landroid/service/chooser/ChooserTarget;

    if-nez v4, :cond_238

    .line 836
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Chooser target #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not a ChooserTarget: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v7, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v2, 0x0

    .line 838
    goto :goto_241

    .line 840
    :cond_238
    aget-object v4, v7, v3

    check-cast v4, Landroid/service/chooser/ChooserTarget;

    aput-object v4, v2, v3

    .line 833
    add-int/lit8 v3, v3, 0x1

    goto :goto_20b

    .line 842
    .end local v3    # "i":I
    :cond_241
    :goto_241
    iput-object v2, v9, Lcom/android/internal/app/MiuiChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    .line 845
    .end local v2    # "targets":[Landroid/service/chooser/ChooserTarget;
    :cond_243
    nop

    .line 846
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 845
    invoke-direct {v9, v2}, Lcom/android/internal/app/MiuiChooserActivity;->shouldDisplayLandscape(I)Z

    move-result v2

    iput-boolean v2, v9, Lcom/android/internal/app/MiuiChooserActivity;->mShouldDisplayLandscape:Z

    .line 847
    const-string v2, "com.android.internal.app.ChooserActivity.EXTRA_PRIVATE_RETAIN_IN_ON_STOP"

    invoke-virtual {v12, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v9, v1}, Lcom/android/internal/app/MiuiChooserActivity;->setRetainInOnStop(Z)V

    .line 848
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v24, v7

    .end local v7    # "pa":[Landroid/os/Parcelable;
    .local v24, "pa":[Landroid/os/Parcelable;
    move-object/from16 v7, v22

    move-object/from16 v22, v8

    .end local v8    # "targetsParcelable":[Landroid/os/Parcelable;
    .local v22, "targetsParcelable":[Landroid/os/Parcelable;
    move/from16 v8, v23

    invoke-super/range {v1 .. v8}, Lcom/android/internal/app/MiuiResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 850
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 851
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v15, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 852
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 855
    const/16 v2, 0xd6

    invoke-static {v9, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 857
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v9, Lcom/android/internal/app/MiuiChooserActivity;->mChooserShownTime:J

    .line 858
    sub-long/2addr v2, v10

    .line 895
    .local v2, "systemCost":J
    long-to-int v4, v2

    const-string v5, "system_cost_for_smart_sharing"

    invoke-static {v14, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 899
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "System Time Cost is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v9, Lcom/android/internal/app/MiuiChooserActivity;->mDirectShareShortcutInfoCache:Ljava/util/Map;

    .line 913
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v9, Lcom/android/internal/app/MiuiChooserActivity;->mChooserTargetComponentNameCache:Ljava/util/Map;

    .line 915
    new-instance v4, Lcom/android/internal/app/MiuiChooserActivity$1;

    invoke-direct {v4, v9}, Lcom/android/internal/app/MiuiChooserActivity$1;-><init>(Lcom/android/internal/app/MiuiChooserActivity;)V

    invoke-virtual {v9, v4}, Lcom/android/internal/app/MiuiChooserActivity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 926
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->postponeEnterTransition()V

    .line 927
    return-void
.end method

.method protected whitelist onDestroy()V
    .registers 3

    .line 1806
    invoke-super {p0}, Lcom/android/internal/app/MiuiResolverActivity;->onDestroy()V

    .line 1807
    invoke-direct {p0, p0}, Lcom/android/internal/app/MiuiChooserActivity;->isHideLocationInfoEnableDefault(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p0, v0}, Lcom/android/internal/app/MiuiChooserActivity;->setHideLocationInfoEnable(Landroid/content/Context;I)V

    .line 1808
    invoke-direct {p0, p0}, Lcom/android/internal/app/MiuiChooserActivity;->isHideCameraInfoEnableDefault(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p0, v0}, Lcom/android/internal/app/MiuiChooserActivity;->setHideCameraInfoEnable(Landroid/content/Context;I)V

    .line 1809
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/MiuiChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_1b

    .line 1810
    invoke-virtual {v0}, Lcom/android/internal/app/MiuiChooserActivity$RefinementResultReceiver;->destroy()V

    .line 1811
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/MiuiChooserActivity$RefinementResultReceiver;

    .line 1813
    :cond_1b
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->unbindRemainingServices()V

    .line 1823
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserHandler:Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->removeMessages(I)V

    .line 1825
    return-void
.end method

.method public blacklist onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 3
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 3113
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mServicesRequested:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3114
    invoke-super {p0, p1}, Lcom/android/internal/app/MiuiResolverActivity;->onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 3115
    return-void
.end method

.method blacklist onHorizontalSwipeStateChanged(I)V
    .registers 6
    .param p1, "state"    # I

    .line 3484
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_f

    .line 3485
    iget v2, p0, Lcom/android/internal/app/MiuiChooserActivity;->mScrollStatus:I

    if-nez v2, :cond_1a

    .line 3486
    iput v1, p0, Lcom/android/internal/app/MiuiChooserActivity;->mScrollStatus:I

    .line 3487
    invoke-direct {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity;->setVerticalScrollEnabled(Z)V

    goto :goto_1a

    .line 3489
    :cond_f
    if-nez p1, :cond_1a

    .line 3490
    iget v3, p0, Lcom/android/internal/app/MiuiChooserActivity;->mScrollStatus:I

    if-ne v3, v1, :cond_1a

    .line 3491
    iput v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mScrollStatus:I

    .line 3492
    invoke-direct {p0, v2}, Lcom/android/internal/app/MiuiChooserActivity;->setVerticalScrollEnabled(Z)V

    .line 3495
    :cond_1a
    :goto_1a
    return-void
.end method

.method public blacklist onListRebuilt(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 5
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 3150
    move-object v0, p1

    check-cast v0, Lcom/android/internal/app/ChooserListAdapter;

    .line 3161
    .local v0, "chooserListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    .line 3162
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_14

    .line 3165
    :cond_10
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->updateAlphabeticalList()V

    goto :goto_17

    .line 3163
    :cond_14
    :goto_14
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    .line 3169
    :goto_17
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 3170
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetAppLoadComplete()V

    .line 3171
    return-void

    .line 3175
    :cond_25
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/app/MiuiChooserActivity;->shouldQueryShortcutManager(Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 3176
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetAppLoadComplete()V

    .line 3177
    return-void

    .line 3182
    :cond_37
    const-string v1, "MiuiChooserActivity"

    const-string v2, "querying direct share targets from ShortcutManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3185
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/app/MiuiChooserActivity;->queryDirectShareTargets(Lcom/android/internal/app/ChooserListAdapter;Z)V

    .line 3189
    const-string v2, "List built querying services"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity;->queryTargetServices(Lcom/android/internal/app/ChooserListAdapter;)V

    .line 3195
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetAppLoadComplete()V

    .line 3196
    return-void
.end method

.method public blacklist onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 4
    .param p1, "adapterView"    # Landroid/widget/AbsListView;
    .param p2, "adapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 1880
    move-object v0, p2

    check-cast v0, Lcom/android/internal/app/ChooserListAdapter;

    iput-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 1881
    return-void
.end method

.method protected blacklist onProfileTabSelected()V
    .registers 3

    .line 3447
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 3448
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    .line 3449
    .local v0, "currentRootAdapter":Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->updateDirectShareExpansion()V

    .line 3453
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/app/MiuiChooserActivity;->setVerticalScrollEnabled(Z)V

    .line 3454
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v1, :cond_16

    .line 3455
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->scrollNestedScrollableChildBackToTop()V

    .line 3457
    :cond_16
    return-void
.end method

.method blacklist onRefinementCanceled()V
    .registers 2

    .line 2713
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/MiuiChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_a

    .line 2714
    invoke-virtual {v0}, Lcom/android/internal/app/MiuiChooserActivity$RefinementResultReceiver;->destroy()V

    .line 2715
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/MiuiChooserActivity$RefinementResultReceiver;

    .line 2717
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->finish()V

    .line 2718
    return-void
.end method

.method blacklist onRefinementResult(Lcom/android/internal/app/chooser/TargetInfo;Landroid/content/Intent;)V
    .registers 6
    .param p1, "selectedTarget"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "matchingIntent"    # Landroid/content/Intent;

    .line 2692
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/MiuiChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_a

    .line 2693
    invoke-virtual {v0}, Lcom/android/internal/app/MiuiChooserActivity$RefinementResultReceiver;->destroy()V

    .line 2694
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/MiuiChooserActivity$RefinementResultReceiver;

    .line 2696
    :cond_a
    const-string v0, "MiuiChooserActivity"

    if-nez p1, :cond_14

    .line 2697
    const-string v1, "Refinement result intent did not match any known targets; canceling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 2698
    :cond_14
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/MiuiChooserActivity;->checkTargetSourceIntent(Lcom/android/internal/app/chooser/TargetInfo;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 2699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefinementResult: Selected target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot match refined source intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 2702
    :cond_3b
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/android/internal/app/chooser/TargetInfo;->cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v1

    .line 2703
    .local v1, "clonedTarget":Lcom/android/internal/app/chooser/TargetInfo;
    invoke-super {p0, v1, v0}, Lcom/android/internal/app/MiuiResolverActivity;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 2704
    invoke-virtual {p0, v1}, Lcom/android/internal/app/MiuiChooserActivity;->updateModelAndChooserCounts(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 2705
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->finish()V

    .line 2706
    return-void

    .line 2709
    .end local v1    # "clonedTarget":Lcom/android/internal/app/chooser/TargetInfo;
    :cond_4d
    :goto_4d
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->onRefinementCanceled()V

    .line 2710
    return-void
.end method

.method public blacklist onSetupVoiceInteraction()V
    .registers 1

    .line 2537
    return-void
.end method

.method protected blacklist onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z
    .registers 12
    .param p1, "target"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "alwaysCheck"    # Z

    .line 1944
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    if-eqz v0, :cond_6d

    .line 1945
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1946
    .local v0, "fillIn":Landroid/content/Intent;
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v7

    .line 1947
    .local v7, "sourceIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 1948
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1949
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_46

    .line 1950
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    new-array v1, v1, [Landroid/content/Intent;

    .line 1951
    .local v1, "alts":[Landroid/content/Intent;
    const/4 v2, 0x1

    .local v2, "i":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "N":I
    :goto_32
    if-ge v2, v3, :cond_41

    .line 1952
    add-int/lit8 v4, v2, -0x1

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    aput-object v5, v1, v4

    .line 1951
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 1954
    .end local v2    # "i":I
    .end local v3    # "N":I
    :cond_41
    const-string v2, "android.intent.extra.ALTERNATE_INTENTS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1956
    .end local v1    # "alts":[Landroid/content/Intent;
    :cond_46
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/MiuiChooserActivity$RefinementResultReceiver;

    if-eqz v1, :cond_4d

    .line 1957
    invoke-virtual {v1}, Lcom/android/internal/app/MiuiChooserActivity$RefinementResultReceiver;->destroy()V

    .line 1959
    :cond_4d
    new-instance v1, Lcom/android/internal/app/MiuiChooserActivity$RefinementResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/internal/app/MiuiChooserActivity$RefinementResultReceiver;-><init>(Lcom/android/internal/app/MiuiChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/MiuiChooserActivity$RefinementResultReceiver;

    .line 1960
    const-string v2, "android.intent.extra.RESULT_RECEIVER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1963
    :try_start_5a
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_64
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_5a .. :try_end_64} :catch_65

    .line 1964
    return v8

    .line 1965
    :catch_65
    move-exception v1

    .line 1966
    .local v1, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v2, "MiuiChooserActivity"

    const-string v3, "Refinement IntentSender failed to send"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1970
    .end local v0    # "fillIn":Landroid/content/Intent;
    .end local v1    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v7    # "sourceIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :cond_6d
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity;->updateModelAndChooserCounts(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1971
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/MiuiResolverActivity;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z

    move-result v0

    return v0
.end method

.method protected blacklist queryDirectShareTargets(Lcom/android/internal/app/ChooserListAdapter;Z)V
    .registers 6
    .param p1, "adapter"    # Lcom/android/internal/app/ChooserListAdapter;
    .param p2, "skipAppPredictionService"    # Z

    .line 2301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mQueriedSharingShortcutsTimeMs:J

    .line 2302
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 2303
    .local v0, "userHandle":Landroid/os/UserHandle;
    if-nez p2, :cond_16

    .line 2304
    invoke-direct {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity;->getAppPredictorForDirectShareIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v1

    .line 2305
    .local v1, "appPredictor":Landroid/app/prediction/AppPredictor;
    if-eqz v1, :cond_16

    .line 2306
    invoke-virtual {v1}, Landroid/app/prediction/AppPredictor;->requestPredictionUpdate()V

    .line 2307
    return-void

    .line 2311
    .end local v1    # "appPredictor":Landroid/app/prediction/AppPredictor;
    :cond_16
    invoke-direct {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getTargetIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 2312
    .local v1, "filter":Landroid/content/IntentFilter;
    if-nez v1, :cond_1d

    .line 2313
    return-void

    .line 2316
    :cond_1d
    new-instance v2, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/MiuiChooserActivity;Landroid/os/UserHandle;Landroid/content/IntentFilter;Lcom/android/internal/app/ChooserListAdapter;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 2323
    return-void
.end method

.method public blacklist queryResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 9
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1613
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist queryTargetServices(Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 19
    .param p1, "adapter"    # Lcom/android/internal/app/ChooserListAdapter;

    .line 2154
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "android.permission.BIND_CHOOSER_TARGET_SERVICE"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2156
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 2158
    .local v0, "targetsToQuery":I
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ChooserListAdapter;->getDisplayResolveInfoCount()I

    move-result v6

    move v7, v5

    move v5, v0

    .end local v0    # "targetsToQuery":I
    .local v5, "targetsToQuery":I
    .local v6, "N":I
    .local v7, "i":I
    :goto_12
    const-string v8, "MiuiChooserActivity"

    if-ge v7, v6, :cond_135

    .line 2159
    invoke-virtual {v2, v7}, Lcom/android/internal/app/ChooserListAdapter;->getDisplayResolveInfo(I)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v9

    .line 2162
    .local v9, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v9}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getIsShowMore()Z

    move-result v0

    if-nez v0, :cond_12f

    invoke-virtual {v2, v9}, Lcom/android/internal/app/ChooserListAdapter;->getScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;)F

    move-result v0

    const/4 v10, 0x0

    cmpl-float v0, v0, v10

    if-nez v0, :cond_2b

    .line 2165
    goto/16 :goto_12f

    .line 2167
    :cond_2b
    invoke-virtual {v9}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2172
    .local v10, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v11, v10, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 2173
    .local v11, "md":Landroid/os/Bundle;
    if-eqz v11, :cond_42

    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2174
    const-string v12, "android.service.chooser.chooser_target_service"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2173
    invoke-direct {v1, v0, v12}, Lcom/android/internal/app/MiuiChooserActivity;->convertServiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    .line 2174
    :cond_42
    const/4 v0, 0x0

    :goto_43
    move-object v12, v0

    .line 2176
    .local v12, "serviceName":Ljava/lang/String;
    if-eqz v12, :cond_126

    .line 2177
    new-instance v13, Landroid/content/ComponentName;

    iget-object v14, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v13, v14, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    .local v13, "serviceComponent":Landroid/content/ComponentName;
    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.service.chooser.ChooserTargetService"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2191
    invoke-virtual {v14, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v14

    .line 2194
    .local v14, "serviceIntent":Landroid/content/Intent;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "queryTargets found target with service "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    const/4 v0, 0x0

    :try_start_6f
    invoke-virtual {v4, v13, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 2199
    .local v0, "perm":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b9

    .line 2200
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "perm":Ljava/lang/String;
    .local v16, "perm":Ljava/lang/String;
    const-string v0, "ChooserTargetService "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " does not require permission "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " - this service will not be queried for ChooserTargets. add android:permission=\""

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "\" to the <service> tag for "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " in the manifest."

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6f .. :try_end_b7} :catch_108

    .line 2207
    goto/16 :goto_12f

    .line 2199
    .end local v16    # "perm":Ljava/lang/String;
    .restart local v0    # "perm":Ljava/lang/String;
    :cond_b9
    move-object/from16 v16, v0

    .line 2213
    .end local v0    # "perm":Ljava/lang/String;
    nop

    .line 2216
    invoke-static {}, Lcom/android/internal/app/ChooserActivityStub;->getInstance()Lcom/android/internal/app/ChooserActivityStub;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    invoke-virtual {v0, v1, v14, v15}, Lcom/android/internal/app/ChooserActivityStub;->canBindService(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    if-nez v0, :cond_cb

    .line 2217
    goto :goto_12f

    .line 2221
    :cond_cb
    new-instance v0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;

    .line 2223
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v15

    invoke-direct {v0, v1, v9, v15}, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;-><init>(Lcom/android/internal/app/MiuiChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/os/UserHandle;)V

    .line 2228
    .local v0, "conn":Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;
    nop

    .line 2231
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v15

    .line 2228
    const/4 v2, 0x5

    invoke-virtual {v1, v14, v0, v2, v15}, Lcom/android/internal/app/MiuiChooserActivity;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v15

    if-eqz v15, :cond_126

    .line 2233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Binding service connection for target "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, " intent "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    iget-object v2, v1, Lcom/android/internal/app/MiuiChooserActivity;->mServiceConnections:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2237
    add-int/lit8 v5, v5, 0x1

    goto :goto_126

    .line 2209
    .end local v0    # "conn":Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;
    :catch_108
    move-exception v0

    .line 2210
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not look up service "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, "; component name not found"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    goto :goto_12f

    .line 2240
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13    # "serviceComponent":Landroid/content/ComponentName;
    .end local v14    # "serviceIntent":Landroid/content/Intent;
    :cond_126
    :goto_126
    const/4 v0, 0x5

    if-lt v5, v0, :cond_12f

    .line 2242
    const-string v0, "queryTargets hit query target limit 5"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    goto :goto_135

    .line 2158
    .end local v9    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v10    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v11    # "md":Landroid/os/Bundle;
    .end local v12    # "serviceName":Ljava/lang/String;
    :cond_12f
    :goto_12f
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p1

    goto/16 :goto_12

    .line 2251
    .end local v6    # "N":I
    .end local v7    # "i":I
    :cond_135
    :goto_135
    iget-object v0, v1, Lcom/android/internal/app/MiuiChooserActivity;->mServiceConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14c

    .line 2252
    const-string v0, "queryTargets setting watchdog timer for 5000ms"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    iget-object v0, v1, Lcom/android/internal/app/MiuiChooserActivity;->mChooserHandler:Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;

    const/16 v2, 0x15

    const-wide/16 v6, 0x1388

    invoke-virtual {v0, v2, v6, v7}, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_14f

    .line 2257
    :cond_14c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MiuiChooserActivity;->sendVoiceChoicesIfNeeded()V

    .line 2260
    :goto_14f
    return-void
.end method

.method protected blacklist resetButtonBar()V
    .registers 1

    .line 3438
    return-void
.end method

.method public blacklist sendListViewUpdateMessage(Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 3135
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3136
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3137
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3138
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserHandler:Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3139
    return-void
.end method

.method protected blacklist shouldAddFooterView()Z
    .registers 2

    .line 2129
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z
    .registers 5
    .param p1, "target"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 1905
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1906
    invoke-super {p0, p1}, Lcom/android/internal/app/MiuiResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z

    move-result v1

    .line 1905
    const-string v2, "android.intent.extra.AUTO_LAUNCH_SINGLE_CHOICE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist shouldGetActivityMetadata()Z
    .registers 2

    .line 1891
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist startSelected(IZZ)V
    .registers 14
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "filtered"    # Z

    .line 1986
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserShownTime:J

    sub-long/2addr v0, v2

    .line 2006
    .local v0, "selectionCost":J
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/MiuiResolverActivity;->startSelected(IZZ)V

    .line 2011
    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    if-eqz v2, :cond_72

    .line 2014
    const/4 v3, 0x0

    .line 2015
    .local v3, "cat":I
    move v4, p1

    .line 2016
    .local v4, "value":I
    const/4 v5, -0x1

    .line 2017
    .local v5, "directTargetAlsoRanked":I
    const/4 v6, 0x0

    .line 2018
    .local v6, "numCallerProvided":I
    const/4 v7, 0x0

    .line 2021
    .local v7, "directTargetHashed":Landroid/util/HashedStringCache$HashResult;
    invoke-virtual {v2, p1}, Lcom/android/internal/app/ChooserListAdapter;->getPositionTargetType(I)I

    move-result v2

    packed-switch v2, :pswitch_data_74

    goto :goto_2b

    .line 2053
    :pswitch_1b
    const/16 v3, 0xd7

    .line 2061
    goto :goto_2b

    .line 2023
    :pswitch_1e
    const/16 v3, 0xd8

    .line 2044
    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v2

    sub-int/2addr v4, v2

    .line 2046
    goto :goto_2b

    .line 2049
    :pswitch_28
    const/16 v3, 0xd7

    .line 2050
    nop

    .line 2077
    :goto_2b
    if-eqz v3, :cond_30

    .line 2092
    invoke-static {p0, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 2096
    :cond_30
    iget-boolean v2, p0, Lcom/android/internal/app/MiuiChooserActivity;->mIsSuccessfullySelected:Z

    if-eqz v2, :cond_72

    .line 2098
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "User Selection Time Cost is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "MiuiChooserActivity"

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "position of selected app/service/caller is "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2100
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2099
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    long-to-int v2, v0

    const/4 v8, 0x0

    const-string v9, "user_selection_cost_for_smart_sharing"

    invoke-static {v8, v9, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2104
    const-string v2, "app_position_for_smart_sharing"

    invoke-static {v8, v2, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2107
    .end local v3    # "cat":I
    .end local v4    # "value":I
    .end local v5    # "directTargetAlsoRanked":I
    .end local v6    # "numCallerProvided":I
    .end local v7    # "directTargetHashed":Landroid/util/HashedStringCache$HashResult;
    :cond_72
    return-void

    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_28
        :pswitch_1e
        :pswitch_1b
    .end packed-switch
.end method

.method blacklist unbindRemainingServices()V
    .registers 7

    .line 2519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unbindRemainingServices, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity;->mServiceConnections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " left"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiChooserActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity;->mServiceConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "N":I
    :goto_2b
    if-ge v0, v2, :cond_54

    .line 2522
    iget-object v3, p0, Lcom/android/internal/app/MiuiChooserActivity;->mServiceConnections:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;

    .line 2523
    .local v3, "conn":Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unbinding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    invoke-virtual {p0, v3}, Lcom/android/internal/app/MiuiChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2525
    invoke-virtual {v3}, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->destroy()V

    .line 2521
    .end local v3    # "conn":Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 2529
    .end local v0    # "i":I
    .end local v2    # "N":I
    :cond_54
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mServiceConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2531
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserHandler:Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->removeMessages(I)V

    .line 2532
    return-void
.end method

.method blacklist updateModelAndChooserCounts(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 8
    .param p1, "info"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 2549
    if-eqz p1, :cond_d

    instance-of v0, p1, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    if-eqz v0, :cond_d

    .line 2550
    move-object v0, p1

    check-cast v0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->getSelectedTarget()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object p1

    .line 2552
    :cond_d
    if-eqz p1, :cond_75

    .line 2555
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2556
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2557
    .local v1, "targetIntent":Landroid/content/Intent;
    const-string v2, "MiuiChooserActivity"

    if-eqz v0, :cond_70

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_70

    if-eqz v1, :cond_70

    .line 2566
    iget-object v3, p0, Lcom/android/internal/app/MiuiChooserActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    if-eqz v3, :cond_3b

    .line 2567
    iget-object v3, p0, Lcom/android/internal/app/MiuiChooserActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverListAdapter;->updateModel(Landroid/content/ComponentName;)V

    .line 2568
    iget-object v3, p0, Lcom/android/internal/app/MiuiChooserActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ResolverListAdapter;->updateChooserCounts(Ljava/lang/String;Ljava/lang/String;)V

    .line 2572
    :cond_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResolveInfo Package is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Action to be updated is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 2576
    :cond_70
    const-string v3, "Can not log Chooser Counts of null ResovleInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    .end local v0    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v1    # "targetIntent":Landroid/content/Intent;
    :cond_75
    :goto_75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/MiuiChooserActivity;->mIsSuccessfullySelected:Z

    .line 2580
    return-void
.end method
